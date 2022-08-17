local _, addon = ...

local fmt, smatch, strsub, tinsert, mrand = string.format, string.match,
                                            string.sub, tinsert, math.random

local UnitLevel, GetRealZoneText, IsInGroup, tonumber, GetTime = UnitLevel,
                                                                 GetRealZoneText,
                                                                 IsInGroup,
                                                                 tonumber,
                                                                 GetTime
local _G = _G
local AceGUI = LibStub("AceGUI-3.0")

addon.tracker = addon:NewModule("LevelingTracker", "AceEvent-3.0")

addon.tracker.playerLevel = UnitLevel("player")
addon.tracker.maxLevel = GetMaxPlayerLevel()
addon.tracker.state = {}
addon.tracker.reportData = {}

-- Silence our /played yellow text
local ReportPlayedTimeToChat = false
local hookedChatFrame_DisplayTimePlayed = ChatFrame_DisplayTimePlayed

local function RequestTimePlayed()
    ReportPlayedTimeToChat = false
    return _G.RequestTimePlayed()
end

ChatFrame_DisplayTimePlayed = function(...)
    if ReportPlayedTimeToChat then
        return hookedChatFrame_DisplayTimePlayed(...)
    end
    ReportPlayedTimeToChat = true
end

function addon.tracker:SetupTracker()
    local trackerDefaults = {profile = {levels = {}}}

    addon.tracker.db = LibStub("AceDB-3.0"):New("RXPCTrackingData",
                                                trackerDefaults)

    addon.tracker:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
    addon.tracker:RegisterEvent("TIME_PLAYED_MSG")
    addon.tracker:RegisterEvent("PLAYER_LEVEL_UP")
    addon.tracker:RegisterEvent("QUEST_TURNED_IN")
    addon.tracker:RegisterEvent("PLAYER_DEAD")
    addon.tracker:RegisterEvent("PLAYER_ENTERING_WORLD")

    addon.tracker:UpgradeDB()
    addon.tracker:GenerateDBLevel(addon.tracker.playerLevel)

    addon.tracker:CompileData()

    if addon.settings.db.profile.enableTrackerReport then
        addon.tracker:CreateGui()
    end

    if addon.settings.db.profile.enablelevelSplits then
        addon.tracker:CreateLevelSplits()

        addon.tracker.levelSplits:Show()
    end
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

        if levelDB[l].timestamp and levelDB[l].timestamp.started == -1 then
            levelDB[l].timestamp.started = nil
        end

        if levelDB[l].timestamp and levelDB[l].timestamp.finished == -1 then
            levelDB[l].timestamp.finished = nil
        end

        if not levelDB[l].mobs then levelDB[l].mobs = {} end
    end
end

function addon.tracker:GenerateDBLevel(level)
    local profile = addon.tracker.db.profile
    if not profile["levels"] then profile["levels"] = {} end

    if not profile["levels"][level] then
        profile["levels"][level] = {
            quests = {}, -- [zone] = { questId = xpReward }
            mobs = {}, -- [zone] = xp
            timestamp = {}, -- started, finished
            groupExperience = 0,
            deaths = 0
        }
    end

    if level == 1 then profile["levels"][level].timestamp.started = 0 end
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

