local addonName, addon = ...

local _G = _G
local fmt, smatch, strsub, tinsert, srep, mmax, abs = string.format, string.match, string.sub, tinsert, string.rep,
                                                      math.max, abs

local UnitLevel, GetRealZoneText, IsInGroup, tonumber, GetTime, GetServerTime, UnitXP = UnitLevel, GetRealZoneText,
                                                                                        IsInGroup, tonumber, GetTime,
                                                                                        GetServerTime, UnitXP
local AceGUI = LibStub("AceGUI-3.0")
local LibDeflate = LibStub("LibDeflate")
local L = addon.locale.Get
local EasyMenu = function(...) addon:ShowMenu(...) end
local localizedClassNames = _G.LOCALIZED_CLASS_NAMES_MALE or {}
addon.tracker = addon:NewModule("LevelingTracker", "AceEvent-3.0", "AceComm-3.0", "AceSerializer-3.0")

addon.tracker.playerLevel = UnitLevel("player")
addon.tracker.state = {otherReports = {}, inspectionRequests = {}}
addon.tracker.reportData = {}
addon.tracker.ui = {}
addon.tracker.splits = {}
addon.tracker._commPrefix = "RXPLTComms"

local playerName = addon.player.name

-- Silence our /played yellow text
local ReportPlayedTimeToChat = false
local hookedChatFrame_DisplayTimePlayed = ChatFrame_DisplayTimePlayed

local function RequestTimePlayed()
    ReportPlayedTimeToChat = false
    return _G.RequestTimePlayed()
end

-- Overwrite old default played handler
ChatFrame_DisplayTimePlayed = function(...)
    if ReportPlayedTimeToChat then return hookedChatFrame_DisplayTimePlayed(...) end

    -- Delay clearing /played output to account for other addons queueing
    C_Timer.After(3, function() ReportPlayedTimeToChat = true end)
end

-- Overwrite new default played handler
if ChatFrameUtil and ChatFrameUtil.DisplayTimePlayed then
    local hookedChatFrameUtil_DisplayTimePlayed = ChatFrameUtil.DisplayTimePlayed

    ChatFrameUtil.DisplayTimePlayed = function(...)
        if ReportPlayedTimeToChat then return hookedChatFrameUtil_DisplayTimePlayed(...) end

        -- Delay clearing /played output to account for other addons queueing
        C_Timer.After(3, function() ReportPlayedTimeToChat = true end)
    end
end

function addon.tracker:Setup()
    if not addon.safeCall(self.SetupData, self) then return end

    addon.safeCall(self.SetupEvents, self)
    addon.safeCall(self.SetupInspections, self)
    addon.safeCall(self.CreateGui, self, playerName)

    if addon.settings.profile.enablelevelSplits then
        addon.safeCall(self.splits.Create, self.splits)
    end
end

function addon.tracker:SetupData()
    local trackerDefaults = {profile = {levels = {}, levelsArchive = {}}}
    self.db = LibStub("AceDB-3.0"):New("RXPCTrackingData", trackerDefaults)
    self.maxLevel = GetMaxPlayerLevel()

    self.reportKey = fmt("%s|%s|%s", playerName, addon.player.class, _G.GetRealmName())

    if not self.db.profile.trackedGuid then self.db.profile.trackedGuid = addon.player.guid end

    if self.db.profile.trackedGuid ~= addon.player.guid then
        addon.comms.PrettyDebug("GUID changed, saving %s and resetting for %s", addon.player.name, addon.player.guid)

        local _, _, guid = strsplit('-', addon.player.guid)

        -- Not displayed nor consumed, but a safety net for data
        -- TODO add archives to splits for same-name speed splits
        if not self.db.profile["levelsArchive"] then self.db.profile["levelsArchive"] = {} end
        self.db.profile["levelsArchive"][guid] = self.db.profile["levels"]

        -- Reset splits
        if addon.db.profile.reports.splits[self.reportKey] then
            local profileAlias = fmt("%s|%s|%s", playerName .. guid, addon.player.class, _G.GetRealmName())

            -- Copy existing data to new key with GUID
            addon.db.profile.reports.splits[profileAlias] = addon.db.profile.reports.splits[self.reportKey]

            -- Delete data for old toon name
            addon.db.profile.reports.splits[self.reportKey] = nil
        end

        -- Now that data's been reset, update trackedGuid
        self.db.profile.trackedGuid = addon.player.guid
    end

    self:GenerateDBLevel(self.playerLevel)
    self:UpgradeDB()
    self:CompileData()
end

function addon.tracker:SetupEvents()
    self:RegisterEvent("TIME_PLAYED_MSG")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    if self.playerLevel < self.maxLevel then
        self:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
        self:RegisterEvent("PLAYER_LEVEL_UP")
        self:RegisterEvent("QUEST_TURNED_IN")
        self:RegisterEvent("PLAYER_DEAD")
    end
end

function addon.tracker:SetupInspections()
    if addon.settings.profile.enableLevelingReportInspections and addon.settings.profile.enableBetaFeatures then

        -- TODO reduce duplication with SettingsPanel
        addon.settings.enabledBetaFeatures[L("Enable Leveling Report Inspections")] = L(
                                                                                          "Send or receive inspection requests for other Leveling Reports")
        self:RegisterEvent("INSPECT_READY")
        self:RegisterComm(self._commPrefix)

        local UnitGUID, UnitIsEnemy = UnitGUID, UnitIsEnemy
        hooksecurefunc("NotifyInspect", function(unit)
            if not addon.settings.profile.enableLevelingReportInspections then return end

            -- Gearscore addons inspect on mouseover/nameplate/etc, RXP only inspects via target
            if unit ~= "target" or UnitIsEnemy("player", unit) then return end

            addon.tracker.state.inspectionRequests[UnitGUID(unit)] = true
        end)
    else
        self:UnregisterEvent("INSPECT_READY")
    end
end

function addon.tracker:UpgradeDB()
    if not addon.tracker.db.profile["levels"] then addon.tracker.db.profile["levels"] = {} end

    local levelDB = addon.tracker.db.profile["levels"]

    for l, _ in pairs(levelDB) do
        if not levelDB[l].groupExperience then levelDB[l].groupExperience = 0 end

        if levelDB[l].timestamp and levelDB[l].timestamp.started == -1 then levelDB[l].timestamp.started = nil end

        if levelDB[l].timestamp and levelDB[l].timestamp.finished == -1 then levelDB[l].timestamp.finished = nil end

        if not levelDB[l].mobs then levelDB[l].mobs = {} end

        -- Repair started or finished timestamps if surrounding data exists
        if not levelDB[l].timestamp.started and levelDB[l - 1] and levelDB[l - 1].timestamp.finished then

            addon.comms.PrettyPrint(L"Repairing level %d started timestamp", l)

            levelDB[l].timestamp.started = levelDB[l - 1].timestamp.finished + 1
        end

        -- Repair finished if not current level
        if l < addon.tracker.playerLevel and not levelDB[l].timestamp.finished and levelDB[l + 1] and
            levelDB[l + 1].timestamp.started then

            addon.comms.PrettyPrint(L"Repairing level %d finished timestamp", l)

            levelDB[l].timestamp.finished = levelDB[l + 1].timestamp.started - 1
        end

        for _, questData in pairs(levelDB[l].quests) do
            for i, questXP in pairs(questData) do if questXP <= 0 then questData[i] = nil end end
        end

        -- Repair DK starting time
        if l == 55 and addon.player.class == "DEATHKNIGHT" and not levelDB[l].timestamp.started then
            levelDB[l].timestamp.started = 0
        end

        -- TODO repair level 70 duration, calculated as negative because of level 70 reset grace value
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

    if level == 1 then
        profile["levels"][level].timestamp.started = 0
    elseif level == 55 and addon.player.class == "DEATHKNIGHT" then
        profile["levels"][level].timestamp.started = 0
    end
end

