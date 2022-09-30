local addonName, addon = ...

local _G = _G

local AceConfig = LibStub("AceConfig-3.0")
local LibDBIcon = LibStub("LibDBIcon-1.0")
local LibDataBroker = LibStub("LibDataBroker-1.1")

local fmt, tostr = string.format, tostring

local importString = ""
local previousFrame = 0
local buffer = {}
local importFrame
local ProcessBuffer

-- Alias addon.locale.Get
local L = addon.locale.Get

addon.settings = addon:NewModule("Settings", "AceConsole-3.0")

if not addon.settings.gui then addon.settings.gui = {selectedDeleteGuide = ""} end

function addon.settings.ChatCommand(input)
    if not input then
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
    end

    input = input:trim()
    if input == "import" then
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.import)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.import)
    elseif input == "debug" then
        addon.settings.db.profile.debug = not addon.settings.db.profile.debug

        if addon.settings.db.profile.debug then
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        end
    elseif input == "splits" then
        addon.tracker:ToggleLevelSplits()
    elseif input == "show" or input == "hide" or input == "toggle" then
        addon.settings.ToggleActive()
    elseif input == "support" or input == "ticket" or input == "bug" or input ==
        "feedback" then
        addon.comms.OpenBugReport()
    else
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
    end
end

function addon.settings:InitializeSettings()
    -- New character settings format
    -- Only set defaults for enabled = true
    local settingsDBDefaults = {
        profile = {
            enableTracker = true,
            enableLevelUpAnnounceSolo = true,
            enableLevelUpAnnounceGroup = true,
            enableFlyStepAnnouncements = true,
            alwaysSendBranded = true,
            checkVersions = true,
            enableLevelingReportInspections = true,
            levelSplitsHistory = 10,
            levelSplitsFontSize = 11,
            levelSplitsOpacity = 0.9,
            enableMinimapButton = true,
            minimap = {show = true, minimapPos = 146},

            --
            enableQuestAutomation = true,
            enableFPAutomation = true,
            enableBindAutomation = true,
            enableGossipAutomation = true,
            showUnusedGuides = true,
            SoM = 1,
            anchorOrientation = "top",
            enableUnitscan = true,
            enableTargetMacro = true,
            notifyOnTargetUpdates = true,

            -- Sliders
            arrowScale = 1,
            arrowText = 9,
            windowScale = 1,
            numMapPins = 7,
            worldMapPinScale = 1,
            distanceBetweenPins = 1,
            worldMapPinBackgroundOpacity = 0.35,
            batchSize = 5,
            phase = 6,
            xpRate = 1,
            guideFontSize = 9,

            showEnabled = true
        }
    }

    self.db = LibStub("AceDB-3.0"):New("RXPCSettings", settingsDBDefaults)

    self.db.RegisterCallback(self, "OnProfileChanged", "RefreshProfile")
    self.db.RegisterCallback(self, "OnProfileCopied", "RefreshProfile")
    self.db.RegisterCallback(self, "OnProfileReset", "RefreshProfile")

    self:CreateAceOptionsPanel()
    self.CreateImportOptionsPanel()
    self:MigrateSettings()
    self:UpdateMinimapButton()

    self:RegisterChatCommand("rxp", self.ChatCommand)
    self:RegisterChatCommand("rxpg", self.ChatCommand)
    self:RegisterChatCommand("rxpguides", self.ChatCommand)
end