function addon.tracker:TIME_PLAYED_MSG(_, totalTimePlayed, timePlayedThisLevel)
    local data = addon.tracker.waitingForTimePlayed

    if not data then return end

    if data.event == 'PLAYER_LEVEL_UP' then
        addon.tracker.db.profile["levels"][data.level - 1].timestamp
            .dateFinished = data.date
        addon.tracker.db.profile["levels"][data.level - 1].timestamp.finished =
            totalTimePlayed - 1

        addon.tracker.db.profile["levels"][data.level].timestamp.started =
            totalTimePlayed
        addon.tracker.db.profile["levels"][data.level].timestamp.dateStarted =
            data.date

        addon.tracker.waitingForTimePlayed = false

        -- Build data after processing level up
        addon.tracker.reportData[data.level - 1] =
            addon.tracker:CompileLevelData(data.level - 1)
        addon.tracker.ui.levelDropdown:SetList(addon.tracker
                                                   .BuildDropdownLevels())
        addon.tracker.ui.levelDropdown:SetValue(data.level)

        addon.tracker:UpdateLevelSplits("full")
    elseif data.event == 'PLAYER_ENTERING_WORLD' then
        addon.tracker.state.login = {
            time = time(),
            timePlayedThisLevel = timePlayedThisLevel,
            totalTimePlayed = totalTimePlayed
        }

        addon.tracker:UpdateLevelSplits("full")

        if not addon.tracker.db.profile["levels"][addon.tracker.playerLevel]
            .timestamp.dateStarted and timePlayedThisLevel < 60 then
            addon.tracker.db.profile["levels"][addon.tracker.playerLevel]
                .timestamp.dateStarted = data.date
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

    -- Quest turnins can easily be miscategorized
    -- e.g. complete quest solo, join dungeon group, then turn in before flying or inverse
    -- However, summary report looks weird without it, calculate anyway
    if IsInGroup() then
        levelData.groupExperience = levelData.groupExperience + xpReward
        -- else solo, total - group = solo, no need to keep track separately
    end
end

function addon.tracker:PLAYER_DEAD()
    if addon.tracker.db.profile["levels"][addon.tracker.playerLevel].deaths then
        addon.tracker.db.profile["levels"][addon.tracker.playerLevel].deaths =
            addon.tracker.db.profile["levels"][addon.tracker.playerLevel].deaths +
                1
    else
        addon.tracker.db.profile["levels"][addon.tracker.playerLevel].deaths = 1
    end
end

function addon.tracker:PLAYER_ENTERING_WORLD()
    addon.tracker.waitingForTimePlayed = {
        event = 'PLAYER_ENTERING_WORLD',
        date = C_DateAndTime.GetCurrentCalendarTime()
    }

    RequestTimePlayed()
end

