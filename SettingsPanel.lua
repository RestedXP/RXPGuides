local addonName, addon = ...

local AceConfig = LibStub("AceConfig-3.0")
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")

SLASH_RXPG1 = "/rxp"
SLASH_RXPG2 = "/rxpg"
SLASH_RXPG3 = "/rxpguides"
local importString = ""
local previousFrame = 0
local buffer = {}
local importFrame
local ProcessBuffer

SlashCmdList["RXPG"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory(RXPOptions)
    InterfaceOptionsFrame_OpenToCategory(RXPOptions)
end

if not addon.settings then
    addon.settings = {gui = {}, functions = {}}
else
    if not addon.settings.gui then addon.settings.gui = {} end
    if not addon.settings.functions then addon.settings.functions = {} end
end

addon.settings.gui.selectedDeleteGuide = ""

function addon.CreateOptionsPanel()
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
        addon.arrowFrame:SetShown(addon.currentGuide and checkbox)
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
        addon.UpdateMap()
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
        addon.RXPFrame.GenerateMenuTable()
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
        addon.RXPFrame:SetShown(not hide)
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
        addon.RXPFrame.SF.ScrollBar:SetValue(0)
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
        addon.updateMap = true
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

    if addon.version == "CLASSIC" then
        button = CreateFrame("CheckButton", "$parentHC", panel,
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
        button.Text:SetText("Hardcore mode")
        button.tooltip = "Adjust the leveling routes to the deathless ruleset"

        button = CreateFrame("CheckButton", "$parentSoM", panel,
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
        button.Text:SetText("Season of Mastery")
        button.tooltip =
            "Adjust the leveling routes to the Season of Mastery changes (40/100% quest xp)"

    end

    local SliderUpdate = function(self, value)
        self.ref[self.key] = value
        self.Text:SetText(format(self.defaultText, value))
        addon.RXPFrame:SetScale(RXPData.windowSize)
        local size = RXPData.arrowSize
        addon.arrowFrame:SetSize(32 * size, 32 * size)
        addon.arrowFrame.text:SetFont(addon.font, RXPData.arrowText)
        RXPData.numMapPins = math.floor(RXPData.numMapPins)
        addon.updateMap = true
        if self.key == "phase" and addon.currentGuide then
            addon.ReloadGuide()
        end
        addon.RXPFrame.SetStepFrameAnchor()
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

    if addon.version == "CLASSIC" then
        slider = CreateSlider(RXPCData, "phase", 1, 6, "Content phase: %d",
                              "Adjusts the guide routes to match the content phase\nPhase 2: Dire Maul quests\nPhase 3: 100% quest XP (SoM)\nPhase 4: ZG/Silithus quests\nPhase 5: AQ quests\nPhase 6: Eastern Plaguelands quests",
                              slider, 0, -25, 1, "1", "6")
    end

    if addon.farmGuides > 0 then
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
        handler = addon.settings.functions,
        -- get = "getProfileOption",
        -- set = "setProfileOption",
        args = {
            buffer = { -- Buffer hacked in right-aligned icon
                order = 1,
                name = "Paste encoded strings",
                type = "description",
                width = "full",
                fontSize = "medium"
            },
            importBox = {
                order = 10,
                type = 'input',
                name = 'Guides to import',
                width = "full",
                multiline = 5,
                -- usage = "Usage string",

                validate = function(_, val)
                    return addon.settings.functions.ImportBoxValidate(val)
                end
            },
            currentGuides = {
                order = 11,
                type = 'select',
                style = 'dropdown',
                name = "Currently loaded imported guides",
                width = 'full',
                values = function()
                    return addon.settings.functions.GetImportedGuides()
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
                name = "Delete imported guide",
                confirm = function(_, key)
                    if not addon.settings.gui.selectedDeleteGuide or
                        addon.settings.gui.selectedDeleteGuide == "none" then
                        return false
                    end
                    return string.format("Remove %s?",
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
            reloadGuides = {
                order = 13,
                name = "Reload guides and UI",
                type = 'execute',
                func = function() _G.ReloadUI() end,
                disabled = function()
                    return addon.settings.gui.selectedDeleteGuide ~=
                               "mustReload"
                end
            }
        }
    }

    AceConfig:RegisterOptionsTable("RXP Guides/Import", importOptionsTable)

    addon.settings.gui.import = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    "RXP Guides/Import", "Import", "RXP Guides")

    -- Ace3 ConfigDialog doesn't support embedding icons in header
    -- Directly references Ace3 built frame object
    -- Hackery ahead

    importFrame = addon.settings.gui.import.obj.frame
    importFrame.icon = importFrame:CreateTexture()
    importFrame.icon:SetTexture("Interface\\AddOns\\" .. addonName ..
                                    "\\Textures\\rxp_logo-64")
    importFrame.icon:SetPoint("TOPRIGHT", -5, -5)

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

function addon.settings.functions.getProfileOption(info)
    return addon.db.profile[info[#info]]
end

function addon.settings.functions.setProfileOption(info, value)
    local key = info[#info]
    addon.db.profile[key] = value
end

function addon.settings.functions.ImportBoxValidate(text)
    -- print(text)
    -- Is RXPGuides.RegisterGuide or RXPGuides.ImportGuide

    local guidesLoaded, errorMsg = addon.RXPG.ImportString(importString,
                                                           addon.RXPFrame)
    if guidesLoaded then
        addon.settings.gui.selectedDeleteGuide = "mustReload"
        return true
    else
        importFrame.textFrame:SetScript('OnUpdate', ProcessBuffer)
        return errorMsg or "Failed to Import Guides: Invalid Import String"
    end
end

function addon.settings.functions.GetImportedGuides()
    local display = {empty = ""}
    local importedGuidesFound = false

    if addon.settings.gui.selectedDeleteGuide == "mustReload" then
        return {mustReload = "Must reload UI"}
    end

    for _, guide in ipairs(addon.guides) do
        if guide.imported or guide.cache then
            importedGuidesFound = true
            local group, subgroup, name = guide.key:match("^.*|(.*)|(.*)|(.*)")
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