function addon.tracker:CHAT_MSG_COMBAT_XP_GAIN(_, text, ...)
    -- Exclude "You gain 360 experience" from quest turnin, doubles up on mob kill
    -- TODO use _G.COMBATLOG_XPGAIN_FIRSTPERSON or _G.COMBATLOG_XPGAIN_FIRSTPERSON_UNNAMED
    -- TODO won't track zhCN
    if addon.IsSecretValue(text) then return end
    if 'You' == strsub(text, 0, #'You') then return end

    local xpGained = tonumber(smatch(text, "%d+"))

    if not xpGained or xpGained == 0 then return end

    local zoneName = GetRealZoneText()

    local levelData = addon.tracker.db.profile["levels"][addon.tracker.playerLevel]

    if not levelData.mobs[zoneName] then levelData.mobs[zoneName] = {xp = 0, count = 0} end

    local zoneMobData = levelData.mobs[zoneName]

    zoneMobData.xp = zoneMobData.xp + xpGained

    zoneMobData.count = zoneMobData.count + 1

    if IsInGroup() then
        levelData.groupExperience = levelData.groupExperience + xpGained
        -- else solo, total - group = solo, no need to keep track separately
    end
end

function addon.tracker:TIME_PLAYED_MSG(_, totalTimePlayed, timePlayedThisLevel)
    local data = self.waitingForTimePlayed

    if not data then return end

    if data.event == 'PLAYER_LEVEL_UP' then
        self.db.profile["levels"][data.level - 1].timestamp.dateFinished = data.date
        self.db.profile["levels"][data.level - 1].timestamp.finished = totalTimePlayed - 1

        self.db.profile["levels"][data.level].timestamp.started = totalTimePlayed
        self.db.profile["levels"][data.level].timestamp.dateStarted = data.date

        self.waitingForTimePlayed = false

        -- Refresh baseline time on level up
        self.state.login = {time = time(), timePlayedThisLevel = timePlayedThisLevel, totalTimePlayed = totalTimePlayed}

        -- Build data after processing level up
        self.reportData[data.level - 1] = self:CompileLevelData(data.level - 1)
        addon.tracker.splits:Update("full")
    elseif data.event == 'PLAYER_ENTERING_WORLD' then
        self.state.login = {time = time(), timePlayedThisLevel = timePlayedThisLevel, totalTimePlayed = totalTimePlayed}

        if not self.db.profile["levels"][self.playerLevel].timestamp.dateStarted and timePlayedThisLevel < 60 then
            self.db.profile["levels"][self.playerLevel].timestamp.dateStarted = data.date
        end

        local remainingTime = totalTimePlayed - timePlayedThisLevel
        local levelDB = self.db.profile["levels"]
        local levelDuration
        -- Reverse engineer splits repairing
        for l = self.playerLevel - 1, 2, -1 do
            if not levelDB[l] or not levelDB[l].timestamp then break end

            if levelDB[l].timestamp.finished and levelDB[l].timestamp.started then

                levelDuration = levelDB[l].timestamp.finished - levelDB[l].timestamp.started
                remainingTime = remainingTime - levelDuration

            elseif levelDB[l].timestamp.finished and not levelDB[l].timestamp.started then

                addon.comms.PrettyPrint(L"Repairing level %d started timestamp", l)
                levelDB[l].timestamp.started = remainingTime - levelDB[l].timestamp.finished
                break
            else
                -- Not sure how we got here, but it's probably bad
                break
            end

        end

        -- On 60/70 login, set timestamp.started to now
        -- aka ignore raiding time against 60-61 and 70-71
        -- Also support fresh Wrath users of RXP
        -- Must be later in client load order, returns 0 erroneously oftentimes on init
        if UnitXP("player") == 0 and self.playerLevel == 70 and self.maxLevel > self.playerLevel then

            if levelDB[self.playerLevel].timestamp then
                levelDB[self.playerLevel].timestamp.started = time()
            else
                levelDB[self.playerLevel].timestamp = {started = time()}
            end
            addon.comms.PrettyPrint(L("Resetting level %d start time to now!"), self.playerLevel)
        end

        self:CompileData()
        addon.tracker.splits:Update("full")
        self.waitingForTimePlayed = false
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

    if not xpReward or xpReward <= 0 then return end

    local zoneName = GetRealZoneText()

    local levelData = addon.tracker.db.profile["levels"][addon.tracker.playerLevel]

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
            addon.tracker.db.profile["levels"][addon.tracker.playerLevel].deaths + 1
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

function addon.tracker:UpdateReportLevels(trackerUi, levelData, playerLevel)
    local brackets, levels = {}, {}
    local bracket, selectedLevel

    for level in pairs(levelData) do
        if level <= playerLevel then
            bracket = mmax(floor((level - 1) / 10) * 10 + 1, 1)
            brackets[bracket] = fmt(L("%d to %d"), bracket, bracket + 9)
            if bracket == trackerUi.selectedBracket then
                levels[level] = level == self.maxLevel and fmt("%d (%s)", level, L("Max")) or
                                    fmt(L("%d to %d"), level, level + 1)
                if not selectedLevel or level < selectedLevel then selectedLevel = level end
            end
        end
    end

    trackerUi.levelBracketDropdown:SetList(brackets)
    trackerUi.levelDropdown:SetList(levels)

    return selectedLevel
end

local function createReportText(parent, text, fontSize, color)
    local widget = AceGUI:Create("RXPV2CommsText")
    widget:SetText(text)
    widget:SetFontSize(fontSize)
    widget:SetColor(color)
    widget:SetFullWidth(true)
    parent:AddChild(widget)

    return widget
end

local function updateReportDropdown(dropdown, theme)
    dropdown.label:Hide()
    dropdown.button_cover:Hide()
    dropdown.text:SetFont(theme.font, 9, "")
    dropdown.text:SetJustifyH("LEFT")
    dropdown.text:SetTextColor(unpack(theme.textColor.common))
    local name = dropdown.dropdown:GetName()
    _G[name .. "Left"]:Hide()
    _G[name .. "Middle"]:Hide()
    _G[name .. "Right"]:Hide()
    dropdown.button:SetNormalTexture(addon.ui.v2:GetTexture("scrollbar_down"))
    dropdown.button:SetPushedTexture(addon.ui.v2:GetTexture("scrollbar_down"))
    dropdown.button:SetDisabledTexture(addon.ui.v2:GetTexture("scrollbar_down"))
    dropdown.button:SetHighlightTexture(addon.ui.v2:GetTexture("scrollbar_down"), "ADD")
    dropdown.button:ClearAllPoints()
    dropdown.button:SetSize(24, 24)
    dropdown.button:SetPoint("TOPRIGHT", dropdown.frame, "TOPRIGHT")
    addon.ui.v2:ApplyFrameBackdrop(dropdown.frame, theme.edge,
                                   theme.version == 1 and theme.backgroundColors.inactivePartyTab or
                                       theme.backgroundColors.scrollbar,
                                   theme.borderColors.common)
    addon.ui.v2:ApplyFrameBackdrop(dropdown.button, theme.edge,
                                   theme.backgroundColors.activeStepCheckboxChecked,
                                   theme.borderColors.commonEdge)
    addon.ui.v2:ApplyDropdownTheme(dropdown, theme)
    dropdown:SetCallback("OnOpened", function()
        addon.ui.v2:ApplyDropdownTheme(dropdown, addon.v2:GetTheme())
    end)
end

local function createReportCard(title, iconName, theme)
    local card = AceGUI:Create("SimpleGroup")
    card:SetLayout("Table")
    card:SetUserData("table", {columns = {40, {weight = 1}, {weight = 2}, {width = 1}}, spaceH = 8})
    card:SetFullWidth(true)
    addon.ui.v2:ApplyFrameBackdrop(card.frame, theme.edge, theme.backgroundColors.common,
                                   theme.borderColors.commonEdge)

    local icon = AceGUI:Create("Icon")
    icon:SetWidth(40)
    icon:SetImage(addon.ui.v2:GetTexture(iconName))
    icon:SetImageSize(32, 32)
    icon.frame:EnableMouse(false)
    card:AddChild(icon)

    card.label = createReportText(card, title, 10, theme.textColor.common)
    card.label:SetJustifyV("MIDDLE")
    card.data = createReportText(card, "", 10, {addon.settings:HexToRGB(addon.guideTextColors["RXP_WARN_"])})
    card.data:SetJustifyH("RIGHT")
    card.data:SetJustifyV("MIDDLE")

    return card
end

function addon.tracker:UpdateTheme()
    local theme = addon.v2:GetTheme()
    local guideGroupColor = {addon.settings:HexToRGB(addon.guideTextColors["RXP_WARN_"])}
    if self.reportFrame then
        self.reportFrame:UpdateTheme({hideBackground = false})
        for target, tab in pairs(self.reportFrame.tabButtons) do
            if tab.rxpPlayer then
                self.reportFrame:RefreshTabTheme(tab, target == self.reportFrame.activeTab)
            end
        end
    end
    for _, trackerUi in pairs(self.ui) do
        trackerUi.scrollContainer:SetTheme(theme)
        updateReportDropdown(trackerUi.levelBracketDropdown, theme)
        updateReportDropdown(trackerUi.levelDropdown, theme)
        trackerUi.exportButton:UpdateSubTheme()
        trackerUi.levelBracketLabel:SetColor(theme.textColor.common)
        trackerUi.levelLabel:SetColor(theme.textColor.common)
        trackerUi.levelBracketLabel:UpdateSubTheme()
        trackerUi.levelLabel:UpdateSubTheme()

        local card
        for index = 1, #trackerUi.reportSections do
            card = trackerUi.reportSections[index]
            addon.ui.v2:ApplyFrameBackdrop(card.frame, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)
            card.label:SetColor(theme.textColor.common)
            card.label:UpdateSubTheme()
            card.data:SetColor(guideGroupColor)
            card.data:UpdateSubTheme()
        end

        trackerUi.scrollContainer:DoLayout()
    end

    if self.splits.frame then
        self.splits:UpdateTheme()
        self.splits:Update("full")
    end
end

function addon.tracker:CreateGui(target)
    if self.ui[target] then return end
    local theme = addon.v2:GetTheme()

    if not self.reportFrame then
        self.reportFrame = AceGUI:Create("RXPV2ActivePartyStepsFrame")
        self.reportFrame:SetLayout("Fill")
        self.reportFrame:SetSize(450, 250)
        self.reportFrame.autoSize = false
        self.reportFrame.footertext:SetText(L("RestedXP Leveling Report"))
        self.reportFrame:SetCallback("OnTabSelected", function(_, _, selectedTarget)
            if selectedTarget ~= playerName then return end

            local playerUi = self.ui[playerName]
            self:CompileData()
            playerUi.reportPlayerLevel = self.playerLevel
            playerUi.reportLevels = self.db.profile["levels"]
            playerUi.selectedBracket = mmax(floor((playerUi.reportPlayerLevel - 1) / 10) * 10 + 1, 1)
            self:UpdateReportLevels(playerUi, playerUi.reportLevels, playerUi.reportPlayerLevel)
            self:UpdateReport(playerUi.reportPlayerLevel, playerName)
        end)
        self.reportFrame:Hide()
    end

    self.ui[target] = {}
    local trackerUi = self.ui[target]
    trackerUi.scrollContainer = AceGUI:Create("RXPV2ScrollFrame")
    trackerUi.scrollContainer:SetTheme(theme)
    trackerUi.scrollContainer:SetLayout("Table")
    trackerUi.scrollContainer:SetUserData("table", {columns = {{weight = 1}}, spaceV = 5})
    trackerUi.scrollContainer:SetFullWidth(true)
    trackerUi.scrollContainer:SetFullHeight(true)
    trackerUi.scrollContainer:SetParent(self.reportFrame)

    trackerUi.reportTarget = target
    if target == playerName then
        trackerUi.reportLevels = self.db.profile["levels"]
        trackerUi.reportPlayerLevel = self.playerLevel
    else
        trackerUi.reportLevels = self.state.otherReports[target].reportData
        trackerUi.reportPlayerLevel = self.state.otherReports[target].playerLevel
    end

    local levelRow = AceGUI:Create("SimpleGroup")
    levelRow:SetLayout("Table")
    levelRow:SetUserData("table", {columns = {{weight = 1}, {weight = 1}, {weight = 1}}, spaceH = 8})
    levelRow:SetFullWidth(true)

    local bracketColumn = AceGUI:Create("SimpleGroup")
    bracketColumn:SetLayout("List")
    bracketColumn:SetFullWidth(true)
    trackerUi.levelBracketLabel = createReportText(bracketColumn, L("Level bracket"), 9, theme.textColor.common)
    trackerUi.levelBracketDropdown = AceGUI:Create("Dropdown")
    trackerUi.levelBracketDropdown:SetFullWidth(true)
    trackerUi.levelBracketDropdown:SetHeight(24)
    bracketColumn:AddChild(trackerUi.levelBracketDropdown)

    local levelColumn = AceGUI:Create("SimpleGroup")
    levelColumn:SetLayout("List")
    levelColumn:SetFullWidth(true)
    trackerUi.levelLabel = createReportText(levelColumn, L("Level-up"), 9, theme.textColor.common)
    trackerUi.levelDropdown = AceGUI:Create("Dropdown")
    trackerUi.levelDropdown:SetFullWidth(true)
    trackerUi.levelDropdown:SetHeight(24)
    levelColumn:AddChild(trackerUi.levelDropdown)

    trackerUi.selectedBracket = mmax(floor((trackerUi.reportPlayerLevel - 1) / 10) * 10 + 1, 1)
    addon.tracker:UpdateReportLevels(trackerUi, trackerUi.reportLevels, trackerUi.reportPlayerLevel)
    trackerUi.levelBracketDropdown:SetCallback("OnValueChanged", function(_, _, selectedBracket)
        trackerUi.selectedBracket = selectedBracket
        local selectedLevel = addon.tracker:UpdateReportLevels(trackerUi, trackerUi.reportLevels,
                                                               trackerUi.reportPlayerLevel)
        if selectedLevel then addon.tracker:UpdateReport(selectedLevel, trackerUi.reportTarget) end
    end)
    trackerUi.levelDropdown:SetCallback("OnValueChanged", function(_, _, selectedLevel)
        addon.tracker:UpdateReport(selectedLevel, trackerUi.reportTarget)
    end)

    trackerUi.exportButton = AceGUI:Create("RXPV2Button")
    trackerUi.exportButton:SetText(L("Export Report"))
    trackerUi.exportButton:SetFullWidth(true)
    trackerUi.exportButton:SetUserData("cell", {align = "BOTTOMLEFT"})
    trackerUi.exportButton:SetHeight(24)
    trackerUi.exportButton:SetPrimary(true)
    trackerUi.exportButton:SetCallback("OnClick", function()
        local reportText = table.concat({
            trackerUi.reportTarget,
            "",
            fmt("%s: %s", L("Level bracket"), trackerUi.levelBracketDropdown.text:GetText()),
            fmt("%s: %s", L("Level-up"), trackerUi.levelDropdown.text:GetText()),
            "",
            fmt("%s %s", L("Ding Time:"), trackerUi.dingContainer.data.text:GetText()),
            fmt("%s %s", L("Speed:"), trackerUi.speedContainer.data.text:GetText()),
            "",
            L("Zones & Dungeons"),
            trackerUi.zonesContainer.data.text:GetText(),
            "",
            L("Teamwork:"),
            trackerUi.teamworkContainer.data.text:GetText()
        }, "\n")
        local reportFrame = self.reportFrame.frame
        addon.comms.OpenBrandedExport(L("Export Report"), "", reportText, reportFrame:GetWidth() / 2,
                                      reportFrame:GetHeight())
    end)

    levelRow:AddChildren(bracketColumn, levelColumn, trackerUi.exportButton)
    trackerUi.dingContainer = createReportCard(L("Ding Time:"), "rxp-icon-stopwatch", theme)
    trackerUi.speedContainer = createReportCard(L("Speed:"), "rxp-icon-lvl_speed", theme)
    trackerUi.zonesContainer = createReportCard(L("Zones & Dungeons"), "rxp-icon-route", theme)
    trackerUi.teamworkContainer = createReportCard(L("Teamwork:"), "rxp-icon-group-4", theme)
    trackerUi.reportSections = {
        trackerUi.dingContainer,
        trackerUi.speedContainer,
        trackerUi.zonesContainer,
        trackerUi.teamworkContainer
    }
    trackerUi.scrollContainer:AddChild(levelRow)
    for _, card in ipairs(trackerUi.reportSections) do
        trackerUi.scrollContainer:AddChild(card)
    end

    self.reportFrame:SetPlayerContainer(target, trackerUi.scrollContainer)
    trackerUi.scrollContainer:SetContentTopPadding(0)
    self:UpdateTheme()
end

function addon.tracker:ShowReport(target)
    target = target or playerName
    if not self.ui[target] then self:CreateGui(target) end

    local players = {playerName}
    local inspectedPlayers = {}
    for reportTarget in pairs(self.state.otherReports) do
        inspectedPlayers[#inspectedPlayers + 1] = reportTarget
    end
    table.sort(inspectedPlayers)
    for _, reportTarget in ipairs(inspectedPlayers) do
        players[#players + 1] = reportTarget
    end
    self.reportFrame:SetTabs(players, target)
    self.reportFrame:Fire("OnTabSelected", target)
    self.reportFrame:Show()
end

function addon.tracker:CompileLevelData(level, d)
    local data = d or addon.tracker.db.profile["levels"][level]

    local report = {questXP = 0, mobXP = 0, zoneXP = {}}

    local zoneXP = {}

    for zoneName, questData in pairs(data.quests) do
        if not zoneXP[zoneName] then zoneXP[zoneName] = {xp = 0, name = zoneName} end

        for _, questXP in pairs(questData) do
            report.questXP = report.questXP + questXP

            zoneXP[zoneName].xp = zoneXP[zoneName].xp + questXP
        end
    end

    for zoneName, mobData in pairs(data.mobs) do
        if not zoneXP[zoneName] then zoneXP[zoneName] = {xp = 0, name = zoneName} end

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

    report.timestamp = {started = data.timestamp.started, finished = data.timestamp.finished}

    report.deaths = data.deaths

    if data.timestamp.dateStarted then -- Level 1
        report.timestamp.dateStarted = fmt("%s %d, %d at %d:%02d %s Server",
                                           _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp.dateStarted.month],
                                           data.timestamp.dateStarted.monthDay, data.timestamp.dateStarted.year,
                                           data.timestamp.dateStarted.hour % 12, data.timestamp.dateStarted.minute,
                                           data.timestamp.dateStarted.hour >= 12 and "PM" or "AM")
    end
    if data.timestamp.dateFinished then
        report.timestamp.dateFinished = fmt("%s %d, %d at %d:%02d %s Server",
                                            _G.CALENDAR_FULLDATE_MONTH_NAMES[data.timestamp.dateFinished.month],
                                            data.timestamp.dateFinished.monthDay, data.timestamp.dateFinished.year,
                                            data.timestamp.dateFinished.hour % 12, data.timestamp.dateFinished.minute,
                                            data.timestamp.dateFinished.hour >= 12 and "PM" or "AM")
    end

    return report
end

function addon.tracker:CompileData()
    self.reportData = {}

    for level, data in pairs(self.db.profile["levels"]) do
        self.reportData[level] = self:CompileLevelData(level, data)
    end

    return self.reportData
end

function addon.tracker:UpdateReport(selectedLevel, target)
    local trackerUi = self.ui[target or playerName]
    if not trackerUi then return end

    local report
    local reportLevels
    if target and target ~= playerName then
        local otherReport = self.state.otherReports[target]
        if otherReport and otherReport.reportData and otherReport.reportData[selectedLevel] then
            report = otherReport.reportData[selectedLevel]
            report.playerLevel = otherReport.playerLevel
            report.timePlayedThisLevel = otherReport.timePlayedThisLevel
            reportLevels = otherReport.reportData
        end
    else
        report = self.reportData[selectedLevel]
        if report then
            report.playerLevel = self.playerLevel
            local login = self.state.login
            if login then
                report.timePlayedThisLevel = difftime(time(), login.time) + login.timePlayedThisLevel
            end
        end
        reportLevels = self.reportData
    end

    if not report then
        addon.comms.PrettyPrint(L("Unable to retrieve report for") .. " %s", target)
        return
    end

    trackerUi.reportTarget = target or playerName
    trackerUi.reportLevels = reportLevels
    trackerUi.reportPlayerLevel = report.playerLevel
    trackerUi.selectedBracket = mmax(floor((selectedLevel - 1) / 10) * 10 + 1, 1)
    addon.tracker:UpdateReportLevels(trackerUi, reportLevels, report.playerLevel)
    trackerUi.levelBracketDropdown:SetValue(trackerUi.selectedBracket)
    trackerUi.levelDropdown:SetValue(selectedLevel)

    local dingTime
    if selectedLevel == report.playerLevel then
        if selectedLevel == 1 or (selectedLevel == 55 and addon.player.class == "DEATHKNIGHT") then
            dingTime = report.timestamp.dateStarted
        else
            local previousLevel = reportLevels[selectedLevel - 1]
            dingTime = previousLevel and previousLevel.timestamp.dateFinished
        end
    else
        dingTime = report.timestamp.dateFinished
    end
    dingTime = dingTime or L("Missing data")
    trackerUi.dingContainer.data:SetText(dingTime)

    local speed
    if selectedLevel == report.playerLevel then
        speed = report.timePlayedThisLevel and addon.comms:PrettyPrintTime(report.timePlayedThisLevel)
    elseif report.timestamp and report.timestamp.started and report.timestamp.finished then
        speed = addon.comms:PrettyPrintTime(report.timestamp.finished - report.timestamp.started)
    end
    speed = speed or L("Missing data")
    trackerUi.speedContainer.data:SetText(speed)

    local teamworkText
    if selectedLevel == addon.tracker.maxLevel or UnitXP("player") == 0 then
        teamworkText = fmt(L("Solo: %s"), "N/A") .. "\n" .. fmt(L("Group: %s"), "N/A")
    else
        local totalExperience = report.soloExperience + report.groupExperience
        local groupPercentage = totalExperience > 0 and 100 * report.groupExperience / totalExperience or 0
        teamworkText = fmt(L("Solo: %.2f%%"), 100 - groupPercentage) .. "\n" ..
                           fmt(L("Group: %.2f%%"), groupPercentage)
    end
    trackerUi.teamworkContainer.data:SetText(teamworkText)

    local zones = {}
    if selectedLevel ~= addon.tracker.maxLevel then
        for _, data in ipairs(report.zoneXP) do
            zones[#zones + 1] = fmt("%s - %.1f%%", data.name, data.xp * 100 / report.totalXP)
        end
    end
    trackerUi.zonesContainer.data:SetText(table.concat(zones, "\n"))

    trackerUi.scrollContainer:DoLayout()
end

function addon.tracker.splits:FormatTime(s, isDelta)
    local prefix = s < 0 and '-' or ''
    if isDelta and s > 0 then prefix = '+' end

    s = abs(s)
    local hours = floor(s / 60 / 60)
    s = mod(s, 60 * 60)

    local minutes = floor(s / 60)
    s = mod(s, 60)

    local formattedString
    if hours > 0 then
        formattedString = fmt("%02d:%02d:%02d", hours, minutes, s)
    elseif minutes > 0 then
        formattedString = fmt("%02d:%02d", minutes, s)
    else
        formattedString = fmt("00:%02d", s)
    end

    return prefix .. formattedString
end

local gap = #fmt("%s 12    ", L("Level"))
function addon.tracker.splits:FormatLevelLine(level, splitsString)
    local formattedString = fmt("%s %d%s%s%s", L("Level"), level, level < 10 and '  ' or '',
                                srep(' ', gap - #splitsString), splitsString)

    return formattedString
end

function addon.tracker.splits:FormatReportTitle(reportKey, title)
    local class = reportKey and reportKey:match("^[^|]*|([^|]*)|")
    local className = class and localizedClassNames[class]
    local characterName, realm
    if title then characterName, realm = title:match("^(.-)%s+%([^)]*%)%s+%-%s+(.*)$") end
    if not className or not characterName then return title or reportKey end

    return fmt("%s (%s) - %s", characterName, className, realm)
end

function addon.tracker.splits:ShowMenu(menuFrame, button)
    local function addToggle(menu, text, setting, refreshTheme)
        tinsert(menu, {
            text = text,
            isNotRadio = true,
            keepShownOnClick = true,
            checked = function() return addon.settings.profile[setting] end,
            func = function()
                addon.settings.profile[setting] = not addon.settings.profile[setting]
                if refreshTheme then
                    self:UpdateTheme()
                else
                    self:Update("full", setting == "showLevelSplitsHistory")
                end
            end
        })
    end

    local comparisonsMenu = {}
    local optionsMenu = {}

    addToggle(comparisonsMenu, L("Compare Next Level"), "compareNextLevelSplit")
    addToggle(optionsMenu, L("Show Total Time Split"), "compareTotalTimeSplit")
    addToggle(optionsMenu, L("Show History"), "showLevelSplitsHistory")
    addToggle(optionsMenu, L("Hide Splits Background"), "hideSplitsBackground", true)

    local menu = {
        {
            text = _G.GAMEOPTIONS_MENU,
            hasArrow = true,
            menuList = optionsMenu,
            notCheckable = 1
        }, {
            text = L("Share"),
            notCheckable = 1,
            func = function()
                addon.comms.OpenBrandedExport(
                    L("Share Level Splits"), "",
                        self:ShareText(), 20, 200)
            end
        }, {
            text = L("Compare"),
            hasArrow = true,
            menuList = comparisonsMenu,
            notCheckable = 1
        }, {
            text = _G.HIDE,
            tooltipTitle = L("Temporarily hide, use '/rxp splits' to show again"),
            tooltipOnButton = true,
            notCheckable = 1,
            func = function() self.frame:Hide() end
        }, {
            text = L("Close"),
            notCheckable = 1,
            func = function() addon:CloseMenu() end
        }
    }

    tinsert(comparisonsMenu, {
        text = L("Export"),
        notCheckable = 1,
        func = function()
            addon.comms.OpenBrandedExport(L"Export Level Splits",
                                          L"Export string for Importing into another character's comparison data",
                                          self:ExportText(), 20, 200)
            addon:CloseMenu()
        end
    })

    tinsert(comparisonsMenu, {
        text = L("Import"),
        notCheckable = 1,
        func = function()
            addon.comms.OpenBrandedExport(L"Import Level Splits", L"Import string from another character", "", 20, 200,
                                          function(text) self:Import(text) end)
            addon:CloseMenu()
        end
    })

    tinsert(comparisonsMenu, {text = _G.CHARACTER, notCheckable = 1, isTitle = true})

    tinsert(comparisonsMenu, {
        text = _G.NONE,
        func = function()
            self.comparisonKey = nil
            addon:CloseMenu()
            self:Update("full")
        end,
        checked = function() return not self.comparisonKey end
    })

    for k, d in pairs(addon.db.profile.reports.splits) do
        if k ~= addon.tracker.reportKey then
            tinsert(comparisonsMenu, {
                text = self:FormatReportTitle(k, d.title),
                arg1 = k,
                func = function(_, key)
                    self.comparisonKey = key
                    addon:CloseMenu()
                    self:Update("full")
                end,
                checked = function() return k == self.comparisonKey end
            })
        end
    end

    EasyMenu(menu, menuFrame, button, 0, 0, "MENU")
end

function addon.tracker.splits:UpdateTheme()
    local f = self.frame
    if not f then return end

    local theme = addon.v2:GetTheme()
    if addon.settings.profile.hideSplitsBackground then
        addon.ui.v2:SetFrameBackdropShown(f, false)
    else
        addon.ui.v2:ApplyFrameBackdrop(f, theme.edge, theme.backgroundColors.common,
                                       theme.borderColors.commonEdge)
        addon.ui.v2:AddFrameShadow(f)
        addon.ui.v2:SetFrameBackdropShown(f, true)
    end

    addon.ui.v2:ApplyFrameBackdrop(f.title, theme.edge, theme.backgroundColors.common,
                                   theme.borderColors.commonEdge)
    f.history:SetTheme(theme)
    f.title.text:SetFont(theme.font, 9, "")
    f.title.text:SetTextColor(unpack(theme.textColor.title))
    f.title:SetWidth(f.title.text:GetStringWidth() + 10)

    local fontSize = addon.settings.profile.levelSplitsFontSize
    f.measureText:SetFont(theme.font, fontSize, "")
    local guideGroupColor = {addon.settings:HexToRGB(addon.guideTextColors["RXP_WARN_"])}
    f.current:UpdateSubTheme()
    f.current:SetFont(theme.font, fontSize, "")
    f.current:SetColors(theme.textColor.common, guideGroupColor)
    f.total:UpdateSubTheme()
    f.total:SetFont(theme.font, fontSize, "")
    f.total:SetColors(theme.textColor.common, guideGroupColor)
    for _, row in ipairs(f.history.children) do
        row:UpdateSubTheme()
        row:SetFont(theme.font, fontSize, "")
        row:SetColors(theme.textColor.common, guideGroupColor)
    end
end

function addon.tracker.splits:ResizeHistory()
    local f = self.frame
    if f.resizingHistory then return end
    f.resizingHistory = true

    local fixedHeight, fixedChildren = 0, 0
    for _, row in ipairs(f.rows.children) do
        if row ~= f.history and row:IsShown() then
            fixedHeight = fixedHeight + row.frame:GetHeight()
            fixedChildren = fixedChildren + 1
        end
    end

    local tableOptions = f.rows:GetUserData("table")
    local spacing = tableOptions.spaceV or tableOptions.space or 0
    local minHeight = fixedHeight + spacing * fixedChildren
    if f:GetHeight() < minHeight then f:SetHeight(minHeight) end
    if f.SetResizeBounds then
        f:SetResizeBounds(160, minHeight)
    else
        f:SetMinResize(160, minHeight)
    end

    if #f.history.children > 0 and addon.settings.profile.showLevelSplitsHistory then
        f.history:SetHeight(min(f.history.content:GetHeight(), mmax(f:GetHeight() - minHeight, 0)))
        f.history.frame:SetShown(f.history.frame:GetHeight() > 1)
    else
        f.history:SetHeight(0)
        f.history.frame:Hide()
    end
    f.rows:DoLayout()
    f.resizingHistory = nil
end

function addon.tracker.splits:StartMoving()
    if addon.settings.profile.lockFrames and not IsAltKeyDown() then return end

    self.frame:StartMoving()
end

function addon.tracker.splits:StopMoving()
    self.frame:StopMovingOrSizing()
    addon.settings:SaveFramePositions()
end

function addon.tracker.splits:Create()
    if self.frame then
        self:Update("full")
        return
    end
    -- This frame only needs a movable anchor and text.
    local layout = AceGUI:Create("SimpleGroup")
    layout:SetLayout("Table")
    layout:SetUserData("table", {columns = {{weight = 1}}, spaceV = 2})

    local f = layout.frame
    f:SetFrameStrata("MEDIUM")

    self.frame = f
    addon.enabledFrames["levelSplits"] = f
    f.GetSavedSize = function(frame)
        return frame:GetWidth(), frame:GetHeight(), frame.userResizing == true
    end
    f.RestoreSavedSize = function(frame, size)
        local isManualResize = addon.settings.profile.showLevelSplitsHistory and size and size[3] == true
        frame.userResizing = isManualResize and true or nil
        frame.rows:SetAutoAdjustHeight(not isManualResize)
        if size then
            if isManualResize then
                frame:SetSize(size[1], size[2])
            else
                frame:SetWidth(size[1])
            end
        end
        if isManualResize then
            addon.tracker.splits:ResizeHistory()
        else
            frame.rows:DoLayout()
        end
    end
    f.IsFeatureEnabled = function() return addon.settings.profile.enablelevelSplits, false end
    f:SetClampedToScreen(true)
    f:EnableMouse(true)
    f:SetMovable(true)
    f:SetResizable(true)
    if f.SetResizeBounds then
        f:SetResizeBounds(160, 50)
    else
        f:SetMinResize(160, 50)
    end
    f:SetScript("OnMouseDown", function() addon.tracker.splits:StartMoving() end)
    f:SetScript("OnMouseUp", function() addon.tracker.splits:StopMoving() end)

    local sizer = CreateFrame("Button", nil, f)
    sizer:SetSize(12, 12)
    sizer:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -2, 2)
    sizer:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
    sizer:SetHighlightTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
    sizer:SetScript("OnMouseDown", function()
        if addon.settings.profile.lockFrames and not IsAltKeyDown() then return end
        f.userResizing = true
        f.rows:SetAutoAdjustHeight(false)
        addon.tracker.splits:ResizeHistory()
        f:StartSizing("BOTTOMRIGHT")
    end)
    sizer:SetScript("OnMouseUp", function() addon.tracker.splits:StopMoving() end)

    f:SetScale(addon.settings.profile.levelSplitsScale)
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
    f.title = CreateFrame("Frame", "$parent_title", f, BackdropTemplateMixin and "BackdropTemplate")
    f.title:ClearAllPoints()
    f.title:EnableMouse(true)
    f.title:SetPoint("TOPLEFT", f, 5, 8)
    f.title:SetFrameLevel(f:GetFrameLevel() + 3)
    f.title:SetHeight(19)

    f.title.splitsMenuFrame = CreateFrame("Frame", "RXPG_SplitsMenuFrame", f.title, "UIDropDownMenuTemplate")

    f.title.text = f.title:CreateFontString(nil, "OVERLAY")
    f.title.text:ClearAllPoints()
    f.title.text:SetJustifyH("CENTER")
    f.title.text:SetJustifyV("MIDDLE")
    f.title.text:SetFont(addon.v2:GetTheme().font, 9, "")
    f.title.text:SetText(L("Level Splits"))
    f.title.text:SetPoint("CENTER", f.title, 0, 0)
    f.title:SetWidth(f.title.text:GetStringWidth() + 10)
    f.title:SetScript("OnMouseDown", function(_, button)
        if button == "LeftButton" then addon.tracker.splits:StartMoving() end
    end)
    f.title:SetScript("OnMouseUp", function(title, button)
        if button == "LeftButton" then
            addon.tracker.splits:StopMoving()
        elseif button == "RightButton" then
            addon.tracker.splits:ShowMenu(f.title.splitsMenuFrame, title)
        end
    end)

    f.history = AceGUI:Create("RXPV2ScrollFrame")
    f.history:SetFullWidth(true)
    f.history:SetUserData("table", {columns = {{weight = 1}}, spaceV = 2})
    f.history:SetLayout("Table")
    f.history:SetTheme(addon.v2:GetTheme())
    f.history:SetHeight(0)
    f.current = AceGUI:Create("RXPV2LevelSplitsRow")
    f.total = AceGUI:Create("RXPV2LevelSplitsRow")
    f.current:SetLayout("Table")
    f.total:SetLayout("Table")

    f.rows = layout
    f.rows:PauseLayout()
    local spacer = AceGUI:Create("SimpleGroup")
    spacer:SetAutoAdjustHeight(false)
    spacer:SetFullWidth(true)
    spacer:SetHeight(12)
    local bottomSpacer = AceGUI:Create("SimpleGroup")
    bottomSpacer:SetAutoAdjustHeight(false)
    bottomSpacer:SetFullWidth(true)
    bottomSpacer:SetHeight(14)
    f.rows:AddChildren(spacer, f.current, f.total, f.history, bottomSpacer)
    f.history.frame:Hide()
    f.rows:ResumeLayout()
    f.rows:DoLayout()
    f.measureText = f:CreateFontString(nil, "ARTWORK")
    f.measureText:SetAlpha(0)
    f.measureText:Show()

    f:HookScript("OnSizeChanged", function()
        if f.userResizing then addon.tracker.splits:ResizeHistory() end
    end)

    self:UpdateTheme()

    f:SetAlpha(addon.settings.profile.levelSplitsOpacity)
    f.title:SetIgnoreParentAlpha(true)
    if addon.settings.profile.levelSplitsOpacity + 0.1 > 1.0 then
        f.title:SetAlpha(1)
    else
        f.title:SetAlpha(addon.settings.profile.levelSplitsOpacity + 0.1)
    end

    f:HookScript("OnUpdate", function() addon.tracker.splits:RefreshSummary() end)

    f.awaitingInitialData = true
    f:SetScript("OnShow", function()
        if addon.settings.profile.showEnabled and addon.tracker.state.login then
            addon.tracker.splits:Update("full")
        else
            f:Hide()
        end
    end)
    f:Hide()
    if addon.tracker.state.login then self:Update("full") end
end

function addon.tracker.splits:Toggle()
    if InCombatLockdown() or not addon.settings.profile.enablelevelSplits then return end
    if not self.frame then return end

    if self.frame:IsShown() then
        self.frame:Hide()
    else
        self.frame:Show()
    end
end

function addon.tracker.splits:RefreshSummary()
    if addon.tracker.playerLevel >= addon.tracker.maxLevel then return end

    if not self.lastUpdate then
        self.lastUpdate = GetTime()
        self:Update("full")
        return
    end

    local now = GetTime()
    if (now - self.lastUpdate) > 1 then
        self.lastUpdate = now
        self:Update()
    end
end

function addon.tracker.splits:Compile(kind)
    local splitsReportData = {
        title = fmt("%s (%s) - %s", playerName,
                    localizedClassNames[addon.player.class] or addon.player.localeClass,
                    _G.GetRealmName()),
        reportKey = addon.tracker.reportKey,
        playerLevel = addon.tracker.playerLevel
    }
    local secondsSinceLogin = difftime(time(), addon.tracker.state.login.time)

    local s

    if addon.tracker.playerLevel == addon.tracker.maxLevel then
        -- Leave creation or full placeholder on updates
        if kind == "full" then
            splitsReportData.current = {text = fmt("%s: Max", L("Level Time"))}

            if addon.tracker.reportData[addon.tracker.maxLevel - 1] and
                addon.tracker.reportData[addon.tracker.maxLevel - 1].timestamp and
                addon.tracker.reportData[addon.tracker.maxLevel - 1].timestamp.finished then
                -- Use lvl 69/79 ding as total time to level
                s = addon.tracker.reportData[addon.tracker.maxLevel - 1].timestamp.finished

                splitsReportData.total = {
                    text = fmt("%s %d: %s", L("Time to"), addon.tracker.maxLevel,
                               self:FormatTime(s)),
                    duration = s
                }
            else
                s = addon.tracker.state.login.totalTimePlayed + secondsSinceLogin

                splitsReportData.total = {
                    text = fmt("%s: %s", L("Total Time"), self:FormatTime(s)),
                    duration = s
                }
            end
        end
    else
        s = secondsSinceLogin + addon.tracker.state.login.timePlayedThisLevel
        splitsReportData.current = {
            text = fmt("%s: %s", L("Level Time"), self:FormatTime(s)),
            duration = s
        }

        s = addon.tracker.state.login.totalTimePlayed + secondsSinceLogin
        splitsReportData.total = {
            text = fmt("%s: %s", L("Total Time"), self:FormatTime(s)),
            duration = s
        }
    end

    if kind == "full" then
        local data
        local splitsData = {levels = {}}
        local levelDB = addon.tracker.db.profile.levels
        local levels = {}
        local totalSeconds = 0
        local level

        for key in pairs(levelDB) do
            level = tonumber(key)
            if level and level >= 1 and level < addon.tracker.playerLevel then
                levels[#levels + 1] = level
            end
        end
        table.sort(levels)

        for index = 1, #levels do
            level = levels[index]
            data = levelDB[level] or levelDB[tostring(level)]

            if data then
                if data.timestamp and data.timestamp.started and data.timestamp.finished then
                    s = data.timestamp.finished - data.timestamp.started

                    if s > 0 then
                        totalSeconds = totalSeconds + s

                        splitsData.levels[level] = {
                            text = self:FormatLevelLine(level + 1, self:FormatTime(totalSeconds)),
                            duration = s,
                            totalDuration = totalSeconds
                        }
                    else
                        splitsData.levels[level] = {text = self:FormatLevelLine(level + 1, '-')}
                    end
                else
                    splitsData.levels[level] = {text = self:FormatLevelLine(level + 1, '-')}
                end
            end
        end

        splitsReportData.history = splitsData

        addon.db.profile.reports.splits[addon.tracker.reportKey] = splitsReportData
    end

    return splitsReportData
end

function addon.tracker.splits:FormatDelta(mine, theirs)
    if not mine or not theirs then return "-" end

    local diff = mine - theirs
    local diffString = self:FormatTime(diff, 'delta')

    if diff < 0 then
        return fmt("|cff00aa00%s|r", diffString)
    elseif diff > 0 then
        return fmt("|cffff0000%s|r", diffString)
    end

    -- Even time, use default color
    return diffString
end

function addon.tracker.splits:Update(kind, fitToContent)
    local f = self.frame
    if not f then return end
    if not addon.settings.profile.enablelevelSplits or not addon.settings.profile.showEnabled then
        f:Hide()
        return
    end
    if not addon.tracker.state.login then return end

    local reportSplitsData = self:Compile(kind)
    local compareTo = self.comparisonKey and addon.db.profile.reports.splits[self.comparisonKey]

    if fitToContent then
        f.userResizing = nil
        f.rows:SetAutoAdjustHeight(true)
        local savedSize = addon.settings.profile.frameSizes and addon.settings.profile.frameSizes.levelSplits
        if savedSize then savedSize[3] = false end
    end

    if addon.tracker.playerLevel == addon.tracker.maxLevel then
        -- Leave creation or full placeholder on updates
        if kind == "full" then
            f.current:SetText(L("Level Time"), "Max")

            -- If max level and compareTo level exists, compare total time
            local totalLabel, totalValue = reportSplitsData.total.text:match("^(.-):%s*(.*)$")
            if compareTo and compareTo.total and compareTo.total.duration then
                totalValue = fmt("%s %s", totalValue,
                                 self:FormatDelta(reportSplitsData.total.duration, compareTo.total.duration))
            end
            f.total:SetText(totalLabel, totalValue)
        end
    else
        local currentLabel, currentValue = reportSplitsData.current.text:match("^(.-):%s*(.*)$")
        local compareHistory = compareTo and compareTo.history and compareTo.history.levels
        local nextSplit = compareHistory and (compareHistory[addon.tracker.playerLevel] or
                                              compareHistory[tostring(addon.tracker.playerLevel)])
        local nextSplitDuration = nextSplit and nextSplit.duration
        if compareTo and not nextSplitDuration then
            local comparedPlayerLevel = tonumber(compareTo.playerLevel)
            if not comparedPlayerLevel then
                for level in pairs(compareHistory or {}) do
                    level = tonumber(level)
                    if level then comparedPlayerLevel = mmax(comparedPlayerLevel or 0, level) end
                end
                if comparedPlayerLevel then comparedPlayerLevel = comparedPlayerLevel + 1 end
            end

            if comparedPlayerLevel == addon.tracker.playerLevel then
                nextSplitDuration = compareTo.current and compareTo.current.duration
            end
        end

        if compareTo and addon.settings.profile.compareNextLevelSplit then
            local comparisonValue = nextSplitDuration and
                                    fmt("%s %s", self:FormatTime(nextSplitDuration),
                                        self:FormatDelta(reportSplitsData.current.duration, nextSplitDuration)) or "-"
            f.current:SetText(fmt("%s %d\n\n%s", L("Level"), addon.tracker.playerLevel + 1, currentLabel),
                              fmt("%s\n\n%s", comparisonValue, currentValue))
        else
            f.current:SetText(currentLabel, currentValue)
        end

        local totalLabel, totalValue = reportSplitsData.total.text:match("^(.-):%s*(.*)$")
        f.total:SetText(totalLabel, totalValue)
    end

    if kind == "full" then
        local historyLevels = {}

        f.history:ReleaseChildren()
        f.history:PauseLayout()
        if addon.settings.profile.showLevelSplitsHistory then
            for level in pairs(reportSplitsData.history.levels) do
                historyLevels[#historyLevels + 1] = level
            end
            table.sort(historyLevels, function(a, b) return a > b end)

            local theme = addon.v2:GetTheme()
            local fontSize = addon.settings.profile.levelSplitsFontSize
            local guideGroupColor = {addon.settings:HexToRGB(addon.guideTextColors["RXP_WARN_"])}
            local data, comparisonData, displayDuration, duration, comparedDuration
            local historyRow, level

            for index = 1, min(#historyLevels, addon.settings.profile.levelSplitsHistory) do
                level = historyLevels[index]
                data = reportSplitsData.history.levels[level]
                comparisonData = compareTo and compareTo.history and compareTo.history.levels and
                                 (compareTo.history.levels[level] or compareTo.history.levels[tostring(level)])

                if data then
                    displayDuration = addon.settings.profile.compareTotalTimeSplit and data.totalDuration or
                                      data.duration
                    displayDuration = displayDuration and self:FormatTime(displayDuration) or "-"

                    if compareTo then
                        if addon.settings.profile.compareTotalTimeSplit then
                            duration, comparedDuration = data.totalDuration,
                                                        comparisonData and comparisonData.totalDuration
                        else
                            duration, comparedDuration = data.duration, comparisonData and comparisonData.duration
                        end
                        displayDuration = displayDuration .. " " .. self:FormatDelta(duration, comparedDuration)
                    end

                    historyRow = AceGUI:Create("RXPV2LevelSplitsRow")
                    historyRow:SetLayout("Table")
                    historyRow:SetText(fmt("%s %d", L("Level"), level + 1), displayDuration)
                    historyRow:UpdateSubTheme()
                    historyRow:SetFont(theme.font, fontSize, "")
                    historyRow:SetColors(theme.textColor.common, guideGroupColor)
                    f.history:AddChild(historyRow)
                end
            end
        end

        f.history:ResumeLayout()
        f.history:DoLayout()
        if addon.settings.profile.showLevelSplitsHistory and #f.history.children > 0 then
            f.history:SetHeight(min(f.history.content:GetHeight(), 154))
            f.history.frame:Show()
        else
            f.history:SetHeight(0)
            f.history.frame:Hide()
        end
    end

    local theme = addon.v2:GetTheme()
    local currentFont, currentFontSize = f.current.leftColumn.text:GetFont()
    if currentFont ~= theme.font or currentFontSize ~= addon.settings.profile.levelSplitsFontSize then
        self:UpdateTheme()
    end
    if f.userResizing then
        self:ResizeHistory()
    else
        f.rows:DoLayout()
    end
    if kind == "full" then f.history:SetScroll(0) end

    if f:GetAlpha() ~= addon.settings.profile.levelSplitsOpacity then
        f:SetAlpha(addon.settings.profile.levelSplitsOpacity)
        f.title:SetAlpha(addon.settings.profile.levelSplitsOpacity + 0.1)
    end

    -- Remove refresh after the first full update at max level
    if addon.tracker.playerLevel == addon.tracker.maxLevel and kind == "full" then
        self.frame:SetScript("OnUpdate", nil)
    end

    if f.awaitingInitialData then
        f.awaitingInitialData = nil
        f:Show()
    end
end

function addon.tracker.splits:ShareText()
    local reportSplitsData = self:Compile("full")
    local rows = {}
    local labelWidth, valueWidth = 0, 0
    local label, value, rowLabelWidth, rowValueWidth
    local measureText = self.frame.measureText

    if reportSplitsData.current.duration then
        label = fmt(L("Level %d time") .. ":", addon.tracker.playerLevel)
        value = self:FormatTime(reportSplitsData.current.duration)
        measureText:SetText(label)
        rowLabelWidth = measureText:GetStringWidth()
        measureText:SetText(value)
        rowValueWidth = measureText:GetStringWidth()
        rows[#rows + 1] = {label = label, value = value, labelWidth = rowLabelWidth, valueWidth = rowValueWidth}
        labelWidth = mmax(labelWidth, rowLabelWidth)
        valueWidth = mmax(valueWidth, rowValueWidth)
    end

    local data

    for l = 1, addon.tracker.playerLevel - 1 do
        data = reportSplitsData.history.levels[l]

        if data then
            label = fmt("%s %d:", L("Level"), l + 1)
            value = data.totalDuration and self:FormatTime(data.totalDuration) or "-"
            measureText:SetText(label)
            rowLabelWidth = measureText:GetStringWidth()
            measureText:SetText(value)
            rowValueWidth = measureText:GetStringWidth()
            rows[#rows + 1] = {label = label, value = value, labelWidth = rowLabelWidth, valueWidth = rowValueWidth}
            labelWidth = mmax(labelWidth, rowLabelWidth)
            valueWidth = mmax(valueWidth, rowValueWidth)
        end
    end

    label, value = reportSplitsData.total.text:match("^(.-):%s*(.*)$")
    label = label .. ":"
    measureText:SetText(label)
    rowLabelWidth = measureText:GetStringWidth()
    measureText:SetText(value)
    rowValueWidth = measureText:GetStringWidth()
    rows[#rows + 1] = {label = label, value = value, labelWidth = rowLabelWidth, valueWidth = rowValueWidth}
    labelWidth = mmax(labelWidth, rowLabelWidth)
    valueWidth = mmax(valueWidth, rowValueWidth)

    local lines = {reportSplitsData.title, ""}
    local row, spaces
    measureText:SetText("0 0")
    local spaceWidth = measureText:GetStringWidth()
    measureText:SetText("00")
    spaceWidth = mmax(spaceWidth - measureText:GetStringWidth(), 1)
    for index = 1, #rows do
        row = rows[index]
        spaces = math.ceil((labelWidth - row.labelWidth + valueWidth - row.valueWidth + 4) / spaceWidth)
        lines[#lines + 1] = row.label .. srep(" ", spaces) .. row.value
    end

    return table.concat(lines, "\n")
end

function addon.tracker.splits:ExportText()
    local reportSplitsData = self:Compile("full")

    return LibDeflate:EncodeForPrint(LibDeflate:CompressDeflate(addon.comms:Serialize(reportSplitsData)))
end

function addon.tracker.splits:Import(encodedText)
    local decoded = LibDeflate:DecodeForPrint(encodedText)

    if not decoded then
        addon.comms.PrettyPrint(L"Invalid data")
        return
    end
    local decompressed = LibDeflate:DecompressDeflate(decoded)
    if not decompressed then
        addon.comms.PrettyPrint(L"Invalid data")
        return
    end

    local deserializeResult, deserialized = addon.comms:Deserialize(decompressed)

    if not deserializeResult then
        addon.comms.PrettyPrint(L"Error Importing: " .. deserialized)
        return
    end

    local isValidReport = type(deserialized) == "table" and type(deserialized.title) == "string" and
                          deserialized.title ~= "" and type(deserialized.reportKey) == "string" and
                          deserialized.reportKey ~= "" and
                          (deserialized.playerLevel == nil or
                           (type(deserialized.playerLevel) == "number" and deserialized.playerLevel >= 1 and
                            deserialized.playerLevel == floor(deserialized.playerLevel))) and
                          type(deserialized.current) == "table" and type(deserialized.total) == "table" and
                          type(deserialized.history) == "table" and type(deserialized.history.levels) == "table" and
                          (deserialized.current.duration == nil or type(deserialized.current.duration) == "number") and
                          (deserialized.total.duration == nil or type(deserialized.total.duration) == "number")

    if isValidReport then
        local numericLevel
        for level, data in pairs(deserialized.history.levels) do
            numericLevel = tonumber(level)
            if not numericLevel or numericLevel < 1 or numericLevel ~= floor(numericLevel) or type(data) ~= "table" or
                (data.duration ~= nil and type(data.duration) ~= "number") or
                (data.totalDuration ~= nil and type(data.totalDuration) ~= "number") then
                isValidReport = false
                break
            end
        end
    end

    if not isValidReport then
        addon.comms.PrettyPrint(L"Invalid data")
        return
    end

    addon.comms.PrettyPrint(L"Importing %s", deserialized.title)
    addon.db.profile.reports.splits[deserialized.reportKey] = deserialized

    return true
end

function addon.tracker:BuildReportPayload(target)
    if target and target ~= playerName then return self.state.otherReports[target] end

    local login = self.state.login
    if not login then return end

    return {
        command = "LEVEL_REPORT_RESP",
        playerName = playerName,
        reportData = self:CompileData(),
        compileTime = GetServerTime(),
        playerLevel = self.playerLevel,
        timePlayedThisLevel = difftime(time(), login.time) + login.timePlayedThisLevel
    }
end

function addon.tracker:ExportReportBinary(target)
    local report = self:BuildReportPayload(target)
    if not report then return end

    local payload = self:Serialize(report)
    local exportText = LibDeflate:EncodeForPrint(LibDeflate:CompressDeflate(payload))
    local description = fmt("%s\n%s\n|c%s%s|r", L("Export your leveling report"),
                            L("Copy your guide reports to your clipboard and then paste it into the RestedXP Run Analyzer."),
                            addon.guideTextColors["RXP_WARN_"],
                            L("Join our Discord, enter #run-analyzer and find the hyperlink to our tool."))
    local title = fmt("%s %s", L("RestedXP Leveling Report"), L("Export"))
    addon.comms.OpenBrandedExport(title, description, exportText, 520, 320, nil,
                                  "https://discord.gg/RestedXP", true)
end

function addon.tracker:OnCommReceived(prefix, data, distribution, sender)
    if prefix ~= self._commPrefix or distribution ~= 'WHISPER' then return end -- or sender == playerName then return end
    local d = addon.settings.profile.debug

    if UnitInBattleground("player") ~= nil then return end

    local status, obj = self:Deserialize(data)

    addon.comms.PrettyDebug("Deserialize:status %s", tostring(status))
    if not status or not obj.command then return end

    if obj.command == 'LEVEL_REPORT_REQ' then
        local report = self:BuildReportPayload()
        if not report then return end

        addon.comms.PrettyDebug("Responding to LEVEL_REPORT_REQ, from %s", sender)
        self:SendCommMessage(self._commPrefix, self:Serialize(report), "WHISPER", sender)
    elseif obj.command == 'LEVEL_REPORT_RESP' then
        if sender ~= obj.playerName then
            if d then
                addon.comms.PrettyDebug("Invalid LEVEL_REPORT_RESP, %s != %s", sender, obj.playerName)
                return
            end
        end
        addon.comms.PrettyDebug("Caching LEVEL_REPORT_RESP, from %s at %s", sender, obj.compileTime)

        self.state.otherReports[sender] = obj
        self:CreateGui(sender)
        self:UpdateReport(obj.playerLevel, sender)
        self:ShowReport(sender)
    else
        addon.comms.PrettyDebug("Unknown command (%s)", obj.command)
    end
end

function addon.tracker:INSPECT_READY(_, inspecteeGUID)
    if not addon.settings.profile.enableLevelingReportInspections then return end

    if UnitInBattleground("player") ~= nil or not self.state.inspectionRequests[inspecteeGUID] then return end

    local inspectedName = select(6, GetPlayerInfoByGUID(inspecteeGUID))
    if self.state.otherReports[inspectedName] and self.state.otherReports[inspectedName].compileTime and GetServerTime() -
        self.state.otherReports[inspectedName].compileTime < 30 then

        addon.comms.PrettyDebug("Displaying cached data for %s from %.2f seconds ago", inspectedName,
                                GetServerTime() - self.state.otherReports[inspectedName].compileTime)

        self:CreateGui(inspectedName)
        self:UpdateReport(UnitLevel(inspectedName), inspectedName)
        self:ShowReport(inspectedName)
        return
    end

    local sz = self:Serialize({command = "LEVEL_REPORT_REQ"})
    self:SendCommMessage(self._commPrefix, sz, "WHISPER", inspectedName)
end