function addon.tracker.BuildDropdownLevels()
    local dropdownLevels = {}
    local sortOrder = {}

    for level, _ in pairs(addon.tracker.db.profile["levels"]) do
        if level > addon.tracker.playerLevel then break end

        if level == addon.tracker.maxLevel then
            dropdownLevels[level] = fmt("%d (Max)", level)
        else
            dropdownLevels[level] = fmt("%d to %d", level, level + 1)
        end
        tinsert(sortOrder, 1, level)
    end

    return dropdownLevels, sortOrder
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
    local attachment = _G.CharacterFrame
    local offset = {
        x = -38,
        y = -32,
        tabsHeight = _G.CharacterFrameTab1:GetHeight()
    }
    local padding = 4

    addon.tracker.ui = AceGUI:Create("Frame")
    local trackerUi = addon.tracker.ui

    trackerUi:SetLayout("Fill")
    trackerUi:Hide()
    trackerUi:EnableResize(false)

    -- Firmly attach to CharacterFrame show/hide
    if addon.settings.db.profile.openTrackerReportOnCharOpen then
        trackerUi.frame:SetMovable(false)
        trackerUi.frame:SetParent(attachment)

        attachment:HookScript("OnShow", function() trackerUi:Show() end)
    end

    trackerUi.statustext:GetParent():Hide() -- Hide the statustext bar
    trackerUi:SetTitle("RestedXP Leveling Report")
    trackerUi:SetPoint("TOPLEFT", attachment, "TOPRIGHT", offset.x, offset.y)
    trackerUi:SetWidth(attachment:GetWidth() * 0.7)
    trackerUi:SetHeight(attachment:GetHeight() + offset.y - 8 -
                            offset.tabsHeight * 2)

    trackerUi.scrollContainer = AceGUI:Create("ScrollFrame")
    trackerUi.scrollContainer:SetLayout("Flow")
    trackerUi:AddChild(trackerUi.scrollContainer)

    trackerUi.frame:SetBackdrop(addon.RXPFrame.backdropEdge)
    trackerUi.frame:SetBackdropColor(unpack(addon.colors.background))

    trackerUi:SetCallback("OnShow", function()
        -- refresh data
        addon.tracker:CompileData()
        addon.tracker:UpdateReport(addon.tracker.playerLevel)
    end)

    if addon.settings.db.profile.openTrackerReportOnCharOpen then
        trackerUi:SetCallback("OnClose", function()
            -- Hide tracker frame when parent hides
            -- Prevent tracker from being open next time character is
            trackerUi:Hide()
        end)
    end

    -- Make sure the window can be closed by pressing the escape button
    _G["RESTEDXP_TRACKER_SUMMARY_WINDOW"] = trackerUi.frame
    tinsert(_G.UISpecialFrames, "RESTEDXP_TRACKER_SUMMARY_WINDOW")

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

    trackerUi.scrollContainer:AddChild(topContainer)

    -- Reached block
    trackerUi.reachedContainer = AceGUI:Create("SimpleGroup")
    trackerUi.reachedContainer:SetLayout("List")
    trackerUi.reachedContainer:SetFullWidth(true)

    trackerUi.reachedContainer.label = AceGUI:Create("Heading")
    trackerUi.reachedContainer.label:SetText("Reached Level " ..
                                                 addon.tracker.playerLevel)
    trackerUi.reachedContainer.label:SetFullWidth(true)

    trackerUi.reachedContainer:AddChild(trackerUi.reachedContainer.label)
    trackerUi.reachedContainer:AddChild(buildSpacer(padding))

    trackerUi.reachedContainer.data = AceGUI:Create("Label")
    trackerUi.reachedContainer.data:SetText("In-progress")
    trackerUi.reachedContainer.data:SetFont(addon.font, 12)
    trackerUi.reachedContainer:AddChild(trackerUi.reachedContainer.data)

    trackerUi.scrollContainer:AddChild(trackerUi.reachedContainer)

    -- Speed block
    trackerUi.speedContainer = AceGUI:Create("SimpleGroup")
    trackerUi.speedContainer:SetLayout("List")
    trackerUi.speedContainer:SetFullWidth(true)

    trackerUi.speedContainer.label = AceGUI:Create("Heading")
    trackerUi.speedContainer.label:SetText("Time spent")
    trackerUi.speedContainer.label:SetFullWidth(true)
    trackerUi.speedContainer:AddChild(trackerUi.speedContainer.label)
    trackerUi.speedContainer:AddChild(buildSpacer(padding))

    trackerUi.speedContainer.data = AceGUI:Create("Label")
    trackerUi.speedContainer.data:SetText("In-progress")
    trackerUi.speedContainer.data:SetFont(addon.font, 12)
    trackerUi.speedContainer:AddChild(trackerUi.speedContainer.data)

    trackerUi.scrollContainer:AddChild(trackerUi.speedContainer)

    -- Zones block
    -- Dynamic text needs to be in parent scrollframe, not a child SimpleGroup
    trackerUi.zonesContainer = {}

    trackerUi.zonesContainer.label = AceGUI:Create("Heading")
    trackerUi.zonesContainer.label:SetText("Zones & Dungeons")
    trackerUi.zonesContainer.label:SetFullWidth(true)

    trackerUi.scrollContainer:AddChild(trackerUi.zonesContainer.label)

    trackerUi.zonesContainer.data = AceGUI:Create("Label")
    trackerUi.zonesContainer.data:SetText("")
    trackerUi.zonesContainer.data:SetFont(addon.font, 12)

    trackerUi.scrollContainer:AddChild(trackerUi.zonesContainer.data)

    -- Sources block
    trackerUi.sourcesContainer = AceGUI:Create("SimpleGroup")
    trackerUi.sourcesContainer:SetLayout("List")
    trackerUi.sourcesContainer:SetFullWidth(true)

    trackerUi.sourcesContainer.label = AceGUI:Create("Heading")
    trackerUi.sourcesContainer.label:SetText("Experience Sources")
    trackerUi.sourcesContainer.label:SetFullWidth(true)

    trackerUi.sourcesContainer:AddChild(trackerUi.sourcesContainer.label)
    trackerUi.sourcesContainer:AddChild(buildSpacer(padding))

    trackerUi.sourcesContainer.data = {
        quests = AceGUI:Create("Label"),
        mobs = AceGUI:Create("Label")
    }

    trackerUi.sourcesContainer.data['quests']:SetText('quests')
    trackerUi.sourcesContainer.data['quests']:SetFont(addon.font, 12)
    trackerUi.sourcesContainer:AddChild(
        trackerUi.sourcesContainer.data['quests'])
    trackerUi.sourcesContainer:AddChild(buildSpacer(padding))

    trackerUi.sourcesContainer.data['mobs']:SetText('mobs')
    trackerUi.sourcesContainer.data['mobs']:SetFont(addon.font, 12)
    trackerUi.sourcesContainer:AddChild(trackerUi.sourcesContainer.data['mobs'])

    trackerUi.scrollContainer:AddChild(trackerUi.sourcesContainer)

    -- Teamwork block
    trackerUi.teamworkContainer = AceGUI:Create("SimpleGroup")
    trackerUi.teamworkContainer:SetLayout("List")
    trackerUi.teamworkContainer:SetFullWidth(true)

    trackerUi.teamworkContainer.label = AceGUI:Create("Heading")
    trackerUi.teamworkContainer.label:SetText("Teamwork")
    trackerUi.teamworkContainer.label:SetFullWidth(true)
    trackerUi.teamworkContainer:AddChild(trackerUi.teamworkContainer.label)
    trackerUi.teamworkContainer:AddChild(buildSpacer(padding))

    trackerUi.teamworkContainer.data = {}

    trackerUi.teamworkContainer.data['solo'] = AceGUI:Create("Label")
    trackerUi.teamworkContainer.data['solo']:SetText('solo')
    trackerUi.teamworkContainer.data['solo']:SetFont(addon.font, 12)
    trackerUi.teamworkContainer:AddChild(
        trackerUi.teamworkContainer.data['solo'])
    trackerUi.teamworkContainer:AddChild(buildSpacer(padding))

    trackerUi.teamworkContainer.data['group'] = AceGUI:Create("Label")
    trackerUi.teamworkContainer.data['group']:SetText('group')
    trackerUi.teamworkContainer.data['group']:SetFont(addon.font, 12)
    trackerUi.teamworkContainer:AddChild(
        trackerUi.teamworkContainer.data['group'])

    trackerUi.scrollContainer:AddChild(trackerUi.teamworkContainer)

    -- Extras block
    trackerUi.extrasContainer = AceGUI:Create("SimpleGroup")
    trackerUi.extrasContainer:SetLayout("List")
    trackerUi.extrasContainer:SetFullWidth(true)

    trackerUi.extrasContainer.label = AceGUI:Create("Heading")
    trackerUi.extrasContainer.label:SetText("Extras")
    trackerUi.extrasContainer.label:SetFullWidth(true)
    trackerUi.extrasContainer:AddChild(trackerUi.extrasContainer.label)
    trackerUi.extrasContainer:AddChild(buildSpacer(padding))

    trackerUi.extrasContainer.data = AceGUI:Create("Label")
    trackerUi.extrasContainer.data:SetText("")
    trackerUi.extrasContainer.data:SetFont(addon.font, 12)
    trackerUi.extrasContainer:AddChild(trackerUi.extrasContainer.data)

    trackerUi.scrollContainer:AddChild(trackerUi.extrasContainer)