function addon.settings:MigrateSettings()
    if not RXPData or not RXPCData then return end

    local d = addon.settings.db.profile.debug
    local db = addon.settings.db.profile
    local pp = addon.comms.PrettyPrint
    local function n(t, v)
        if d then pp(fmt("Migrating %s = %s", t, tostr(v))) end
    end

    db.minimap.show = nil

    if RXPData.disableQuestAutomation ~= nil then
        n("disableQuestAutomation", RXPData.disableQuestAutomation)
        db.enableQuestAutomation = not RXPData.disableQuestAutomation
        RXPData.disableQuestAutomation = nil
    end

    if RXPData.disableTrainerAutomation ~= nil then
        n("disableTrainerAutomation", RXPData.disableTrainerAutomation)
        db.enableTrainerAutomation = not RXPData.disableTrainerAutomation
        RXPData.disableTrainerAutomation = nil
    end

    if RXPData.disableFPAutomation ~= nil then
        n("disableFPAutomation", RXPData.disableFPAutomation)
        db.enableFPAutomation = not RXPData.disableFPAutomation
        RXPData.disableFPAutomation = nil
    end

    if RXPData.hideMiniMapPins ~= nil then
        n("hideMiniMapPins", RXPData.hideMiniMapPins)
        db.hideMiniMapPins = RXPData.hideMiniMapPins
        RXPData.hideMiniMapPins = nil
    end

    if RXPData.hideUnusedGuides ~= nil then
        n("hideUnusedGuides", RXPData.hideUnusedGuides)
        db.showUnusedGuides = not RXPData.hideUnusedGuides
        RXPData.hideUnusedGuides = nil
    end

    -- TODO autoLoadGuides -> autoLoadStartingGuides

    if RXPCData.disableArrow ~= nil then
        n("disableArrow", RXPCData.disableArrow)
        db.disableArrow = RXPCData.disableArrow
        RXPCData.disableArrow = nil
    end

    if RXPCData.disableItemWindow ~= nil then
        n("disableItemWindow", RXPCData.disableItemWindow)
        db.disableItemWindow = RXPCData.disableItemWindow
        RXPCData.disableItemWindow = nil
    end

    if RXPCData.hideWindow ~= nil then
        n("hideWindow", RXPCData.hideWindow)
        db.hideGuideWindow = RXPCData.hideWindow
        RXPCData.hideWindow = nil
    end

    if RXPData.lockFrames ~= nil then
        n("lockFrames", RXPData.lockFrames)
        db.lockFrames = RXPData.lockFrames
        RXPData.lockFrames = nil
    end

    if RXPCData.frameHeight ~= nil then
        n("frameHeight", RXPCData.frameHeight)
        db.frameHeight = RXPCData.frameHeight
        RXPCData.frameHeight = nil
    end

    if RXPData.mapCircle ~= nil then
        n("mapCircle", RXPData.mapCircle)
        db.mapCircle = RXPData.mapCircle
        RXPData.mapCircle = nil
    end

    if RXPData.disableUnitscan ~= nil then
        n("disableUnitscan", RXPData.disableUnitscan)
        db.enableUnitscan = not RXPData.disableUnitscan
        RXPData.disableUnitscan = nil
    end

    if RXPCData.hardcore ~= nil then
        n("hardcore", RXPCData.hardcore)
        db.hardcore = RXPCData.hardcore
        RXPCData.hardcore = nil
    end

    if RXPCData.northrendLM ~= nil then
        n("northrendLM", RXPCData.northrendLM)
        db.northrendLM = RXPCData.northrendLM
        RXPCData.northrendLM = nil
    end

    if RXPData.arrowSize ~= nil then
        n("arrowSize", RXPData.arrowSize)
        db.arrowScale = RXPData.arrowSize
        RXPData.arrowSize = nil
    end

    if RXPData.arrowText ~= nil then
        n("arrowText", RXPData.arrowText)
        db.arrowText = RXPData.arrowText
        RXPData.arrowText = nil
    end

    if RXPData.windowSize ~= nil then
        n("windowSize", RXPData.windowSize)
        db.windowScale = RXPData.windowSize
        RXPData.windowSize = nil
    end

    if RXPData.numMapPins ~= nil then
        n("numMapPins", RXPData.numMapPins)
        db.numMapPins = RXPData.numMapPins
        RXPData.numMapPins = nil
    end

    if RXPData.worldMapPinScale ~= nil then
        n("worldMapPinScale", RXPData.worldMapPinScale)
        db.worldMapPinScale = RXPData.worldMapPinScale
        RXPData.worldMapPinScale = nil
    end

    if RXPData.distanceBetweenPins ~= nil then
        n("distanceBetweenPins", RXPData.distanceBetweenPins)
        db.distanceBetweenPins = RXPData.distanceBetweenPins
        RXPData.distanceBetweenPins = nil
    end

    if RXPData.worldMapPinBackgroundOpacity ~= nil then
        n("worldMapPinBackgroundOpacity", RXPData.worldMapPinBackgroundOpacity)
        db.worldMapPinBackgroundOpacity = RXPData.worldMapPinBackgroundOpacity
        RXPData.worldMapPinBackgroundOpacity = nil
    end

    if RXPData.anchorOrientation ~= nil then
        n("anchorOrientation", RXPData.anchorOrientation)
        db.anchorOrientation = RXPData.anchorOrientation == 1 and "top" or
                                   "bottom"
        RXPData.anchorOrientation = nil
    end

    if RXPCData.xprate ~= nil then
        n("xprate", RXPCData.xprate)
        db.xprate = RXPCData.xprate
        RXPCData.xprate = nil
    end
end

