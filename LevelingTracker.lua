local addonName, addon = ...

local fmt, smatch, strsub = string.format, string.match, string.sub
local UnitLevel, GetRealZoneText, IsInGroup, tonumber = UnitLevel,
                                                        GetRealZoneText,
                                                        IsInGroup, tonumber
local _G = _G
local AceGUI = LibStub("AceGUI-3.0")

addon.tracker = addon:NewModule(addonName, "AceEvent-3.0")

addon.tracker.waitingForTimePlayed = false
addon.tracker.playerLevel = UnitLevel("player")

function addon.tracker:SetupTracker()
    local trackerDefaults = {profile = {levels = {}}}

    addon.tracker.db = LibStub("AceDB-3.0"):New("RXPCTrackingData",
                                                trackerDefaults)

    addon.tracker:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
    addon.tracker:RegisterEvent("TIME_PLAYED_MSG")
    addon.tracker:RegisterEvent("PLAYER_LEVEL_UP")
    addon.tracker:RegisterEvent("QUEST_TURNED_IN")

    addon.tracker:UpgradeDB()

    if addon.enableTrackerReport then addon.tracker:CreateGui() end
end

function addon.tracker:UpgradeDB()
    local maxLevel = 0

    if _G.WOW_PROJECT_ID == _G.WOW_PROJECT_CLASSIC then
        maxLevel = 60
    elseif _G.WOW_PROJECT_ID == _G.WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
        maxLevel = 70
    elseif _G.WOW_PROJECT_ID == _G.WOW_PROJECT_MAINLINE then
        maxLevel = 60 -- Shadowlands, 70 for Dragonflight
    else -- elseif _G.WOW_PROJECT_ID == _G.WOW_PROJECT_WRATH_OF_THE_LICH_KING then
        maxLevel = 80
    end

    local profile = addon.tracker.db.profile
    if not profile["levels"] then profile["levels"] = {} end

    for l = addon.tracker.playerLevel, maxLevel do
        if not profile["levels"][l] then
            profile["levels"][l] = {
                quests = {}, -- [zone] = { questId = xpReward }
                mobs = {}, -- [zone] = xp
                timestamp = {started = -1, finished = -1},
                groupExperience = 0
            }
        end

        if not profile["levels"][l].groupExperience then
            profile["levels"][l].groupExperience = 0
        end

        if not profile["levels"][l].mobs then
            profile["levels"][l].mobs = {}
        end

        if profile["levels"][l].mobs.count then -- Remove beta version data
            profile["levels"][l].mobs.count = nil
            profile["levels"][l].mobs.xp = nil
        end
    end
end