end

function addon.tracker:ShowReport()
    addon.tracker.ui:Show()
    ShowUIPanel(_G.CharacterFrame)
end

function addon.tracker:CompileLevelData(level, d)
    local data = d or addon.tracker.db.profile["levels"][level]

    local report = {questXP = 0, mobXP = 0, zoneXP = {}}

    local zoneXP = {}

    for zoneName, questData in pairs(data.quests) do
        if not zoneXP[zoneName] then
            zoneXP[zoneName] = {xp = 0, name = zoneName}
        end

        for _, questXP in pairs(questData) do
            report.questXP = report.questXP + questXP

            zoneXP[zoneName].xp = zoneXP[zoneName].xp + questXP
        end
    end

    for zoneName, mobData in pairs(data.mobs) do
        if not zoneXP[zoneName] then
            zoneXP[zoneName] = {xp = 0, name = zoneName}
        end

        for _, mobXP in pairs(mobData) do
            report.mobXP = report.mobXP + mobXP

            zoneXP[zoneName].xp = zoneXP[zoneName].xp + mobXP
        end
    end

    -- Turn dictionary into array
    for _, z in pairs(zoneXP) do tinsert(report.zoneXP, z) end

    -- Sort report.zoneXP highest to the top
    table.sort(report.zoneXP, function(a, b) return a.xp > b.xp end)

    report.groupExperience = data.groupExperience

    report.totalXP = report.mobXP + report.questXP

    report.soloExperience = report.totalXP - data.groupExperience

    report.timestamp = {
        started = data.timestamp.started,
        finished = data.timestamp.finished
    }

    report.deaths = data.deaths

    if data.timestamp.dateStarted then -- Level 1
        report.timestamp.dateStarted = fmt("%s %d, %d at %d:%d %s Server",
                                           _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp
                                               .dateStarted.month],
                                           data.timestamp.dateStarted.monthDay,
                                           data.timestamp.dateStarted.year,
                                           data.timestamp.dateStarted.hour % 12,
                                           data.timestamp.dateStarted.minute,
                                           data.timestamp.dateStarted.hour >= 12 and
                                               "PM" or "AM")
    end
    if data.timestamp.dateFinished then
        report.timestamp.dateFinished = fmt("%s %d, %d at %d:%d %s Server",
                                            _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp
                                                .dateFinished.month],
                                            data.timestamp.dateFinished.monthDay,
                                            data.timestamp.dateFinished.year,
                                            data.timestamp.dateFinished.hour %
                                                12,
                                            data.timestamp.dateFinished.minute,
                                            data.timestamp.dateFinished.hour >=
                                                12 and "PM" or "AM")
    end

    return report
