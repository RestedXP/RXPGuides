local addonName, addon = ...

local _G = _G

local AceConfig = LibStub("AceConfig-3.0")

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
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.extras)
        _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.extras)
    elseif input == "debug" then
        addon.settings.db.profile.debug = not addon.settings.db.profile.debug

        if addon.settings.db.profile.debug then
            _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.extras)
            _G.InterfaceOptionsFrame_OpenToCategory(addon.settings.gui.extras)
        end
    elseif input == "splits" then
        addon.tracker:ToggleLevelSplits()
    elseif input == "show" then
        -- Do not persist change, temporary toggle
        addon.RXPFrame:SetShown(true)
    elseif input == "hide" then
        -- Do not persist change, temporary toggle
        addon.RXPFrame:SetShown(false)
    elseif input == "support" or input == "ticket" or input == "bug" or input == "feedback" then
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
            levelSplitsHistory = GetMaxPlayerLevel(),
            levelSplitsFontSize = 11,
            levelSplitsOpacity = 0.9
        }
    }

    self.db = LibStub("AceDB-3.0"):New("RXPCSettings",
                                                 settingsDBDefaults)

    self.CreateOptionsPanel()
    self.CreateImportOptionsPanel()
    self.CreateExtrasOptionsPanel()

    self:RegisterChatCommand("rxp", self.ChatCommand)
    self:RegisterChatCommand("rxpg", self.ChatCommand)
    self:RegisterChatCommand("rxpguides", self.ChatCommand)
end

