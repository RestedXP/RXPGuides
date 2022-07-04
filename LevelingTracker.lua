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

function addon.tracker:CreateGui()
    local BackdropTemplate = _G.BackdropTemplateMixin and "BackdropTemplate" or
                                 nil

    local attachment = _G.PaperDollItemsFrame

    -- if addon.tracker.ui then
    --   addon.tracker.ui:Show()
    --  return
    -- end

    addon.tracker.ui = AceGUI:Create("Frame")
    local trackerUi = addon.tracker.ui

    -- trackerUi:SetCallback("OnClose", function(widget) AceGUI:Release(widget) end)
    trackerUi:SetLayout("Flow")
    trackerUi:Hide()
    trackerUi.statustext:GetParent():Hide() -- Hide the statustext bar
    trackerUi:SetTitle("RestedXP Leveling Report")

    trackerUi.frame:SetFrameStrata("HIGH")
    trackerUi.frame:SetBackdrop(addon.RXPFrame.backdropEdge)
    trackerUi.frame:SetBackdropColor(unpack(addon.colors.background))
    trackerUi.frame:EnableMouse(true)
    trackerUi.frame:SetMovable(true)
    trackerUi.frame:RegisterForDrag("LeftButton")
    trackerUi.frame:SetUserPlaced(true)

    trackerUi:SetCallback("OnShow", function()
        -- refresh data
        addon.tracker:CompileData()
        addon.tracker:UpdateReport(addon.tracker.playerLevel, true)
    end)

    -- Make sure the window can be closed by pressing the escape button
    _G["RESTEDXP_TRACKER_SUMMARY_WINDOW"] = trackerUi.frame
    tinsert(_G.UISpecialFrames, "RESTEDXP_TRACKER_SUMMARY_WINDOW")

    -- trackerUi.title:GetParent():Hide() -- Hide the title bar
    -- trackerUi:SetCallback("OnClose", function(widget) self:close() end)
    print("Building trackerUi")

    _G.RXPTUI = trackerUi

    --[[
    addon.tracker.ui = CreateFrame("Frame", "RXPTrackerUI", attachment,
                                   BackdropTemplate)

    local trackerUi = addon.tracker.ui

    local offset = {
        x = -38,
        y = -32,
        tabsHeight = _G.CharacterFrameTab1:GetHeight()
    }

    trackerUi:SetPoint("TOPLEFT", attachment, "TOPRIGHT", offset.x, offset.y)
    trackerUi:SetWidth(attachment:GetWidth() * 0.6)
    trackerUi:SetHeight(
        (attachment:GetHeight() + offset.y - offset.tabsHeight) * 0.8)

    trackerUi:SetBackdrop(addon.RXPFrame.backdropEdge)
    trackerUi:SetBackdropColor(unpack(addon.colors.background))
    trackerUi:SetFrameStrata("DIALOG")
    trackerUi:EnableMouse(true)
    trackerUi:SetMovable(true)
    trackerUi:RegisterForDrag("LeftButton")
    trackerUi:SetUserPlaced(true)
    trackerUi:Hide()

    trackerUi:SetScript("OnMouseDown", function() trackerUi:StartMoving() end)

    trackerUi:SetScript("OnMouseUp",
                        function() trackerUi:StopMovingOrSizing() end)

    function trackerUi.onMouseDown() end
    function trackerUi.onMouseUp() trackerUi:StopMovingOrSizing() end

    trackerUi:SetScript("OnHide", function()
        -- Hide tracker frame when parent hides
        -- Prevent tracker from being open next time character is
        trackerUi:Hide()
    end)

    trackerUi:SetScript("OnShow", function()
        -- refresh data
        addon.tracker:CompileData()
        addon.tracker:UpdateReport(addon.tracker.playerLevel, true)
    end)

    trackerUi.title = trackerUi:CreateFontString(nil, "ARTWORK",
                                                 "GameFontNormal")
    trackerUi.title:SetJustifyH("LEFT")
    trackerUi.title:SetPoint("TOPLEFT", trackerUi, 10, -5)
    trackerUi.title:SetText("RestedXP Leveling Summary")
    trackerUi:SetWidth(attachment:GetWidth() * 0.6)

    local cButton = CreateFrame("BUTTON", nil, attachment)
    cButton:ClearAllPoints()
    cButton:SetPoint("BOTTOMRIGHT", attachment, "BOTTOMRIGHT", -40, 80)
    cButton:SetNormalTexture("Interface/AddOns/" .. addonName ..
                                 "/Textures/rxp_logo-64")
    cButton:SetHighlightTexture("Interface/Buttons/UI-Common-MouseHilight")
    cButton:SetSize(30, 30)

    cButton.tiptext = "Click to show leveling data"
    cButton:SetScript("OnClick", function()
        if (trackerUi:IsShown()) then
            trackerUi:Hide()
        else
            trackerUi:Show()
        end
    end)

    trackerUi.levelSlider = CreateFrame("Slider",
                                        trackerUi:GetName() .. "-levelSlider",
                                        trackerUi, "OptionssliderTemplate")

    trackerUi.levelSliderLabel = trackerUi.levelSlider:CreateFontString(nil,
                                                                        'BACKGROUND')
    trackerUi.levelSliderLabel:SetPoint("TOPLEFT", trackerUi.title,
                                        "BOTTOMLEFT", 0, -4)
    trackerUi.levelSliderLabel:SetFontObject("GameFontHighlight")
    trackerUi.levelSliderLabel:SetFormattedText("Level data")

    trackerUi.levelSlider:SetPoint("TOPLEFT", trackerUi.levelSliderLabel,
                                   "BOTTOMLEFT", 0, -5)
    trackerUi.levelSlider:SetOrientation("HORIZONTAL")
    trackerUi.levelSlider:SetMinMaxValues(1, addon.tracker.playerLevel)
    trackerUi.levelSlider:SetValueStep(1)
    trackerUi.levelSlider.scrollStep = 1
    trackerUi.levelSlider:SetObeyStepOnDrag(true)
    trackerUi.levelSlider:SetValue(addon.tracker.playerLevel)
    trackerUi.levelSlider:SetWidth(trackerUi:GetWidth() * 0.8)

    _G[trackerUi.levelSlider:GetName() .. "Low"]:SetText(1)
    _G[trackerUi.levelSlider:GetName() .. "High"]:SetText(addon.tracker
                                                              .playerLevel)

    trackerUi.levelSlider:SetScript("OnValueChanged",
                                    function(_, level, userInput)
        if not userInput then return end

        if addon.tracker.previousSelectedLevel and
            addon.tracker.previousSelectedLevel == level then
            return
        else
            addon.tracker.previousSelectedLevel = level
        end

        addon.tracker:UpdateReport(level)
    end)

    trackerUi.teamworkSlider = CreateFrame("Slider", trackerUi:GetName() ..
                                               "-teamworkSlider", trackerUi,
                                           "OptionssliderTemplate")

    trackerUi.teamworkSliderLabel = trackerUi.teamworkSlider:CreateFontString(
                                        nil, 'BACKGROUND')
    trackerUi.teamworkSliderLabel:SetPoint("TOPLEFT", trackerUi.levelSlider,
                                           "BOTTOMLEFT", 0,
                                           -trackerUi.levelSlider:GetHeight() -
                                               5)
    trackerUi.teamworkSliderLabel:SetFontObject("GameFontHighlight")
    trackerUi.teamworkSliderLabel:SetFormattedText("Teamwork %%")

    trackerUi.teamworkSlider:SetPoint("TOPLEFT", trackerUi.teamworkSliderLabel,
                                      "BOTTOMLEFT")
    trackerUi.teamworkSlider:SetOrientation("HORIZONTAL")
    trackerUi.teamworkSlider:SetMinMaxValues(1, 100)
    trackerUi.teamworkSlider:SetValue(1)
    trackerUi.teamworkSlider:SetWidth(trackerUi:GetWidth() * 0.8)
    trackerUi.teamworkSlider:Disable()

    _G[trackerUi.teamworkSlider:GetName() .. "Low"]:SetText('Solo')
    _G[trackerUi.teamworkSlider:GetName() .. "High"]:SetText('Group')

    trackerUi.sourceSlider = CreateFrame("Slider", trackerUi:GetName() ..
                                             "-sourceSlider", trackerUi,
                                         "OptionssliderTemplate")

    trackerUi.sourceSliderLabel = trackerUi.sourceSlider:CreateFontString(nil,
                                                                          'BACKGROUND')
    trackerUi.sourceSliderLabel:SetPoint("TOPLEFT", trackerUi.teamworkSlider,
                                         "BOTTOMLEFT", 0,
                                         -trackerUi.sourceSlider:GetHeight() - 5)

    trackerUi.sourceSliderLabel:SetFontObject("GameFontHighlight")
    trackerUi.sourceSliderLabel:SetFormattedText("Source %%")

    trackerUi.sourceSlider:SetPoint("TOPLEFT", trackerUi.sourceSliderLabel,
                                    "BOTTOMLEFT")
    trackerUi.sourceSlider:SetOrientation("HORIZONTAL")
    trackerUi.sourceSlider:SetMinMaxValues(1, 100)
    trackerUi.sourceSlider:SetValue(1)
    trackerUi.sourceSlider:SetWidth(trackerUi:GetWidth() * 0.8)
    trackerUi.sourceSlider:Disable()

    _G[trackerUi.sourceSlider:GetName() .. "Low"]:SetText('Quests')
    _G[trackerUi.sourceSlider:GetName() .. "High"]:SetText('Mobs')
    --]]

