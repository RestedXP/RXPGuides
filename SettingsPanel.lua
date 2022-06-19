local addonName = ...

local AceConfig = LibStub("AceConfig-3.0")
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")

SLASH_RXPG1 = "/rxp"
SLASH_RXPG2 = "/rxpg"
SLASH_RXPG3 = "/rxpguides"

SlashCmdList["RXPG"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory(RXPOptions)
    InterfaceOptionsFrame_OpenToCategory(RXPOptions)
end

if not RXP_.settings then
    RXP_.settings = {gui = {}, functions = {}}
else
    if not RXP_.settings.gui then RXP_.settings.gui = {} end
    if not RXP_.settings.functions then RXP_.settings.functions = {} end
end

function RXP_.CreateOptionsPanel()
    local panel = CreateFrame("Frame", "RXPOptions")
    panel.name = "RXP Guides"
    InterfaceOptions_AddCategory(panel)

    panel.title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    panel.title:SetPoint("TOPLEFT", 16, -16)
    panel.title:SetText("RestedXP Guides")

    panel.subtext = panel:CreateFontString(nil, "ARTWORK",
                                           "GameFontHighlightSmall")
    panel.subtext:SetPoint("TOPLEFT", panel.title, "BOTTOMLEFT", 0, -8)
    panel.subtext:SetText(versionText)

    panel.icon = panel:CreateTexture()
    panel.icon:SetTexture("Interface/AddOns/" .. addonName ..
                              "/Textures/rxp_logo-64")
    panel.icon:SetPoint("TOPRIGHT", -5, -5)

    -- panel.icon:SetSize(64,64)
    local index = 0
    local options = {}
    local button = CreateFrame("CheckButton", "$parentQuestTurnIn", panel,
                               "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    index = index + 1
    button:SetPoint("TOPLEFT", panel.title, "BOTTOMLEFT", 0, -25)
    button:SetScript("PostClick", function(self)
        RXPData.disableQuestAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableQuestAutomation)
    button.Text:SetText("Quest auto accept/turn in")
    button.tooltip =
        "Holding the Control key modifier also toggles the quest the quest auto accept feature on and off"

    button = CreateFrame("CheckButton", "$parentTrainer", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.disableTrainerAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableTrainerAutomation)
    button.Text:SetText("Trainer automation")
    button.tooltip =
        "Allows the guide to buy useful leveling spells automatically"

    button = CreateFrame("CheckButton", "$parentFP", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.disableFPAutomation = not self:GetChecked()
    end)
    button:SetChecked(not RXPData.disableFPAutomation)
    button.Text:SetText("Flight Path automation")
    button.tooltip =
        "Allows the guide to automatically fly you to your destination"

    button = CreateFrame("CheckButton", "$parentArrow", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        local checkbox = self:GetChecked()
        RXP_.arrowFrame:SetShown(RXP_.currentGuide and checkbox)
        RXPData.disableArrow = not checkbox
    end)
    button:SetChecked(not RXPData.disableArrow)
    button.Text:SetText("Enable waypoint arrow")
    button.tooltip = "Show/Hide the waypoint arrow"

    button = CreateFrame("CheckButton", "$parentMiniMapPin", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.hideMiniMapPins = self:GetChecked()
        RXP_.UpdateMap()
    end)
    button:SetChecked(RXPData.hideMiniMapPins)
    button.Text:SetText("Hide Mini Map Pins")
    -- button.tooltip = ""

    button = CreateFrame("CheckButton", "$parentUnusedGuides", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.hideUnusedGuides = not self:GetChecked()
        RXPFrame.GenerateMenuTable()
    end)
    button:SetChecked(not RXPData.hideUnusedGuides)
    button.Text:SetText("Show unused guides")
    button.tooltip =
        "Displays guides that are not applicable for your class/race such as starting zones for other races"

    button = CreateFrame("CheckButton", "$parentAutoLoad", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.autoLoadGuides = self:GetChecked()
    end)
    button:SetChecked(RXPData.autoLoadGuides)
    button.Text:SetText("Auto load starting zone guides")
    button.tooltip =
        "Automatically picks a suitable guide whenever you log in for the first time on a character"
    --
    button = CreateFrame("CheckButton", "$parentHideWindow", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        local hide = self:GetChecked()
        RXPCData.hideWindow = hide
        RXPFrame:SetShown(not hide)
    end)
    button:SetChecked(RXPCData.hideWindow)
    button.Text:SetText("Hide Window")
    button.tooltip = "Hides the main window"

    button = CreateFrame("CheckButton", "$parentLock", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick",
                     function(self) RXPData.lockFrames = self:GetChecked() end)
    button:SetChecked(RXPData.lockFrames)
    button.Text:SetText("Lock Frames")
    button.tooltip =
        "Disable dragging/resizing, use alt+left click on the main window to resize it"
    --
    button = CreateFrame("CheckButton", "$parentShowUpcoming", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        if RXP_.currentGuide and RXP_.currentGuide.hidewindow then return end
        local show = self:GetChecked()
        if show then
            RXPFrame:SetHeight(RXP_.height)
            RXPCData.frameHeight = RXP_.height
        else
            RXPFrame:SetHeight(10)
            RXPCData.frameHeight = 10
        end
        RXP_.updateBottomFrame = true
    end)
    button:SetChecked(RXPFrame.BottomFrame:GetHeight() >= 35)
    button.Text:SetText("Show step list")
    button.tooltip =
        "Show/Hide the bottom frame listing all the steps of the current guide"
    --
    button = CreateFrame("CheckButton", "$parentHideCompleted", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.hideCompletedSteps = self:GetChecked()
        RXPFrame.SF.ScrollBar:SetValue(0)
    end)
    button:SetChecked(RXPData.hideCompletedSteps)
    button.Text:SetText("Hide completed steps")
    button.tooltip =
        "Only shows current and future steps on the step list window"
    --
    button = CreateFrame("CheckButton", "$parentMapCircle", panel,
                         "ChatConfigCheckButtonTemplate");
    table.insert(options, button)
    button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
    index = index + 1
    button:SetScript("PostClick", function(self)
        RXPData.mapCircle = self:GetChecked()
        RXP_.updateMap = true
    end)
    button:SetChecked(RXPData.mapCircle)
    button.Text:SetText("Highlight active map pins")
    button.tooltip = "Show a targeting circle around active map pins"
    --[[
    if QuestieLoader then
        button = CreateFrame("CheckButton", "$parentSkipPreReqs", panel, "ChatConfigCheckButtonTemplate");
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
    if unitscan_targets then
        button = CreateFrame("CheckButton", "$parentUnitscan", panel,
                             "ChatConfigCheckButtonTemplate");
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPData.disableUnitscan = not self:GetChecked()
        end)
        button:SetChecked(not RXPData.disableUnitscan)
        button.Text:SetText("Unitscan integration")
        button.tooltip =
            "Automatically adds important npcs to your unitscan list"
    end

    if RXP_.version == "CLASSIC" then
        button = CreateFrame("CheckButton", "$parentHC", panel,
                             "ChatConfigCheckButtonTemplate");
        RXP_.hardcoreButton = button
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPCData.hardcore = self:GetChecked()
            RXP_.RenderFrame()
        end)
        button:SetChecked(RXPCData.hardcore)
        button.Text:SetText("Hardcore mode")
        button.tooltip = "Adjust the leveling routes to the deathless ruleset"

        button = CreateFrame("CheckButton", "$parentSoM", panel,
                             "ChatConfigCheckButtonTemplate");
        table.insert(options, button)
        button:SetPoint("TOPLEFT", options[index], "BOTTOMLEFT", 0, 0)
        index = index + 1
        button:SetScript("PostClick", function(self)
            RXPCData.SoM = self:GetChecked()
            RXPFrame.GenerateMenuTable()
            RXP_.ReloadGuide()
        end)
        button:SetChecked(RXPCData.SoM)
        button.Text:SetText("Season of Mastery")
        button.tooltip =
            "Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)"

    end

    local SliderUpdate = function(self, value)
        self.ref[self.key] = value
        self.Text:SetText(format(self.defaultText, value))
        RXPFrame:SetScale(RXPData.windowSize)
        local size = RXPData.arrowSize
        RXP_.arrowFrame:SetSize(32 * size, 32 * size)
        RXP_.arrowFrame.text:SetFont(RXP_.font, RXPData.arrowText)
        RXPData.numMapPins = math.floor(RXPData.numMapPins)
        RXP_.updateMap = true
        if self.key == "phase" and RXP_.currentGuide then
            RXP_.ReloadGuide()
        end
        RXPFrame.SetStepFrameAnchor()
    end

    local CreateSlider = function(ref, key, smin, smax, text, tooltip, anchor,
                                  x, y, steps, minText, maxText)
        local slider, dvalue

        slider = CreateFrame("Slider", "$parentArrowSlider", panel,
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
        return slider
    end
    local slider
    slider = CreateSlider(RXPData, "arrowSize", 0.2, 2, "Arrow Scale: %.2f",
                          "Scale of the Waypoint Arrow", panel.title, 315, -25,
                          0.05)
    slider = CreateSlider(RXPData, "arrowText", 5, 20, "Arrow Text Size: %d",
                          "Size of the waypoint arrow text", slider, 0, -25, 1)
    slider = CreateSlider(RXPData, "windowSize", 0.2, 2, "Window Scale: %.2f",
                          "Scale of the Main Window, use alt+left click on the main window to resize it",
                          slider, 0, -25, 0.05)
    slider = CreateSlider(RXPData, "numMapPins", 1, 20,
                          "Number of Map Pins: %d",
                          "Number of map pins shown on the world map", slider,
                          0, -25, 1, "1", "20")
    slider = CreateSlider(RXPData, "worldMapPinScale", 0.05, 1,
                          "Map Pin Scale: %.2f",
                          "Adjusts the size of the world map pins", slider, 0,
                          -25, 0.05, "0.05", "1")
    slider = CreateSlider(RXPData, "distanceBetweenPins", 0.05, 2,
                          "Distance Between Pins: %.2f",
                          "If two or more steps are very close together, this addon will group them into a single pin on the map. Adjust this range to determine how close together two steps must be to form a group.",
                          slider, 0, -25, 0.05, "0.05", "2")
    slider = CreateSlider(RXPData, "worldMapPinBackgroundOpacity", 0, 1,
                          "Map Pin Background Opacity: %.2f",
                          "The opacity of the black circles on the map and mini map",
                          slider, 0, -25, 0.05, "0", "1")
    slider = CreateSlider(RXPData, "anchorOrientation", -1, 1,
                          "Current step frame anchor",
                          "Sets the current step frame to grow from bottom to top or top to bottom by default",
                          slider, 0, -25, 2, "Bottom", "Top")

    slider = CreateSlider(RXPData, "batchSize", 1, 100,
                          "Batching window size: %d ms",
                          "Adjusts the batching window tolerance, used for hearthstone batching",
                          slider, 0, -25, 1, "1", "100")

    if RXP_.version == "CLASSIC" then
        slider = CreateSlider(RXPCData, "phase", 1, 6, "Content phase: %d",
                              "Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests",
                              slider, 0, -25, 1, "1", "6")
    end

    if RXP_.farmGuides > 0 then
        local GApanel = CreateFrame("Frame", "RXPGAOptions")
        GApanel.name = "Gold Assistant"
        GApanel.parent = "RXP Guides"
        InterfaceOptions_AddCategory(GApanel)

        GApanel.title = GApanel:CreateFontString(nil, "ARTWORK",
                                                 "GameFontNormalLarge")
        GApanel.title:SetPoint("TOPLEFT", 16, -16)
        GApanel.title:SetText("RestedXP Gold Assistant")

        GApanel.subtext = GApanel:CreateFontString(nil, "ARTWORK",
                                                   "GameFontHighlightSmall")
        GApanel.subtext:SetPoint("TOPLEFT", GApanel.title, "BOTTOMLEFT", 0, -8)
        GApanel.subtext:SetText(versionText)

        GApanel.icon = GApanel:CreateTexture()
        GApanel.icon:SetTexture("Interface/AddOns/" .. addonName ..
                                    "/Textures/rxp_logo-64")
        GApanel.icon:SetPoint("TOPRIGHT", -5, -5)

    end

    local importOptionsTable = {
        type = "group",
        name = "RestedXP Guide Import",
        handler = RXP_.settings.functions,
        -- get = "getProfileOption",
        -- set = "setProfileOption",
        args = {
            importBox = {
                order = 1,
                type = 'input',
                name = 'Guides to import',
                width = "full",
                multiline = 10,
                -- usage = "Usage string",
                set = function(_, val)
                    RXP_.settings.gui.importGuideText = val
                    RXP_.settings.functions.ImportBoxSet(val)
                    RXP_.settings.gui.importGuideText = ""
                    RXP_.settings.gui.selectedDeleteGuide = "mustReload"
                end,
                get = function()
                    return RXP_.settings.gui.importGuideText
                end,
                validate = function(_, val)
                    return RXP_.settings.functions.ImportBoxValidate(val)
                end
            },
            currentGuides = {
                order = 2,
                type = 'select',
                style = 'dropdown',
                name = "Currently loaded imported guides",
                width = 'full',
                values = function()
                    return RXP_.settings.functions.GetImportedGuides()
                end,
                disabled = function()
                    return
                        RXP_.settings.gui.selectedDeleteGuide == "mustReload" or
                            RXP_.settings.gui.selectedDeleteGuide == "none" or
                            RXP_.settings.gui.selectedDeleteGuide == ""
                end,
                get = function()
                    return RXP_.settings.gui.selectedDeleteGuide
                end,
                set = function(_, value)
                    RXP_.settings.gui.selectedDeleteGuide = value
                end
                -- set = false
            },
            deleteSelectedGuide = {
                order = 3,
                type = 'execute',
                name = "Delete imported guide",
                confirm = function(_, key)
                    if RXP_.settings.gui.selectedDeleteGuide == "" or
                        RXP_.settings.gui.selectedDeleteGuide == "none" then
                        return false
                    end
                    return string.format("Remove %s?",
                                         RXP_.settings.gui.selectedDeleteGuide)
                end,
                disabled = function()
                    return
                        RXP_.settings.gui.selectedDeleteGuide == "mustReload" or
                            RXP_.settings.gui.selectedDeleteGuide == "none" or
                            RXP_.settings.gui.selectedDeleteGuide == ""
                end,
                func = function(_)
                    if RXPGuides.db.profile.guides[RXP_.settings.gui
                        .selectedDeleteGuide] then
                        RXPGuides.db.profile.guides[RXP_.settings.gui
                            .selectedDeleteGuide] = nil
                    end

                    RXP_.settings.gui.selectedDeleteGuide = "mustReload"
                end
            },
            reloadGuides = {
                order = 4,
                name = "Reload guides and UI",
                type = 'execute',
                func = function() _G.ReloadUI() end,
                disabled = function()
                    return RXP_.settings.gui.selectedDeleteGuide ~= "mustReload"
                end
            }
        }
    }

    AceConfig:RegisterOptionsTable("RXP Guides/Import", importOptionsTable)

    RXP_.settings.gui.import = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                   "RXP Guides/Import", "Import", "RXP Guides")
end

function RXP_.settings.functions.getProfileOption(info)
    return RXP_.db.profile[info[#info]]
end

function RXP_.settings.functions.setProfileOption(info, value)
    local key = info[#info]
    RXP_.db.profile[key] = value
end

function RXP_.settings.functions.ImportBoxSet(text)
    -- Is RXPGuides.RegisterGuide or RXPGuides.ImportGuide
    if 'RXPGuides' == strsub(text, 0, #'RXPGuides') then
        local loadedFunction, errorString = loadstring(
                                                "return function() \n" .. text ..
                                                    "\n end", "ImportGuideGUI")

        if errorString then return errorString end

        if loadedFunction then
            return loadedFunction()() -- execute return then Import/Register inner multi-function
        else
            return "No function detected"
        end
    else
        -- TODO
        return "ImportBoxSet: TODO not a legacy guide"
    end
end

function RXP_.settings.functions.ImportBoxValidate(text)
    -- Is RXPGuides.RegisterGuide or RXPGuides.ImportGuide
    if 'RXPGuides' == strsub(text, 0, #'RXPGuides') then
        local loadedFunction, errorString = loadstring(
                                                "return function() \n" .. text ..
                                                    "\n end", "ImportGuideGUI")

        return not errorString and loadedFunction
    else
        -- TODO
        return "ImportBoxValidate: TODO not a legacy guide"
    end
end

function RXP_.settings.functions.GetImportedGuides()
    local display = {none = ""}
    local importedGuidesFound = false

    if RXP_.settings.gui.selectedDeleteGuide == "mustReload" then
        return {mustReload = "Must reload UI"}
    end

    for _, guide in ipairs(RXP_.guides) do
        if guide.imported or guide.cache then
            importedGuidesFound = true
            display[guide.key] = string.format("%s - version %s", guide.key,
                                               guide.version)
        end
    end

    table.sort(display)

    if importedGuidesFound then
        return display
    else
        RXP_.settings.gui.selectedDeleteGuide = "none"
        return {none = "none"}
    end

end