local function GetProfileOption(info)
    return addon.settings.db.profile[info[#info]]
end

local function SetProfileOption(info, value)
    addon.settings.db.profile[info[#info]] = value
end


function addon.settings.CreateOptionsPanel()
    addon.RXPOptions = CreateFrame("Frame", "RXPOptions")
    addon.RXPOptions.name = "RXP Guides"
    _G.InterfaceOptions_AddCategory(addon.RXPOptions)

    addon.RXPOptions.title = addon.RXPOptions:CreateFontString(nil, "ARTWORK",
                                                               "GameFontNormalLarge")
    addon.RXPOptions.title:SetPoint("TOPLEFT", 16, -16)
    addon.RXPOptions.title:SetText(L("RestedXP Guides"))

    addon.RXPOptions.subtext = addon.RXPOptions:CreateFontString(nil, "ARTWORK",
                                                                 "GameFontHighlightSmall")
    addon.RXPOptions.subtext:SetPoint("TOPLEFT", addon.RXPOptions.title,
                                      "BOTTOMLEFT", 0, -8)
    addon.RXPOptions.subtext:SetText(addon.versionText)

    addon.RXPOptions.icon = addon.RXPOptions:CreateTexture()
    addon.RXPOptions.icon:SetTexture("Interface/AddOns/" .. addonName ..
                                         "/Textures/rxp_logo-64")
    addon.RXPOptions.icon:SetPoint("TOPRIGHT", -5, -5)

    -- panel.icon:SetSize(64,64)
    local index = 0
    local options = {}
    local button = CreateFrame("CheckButton", "$parentQuestTurnIn",
                               addon.RXPOptions, "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    index = index + 1
    button:SetPoint("TOPLEFT", addon.RXPOptions.title, "BOTTOMLEFT", 0, -25)
    button:SetScript("PostClick", function(self)
        RXPData.disableQuestAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableQuestAutomation)
    button.Text:SetText(L("Quest auto accept/turn in"))
    button.tooltip =
        L("Holding the Control key modifier also toggles the quest the quest auto accept feature on and off")

    button = CreateFrame("CheckButton", "$parentTrainer", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.disableTrainerAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableTrainerAutomation)
    button.Text:SetText(L("Trainer automation"))
    button.tooltip =
        L("Allows the guide to buy useful leveling spells automatically")

    button = CreateFrame("CheckButton", "$parentFP", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.disableFPAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableFPAutomation)
    button.Text:SetText(L("Flight Path automation"))
    button.tooltip =
        L("Allows the guide to automatically fly you to your destination")


    button = CreateFrame("CheckButton", "$parentMiniMapPin", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.hideMiniMapPins = self:GetChecked()
        addon.UpdateMap()
    end)
    button:SetChecked(RXPData.hideMiniMapPins)
    button.Text:SetText(L("Hide Mini Map Pins"))
    -- button.tooltip = ""

    button = CreateFrame("CheckButton", "$parentUnusedGuides", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.hideUnusedGuides = not self:GetChecked()
        addon.RXPFrame.GenerateMenuTable()
    end)
    button:SetChecked(not RXPData.hideUnusedGuides)
    button.Text:SetText(L("Show unused guides"))
    button.tooltip =
        L("Displays guides that are not applicable for your class/race such as starting zones for other races")

    button = CreateFrame("CheckButton", "$parentAutoLoad", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.autoLoadGuides = self:GetChecked()
    end)
    button:SetChecked(RXPData.autoLoadGuides)
    button.Text:SetText(L("Auto load starting zone guides"))
    button.tooltip =
        L("Automatically picks a suitable guide whenever you log in for the first time on a character")
    --
    button = CreateFrame("CheckButton", "$parentArrow", addon.RXPOptions,
    "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        local checkbox = self:GetChecked()
        addon.updateMap = true
        RXPCData.disableArrow = checkbox
    end)
    button:SetChecked(RXPCData.disableArrow)
    button.Text:SetText(L("Hide waypoint arrow"))
    --button.tooltip = "Show/Hide the waypoint arrow"
    --
    button = CreateFrame("CheckButton", "$parentActiveItem", addon.RXPOptions,
    "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPCData.disableItemWindow = self:GetChecked()
        addon.UpdateItemFrame()
    end)
    button:SetChecked(RXPCData.disableItemWindow)
    button.Text:SetText(L("Hide Active Item window"))
    --button.tooltip = "Show/Hide the Active Item Window"
    --
    button = CreateFrame("CheckButton", "$parentHideWindow", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        local hide = self:GetChecked()
        RXPCData.hideWindow = hide
        addon.RXPFrame:SetShown(not hide)
    end)
    button:SetChecked(RXPCData.hideWindow)
    button.Text:SetText(L("Hide Window"))
    button.tooltip = L("Hides the main window")

    button = CreateFrame("CheckButton", "$parentLock", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick",
                     function(self) RXPData.lockFrames = self:GetChecked() end)
    button:SetChecked(RXPData.lockFrames)
    button.Text:SetText(L("Lock Frames"))
    button.tooltip =
        L("Disable dragging/resizing, use alt+left click on the main window to resize it")
    --
    button = CreateFrame("CheckButton", "$parentShowUpcoming", addon.RXPOptions,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        if addon.currentGuide and addon.currentGuide.hidewindow then
            return
        end
        local show = self:GetChecked()
        if show then
            addon.RXPFrame:SetHeight(addon.height)
            RXPCData.frameHeight = addon.height
        else
            addon.RXPFrame:SetHeight(10)
            RXPCData.frameHeight = 10
        end
        addon.updateBottomFrame = true
    end)
    button:SetChecked(addon.RXPFrame.BottomFrame:GetHeight() >= 35)
    button.Text:SetText(L("Show step list"))
    button.tooltip =
        L("Show/Hide the bottom frame listing all the steps of the current guide")
    --
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
    button.tooltip =
        L("Only shows current and future steps on the step list window")
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
        button.tooltip =
            L("Automatically adds important npcs to your unitscan list")
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
        button.tooltip = L("Adjust the leveling routes to the deathless ruleset")

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
        button.tooltip =
            L("Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)")
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
        button.tooltip =
            L("Adjust the routes to include almost every quest in the Northrend zones")
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
                          L("Scale of the Waypoint Arrow"), addon.RXPOptions.title,
                          315, -25, 0.05)
    slider = CreateSlider(RXPData, "arrowText", 5, 20, L("Arrow Text Size: %d"),
                          L("Size of the waypoint arrow text"), slider, 0, -25, 1)
    slider = CreateSlider(RXPData, "windowSize", 0.2, 2, L("Window Scale: %.2f"),
                          L("Scale of the Main Window, use alt+left click on the main window to resize it"),
                          slider, 0, -25, 0.05)
    slider = CreateSlider(RXPData, "numMapPins", 1, 20,
                          L("Number of Map Pins: %d"),
                          L("Number of map pins shown on the world map"), slider,
                          0, -25, 1, "1", "20")
    slider = CreateSlider(RXPData, "worldMapPinScale", 0.05, 1,
                          L("Map Pin Scale: %.2f"),
                          L("Adjusts the size of the world map pins"), slider, 0,
                          -25, 0.05, "0.05", "1")
    slider = CreateSlider(RXPData, "distanceBetweenPins", 0.05, 2,
                          ("Distance Between Pins: %.2f"),
                          L("If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group."),
                          slider, 0, -25, 0.05, "0.05", "2")
    slider = CreateSlider(RXPData, "worldMapPinBackgroundOpacity", 0, 1,
                          L("Map Pin Background Opacity: %.2f"),
                          L("The opacity of the black circles on the map and mini map"),
                          slider, 0, -25, 0.05, "0", "1")
    slider = CreateSlider(RXPData, "anchorOrientation", -1, 1,
                          L("Current step frame anchor"),
                          L("Sets the current step frame to grow from bottom to top or top to bottom by default"),
                          slider, 0, -25, 2, "Bottom", "Top")

    slider = CreateSlider(RXPData, "batchSize", 1, 100,
                          L("Batching window size: %d ms"),
                          L("Adjusts the batching window tolerance, used for hearthstone batching"),
                          slider, 0, -25, 1, "1", "100")

    if addon.game == "CLASSIC" then
        slider = CreateSlider(RXPCData, "phase", 1, 6, L("Content phase: %d"),
                              L("Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests"),
                              slider, 0, -25, 1, "1", "6")
    elseif addon.gameVersion < 40000 then
        slider = CreateSlider(RXPCData, "xprate", 1, 1.5,
                              L("Experience rates: %.1fx"),
                              L("Adjusts the guide routes to match increased xp rate bonuses"),
                              slider, 0, -25, 0.5, "1x", "1.5x")
    end
    --[[
    if addon.farmGuides > 0 then
        local GApanel = CreateFrame("Frame", "RXPGAOptions")
        GApanel.name = "Gold Assistant"
        GApanel.parent = "RXP Guides"
        _G.InterfaceOptions_AddCategory(GApanel)

        GApanel.title = GApanel:CreateFontString(nil, "ARTWORK",
                                                 "GameFontNormalLarge")
        GApanel.title:SetPoint("TOPLEFT", 16, -16)
        GApanel.title:SetText("RestedXP Gold Assistant")

        GApanel.subtext = GApanel:CreateFontString(nil, "ARTWORK",
                                                   "GameFontHighlightSmall")
        GApanel.subtext:SetPoint("TOPLEFT", GApanel.title, "BOTTOMLEFT", 0, -8)
        GApanel.subtext:SetText(addon.versionText)

        GApanel.icon = GApanel:CreateTexture()
        GApanel.icon:SetTexture("Interface/AddOns/" .. addonName ..
                                    "/Textures/rxp_logo-64")
        GApanel.icon:SetPoint("TOPRIGHT", -5, -5)

    end]]

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
        return errorMsg or (L("Failed to Import Guides: Invalid Import String") .. relog)
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
                fontSize = "medium",

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
                disabled = function()
                    return addon.loading
                end,
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
                    return L("This action will remove ALL guides from the database\nAre you sure?")
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
            },
        }
    }

    AceConfig:RegisterOptionsTable("RXP Guides/Import", importOptionsTable)

    addon.settings.gui.import = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    "RXP Guides/Import", L("Import"), "RXP Guides")

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