function addon.tracker:CHAT_MSG_COMBAT_XP_GAIN(_, text, ...)
    -- Exclude "You gain 360 experience" from quest turnin, doubles up on mob kill
    -- TODO use _G.COMBATLOG_XPGAIN_FIRSTPERSON or _G.COMBATLOG_XPGAIN_FIRSTPERSON_UNNAMED
    if 'You' == strsub(text, 0, #'You') then return end

    local xpGained = tonumber(smatch(text, "%d+"))

    if not xpGained or xpGained == 0 then return end

    local zoneName = GetRealZoneText()

    local levelData = addon.tracker.db.profile["levels"][addon.tracker
                          .playerLevel]

    if not levelData.mobs[zoneName] then
        levelData.mobs[zoneName] = {xp = 0, count = 0}
    end

    local zoneMobData = levelData.mobs[zoneName]

    zoneMobData.xp = zoneMobData.xp + xpGained

    zoneMobData.count = zoneMobData.count + 1

    if IsInGroup() then
        levelData.groupExperience = levelData.groupExperience + xpGained
        -- else solo, total - group = solo, no need to keep track separately
    end
end

function addon.tracker:TIME_PLAYED_MSG(_, totalTimePlayed, _)
    local data = addon.tracker.waitingForTimePlayed

    if not data then return end

    if data.event == 'PLAYER_LEVEL_UP' then
        addon.tracker.db.profile["levels"][data.level].timestamp.started =
            totalTimePlayed

        if data.level > 1 then
            addon.tracker.db.profile["levels"][data.level - 1].timestamp.date =
                data.date
            addon.tracker.db.profile["levels"][data.level - 1].timestamp
                .finished = totalTimePlayed - 1
        end

        addon.tracker.waitingForTimePlayed = false
    end
end

function addon.tracker:PLAYER_LEVEL_UP(_, level)
    -- TODO create next tracking entry, don't pre-seed all 70-80 levels
    -- TODO update dropdown
    addon.tracker.playerLevel = level
    addon.tracker.waitingForTimePlayed = {
        event = 'PLAYER_LEVEL_UP',
        level = level,
        date = C_DateAndTime.GetCurrentCalendarTime()
    }
    addon.tracker.ui.levelDropdown:SetList(addon.tracker.BuildDropdownLevels())
    addon.tracker.ui.levelDropdown:SetValue(addon.tracker.playerLevel)
    RequestTimePlayed()
end

function addon.tracker:QUEST_TURNED_IN(_, questId, xpReward)
    xpReward = tonumber(xpReward)

    if not xpReward then return end

    local zoneName = GetRealZoneText()

    local levelData = addon.tracker.db.profile["levels"][addon.tracker
                          .playerLevel]

    if not levelData.quests[zoneName] then levelData.quests[zoneName] = {} end

    levelData.quests[zoneName][questId] = xpReward

    -- Quest turnins not applicable for group vs solo, easily miscategorized.
    -- e.g. complete quest solo, join dungeon group, then turn in before flying or inverse
end

function addon.tracker.BuildDropdownLevels()
    local dropdownLevels = {}
    for level, _ in pairs(addon.tracker.db.profile["levels"]) do
        if level > addon.tracker.playerLevel then break end

        dropdownLevels[level] = fmt("%d to %d", level, level + 1)
    end

    return dropdownLevels
end

local function buildSpacer(height)
    local spacer = AceGUI:Create("SimpleGroup")
    spacer:SetLayout("Fill")
    spacer:SetHeight(height)
    spacer:SetWidth(30)
    spacer:SetFullWidth(true)

    return spacer
end

function addon.tracker:CreateGui()
    -- local BackdropTemplate = _G.BackdropTemplateMixin and "BackdropTemplate" or nil

    local attachment = _G.PaperDollItemsFrame
    local offset = {
        x = -38,
        y = -32,
        tabsHeight = _G.CharacterFrameTab1:GetHeight()
    }

    addon.tracker.ui = AceGUI:Create("Frame")
    local trackerUi = addon.tracker.ui

    trackerUi:SetLayout("Flow")
    trackerUi:Hide()

    trackerUi.statustext:GetParent():Hide() -- Hide the statustext bar
    trackerUi:SetTitle("RestedXP Leveling Report")
    trackerUi:SetPoint("TOPLEFT", attachment, "TOPRIGHT", offset.x, offset.y)
    trackerUi:SetWidth(attachment:GetWidth() * 0.6)
    trackerUi:SetHeight(attachment:GetHeight() + offset.y - 6 -
                            offset.tabsHeight * 2)

    trackerUi.frame:SetBackdrop(addon.RXPFrame.backdropEdge)
    trackerUi.frame:SetBackdropColor(unpack(addon.colors.background))

    trackerUi:SetCallback("OnShow", function()
        -- refresh data
        addon.tracker:CompileData()
        addon.tracker:UpdateReport(addon.tracker.playerLevel, true)
    end)

    -- Make sure the window can be closed by pressing the escape button
    _G["RESTEDXP_TRACKER_SUMMARY_WINDOW"] = trackerUi.frame
    tinsert(_G.UISpecialFrames, "RESTEDXP_TRACKER_SUMMARY_WINDOW")

    trackerUi.levelDropdown = AceGUI:Create("Dropdown")

    trackerUi.levelDropdown:SetList(addon.tracker.BuildDropdownLevels())
    trackerUi.levelDropdown:SetValue(addon.tracker.playerLevel)
    trackerUi.levelDropdown:SetWidth(trackerUi.frame:GetWidth() * 0.45)

    trackerUi.levelDropdown:SetCallback("OnValueChanged", function(_, _, key)
        addon.tracker:UpdateReport(key)
    end)

    trackerUi:AddChild(trackerUi.levelDropdown)
    trackerUi:AddChild(buildSpacer(10))

    -- Reached block
    trackerUi.reachedContainer = AceGUI:Create("SimpleGroup")
    trackerUi.reachedContainer:SetLayout("List")
    trackerUi.reachedContainer:SetFullWidth(true)

    trackerUi.reachedContainer.label = AceGUI:Create("Label")
    trackerUi.reachedContainer.label:SetText("Reached Level " ..
                                                 addon.tracker.playerLevel)
    trackerUi.reachedContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.reachedContainer:AddChild(trackerUi.reachedContainer.label)
    trackerUi.reachedContainer:AddChild(buildSpacer(5))

    trackerUi.reachedContainer.data = AceGUI:Create("Label")
    trackerUi.reachedContainer.data:SetText("In-progress")
    trackerUi.reachedContainer.data:SetFont(addon.font, 12)
    trackerUi.reachedContainer:AddChild(trackerUi.reachedContainer.data)
    trackerUi.reachedContainer:AddChild(buildSpacer(15))

    trackerUi:AddChild(trackerUi.reachedContainer)

    -- Speed block
    trackerUi.speedContainer = AceGUI:Create("SimpleGroup")
    trackerUi.speedContainer:SetLayout("List")
    trackerUi.speedContainer:SetFullWidth(true)

    trackerUi.speedContainer.label = AceGUI:Create("Label")
    trackerUi.speedContainer.label:SetText("Leveling Speed")
    trackerUi.speedContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.speedContainer:AddChild(trackerUi.speedContainer.label)
    trackerUi.speedContainer:AddChild(buildSpacer(5))

    trackerUi.speedContainer.data = AceGUI:Create("Label")
    trackerUi.speedContainer.data:SetText("In-progress")
    trackerUi.speedContainer.data:SetFont(addon.font, 12)
    trackerUi.speedContainer:AddChild(trackerUi.speedContainer.data)
    trackerUi.speedContainer:AddChild(buildSpacer(15))

    trackerUi:AddChild(trackerUi.speedContainer)

    -- Zones block
    trackerUi.zonesContainer = AceGUI:Create("SimpleGroup")
    trackerUi.zonesContainer:SetLayout("List")
    trackerUi.zonesContainer:SetFullWidth(true)

    trackerUi.zonesContainer.label = AceGUI:Create("Label")
    trackerUi.zonesContainer.label:SetText("Top Zones")
    trackerUi.zonesContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.zonesContainer:AddChild(trackerUi.zonesContainer.label)
    trackerUi.zonesContainer:AddChild(buildSpacer(5))

    trackerUi.zonesContainer.top = {}
    for t = 1, 3 do
        trackerUi.zonesContainer.top[t] = AceGUI:Create("Label")
        trackerUi.zonesContainer.top[t]:SetText(fmt("Top %d zone", t))
        trackerUi.zonesContainer.top[t]:SetFont(addon.font, 12)
        trackerUi.zonesContainer:AddChild(trackerUi.zonesContainer.top[t])
        trackerUi.zonesContainer:AddChild(buildSpacer(5))
    end

    trackerUi:AddChild(trackerUi.zonesContainer)

    -- Sources block
    trackerUi.sourcesContainer = AceGUI:Create("SimpleGroup")
    trackerUi.sourcesContainer:SetLayout("List")
    trackerUi.sourcesContainer:SetFullWidth(true)

    trackerUi.sourcesContainer.label = AceGUI:Create("Label")
    trackerUi.sourcesContainer.label:SetText("Top Sources")
    trackerUi.sourcesContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.sourcesContainer:AddChild(trackerUi.sourcesContainer.label)
    trackerUi.sourcesContainer:AddChild(buildSpacer(5))

    trackerUi.sourcesContainer.data = {}

    for _, t in pairs({'quests', 'mobs'}) do
        trackerUi.sourcesContainer.data[t] = AceGUI:Create("Label")
        trackerUi.sourcesContainer.data[t]:SetText(fmt("%s", t))
        trackerUi.sourcesContainer.data[t]:SetFont(addon.font, 12)
        trackerUi.sourcesContainer:AddChild(trackerUi.sourcesContainer.data[t])
        trackerUi.sourcesContainer:AddChild(buildSpacer(5))
    end

    trackerUi:AddChild(trackerUi.sourcesContainer)

    -- Teamwork block
    trackerUi.teamworkContainer = AceGUI:Create("SimpleGroup")
    trackerUi.teamworkContainer:SetLayout("List")
    trackerUi.teamworkContainer:SetFullWidth(true)

    trackerUi.teamworkContainer.label = AceGUI:Create("Label")
    trackerUi.teamworkContainer.label:SetText("Teamwork")
    trackerUi.teamworkContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.teamworkContainer:AddChild(trackerUi.teamworkContainer.label)
    trackerUi.teamworkContainer:AddChild(buildSpacer(5))

    trackerUi.teamworkContainer.data = {}

    for _, t in pairs({'solo', 'group'}) do
        trackerUi.teamworkContainer.data[t] = AceGUI:Create("Label")
        trackerUi.teamworkContainer.data[t]:SetText(fmt("%s", t))
        trackerUi.teamworkContainer.data[t]:SetFont(addon.font, 12)
        trackerUi.teamworkContainer:AddChild(trackerUi.teamworkContainer.data[t])
        trackerUi.teamworkContainer:AddChild(buildSpacer(5))
    end

    trackerUi:AddChild(trackerUi.teamworkContainer)

end

function addon.tracker:ShowReport()
    addon.tracker.ui:Show()
    _G.CharacterFrame:Show()
end

function addon.tracker:CompileData()
    local profile = addon.tracker.db.profile

    addon.tracker.reportData = {}
    local rData = addon.tracker.reportData

    local levelData
    for level, data in pairs(profile["levels"]) do
        rData[level] = {questXP = 0, mobXP = 0, zoneXP = {}}
        levelData = rData[level]

        local zoneXP = {}

        for zoneName, questData in pairs(data.quests) do
            if not zoneXP[zoneName] then zoneXP[zoneName] = {xp = 0} end

            for _, questXP in pairs(questData) do
                levelData.questXP = levelData.questXP + questXP

                zoneXP[zoneName].xp = zoneXP[zoneName].xp + questXP
            end
        end

        for zoneName, mobData in pairs(data.mobs) do
            if not zoneXP[zoneName] then zoneXP[zoneName] = {xp = 0} end

            for _, mobXP in pairs(mobData) do
                levelData.mobXP = levelData.mobXP + mobXP

                zoneXP[zoneName].xp = zoneXP[zoneName].xp + mobXP
            end
        end

        -- Flip zoneXP to easier sort
        -- Sort highest to the top
        -- TODO indices collision/overwrite if multiple zones have identical experience
        -- TODO sorting still not right
        local sortedZoneXP = {}
        for n, z in pairs(zoneXP) do
            sortedZoneXP[z.xp] = {xp = z.xp, name = n}
        end

        table.sort(sortedZoneXP, function(l, r) return l > r end)

        for _, d in pairs(sortedZoneXP) do
            table.insert(levelData.zoneXP, {xp = d.xp, name = d.name})
        end

        levelData.groupExperience = data.groupExperience

        -- Quests aren't tracked for group vs solo
        levelData.soloExperience = levelData.mobXP - data.groupExperience

        levelData.totalXP = levelData.mobXP + levelData.questXP

        levelData.timestamp = {
            started = data.timestamp.started,
            finished = data.timestamp.finished
        }

        if data.timestamp.dateFinished then
            levelData.timestamp.dateFinished = fmt(
                                                   "%s %d, %d at %d:%d %s Server",
                                                   _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp
                                                       .dateFinished.month],
                                                   data.timestamp.dateFinished
                                                       .monthDay,
                                                   data.timestamp.dateFinished
                                                       .year, data.timestamp
                                                       .dateFinished.hour % 12,
                                                   data.timestamp.dateFinished
                                                       .minute, data.timestamp
                                                       .dateFinished.hour >= 12 and
                                                       "PM" or "AM")
        end

    end