end

function addon.tracker:ShowReport()
    addon.tracker.ui:Show()
    -- _G.CharacterFrame:Show()
end

function addon.tracker:CompileData()
    local profile = addon.tracker.db.profile
    local trackerUi = addon.tracker.ui

    addon.tracker.reportData = {}
    local rData = addon.tracker.reportData

    --[[
        for level, _ in pairs(profile["levels"]) do
        trackerUi.levelSlider:SetMinMaxValues(level, addon.tracker.playerLevel)
        _G[trackerUi.levelSlider:GetName() .. "Low"]:SetText(level)
        _G[trackerUi.levelSlider:GetName() .. "High"]:SetText(addon.tracker.playerLevel)
        break
    end
    ]] --

    local levelData
    for level, data in pairs(profile["levels"]) do
        rData[level] = {questXP = 0, mobXP = 0}
        levelData = rData[level]

        for zoneName, questData in pairs(data.quests) do
            for _, questXp in pairs(questData) do
                levelData.questXP = levelData.questXP + questXp
            end
        end

        for zoneName, mobData in pairs(data.mobs) do
            for _, mobXp in pairs(mobData) do
                levelData.mobXP = levelData.mobXP + mobXp
            end
        end

        levelData.groupExperience = data.groupExperience

        -- Quests aren't tracked for group vs solo
        levelData.soloExperience = levelData.mobXP - data.groupExperience

        if data.timestamp.dateFinished then
            levelData.dateFinished = fmt("%s %d, %d at %d:%d %s Server",
                                         _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp
                                             .dateFinished.month],
                                         data.timestamp.dateFinished.monthDay,
                                         data.timestamp.dateFinished.year,
                                         data.timestamp.dateFinished.hour % 12,
                                         data.timestamp.dateFinished.minute,
                                         data.timestamp.dateFinished.hour >= 12 and
                                             "PM" or "AM")
        end
    end