end

function addon.tracker:CompileData()
    addon.tracker.reportData = {}

    for level, data in pairs(addon.tracker.db.profile["levels"]) do
        addon.tracker.reportData[level] = self:CompileLevelData(level, data)
    end
end

function addon.tracker:PrettyPrintTime(s)
    local days = floor(s / 24 / 60 / 60)
    s = mod(s, 24 * 60 * 60)

    local hours = floor(s / 60 / 60)
    s = mod(s, 60 * 60)

    local minutes = floor(s / 60)
    s = mod(s, 60)

    local formattedString
    if days > 0 then
        formattedString = fmt("%d %s %d %s %d %s %d %s", days,
                              days == 1 and 'day' or 'days', hours,
                              hours == 1 and 'hour' or 'hours', minutes,
                              minutes == 1 and 'minute' or 'minutes', s,
                              s == 1 and 'second' or 'seconds')
    elseif hours > 0 then
        formattedString = fmt("%d %s %d %s %d %s", hours,
                              hours == 1 and 'hour' or 'hours', minutes,
                              minutes == 1 and 'minute' or 'minutes', s,
                              s == 1 and 'second' or 'seconds')
    elseif minutes > 0 then
        formattedString = fmt("%d %s %d %s", minutes,
                              minutes == 1 and 'minute' or 'minutes', s,
                              s == 1 and 'second' or 'seconds')
    else
        formattedString = fmt("%d %s", s, s == 1 and 'second' or 'seconds') -- Big gratz for leveling in under a minute
    end

    return formattedString
end

function addon.tracker:UglyPrintTime(s)
    local days = floor(s / 24 / 60 / 60)
    s = mod(s, 24 * 60 * 60)

    local hours = floor(s / 60 / 60)
    s = mod(s, 60 * 60)

    local minutes = floor(s / 60)
    s = mod(s, 60)

    local formattedString
    if days > 0 then
        formattedString = fmt("%02d:%02d:%02d:%02d", days, hours, minutes, s)
    elseif hours > 0 then
        formattedString = fmt("%02d:%02d:%02d", hours, minutes, s)
    elseif minutes > 0 then
        formattedString = fmt("%02d:%02d", minutes, s)
    else
        formattedString = fmt("%02d", s) -- Big gratz for leveling in under a minute
    end

    return formattedString
