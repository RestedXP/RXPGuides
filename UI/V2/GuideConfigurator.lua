local addonName, addon = ...

local AceGUI = LibStub("AceGUI-3.0")
local pairs, assert, type = pairs, assert, type
local wipe = table.wipe

local guideConfigurator

function addon.ui.v2.RegisterRXPGuideConfiguratorPage1()
    local L = addon.locale.Get

    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPGuideConfiguratorPage1", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    -- WoW APIs
    local PlaySound = PlaySound
    local CreateFrame, UIParent = CreateFrame, UIParent

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Button_OnClick(frame)
        PlaySound(799) -- SOUNDKIT.GS_TITLE_OPTION_EXIT
        frame.obj:Hide()
    end

    local function Frame_OnShow(frame)
        frame.obj:Fire("OnShow")
    end

    local function Frame_OnClose(frame)
        frame.obj:Fire("OnClose")
    end

    local function Frame_OnMouseDown(frame)
        AceGUI:ClearFocus()
    end

    local function Title_OnMouseDown(frame)
        AceGUI:ClearFocus()
    end

    local function MoverSizer_OnMouseUp(mover)
        local frame = mover:GetParent()
        local self = frame.obj
        local status = self.status or self.localstatus
        status.width = frame:GetWidth()
        status.height = frame:GetHeight()
        status.top = frame:GetTop()
        status.left = frame:GetLeft()
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(self)
            self.frame:SetParent(UIParent)
            self.frame:SetFrameStrata("MEDIUM")
            self.frame:SetFrameLevel(100) -- Lots of room to draw under it
            self:ApplyStatus()
        end,

        ["OnRelease"] = function(self)
            self.status = nil
            wipe(self.localstatus)
        end,

        ["OnWidthSet"] = function(self, width)
            local content = self.content
            local contentwidth = width - 34
            if contentwidth < 0 then
                contentwidth = 0
            end
            content:SetWidth(contentwidth)
            content.width = contentwidth
        end,

        ["OnHeightSet"] = function(self, height)
            local content = self.content
            local contentheight = height - 57
            if contentheight < 0 then
                contentheight = 0
            end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["Hide"] = function(self)
            self.frame:Hide()
        end,

        ["Show"] = function(self)
            self.frame:Show()
        end,

        -- called to set an external table to store status in
        ["SetStatusTable"] = function(self, status)
            assert(type(status) == "table")
            self.status = status
            self:ApplyStatus()
        end,

        ["ApplyStatus"] = function(self)
            local status = self.status or self.localstatus
            local frame = self.frame
            self:SetWidth(status.width or 384)
            self:SetHeight(status.height or 512)
            frame:ClearAllPoints()
            if status.top and status.left then
                frame:SetPoint("TOP", UIParent, "BOTTOM", 0, status.top)
                frame:SetPoint("LEFT", UIParent, "LEFT", status.left, 0)
            else
                frame:SetPoint("CENTER")
            end
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(false)
        frame:SetResizable(false)
        frame:SetFrameStrata("MEDIUM")
        frame:SetFrameLevel(100)
        frame:SetSize(384, 512)

        frame:SetToplevel(true)
        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)
        frame:SetScript("OnMouseDown", Frame_OnMouseDown)

        local background = frame:CreateTexture(nil, "BACKGROUND")
        background:SetTexture("Interface\\LFGFRAME\\LFGParentFrame")
        background:SetAllPoints()
        background:SetTexCoord(0, 0.75, 0, 1)

        local closebutton = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
        closebutton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-UP")
        closebutton:SetPushedTexture("Interface\\Buttons\\UI-MinusButton-Down")
        closebutton:SetWidth(26)
        closebutton:SetHeight(26)
        closebutton:SetPoint("TOPRIGHT", background, "TOPRIGHT", -28, -11)
        closebutton:SetScript("OnClick", Button_OnClick)

        local titletext = frame:CreateFontString(nil, "ARTWORK")
        titletext:SetFontObject(GameFontNormal)
        titletext:SetPoint("RIGHT", closebutton, "LEFT", -80, 0)
        titletext:EnableMouse(true)
        titletext:SetScript("OnMouseDown", Title_OnMouseDown)
        titletext:SetScript("OnMouseUp", MoverSizer_OnMouseUp)
        titletext:SetText(addon.title or addonName)

        local topLeftIcon = frame:CreateTexture(nil, "BACKGROUND", nil, -1)
        topLeftIcon:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp_navigation_arrow")
        topLeftIcon:SetWidth(60)
        topLeftIcon:SetHeight(60)
        topLeftIcon:SetPoint("TOPLEFT", background, 12, -6)
        topLeftIcon:EnableMouse(true)
        topLeftIcon:SetScript("OnMouseDown", Title_OnMouseDown)
        topLeftIcon:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local description = frame:CreateFontString(nil, "ARTWORK")
        description:SetFontObject(GameFontNormal)
        description:SetPoint("BOTTOMLEFT", topLeftIcon, "BOTTOMRIGHT", 12, 6)
        description:SetTextColor(1, 1, 1)
        description:SetFont(addon.font, 14, "")
        description:SetText(L("Welcome, select a guide."))

        --Container Support
        local content = CreateFrame("Frame", nil, frame)
        -- Move content to usable area, background image is way bigger
        content:SetPoint("TOPLEFT", topLeftIcon, "BOTTOMLEFT", 10, -6)
        content:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -38, 82)

        local widget = {
            localstatus = {},
            titletext   = titletext,
            content     = content,
            frame       = frame,
            type        = Type
        }
        for method, func in pairs(methods) do
            widget[method] = func
        end
        closebutton.obj = widget

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2.RegisterRXPGuideConfiguratorOption()
    local Type, Version = "RXPGuideConfiguratorOption", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Control_OnEnter(frame)
        frame.obj:Fire("OnEnter")
    end

    local function Control_OnLeave(frame)
        frame.obj:Fire("OnLeave")
    end

    local function Button_OnClick(frame, button)
        frame.obj:Fire("OnClick", button)
        AceGUI:ClearFocus()
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(self)
            self:SetLabel()
            self:SetDescription()
            self:SetImage(nil)
        end,

        -- ["OnRelease"] = nil,

        ["SetLabel"] = function(self, text)
            self.label:Show()
            self.label:SetText(text)
        end,

        ["SetDescription"] = function(self, text)
            self.description:Show()
            self.description:SetText(text)
        end,

        ["SetImage"] = function(self, path, ...)
            local image = self.image
            image:SetTexture(path)

            if image:GetTexture() then
                local n = select("#", ...)
                if n == 4 or n == 8 then
                    image:SetTexCoord(...)
                else
                    image:SetTexCoord(0, 1, 0, 1)
                end
            end
        end,
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent)
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetScript("OnEnter", Control_OnEnter)
        frame:SetScript("OnLeave", Control_OnLeave)
        frame:SetScript("OnClick", Button_OnClick)

        local image = frame:CreateTexture(nil, "BACKGROUND")
        image:SetSize(36, 36)
        image:SetPoint("TOPLEFT", 12,  -15)

        local label = frame:CreateFontString(nil, "OVERLAY")
        label:SetFont("Fonts\\FRIZQT__.TTF", 15, "")
	    label:SetTextColor(unpack(addon.activeTheme.textColor))
        label:SetPoint("LEFT", image, "RIGHT", 12, 0)
        label:SetHeight(18)

        local highlight = frame:CreateTexture(nil, "HIGHLIGHT")
        highlight:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
        highlight:SetBlendMode("ADD")
        highlight:SetPoint("TOPLEFT", frame, 0, -11)
        highlight:SetPoint("BOTTOMRIGHT", frame, 0, 0)

        local description = frame:CreateFontString(nil, "OVERLAY")
        description:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
        description:SetJustifyH("LEFT")
	    description:SetTextColor(186 / 255, 186 / 255, 186 / 255)
        description:SetPoint("TOPLEFT", frame, "TOPLEFT", 30, -30)
        description:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -25, 0)
        description:SetWordWrap(true)
        -- description:SetHeight(18)

        local widget = {
            label       = label,
            description = description,
            image       = image,
            frame       = frame,
            type        = Type
        }

        for method, func in pairs(methods) do
            widget[method] = func
        end

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2.RegisterRXPGuideConfigurator()
    local L = addon.locale.Get

    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPGuideConfigurator", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    -- WoW APIs
    local PlaySound = PlaySound
    local CreateFrame, UIParent = CreateFrame, UIParent

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Button_OnClick(frame)
        PlaySound(799) -- SOUNDKIT.GS_TITLE_OPTION_EXIT
        frame.obj:Hide()
    end

    local function Frame_OnShow(frame)
        frame.obj:Fire("OnShow")
    end

    local function Frame_OnClose(frame)
        frame.obj:Fire("OnClose")
    end

    local function Frame_OnMouseDown(frame)
        AceGUI:ClearFocus()
    end

    local function Title_OnMouseDown(frame)
        AceGUI:ClearFocus()
    end

    local function MoverSizer_OnMouseUp(mover)
        local frame = mover:GetParent()
        local self = frame.obj
        local status = self.status or self.localstatus
        status.width = frame:GetWidth()
        status.height = frame:GetHeight()
        status.top = frame:GetTop()
        status.left = frame:GetLeft()
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(self)
            self.frame:SetParent(UIParent)
            self.frame:SetFrameStrata("MEDIUM")
            self.frame:SetFrameLevel(101) -- Lots of room to draw under it
            self:ApplyStatus()
        end,

        ["OnRelease"] = function(self)
            self.status = nil
            wipe(self.localstatus)
        end,

        ["SetDescription"] = function(self, text)
            self.description:SetText(text)
        end,

        ["OnWidthSet"] = function(self, width)
            local content = self.content
            local contentwidth = width - 34
            if contentwidth < 0 then
                contentwidth = 0
            end
            content:SetWidth(contentwidth)
            content.width = contentwidth
        end,

        ["OnHeightSet"] = function(self, height)
            local content = self.content
            local contentheight = height - 57
            if contentheight < 0 then
                contentheight = 0
            end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["Hide"] = function(self)
            self.frame:Hide()
        end,

        ["Show"] = function(self)
            self.frame:Show()
        end,

        -- called to set an external table to store status in
        ["SetStatusTable"] = function(self, status)
            assert(type(status) == "table")
            self.status = status
            self:ApplyStatus()
        end,

        ["ApplyStatus"] = function(self)
            local status = self.status or self.localstatus
            local frame = self.frame
            self:SetWidth(status.width or 384)
            self:SetHeight(status.height or 512)
            frame:ClearAllPoints()
            if status.top and status.left then
                frame:SetPoint("TOP", UIParent, "BOTTOM", 0, status.top)
                frame:SetPoint("LEFT", UIParent, "LEFT", status.left, 0)
            else
                frame:SetPoint("CENTER")
            end
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(false)
        frame:SetResizable(false)
        frame:SetFrameStrata("MEDIUM")
        frame:SetFrameLevel(100)
        frame:SetSize(384, 512)

        frame:SetToplevel(true)
        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)
        frame:SetScript("OnMouseDown", Frame_OnMouseDown)

        local background = frame:CreateTexture(nil, "BACKGROUND")
        background:SetTexture("Interface\\LFGFRAME\\UI-FRAME-THREEBUTTON-BLANK")
        background:SetAllPoints()
        background:SetTexCoord(0, 0.75, 0, 1)

        local closebutton = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
        closebutton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-UP")
        closebutton:SetPushedTexture("Interface\\Buttons\\UI-MinusButton-Down")
        closebutton:SetWidth(26)
        closebutton:SetHeight(26)
        closebutton:SetPoint("TOPRIGHT", background, "TOPRIGHT", -28, -11)
        closebutton:SetScript("OnClick", Button_OnClick)

        local titletext = frame:CreateFontString(nil, "ARTWORK")
        titletext:SetFontObject(GameFontNormal)
        titletext:SetPoint("RIGHT", closebutton, "LEFT", -80, 0)
        titletext:EnableMouse(true)
        titletext:SetScript("OnMouseDown", Title_OnMouseDown)
        titletext:SetScript("OnMouseUp", MoverSizer_OnMouseUp)
        titletext:SetText(addon.title or addonName)

        local topLeftIcon = frame:CreateTexture(nil, "BACKGROUND", nil, -1)
        topLeftIcon:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/v2/rxp_navigation_arrow")
        topLeftIcon:SetWidth(60)
        topLeftIcon:SetHeight(60)
        topLeftIcon:SetPoint("TOPLEFT", background, 12, -6)
        topLeftIcon:EnableMouse(true)
        topLeftIcon:SetScript("OnMouseDown", Title_OnMouseDown)
        topLeftIcon:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local description = frame:CreateFontString(nil, "ARTWORK")
        description:SetFontObject(GameFontNormal)
        description:SetPoint("BOTTOMLEFT", topLeftIcon, "BOTTOMRIGHT", 12, 6)
        description:SetTextColor(1, 1, 1)
        description:SetFont(addon.font, 14, "")
        description:SetText()

        local backButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
        backButton:SetSize(116, 24)
        backButton:SetPoint("BOTTOMLEFT", 24, 82)
        backButton:SetText(_G.BACK)

        local resetButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
        resetButton:SetSize(104, 24)
        resetButton:SetPoint("LEFT", backButton, "RIGHT", 0, 0)
        resetButton:SetText(_G.RESET)

        local submitButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
        submitButton:SetSize(105, 24)
        submitButton:SetPoint("LEFT", resetButton, "RIGHT", 0, 0)
        submitButton:SetText(_G.SUBMIT)

        --Container Support
        local content = CreateFrame("Frame", nil, frame)
        -- Move content to usable area, background image is way bigger
        content:SetPoint("TOPLEFT", topLeftIcon, "BOTTOMLEFT", 12, -8)
        content:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -38, 108)

        local widget = {
            localstatus  = {},
            titletext    = titletext,
            description  = description,
            backbutton   = backButton,
            resetbutton  = resetButton,
            submitbutton = submitButton,
            content      = content,
            frame        = frame,
            type         = Type
        }

        for method, func in pairs(methods) do
            widget[method] = func
        end

        closebutton.obj = widget

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2.RegisterRXPGuideConfiguratorSetting()
    local Type, Version = "RXPGuideConfiguratorSetting", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    -- WoW APIs
    local PlaySound = PlaySound
    local CreateFrame, UIParent = CreateFrame, UIParent

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Control_OnEnter(frame)
        frame.obj:Fire("OnEnter")
    end

    local function Control_OnLeave(frame)
        frame.obj:Fire("OnLeave")
    end

    local function CheckBox_OnMouseDown(frame)
        local self = frame.obj
        if not self.disabled then
            if self.image:GetTexture() then
                self.text:SetPoint("LEFT", self.image,"RIGHT", 2, -1)
            else
                self.text:SetPoint("LEFT", self.checkbg, "RIGHT", 1, -1)
            end
        end
        AceGUI:ClearFocus()
    end

    local function CheckBox_OnMouseUp(frame)
        local self = frame.obj
        if not self.disabled then
            self:ToggleChecked()

            -- if self.checked then
            --     PlaySound(856) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON
            -- else -- for both nil and false (tristate)
            --     PlaySound(857) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF
            -- end

            self:Fire("OnValueChanged", self.checked)
        end
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(self)
            self:SetType()
            self:SetValue(false)
            self:SetTriState(nil)
            -- height is calculated from the width and required space for the description
            self:SetWidth(200)
            self:SetImage()
            self:SetDescription(nil)
        end,

        -- ["OnRelease"] = nil,

        ["OnWidthSet"] = function(self, width)
            if self.desc then
                self.desc:SetWidth(width - 30)
                if self.desc:GetText() and self.desc:GetText() ~= "" then
                    self:SetHeight(28 + self.desc:GetStringHeight())
                end
            end
        end,

        ["SetValue"] = function(self, value)
            local check = self.check
            self.checked = value
            if value then
                SetDesaturation(check, false)
                check:Show()
            else
                --Nil is the unknown tristate value
                if self.tristate and value == nil then
                    SetDesaturation(check, true)
                    check:Show()
                else
                    SetDesaturation(check, false)
                    check:Hide()
                end
            end
        end,

        ["GetValue"] = function(self)
            return self.checked
        end,

        ["SetTriState"] = function(self, enabled)
            self.tristate = enabled
            self:SetValue(self:GetValue())
        end,

        ["SetType"] = function(self, type)
            local checkbg = self.checkbg
            local check = self.check
            local highlight = self.highlight

            local size
            if type == "radio" then
                size = 16
                checkbg:SetTexture(130843) -- Interface\\Buttons\\UI-RadioButton
                checkbg:SetTexCoord(0, 0.25, 0, 1)
                check:SetTexture(130843) -- Interface\\Buttons\\UI-RadioButton
                check:SetTexCoord(0.25, 0.5, 0, 1)
                check:SetBlendMode("ADD")
                highlight:SetTexture(130843) -- Interface\\Buttons\\UI-RadioButton
                highlight:SetTexCoord(0.5, 0.75, 0, 1)
            else
                size = 24
                checkbg:SetTexture(130755) -- Interface\\Buttons\\UI-CheckBox-Up
                checkbg:SetTexCoord(0, 1, 0, 1)
                check:SetTexture(130751) -- Interface\\Buttons\\UI-CheckBox-Check
                check:SetTexCoord(0, 1, 0, 1)
                check:SetBlendMode("BLEND")
                highlight:SetTexture(130753) -- Interface\\Buttons\\UI-CheckBox-Highlight
                highlight:SetTexCoord(0, 1, 0, 1)
            end
            checkbg:SetHeight(size)
            checkbg:SetWidth(size)
        end,

        ["ToggleChecked"] = function(self)
            local value = self:GetValue()
            if self.tristate then
                --cycle in true, nil, false order
                if value then
                    self:SetValue(nil)
                elseif value == nil then
                    self:SetValue(false)
                else
                    self:SetValue(true)
                end
            else
                self:SetValue(not self:GetValue())
            end
        end,

        ["SetLabel"] = function(self, label)
            self.text:SetText(label)
        end,

        ["SetDescription"] = function(self, desc)
            if desc then
                if not self.desc then
                    local f = self.frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
                    f:ClearAllPoints()
                    f:SetPoint("TOPLEFT", self.checkbg, "TOPRIGHT", 5, -21)
                    f:SetWidth(self.frame.width - 30)
                    f:SetPoint("RIGHT", self.frame, "RIGHT", -30, 0)
                    f:SetJustifyH("LEFT")
                    f:SetJustifyV("TOP")
                    self.desc = f
                end
                self.desc:Show()
                --self.text:SetFontObject(GameFontNormal)
                self.desc:SetText(desc)
                self:SetHeight(28 + self.desc:GetStringHeight())
            else
                if self.desc then
                    self.desc:SetText("")
                    self.desc:Hide()
                end
                --self.text:SetFontObject(GameFontHighlight)
                self:SetHeight(24)
            end
        end,

        ["SetImage"] = function(self, path, ...)
            local image = self.image
            image:SetTexture(path)

            if image:GetTexture() then
                local n = select("#", ...)
                if n == 4 or n == 8 then
                    image:SetTexCoord(...)
                else
                    image:SetTexCoord(0, 1, 0, 1)
                end
            end
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent)
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetScript("OnEnter", Control_OnEnter)
        frame:SetScript("OnLeave", Control_OnLeave)
        frame:SetScript("OnMouseDown", CheckBox_OnMouseDown)
        frame:SetScript("OnMouseUp", CheckBox_OnMouseUp)

        local checkbg = frame:CreateTexture(nil, "ARTWORK")
        checkbg:SetWidth(24)
        checkbg:SetHeight(24)
        checkbg:SetPoint("TOPLEFT")
        checkbg:SetTexture(130755) -- Interface\\Buttons\\UI-CheckBox-Up

        local check = frame:CreateTexture(nil, "OVERLAY")
        check:SetAllPoints(checkbg)
        check:SetTexture(130751) -- Interface\\Buttons\\UI-CheckBox-Check

        local text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        text:SetJustifyH("LEFT")
        text:SetHeight(18)
        text:SetPoint("LEFT", checkbg, "RIGHT")
        text:SetPoint("RIGHT")

        local highlight = frame:CreateTexture(nil, "HIGHLIGHT")
        highlight:SetTexture(130753) -- Interface\\Buttons\\UI-CheckBox-Highlight
        highlight:SetBlendMode("ADD")
        highlight:SetAllPoints(checkbg)

        local image = frame:CreateTexture(nil, "OVERLAY")
        image:SetHeight(16)
        image:SetWidth(16)
        image:SetPoint("LEFT", checkbg, "RIGHT", 1, 0)

        local widget = {
            checkbg   = checkbg,
            check     = check,
            text      = text,
            highlight = highlight,
            image     = image,
            frame     = frame,
            type      = Type
        }
        for method, func in pairs(methods) do
            widget[method] = func
        end

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

