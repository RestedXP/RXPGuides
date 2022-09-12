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
if not addon.settings.extras then addon.settings.extras = {} end

function addon.settings.ChatCommand(input)
    if not input then
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.RXPOptions)
    end

    input = input:trim()
    if input == "import" then
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.import)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.import)
    elseif input == "extras" then
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.new)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.new)
    elseif input == "debug" then
        addon.settings.db.profile.debug = not addon.settings.db.profile.debug

        if addon.settings.db.profile.debug then
            _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.new)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.new)
        end
    elseif input == "splits" then
        addon.tracker:ToggleLevelSplits()
    elseif input == "show" then
        addon.settings.RestoreActive()
    elseif input == "hide" then
        addon.settings.HideActive()
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
            minimap = {show = true},

            --
            enableQuestAutomation = true,
            enableFPAutomation = true,
            showUnusedGuides = true
        }
    }

    self.db = LibStub("AceDB-3.0"):New("RXPCSettings", settingsDBDefaults)

    self.CreateOptionsPanel()
    self.CreateImportOptionsPanel()
    self:MigrateSettings()
    self.CreateNewOptionsPanel()
    self:UpdateMinimapButton()

    self:RegisterChatCommand("rxp", self.ChatCommand)
    self:RegisterChatCommand("rxpg", self.ChatCommand)
    self:RegisterChatCommand("rxpguides", self.ChatCommand)
end

function addon.settings:MigrateSettings()
    if not RXPData then return end

    local d = addon.settings.db.profile.debug
    local db = addon.settings.db.profile
    local pp = addon.comms.PrettyPrint
    local function n(t, v)
        if d then pp(fmt("Migrating %s = %s", t, tostr(v))) end
    end

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
        db.hideWindow = RXPCData.hideWindow
        RXPCData.hideWindow = nil
    end

    if RXPData.lockFrames ~= nil then
        n("hideWindow", RXPData.lockFrames)
        db.lockFrames = RXPData.lockFrames
        RXPData.lockFrames = nil
    end

    if RXPCData.frameHeight ~= nil then
        n("hideWindow", RXPCData.frameHeight)
        db.frameHeight = RXPCData.frameHeight
        RXPCData.frameHeight = nil
    end
end