end

function addon.tracker:UpdateReport(selectedLevel)
    local trackerUi = addon.tracker.ui

    local report = addon.tracker.reportData[selectedLevel]

    if selectedLevel == addon.tracker.playerLevel then
        local secondsSinceLogin = difftime(time(),
                                           addon.tracker.state.login.time)

        if selectedLevel == addon.tracker.maxLevel then
            trackerUi.reachedContainer.label:SetText("Reached max level")
        else
            trackerUi.reachedContainer.label:SetText("Started level " ..
                                                         selectedLevel)
        end

        trackerUi.speedContainer.data:SetText(
            addon.tracker:PrettyPrintTime(secondsSinceLogin +
                                              addon.tracker.state.login
                                                  .timePlayedThisLevel))

        if selectedLevel == 1 then
            trackerUi.reachedContainer.data:SetText(
                addon.tracker.reportData[selectedLevel].timestamp.dateStarted or
                    "Missing data")
        elseif addon.tracker.reportData[selectedLevel - 1] then
            trackerUi.reachedContainer.data:SetText(
                addon.tracker.reportData[selectedLevel - 1].timestamp
                    .dateFinished or "Missing data")
        else
            trackerUi.reachedContainer.data:SetText("Missing data")
        end
    else
        trackerUi.reachedContainer.label:SetText("Reached Level " ..
                                                     selectedLevel + 1)

        trackerUi.reachedContainer.data:SetText(
            report.timestamp.dateFinished or "Missing data")

        if report.timestamp and report.timestamp.started and
            report.timestamp.finished then
            local s = report.timestamp.finished - report.timestamp.started

            trackerUi.speedContainer.data:SetText(
                addon.tracker:PrettyPrintTime(s))
        else
            trackerUi.speedContainer.data:SetText("Missing data")
        end

    end

    local ratio, percentage

    if selectedLevel == addon.tracker.maxLevel then
        trackerUi.teamworkContainer.data['solo']:SetText(
            fmt("* Solo: %s", 'N/A'))
        trackerUi.teamworkContainer.data['group']:SetText(fmt("* Group: %s",
                                                              'N/A'))
    elseif report.groupExperience == 0 then
        trackerUi.teamworkContainer.data['solo']:SetText(
            fmt("* Solo: %.2f%%", 100))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %.2f%%", 0))
    elseif (report.soloExperience + report.groupExperience) == 0 then -- If division error
        trackerUi.teamworkContainer.data['solo']:SetText(fmt("* Solo: %d%%", 0))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %d%%", 0))
    else
        ratio = report.groupExperience /
                    (report.soloExperience + report.groupExperience)
        percentage = 100 * ratio
        trackerUi.teamworkContainer.data['solo']:SetText(
            fmt("* Solo: %.2f%%", 100 - percentage))
        trackerUi.teamworkContainer.data['group']:SetText(
            fmt("* Group: %.2f%%", percentage))
    end

    if selectedLevel == addon.tracker.maxLevel then
        trackerUi.sourcesContainer.data['quests']:SetText(fmt("* Quests: %s",
                                                              "N/A"))
        trackerUi.sourcesContainer.data['mobs']:SetText(
            fmt("* Killing: %s", "N/A"))
    elseif report.questXP == 0 then
        trackerUi.sourcesContainer.data['quests']:SetText(fmt(
                                                              "* Quests: %.2f%%",
                                                              0))
        trackerUi.sourcesContainer.data['mobs']:SetText(
            fmt("* Killing: %.2f%%", 100))
    elseif (report.questXP + report.mobXP) == 0 then -- If division error
        trackerUi.sourcesContainer.data['quests']:SetText(
            fmt("* Quests: %d%%", 0))
        trackerUi.sourcesContainer.data['mobs']:SetText(
            fmt("* Killing: %d%%", 0))
    else
        ratio = report.questXP / (report.questXP + report.mobXP)
        percentage = 100 * ratio
        trackerUi.sourcesContainer.data['quests']:SetText(fmt(
                                                              "* Quests: %.2f%%",
                                                              100 - percentage))
        trackerUi.sourcesContainer.data['mobs']:SetText(
            fmt("* Killing: %.2f%%", percentage))
    end

    local zonesBlock = ""
    for _, data in pairs(report.zoneXP) do
        zonesBlock = fmt("%s* %s - %.1f%%\n", zonesBlock, data.name,
                         data.xp * 100 / report.totalXP)
    end

    trackerUi.zonesContainer.data:SetText(zonesBlock)

    local extrasBlock = ""
    extrasBlock = fmt("%s* %s: %s\n", extrasBlock, "Deaths",
                      report.deaths or "Missing data")

    if report.timestamp and report.timestamp.started and
        report.timestamp.finished and selectedLevel ~= addon.tracker.maxLevel then
        local levelSeconds

        if report.timestamp.finished then
            levelSeconds = report.timestamp.finished - report.timestamp.started
        else
            levelSeconds = difftime(time(), addon.tracker.state.login.time) +
                               addon.tracker.state.login.timePlayedThisLevel
        end

        local xpPerHour = report.totalXP / (levelSeconds / 60 / 60)

        extrasBlock = fmt("%s* %s: %d\n", extrasBlock, "Experience/hour",
                          xpPerHour or "Missing data")
    end

    trackerUi.extrasContainer.data:SetText(extrasBlock)

    trackerUi.scrollContainer:DoLayout()