local function GetProfileOption(info)
    return addon.settings.db.profile[info[#info]]
end

local function SetProfileOption(info, value)
    addon.settings.db.profile[info[#info]] = value
end

function addon.settings.ImportBoxValidate()

    local guidesLoaded, errorMsg = addon.RXPG.ImportString(importString,
                                                           addon.RXPFrame)
    if guidesLoaded then
        addon.settings.gui.selectedDeleteGuide = "mustReload"
        return true
    else
        local relog = ""
        if not RXPData.cache then
            relog = "\n" .. L("Please restart your game client and try again")
        end
        importFrame.textFrame:SetScript('OnUpdate', ProcessBuffer)
        return errorMsg or
                   (L("Failed to Import Guides: Invalid Import String") .. relog)
    end
end

function addon.settings.GetImportedGuides()
    local display = {empty = ""}
    local importedGuidesFound = false

    if addon.settings.gui.selectedDeleteGuide == "mustReload" then
        return {mustReload = L("Must reload UI")}
    end

    for _, guide in ipairs(addon.guides) do
        if guide.imported or guide.cache then
            importedGuidesFound = true
            local group, subgroup, name = guide.key:match("^(.*)|(.*)|(.*)")
            if subgroup ~= "" then group = group .. "/" .. subgroup end
            display[guide.key] = string.format("%s/%s - version %s", group,
                                               name, guide.version)
        end
    end

    table.sort(display)

    if importedGuidesFound then
        return display
    else
        addon.settings.gui.selectedDeleteGuide = "none"
        return {none = "none"}
    end

end

function addon.settings.CreateImportOptionsPanel()
    local importOptionsTable = {
        type = "group",
        name = "RestedXP " .. L("Guide Import"),
        handler = addon.settings,
        args = {
            buffer = { -- Buffer hacked in right-aligned icon
                order = 1,
                name = L("Paste encoded strings"),
                type = "description",
                width = "full",
                fontSize = "medium"

            },
            importBox = {
                order = 10,
                type = 'input',
                name = L('Guides to import'),
                width = "full",
                multiline = 5,
                validate = function(_, val)
                    return addon.settings.ImportBoxValidate(val)
                end,
                disabled = function() return addon.loading end
            },
            currentGuides = {
                order = 11,
                type = 'select',
                style = 'dropdown',
                name = L("Currently loaded imported guides"),
                width = 'full',
                values = function()
                    return addon.settings.GetImportedGuides()
                end,
                disabled = function()
                    return addon.settings.gui.selectedDeleteGuide ==
                               "mustReload" or
                               addon.settings.gui.selectedDeleteGuide == "none" or
                               not addon.settings.gui.selectedDeleteGuide
                end,
                get = function()
                    return addon.settings.gui.selectedDeleteGuide
                end,
                set = function(_, value)
                    addon.settings.gui.selectedDeleteGuide = value
                end
            },
            deleteSelectedGuide = {
                order = 12,
                type = 'execute',
                name = L("Delete imported guide"),
                confirm = function(_, key)
                    if not addon.settings.gui.selectedDeleteGuide or
                        addon.settings.gui.selectedDeleteGuide == "none" then
                        return false
                    end
                    return string.format(L("Remove") .. "%s?",
                                         addon.settings.gui.selectedDeleteGuide)
                end,
                disabled = function()
                    return addon.settings.gui.selectedDeleteGuide ==
                               "mustReload" or
                               addon.settings.gui.selectedDeleteGuide == "none" or
                               not addon.settings.gui.selectedDeleteGuide
                end,
                func = function(_)
                    if addon.db.profile.guides[addon.settings.gui
                        .selectedDeleteGuide] then
                        addon.db.profile.guides[addon.settings.gui
                            .selectedDeleteGuide] = nil
                    end

                    addon.settings.gui.selectedDeleteGuide = "mustReload"
                end
            },
            purge = {
                order = 13,
                type = 'execute',
                name = L("Purge All Data"),
                confirm = function(_, key)
                    return L(
                               "This action will remove ALL guides from the database\nAre you sure?")
                end,
                disabled = function()
                    return addon.settings.gui.selectedDeleteGuide ==
                               "mustReload"
                end,
                func = function(_)
                    addon.db.profile.guides = {}
                    addon.settings.gui.selectedDeleteGuide = "mustReload"
                end
            },
            reloadGuides = {
                order = 14,
                name = L("Reload guides and UI"),
                type = 'execute',
                func = function() _G.ReloadUI() end,
                disabled = function()
                    return addon.settings.gui.selectedDeleteGuide ~=
                               "mustReload"
                end
            }
        }
    }

    AceConfig:RegisterOptionsTable(addon.title .. "/Import", importOptionsTable)

    addon.settings.gui.import = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    addon.title .. "/Import", L("Import"),
                                    addon.title)

    -- Ace3 ConfigDialog doesn't support embedding icons in header
    -- Directly references Ace3 built frame object
    -- Hackery ahead

    importFrame = addon.settings.gui.import.obj.frame
    importFrame.icon = importFrame:CreateTexture()
    importFrame.icon:SetTexture("Interface\\AddOns\\" .. addonName ..
                                    "\\Textures\\rxp_logo-64")
    importFrame.icon:SetPoint("TOPRIGHT", -5, -5)

    importFrame.text = importFrame:CreateFontString(nil, "OVERLAY")
    importFrame.text:ClearAllPoints()
    importFrame.text:SetPoint("CENTER", importFrame, 1, 1)
    importFrame.text:SetJustifyH("LEFT")
    importFrame.text:SetJustifyV("CENTER")
    importFrame.text:SetTextColor(1, 1, 1)
    importFrame.text:SetFont(addon.font, 14, "")
    importFrame.text:SetText("")
    addon.RXPG.LoadText = importFrame.text

    local function EditBoxHook(self)
        if importFrame:IsShown() then
            self.isMaxBytesSet = true
            self:SetMaxBytes(1)
        elseif self.isMaxBytesSet then
            self.isMaxBytesSet = false
            self:SetMaxBytes(0)
        end
    end

    function ProcessBuffer(self)
        self:SetScript('OnUpdate', nil)
        self = importFrame.textFrame
        if #buffer > 16 then
            importString = table.concat(buffer)
            self:ClearHistory()
            self:SetMaxBytes(0)
            self:Insert(importString:sub(1, 500))
            self:ClearFocus()
            buffer = {}
        else
            -- self:ClearHistory()
            self:SetText(" ")
            self:SetMaxBytes(1)
        end
    end

    local function PasteHook(self, char)
        if not importFrame:IsShown() then return end

        local time = GetTime()
        if previousFrame ~= time then
            previousFrame = time
            importFrame.textFrame = self
            importFrame:SetScript('OnUpdate', ProcessBuffer)
        end

        table.insert(buffer, char)
    end

    local isHooked = {}

    importFrame:HookScript("OnShow", function(self)
        local n = 1
        local editBox = true

        while editBox do
            -- editBox = _G["AceGUI-3.0EditBox" .. n]
            editBox = _G["MultiLineEditBox" .. n .. "ScrollFrame"]
            if not isHooked[n] and editBox then
                editBox = editBox.obj.editBox
                isHooked[n] = true
                editBox:HookScript("OnEditFocusGained", EditBoxHook)
                editBox:HookScript("OnChar", PasteHook)
            end
            n = n + 1
        end
    end)

end

function addon.settings:CreateAceOptionsPanel()
    local function isNotAdvanced()
        return not self.db.profile.enableBetaFeatures
    end

    local function requiresReload()
        return L("This requires a reload to take effect, continue?")
    end

    local optionsWidth = 1.08

    local optionsTable = {
        type = "group",
        name = fmt("%s - %s", addon.title, addon.versionText),
        get = GetProfileOption,
        set = SetProfileOption,
        childGroups = "tab",
        args = {
            discordButton = {
                order = 1.0,
                name = L("Join Discord"), -- TODO locale
                type = "execute",
                width = "normal",
                func = function()
                    addon.url = "https://discord.gg/restedxp"
                    _G.StaticPopup_Show("RXP_Link")
                    addon.url = nil
                end
            },
            feedbackButton = {
                order = 1.1,
                name = L("Open Feedback Form"),
                type = "execute",
                width = "normal",
                func = addon.comms.OpenBugReport
            },
            generalSettings = {
                type = "group",
                name = _G.GENERAL,
                order = 2,
                args = {
                    guideHeader = {
                        name = _G.GUIDE,
                        type = "header",
                        width = "full",
                        order = 1.1
                    },
                    showUnusedGuides = {
                        name = L("Show unused guides"),
                        desc = L(
                            "Displays guides that are not applicable for your class/race such as starting zones for other races"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()
                        end
                    },
                    autoLoadStartingGuides = {
                        name = L("Auto load starting zone guides"),
                        desc = L(
                            "Automatically picks a suitable guide whenever you log in for the first time on a character"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.3,
                        hidden = true, -- TODO, Impossible situation with character-specific settings
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()
                        end
                    },
                    lockFrames = {
                        name = L("Lock Frames"),
                        desc = L(
                            "Disable dragging/resizing, use alt+left click on the main window to resize it"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.5
                    },
                    showStepList = { -- Not actually a direct setting, indirectly frameHeight
                        name = L("Show step list"),
                        desc = L(
                            "Show/Hide the bottom frame listing all the steps of the current guide"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.6,
                        get = function()
                            return addon.RXPFrame.BottomFrame:GetHeight() >= 35
                        end,
                        set = function(info, value)
                            if addon.currentGuide and
                                addon.currentGuide.hidewindow then
                                return
                            end

                            if value then
                                addon.RXPFrame:SetHeight(addon.height)
                                addon.settings.db.profile.frameHeight =
                                    addon.height
                            else
                                addon.RXPFrame:SetHeight(10)
                                addon.settings.db.profile.frameHeight = 10
                            end
                            addon.updateBottomFrame = true
                        end
                    },
                    hideCompletedSteps = {
                        name = L("Hide completed steps"),
                        desc = L(
                            "Only shows current and future steps on the step list window"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.7,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.ScrollFrame.ScrollBar:SetValue(0)
                        end
                    },
                    skipMissingPreReqs = {
                        name = L("Skip quests with missing pre-requisites"),
                        desc = L(
                            "Automatically skip tasks in which you don't have the required quest pre-requisites\n(Requires Questie)"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.8,
                        hidden = true or not _G.QuestieLoader, -- Not used
                        disabled = true -- Not used
                    },
                    anchorOrientation = {
                        name = L("Current step frame anchor"),
                        desc = L(
                            "Sets the current step frame to grow from bottom to top or top to bottom"),
                        type = "select",
                        values = {top = "Top", bottom = "Bottom"},
                        sorting = {"top", "bottom"},
                        width = optionsWidth,
                        order = 1.9,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.SetStepFrameAnchor()
                        end
                    },
                    northrendLM = {
                        name = L("Northrend Loremaster"),
                        desc = L(
                            "Adjust the routes to include almost every quest in the Northrend zones"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.90,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.ReloadGuide()
                        end,
                        hidden = addon.gameVersion < 30000
                    },
                    hideInRaid = {
                        name = L("Autohide in Raids"), -- TODO locale
                        desc = L(
                            "Automatically hide when in a raid, and unhide when you leave a raid"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.91,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                addon:RegisterEvent("GROUP_JOINED",
                                                    addon.HideInRaid)
                                addon:RegisterEvent("GROUP_FORMED",
                                                    addon.HideInRaid)
                                addon:RegisterEvent("GROUP_LEFT")

                                -- Check if reloading in raid
                                addon.HideInRaid()
                            else
                                addon:UnregisterEvent("GROUP_JOINED")
                                addon:UnregisterEvent("GROUP_FORMED")
                                addon:UnregisterEvent("GROUP_LEFT")
                            end
                        end
                    },
                    interfaceHeader = {
                        name = _G.UIOPTIONS_MENU,
                        type = "header",
                        width = "full",
                        order = 2
                    },
                    hideGuideWindow = {
                        name = L("Hide Window"),
                        desc = L("Hides the main window"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame:SetShown(not value)
                        end
                    },
                    disableItemWindow = {
                        name = L("Hide Active Item window"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateItemFrame()
                        end
                    },
                    windowScale = {
                        name = L("Window Scale"),
                        desc = L(
                            "Scale of the Main Window, use alt+left click on the main window to resize it"),
                        type = "range",
                        width = optionsWidth,
                        order = 2.3,
                        min = 0.2,
                        max = 2,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame:SetScale(value)
                        end
                    },
                    guideFontSize = {
                        name = L("Guide Font Size"), -- TODO locale
                        desc = L("Change font size of the Guide Window"),
                        type = "range",
                        width = optionsWidth,
                        order = 2.4,
                        min = 9,
                        max = 18,
                        step = 1,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end
                    },
                    automationHeader = {
                        name = L("Automation"), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 3.1
                    },
                    enableQuestAutomation = {
                        name = L("Quest auto accept/turn in"),
                        desc = L(
                            "Holding the Control key modifier also toggles the quest auto accept feature on and off"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.2
                    },
                    enableTrainerAutomation = {
                        name = L("Trainer automation"),
                        desc = L(
                            "Allows the guide to buy useful leveling spells automatically"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.3
                    },
                    enableFPAutomation = {
                        name = L("Flight Path automation"),
                        desc = L(
                            "Allows the guide to automatically fly you to your destination"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.4
                    },
                    enableBindAutomation = {
                        name = L("Inkeeper Bind automation"), -- TODO locale
                        desc = L(
                            "Allows the guide to automatically set your home at an Innkeeper"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.5
                    },
                    enableGossipAutomation = {
                        name = L("Skip Gossip"), -- TODO locale
                        desc = L(
                            "Allows the guide to automatically skip gossip for NPCs"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.6
                    },
                    mapHeader = {
                        name = _G.MAP_OPTIONS_TEXT,
                        type = "header",
                        width = "full",
                        order = 4.1
                    },
                    hideMiniMapPins = {
                        name = L("Hide Mini Map Pins"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    mapCircle = {
                        name = L("Highlight active map pins"),
                        desc = L(
                            "Show a targeting circle around active map pins"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.3,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    enableMinimapButton = {
                        name = L("Enable Minimap Button"),
                        desc = L("Add main options menu to minimap"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.4,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                LibDBIcon:Show(addonName)
                            else
                                LibDBIcon:Hide(addonName)
                            end
                        end
                    },
                    numMapPins = {
                        name = L("Number of Map Pins"),
                        desc = L("Number of map pins shown on the world map"),
                        type = "range",
                        width = optionsWidth,
                        order = 4.5,
                        min = 1,
                        max = 20,
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    worldMapPinScale = {
                        name = L("Map Pin Scale"),
                        desc = L("Adjusts the size of the world map pins"),
                        type = "range",
                        width = optionsWidth,
                        order = 4.6,
                        min = 0.05,
                        max = 1,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    distanceBetweenPins = {
                        name = L("Distance Between Pins"),
                        desc = L(
                            "If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group."),
                        type = "range",
                        width = optionsWidth,
                        order = 4.7,
                        min = 0.05,
                        max = 2,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    worldMapPinBackgroundOpacity = {
                        name = L("Map Pin Background Opacity"),
                        desc = L(
                            "The opacity of the black circles on the map and mini map"),
                        type = "range",
                        width = optionsWidth,
                        order = 4.8,
                        min = 0,
                        max = 1,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    arrowHeader = {
                        name = L("Waypoint Arrow"), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 5
                    },
                    disableArrow = {
                        name = L("Hide waypoint arrow"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 5.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateArrow(addon.arrowFrame)
                        end
                    },
                    arrowScale = {
                        name = L("Arrow Scale"),
                        desc = L("Scale of the Waypoint Arrow"),
                        type = "range",
                        width = optionsWidth,
                        order = 5.2,
                        min = 0.2,
                        max = 2,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.arrowFrame:SetSize(32 * value, 32 * value)
                        end
                    },
                    arrowText = {
                        name = L("Arrow Text Size"),
                        desc = L("Size of the waypoint arrow text"),
                        type = "range",
                        width = optionsWidth,
                        order = 5.3,
                        min = 5,
                        max = 20,
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.arrowFrame.text:SetFont(addon.font, value,
                                                          "OUTLINE")
                        end
                    },
                    resetArrowPosition = {
                        order = 5.4,
                        name = L("Reset Arrow Position"), -- TODO locale
                        type = "execute",
                        width = optionsWidth,
                        func = function()
                            addon.ResetArrowPosition()
                        end
                    },
                    macroHeader = {
                        name = fmt("%s%s", L("Targeting Macro"),
                                   addon.targeting:CanCreateMacro() and '' or
                                       ' - ' .. L("Macro capacity reached")), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 6
                    },
                    enableTargetMacro = {
                        name = L("Create Targeting Macro"), -- TODO locale
                        desc = L("Automatically create a targeting macro"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 6.1,
                        disabled = (_G.unitscan_targets and true) or
                            not addon.targeting:CanCreateMacro()
                    },
                    notifyOnTargetUpdates = {
                        name = L("Notify on new target"), -- TODO locale
                        desc = L("Notify when a new target is loaded"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 6.2,
                        disabled = (_G.unitscan_targets and true) or
                            not addon.targeting:CanCreateMacro()
                    }
                }
            },
            levelTrackerFeatures = {
                type = "group",
                name = L("Leveling Tracker"),
                order = 3,
                args = {
                    enableTracker = {
                        name = L("Enable Leveling Tracker"),
                        type = "toggle",
                        width = "full",
                        order = 1,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end
                    },
                    openTrackerReportOnCharOpen = {
                        name = L(
                            "Always Open Leveling Report With Character Panel"),
                        desc = L(
                            "Enables the RestedXP Leveling Report when you open your character panel"),
                        type = "toggle",
                        width = "full",
                        order = 1.1,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end
                    },
                    enableLevelingReportInspections = {
                        name = L("Enable Leveling Report Inspections") ..
                            " (Beta)",
                        desc = L(
                            "Send or receive inspection requests for other Leveling Reports"),
                        type = "toggle",
                        width = "full",
                        order = 1.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:SetupInspections()
                        end,
                        disabled = function()
                            return not addon.settings.db.profile.enableTracker
                        end,
                        hidden = isNotAdvanced
                    },
                    splitsOptionsHeader = {
                        name = L("Level Splits"),
                        type = "header",
                        width = "full",
                        order = 2
                    },
                    enablelevelSplits = {
                        name = L("Enable Level Splits"),
                        type = "toggle",
                        width = "normal",
                        order = 2.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                addon.tracker:CreateLevelSplits()
                                addon.tracker.levelSplits:Show()
                            else
                                addon.tracker.levelSplits:Hide()
                            end
                        end,
                        disabled = function()
                            return not addon.settings.db.profile.enableTracker
                        end
                    },
                    compareNextLevelSplit = {
                        name = L("Compare Next Level"),
                        desc = L("When comparing, show next level's time"),
                        type = "toggle",
                        width = "normal",
                        order = 2.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function()
                            return not addon.settings.db.profile.enableTracker
                        end
                    },
                    hideSplitsBackground = {
                        name = L("Hide Splits Background"),
                        desc = L("Make background transparent"),
                        type = "toggle",
                        width = "normal",
                        order = 2.3,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:RenderSplitsBackground()
                        end,
                        disabled = function()
                            return not addon.settings.db.profile.enableTracker
                        end
                    },
                    levelSplitsHistory = {
                        name = L("Level Splits History"),
                        desc = L("Historical levels to show"),
                        type = "range",
                        width = "normal",
                        order = 2.4,
                        min = 1,
                        max = GetMaxPlayerLevel(),
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function()
                            return not addon.settings.db.profile
                                       .enablelevelSplits
                        end
                    },
                    levelSplitsFontSize = {
                        name = L("Level Splits Font Size"),
                        type = "range",
                        width = "normal",
                        order = 2.5,
                        min = 9,
                        max = 17, -- Formatting gets wonky >=18
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function()
                            return not addon.settings.db.profile
                                       .enablelevelSplits
                        end
                    },
                    levelSplitsOpacity = {
                        name = L("Level Splits Opacity"),
                        desc = L(
                            "Lower number to make Level Splits more transparent"),
                        type = "range",
                        width = "normal",
                        order = 2.6,
                        min = 0.1,
                        max = 1,
                        step = 0.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function()
                            return not addon.settings.db.profile
                                       .enablelevelSplits
                        end
                    }
                }
            },
            communications = {
                type = "group",
                name = L("Communications"),
                order = 4,
                args = {
                    commsLevelUpOptionsHeader = {
                        name = L("Announcements"),
                        type = "header",
                        width = "full",
                        order = 1
                    },
                    enableLevelUpAnnounceSolo = {
                        name = L("Announce Level Ups (Emote)"),
                        desc = L("Make a public emote when you level up"),
                        type = "toggle",
                        width = "full",
                        order = 6
                    },
                    enableLevelUpAnnounceGroup = {
                        name = L("Announce Level Ups (Party Chat)"),
                        desc = L("Announce in party chat when you level up"),
                        type = "toggle",
                        width = "full",
                        order = 7
                    },
                    enableLevelUpAnnounceGuild = {
                        name = L("Announce Level Ups (Guild Chat)"),
                        desc = L("Announce in guild chat when you level up"),
                        type = "toggle",
                        width = "full",
                        order = 8
                    },
                    groupCoordinationHeader = {
                        name = L("Group coordination"),
                        type = "header",
                        width = "full",
                        order = 9
                    },
                    alwaysSendBranded = {
                        name = L(
                            "Send announcements without another RXP user in group"),
                        desc = L(
                            "Without this checked we will only send announcements if another RestedXP User is in your group"),
                        type = "toggle",
                        width = "full",
                        order = 10
                    },
                    enableCompleteStepAnnouncements = {
                        name = L("Announce when Quest Step is completed"),
                        desc = L(
                            "Announce in party chat when you complete certain quests (.complete)"),
                        type = "toggle",
                        width = "full",
                        order = 11
                    },
                    enableCollectStepAnnouncements = {
                        name = L("Announce when all Step items are collected"),
                        desc = L(
                            "Announce in party chat when you collect all the items relevant to a quest (.collect)"),
                        type = "toggle",
                        width = "full",
                        order = 12
                    },
                    enableFlyStepAnnouncements = {
                        name = L("Announce Flying Step timers"),
                        desc = L(
                            "Announce in party chat where you're flying and how long until you arrive"),
                        type = "toggle",
                        width = "full",
                        order = 13
                    },
                    checkVersions = {
                        name = L("Enable Addon Version Checks"),
                        desc = L(
                            "Advertises and compares addon versions with all RXP users in party"),
                        type = "toggle",
                        width = "full",
                        order = 14
                    },
                    ignoreQuestieConflicts = {
                        name = L("Ignore Questie announcements"),
                        desc = L(
                            "Send quest and collect step announcements even if Questie is enabled"),
                        type = "toggle",
                        width = "full",
                        order = 15,
                        hidden = not _G.Questie
                    }
                }
            },
            helpPanel = {
                type = "group",
                name = _G.HELP_LABEL,
                order = 9,
                args = {}
            },
            advancedSettings = {
                type = "group",
                name = L("Advanced Settings"),
                order = 10,
                args = {
                    enableBetaFeatures = {
                        name = L("Enable Beta Features"),
                        desc = L(
                            "Enables new features, forces reload to take effect"),
                        type = "toggle",
                        width = "full",
                        order = 1,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end
                    },
                    debug = {
                        name = L("Enable Debug"),
                        type = "toggle",
                        width = "full",
                        order = 1.1
                    },
                    batchSize = {
                        name = L("Batching window size (ms)"),
                        desc = L(
                            "Adjusts the batching window tolerance, used for hearthstone batching"),
                        type = "range",
                        width = "normal",
                        order = 2.1,
                        min = 1,
                        max = 100,
                        step = 1
                    },
                    phase = {
                        name = L("Content phase"),
                        desc = L(
                            "Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests"),
                        type = "range",
                        width = "normal",
                        order = 2.2,
                        min = 1,
                        max = 6,
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.ReloadGuide()
                            addon.RXPFrame.GenerateMenuTable()
                        end,
                        hidden = addon.game ~= "CLASSIC"
                    },
                    xprate = {
                        name = L("Experience rates"),
                        desc = L(
                            "Adjusts the guide routes to match increased xp rate bonuses"),
                        type = "range",
                        width = "normal",
                        order = 2.2,
                        min = 1,
                        max = 1.5,
                        step = 0.5,
                        confirm = function()
                            return L(
                                       "Notice: Changing experience rates beyond 1x may cause some chapters to become hidden and certain steps may automatically skip as you out level them") -- TODO locale
                        end,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.ReloadGuide()
                            addon.RXPFrame.GenerateMenuTable()
                            addon.settings.db.profile.xpRateOverriden = true
                        end,
                        hidden = addon.gameVersion < 30000 or addon.gameVersion >
                            40000
                    },
                    enableUnitscan = {
                        name = L("Unitscan integration"),
                        desc = L(
                            "Automatically adds important npcs to your unitscan list"),
                        type = "toggle",
                        width = "normal",
                        order = 3,
                        hidden = not _G.unitscan_targets
                    },
                    hardcore = {
                        name = L("Hardcore mode"),
                        desc = L(
                            "Adjust the leveling routes to the deathless ruleset"),
                        type = "toggle",
                        width = "normal",
                        order = 4,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RenderFrame()
                        end,
                        hidden = addon.game ~= "CLASSIC"
                    },
                    SoM = {
                        name = L("Season of Mastery"),
                        desc = L(
                            "Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)"),
                        type = "toggle",
                        width = "normal",
                        order = 5,
                        set = function(info, value)
                            addon.settings.db.profile.xpRateOverriden = true
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()
                            addon.ReloadGuide()
                        end,
                        hidden = addon.game ~= "CLASSIC"
                    }
                }
            }
        }
    }

    -- Build FAQ items
    local faqBatch = 2
    for q, a in pairs(addon.help) do
        optionsTable.args.helpPanel.args[faqBatch .. "q"] = {
            order = faqBatch + 0.1,
            name = q,
            type = "header",
            width = "full"
        }

        optionsTable.args.helpPanel.args[faqBatch .. "a"] = {
            order = faqBatch + 0.2,
            name = a,
            type = "description",
            width = "full",
            fontSize = "medium"
        }
        faqBatch = faqBatch + 1
    end

    AceConfig:RegisterOptionsTable(addon.title, optionsTable)

    if addon.settings.db.profile.enableBetaFeatures then
        optionsTable.args.profiles =
            LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
        optionsTable.args.profiles.order = 20
    end

    addon.RXPOptions = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                           addon.title)

    -- Ace3 ConfigDialog doesn't support embedding icons in header
    -- Directly references Ace3 built frame object
    -- Hackery ahead

    local f = addon.RXPOptions.obj.frame
    f.icon = f:CreateTexture()
    f.icon:SetTexture("Interface\\AddOns\\" .. addonName ..
                          "\\Textures\\rxp_logo-64")
    f.icon:SetPoint("TOPRIGHT", -5, -5)

end

local function buildMinimapMenu()
    local menu = {}
    addon.RXPFrame.GenerateMenuTable(menu)

    table.insert(menu, #menu, {
        text = addon.settings.db.profile.showEnabled and _G.HIDE or _G.SHOW,
        notCheckable = 1,
        func = addon.settings.ToggleActive
    })

    return menu
end

function addon.settings:UpdateMinimapButton()
    if not addon.settings.db.profile.enableMinimapButton then return end

    if not addon.settings.minimapFrame then
        addon.settings.minimapFrame = CreateFrame("Frame", "RXP_MMMenuFrame",
                                                  UIParent,
                                                  "UIDropDownMenuTemplate")
    end

    local minimapButton = LibDataBroker:NewDataObject(addonName, {
        type = "data source",
        label = addonName,
        icon = "Interface/AddOns/" .. addonName .. "/Textures/rxp_logo-64",
        tocname = addonName,
        OnClick = function(_, button)
            if button == "RightButton" then
                _G.EasyMenu(buildMinimapMenu(), addon.settings.minimapFrame,
                            "cursor", 0, 0, "MENU")
            else
                addon.settings.ToggleActive()
            end
        end,
        OnTooltipShow = function(tooltip)
            tooltip:AddLine(addon.title)
            tooltip:AddLine("|cff909090Left Click: |cffffcc00Toggle Guide|r")
            tooltip:AddLine("|cff909090Right Click: |cffffcc00Show Menu|r")
        end
    })

    LibDBIcon:Register(addonName, minimapButton, self.db.profile.minimap);
end

function addon.settings.ToggleActive()
    addon.settings.db.profile.showEnabled =
        not addon.settings.db.profile.showEnabled

    for _, frame in pairs(addon.enabledFrames) do
        if frame.IsFeatureEnabled() then
            frame:SetShown(addon.settings.db.profile.showEnabled)
        end
    end

end

function addon.settings:DetectXPRate(heirloomCheck)
    if addon.settings.db.profile.xpRateOverriden then return end

    local UnitBuff = UnitBuff

    local function CheckBuff(buffId)
        local id

        for i = 1, 40 do
            id = select(10, UnitBuff("player", i))
            if not id then return false end

            if id == buffId then return true end
        end
    end

    if addon.gameVersion < 20000 then
        addon.settings.db.profile.SoM = CheckBuff(362859) -- SoM
    elseif addon.gameVersion < 40000 then
        if CheckBuff(377749) then -- Joyous Journeys
            addon.settings.db.profile.xprate = 1.5
        else -- Reset to 1 after buff goes away for Wrath
            addon.settings.db.profile.xprate = 1
        end
    end

    -- TODO heirloomCheck for periodic checking
    if heirloomCheck then
        if addon.currentGuide and addon.currentGuide.name then
            addon:LoadGuide(addon.currentGuide, 'onLoad')
        else
            addon.ReloadGuide()
        end
    end

    addon.RXPFrame.GenerateMenuTable()
end

function addon.settings:RefreshProfile()
    if addon.currentGuide and addon.currentGuide.name then
        addon:LoadGuide(addon.currentGuide)
    else
        addon.ReloadGuide()
    end
    addon.updateMap = true
    addon.RXPFrame.GenerateMenuTable()
    addon.RXPFrame.SetStepFrameAnchor()
end
