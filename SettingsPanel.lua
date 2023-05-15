local addonName, addon = ...

local _G = _G

local AceConfig = LibStub("AceConfig-3.0")
local LibDBIcon = LibStub("LibDBIcon-1.0")
local LibDataBroker = LibStub("LibDataBroker-1.1")
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")

local fmt, tostr, next, GetTime = string.format, tostring, next, GetTime

local INV_HEIRLOOM = _G.Enum.ItemQuality.Heirloom

local importCache = {
    bufferString = "",
    displayString = "",
    bufferData = {},
    lastBuffer = 0,
    widget = nil,
    workerFrame = addon.RXPFrame,
    lastBNetQuery = GetTime()
}
local incompatibleAddons = {}

-- Alias addon.locale.Get
local L = addon.locale.Get

addon.settings = addon:NewModule("Settings", "AceConsole-3.0")

if not addon.settings.gui then
    addon.settings.gui = {selectedDeleteGuide = "", importStatusHistory = {}}
end

function addon.settings.ChatCommand(input)
    if not input then
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
    end

    input = input:trim()
    if input == "import" then
        -- addon.RXPOptions.expanded = true
        if _G.Settings and _G.Settings.GetCategory then
            _G.Settings.GetCategory(addon.RXPOptions.name).expanded = true;
            _G.Settings.OpenToCategory(addon.RXPOptions.name);
            -- Settings.OpenToCategory(addon.settings.gui.import); -- causes UI taint on 10.0
        else
            _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.import)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.import)
        end
    elseif input == "debug" then
        addon.settings.db.profile.debug = not addon.settings.db.profile.debug
    elseif input == "splits" then
        addon.tracker:ToggleLevelSplits()
    elseif input == "show" or input == "hide" or input == "toggle" then
        addon.settings.ToggleActive()
    elseif input == "bug" or input == "feedback" then
        addon.comms.OpenBugReport()
    elseif input == "help" then
        addon.comms.PrettyPrint(_G.HELP .. "\n" ..
                                    addon.help["What are command the line options?"])
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
            minimap = {minimapPos = 146},

            --
            enableQuestAutomation = true,
            enableFPAutomation = true,
            enableBindAutomation = true,
            enableGossipAutomation = true,
            showUnusedGuides = true,
            SoM = 1,
            anchorOrientation = "top",
            chromieTime = "auto",
            enableXpStepSkipping = true,
            enableAutomaticXpRate = true,
            autoLoadStartingGuides = true,

            -- Sliders
            arrowScale = 1,
            arrowText = 9,
            windowScale = 1,
            numMapPins = 7,
            worldMapPinScale = 1,
            distanceBetweenPins = 1,
            worldMapPinBackgroundOpacity = 0.35,
            batchSize = 6,
            phase = 6,
            xprate = 1,
            guideFontSize = 9,
            activeItemsScale = 1,

            showEnabled = true,

            -- Targeting
            enableTargetMacro = true,
            notifyOnTargetUpdates = true,
            enableTargetAutomation = true,
            enableFriendlyTargeting = true,
            enableTargetMarking = true,
            enableEnemyTargeting = true,
            enableEnemyMarking = true,
            enableMobMarking = true,
            showTargetingOnProximity = true,
            soundOnFind = 3175,
            soundOnFindChannel = 'Master',
            scanForRares = true,
            notifyOnRares = true,
            activeTargetScale = 1,

            enableAddonIncompatibilityCheck = true,

            -- Themes
            activeTheme = 'Default',
            customTheme = addon.customThemeBase,
            enableThemeLiveReload = true,

            -- Text colors
            textEnemyColor = addon.guideTextColors.default['RXP_ENEMY_'],
            textFriendlyColor = addon.guideTextColors.default['RXP_FRIENDLY_'],
            textLootColor = addon.guideTextColors.default['RXP_LOOT_'],
            textWarnColor = addon.guideTextColors.default['RXP_WARN_'],
            textPickColor = addon.guideTextColors.default['RXP_PICK_'],
            textBuyColor = addon.guideTextColors.default['RXP_BUY_'],

            -- Talents
            enableTalentGuides = true,
            activeTalentGuide = nil,
            previewTalents = true,
            hightlightTalentPlan = true,
            upcomingTalentCount = 5,

            enableTips = true,
            enableDrowningWarning = true,
            enableDrowningWarningSound = true,
            drowningThreshold = 0.2,
            enableDrowningScreenFlash = true,

            enableEmergencyActions = true,
            emergencyThreshold = 0.2,
            enableEmergencyIconAnimations = true,
            enableEmergencyScreenFlash = true,

            dungeons = {}
        }
    }

    self.db = LibStub("AceDB-3.0"):New("RXPCSettings", settingsDBDefaults)

    self.db.RegisterCallback(self, "OnProfileChanged", "RefreshProfile")
    self.db.RegisterCallback(self, "OnProfileCopied", "RefreshProfile")
    self.db.RegisterCallback(self, "OnProfileReset", "RefreshProfile")

    self:CreateAceOptionsPanel()
    self:CreateImportOptionsPanel()
    self:MigrateSettings()
    self:LoadTextColors()

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
    if RXPData.autoLoadGuides ~= nil then
        n("hideUnusedGuides", RXPData.autoLoadGuides)
        db.autoLoadStartingGuides = RXPData.autoLoadGuides
        RXPData.autoLoadGuides = nil
    end

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

function addon.settings:ProcessImportBox()
    if not importCache.workerFrame:IsShown() then
        importCache.workerFrame:Show()
    end

    if not addon.settings.db.profile.showEnabled then self.ToggleActive() end

    local guidesLoaded, errorMsg = addon.ImportString(importCache.bufferString,
                                                      importCache.workerFrame)
    if guidesLoaded and not errorMsg then
        self.gui.selectedDeleteGuide = ""
        return true
    else
        local relog = ""
        if not RXPData.cache then
            relog = "\n" .. L("Please restart your game client and try again")
        end

        return false, errorMsg or
                   (L("Failed to Import Guides: Invalid Import String") .. relog)
    end
end

function addon.settings.GetImportedGuides()
    local display = {[""] = ""}
    local importedGuidesFound = false

    for _, guide in pairs(addon.guides) do
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

function addon.settings:UpdateImportStatusHistory(data, ...)
    if type(data) == "table" then
        self.gui.importStatusHistory = data
    elseif type(data) == "string" then
        tinsert(self.gui.importStatusHistory, 1, fmt(data, ...))
    end

    AceConfigRegistry:NotifyChange(addon.title .. "/Import")
end