end

function addon.tracker:ToggleLevelSplits()
    if InCombatLockdown() or not addon.settings.db.profile.enablelevelSplits then
        return
    end

    if not addon.settings.db.profile.enableBetaFeatures then return end

    -- Already built
    if addon.tracker.levelSplits then
        if addon.tracker.levelSplits:IsShown() then
            addon.tracker.levelSplits:Hide()
        else
            addon.tracker:UpdateLevelSplits("full")
            addon.tracker.levelSplits:Show()
        end

        return
    end
end

function addon.tracker:CreateLevelSplits()
    -- AceGUI:Create("Frame") has too much magic for how simple this is
    local BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate"
    local anchor = UIParent
    addon.tracker.levelSplits = CreateFrame("Frame", "RXPLevelSplits", anchor,
                                            BackdropTemplate)

    local f = addon.tracker.levelSplits

    f:SetClampedToScreen(true)
    f:EnableMouse(true)
    f:SetMovable(true)
    f:ClearBackdrop()
    f:SetBackdrop(addon.RXPFrame.backdropEdge)
    f:SetBackdropColor(unpack(addon.colors.background))
    function f.onMouseDown() f:StartMoving() end
    function f.onMouseUp() f:StopMovingOrSizing() end
    f:SetScript("OnMouseDown", f.StartMoving)
    f:SetScript("OnMouseUp", f.StopMovingOrSizing)

    f.parent = addon
    f:SetPoint("CENTER", anchor, "CENTER", 0, 0)

    f.title = CreateFrame("Frame", "$parent_title", f, BackdropTemplate)
    f.title:ClearAllPoints()
    f.title:EnableMouse(true)
    f.title:SetScript("OnMouseDown", f.onMouseDown)
    f.title:SetScript("OnMouseUp", f.onMouseUp)

    f.title:ClearBackdrop()
    f.title:SetBackdrop(addon.RXPFrame.backdropEdge)
    f.title:SetBackdropColor(unpack(addon.colors.background))
    f.title:SetPoint("TOP", f, 0, 5)
    -- Width immediately overwritten in UpdateLevelSplits on PLAYER_ENTERING_WORLD
    f.title:SetSize(50, 17)

    f.title.text = f.title:CreateFontString(nil, "OVERLAY")
    f.title.text:ClearAllPoints()
    f.title.text:SetJustifyH("CENTER")
    f.title.text:SetJustifyV("CENTER")
    f.title.text:SetTextColor(1, 1, 1)
    f.title.text:SetFont(addon.font, 9)
    f.title.text:SetText("Level splits")
    f.title.text:SetPoint("CENTER", f.title, 0, 1)

    f.current = AceGUI:Create("Label")
    f.current:SetFont(addon.font, 11)
    f.current.frame:SetParent(f)
    f.current.frame:SetPoint("TOPLEFT", f, "TOPLEFT", 8,
                             -(f.title:GetHeight() / 2 + 2))
    f.current.frame:Show()
    f.current:SetText("Current Level Time: X:Y:Z")

    f.history = AceGUI:Create("Label")
    f.history:SetFont(addon.font, 11)
    f.history.frame:SetParent(f)
    f.history.frame:SetPoint("TOPLEFT", f.current.frame, "BOTTOMLEFT", 0, -8)
    f.history.frame:Show()
    f.history:SetText("Level X: X:Y:Z")

    f.total = AceGUI:Create("Label")
    f.total:SetFont(addon.font, 11)
    f.total.frame:SetParent(f)
    f.total.frame:SetPoint("TOPLEFT", f.history.frame, "BOTTOMLEFT", 0, -8)
    f.total.frame:Show()
    f.total:SetText("Total Level Time: X:Y:Z")

    -- Immediately overwritten in UpdateLevelSplits on PLAYER_ENTERING_WORLD
    f:SetSize(50, 100)

    f:SetAlpha(0.9)
    f.title:SetIgnoreParentAlpha(true)
    f.title:SetAlpha(1)
    f.title.text:SetIgnoreParentAlpha(true)
    f.title.text:SetAlpha(1)

    addon.tracker.levelSplits:HookScript("OnUpdate", function()
        addon.tracker:RefreshSplitsSummary()
    end)
