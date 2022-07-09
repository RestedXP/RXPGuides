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
    -- TODO track deaths

    addon.tracker:UpgradeDB()
    addon.tracker:GenerateDBLevel(addon.tracker.playerLevel)

    if addon.enableTrackerReport then addon.tracker:CreateGui() end
end

function addon.tracker:UpgradeDB()
    if not addon.tracker.db.profile["levels"] then
        addon.tracker.db.profile["levels"] = {}
    end

    local levelDB = addon.tracker.db.profile["levels"]

    for l, _ in pairs(levelDB) do
        if not levelDB[l].groupExperience then
            levelDB[l].groupExperience = 0
        end

        if not levelDB[l].mobs then levelDB[l].mobs = {} end

        if not levelDB[l].deaths then -- Retroactively set missing data
            levelDB[l].deaths = -1
        end
    end
end

function addon.tracker:GenerateDBLevel(level)
    local profile = addon.tracker.db.profile
    if not profile["levels"] then profile["levels"] = {} end

    if not profile["levels"][level] then
        profile["levels"][level] = {
            quests = {}, -- [zone] = { questId = xpReward }
            mobs = {}, -- [zone] = xp
            timestamp = {started = -1, finished = -1},
            groupExperience = 0,
            deaths = -1 -- Allow missing data handling
        }
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
            addon.tracker.db.profile["levels"][data.level - 1].timestamp
                .dateFinished = data.date
            addon.tracker.db.profile["levels"][data.level - 1].timestamp
                .finished = totalTimePlayed - 1
        end

        addon.tracker.waitingForTimePlayed = false
    end
end