function addon.settings.CreateExtrasOptionsPanel()
    local function isNotAdvanced()
        return addon.release ~= 'Development' or not addon.settings.db.profile.enableBetaFeatures
    end

    local function requiresReload()
        return L("This requires a reload to take effect, continue?")
    end

    local extraOptionsTable = {
        type = "group",
        name = "RestedXP " .. L("Extras"),
        get = GetProfileOption,
        set = SetProfileOption,
        childGroups = "tab",
        args = {
            buffer = { -- Buffer hacked in right-aligned icon
                order = 1,
                name = L("Optional extras"),
                type = "description",
                width = "full",
                fontSize = "medium"
            },
            optionalFeatures = {
                type = "group",
                name = L("Optional Features"),
                order = 2,
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
                        end,
                    },
                    openTrackerReportOnCharOpen = {
                        name = L("Always Open Leveling Report With Character Panel"),
                        desc = L("Enables the RestedXP Leveling Report when you open your character panel"),
                        type = "toggle",
                        width = "full",
                        order = 3,
                        confirm = requiresReload,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            _G.ReloadUI()
                        end,
                    },
                    enableLevelingReportInspections = {
                        name = L("Enable Leveling Report Inspections") .. " (Beta)",
                        desc = L("Send or receive inspection requests for other Leveling Reports"),
                        type = "toggle",
                        width = "full",
                        order = 4,
                        confirm = requiresReload,
                        disabled = function () --Requires function to dynamically update
                            return not addon.settings.db.profile.enableTracker
                        end,
                        hidden = isNotAdvanced,
                    },
                    splitsOptionsHeader = {
                        name = L("Level Splits") .. " (Beta)",
                        type = "header",
                        width = "full",
                        order = 5,
                        hidden = isNotAdvanced,
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
                        disabled = function () --Requires function to dynamically update
                            return not addon.settings.db.profile.enableTracker
                        end,
                        hidden = isNotAdvanced,
                    },
                    levelSplitsHistory = {
                        name = L("Level Splits History"),
                        desc = L("Historical levels to show"),
                        type = "range",
                        width = "normal",
                        order = 7,
                        min = 1,
                        max = GetMaxPlayerLevel(),
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function () --Requires function to dynamically update
                            return not addon.settings.db.profile.enablelevelSplits
                        end,
                        hidden = isNotAdvanced,
                    },
                    levelSplitsFontSize = {
                        name = L("Level Splits Font Size"),
                        type = "range",
                        width = "normal",
                        order = 8,
                        min = 9,
                        max = 17, -- Formatting gets wonky >=18
                        step = 1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function () --Requires function to dynamically update
                            return not addon.settings.db.profile.enablelevelSplits
                        end,
                        hidden = isNotAdvanced,
                    },
                    levelSplitsOpacity = {
                        name = L("Level Splits Opacity"),
                        desc = L("Lower number to make Level Splits more transparent"),
                        type = "range",
                        width = "normal",
                        order = 9,
                        min = 0.1,
                        max = 1,
                        step = 0.1,
                        set = function(info, value)
                            SetProfileOption(info, value)
                            addon.tracker:UpdateLevelSplits("full")
                        end,
                        disabled = function () --Requires function to dynamically update
                            return not addon.settings.db.profile.enablelevelSplits
                        end,
                        hidden = isNotAdvanced,
                    }
                },
            },
            communications = {
                type = "group",
                name = L("Communications"),
                order = 3,
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
                        name = L("Send announcements without another RXP user in group"),
                        desc = L("Without this checked we will only send announcements if another RestedXP User is in your group"),
                        type = "toggle",
                        width = "full",
                        order = 10
                    },
                    enableCompleteStepAnnouncements = {
                        name = L("Announce when Quest Step is completed"),
                        desc = L("Announce in party chat when you complete certain quests (.complete)"),
                        type = "toggle",
                        width = "full",
                        order = 11
                    },
                    enableCollectStepAnnouncements = {
                        name = L("Announce when all Step items are collected"),
                        desc = L("Announce in party chat when you collect all the items relevant to a quest (.collect)"),
                        type = "toggle",
                        width = "full",
                        order = 12
                    },
                    enableFlyStepAnnouncements = {
                        name = L("Announce Flying Step timers"),
                        desc = L("Announce in party chat where you're flying and how long until you arrive"),
                        type = "toggle",
                        width = "full",
                        order = 13
                    },
                    checkVersions = {
                        name = L("Enable Addon Version Checks"),
                        desc = L("Advertises and compares addon versions with all RXP users in party"),
                        type = "toggle",
                        width = "full",
                        order = 14,
                    },
                    ignoreQuestieConflicts = {
                        name = L("Ignore Questie announcements"),
                        desc = L("Send quest and collect step announcements even if Questie is enabled"),
                        type = "toggle",
                        width = "full",
                        order = 15,
                        hidden = not _G.Questie
                    },
                }
            },
            advancedSettings = {
                type = "group",
                name = L("Advanced Settings"),
                order = 4,
                args = {
                    enableBetaFeatures = {
                        name = L("Enable Beta Features"),
                        desc = L("Enables new features, forces reload to take effect"),
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
                        hidden = isNotAdvanced,
                    },
                }
            }
        }
    }

    AceConfig:RegisterOptionsTable("RXP Guides/Extras", extraOptionsTable)

    addon.settings.gui.extras = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    "RXP Guides/Extras", L("Extras"), "RXP Guides")

    -- Ace3 ConfigDialog doesn't support embedding icons in header
    -- Directly references Ace3 built frame object
    -- Hackery ahead

    local extrasFrame = addon.settings.gui.extras.obj.frame
    extrasFrame.icon = extrasFrame:CreateTexture()
    extrasFrame.icon:SetTexture("Interface\\AddOns\\" .. addonName ..
                                    "\\Textures\\rxp_logo-64")
    extrasFrame.icon:SetPoint("TOPRIGHT", -5, -5)

end