local function GetProfileOption(info)
    return addon.settings.db.profile[info[#info]]
end

local function SetProfileOption(info, value)
    addon.settings.db.profile[info[#info]] = value
end

function addon.settings.CreateOptionsPanel()
    addon.RXPOptions = CreateFrame("Frame", "RXPOptions")
    addon.RXPOptions.name = addon.title
    _G.InterfaceOptions_AddCategory(addon.RXPOptions)

    addon.RXPOptions.title = addon.RXPOptions:CreateFontString(nil, "ARTWORK",
                                                               "GameFontNormalLarge")
    addon.RXPOptions.title:SetPoint("TOPLEFT", 16, -16)
    addon.RXPOptions.title:SetText(L(addon.title))

    addon.RXPOptions.subtext = addon.RXPOptions:CreateFontString(nil, "ARTWORK",
                                                                 "GameFontHighlightSmall")
    addon.RXPOptions.subtext:SetPoint("TOPLEFT", addon.RXPOptions.title,
                                      "BOTTOMLEFT", 0, -8)
    addon.RXPOptions.subtext:SetText(addon.versionText)

    addon.RXPOptions.icon = addon.RXPOptions:CreateTexture()
    addon.RXPOptions.icon:SetTexture("Interface/AddOns/" .. addonName ..
                                         "/Textures/rxp_logo-64")
    addon.RXPOptions.icon:SetPoint("TOPRIGHT", -5, -5)

    local index = 0
    local options = {}
    local button
    -- addon.settings.db.profile
    button = CreateFrame("CheckButton", "$parentHideCompleted",
                         addon.RXPOptions, "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.hideCompletedSteps = self:GetChecked()
        addon.RXPFrame.ScrollFrame.ScrollBar:SetValue(0)
    end)
    button:SetChecked(RXPData.hideCompletedSteps)
    button.Text:SetText(L("Hide completed steps"))
    button.tooltip = L(
                         "Only shows current and future steps on the step list window")
    --
    button = CreateFrame("CheckButton", "$parentMapCircle", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.mapCircle = self:GetChecked()
        addon.updateMap = true
    end)
    button:SetChecked(RXPData.mapCircle)
    button.Text:SetText(L("Highlight active map pins"))
    button.tooltip = L("Show a targeting circle around active map pins")
    --[[
    if QuestieLoader then
        button = CreateFrame("CheckButton", "$parentSkipPreReqs", addon.RXPOptions, "ChatConfigCheckButtonTemplate");
        table.insert(options,button)
        button:SetPoint("TOPLEFT",options[index],"BOTTOMLEFT",0,0)
        index = index + 1
        button:SetScript("PostClick",function(self)
            RXPData.skipMissingPreReqs = self:GetChecked()
        end)
        button:SetChecked(RXPData.skipMissingPreReqs)
        button.Text:SetText("Skip quests with missing pre-requisites")
        button.tooltip = "Automatically skip tasks in which you don't have the required quest pre-requisites\n(Requires Questie)"
    end]]
    --
    if _G.unitscan_targets then
        button = CreateFrame("CheckButton", "$parentUnitscan", addon.RXPOptions,
                             "ChatConfigCheckButtonTemplate");
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPData.disableUnitscan = not self:GetChecked()
        end)
        button:SetChecked(not RXPData.disableUnitscan)
        button.Text:SetText(L("Unitscan integration"))
        button.tooltip = L(
                             "Automatically adds important npcs to your unitscan list")
    end

    if addon.game == "CLASSIC" then
        button = CreateFrame("CheckButton", "$parentHC", addon.RXPOptions,
                             "ChatConfigCheckButtonTemplate");
        addon.hardcoreButton = button
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPCData.hardcore = self:GetChecked()
            addon.RenderFrame()
        end)
        button:SetChecked(RXPCData.hardcore)
        button.Text:SetText(L("Hardcore mode"))
        button.tooltip =
            L("Adjust the leveling routes to the deathless ruleset")

        button = CreateFrame("CheckButton", "$parentSoM", addon.RXPOptions,
                             "ChatConfigCheckButtonTemplate");
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPCData.SoM = self:GetChecked()
            addon.RXPFrame.GenerateMenuTable()
            addon.ReloadGuide()
        end)
        button:SetChecked(RXPCData.SoM)
        button.Text:SetText(L("Season of Mastery"))
        button.tooltip = L(
                             "Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)")
    elseif addon.gameVersion > 30000 then
        button = CreateFrame("CheckButton", "$parentNorthrendLM",
                             addon.RXPOptions, "ChatConfigCheckButtonTemplate");
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPCData.northrendLM = self:GetChecked()
            addon.ReloadGuide()
        end)
        button:SetChecked(RXPCData.northrendLM)
        button.Text:SetText(L("Northrend Loremaster"))
        button.tooltip = L(
                             "Adjust the routes to include almost every quest in the Northrend zones")
    end

    local SliderUpdate = function(self, value)
        self.ref[self.key] = value
        local updateFunc = self.updateFunc or string.format
        self.Text:SetText(updateFunc(self.defaultText, value))
        addon.RXPFrame:SetScale(RXPData.windowSize)
        local size = RXPData.arrowSize
        addon.arrowFrame:SetSize(32 * size, 32 * size)
        addon.arrowFrame.text:SetFont(addon.font, RXPData.arrowText, "OUTLINE")
        RXPData.numMapPins = math.floor(RXPData.numMapPins)
        addon.updateMap = true
        if (self.key == "phase" or self.key == "xprate") and addon.currentGuide then
            addon.ReloadGuide()
            addon.RXPFrame.GenerateMenuTable()
        end
        addon.RXPFrame.SetStepFrameAnchor()
    end

    local CreateSlider = function(ref, key, smin, smax, text, tooltip, anchor,
                                  x, y, steps, minText, maxText, updateFunc)
        local slider, dvalue

        slider = CreateFrame("Slider", "$parentArrowSlider", addon.RXPOptions,
                             "OptionsSliderTemplate")
        slider:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", x, y)
        slider:SetOrientation('HORIZONTAL')
        if steps then
            slider:SetValueStep(steps)
            slider:SetStepsPerPage(steps)
            slider:SetObeyStepOnDrag(true)
        end
        slider:SetThumbTexture(
            "Interface/Buttons/UI-SliderBar-Button-Horizontal")
        slider.ref = ref
        slider.key = key
        dvalue = ref[key] or smin

        slider.defaultText = text
        slider.tooltipText = tooltip
        slider:SetScript("OnValueChanged", SliderUpdate)

        slider:SetMinMaxValues(smin, smax)
        SliderUpdate(slider, dvalue)
        slider:SetValue(dvalue)

        slider.Low:SetText(minText or tostring(smin));
        slider.High:SetText(maxText or tostring(smax));

        slider.updateFunc = updateFunc

        return slider
    end
    local slider
    slider = CreateSlider(RXPData, "arrowSize", 0.2, 2, L("Arrow Scale: %.2f"),
                          L("Scale of the Waypoint Arrow"),
                          addon.RXPOptions.title, 315, -25, 0.05)
    slider = CreateSlider(RXPData, "arrowText", 5, 20, L("Arrow Text Size: %d"),
                          L("Size of the waypoint arrow text"), slider, 0, -25,
                          1)
    slider = CreateSlider(RXPData, "windowSize", 0.2, 2,
                          L("Window Scale: %.2f"), L(
                              "Scale of the Main Window, use alt+left click on the main window to resize it"),
                          slider, 0, -25, 0.05)
    slider = CreateSlider(RXPData, "numMapPins", 1, 20,
                          L("Number of Map Pins: %d"),
                          L("Number of map pins shown on the world map"),
                          slider, 0, -25, 1, "1", "20")
    slider = CreateSlider(RXPData, "worldMapPinScale", 0.05, 1,
                          L("Map Pin Scale: %.2f"),
                          L("Adjusts the size of the world map pins"), slider,
                          0, -25, 0.05, "0.05", "1")
    slider = CreateSlider(RXPData, "distanceBetweenPins", 0.05, 2,
                          ("Distance Between Pins: %.2f"), L(
                              "If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group."),
                          slider, 0, -25, 0.05, "0.05", "2")
    slider = CreateSlider(RXPData, "worldMapPinBackgroundOpacity", 0, 1,
                          L("Map Pin Background Opacity: %.2f"), L(
                              "The opacity of the black circles on the map and mini map"),
                          slider, 0, -25, 0.05, "0", "1")
    slider = CreateSlider(RXPData, "anchorOrientation", -1, 1,
                          L("Current step frame anchor"), L(
                              "Sets the current step frame to grow from bottom to top or top to bottom by default"),
                          slider, 0, -25, 2, "Bottom", "Top")

    slider = CreateSlider(RXPData, "batchSize", 1, 100,
                          L("Batching window size: %d ms"), L(
                              "Adjusts the batching window tolerance, used for hearthstone batching"),
                          slider, 0, -25, 1, "1", "100")

    if addon.game == "CLASSIC" then
        slider = CreateSlider(RXPCData, "phase", 1, 6, L("Content phase: %d"),
                              L(
                                  "Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests"),
                              slider, 0, -25, 1, "1", "6")
    elseif addon.gameVersion < 40000 then
        slider = CreateSlider(RXPCData, "xprate", 1, 1.5,
                              L("Experience rates: %.1fx"), L(
                                  "Adjusts the guide routes to match increased xp rate bonuses"),
                              slider, 0, -25, 0.5, "1x", "1.5x")
    end
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
    importFrame.text:SetFont(addon.font, 14)
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