function addon.settings:CreateImportOptionsPanel()
    local function notOnline()
        if not RXPData.cache and GetTime() - importCache.lastBNetQuery > 5 then
            if addon.settings.db.profile.debug then
                addon.comms.PrettyPrint("Battle.net not cached, querying")
            end
            importCache.lastBNetQuery = GetTime()
            _, RXPData.cache = _G[addon.DeserializeTable(addon.base)]()
        end

        return not RXPData.cache
    end

    local importOptionsTable = {
        type = "group",
        name = fmt("RestedXP %s - %s", L("Guide Import"), addon.versionText),
        handler = self,
        args = {
            buffer = {
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
                get = function()
                    -- Prevent auto clearing on NotifyChange
                    return importCache.bufferString:sub(1, 500)
                end,
                validate = function()
                    local status, errorMsg = self:ProcessImportBox()
                    importCache.bufferString = ""
                    importCache.bufferData = {}

                    -- Gets disabled on paste, re-enable after processing completes
                    importCache.widget.obj.editBox:Enable()
                    if errorMsg then
                        self:UpdateImportStatusHistory(errorMsg)
                        return errorMsg
                    end
                    return status
                end,
                disabled = function() return notOnline() end
            },
            currentGuides = {
                order = 11,
                type = 'select',
                style = 'dropdown',
                name = L("Currently loaded imported guides"),
                width = 'full',
                values = function()
                    return self.GetImportedGuides()
                end,
                disabled = function()
                    return next(addon.db.profile.guides) == nil or
                               not self.gui.selectedDeleteGuide
                end,
                get = function()
                    return self.gui.selectedDeleteGuide
                end,
                set = function(_, value)
                    self.gui.selectedDeleteGuide = value
                end
            },
            deleteSelectedGuide = {
                order = 12,
                type = 'execute',
                name = L("Delete imported guide"),
                confirm = function()
                    if next(addon.db.profile.guides) == nil or
                        not self.gui.selectedDeleteGuide then
                        return false
                    end
                    return string.format(L("Remove") .. " %s?",
                                         self.gui.selectedDeleteGuide)
                end,
                disabled = function()
                    return next(addon.db.profile.guides) == nil or
                               not self.gui.selectedDeleteGuide or
                               self.gui.selectedDeleteGuide == "" or
                               self.gui.selectedDeleteGuide == "none"
                end,
                func = function()
                    if addon.RemoveGuide(self.gui.selectedDeleteGuide) then
                        addon.db.profile.guides[self.gui.selectedDeleteGuide] =
                            nil
                    end
                end
            },
            purgeAll = {
                order = 13,
                type = 'execute',
                name = L("Purge All Data"),
                confirm = function()
                    return L(
                               "This action will remove ALL guides from the database\nAre you sure?")
                end,
                disabled = function()
                    return next(addon.db.profile.guides) == nil
                end,
                func = function()
                    addon.db.profile.guides = {}
                    addon:CreateMetaDataTable(true)
                end
            },
            reloadUi = {
                order = 14,
                name = L("Reload guides and UI"),
                type = 'execute',
                func = function() _G.ReloadUI() end
            },
            loadStatusBox = {
                order = 90,
                name = _G.HISTORY,
                type = 'group',
                inline = true,
                hidden = function()
                    return next(self.gui.importStatusHistory) == nil
                end,
                args = {
                    loadHistory = {
                        order = 1,
                        name = function()
                            return table.concat(self.gui.importStatusHistory,
                                                '\n')
                        end,
                        type = "description",
                        width = "full",
                        fontSize = "medium"
                    }
                }
            },
            debugData = {
                order = 91,
                name = _G.BINDING_HEADER_DEBUG,
                type = "header",
                width = "full",
                hidden = function()
                    return not addon.settings.db.profile.debug
                end
            },
            battleNetID = {
                order = 91.1,
                name = function()
                    local _, bt = BNGetInfo()
                    return fmt("Battle.net ID: %s", bt or 'Offline')
                end,
                type = "description",
                width = "full",
                fontSize = "small",
                hidden = function()
                    return not addon.settings.db.profile.debug
                end
            }
        }
    }

    AceConfig:RegisterOptionsTable(addon.title .. "/Import", importOptionsTable)

    self.gui.import = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                          addon.title .. "/Import", L("Import"), addon.title)

    -- Ace3 ConfigDialog doesn't support embedding icons in header
    -- Directly references Ace3 built frame object

    local iconFrameParent = self.gui.import.obj.frame
    iconFrameParent.icon = iconFrameParent:CreateTexture()
    -- Theme load order, leave default settings branding unthemed
    iconFrameParent.icon:SetTexture("Interface/AddOns/" .. addonName ..
                                        "/Textures/rxp_logo-64")
    iconFrameParent.icon:SetPoint("TOPRIGHT", -5, -5)

    if notOnline() then
        self:UpdateImportStatusHistory(L(
                                           "Battle.net unreachable, please exit your client, restart Battle.net, and try again"))
    end

    local function EditBoxHook(this)
        if this:IsShown() then
            -- Prevent double paste input lag
            this:SetText("")
            this.isMaxBytesSet = true
            this:SetMaxBytes(1)
        elseif this.isMaxBytesSet then
            this.isMaxBytesSet = false
            this:SetMaxBytes(0)
        end
    end

    local function ProcessBuffer(this)
        this:SetScript('OnUpdate', nil)
        importCache.bufferString = table.concat(importCache.bufferData)
        this:SetMaxBytes(0)
        if #importCache.bufferString > 500 then
            addon.settings:UpdateImportStatusHistory(L(
                                                         "Loaded %d characters into import buffer, %d shown"),
                                                     #importCache.bufferString,
                                                     500)
        else
            addon.settings:UpdateImportStatusHistory(L(
                                                         "Loaded %d characters into import buffer"),
                                                     #importCache.bufferString)
        end
        this:ClearFocus()
        importCache.bufferData = {}
    end

    local function PasteHook(this, char)
        local time = GetTime()
        if this:IsEnabled() then
            -- Disable input while processing paste
            this:Disable()
        end
        if importCache.lastBuffer ~= time then
            importCache.lastBuffer = time
            this:SetScript('OnUpdate', ProcessBuffer)
        end

        tinsert(importCache.bufferData, char)
    end

    self.gui.import.obj.frame:HookScript("OnShow", function()
        -- Prevent hooking multiple times on show
        if importCache.widget then return end

        local n = 1
        local inputWidget = true

        while inputWidget do
            inputWidget = _G["MultiLineEditBox" .. n .. "ScrollFrame"]

            if inputWidget and inputWidget.obj.label:GetText() ==
                L('Guides to import') then
                importCache.widget = inputWidget
                inputWidget.obj.button:SetText(L("Import")) -- TODO locale
                local editBox = inputWidget.obj.editBox

                editBox:HookScript("OnEditFocusGained", EditBoxHook)
                editBox:HookScript("OnChar", PasteHook)
                -- Prevent Accept button from being disabled by programatic text update
                editBox:SetScript("OnTextSet", nil)
                break
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
    local settingsCache = {orphans = {}}

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
                    showEnabled = {
                        name = L("Show all Enabled Frames"),
                        desc = L("Toggles all addon frames on or off"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.1,
                        set = function(info, value)
                            self.ToggleActive()
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
                        order = 1.2
                    },
                    hideInRaid = {
                        name = L("Autohide in Raids"), -- TODO locale
                        desc = L(
                            "Automatically hide when in a raid, and unhide when you leave a raid"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.3,
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
                    enableAddonIncompatibilityCheck = {
                        name = L("Check for Addon Incompatibility"), -- TODO locale
                        desc = L(
                            "Check loaded addons for known compatibility issues with RXP"),
                        type = "toggle",
                        width = "full",
                        order = 1.4,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                self:CheckAddonCompatibility()
                            end
                        end
                    },
                    featuresHeader = {
                        name = _G.FEATURES_LABEL,
                        type = "header",
                        width = "full",
                        order = 2.0
                    },
                    enableMinimapButton = {
                        name = L("Enable Minimap Button"),
                        desc = L("Add main options menu to minimap"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                LibDBIcon:Show(addonName)
                            else
                                LibDBIcon:Hide(addonName)
                            end
                        end
                    },
                    hideGuideWindow = {
                        name = L("Hide Window"),
                        desc = L("Hides the main window"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame:SetShown(not value)
                        end
                    },
                    disableArrow = {
                        name = L("Hide waypoint arrow"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.3,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateArrow(addon.arrowFrame)
                        end
                    },
                    disableItemWindow = {
                        name = L("Hide Active Item window"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.4,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateItemFrame()
                        end
                    },
                    automationHeader = {
                        name = L("Automation"), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 4.0
                    },
                    enableQuestAutomation = {
                        name = L("Quest auto accept/turn in"),
                        desc = L(
                            "Holding the Control key modifier also toggles the quest auto accept feature on and off"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.1
                    },
                    enableQuestRewardAutomation = {
                        name = L("Quest auto rewards"), -- TODO locale
                        desc = L(
                            "Allows guides to choose quest rewards automatically"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.2
                    },
                    shareQuests = {
                        name = L("Automatic quest sharing"), -- TODO: Localize this setting
                        desc = L(
                            "Whenever you accept a quest in the guide, the addon tries to share it with your group"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.3
                    },
                    enableTrainerAutomation = {
                        name = L("Trainer automation"),
                        desc = L(
                            "Allows the guide to buy useful leveling spells automatically"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.4
                    },
                    enableFPAutomation = {
                        name = L("Flight Path automation"),
                        desc = L(
                            "Allows the guide to automatically fly you to your destination"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.5
                    },
                    enableBindAutomation = {
                        name = L("Innkeeper Bind automation"), -- TODO locale
                        desc = L(
                            "Allows the guide to automatically set your home at an Innkeeper"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.6
                    },
                    enableGossipAutomation = {
                        name = L("Skip Gossip"), -- TODO locale
                        desc = L(
                            "Allows the guide to automatically skip gossip for NPCs"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.7
                    },
                    talentsHeader = {
                        name = function()
                            if addon.talents and addon.talents:IsSupported() then
                                return _G.TALENTS
                            else
                                return fmt("%s - %s", _G.TALENTS,
                                           _G.ADDON_NOT_AVAILABLE)
                            end
                        end,
                        type = "header",
                        width = "full",
                        order = 5.0
                    },
                    enableTalentGuides = {
                        name = L("Enable Talents Guides"), -- TODO locale
                        desc = L("Enable Talents Guides"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 5.2,
                        disabled = function()
                            return not (addon.talents and
                                       addon.talents:IsSupported())
                        end,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end
                    },
                    previewTalents = {
                        name = L("Enable Talent Previews"), -- TODO locale
                        desc = L("Enable Talent Previews"),
                        type = "toggle",
                        width = optionsWidth * 2,
                        order = 5.3,
                        disabled = function()
                            return not (addon.talents and
                                       addon.settings.db.profile
                                           .enableTalentGuides and
                                       addon.talents:IsSupported())
                        end,
                        hidden = addon.gameVersion < 30000
                    },
                    hightlightTalentPlan = {
                        name = L("Enable Talent Plan"), -- TODO locale
                        desc = L("Highlight or list levels for each talent"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 5.5,
                        disabled = function()
                            return not (addon.talents and
                                       addon.settings.db.profile
                                           .enableTalentGuides and
                                       addon.talents:IsSupported())
                        end
                    },
                    upcomingTalentCount = {
                        name = L("Talent Plan Number"), -- TODO locale
                        desc = L("Sets maximum number of talents to layout"),
                        type = "range",
                        width = optionsWidth,
                        order = 5.6,
                        min = 1,
                        max = addon.talents and addon.talents.maxLevel or 1,
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                        end,
                        disabled = function()
                            return not (addon.talents and
                                       addon.settings.db.profile
                                           .enableTalentGuides and
                                       addon.settings.db.profile
                                           .hightlightTalentPlan and
                                       addon.talents:IsSupported())
                        end
                    }
                }
            },
            guideRoutingSettings = {
                type = "group",
                name = L("Guide Routing"),
                order = 3,
                args = {
                    experienceHeader = {
                        name = _G.POWER_TYPE_EXPERIENCE,
                        type = "header",
                        width = "full",
                        order = 1.0
                    },
                    enableAutomaticXpRate = {
                        name = L("Detect Rate"),
                        desc = L("Checks for heirlooms and experience buffs"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                self:DetectXPRate()
                            end
                        end
                    },
                    xprate = {
                        name = L("Experience rates"),
                        desc = L(
                            "Adjusts the guide routes to match increased xp rate bonuses"),
                        type = "range",
                        width = optionsWidth,
                        order = 1.2,
                        min = 1,
                        max = 1.7,
                        step = 0.05,
                        isPercent = true,
                        confirm = function()
                            return L(
                                       "Notice: Changing experience rates beyond 1x may cause some chapters to become hidden and certain steps may automatically skip as you out level them") -- TODO locale
                        end,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.ReloadGuide()
                            addon.RXPFrame.GenerateMenuTable()
                        end,
                        hidden = addon.game ~= "WOTLK",
                        disabled = function()
                            return addon.settings.db.profile
                                       .enableAutomaticXpRate
                        end
                    },
                    enableXpStepSkipping = {
                        name = L("Skip overleveled steps"),
                        desc = L("Skip steps you're overleveled for"),
                        type = "toggle",
                        width = optionsWidth * 2,
                        order = 1.3,
                        confirm = function()
                            return L(
                                       "Warning: Changing this setting mid-guide may cause quest pre-requisite failures.\nGuides were optimized for experience, disabling this option will result in a disjointed guide steps.") -- TODO locale
                        end,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                self:DetectXPRate()
                            end
                        end
                    },
                    enableGroupQuests = {
                        name = L("Show Group Quests"),
                        desc = function()
                            local out = L"Guides that support this feature:\n"
                            for guide in pairs(RXPData.guideMetaData.enableGroupQuests) do
                                out = fmt("%s\n%s",out,guide)
                            end
                            return out
                        end,
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.4,
                        hidden = function()
                                return not next(RXPData.guideMetaData.enableGroupQuests)
                        end,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                addon.ReloadGuide()
                            end
                        end
                    },
                    soloSelfFound = {
                        name = L("Solo Self Found Mode"),
                        desc = L("If this option is enabled, it disables all steps involving trading or Auction House"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.5,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                addon.ReloadGuide()
                            end
                        end
                    },
                    expansionHeader = {
                        name = _G.EXPANSION_FILTER_TEXT,
                        type = "header",
                        width = "full",
                        order = 2
                    },
                    northrendLM = {
                        name = L("Northrend Loremaster"),
                        desc = L(
                            "Adjust the routes to include almost every quest in the Northrend zones"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.ReloadGuide()
                        end,
                        hidden = addon.game ~= "WOTLK"
                    },
                    chromieTime = {
                        name = L("Show Chromie Time Guides"),
                        desc = L(
                            "Enables or disables the chromie time guides. Note that freshly created accounts without a level 60 character cannot access chromie time"),
                        type = "select",
                        values = {
                            auto = "Automatic",
                            enabled = "Enabled",
                            disabled = "Disabled"
                        },
                        sorting = {"auto", "enabled", "disabled"},
                        width = optionsWidth,
                        order = 2.2,
                        hidden = WOW_PROJECT_ID ~= WOW_PROJECT_MAINLINE
                    },
                    phase = {
                        name = L("Content phase"),
                        desc = L(
                            "Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests"),
                        type = "range",
                        width = optionsWidth,
                        order = 2.3,
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
                    hardcore = {
                        name = L("Hardcore mode"),
                        desc = L(
                            "Adjust the leveling routes to the deathless ruleset"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.4,
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
                        width = optionsWidth,
                        order = 2.5,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()
                            addon.ReloadGuide()
                        end,
                        hidden = addon.game ~= "CLASSIC",
                        disabled = function()
                            return addon.settings.db.profile
                                       .enableAutomaticXpRate
                        end
                    },
                    dungeons = {
                        name = L("Dungeons"), -- TODO locale
                        desc = function()
                            local out = L"Routes in quests for the selected dungeon\nGuides that support this feature:\n"
                            for guide in pairs(RXPData.guideMetaData.dungeonGuides) do
                                out = fmt("%s\n%s",out,guide)
                            end
                            return out
                        end,
                        type = "multiselect",
                        width = optionsWidth,
                        order = 2.9,
                        values = RXPData.guideMetaData.enabledDungeons[addon.player.faction],
                        get = function(_,key)
                            return addon.settings.db.profile.dungeons[key]
                        end,
                        set = function(_,key,state)
                            addon.settings.db.profile.dungeons[key] = state
                            addon.ReloadGuide()
                        end,
                        hidden = function()
                            return not next(RXPData.guideMetaData.enabledDungeons[addon.player.faction])
                        end,
                    },
                    questCleanupHeader = {
                        name = L("Quest Cleanup"),
                        type = "header",
                        width = "full",
                        order = 10.0
                    },
                    abandonOrphanedQuests = {
                        name = L("Cleanup Orphaned Quests"), -- TODO locale
                        desc = L("Cleanup obsolete or leftover quests"),
                        order = 10.1,
                        type = "execute",
                        width = optionsWidth,
                        func = function()
                            addon.AbandonOrphanedQuests(settingsCache.orphans)
                            wipe(settingsCache.orphans)
                        end,
                        confirm = function()
                            local result = L("Abandon the following quests?")

                            for _, d in ipairs(settingsCache.orphans) do
                                result =
                                    fmt("%s\n%s (level %d)", result,
                                        d.questLogTitleText, d.level)
                            end

                            return result
                        end,
                        disabled = function()
                            return #settingsCache.orphans == 0
                        end
                    },
                    orphanedQuestBox = {
                        order = 10.2,
                        type = 'description',
                        name = function()
                            local result = ""
                            local orphans = addon.GetOrphanedQuests()
                            for _, d in ipairs(orphans) do
                                result =
                                    fmt("%s\n%s (level %d)", result,
                                        d.questLogTitleText, d.level)
                            end

                            settingsCache.orphans = orphans

                            return result
                        end,
                        width = optionsWidth
                    }
                }
            },
            targeting = {
                type = "group",
                name = _G.BINDING_HEADER_TARGETING,
                order = 4,
                args = {
                    macroHeader = {
                        name = fmt("%s%s", L("Targeting Macro"),
                                   addon.targeting:CanCreateMacro() and '' or
                                       ' - ' .. L("Macro capacity reached")), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 1
                    },
                    enableTargetMacro = {
                        name = L("Create Targeting Macro"), -- TODO locale
                        desc = L("Automatically create a targeting macro"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.1,
                        disabled = not addon.targeting:CanCreateMacro()
                    },
                    notifyOnTargetUpdates = {
                        name = L("Notify on new target"), -- TODO locale
                        desc = L("Notify when a new target is loaded"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.2,
                        disabled = not addon.targeting:CanCreateMacro() or
                            not self.db.profile.enableTargetAutomation
                    },
                    activeTargetsHeader = {
                        name = L("Active Targets"),
                        type = "header",
                        width = "full",
                        order = 2
                    },
                    enableTargetAutomation = {
                        name = L("Enable Active Targets"), -- TODO locale
                        desc = L("Automatically scan nearby targets"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.1
                    },
                    showTargetingOnProximity = {
                        name = L("Only show when in range"), -- TODO locale
                        desc = L(
                            "Check if targets are nearby\nWarning: This relies on ADDON_ACTION_FORBIDDEN errors from TargetUnit() to function."),
                        type = "toggle",
                        width = optionsWidth * 2,
                        order = 2.11,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    enableFriendlyTargeting = {
                        name = L("Scan Friendly Targets"), -- TODO locale
                        desc = L("Scan for friendly targets"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.2,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    enableTargetMarking = {
                        name = L("Mark Friendly Targets"), -- TODO locale
                        desc = L(
                            "Mark friendly targets with star, circle, diamond, and triangle"),
                        type = "toggle",
                        width = optionsWidth * 2,
                        order = 2.21,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    enableEnemyTargeting = {
                        name = L("Scan Enemy Targets"), -- TODO locale
                        desc = L("Scan for enemy targets"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.3,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    enableEnemyMarking = {
                        name = L("Mark Enemy Targets"), -- TODO locale
                        desc = L("Mark special enemy targets with moon"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.31,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    enableMobMarking = {
                        name = L("Mark Enemy Mobs"), -- TODO locale
                        desc = L("Mark enemy mobs with skull, cross, and square"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.32,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    scanForRares = {
                        name = L("Scan for Nearby Rares"), -- TODO locale
                        desc = L("Checks for nearby rare spawns"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.4,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation or
                                       not self.db.profile
                                           .showTargetingOnProximity
                        end
                    },
                    notifyOnRares = {
                        name = L("Notify on Rares"), -- TODO locale
                        desc = L("Notify when a new rare is found"),
                        type = "toggle",
                        width = optionsWidth * 2,
                        order = 2.41,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation or
                                       not self.db.profile
                                           .showTargetingOnProximity or
                                       not self.db.profile.scanForRares
                        end
                    },
                    hideActiveTargetsBackground = {
                        name = L("Hide Targets Background"),
                        desc = L("Make background transparent"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.5,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.targeting:RenderTargetFrameBackground()
                        end,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation
                        end
                    },
                    activeTargetScale = {
                        name = L("Active Targets Scale"), -- TODO locale
                        desc = L("Scale of the Active Targets frame"),
                        type = "range",
                        width = optionsWidth,
                        order = 2.51,
                        min = 0.8,
                        max = 3,
                        step = 0.05,
                        isPercent = true,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.targeting.activeTargetFrame:SetScale(value)
                        end
                    },
                    alertHeader = {
                        name = _G.COMMUNITIES_NOTIFICATION_SETTINGS,
                        type = "header",
                        width = "full",
                        order = 3
                    },
                    flashOnFind = {
                        name = L("Flash Client Icon"), -- TODO locale
                        desc = L(
                            "Flashes the game icon on taskbar when enemy target found"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.1,
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation or
                                       not self.db.profile
                                           .showTargetingOnProximity
                        end
                    },
                    enableTargetingFlash = {
                        name = _G.SHOW_FULLSCREEN_STATUS_TEXT,
                        desc = L(
                            "Flashes the screen corners when enemy target found"),
                        type = "toggle",
                        width = optionsWidth * 2,
                        order = 3.2,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile.enableDrowningWarning
                        end
                    },
                    soundOnFind = {
                        name = L("Play Sound"), -- TODO locale
                        desc = L("Sends sound on enemy target found"),
                        type = "select",
                        width = optionsWidth,
                        order = 3.3,
                        values = {
                            ["none"] = "none",
                            [3175] = "Map Ping",
                            [11773] = "War Drums",
                            [8959] = "Raid Warning",
                            [5274] = "Auction Window Open",
                            [17318] = "LFG Dungeon Ready",
                            [9378] = "PVP Flag Taken",
                            [8960] = _G.QUEUED_STATUS_READY_CHECK_IN_PROGRESS,
                            [9374] = "PVP Flag Captured",
                            [9375] = "PVP Warning",
                            [180461] = "Fel Reaver"
                        },
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation or
                                       not self.db.profile
                                           .showTargetingOnProximity
                        end
                    },
                    soundOnFindChannel = {
                        name = L("Sound Channel"), -- TODO locale
                        type = "select",
                        width = optionsWidth,
                        order = 3.4,
                        values = {
                            ["Master"] = _G.MASTER,
                            ["Music"] = _G.MUSIC_VOLUME,
                            ["Ambience"] = _G.AMBIENCE_VOLUME,
                            ["Dialog"] = _G.DIALOG_VOLUME
                        },
                        disabled = function()
                            return not self.db.profile.enableTargetAutomation or
                                       not self.db.profile
                                           .showTargetingOnProximity or
                                       self.db.profile.soundOnFind == "none"
                        end
                    },
                    testSoundOnFind = {
                        name = _G.EVENTTRACE_BUTTON_PLAY,
                        order = 3.5,
                        type = 'execute',
                        disabled = function()
                            return self.db.profile.soundOnFind == "none"
                        end,
                        func = function()
                            PlaySound(self.db.profile.soundOnFind,
                                      self.db.profile.soundOnFindChannel)
                        end
                    }
                }
            },
            levelTrackerFeatures = {
                type = "group",
                name = L("Leveling Tracker"),
                order = 5,
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
                        width = optionsWidth,
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
                        width = optionsWidth,
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
                        width = optionsWidth,
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
                        width = optionsWidth,
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
                        width = optionsWidth,
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
                        width = optionsWidth,
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
                order = 6,
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
            tipsPanel = {
                type = "group",
                name = L("Tips"), -- TODO locale
                order = 7,
                args = {
                    enableTips = {
                        name = L("Enable Tips"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.1
                    },
                    enableTipsFrame = {
                        name = L("Enable Tips Frame"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.2,
                        disabled = function()
                            return not self.db.profile.enableTips
                        end,
                        hidden = true -- TODO Zarant
                    },
                    drowningHeader = {
                        name = _G.STRING_ENVIRONMENTAL_DAMAGE_DROWNING,
                        type = "header",
                        width = "full",
                        order = 2.0
                    },
                    enableDrowningWarning = {
                        name = L("Enable Warning"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.1,
                        disabled = function()
                            return not self.db.profile.enableTips
                        end
                    },
                    enableDrowningWarningSound = {
                        name = L("Enable Warning Sound"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.2,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile.enableDrowningWarning
                        end
                    },
                    drowningThreshold = {
                        name = L("Threshold"), -- TODO locale
                        type = "range",
                        width = optionsWidth,
                        order = 2.3,
                        min = 0.05,
                        max = 0.5,
                        step = 0.05,
                        isPercent = true,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile.enableDrowningWarning
                        end
                    },
                    enableDrowningScreenFlash = {
                        name = _G.SHOW_FULLSCREEN_STATUS_TEXT,
                        desc = L(
                            "Flashes the screen corners when in danger of drowning"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 2.4,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile.enableDrowningWarning
                        end
                    },
                    emergencyHeader = {
                        name = L("Emergency Actions"), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 3.0
                    },
                    enableEmergencyActions = {
                        name = L("Enable Warning"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.1,
                        disabled = function()
                            return not self.db.profile.enableTips
                        end
                    },
                    emergencyThreshold = {
                        name = L("Threshold"), -- TODO locale
                        type = "range",
                        width = optionsWidth,
                        order = 3.2,
                        min = 0.05,
                        max = 0.40,
                        step = 0.05,
                        isPercent = true,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile
                                           .enableEmergencyActions
                        end
                    },
                    enableEmergencyIconAnimations = {
                        name = L("Enable Animations"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.3,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile
                                           .enableEmergencyActions
                        end
                    },
                    enableEmergencyScreenFlash = {
                        name = _G.SHOW_FULLSCREEN_STATUS_TEXT,
                        desc = L(
                            "Flashes the screen corners when an emergency action is recommended"), -- TODO locale
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.4,
                        disabled = function()
                            return not self.db.profile.enableTips or
                                       not self.db.profile
                                           .enableEmergencyActions
                        end
                    },
                    dangerousMobsHeader = {
                        name = L("Dangerous Mobs Tracking"),
                        type = "header",
                        width = "full",
                        order = 4.0,
                        hidden = function()
                            return not addon.settings.db.profile.enableBetaFeatures or not addon.dangerousMobs
                        end,
                    },
                    showDangerousMobsMap = {
                        name = L("Track Mobs on Map"), -- TODO locale
                        desc = L("Displays dangerous mobs and patrols on your map (WIP)"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.1,
                        set = function(info,value)
                            SetProfileOption(info, value)
                            addon.db.profile.showDangerousMobsMap = value
                            addon.tips:LoadDangerousMobs()
                        end,
                        disabled = function()
                            return not self.db.profile.enableTips
                        end,
                        hidden = function()
                            return not addon.settings.db.profile.enableBetaFeatures or not addon.dangerousMobs
                        end,
                    },
                }
            },
            helpPanel = {
                type = "group",
                name = _G.HELP_LABEL,
                order = 9,
                args = {}
            },
            lookAndFeel = {
                type = "group",
                name = L("Look and Feel"), -- TODO
                order = 10,
                args = {
                    activeTheme = {
                        name = L("Choose Theme"), -- TODO locale
                        desc = L("Choose active theme"),
                        type = "select",
                        width = optionsWidth,
                        order = 1.1,
                        get = function()
                            if self.db.profile.hardcore then
                                return "Hardcore"
                            elseif RXPCData.GA then
                                return "GoldAssistant"
                            end

                            return self.db.profile.activeTheme
                        end,
                        set = function(info, value)
                            SetProfileOption(info, value)

                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        values = function()
                            return addon:GetThemeOptions()
                        end,
                        disabled = function()
                            -- Disable selector if GA/Hardcore as they're special and branded
                            return RXPCData.GA or self.db.profile.hardcore
                        end
                    },
                    customThemeBackground = {
                        name = _G.BACKGROUND,
                        desc = L("Set primary background"),
                        type = "color",
                        width = optionsWidth,
                        order = 1.2,
                        hasAlpha = true,
                        get = function()
                            return
                                unpack(self.db.profile.customTheme.background)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.customTheme.background = {
                                r, g, b, a or 1
                            }
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeBottomFrameBG = {
                        name = L("Step List Background"), -- TODO locale
                        desc = L("Step List Background"),
                        type = "color",
                        width = optionsWidth,
                        order = 1.3,
                        hasAlpha = true,
                        get = function()
                            return unpack(
                                       self.db.profile.customTheme.bottomFrameBG)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.customTheme.bottomFrameBG = {
                                r, g, b, a or 1
                            }
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeBottomFrameHighlight = {
                        name = L("Step Highlight"), -- TODO locale
                        desc = L("Step mouseover highlight color"),
                        type = "color",
                        width = optionsWidth,
                        order = 1.4,
                        hasAlpha = true,
                        get = function()
                            return unpack(
                                       self.db.profile.customTheme
                                           .bottomFrameHighlight)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.customTheme.bottomFrameHighlight = {
                                r, g, b, a or 1
                            }
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeMapPins = {
                        name = L("Map Pins"), -- TODO locale
                        desc = L("Map Pin color"),
                        type = "color",
                        width = optionsWidth,
                        order = 1.5,
                        hasAlpha = true,
                        get = function()
                            return unpack(self.db.profile.customTheme.mapPins)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.customTheme.mapPins = {
                                r, g, b, a or 1
                            }
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeTooltip = {
                        name = L("Tooltip"), -- TODO locale
                        desc = L("RGB hex color code"),
                        type = "input", -- TODO color then convert
                        width = optionsWidth,
                        order = 1.6,
                        get = function()
                            -- Skip '|c' and ending 'FF'
                            return
                                self.db.profile.customTheme.tooltip:sub(3, -3)
                        end,
                        set = function(_, value)
                            self.db.profile.customTheme.tooltip = fmt('|c%sFF',
                                                                      value)
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeFont = {
                        name = L("Font"), -- TODO locale
                        desc = L("Font Path"),
                        type = "input",
                        width = optionsWidth,
                        order = 1.7,
                        get = function()
                            return self.db.profile.customTheme.font
                        end,
                        validate = function(_, fontPath)
                            local currentFont =
                                addon.RXPFrame.Footer.text:GetFontObject()

                            local isValid =
                                addon.RXPFrame.GuideName.text:SetFont(fontPath,
                                                                      9, "")
                            addon.RXPFrame.GuideName.text:SetFontObject(
                                currentFont)

                            return isValid
                        end,
                        set = function(_, value)
                            self.db.profile.customTheme.font = value
                            -- TODO replace \ with \\

                            addon:RegisterTheme(self.db.profile.customTheme)

                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeTextColor = {
                        name = L("Text Color"), -- TODO locale
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 1.8,
                        get = function()
                            return unpack(self.db.profile.customTheme.textColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.customTheme.textColor = {
                                r, g, b, a or 1
                            }
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    customThemeApply = {
                        name = _G.APPLY,
                        type = 'execute',
                        width = optionsWidth,
                        order = 1.9,
                        confirm = requiresReload,
                        func = function() _G.ReloadUI() end
                    },
                    customThemeReset = {
                        name = _G.RESET,
                        type = 'execute',
                        width = optionsWidth,
                        order = 1.91,
                        func = function()
                            self.db.profile.customTheme = addon.customThemeBase
                            addon:RegisterTheme(self.db.profile.customTheme)
                            if self.db.profile.enableThemeLiveReload then
                                addon.RenderFrame('themeReload')
                            end
                        end,
                        hidden = function()
                            return self.db.profile.activeTheme ~= 'Custom'
                        end
                    },
                    enableThemeLiveReload = {
                        name = L("Preview Changes"),
                        desc = L("Preview theme changes"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 1.92
                    },
                    textColorsHeader = {
                        name = _G.LOCALE_TEXT_LABEL,
                        type = "header",
                        width = "full",
                        order = 2.0
                    },
                    textEnemyColor = {
                        name = _G.COMBATLOG_HIGHLIGHT_KILL,
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 2.1,
                        get = function()
                            return self:HexToRGB(self.db.profile.textEnemyColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.textEnemyColor = self:RGBToString(r,
                                                                              g,
                                                                              b,
                                                                              a)
                        end
                    },
                    textFriendlyColor = {
                        name = _G.FRIENDLY,
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 2.2,
                        get = function()
                            return self:HexToRGB(self.db.profile
                                                     .textFriendlyColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.textFriendlyColor =
                                self:RGBToString(r, g, b, a)
                        end
                    },
                    textLootColor = {
                        name = _G.LOOT,
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 2.3,
                        get = function()
                            return self:HexToRGB(self.db.profile.textLootColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.textLootColor = self:RGBToString(r,
                                                                             g,
                                                                             b,
                                                                             a)
                        end
                    },
                    textWarnColor = {
                        name = L("Warning"),
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 2.4,
                        get = function()
                            return self:HexToRGB(self.db.profile.textWarnColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.textWarnColor = self:RGBToString(r,
                                                                             g,
                                                                             b,
                                                                             a)
                        end
                    },
                    textPickColor = {
                        name = L("Pick Up"),
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 2.5,
                        get = function()
                            return self:HexToRGB(self.db.profile.textPickColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.textPickColor = self:RGBToString(r,
                                                                             g,
                                                                             b,
                                                                             a)
                        end
                    },
                    textBuyColor = {
                        name = L("Buy"),
                        desc = L("Requires Reload to take effect"),
                        type = "color",
                        width = optionsWidth,
                        order = 2.6,
                        get = function()
                            return self:HexToRGB(self.db.profile.textBuyColor)
                        end,
                        set = function(_, r, g, b, a)
                            self.db.profile.textBuyColor = self:RGBToString(r,
                                                                            g,
                                                                            b, a)
                        end
                    },
                    customTextColorApply = {
                        name = _G.APPLY,
                        type = 'execute',
                        width = optionsWidth,
                        order = 2.9,
                        confirm = requiresReload,
                        func = function() _G.ReloadUI() end -- TODO easier redraw?
                    },
                    customTextColorReset = {
                        name = _G.RESET,
                        type = 'execute',
                        width = optionsWidth,
                        order = 2.91,
                        func = function()
                            self:ResetTextColors()
                        end
                    },
                    disableColorText = {
                        name = L("Disable Colors"),
                        type = 'execute',
                        width = optionsWidth,
                        order = 2.92,
                        func = function()
                            self:DisableTextColors()
                        end
                    },
                    guideWindowHeader = {
                        name = L("Guide Window"),
                        type = "header",
                        width = "full",
                        order = 3.0
                    },
                    windowScale = {
                        name = L("Window Scale"),
                        desc = L(
                            "Scale of the Main Window, use alt+left click on the main window to resize it"),
                        type = "range",
                        width = optionsWidth,
                        order = 3.1,
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
                        order = 3.2,
                        min = 9,
                        max = 18,
                        step = 1,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end
                    },
                    anchorOrientation = {
                        name = L("Current step frame anchor"),
                        desc = L(
                            "Sets the current step frame to grow from bottom to top or top to bottom"),
                        type = "select",
                        values = {top = "Top", bottom = "Bottom"},
                        sorting = {"top", "bottom"},
                        width = optionsWidth,
                        order = 3.3,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.SetStepFrameAnchor()
                        end
                    },
                    showStepList = { -- Not actually a direct setting, indirectly frameHeight
                        name = L("Show step list"),
                        desc = L(
                            "Show/Hide the bottom frame listing all the steps of the current guide"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.4,
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
                        order = 3.5,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.ScrollFrame.ScrollBar:SetValue(0)
                        end
                    },
                    showUnusedGuides = {
                        name = L("Show unused guides"),
                        desc = L(
                            "Displays guides that are not applicable for your class/race such as starting zones for other races"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.6,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()
                        end
                    },
                    autoLoadStartingGuides = {
                        name = L("Load starting zone guides"),
                        desc = L(
                            "Automatically picks a suitable guide whenever you log in for the first time on a character"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 3.7,
                        hidden = not addon.defaultGuideList,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()

                        end
                    },
                    arrowHeader = {
                        name = L("Waypoint Arrow"), -- TODO locale
                        type = "header",
                        width = "full",
                        order = 3.9
                    },
                    arrowScale = {
                        name = L("Arrow Scale"),
                        desc = L("Scale of the Waypoint Arrow"),
                        type = "range",
                        width = optionsWidth,
                        order = 3.92,
                        min = 0.2,
                        max = 2,
                        step = 0.05,
                        isPercent = true,
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
                        order = 3.93,
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
                        name = L("Reset Arrow Position"), -- TODO locale
                        order = 3.94,
                        type = "execute",
                        width = optionsWidth,
                        func = function()
                            addon.ResetArrowPosition()
                        end
                    },
                    activeItemsHeader = {
                        name = L("Active Items"),
                        type = "header",
                        width = "full",
                        order = 4.0
                    },
                    activeItemsScale = {
                        name = L("Active Item Scale"), -- TODO locale
                        desc = L("Scale of the Active Item frame"),
                        type = "range",
                        width = optionsWidth,
                        order = 4.1,
                        min = 0.8,
                        max = 3,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.activeItemFrame:SetScale(value)
                        end
                    },
                    activeItemHideBG = {
                        name = L("Hide Background"),
                        desc = L("Make background transparent"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 4.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if addon.activeItemFrame then
                                addon.activeItemFrame:UpdateVisuals()
                            end
                        end
                    },
                    mapHeader = {
                        name = _G.MAP_OPTIONS_TEXT,
                        type = "header",
                        width = "full",
                        order = 5.1
                    },
                    hideMiniMapPins = {
                        name = L("Hide Mini Map Pins"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 5.2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateMap()
                        end
                    },
                    mapCircle = {
                        name = L("Highlight active map pins"),
                        desc = L(
                            "Show a targeting circle around active map pins"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 5.3,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateMap()
                        end
                    },
                    numMapPins = {
                        name = L("Number of Map Pins"),
                        desc = L("Number of map pins shown on the world map"),
                        type = "range",
                        width = optionsWidth,
                        order = 5.4,
                        min = 1,
                        max = 20,
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateMap()
                        end
                    },
                    worldMapPinScale = {
                        name = L("Map Pin Scale"),
                        desc = L("Adjusts the size of the world map pins"),
                        type = "range",
                        width = optionsWidth,
                        order = 5.5,
                        min = 0.05,
                        max = 1,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateMap()
                        end
                    },
                    distanceBetweenPins = {
                        name = L("Distance Between Pins"),
                        desc = L(
                            "If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group."),
                        type = "range",
                        width = optionsWidth,
                        order = 5.6,
                        min = 0.05,
                        max = 2,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateMap()
                        end
                    },
                    worldMapPinBackgroundOpacity = {
                        name = L("Map Pin Background Opacity"),
                        desc = L(
                            "The opacity of the black circles on the map and mini map"),
                        type = "range",
                        width = optionsWidth,
                        order = 5.7,
                        min = 0,
                        max = 1,
                        step = 0.05,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateMap()
                        end
                    }
                }
            },
            advancedSettings = {
                type = "group",
                name = L("Advanced Settings"),
                order = 20,
                args = {
                    enableBetaFeatures = {
                        name = L("Enable Beta Features"),
                        desc = L(
                            "Enables new features, forces reload to take effect"),
                        type = "toggle",
                        width = optionsWidth,
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
                        width = optionsWidth,
                        order = 1.1
                    },
                    batchSize = {
                        name = L("Batching window size (ms)"),
                        desc = L(
                            "Adjusts the batching window tolerance, used for hearthstone batching. Increase this value if you're experiencing framerate drops when using your Hearthstone"),
                        type = "range",
                        width = optionsWidth,
                        order = 1.2,
                        min = 1,
                        max = 100,
                        step = 1,
                        hidden = addon.gameVersion > 40000
                    },
                    skipMissingPreReqs = {
                        name = L("Skip quests with missing pre-requisites"),
                        desc = L(
                            "Automatically skip tasks in which you don't have the required quest pre-requisites\n(Requires Questie)"),
                        type = "toggle",
                        width = optionsWidth,
                        order = 10,
                        hidden = true or not _G.QuestieLoader, -- Not used
                        disabled = true -- Not used
                    }
                }
            }
        }
    }

    -- Build FAQ items
    local helpBatch = 2
    for q, a in pairs(addon.help) do
        optionsTable.args.helpPanel.args[helpBatch .. "q"] = {
            order = helpBatch + 0.1,
            name = q,
            type = "header",
            width = "full"
        }

        optionsTable.args.helpPanel.args[helpBatch .. "a"] = {
            order = helpBatch + 0.2,
            name = a,
            type = "description",
            width = "full",
            fontSize = "medium"
        }
        helpBatch = helpBatch + 1
    end

    for title, data in pairs(addon.compatibility) do
        optionsTable.args.helpPanel.args[helpBatch .. "a"] = {
            order = helpBatch + 0.1,
            name = title,
            type = "header",
            width = "full",
            hidden = function() return not incompatibleAddons[title] end
        }

        optionsTable.args.helpPanel.args[helpBatch .. "d"] = {
            order = helpBatch + 0.2,
            name = fmt("%s %s\n\n%s", title, data.Reason, data.Recommendation),
            type = "description",
            width = "full",
            fontSize = "medium",
            hidden = function() return not incompatibleAddons[title] end
        }
        helpBatch = helpBatch + 1
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
    -- Theme load order, leave default settings branding unthemed
    f.icon:SetTexture("Interface/AddOns/" .. addonName ..
                          "/Textures/rxp_logo-64")
    f.icon:SetPoint("TOPRIGHT", -5, -5)

end

local function buildMinimapMenu()
    local menu = {}
    addon.RXPFrame:GenerateMenuTable(menu)

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
        icon = addon.GetTexture("rxp_logo-64"),
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
        if frame.IsFeatureEnabled() and frame.SetShown then
            frame:SetShown(addon.settings.db.profile.showEnabled)
        end
    end

end

function addon.settings:DetectXPRate()
    if not addon.settings.db.profile.enableAutomaticXpRate or addon.gameVersion >
        40000 then return end

    local UnitBuff = UnitBuff
    local GetInventoryItemLink = GetInventoryItemLink

    local function CheckBuff(buffId)
        local id

        for i = 1, 40 do
            id = select(10, UnitBuff("player", i))
            if not id then return false end

            if id == buffId then return true end
        end
    end

    if addon.gameVersion < 20000 then
        local isSoM = CheckBuff(362859)

        if isSoM == addon.settings.db.profile.SoM then return end

        addon.settings.db.profile.SoM = isSoM

        if addon.currentGuide and addon.currentGuide.name then
            addon:LoadGuide(addon.currentGuide, 'onLoad')
        else
            addon.ReloadGuide()
        end

        addon.RXPFrame.GenerateMenuTable()

        return
    end

    local calculatedRate = CheckBuff(377749) and 1.5 or 1.0 -- Joyous Journeys

    -- Ignoring ring 5% (11, 12) and Wintergrasp 5% (57940)
    local itemQuality

    local itemLink = GetInventoryItemLink("player", 3) -- Shoulder

    if itemLink then
        itemQuality = select(3, GetItemInfo(itemLink))

        if itemQuality == INV_HEIRLOOM then
            calculatedRate = calculatedRate + 0.1

            if addon.settings.db.profile.debug then
                addon.comms.PrettyPrint("Heirloom detected in Shoulder slot")
            end
        end
    end

    itemLink = GetInventoryItemLink("player", 5) -- Chest

    if itemLink then
        itemQuality = select(3, GetItemInfo(itemLink))

        if itemQuality == INV_HEIRLOOM then
            calculatedRate = calculatedRate + 0.1

            if addon.settings.db.profile.debug then
                addon.comms.PrettyPrint("Heirloom detected in Chest slot")
            end
        end
    end

    -- Bypass floating point comparison issues
    if fmt("%.2f", addon.settings.db.profile.xprate) ==
        fmt("%.2f", calculatedRate) then return end

    addon.settings.db.profile.xprate = calculatedRate

    -- Gold assistant, ignore reloads, silently update
    if (RXPCData and RXPCData.GA) or (addon.guide and addon.guide.farm) then
        return
    end

    addon.comms.PrettyPrint(L(
                                "Experience rate change detected, reloading guide for %.2fx"),
                            calculatedRate)

    if addon.currentGuide and addon.currentGuide.name then
        addon:LoadGuide(addon.currentGuide, 'onLoad')
    else
        addon.ReloadGuide()
    end

    addon.RXPFrame.GenerateMenuTable()
end

function addon.settings:RefreshProfile()
    if addon.currentGuide and addon.currentGuide.name then
        addon:LoadGuide(addon.currentGuide)
    else
        addon.ReloadGuide()
    end
    addon.UpdateMap()
    addon.RXPFrame.GenerateMenuTable()
    addon.RXPFrame.SetStepFrameAnchor()
end

function addon.settings:CheckAddonCompatibility()
    if not addon.compatibility or
        not self.db.profile.enableAddonIncompatibilityCheck then return end

    local a, name

    for i = 1, GetNumAddOns() do
        if IsAddOnLoaded(i) then
            name = GetAddOnInfo(i)

            if addon.compatibility[name] then
                incompatibleAddons[name] = true
                a = addon.compatibility[name]
                addon.comms.PrettyPrint("%s %s %s", name, a.Reason,
                                        a.Recommendation)
            end
        end
    end
end

-- https://wowwiki-archive.fandom.com/wiki/USERAPI_RGBToHex
function addon.settings:RGBToString(r, g, b, a)
    a = a or 1

    return string.format("%02x%02x%02x%02x", a * 255, r * 255, g * 255, b * 255)
end

-- https://wowwiki-archive.fandom.com/wiki/USERAPI_HexToRGB
function addon.settings:HexToRGB(hexString)
    if not hexString then
        return unpack(addon.activeTheme.textColor) -- , 1
    end

    local ahex, rhex, ghex, bhex = hexString:sub(1, 2), hexString:sub(3, 4),
                                   hexString:sub(5, 6), hexString:sub(7, 8)

    if ahex and rhex and ghex and bhex then
        return tonumber(rhex, 16) / 255, tonumber(ghex, 16) / 255,
               tonumber(bhex, 16) / 255 -- , tonumber(ahex or 1, 16) / 255
    else
        return unpack(addon.activeTheme.textColor) -- , 1
    end
end

function addon.settings:LoadTextColors()
    local gtc = addon.guideTextColors
    local p = self.db.profile
    gtc["RXP_FRIENDLY_"] = p.textFriendlyColor
    gtc["RXP_ENEMY_"] = p.textEnemyColor
    gtc["RXP_LOOT_"] = p.textLootColor
    gtc["RXP_WARN_"] = p.textWarnColor
    gtc["RXP_PICK_"] = p.textPickColor
    gtc["RXP_BUY_"] = p.textBuyColor

    -- Setup reverse lookup
    gtc[gtc.default["RXP_FRIENDLY_"]] = p.textFriendlyColor
    gtc[gtc.default['RXP_ENEMY_']] = p.textEnemyColor
    gtc[gtc.default["RXP_LOOT_"]] = p.textLootColor
    gtc[gtc.default["RXP_WARN_"]] = p.textWarnColor
    gtc[gtc.default["RXP_PICK_"]] = p.textPickColor
    gtc[gtc.default["RXP_BUY_"]] = p.textBuyColor

    -- TODO default to theme, but load order
    -- self:RGBToString(unpack(addon.activeTheme.textColor))
    gtc.default["error"] = {1, 1, 1}
end

function addon.settings:ResetTextColors()
    self.db.profile.textEnemyColor = addon.guideTextColors.default['RXP_ENEMY_']
    self.db.profile.textFriendlyColor =
        addon.guideTextColors.default['RXP_FRIENDLY_']
    self.db.profile.textLootColor = addon.guideTextColors.default['RXP_LOOT_']
    self.db.profile.textWarnColor = addon.guideTextColors.default['RXP_WARN_']
    self.db.profile.textPickColor = addon.guideTextColors.default['RXP_PICK_']
    self.db.profile.textBuyColor = addon.guideTextColors.default['RXP_BUY_']
    self:LoadTextColors()
end

function addon.settings:DisableTextColors()
    local default = self:RGBToString(unpack(addon.activeTheme.textColor))

    self.db.profile.textEnemyColor = default
    self.db.profile.textFriendlyColor = default
    self.db.profile.textLootColor = default
    self.db.profile.textWarnColor = default
    self.db.profile.textPickColor = default
    self.db.profile.textBuyColor = default
    self:LoadTextColors()
end

function addon.settings.ReplaceColors(element)
    -- Replace text placeholders
    local function replace(textLine)
        if type(textLine) ~= "string" then return textLine end
        for RXP_ in string.gmatch(textLine, "RXP_[A-Z]+_") do
            textLine = textLine:gsub(RXP_, addon.guideTextColors[RXP_] or
                                         addon.guideTextColors.default["error"])
        end

        -- Replace raw hex values
        for hex in string.gmatch(textLine, "|c(%x%x%x%x%x%x%x%x)") do
            textLine = textLine:gsub(hex, addon.guideTextColors[hex] or
                                         addon.guideTextColors.default["error"])
        end

        return textLine
    end

    if type(element) == "table" or element and element.textReplaced then
        element.textReplaced = element.textReplaced or {}
        for i, field in pairs({"text", "rawtext", "tooltipText", "mapTooltip"}) do
            if element.textReplaced[i] then
                element[field] = replace(element.textReplaced[i])
            else
                local str = element[field]
                element.textReplaced[i] = str
                element[field] = replace(str)
            end
        end
    else
        return replace(element)
    end

end