end

function addon.tracker:UpdateReport(selectedLevel, force)
    local trackerUi = addon.tracker.ui

    --[[

    if force then addon.tracker.ui.levelSlider:SetValue(selectedLevel) end

    trackerUi.levelSliderLabel:SetFormattedText("Level data (%d)", selectedLevel)

    local report = addon.tracker.reportData[selectedLevel]

    local teamworkSliderRatio = report.groupExperience /
                                    (report.soloExperience +
                                        report.groupExperience)

    local soloPercentage = floor(100 * teamworkSliderRatio)

    trackerUi.teamworkSlider:SetValue(soloPercentage)

    if soloPercentage == 0 then -- If numerator is 0, flip 100%
        trackerUi.teamworkSliderLabel:SetFormattedText("Teamwork (%s/%s)%%",
                                                       100, 0)
    else
        trackerUi.teamworkSliderLabel:SetFormattedText("Teamwork (%s/%s)%%",
                                                       soloPercentage,
                                                       100 - soloPercentage)
    end

    local sourceSliderRatio = report.questXP / (report.questXP + report.mobXP)

    local questsPercentage = floor(100 * sourceSliderRatio)

    trackerUi.sourceSlider:SetValue(questsPercentage)

    trackerUi.sourceSliderLabel:SetFormattedText("Source (%s/%s)%%",
                                                 questsPercentage,
                                                 100 - questsPercentage)

    if report.dateFinished then
        print("report.dateFinished = " .. report.dateFinished)
        -- trackerUi.dateFinishedLabel:SetFormattedText("Reached level %d",
        --                                             selectedLevel)
        -- trackerUi.dateFinished:SetFormattedText("%s", report.dateFinished)
        -- else
        -- trackerUi.dateFinishedLabel:SetFormattedText("Current level %d",
        --                                             selectedLevel)
        -- trackerUi.dateFinished:SetFormattedText("In-progress")
    end
    --]]
end