end

function addon.tracker:RefreshSplitsSummary()
    if not self.state.lastSplitsUpdate then
        self.state.lastSplitsUpdate = GetTime()
        return
    end

    local now = GetTime()
    if (now - self.state.lastSplitsUpdate) > 2 + mrand(5) then
        self.state.lastSplitsUpdate = now
        addon.tracker:UpdateLevelSplits()
    end
end

function addon.tracker:UpdateLevelSplits(kind)
    if not addon.settings.db.profile.enablelevelSplits or
        not addon.tracker.levelSplits then return end

    local f = addon.tracker.levelSplits
    local secondsSinceLogin = difftime(time(), addon.tracker.state.login.time)

    local s = secondsSinceLogin + addon.tracker.state.login.timePlayedThisLevel

    f.current:SetText(fmt("Level Time: %s", addon.tracker:UglyPrintTime(s)))

    s = addon.tracker.state.login.totalTimePlayed + secondsSinceLogin

    f.total:SetText(fmt("Total Time: %s", addon.tracker:UglyPrintTime(s)))

    if kind == "full" then
        local data, splitsString
        local totalSeconds = 0
        -- TODO settings slider for level history, or rebuild with scroll pane
        local oldestLevel = addon.tracker.playerLevel - 10
        local highestLevel = addon.tracker.playerLevel - 1

        for l = oldestLevel, highestLevel do
            data = addon.tracker.reportData[l]

            if data then
                if data.timestamp and data.timestamp.started and
                    data.timestamp.finished then
                    s = data.timestamp.finished - data.timestamp.started
                    totalSeconds = totalSeconds + s

                    if splitsString then
                        splitsString = fmt("%s\nLevel %d: %s", splitsString, l,
                                           addon.tracker:UglyPrintTime(
                                               totalSeconds))
                    else
                        splitsString = fmt("Level %d: %s", l,
                                           addon.tracker:UglyPrintTime(
                                               totalSeconds))
                    end
                else
                    splitsString = fmt("%s\nLevel %d: Missing Data",
                                       splitsString, l)
                end
            end
        end

        f.history:SetText(splitsString)
    end

    local width = max(f.current.label:GetStringWidth(),
                      f.history.label:GetStringWidth(),
                      f.total.label:GetStringWidth())

    -- Frame heights plus offsets plus borders
    local height = f.current.label:GetStringHeight() +
                       f.history.label:GetStringHeight() +
                       f.total.label:GetStringHeight() + 36

    --- Only update width if next is wider, prevent jittering
    f.title:SetWidth(max(f.title:GetWidth(), width))
    f:SetSize(max(f:GetWidth(), width + 16), height)
end