function addon.settings.CreateNewOptionsPanel()
    local function isNotAdvanced()
        return not addon.settings.db.profile.enableBetaFeatures
    end

    local function requiresReload()
        return L("This requires a reload to take effect, continue?")
    end

    local extraOptionsTable = {
        type = "group",
        name = addon.title,
        get = GetProfileOption,
        set = SetProfileOption,
        childGroups = "tab",
        args = {
            buffer = { -- Buffer hacked in right-aligned icon
                order = 1,
                name = addon.versionText,
                type = "description",
                width = "full",
                fontSize = "medium"
            },
            mainSettings = {
                type = "group",
                name = L("Main"),
                order = 2,
                args = {
                    enableQuestAutomation = {
                        name = L("Quest auto accept/turn in"),
                        desc = L(
                            "Holding the Control key modifier also toggles the quest auto accept feature on and off"),
                        type = "toggle",
                        width = "normal",
                        order = 1
                    },
                    enableTrainerAutomation = {
                        name = L("Trainer automation"),
                        desc = L(
                            "Allows the guide to buy useful leveling spells automatically"),
                        type = "toggle",
                        width = "normal",
                        order = 2
                    },
                    hideMiniMapPins = {
                        name = L("Hide Mini Map Pins"),
                        type = "toggle",
                        width = "normal",
                        order = 3
                    },
                    showUnusedGuides = {
                        name = L("Show unused guides"),
                        desc = L(
                            "Displays guides that are not applicable for your class/race such as starting zones for other races"),
                        type = "toggle",
                        width = "normal",
                        order = 2,
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
                        width = "normal",
                        order = 2,
                        hidden = true, -- TODO, Impossible situation with character-specific settings
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame.GenerateMenuTable()
                        end
                    },
                    disableArrow = {
                        name = L("Hide waypoint arrow"),
                        type = "toggle",
                        width = "normal",
                        order = 2,
                        hidden = true, -- TODO, Impossible situation with character-specific settings
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.updateMap = true
                        end
                    },
                    disableItemWindow = {
                        name = L("Hide Active Item window"),
                        type = "toggle",
                        width = "normal",
                        order = 2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.UpdateItemFrame()
                        end
                    },
                    hideWindow = {
                        name = L("Hide Window"),
                        desc = L("Hides the main window"),
                        type = "toggle",
                        width = "normal",
                        order = 2,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.RXPFrame:SetShown(not value)
                        end
                    },
                    lockFrames = {
                        name = L("Lock Frames"),
                        desc = L(
                            "Disable dragging/resizing, use alt+left click on the main window to resize it"),
                        type = "toggle",
                        width = "normal",
                        order = 2
                    },
                    showStepList = { -- Not actually a direct setting, indirectly frameHeight
                        name = L("Show step list"),
                        desc = L(
                            "Show/Hide the bottom frame listing all the steps of the current guide"),
                        type = "toggle",
                        width = "normal",
                        order = 2,
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
                    enableMinimapButton = {
                        name = L("Enable Minimap Button"),
                        desc = L("Add main options menu to minimap"),
                        type = "toggle",
                        width = "normal",
                        order = 9,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if value then
                                LibDBIcon:Show(addonName)
                            else
                                LibDBIcon:Hide(addonName)
                            end
                        end
                    }
                }
            },
            optionalFeatures = {
                type = "group",
                name = L("Optional Features"),
                order = 3,
                args = {
                    trackerOptionsHeader = {
                        name = L("Leveling Tracker"),
                        type = "header",
                        width = "full",
                        order = 1
                    },
                    enableTracker = {
                        name = L("Enable Leveling Tracker"),
                        type = "toggle",
                        width = "full",
                        order = 2,
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
                        order = 3,
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
                        order = 4,
                        confirm = requiresReload,
                        disabled = function()
                            return not addon.settings.db.profile.enableTracker
                        end,
                        hidden = isNotAdvanced
                    },
                    splitsOptionsHeader = {
                        name = L("Level Splits"),
                        type = "header",
                        width = "full",
                        order = 5
                    },
                    enablelevelSplits = {
                        name = L("Enable Level Splits"),
                        type = "toggle",
                        width = "normal",
                        order = 6,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            if addon.settings.db.profile.enablelevelSplits then
                                addon.tracker:CreateLevelSplits()
                                addon.tracker:UpdateLevelSplits("full")
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
                        order = 7,
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
                        order = 8,
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
                        order = 9,
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
                        order = 10,
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
                        order = 11,
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
            advancedSettings = {
                type = "group",
                name = L("Advanced Settings"),
                order = 5,
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
                        order = 2,
                        hidden = isNotAdvanced
                    }
                }
            }
        }
    }

    AceConfig:RegisterOptionsTable(addon.title .. "/New", extraOptionsTable)

    addon.settings.gui.new = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                 addon.title .. "/New", L("New"), addon.title)

    -- Ace3 ConfigDialog doesn't support embedding icons in header
    -- Directly references Ace3 built frame object
    -- Hackery ahead

    local extrasFrame = addon.settings.gui.new.obj.frame
    extrasFrame.icon = extrasFrame:CreateTexture()
    extrasFrame.icon:SetTexture("Interface\\AddOns\\" .. addonName ..
                                    "\\Textures\\rxp_logo-64")
    extrasFrame.icon:SetPoint("TOPRIGHT", -5, -5)

end

local function buildMinimapMenu()
    local menu = {}
    addon.RXPFrame.GenerateMenuTable(menu)

    if addon.settings.db.profile.minimap.show then
        table.insert(menu, #menu, {
            text = _G.HIDE,
            notCheckable = 1,
            func = function() addon.settings.HideActive() end
        })
    else
        table.insert(menu, #menu, {
            text = _G.SHOW,
            notCheckable = 1,
            func = function() addon.settings.RestoreActive() end
        })
    end

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
                if addon.settings.db.profile.minimap.show then
                    addon.settings.HideActive()
                else
                    addon.settings.RestoreActive()
                end
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

function addon.settings.HideActive()
    for _, frame in pairs(addon.activeFrames) do
        frame.restoreState = frame:IsShown()
        if frame.restoreState then frame:Hide() end
    end

    addon.settings.db.profile.minimap.show = false
end

function addon.settings.RestoreActive()
    for _, frame in pairs(addon.activeFrames) do
        if frame.restoreState then frame:Show() end
    end

    addon.settings.db.profile.minimap.show = true
end