function addon.tracker:PLAYER_LEVEL_UP(_, level)
    addon.tracker:GenerateDBLevel(level)
    addon.tracker.playerLevel = level
    addon.tracker.waitingForTimePlayed = {
        event = 'PLAYER_LEVEL_UP',
        level = level,
        date = C_DateAndTime.GetCurrentCalendarTime()
    }
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
        tabsHeight = _G.CharacterFrameTab1:GetHeight(),
        spacers = {element = 4, section = 8}
    }

    addon.tracker.ui = AceGUI:Create("Frame")
    local trackerUi = addon.tracker.ui

    trackerUi:SetLayout("Fill")
    trackerUi:Hide()

    trackerUi.statustext:GetParent():Hide() -- Hide the statustext bar
    trackerUi:SetTitle("RestedXP Leveling Report")
    trackerUi:SetPoint("TOPLEFT", attachment, "TOPRIGHT", offset.x, offset.y)
    trackerUi:SetWidth(attachment:GetWidth() * 0.6)
    trackerUi:SetHeight(attachment:GetHeight() + offset.y - 8 -
                            offset.tabsHeight * 2)

    local scrollContainer = AceGUI:Create("ScrollFrame")
    scrollContainer:SetLayout("Flow")
    trackerUi:AddChild(scrollContainer)

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

    -- local linksContainer = AceGUI:Create("SimpleGroup")
    -- linksContainer:SetLayout('Flow')
    -- TODO RXP and Discord links

    -- scrollContainer:AddChild(linksContainer)
    -- scrollContainer:AddChild(buildSpacer(offset.spacers.element))

    local topContainer = AceGUI:Create("SimpleGroup")
    topContainer:SetLayout('Flow')

    trackerUi.levelDropdown = AceGUI:Create("Dropdown")

    trackerUi.levelDropdown:SetList(addon.tracker.BuildDropdownLevels())
    trackerUi.levelDropdown:SetValue(addon.tracker.playerLevel)
    trackerUi.levelDropdown:SetRelativeWidth(0.45)

    trackerUi.levelDropdown:SetCallback("OnValueChanged", function(_, _, key)
        addon.tracker:UpdateReport(key)
    end)

    topContainer:AddChild(trackerUi.levelDropdown)

    scrollContainer:AddChild(topContainer)

    -- Reached block
    trackerUi.reachedContainer = AceGUI:Create("SimpleGroup")
    trackerUi.reachedContainer:SetLayout("List")
    trackerUi.reachedContainer:SetFullWidth(true)

    trackerUi.reachedContainer.label = AceGUI:Create("Heading")
    trackerUi.reachedContainer.label:SetText("Reached Level " ..
                                                 addon.tracker.playerLevel)
    trackerUi.reachedContainer.label:SetFullWidth(true)
    -- trackerUi.reachedContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.reachedContainer:AddChild(trackerUi.reachedContainer.label)
    trackerUi.reachedContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.reachedContainer.data = AceGUI:Create("Label")
    trackerUi.reachedContainer.data:SetText("In-progress")
    trackerUi.reachedContainer.data:SetFont(addon.font, 12)
    trackerUi.reachedContainer:AddChild(trackerUi.reachedContainer.data)
    trackerUi.reachedContainer:AddChild(buildSpacer(offset.spacers.section))

    scrollContainer:AddChild(trackerUi.reachedContainer)

    -- Speed block
    trackerUi.speedContainer = AceGUI:Create("SimpleGroup")
    trackerUi.speedContainer:SetLayout("List")
    trackerUi.speedContainer:SetFullWidth(true)

    trackerUi.speedContainer.label = AceGUI:Create("Heading")
    trackerUi.speedContainer.label:SetText("Leveling Speed")
    trackerUi.speedContainer.label:SetFullWidth(true)
    -- trackerUi.speedContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.speedContainer:AddChild(trackerUi.speedContainer.label)
    trackerUi.speedContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.speedContainer.data = AceGUI:Create("Label")
    trackerUi.speedContainer.data:SetText("In-progress")
    trackerUi.speedContainer.data:SetFont(addon.font, 12)
    trackerUi.speedContainer:AddChild(trackerUi.speedContainer.data)
    trackerUi.speedContainer:AddChild(buildSpacer(offset.spacers.section))

    scrollContainer:AddChild(trackerUi.speedContainer)

    -- Zones block
    trackerUi.zonesContainer = AceGUI:Create("SimpleGroup")
    trackerUi.zonesContainer:SetLayout("List")
    trackerUi.zonesContainer:SetFullWidth(true)

    trackerUi.zonesContainer.label = AceGUI:Create("Heading")
    trackerUi.zonesContainer.label:SetText("Zones & Dungeons")
    trackerUi.zonesContainer.label:SetFullWidth(true)
    -- trackerUi.zonesContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.zonesContainer:AddChild(trackerUi.zonesContainer.label)
    trackerUi.zonesContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.zonesContainer.data = AceGUI:Create("Label")
    trackerUi.zonesContainer.data:SetText("* Zone\n* Zone 2")
    trackerUi.zonesContainer.data:SetFont(addon.font, 12)
    trackerUi.zonesContainer:AddChild(trackerUi.zonesContainer.data)

    trackerUi.zonesContainer:AddChild(buildSpacer(offset.spacers.section))

    scrollContainer:AddChild(trackerUi.zonesContainer)

    -- Sources block
    trackerUi.sourcesContainer = AceGUI:Create("SimpleGroup")
    trackerUi.sourcesContainer:SetLayout("List")
    trackerUi.sourcesContainer:SetFullWidth(true)

    trackerUi.sourcesContainer.label = AceGUI:Create("Heading")
    trackerUi.sourcesContainer.label:SetText("Experience Sources")
    trackerUi.sourcesContainer.label:SetFullWidth(true)
    -- trackerUi.sourcesContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.sourcesContainer:AddChild(trackerUi.sourcesContainer.label)
    trackerUi.sourcesContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.sourcesContainer.data = {
        quests = AceGUI:Create("Label"),
        mobs = AceGUI:Create("Label")
    }

    trackerUi.sourcesContainer.data['quests']:SetText('quests')
    trackerUi.sourcesContainer.data['quests']:SetFont(addon.font, 12)
    trackerUi.sourcesContainer:AddChild(
        trackerUi.sourcesContainer.data['quests'])
    trackerUi.sourcesContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.sourcesContainer.data['mobs']:SetText('mobs')
    trackerUi.sourcesContainer.data['mobs']:SetFont(addon.font, 12)
    trackerUi.sourcesContainer:AddChild(trackerUi.sourcesContainer.data['mobs'])
    trackerUi.sourcesContainer:AddChild(buildSpacer(offset.spacers.section))

    scrollContainer:AddChild(trackerUi.sourcesContainer)

    -- Teamwork block
    trackerUi.teamworkContainer = AceGUI:Create("SimpleGroup")
    trackerUi.teamworkContainer:SetLayout("List")
    trackerUi.teamworkContainer:SetFullWidth(true)

    trackerUi.teamworkContainer.label = AceGUI:Create("Heading")
    trackerUi.teamworkContainer.label:SetText("Teamwork")
    trackerUi.teamworkContainer.label:SetFullWidth(true)
    -- trackerUi.teamworkContainer.label:SetFontObject(_G.GameFontNormalLarge)
    trackerUi.teamworkContainer:AddChild(trackerUi.teamworkContainer.label)
    trackerUi.teamworkContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.teamworkContainer.data = {}

    trackerUi.teamworkContainer.data['solo'] = AceGUI:Create("Label")
    trackerUi.teamworkContainer.data['solo']:SetText('solo')
    trackerUi.teamworkContainer.data['solo']:SetFont(addon.font, 12)
    trackerUi.teamworkContainer:AddChild(
        trackerUi.teamworkContainer.data['solo'])
    trackerUi.teamworkContainer:AddChild(buildSpacer(offset.spacers.element))

    trackerUi.teamworkContainer.data['group'] = AceGUI:Create("Label")
    trackerUi.teamworkContainer.data['group']:SetText('group')
    trackerUi.teamworkContainer.data['group']:SetFont(addon.font, 12)
    trackerUi.teamworkContainer:AddChild(
        trackerUi.teamworkContainer.data['group'])

    trackerUi.teamworkContainer:AddChild(buildSpacer(offset.spacers.section))

    scrollContainer:AddChild(trackerUi.teamworkContainer)