end

function addon.tracker:UpdateReport(selectedLevel)
    local trackerUi = addon.tracker.ui

    trackerUi.reachedContainer.label:SetText("Finished Level " .. selectedLevel)

    local report = addon.tracker.reportData[selectedLevel]

    if selectedLevel == addon.tracker.playerLevel then
        trackerUi.reachedContainer.data:SetText("In-progress")
        trackerUi.speedContainer.data:SetText("In-progress")
    else
        trackerUi.reachedContainer.data:SetText(
            report.dateFinished or "Missing data")

        if report.timestamp and report.timestamp.started and
            report.timestamp.finished then
            local s = report.timestamp.finished - report.timestamp.started

            local days = floor(s / 24 / 60 / 60)
            s = mod(s, 24 * 60 * 60)

            local hours = floor(s / 60 / 60)
            s = mod(s, 60 * 60)

            local minutes = floor(s / 60)
            s = mod(s, 60)

            local formattedString
            if days > 0 then
                formattedString = fmt("%d days %d hours %d minutes %d seconds",
                                      days, hours, minutes, s)
            elseif hours > 0 then
                formattedString = fmt("%d hours %d minutes %d seconds", hours,
                                      minutes, s)
            elseif minutes > 0 then
                formattedString = fmt("%d minutes %d seconds", minutes, s)
            else
                formattedString = fmt("%d seconds", s) -- Big gratz for leveling in under a minute
            end
            trackerUi.speedContainer.data:SetText(formattedString)
        else
            trackerUi.speedContainer.data:SetText("Missing data")
        end

    end

    local teamworkRatio = report.groupExperience /
                              (report.soloExperience + report.groupExperience)

    local soloPercentage = floor(100 * teamworkRatio)

    trackerUi.teamworkContainer.data['solo']:SetText(fmt("Solo: %d%%",
                                                         soloPercentage))

    if soloPercentage == 0 then -- If numerator is 0, flip 100%
        trackerUi.teamworkContainer.data['solo']:SetText(fmt("* Solo: %d%%",
                                                             100 -
                                                                 soloPercentage))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %d%%", soloPercentage))
    else
        trackerUi.teamworkContainer.data['solo']:SetText(fmt("* Solo: %d%%",
                                                             soloPercentage))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %d%%", 100 - soloPercentage))
    end

    local sourceRatio = report.questXP / (report.questXP + report.mobXP)

    local questsPercentage = floor(100 * sourceRatio)

    if questsPercentage == 0 then -- If numerator is 0, flip 100%
        trackerUi.sourcesContainer.data['quests']:SetText(
            fmt("* Quests: %d%%", 100 - questsPercentage))
        trackerUi.sourcesContainer.data['mobs']:SetText(fmt("* Mobs: %d%%",
                                                            questsPercentage))
    else
        trackerUi.sourcesContainer.data['quests']:SetText(
            fmt("* Quests: %d%%", questsPercentage))
        trackerUi.sourcesContainer.data['mobs']:SetText(fmt("* Mobs: %d%%",
                                                            100 -
                                                                questsPercentage))
    end

    -- TODO sorting still not right
    for i = 1, 3 do
        local d = report.zoneXP[i]
        if d then
            trackerUi.zonesContainer.top[i]:SetText(
                fmt("* %s - %d%%", d.name, floor(d.xp * 100 / report.totalXP)))
        else
            trackerUi.zonesContainer.top[i]:SetText("")
        end

    end
end