local function selectDefaultGuide(isHardcore)
    if UnitLevel("player") > 1 then return end

    if addon.currentGuide and not addon.currentGuide.empty then return end

    if addon.settings.profile.hardcore or isHardcore then
        addon:LoadGuideTable(addon.defaultGroupHC, addon.defaultGuideHC)
    else
        addon:LoadGuideTable(addon.defaultGroup, addon.defaultGuide)
    end
end

function addon.ui.v2:CreateConfigurator()
    if guideConfigurator then return guideConfigurator end
    local L = addon.locale.Get

    addon.ui.v2.RegisterRXPGuideConfiguratorPage1()
    addon.ui.v2.RegisterRXPGuideConfiguratorOption()

    local page1 = AceGUI:Create("RXPGuideConfiguratorPage1")

    local speedrunGroup = AceGUI:Create("RXPGuideConfiguratorOption")
    speedrunGroup:SetFullWidth(true)
    speedrunGroup:SetHeight(172)
    speedrunGroup:SetLabel(L("Select Speedrun Guide"))
    speedrunGroup:SetDescription(L("This guide delivers the fastest path from level 1 to 70 for every class and zone. Optimized for minimal downtime, it includes the best quest routes, grinding spots, and dungeon segments to reach max level quickly and efficiently."))
    speedrunGroup:SetImage("Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-speedrun-guide")

    page1:AddChild(speedrunGroup)

    local survivalGroup = AceGUI:Create("RXPGuideConfiguratorOption")
    survivalGroup:SetFullWidth(true)
    survivalGroup:SetHeight(172)
    survivalGroup:SetLabel(L("Select Survival Guide"))
    survivalGroup:SetDescription(L("This guide delivers the safest path from level 1 to 70 for every class and zone. Optimized for maximum survivability it includes the best quest routes, grinding spots, and dungeon segments to reach max level safely and efficiently."))
    survivalGroup:SetImage("Interface/AddOns/" .. addonName .. "/Textures/v2/configurator-survival-guide")

    page1:AddChild(survivalGroup)

    addon.ui.v2.RegisterRXPGuideConfigurator()
    local configurator = AceGUI:Create("RXPGuideConfigurator")
    configurator:SetDescription(L("Configure your guide.")) -- TODO locale

    configurator.scrollContainer = AceGUI:Create("ScrollFrame")
    configurator.scrollContainer:SetFullWidth(true)
    configurator.scrollContainer:SetFullHeight(true)
    configurator.scrollContainer:SetLayout("Flow")
    configurator:AddChild(configurator.scrollContainer)

    local page2Options = {
        ["AuctionHouse"] = {
            icon = "Interface\\Icons\\inv_misc_coin_02",
            description = L("Enable Auction House"),
            setting = 'soloSelfFound'
        }
    }

    addon.ui.v2.RegisterRXPGuideConfiguratorSetting()
    for option, data in pairs(page2Options) do
        data.frame = AceGUI:Create("RXPGuideConfiguratorSetting")

        data.frame:SetValue(addon.settings.profile[data.setting])
        data.frame:SetLabel(data.description)
        data.frame:SetImage(data.icon)

        configurator.scrollContainer:AddChild(data.frame)
    end

    local function page1to2()
        configurator:SetPoint("TOPLEFT", page1.frame, "TOPLEFT")
        page1:Hide()
        configurator:Show()
    end

    local function page2to1()
        configurator:Hide()
        page1:Show()
    end

    local survivalSelected = false
    speedrunGroup:SetCallback("OnClick", function()
        page1to2()
    end)

    survivalGroup:SetCallback("OnClick", function()
        survivalSelected = true
        page1to2()
    end)

    configurator.backbutton:SetScript("OnClick", function()
        page2to1()
    end)

    configurator.resetbutton:SetScript("OnClick", function()
        page2to1()
    end)

    configurator.submitbutton:SetScript("OnClick", function()
        selectDefaultGuide(survivalSelected)
        configurator:Hide()
    end)

    return page1
end

function addon.ui.v2.LaunchConfigurator(login)
    if addon.currentGuide and not addon.currentGuide.empty then return end
    if not (login and UnitLevel("player") == 1) then return end

    local f = addon.ui.v2:CreateConfigurator()

    f:SetPoint("TOP", UIParent, "TOP", 420, -60)

    f:Show()
    -- Auction House
    -- Group Quests (turn into Group Settings)
    -- Dungeon selector
    --- Dungeons with bonuses and weighting
    --- Recommendations
end