end

function addon.tracker:ShowReport()
    addon.tracker.ui:Show()
    _G.CharacterFrame:Show()
end

function addon.tracker:CompileData()
    local profile = addon.tracker.db.profile

    addon.tracker.reportData = {}
    local rData = addon.tracker.reportData

    local lReport
    for level, data in pairs(profile["levels"]) do
        rData[level] = {questXP = 0, mobXP = 0, zoneXP = {}}
        lReport = rData[level]

        local zoneXP = {}

        for zoneName, questData in pairs(data.quests) do
            if not zoneXP[zoneName] then zoneXP[zoneName] = {xp = 0} end

            for _, questXP in pairs(questData) do
                lReport.questXP = lReport.questXP + questXP

                zoneXP[zoneName].xp = zoneXP[zoneName].xp + questXP
            end
        end

        for zoneName, mobData in pairs(data.mobs) do
            if not zoneXP[zoneName] then zoneXP[zoneName] = {xp = 0} end

            for _, mobXP in pairs(mobData) do
                lReport.mobXP = lReport.mobXP + mobXP

                zoneXP[zoneName].xp = zoneXP[zoneName].xp + mobXP
            end
        end

        -- Flip zoneXP to easier sort
        -- Sort highest to the top
        -- TODO indices collision/overwrite if multiple zones have identical experience
        -- TODO sorting still not right
        local sortedZoneXP = {}
        for n, z in pairs(zoneXP) do
            lReport.zoneXP[z.xp] = {xp = z.xp, name = n}
        end

        lReport.groupExperience = data.groupExperience

        -- Quests aren't tracked for group vs solo
        lReport.soloExperience = lReport.mobXP - data.groupExperience

        lReport.totalXP = lReport.mobXP + lReport.questXP

        lReport.timestamp = {
            started = data.timestamp.started,
            finished = data.timestamp.finished
        }

        if data.timestamp.dateFinished then
            lReport.timestamp.dateFinished =
                fmt("%s %d, %d at %d:%d %s Server",
                    _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp.dateFinished
                        .month], data.timestamp.dateFinished.monthDay,
                    data.timestamp.dateFinished.year,
                    data.timestamp.dateFinished.hour % 12,
                    data.timestamp.dateFinished.minute,
                    data.timestamp.dateFinished.hour >= 12 and "PM" or "AM")
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
            report.timestamp.dateFinished or "Missing data")

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

    local soloPercentage = 100 * teamworkRatio

    trackerUi.teamworkContainer.data['solo']:SetText(fmt("Solo: %.1f%%",
                                                         soloPercentage))

    if soloPercentage == 0 then -- If numerator is 0, flip 100%
        trackerUi.teamworkContainer.data['solo']:SetText(
            fmt("* Solo: %.1f%%", 100 - soloPercentage))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %.1f%%", soloPercentage))
    else
        trackerUi.teamworkContainer.data['solo']:SetText(
            fmt("* Solo: %.1f%%", soloPercentage))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %.1f%%", 100 - soloPercentage))
    end

    local sourceRatio = report.questXP / (report.questXP + report.mobXP)

    local questsPercentage = 100 * sourceRatio

    if questsPercentage == 0 then -- If numerator is 0, flip 100%
        trackerUi.sourcesContainer.data['quests']:SetText(fmt(
                                                              "* Quests: %.1f%%",
                                                              100 -
                                                                  questsPercentage))
        trackerUi.sourcesContainer.data['mobs']:SetText(
            fmt("* Killing: %.1f%%", questsPercentage))
    else
        trackerUi.sourcesContainer.data['quests']:SetText(fmt(
                                                              "* Quests: %.1f%%",
                                                              questsPercentage))
        trackerUi.sourcesContainer.data['mobs']:SetText(
            fmt("* Killing: %.1f%%", 100 - questsPercentage))
    end

    local zonesBlock = ""
    for xp, data in pairs(report.zoneXP) do
        zonesBlock = fmt("%s* %s - %.1f%%\n", zonesBlock, data.name,
                         data.xp * 100 / report.totalXP)
    end

    trackerUi.zonesContainer.data:SetText(zonesBlock)
end
