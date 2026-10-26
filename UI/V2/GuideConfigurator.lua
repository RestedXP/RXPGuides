local addonName, addon = ...
addon.ui.v2.configurator = {}

local L
local locale = _G.GetLocale()

local AceGUI = LibStub("AceGUI-3.0")
local pairs, type = pairs, type
local wipe = table.wipe

function addon.ui.v2.configurator.IsSupportedClient()
    return addon.game == "CLASSIC" or
        addon.game == "TBC" or
        addon.game == "FOREVER"
end

function addon.ui.v2.configurator:Setup()
    if not self.IsSupportedClient() then return end

    L = addon.locale.Get

    self:RegisterRXPV2GuideConfiguratorCard()
    self:RegisterRXPV2GuideConfigurator()
    self:RegisterRXPV2GuideConfiguratorOption()
    self:RegisterRXPV2GuideConfiguratorOptionPadding()
end

function addon.ui.v2.configurator:RegisterRXPV2GuideConfiguratorCard()
    local Type, Version = "RXPV2GuideConfiguratorCard", 1

    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local function Button_OnClick(frame, button)
        frame.obj:Fire("OnClick", button)

        AceGUI:ClearFocus()
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this:SetLabel()
            this:SetDescription()
            this:SetImage(nil)
            this.cardBackground:SetTexture(nil)
            this.cardBackground:SetTexCoord(0, 1, 0, 1)
            this.cardBackground:SetAlpha(1)
            this.cardBackground:Hide()
            this.bottomShade:Hide()

            this.image:SetSize(34, 34)
            this.image:ClearAllPoints()
            this.label:ClearAllPoints()
            this.label:SetPoint("BOTTOMLEFT", this.frame, "BOTTOMLEFT", 3, 24)
            this.label:SetPoint("BOTTOMRIGHT", this.frame, "BOTTOMRIGHT", -3, 24)
            this.image:SetPoint("BOTTOM", this.label, "TOP", 0, 2)
        end,

        ["SetLabel"] = function(this, text)
            this.label:Show()
            this.label:SetText(text)
        end,

        ["SetDescription"] = function(this, text)
            this.description:SetText(text)
            if text then this.description:Show() else this.description:Hide() end
        end,

        ["SetImage"] = function(this, path)
            this.image:SetTexture(path)
            this.image:SetTexCoord(0, 1, 0, 1)
        end,

        ["SetEnabled"] = function(this, enabled)
            if enabled then
                this.frame:Enable()
            else
                this.frame:Disable()
            end
        end,

        ["UpdateTheme"] = function(this, payload)
            if not payload then return end

            if payload.scale and this.SetScale then this:SetScale(payload.scale) end

            this:UpdateSubTheme(payload)

            if payload.updateChildren then
                for _, child in pairs(this.children or {}) do
                    if child.UpdateTheme then child:UpdateTheme({updateChildren = true}) end
                end
            end
        end,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local textColor = theme.textColor.common
            local highlightColor = theme.borderColors.activeStepCheckboxChecked

            if not addon.v2:IsGuideWindowEnabled() and addon.activeTheme then
                textColor = addon.activeTheme.textColor
            end

            addon.ui.v2:ApplyFrameBackdrop(this.frame, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)
            local _, size, flags = this.label:GetFont()
            this.label:SetFont(theme.font, size, flags)

            _, size, flags = this.description:GetFont()
            this.description:SetFont(theme.font, size, flags)
            if this.cardBackground and this.cardBackground:IsShown() then
                this.label:SetTextColor(1, 1, 1, 1)
                this.description:SetTextColor(1, 1, 1, 1)
                this.label:SetShadowColor(0, 0, 0, 1)
                this.description:SetShadowColor(0, 0, 0, 1)
            else
                this.label:SetTextColor(unpack(textColor))
                this.description:SetTextColor(textColor[1], textColor[2], textColor[3], 0.72)
                this.label:SetShadowColor(0, 0, 0, 0)
                this.description:SetShadowColor(0, 0, 0, 0)
            end
            this.label:SetShadowOffset(1, -1)
            this.description:SetShadowOffset(1, -1)

            this.highlight:SetVertexColor(unpack(highlightColor))

            local shadeColor = theme.backgroundColors.common
            if this.bottomShade then
                if this.bottomShade.SetGradient then
                    this.bottomShade:SetGradient("VERTICAL",
                                                 CreateColor(shadeColor[1], shadeColor[2], shadeColor[3], 1),
                                                 CreateColor(shadeColor[1], shadeColor[2], shadeColor[3], 0))
                else
                    this.bottomShade:SetGradientAlpha("VERTICAL", shadeColor[1], shadeColor[2], shadeColor[3], 1,
                                                      shadeColor[1], shadeColor[2], shadeColor[3], 0)
                end
            end

            this.pushedHighlight:SetColorTexture(unpack(theme.backgroundColors.activeStepCheckboxChecked))
        end
    }

    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetScript("OnEnter", function(this) this.obj:Fire("OnEnter") end)
        frame:SetScript("OnLeave", function(this) this.obj:Fire("OnLeave") end)
        frame:SetScript("OnClick", Button_OnClick)

        local image = frame:CreateTexture(nil, "OVERLAY")

        local label = frame:CreateFontString(nil, "OVERLAY")
        local guideFontSize = addon.settings.profile.guideFontSize
        local font, _, fontFlags
        if locale == "enUS" then
            font, fontFlags = addon.font, ""
        else
            label:SetFontObject(GameFontNormal)
            font, _, fontFlags = label:GetFont()
        end
        label:SetFont(font, guideFontSize + 1, fontFlags)

        label:SetJustifyH("CENTER")
        label:SetHeight(13)

        frame:SetHighlightTexture(addon.ui.v2:GetTexture("configurator-card-highlight.tga"), "ADD")

        local pushedHighlight = frame:CreateTexture(nil, "ARTWORK")
        pushedHighlight:SetAllPoints(frame)
        frame:SetPushedTexture(pushedHighlight)

        local description = frame:CreateFontString(nil, "OVERLAY")
        description:SetFont(font, guideFontSize - 1, fontFlags)

        description:SetJustifyH("CENTER")
        description:SetWordWrap(true)
        description:SetPoint("TOPLEFT", label, "BOTTOMLEFT", 0, -1)
        description:SetPoint("BOTTOMRIGHT", label, "BOTTOMRIGHT", 0, -9)

        pushedHighlight:SetAlpha(0.25)

        local widget = {
            label = label,
            description = description,
            image = image,
            highlight = frame:GetHighlightTexture(),
            pushedHighlight = pushedHighlight,
            frame = frame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end

        widget:UpdateTheme({})
        widget.cardBackground = frame.rxpBackground:CreateTexture(nil, "ARTWORK")
        widget.cardBackground:SetAllPoints(frame.rxpBackground)
        widget.cardBackground:Hide()
        widget.bottomShade = frame.rxpBackground:CreateTexture(nil, "ARTWORK")
        widget.bottomShade:SetDrawLayer("ARTWORK", 1)
        widget.bottomShade:SetTexture("Interface/BUTTONS/WHITE8X8")
        widget.bottomShade:SetPoint("BOTTOMLEFT", frame.rxpBackground, "BOTTOMLEFT")
        widget.bottomShade:SetPoint("BOTTOMRIGHT", frame.rxpBackground, "BOTTOMRIGHT")
        widget.bottomShade:SetHeight(64)
        widget.bottomShade:Hide()

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2.configurator:RegisterRXPV2GuideConfigurator()
    local Type, Version = "RXPV2GuideConfigurator", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    -- WoW APIs
    local PlaySound = PlaySound
    local CreateFrame, UIParent = CreateFrame, UIParent

    local function Button_OnClick(frame)
        PlaySound(799) -- SOUNDKIT.GS_TITLE_OPTION_EXIT
        frame.obj:Hide()
    end

    local function Frame_OnShow(frame) frame.obj:Fire("OnShow") end

    local function Frame_OnClose(frame) frame.obj:Fire("OnClose") end

    local function Frame_OnMouseDown() AceGUI:ClearFocus() end

    local function Title_OnMouseDown(frame)
        frame:GetParent():StartMoving()
        AceGUI:ClearFocus()
    end

    local function Title_OnMouseUp(frame)
        local parent = frame:GetParent()
        parent:StopMovingOrSizing()
        local widget = parent.obj
        local status = widget.status or widget.localstatus

        status.top = parent:GetTop()
        status.left = parent:GetLeft()
        addon.settings:SaveFramePositions()
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:SetParent(UIParent)
            this.frame:SetFrameStrata("LOW")
            this.frame:SetFrameLevel(100)
            this.frame:SetSize(300, 429)
            this.frame.saveSize = false

            this:SetBottomButtons({})
            this:SetContentPadding(60, 38)
            this:ApplyStatus()
        end,

        ["OnRelease"] = function(this)
            this.status = nil

            wipe(this.localstatus)
        end,

        ["SetDescription"] = function(this, text) this.description:SetText(text) end,

        ["SetScale"] = function(this, scale) this.frame:SetScale(scale) end,

        ["SetContentPadding"] = function(this, top, bottom, horizontal)
            this.contentTopPadding = top
            this.contentBottomPadding = bottom
            this.contentHorizontalPadding = horizontal or 13

            this.content:ClearAllPoints()
            this.content:SetPoint("TOPLEFT", this.frame, "TOPLEFT", this.contentHorizontalPadding, -top)
            this.content:SetPoint("BOTTOMRIGHT", this.frame, "BOTTOMRIGHT", -this.contentHorizontalPadding, bottom)

            this:OnWidthSet(this.frame:GetWidth())
            this:OnHeightSet(this.frame:GetHeight())
        end,

        ["OnWidthSet"] = function(this, width)
            local contentwidth = width - 2 * (this.contentHorizontalPadding or 13)

            if contentwidth < 0 then contentwidth = 0 end

            this.content:SetWidth(contentwidth)
            this.content.width = contentwidth

            this:SetBottomButtons(this.bottomButtons)
        end,

        ["SetBottomButtons"] = function(this, buttons)
            for _, button in ipairs(this.bottomButtons) do button:Hide() end
            this.bottomButtons = buttons

            local buttonCount = #buttons
            if buttonCount == 0 then return end

            local rowWidth = this.buttonRow:GetWidth()
            local buttonWidth
            if buttonCount == 1 then
                buttonWidth = math.floor((rowWidth - 8) / 2)
            else
                buttonWidth = math.floor((rowWidth - 8 * (buttonCount - 1)) / buttonCount)
            end

            for index, button in ipairs(buttons) do
                button:ClearAllPoints()
                button:SetSize(buttonWidth, 24)
                if index == 1 then
                    button:SetPoint("BOTTOMLEFT", this.buttonRow, "BOTTOMLEFT")
                else
                    button:SetPoint("LEFT", buttons[index - 1], "RIGHT", 8, 0)
                end
                button:Show()
            end
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - this.contentTopPadding - this.contentBottomPadding

            if contentheight < 0 then contentheight = 0 end

            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["Hide"] = function(this) this.frame:Hide() end,

        ["Show"] = function(this) this.frame:Show() end,

        -- called to set an external table to store status in
        ["SetStatusTable"] = function(this, status)
            if type(status) ~= "table" then return end

            this.status = status
            this:ApplyStatus()
        end,

        ["ApplyStatus"] = function(this)
            local status = this.status or this.localstatus

            this:SetWidth(math.min(300, UIParent:GetWidth() - 23))

            this.frame:ClearAllPoints()
            if status.top and status.left then
                this.frame:SetPoint("TOP", UIParent, "BOTTOM", 0, status.top)
                this.frame:SetPoint("LEFT", UIParent, "LEFT", status.left, 0)
            else
                this.frame:SetPoint("CENTER")
            end
        end,

        ["UpdateTheme"] = function(this, payload)
            if not payload then return end

            if payload.scale and this.SetScale then this:SetScale(payload.scale) end
            this:UpdateSubTheme(payload)

            if payload.updateChildren then
                for _, child in pairs(this.children or {}) do
                    if child.UpdateTheme then child:UpdateTheme({updateChildren = true}) end
                end
            end
        end,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local textColor = theme.textColor.common

            if not addon.v2:IsGuideWindowEnabled() and addon.activeTheme then
                textColor = addon.activeTheme.textColor
            end

            local frame = this.frame
            addon.ui.v2:ApplyFrameBackdrop(frame, theme.edge, theme.backgroundColors.common,
                                           theme.borderColors.commonEdge)

            local background = frame.rxpBackground

            local _, size, flags = this.titletext:GetFont()
            this.titletext:SetFont(theme.font, size, flags)
            this.titletext:SetTextColor(unpack(textColor))

            _, size, flags = this.description:GetFont()
            this.description:SetFont(theme.font, size, flags)
            this.description:SetTextColor(unpack(textColor))

            local headerBodyBackground = background.configuratorHeaderBody
            if not headerBodyBackground then
                headerBodyBackground = background:CreateTexture(nil, "BACKGROUND", nil, 1)
                headerBodyBackground:SetPoint("TOPLEFT", background, "TOPLEFT", 1, -16)
                headerBodyBackground:SetPoint("TOPRIGHT", background, "TOPRIGHT", -1, -16)
                background.configuratorHeaderBody = headerBodyBackground
            end

            headerBodyBackground:SetHeight(this.headerBodyHeight)
            headerBodyBackground:SetColorTexture(unpack(theme.backgroundColors.guideWindow))
            headerBodyBackground:SetAlpha(0.65)

            local headerBackground = background.configuratorHeader
            if not headerBackground then
                headerBackground = background:CreateTexture(nil, "BACKGROUND", nil, 2)
                headerBackground:SetPoint("TOPLEFT", background, "TOPLEFT", 1, -1)
                headerBackground:SetPoint("TOPRIGHT", background, "TOPRIGHT", -1, -1)
                headerBackground:SetHeight(16)
                background.configuratorHeader = headerBackground
            end

            headerBackground:SetColorTexture(unpack(theme.backgroundColors.scrollbar))

            local buttonText
            for _, button in ipairs({this.backbutton, this.resetbutton, this.submitbutton}) do
                addon.ui.v2:ApplyFrameBackdrop(button, theme.edge, theme.backgroundColors.common,
                                               theme.borderColors.commonEdge)

                button.rxpBackground:Hide()
                if not button.configuratorBackground then
                    button.configuratorBackground = button:CreateTexture(nil, "BACKGROUND")
                    button.configuratorBackground:SetAllPoints()
                end
                button.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors.common))

                buttonText = button:GetFontString()
                _, size, flags = buttonText:GetFont()
                buttonText:SetFont(theme.font, size, flags)
                buttonText:SetTextColor(unpack(textColor))
            end

            this.titletext:SetFont(theme.font, addon.settings.profile.guideFontSize + 2, "")
            this.titletext:SetTextColor(1, 0.82, 0)

            this.backbutton.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors.guideSelector))
            this.resetbutton.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors.guideSelector))
            this.submitbutton.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors
                                                                                .activeStepCheckboxChecked))
        end
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(true)
        frame:SetClampedToScreen(true)
        frame:SetResizable(false)
        frame:SetFrameStrata("LOW")
        frame:SetFrameLevel(100)
        frame:SetToplevel(true)
        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)
        frame:SetScript("OnMouseDown", Frame_OnMouseDown)

        local title = CreateFrame("Frame", nil, frame)
        title:SetPoint("TOPLEFT", frame, "TOPLEFT", 29, -1)
        title:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", -14, -21)
        title:EnableMouse(true)
        title:SetScript("OnMouseDown", Title_OnMouseDown)
        title:SetScript("OnMouseUp", Title_OnMouseUp)

        local closebutton = CreateFrame("Button", nil, frame)
        closebutton:SetNormalTexture(addon.ui.v2:GetTexture("rxp-btn-close"))
        closebutton:SetPushedTexture(addon.ui.v2:GetTexture("rxp-btn-close"))
        closebutton:SetHighlightTexture(addon.ui.v2:GetTexture("rxp-btn-close"), "ADD")

        closebutton:SetSize(24, 24)
        closebutton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 5, 5)

        closebutton:SetScript("OnClick", Button_OnClick)

        local titletext = frame:CreateFontString(nil, "ARTWORK")
        titletext:SetFontObject(GameFontNormal)
        titletext:SetPoint("TOP", frame, "TOP", 0, -1)
        titletext:SetSize(162, 16)
        titletext:SetText(addon.title or addonName)

        local topLeftIcon = frame:CreateTexture(nil, "OVERLAY")
        topLeftIcon:SetTexture(addon.ui.v2:GetTexture("rxp-icon-logo"))
        topLeftIcon:SetSize(40, 40)
        topLeftIcon:SetPoint("TOPLEFT", frame, -12, 12)

        local description = frame:CreateFontString(nil, "ARTWORK")
        description:SetFontObject(GameFontNormal)
        description:SetPoint("TOPLEFT", frame, "TOPLEFT", 17, -31)

        if locale == "enUS" then
            description:SetFont(addon.font, addon.settings.profile.guideFontSize - 1, "")
        else
            description:SetFontObject(GameFontNormal)
            local font, size, flags = description:GetFont()
            description:SetFont(font, size, flags)
        end

        description:SetText()
        addon.ui.v2:AddFrameShadow(frame)

        local backButton = CreateFrame("Button", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        backButton:SetSize(132, 24)
        backButton:SetText(_G.BACK)

        local resetButton = CreateFrame("Button", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        resetButton:SetSize(132, 24)
        resetButton:SetText(_G.RESET)
        resetButton:Disable()

        local submitButton = CreateFrame("Button", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        submitButton:SetSize(132, 24)
        submitButton:SetText(_G.SUBMIT)

        local buttonText, font, fontSize, fontFlags
        for _, button in ipairs({backButton, resetButton, submitButton}) do
            button:SetNormalFontObject(GameFontNormal)
            button:SetHighlightFontObject(GameFontHighlight)
            button:SetDisabledFontObject(GameFontDisable)
            button:SetHighlightTexture(addon.ui.v2:GetTexture("configurator-option-hover"), "ADD")

            buttonText = button:GetFontString()
            font, fontSize, fontFlags = buttonText:GetFont()

            buttonText:SetFont(font, fontSize, fontFlags)
        end

        backButton:Hide()
        resetButton:Hide()
        submitButton:Hide()

        local buttonRow = CreateFrame("Frame", nil, frame)
        buttonRow:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 14, 10)
        buttonRow:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -14, 10)
        buttonRow:SetHeight(24)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", frame, "TOPLEFT", 19, -48)
        content:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -19, 38)

        local widget = {
            localstatus = {},
            bottomButtons = {},
            titletext = titletext,
            description = description,
            headerBodyHeight = 35,
            backbutton = backButton,
            topLeftIcon = topLeftIcon,
            resetbutton = resetButton,
            submitbutton = submitButton,
            buttonRow = buttonRow,
            content = content,
            frame = frame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end
        widget:UpdateTheme({})
        -- The logo must render above the backdrop's border frame.
        topLeftIcon:SetParent(frame.rxpBorder)
        topLeftIcon:SetDrawLayer("OVERLAY")

        closebutton.obj = widget

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)
end

function addon.ui.v2.configurator:RegisterRXPV2GuideConfiguratorOption()
    local Type, Version = "RXPV2GuideConfiguratorOption", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    -- WoW APIs
    local CreateFrame, UIParent = CreateFrame, UIParent

    local function Control_OnEnter(frame) frame.obj:Fire("OnEnter") end

    local function Control_OnLeave(frame) frame.obj:Fire("OnLeave") end

    local function CheckBox_OnMouseDown() AceGUI:ClearFocus() end

    local function CheckBox_OnMouseUp(frame, button)
        if button ~= "LeftButton" then return end

        local this = frame.obj
        if this.choiceCallback then
            this.choiceCallback()

            return
        end

        if this.toggleCallback then
            this.toggleCallback(this.toggleArgument)

            return
        end

        if not this.values then return end

        this:ToggleChecked()

        this:Fire("OnValueChanged", this:GetValue())
    end

    local methods = {
        ["OnAcquire"] = function(this)
            this:SetWidth(180)
            this:SetHeight(34)

            this.values = nil
            this.settingkey = nil
            this.callback = nil
            this.choiceCallback = nil
            this.toggleCallback = nil
            this.toggleArgument = nil
            this.getValue = nil
            this.setValue = nil
            this.checked = false

            this.checkbg:Show()
            this:SetImage()
            this:SetLabel(nil)

            this:SetTooltip()
            this:SetRecommended(false)
        end,

        ["SetValue"] = function(this, value)
            -- Not initialized
            if not this.values then return end

            if this.setValue then
                this.setValue(this.values, value)
            else
                this.values[this.settingkey] = value
            end

            this:SetChecked(this:GetValue())
        end,

        ["SetChecked"] = function(this, checked)
            this.checked = checked

            this.check:SetShown(checked)
            for _, texture in ipairs(this.checkedFill) do texture:SetShown(checked) end
            this.checkbg.configuratorBackground:SetShown(not checked)
            this.checkbg.rxpBorder:SetShown(not checked)
        end,

        ["GetValue"] = function(this)
            if this.getValue then return this.getValue(this.values) end

            if this.values then return this.values[this.settingkey] end
            return this.checked
        end,

        ["GetChecked"] = function(this) return this.checked end,

        ["ToggleChecked"] = function(this)
            this:SetValue(not this:GetValue())

            if this.callback then return this.callback(this.settingkey, this:GetValue()) end
        end,

        ["SetSetting"] = function(this, values, settingkey, callback, getValue, setValue)
            this.choiceCallback = nil
            this.toggleCallback = nil
            this.toggleArgument = nil
            this.checkbg:Show()

            this.values = values
            this.settingkey = settingkey
            this.callback = callback
            this.getValue = getValue
            this.setValue = setValue

            this:SetChecked(this:GetValue())
        end,

        ["SetToggle"] = function(this, callback, argument)
            this.values = nil
            this.settingkey = nil
            this.callback = nil
            this.choiceCallback = nil
            this.toggleCallback = callback
            this.toggleArgument = argument
            this.getValue = nil
            this.setValue = nil
            this.checkbg:Show()
            this:SetChecked(false)
        end,

        ["SetChoice"] = function(this, callback, tooltip)
            this.toggleCallback = nil
            this.toggleArgument = nil
            this.choiceCallback = callback
            this.checkbg:Hide()

            this:SetTooltip(tooltip)

            this.text:ClearAllPoints()

            if this.image:GetTexture() then
                this.text:SetPoint("LEFT", this.image, "RIGHT", 7, 0)
            else
                this.text:SetPoint("LEFT", this.frame, "LEFT", 5, 0)
            end

            if this.tooltip.rxpTooltipText then
                this.text:SetPoint("RIGHT", this.tooltip, "LEFT", -3, 0)
            else
                this.text:SetPoint("RIGHT", this.frame, "RIGHT", -5, 0)
            end
        end,

        ["SetLabel"] = function(this, label) this.text:SetText(label) end,

        ["SetTooltip"] = function(this, text)
            this.tooltip.rxpTooltipText = text or nil

            if this.tooltip.rxpTooltipText then
                this.tooltip:Show()
                this.text:SetPoint("RIGHT", this.tooltip, "LEFT", -3, 0)
            else
                this.tooltip:Hide()
                this.text:SetPoint("RIGHT", this.checkbg, "LEFT", -5, 0)
            end
        end,

        ["SetRecommended"] = function(this, recommended)
            if recommended then
                this.recommendation:SetText(L("Recommended"))
                this.recommendation:Show()
            else
                this.recommendation:Hide()
            end
        end,

        ["SetImage"] = function(this, path, ...)
            local image = this.image

            image:SetTexture(path)
            image:SetShown(path ~= nil)

            local leftOffset = path and image:GetWidth() / 2 + 2 or 0
            local background = this.frame.configuratorBackground
            background:ClearAllPoints()
            background:SetPoint("TOPLEFT", this.frame, "TOPLEFT", leftOffset, 0)
            background:SetPoint("BOTTOMRIGHT", this.frame, "BOTTOMRIGHT")

            local border = this.frame.rxpBorder
            local top, bottom, left = unpack(border.textures)
            top:ClearAllPoints()
            top:SetPoint("TOPLEFT", border, "TOPLEFT", leftOffset, 0)
            top:SetPoint("TOPRIGHT", border, "TOPRIGHT")
            bottom:ClearAllPoints()
            bottom:SetPoint("BOTTOMLEFT", border, "BOTTOMLEFT", leftOffset, 0)
            bottom:SetPoint("BOTTOMRIGHT", border, "BOTTOMRIGHT")
            left:ClearAllPoints()
            left:SetPoint("TOPLEFT", border, "TOPLEFT", leftOffset, 0)
            left:SetPoint("BOTTOMLEFT", border, "BOTTOMLEFT", leftOffset, 0)

            this.highlight:ClearAllPoints()
            this.highlight:SetPoint("TOPLEFT", this.frame, "TOPLEFT", leftOffset, 0)
            this.highlight:SetPoint("BOTTOMRIGHT", this.frame, "BOTTOMRIGHT")

            this.text:ClearAllPoints()

            if path then
                this.text:SetPoint("LEFT", image, "RIGHT", 7, 0)
            else
                this.text:SetPoint("LEFT", this.frame, "LEFT", 5, 0)
            end

            this.text:SetPoint("RIGHT", this.tooltip, "LEFT", -3, 0)

            if image:GetTexture() then
                local n = select("#", ...)

                if n == 4 or n == 8 then
                    image:SetTexCoord(...)
                else
                    image:SetTexCoord(0, 1, 0, 1)
                end
            end
        end,

        ["UpdateTheme"] = function(this, payload)
            if not payload then return end

            if payload.scale and this.SetScale then this:SetScale(payload.scale) end
            this:UpdateSubTheme(payload)

            if payload.updateChildren then
                for _, child in pairs(this.children or {}) do
                    if child.UpdateTheme then child:UpdateTheme({updateChildren = true}) end
                end
            end
        end,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local textColor = theme.textColor.common
            if not addon.v2:IsGuideWindowEnabled() and addon.activeTheme then
                textColor = addon.activeTheme.textColor
            end

            for _, frame in ipairs({this.frame, this.checkbg}) do
                addon.ui.v2:ApplyFrameBackdrop(frame, theme.edge, theme.backgroundColors.common,
                                               theme.borderColors.commonEdge)

                frame.rxpBackground:Hide()
                if not frame.configuratorBackground then
                    frame.configuratorBackground = frame:CreateTexture(nil, "BACKGROUND")
                    frame.configuratorBackground:SetAllPoints()
                end
                frame.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors.common))
            end

            local _, size, flags = this.text:GetFont()
            this.text:SetFont(theme.font, size, flags)
            this.text:SetTextColor(unpack(textColor))

            this.frame.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors.activeStepCheckbox))
            this.checkbg.configuratorBackground:SetColorTexture(unpack(theme.backgroundColors.activeStepCheckbox))

            local r, g, b, a = this.text:GetTextColor()
            this.checkShort:SetColorTexture(r, g, b, a)
            this.checkLong:SetColorTexture(r, g, b, a)
            for _, texture in ipairs(this.checkedFill) do
                texture:SetVertexColor(unpack(theme.backgroundColors.activeStepCheckboxChecked))
            end
        end
    }

    local function Constructor()
        local frame = CreateFrame("Button", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")

        frame:EnableMouse(true)
        frame:SetScript("OnEnter", Control_OnEnter)
        frame:SetScript("OnLeave", Control_OnLeave)
        frame:SetScript("OnMouseDown", CheckBox_OnMouseDown)
        frame:SetScript("OnMouseUp", CheckBox_OnMouseUp)

        local image = frame:CreateTexture(nil, "OVERLAY")
        image:SetSize(40, 40)
        image:SetPoint("LEFT", frame, "LEFT", 2, 0)

        local text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        text:SetFont(addon.font, addon.settings.profile.guideFontSize, "")
        text:SetJustifyH("LEFT")
        text:SetHeight(16)
        text:SetPoint("LEFT", image, "RIGHT", 7, 0)

        local recommendation = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        recommendation:SetFont(addon.font, addon.settings.profile.guideFontSize, "")
        recommendation:SetTextColor(0.05, 0.75, 1)
        recommendation:SetPoint("BOTTOMLEFT", text, "TOPLEFT", 0, 2)
        recommendation:SetHeight(12)

        recommendation:Hide()

        local tooltip = CreateFrame("Frame", nil, frame)
        tooltip:SetSize(18, 18)
        tooltip:SetPoint("LEFT", text, "RIGHT", 0, 0)

        tooltip:EnableMouse(true)
        tooltip:SetScript("OnEnter", addon.ui.v2.Button_OnEnter)
        tooltip:SetScript("OnLeave", addon.ui.v2.Button_OnLeave)

        local tooltipIcon = tooltip:CreateTexture(nil, "OVERLAY")
        tooltipIcon:SetSize(14, 14)
        tooltipIcon:SetPoint("CENTER")
        tooltipIcon:SetTexture(addon.ui.v2:GetTexture("setting-help-icon"))

        tooltip:Hide()

        local checkbg = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        checkbg:SetPoint("RIGHT", -11, 0)
        checkbg:SetSize(17, 17)

        tooltip:ClearAllPoints()
        tooltip:SetPoint("RIGHT", checkbg, "LEFT", -5, 0)

        local check = CreateFrame("Frame", nil, checkbg)
        check:SetAllPoints()

        local checkShort = check:CreateTexture(nil, "OVERLAY")
        checkShort:SetSize(3, 1)
        checkShort:SetPoint("CENTER", -2, -1)
        checkShort:SetRotation(-math.pi / 4)

        local checkLong = check:CreateTexture(nil, "OVERLAY")
        checkLong:SetSize(6, 1)
        checkLong:SetPoint("CENTER", 1, 1)
        checkLong:SetRotation(math.pi / 4)

        local checkedFill = {}
        local function createCheckedFill()
            local texture = checkbg:CreateTexture(nil, "ARTWORK")
            texture:SetTexture("Interface/Buttons/WHITE8X8")
            texture:Hide()
            checkedFill[#checkedFill + 1] = texture
            return texture
        end

        local centerHorizontal = createCheckedFill()
        centerHorizontal:SetPoint("TOPLEFT", checkbg, "TOPLEFT", 3, 0)
        centerHorizontal:SetPoint("BOTTOMRIGHT", checkbg, "BOTTOMRIGHT", -3, 0)

        local centerVertical = createCheckedFill()
        centerVertical:SetPoint("TOPLEFT", checkbg, "TOPLEFT", 0, -3)
        centerVertical:SetPoint("BOTTOMRIGHT", checkbg, "BOTTOMRIGHT", 0, 3)

        local corner, mask
        for _, point in ipairs({"TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT"}) do
            corner = createCheckedFill()
            corner:SetSize(6, 6)
            corner:SetPoint(point, checkbg, point)

            mask = checkbg:CreateMaskTexture()
            mask:SetTexture("Interface/CHARACTERFRAME/TempPortraitAlphaMask")
            mask:SetAllPoints(corner)
            corner:AddMaskTexture(mask)
        end

        local highlight = frame:CreateTexture(nil, "HIGHLIGHT")
        highlight:SetTexture(addon.ui.v2:GetTexture("configurator-option-hover"))
        highlight:SetAllPoints(frame)

        local pushedHighlight = frame:CreateTexture(nil, "HIGHLIGHT")
        pushedHighlight:SetTexture(addon.ui.v2:GetTexture("configurator-option-press"))
        pushedHighlight:SetAllPoints(highlight)
        pushedHighlight:SetAlpha(1)
        frame:SetPushedTexture(pushedHighlight)

        local widget = {
            checkbg = checkbg,
            check = check,
            checkedFill = checkedFill,
            text = text,
            recommendation = recommendation,
            tooltip = tooltip,
            highlight = highlight,
            pushedHighlight = pushedHighlight,
            image = image,
            checkShort = checkShort,
            checkLong = checkLong,
            frame = frame,
            type = Type
        }

        for method, func in pairs(methods) do widget[method] = func end
        widget:UpdateTheme({})
        image:SetParent(frame.rxpBorder)
        image:SetDrawLayer("OVERLAY")
        recommendation:SetParent(frame.rxpBorder)
        recommendation:SetDrawLayer("OVERLAY")

        return AceGUI:RegisterAsWidget(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2.configurator:RegisterRXPV2GuideConfiguratorOptionPadding()
    local Type, Version = "RXPV2GuideConfiguratorOptionPadding", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    local CreateFrame, UIParent = CreateFrame, UIParent

    local methods = {
        ["OnAcquire"] = function(this)
            this:SetWidth(180)
            this.fixedHeight = 38
            this:SetHeight(this.fixedHeight)
            this.titleLabel = nil
            this.descriptionLabel = nil
        end,

        -- Keep the spacer at its fixed height while separating intro labels.
        ["LayoutFinished"] = function(this)
            if not this.titleLabel or not this.descriptionLabel then return end

            local titleFrame = this.titleLabel.frame
            local descriptionFrame = this.descriptionLabel.frame
            descriptionFrame:ClearAllPoints()
            descriptionFrame:SetPoint("TOPLEFT", titleFrame, "BOTTOMLEFT", 0, -7)
            descriptionFrame:SetPoint("TOPRIGHT", titleFrame, "BOTTOMRIGHT", 0, -7)
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            content:SetWidth(width)
            content.width = width
        end,

        ["OnHeightSet"] = function(this, height) this.content:SetHeight(this.fixedHeight) end,

        ["UpdateTheme"] = function(this, payload)
            if not payload then return end

            if payload.scale and this.SetScale then this:SetScale(payload.scale) end
            this:UpdateSubTheme(payload)

            if payload.updateChildren then
                for _, child in pairs(this.children or {}) do
                    if child.UpdateTheme then child:UpdateTheme({updateChildren = true}) end
                end
            end
        end,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local textColor = theme.textColor.common

            if this.titleLabel then
                this.titleLabel:SetFont(theme.font, addon.settings.profile.guideFontSize + 1, "")
                this.titleLabel:SetColor(textColor[1], textColor[2], textColor[3], 1)
                this.descriptionLabel:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
                this.descriptionLabel:SetColor(textColor[1], textColor[2], textColor[3], 0.72)
                this:DoLayout()
            end
        end
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", 3, 0)
        content:SetPoint("BOTTOMRIGHT", -5, 0)

        local widget = {frame = frame, content = content, type = Type}
        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2.configurator:CreateGuideConfigurator()
    if not self.IsSupportedClient() then return end

    local configurator = self.ui or AceGUI:Create("RXPV2GuideConfigurator")
    configurator:SetScale(addon.settings.profile.windowScale)

    if self.ui then return self.ui end

    addon.enabledFrames.RXPV2GuideConfigurator = configurator.frame
    addon.settings:LoadFramePosition("RXPV2GuideConfigurator", configurator.frame)
    configurator.localstatus.top = configurator.frame:GetTop()
    configurator.localstatus.left = configurator.frame:GetLeft()

    local settingsButton = CreateFrame("Button", nil, configurator.frame)
    settingsButton:SetSize(24, 24)
    settingsButton:SetPoint("TOPRIGHT", configurator.frame, "TOPRIGHT", -12, -24)

    settingsButton:SetNormalTexture(addon.ui.v2:GetTexture("rxp-icon-cog"))
    settingsButton:SetPushedTexture(addon.ui.v2:GetTexture("rxp-icon-cog"))
    settingsButton:SetHighlightTexture(addon.ui.v2:GetTexture("rxp-icon-cog"), "ADD")

    settingsButton.rxpTooltipText = L("Open Settings")
    settingsButton:SetScript("OnEnter", addon.ui.v2.Button_OnEnter)
    settingsButton:SetScript("OnLeave", addon.ui.v2.Button_OnLeave)
    settingsButton:SetScript("OnClick", function(this) addon.settings.OpenSettings() end)

    local importButton = CreateFrame("Button", nil, configurator.frame)
    importButton:SetSize(30, 30)
    importButton:SetPoint("RIGHT", settingsButton, "LEFT", -2, 0)

    importButton:SetNormalTexture(addon.ui.v2:GetTexture("icon-btn-import"))
    importButton:SetPushedTexture(addon.ui.v2:GetTexture("icon-btn-import"))
    importButton:SetHighlightTexture(addon.ui.v2:GetTexture("icon-btn-import"), "ADD")

    importButton.rxpTooltipText = L("Import guide")
    importButton:SetScript("OnEnter", addon.ui.v2.Button_OnEnter)
    importButton:SetScript("OnLeave", addon.ui.v2.Button_OnLeave)
    importButton:SetScript("OnClick", function(this) addon.guideImporter:Open() end)

    local helpButton = CreateFrame("Button", nil, configurator.frame)
    helpButton:SetSize(30, 30)
    helpButton:SetPoint("RIGHT", importButton, "LEFT", -2, 0)

    helpButton:SetNormalTexture(addon.ui.v2:GetTexture("icon-btn-help"))
    helpButton:SetPushedTexture(addon.ui.v2:GetTexture("icon-btn-help"))
    helpButton:SetHighlightTexture(addon.ui.v2:GetTexture("icon-btn-help"), "ADD")

    helpButton.rxpTooltipText = _G.HELP_LABEL
    helpButton:SetScript("OnEnter", addon.ui.v2.Button_OnEnter)
    helpButton:SetScript("OnLeave", addon.ui.v2.Button_OnLeave)
    helpButton:SetScript("OnClick", function(this)
        LibStub("AceConfigDialog-3.0"):SelectGroup(addon.title, "helpPanel")
        addon.settings.OpenSettings()
    end)

    local guideScroll = AceGUI:Create("RXPV2ScrollFrame")
    guideScroll:SetTheme(addon.v2:GetTheme())

    guideScroll:SetFullWidth(true)
    guideScroll:SetFullHeight(true)
    guideScroll:SetLayout("Flow")

    configurator:AddChild(guideScroll)
    configurator.scrollContainer = guideScroll

    local dungeonModes, dungeonChecks, dungeons = {}, {}, {}
    self.backStack = {}

    local function refreshDungeonValues()
        for _, check in ipairs(dungeonChecks) do
            check:SetValue(addon.settings.profile.dungeons[check.settingkey])
        end
    end

    local function setDungeonMode(mode)
        local isSelected, widget
        for _, option in ipairs(self.pages.dungeonOptions.options) do
            isSelected = option.setting == mode
            widget = dungeonModes[option.setting]
            if widget then widget:SetChecked(isSelected) end
        end

        if mode == "fastestDungeons" then
            addon.settings.dungeons:SetRecommended()
        elseif mode == "bestUpgradeDungeons" then
            local stats = addon.dungeonStats and addon.dungeonStats[addon.player.faction]
            if stats then
                local dungeonStats
                for key in pairs(dungeons) do
                    dungeonStats = stats[key]
                    addon.settings.profile.dungeons[key] =
                        dungeonStats and (dungeonStats[addon.player.class] or 0) >= 3 or false
                end
            end
        elseif mode == "allDungeons" then
            addon.settings.dungeons:SetAll()
        end

        refreshDungeonValues()
    end

    local function updatePageIntro(title, description)
        local intro = AceGUI:Create("RXPV2GuideConfiguratorOptionPadding")
        intro:SetLayout("Flow")
        intro:SetFullWidth(true)
        intro.fixedHeight = 47
        intro:SetHeight(intro.fixedHeight)

        local theme = addon.v2:GetTheme()
        local textColor = theme.textColor.common

        local titleLabel = AceGUI:Create("Label")
        titleLabel:SetFullWidth(true)

        titleLabel:SetFont(theme.font, addon.settings.profile.guideFontSize + 1, "")
        titleLabel:SetColor(unpack(textColor))
        titleLabel:SetText(title)

        intro:AddChild(titleLabel)
        intro.titleLabel = titleLabel

        local descriptionLabel = AceGUI:Create("Label")
        descriptionLabel:SetFullWidth(true)

        descriptionLabel:SetFont(theme.font, addon.settings.profile.guideFontSize - 1, "")
        descriptionLabel:SetColor(textColor[1], textColor[2], textColor[3], 0.72)
        descriptionLabel:SetText(description)

        intro:AddChild(descriptionLabel)
        intro.descriptionLabel = descriptionLabel

        configurator.scrollContainer:AddChild(intro)
        intro:DoLayout()
    end

    local function renderOptions(page)
        configurator.scrollContainer:ReleaseChildren()
        updatePageIntro(page.title, page.description)
        dungeonModes, dungeonChecks = {}, {}

        local options = type(page.options) == "function" and page.options() or page.options
        local hidden, padding, setting
        if #options == 0 then
            local emptyLabel = AceGUI:Create("Label")
            emptyLabel:SetFullWidth(true)

            emptyLabel:SetText(L("No guides available."))

            configurator.scrollContainer:AddChild(emptyLabel)
        end
        for _, option in ipairs(options) do
            hidden = option.hidden
            if type(hidden) == "function" then hidden = hidden() end
            if not hidden then
                padding = AceGUI:Create("RXPV2GuideConfiguratorOptionPadding")
                padding:SetFullWidth(true)

                setting = AceGUI:Create("RXPV2GuideConfiguratorOption")
                setting:SetFullWidth(true)

                setting:SetImage(option.icon)
                setting:SetLabel(option.label)
                setting:SetTooltip(option.tooltip)
                setting:SetRecommended(option.recommended)

                if page.kind == "choices" then
                    setting:SetChoice(option.callback, option.tooltip)
                elseif page.kind == "dungeonSettings" then
                    setting:SetToggle(option.callback, option.setting)
                else
                    setting:SetSetting(addon.settings.profile, option.setting, option.callback, option.getValue,
                                       option.setValue)
                end

                padding:AddChild(setting)
                configurator.scrollContainer:AddChild(padding)

                if page.kind == "dungeonSettings" then dungeonModes[option.setting] = setting end
            end
        end

        if page.kind == "dungeonSettings" then
            dungeons = addon.settings.dungeons:GetDungeons()

            local heading = AceGUI:Create("Heading")
            heading:SetFullWidth(true)
            heading:SetText(L("Dungeon List"))
            configurator.scrollContainer:AddChild(heading)

            local dungeonKeys = {}
            for key in pairs(dungeons) do dungeonKeys[#dungeonKeys + 1] = key end
            table.sort(dungeonKeys, function(a, b) return dungeons[a] < dungeons[b] end)

            local check
            for _, key in ipairs(dungeonKeys) do
                check = AceGUI:Create("RXPV2GuideConfiguratorOption")
                check:SetFullWidth(true)
                check:SetSetting(addon.settings.profile.dungeons, key,
                                 function() setDungeonMode("customDungeons") end)
                check:SetLabel(dungeons[key])
                configurator.scrollContainer:AddChild(check)
                dungeonChecks[#dungeonChecks + 1] = check
            end

            refreshDungeonValues()
        end

        configurator.scrollContainer:DoLayout()
    end

    local function renderCards(page)
        dungeonModes, dungeonChecks = {}, {}
        dungeons = {}
        guideScroll:ReleaseChildren()
        guideScroll:SetLayout("Table")
        guideScroll:SetUserData("table", {columns = {0.5, 0.5}, space = 8})

        local option
        for _, card in ipairs(page.options()) do
            option = AceGUI:Create("RXPV2GuideConfiguratorCard")
            option:SetFullWidth(true)
            option:SetHeight(175)

            if card.label == L("Import Guides") then
                option.image:SetSize(44, 44)
                option.image:ClearAllPoints()
                option.image:SetPoint("CENTER", option.frame, "CENTER")
                option.label:ClearAllPoints()
                option.label:SetPoint("TOP", option.image, "BOTTOM", 0, -5)
                option.label:SetPoint("LEFT", option.frame, "LEFT", 3, 0)
                option.label:SetPoint("RIGHT", option.frame, "RIGHT", -3, 0)
            end

            option:SetLabel(card.label)
            option:SetDescription(card.description)

            option:SetImage(card.icon)
            if card.background then
                option.cardBackground:SetTexture(card.background)
                option.cardBackground:SetTexCoord(unpack(card.backgroundTexCoords))
                option.cardBackground:SetAlpha(0.8)
                option.cardBackground:Show()
                option.bottomShade:Show()
            end
            option:UpdateSubTheme({})
            option:SetEnabled(not card.disabled)
            -- Refresh pooled version-1 widgets without changing AceGUI's version.
            option.highlight:SetAlpha(0.1)
            option:SetCallback("OnClick", card.onClick)

            guideScroll:AddChild(option)
        end

        guideScroll:DoLayout()
        guideScroll:SetScroll(0)
    end

    function self:ShowPage(key, push)
        self:LoadPages(setDungeonMode)
        local page = self.pages[key]
        if not page then return end

        if push then
            self.backStack[#self.backStack + 1] = self.currentPage
        end

        self.currentPage = key
        if page.kind == "cards" then
            configurator:SetContentPadding(63, 8, 8)
            configurator:SetDescription(L("Welcome, select a guide."))

            configurator:SetBottomButtons({})
            renderCards(page)
            configurator:Show()

            return
        end

        guideScroll:SetLayout("Flow")
        configurator:SetContentPadding(60, 38)
        configurator:SetDescription(L("Configure your guide."))

        configurator.resetbutton:SetEnabled(page.kind == "dungeonSettings")
        local nextPage = page.next and page.next()
        configurator.submitbutton:SetText(page.nextLabel or (nextPage and L("Next step") or _G.SUBMIT))

        local bottomButtons = {configurator.backbutton}
        if page.kind == "dungeonSettings" then bottomButtons[#bottomButtons + 1] = configurator.resetbutton end
        if page.kind == "settings" or page.kind == "dungeonSettings" then
            bottomButtons[#bottomButtons + 1] = configurator.submitbutton
        end
        configurator:SetBottomButtons(bottomButtons)

        renderOptions(page)
        configurator.scrollContainer:SetScroll(0)

        configurator:Show()
    end

    configurator.Refresh = function()
        self.backStack = {}
        self.currentPage = "browser"

        self:ShowPage("browser", false)
    end

    function self:FinishFlow(loadDefault)
        if loadDefault then
            if addon.currentGuide and not addon.currentGuide.empty then
                addon:ReloadGuide(true)
            else
                addon.SelectDefaultGuide()
            end
        end

        if addon.game == "FOREVER" then
            addon.saveSettingsLocally = true
            addon.settings:SaveLocalProfile()
        end

        self.backStack = {}

        configurator:Hide()
    end

    function self:StartFlow(firstPage)
        self.backStack = {"browser"}
        self.currentPage = "browser"

        self:ShowPage(firstPage, false)
    end

    local function pageForward()
        local page = self.pages[self.currentPage]

        if page.next then
            local nextPage = page.next()
            if nextPage then
                self:ShowPage(nextPage, true)
                return
            end
        end

        self:FinishFlow(true)
    end

    local function pageBackward()
        local previousPage = table.remove(self.backStack)
        if not previousPage then
            configurator.Refresh()

            return
        end

        self:ShowPage(previousPage, false)
    end

    configurator.resetbutton:SetText(L("Clear All"))
    configurator.resetbutton:SetScript("OnClick", function()
        addon.settings.dungeons:SetNone()
        setDungeonMode("customDungeons")
    end)

    configurator.backbutton:SetScript("OnClick", function(this) pageBackward() end)
    configurator.submitbutton:SetScript("OnClick", function(this) pageForward() end)

    self.ui = configurator

    return configurator
end

function addon.ui.v2.configurator:Open(login)
    if login then
        if RXPCData and RXPCData.currentGuideName and RXPCData.currentGuideName ~= "" then return end

        if addon.currentGuide and not addon.currentGuide.empty then return end
        if addon.player.level ~= 1 then return end
    end

    local frame = self:CreateGuideConfigurator()
    if not frame then return end

    frame:Refresh()
    frame:Show()
end

function addon.ui.v2.configurator:SetScale(scale)
    if self.ui then self.ui:SetScale(scale) end
end

function addon.ui.v2.configurator:UpdateTheme() if self.ui then self.ui:UpdateTheme({updateChildren = true}) end end

function addon.ui.v2.configurator:IsShown() return self.ui and self.ui:IsShown() or false end

function addon.ui.v2.configurator:GetGuideChoices(guideGroup, subgroup, icon, guideKind)
    local choices = {}
    local guides
    if guideKind then
        guides = {}
        for _, guide in pairs(addon.guides) do
            if guide.guideKind == guideKind and addon.IsGuideActive(guide) and not guide.chapter and
                addon.IsGuideSelectable(guide, subgroup, true) then
                guides[#guides + 1] = guide
            end
        end
    else
        guides = addon.GetSelectableGuidesInGroup(guideGroup, subgroup, true)
    end
    local recommendedGuide

    table.sort(guides, function(first, second) return first.name < second.name end)

    if guideGroup == addon.defaultGroup or guideGroup == addon.defaultGroupHC or guideGroup ==
        "RestedXP Forever Dungeon Guide (A)" or guideGroup == "RestedXP Forever Dungeon Guide (H)" then
        local playerGuides = {}
        local playerLevel = addon.player.level
        local guideName, minimumLevel, maximumLevel

        for _, guide in ipairs(guides) do
            guideName = addon.GetGuideName(guide) or guide.name
            minimumLevel, maximumLevel = guideName:match("(%d+)%s*%-%s*(%d+)")
            minimumLevel, maximumLevel = tonumber(minimumLevel), tonumber(maximumLevel)
            if minimumLevel and maximumLevel and playerLevel >= minimumLevel and playerLevel <= maximumLevel then
                playerGuides[#playerGuides + 1] = guide
            end
        end

        guides = playerGuides
    end

    if guideGroup == addon.defaultGroup or guideGroup == addon.defaultGroupHC then
        local currentGuide = addon.currentGuide
        for _, guide in ipairs(guides) do
            if currentGuide and guide.key == currentGuide.key then
                recommendedGuide = guide
                break
            end
        end

        if not recommendedGuide then
            local zoneName = (GetRealZoneText() or ""):lower()
            local subzoneName = (GetSubZoneText() or ""):lower()
            local displayName, zoneGuide

            for _, guide in ipairs(guides) do
                displayName = (addon.GetGuideName(guide) or guide.name):lower()
                if (zoneName ~= "" and displayName:find(zoneName, 1, true)) or
                    (subzoneName ~= "" and displayName:find(subzoneName, 1, true)) then
                    if guide.defaultfor then
                        if addon.applies(guide.defaultfor) then
                            recommendedGuide = guide
                            break
                        end
                    else
                        zoneGuide = zoneGuide or guide
                    end
                end
            end
            recommendedGuide = recommendedGuide or zoneGuide
        end

        if not recommendedGuide then
            local defaultGuideName = guideGroup == addon.defaultGroupHC and addon.defaultGuideHC or addon.defaultGuide

            if type(defaultGuideName) == "table" then defaultGuideName = defaultGuideName.name end

            for _, guide in ipairs(guides) do
                if guide.name == defaultGuideName then
                    recommendedGuide = guide
                    break
                end
            end
        end

        if not recommendedGuide then
            for _, guide in ipairs(guides) do
                if guide.defaultfor and addon.applies(guide.defaultfor) then
                    recommendedGuide = guide
                    break
                end
            end
        end
    end

    if recommendedGuide then
        for index, guide in ipairs(guides) do
            if guide == recommendedGuide then
                if index > 1 then
                    table.remove(guides, index)
                    table.insert(guides, 1, guide)
                end
                break
            end
        end
    end

    for _, guide in ipairs(guides) do
        local selectedGuide = guide
        choices[#choices + 1] = {
            icon = selectedGuide.guideIcon and addon.ui.v2:GetTexture(selectedGuide.guideIcon) or icon,
            label = L(addon.GetGuideName(selectedGuide) or selectedGuide.name),
            recommended = selectedGuide == recommendedGuide,
            callback = function()
                if (guideGroup == addon.defaultGroup or guideGroup == addon.defaultGroupHC) and selectedGuide ~=
                    recommendedGuide then
                    -- If a non-recommended guide is selected, make follow-ups are easier to see
                    addon.settings.profile.showUnusedGuides = true
                end
                if selectedGuide.OnClick then
                    addon.functions[selectedGuide.OnClick](selectedGuide)
                else
                    addon:LoadGuide(selectedGuide)
                end

                addon:CloseMenu()
                self:FinishFlow()
            end
        }
    end

    return choices
end

function addon.ui.v2.configurator:LoadPages(setDungeonMode)
    if not self.ui then return end

    local minimumEndgameLevel = addon.player.maxlevel - 5
    local categoryIcons = {
        attunement = "attunements-icon",
        key = "rxp-icon-key",
        gearset = "rxp-icon-armor",
        profession = "rxp-icon-tailoring"
    }
    local categoryLabels = {
        attunement = L("Attunements"),
        key = L("Keys"),
        gearset = L("Set Guide"),
        profession = L("Profession Leveling")
    }
    local endgameGuides, guideKindsBySubgroup, guideKindsPresent = {}, {}, {}
    for _, guide in pairs(addon.guides) do
        if categoryLabels[guide.guideKind] and addon.IsGuideActive(guide) and not guide.chapter then
            endgameGuides[#endgameGuides + 1] = guide
            guideKindsPresent[guide.guideKind] = true
            if guide.subgroup then guideKindsBySubgroup[guide.subgroup] = guide.guideKind end
        end
    end

    local endgameCategories, categoriesByKind = {}, {}
    local subgroups = addon.GetGuideSubgroups(endgameGuides)
    for _, subgroup in ipairs(subgroups) do
        local guideKind = guideKindsBySubgroup[subgroup.subgroup]
        if guideKind == "gearset" then
            endgameCategories[#endgameCategories + 1] = {
                guideKind = guideKind,
                subgroup = subgroup.subgroup,
                label = L(subgroup.subgroup),
                icon = addon.ui.v2:GetTexture(categoryIcons[guideKind])
            }
            categoriesByKind[guideKind] = true
        elseif not categoriesByKind[guideKind] then
            endgameCategories[#endgameCategories + 1] = {
                guideKind = guideKind,
                label = categoryLabels[guideKind],
                icon = addon.ui.v2:GetTexture(categoryIcons[guideKind])
            }
            categoriesByKind[guideKind] = true
        end
    end

    for _, guideKind in ipairs({"attunement", "key", "gearset", "profession"}) do
        if guideKindsPresent[guideKind] and not categoriesByKind[guideKind] then
            endgameCategories[#endgameCategories + 1] = {
                guideKind = guideKind,
                label = categoryLabels[guideKind],
                icon = addon.ui.v2:GetTexture(categoryIcons[guideKind])
            }
            categoriesByKind[guideKind] = true
        end
    end

    local function endgameOptions()
        local options = {}
        if addon.player.level < minimumEndgameLevel and not addon.settings.profile.showUnusedGuides then
            return options
        end

        local hasGuides
        for _, category in ipairs(endgameCategories) do
            hasGuides = false
            for _, guide in ipairs(endgameGuides) do
                if guide.guideKind == category.guideKind and addon.IsGuideSelectable(guide, category.subgroup) then
                    hasGuides = true
                    break
                end
            end
            if hasGuides then
                local selectedCategory = category

                options[#options + 1] = {
                    icon = category.icon,
                    label = category.label,
                    callback = function()
                        self.endgameCategory = selectedCategory
                        self:ShowPage("endgameGuides", true)
                    end
                }
            end
        end
        return options
    end

    local function guideCards()
        local cards = {{
            label = L("Import Guides"),
            icon = addon.ui.v2:GetTexture("icon-btn-import"),
            onClick = function() addon.guideImporter:Open() end
        }}

        if addon.game == "FOREVER" then
            cards[#cards + 1] = {
                label = L("Dungeon Cleave Guide"),
                description = L("Fastest Leveling Experience"),
                icon = addon.ui.v2:GetTexture("dungeons-icon"),
                background = addon.ui.v2:GetTexture("dungeon-cleave-card.blp"),
                backgroundTexCoords = {0.240234375, 0.759765625, 0.138671875, 0.861328125},
                onClick = function() self:StartFlow("foreverDungeonOptions") end
            }
            cards[#cards + 1] = {
                label = L("Open World Guide"),
                description = L("Fastest Leveling Experience"),
                icon = addon.ui.v2:GetTexture("rxp-icon-route"),
                background = addon.ui.v2:GetTexture("open-world-card.blp"),
                backgroundTexCoords = {0.3173828125, 0.724609375, 0.171875, 0.73828125},
                onClick = function() self:StartFlow("foreverOpenWorldRoute") end
            }
        else
            if addon.GroupHasGuides(addon.defaultGroup) then
                cards[#cards + 1] = {
                    label = L("Speedrun Guide"),
                    description = L("Fastest Leveling Experience"),
                    icon = addon.ui.v2:GetTexture("rxp-icon-speedrun_guides"),
                    background = addon.ui.v2:GetTexture("dungeon-cleave-card.blp"),
                    backgroundTexCoords = {0.240234375, 0.759765625, 0.138671875, 0.861328125},
                    onClick = function() self:StartFlow("speedrunSettings") end
                }
            end

            if addon.GroupHasGuides(addon.defaultGroupHC, nil, true) then
                cards[#cards + 1] = {
                    label = L("Survival Guide"),
                    description = L("Safest Leveling Experience"),
                    icon = addon.ui.v2:GetTexture("survival-icon"),
                    background = addon.ui.v2:GetTexture("open-world-card.blp"),
                    backgroundTexCoords = {0.3173828125, 0.724609375, 0.171875, 0.73828125},
                    disabled = locale == "zhCN",
                    onClick = function() self:StartFlow("survivalSettings") end
                }
            end
        end

        if #endgameOptions() > 0 then
            cards[#cards + 1] = {
                label = L("Endgame Guides"),
                description = L("Attunements, Keys And More"),
                icon = addon.ui.v2:GetTexture("attunements-icon"),
                background = addon.ui.v2:GetTexture("endgame-guides-card.blp"),
                backgroundTexCoords = {0.2265625, 0.7734375, 0.1201171875, 0.8798828125},
                onClick = function() self:StartFlow("endgameCategories") end
            }
        end

        if addon.farmGuides > 0 then
            cards[#cards + 1] = {
                label = L("Gold Assistant"),
                description = L("Easy gold making guides"),
                icon = addon.ui.v2:GetTexture("rxp-icon-gold"),
                background = addon.ui.v2:GetTexture("open-world-card.blp"),
                backgroundTexCoords = {0.3173828125, 0.724609375, 0.171875, 0.73828125},
                onClick = function() addon.GAToggle() end
            }
        end

        return cards
    end

    local auctionHouseOption = {
        icon = addon.ui.v2:GetTexture("rxp-icon-gold"),
        label = L("Auction House Usage"),
        tooltip = L("Considers quests that require items that are obtained through trading with other players."),
        setting = "soloSelfFound",
        getValue = function(profile) return not profile.soloSelfFound end,
        setValue = function(profile, value) profile.soloSelfFound = not value end
    }

    local sharedOptions = {
        showUnusedGuides = {
            icon = addon.v2:GetTheme().guideWindow.guideSelectIcon,
            label = L("Show unused guides"),
            tooltip = L(
                "Displays guides that are not applicable for your class/race such as starting zones for other races"),
            setting = "showUnusedGuides"
        },

        groupQuests = {
            icon = addon.ui.v2:GetTexture("rxp-icon-group-4"),
            label = L("Enable Group Quests"),
            tooltip = L(
                "Show elite quests and routes difficult quests early in the guide. Leave unchecked, if you prefer a solo experience."),
            setting = "enableGroupQuests",
            hidden = function() return not next(RXPCData.guideMetaData.enableGroupQuests) end
        },

        skipLowLevelQuests = {
            icon = addon.ui.v2:GetTexture("rxp-icon-skip"),
            label = L("Skip Low Level Quests"),
            tooltip = L("Skip steps you're overleveled for"),
            setting = "enableXpStepSkipping"
        }
    }

    local commonSettings = {}
    if addon.unitscanEnabled then
        commonSettings[#commonSettings + 1] = {
            icon = addon.ui.v2:GetTexture("rxp-icon-enemy_warning"),
            label = L("Hostile Enemy Warning"),
            tooltip = L("Alerts when a dangerous entity is nearby and shows patrolling elites on the world map."),
            setting = "showDangerousMobsMap",
            getValue = function(profile) return profile.showDangerousMobsMap or profile.showDangerousUnitscan end,
            setValue = function(profile, value)
                profile.showDangerousMobsMap = value
                profile.showDangerousUnitscan = value
            end,
            callback = function() if addon.tips then addon.tips:LoadDangerousMobs(true) end end
        }
    end

    commonSettings[#commonSettings + 1] = auctionHouseOption
    commonSettings[#commonSettings + 1] = sharedOptions.groupQuests

    if addon.game ~= "FOREVER" then
        commonSettings[#commonSettings + 1] = {
            icon = addon.ui.v2:GetTexture("dungeons-icon"),
            label = L("Enable Dungeons"),
            tooltip = L("Adds Dungeon Quests to your route. This is helpful to avoid longer grinding sessions."),
            hidden = function() return not next(addon.settings.dungeons:GetDungeons()) end,
            setting = "enableDungeons",
            callback = function()
                local page = self.pages[self.currentPage]
                local hasNextPage = page.next and page.next()
                self.ui.submitbutton:SetText(hasNextPage and L("Next step") or _G.SUBMIT)
            end
        }
    end

    if next(addon.professions) then
        commonSettings[#commonSettings + 1] = {
            icon = addon.ui.v2:GetTexture("rxp-icon-tailoring"),
            label = L("Profession Leveling"),
            tooltip = L("Level professions along with the guide"),
            setting = "professions",
            getValue = function(profile)
                return type(profile.professions) == "number" and profile.professions > 0
            end,
            setValue = function(profile, value)
                if not value then
                    profile.professions = 0
                elseif not profile.professions or profile.professions == 0 then
                    for profession in pairs(addon.GenerateProfessionTable()) do
                        if profession ~= 0 then
                            profile.professions = profession
                            break
                        end
                    end
                end
            end
        }
    end

    commonSettings[#commonSettings + 1] = sharedOptions.skipLowLevelQuests
    commonSettings[#commonSettings + 1] = sharedOptions.showUnusedGuides

    local dungeonOptions = {
        {
            icon = addon.ui.v2:GetTexture("rxp-icon-speedrun_guides"),
            label = L("Fastest Leveling Speed"),
            tooltip = L("Factor only the high impact dungeons into the route"),
            recommended = true,
            setting = "fastestDungeons",
            hidden = not addon.dungeonStats or not addon.dungeonStats[addon.player.faction],
            callback = setDungeonMode
        }, {
            icon = addon.ui.v2:GetTexture("rxp-icon-armor"),
            label = L("Best Item Upgrades"),
            tooltip = L("Prioritize dungeons with the strongest upgrades for your class."),
            setting = "bestUpgradeDungeons",
            hidden = not addon.dungeonStats or not addon.dungeonStats[addon.player.faction],
            callback = setDungeonMode
        }, {
            icon = addon.ui.v2:GetTexture("dungeons-icon"),
            label = L("Select All Dungeons"),
            tooltip = L("Factor all of your available Dungeons to your levelling route"),
            setting = "allDungeons",
            callback = setDungeonMode
        }, {
            icon = addon.ui.v2:GetTexture("rxp-icon-scroll"),
            label = L("Customize Dungeons"),
            tooltip = L("Choose the individual dungeons included in your route."),
            setting = "customDungeons",
            callback = setDungeonMode
        }
    }

    local pages = {
        browser = {kind = "cards", options = guideCards},
        speedrunSettings = {
            kind = "settings",
            title = L("Speedrun Guide Configuration"),
            description = L(
                "Select your preferred features to customize the guide. The leveling route automatically adapts to your choices."),
            options = commonSettings,
            next = function()
                if addon.game ~= "FOREVER" and addon.settings.profile.enableDungeons and
                    next(addon.settings.dungeons:GetDungeons()) then
                    return "dungeonOptions"
                end
                return "speedrunGuides"
            end
        },
        survivalSettings = {
            kind = "settings",
            title = L("Survival Guide Configuration"),
            description = L(
                "Select your preferred features to customize the guide. The leveling route automatically adapts to your choices."),
            options = commonSettings,
            next = function()
                if addon.game ~= "FOREVER" and addon.settings.profile.enableDungeons and
                    next(addon.settings.dungeons:GetDungeons()) then
                    return "survivalDungeonOptions"
                end
                return "survivalGuides"
            end
        },
        dungeonOptions = {
            kind = "dungeonSettings",
            title = L("Dungeon Configuration"),
            description = L(
                "Add dungeons to your journey. The guide will adjust to your selection accordingly and include dungeon quests to your route."),
            options = dungeonOptions,
            next = function() return "speedrunGuides" end
        },
        survivalDungeonOptions = {
            kind = "dungeonSettings",
            title = L("Dungeon Configuration"),
            description = L(
                "Add dungeons to your journey. The guide will adjust to your selection accordingly and include dungeon quests to your route."),
            options = dungeonOptions,
            next = function() return "survivalGuides" end
        },
        speedrunGuides = {
            kind = "choices",
            title = L("Speedrun Guide Configuration"),
            description = L("Select your preferred guide."),
            options = function()
                return self:GetGuideChoices(addon.defaultGroup, nil,
                                            addon.ui.v2:GetTexture("rxp-icon-speedrun_guides"))
            end
        },
        survivalGuides = {
            kind = "choices",
            title = L("Survival Guide Configuration"),
            description = L("Select your preferred guide."),
            options = function()
                return self:GetGuideChoices(addon.defaultGroupHC, nil, addon.ui.v2:GetTexture("survival-icon"))
            end
        },
        endgameCategories = {
            kind = "choices",
            title = L("Endgame Guides"),
            description = L("Select your preferred guide."),
            options = endgameOptions
        },
        endgameGuides = {
            kind = "choices",
            title = self.endgameCategory and self.endgameCategory.label or L("Endgame Guides"),
            description = L("Select your preferred guide."),
            options = function()
                if (addon.player.level < minimumEndgameLevel and not addon.settings.profile.showUnusedGuides) or
                    not self.endgameCategory then return {} end
                return self:GetGuideChoices(nil, self.endgameCategory.subgroup, self.endgameCategory.icon,
                                            self.endgameCategory.guideKind)
            end
        }
    }

    if addon.game == "FOREVER" then
        local foreverOpenWorldRouteOptions = {
            {
                icon = addon.ui.v2:GetTexture("rxp-icon-speedrun_guides"),
                label = L("Fastest Leveling Route"),
                tooltip = L("Prioritizes the fastest route and skips low-level quests."),
                recommended = true,
                callback = function()
                    addon.settings.profile.enableXpStepSkipping = true
                    self:ShowPage("foreverOpenWorldOptions", true)
                end
            }, {
                icon = addon.ui.v2:GetTexture("rxp-icon-browse"),
                label = L("Discovery Route (Slower)"),
                tooltip = L("Includes more quests for a slower route."),
                callback = function()
                    addon.settings.profile.enableXpStepSkipping = false
                    self:ShowPage("foreverOpenWorldOptions", true)
                end
            }
        }
        local foreverDungeonOptions = {auctionHouseOption, sharedOptions.showUnusedGuides}

        pages.foreverOpenWorldRoute = {
            kind = "choices",
            title = L("Open World Guide Configuration"),
            description = L(
                "Select your preferred features to customize the guide. The leveling route automatically adapts to your choices."),
            options = foreverOpenWorldRouteOptions
        }
        pages.foreverOpenWorldOptions = {
            kind = "settings",
            title = L("Open World Guide Configuration"),
            description = L(
                "Select your preferred features to customize the guide. The leveling route automatically adapts to your choices."),
            options = {
                auctionHouseOption, sharedOptions.groupQuests, sharedOptions.skipLowLevelQuests,
                sharedOptions.showUnusedGuides
            }
        }
        pages.foreverDungeonOptions = {
            kind = "settings",
            title = L("Dungeon Cleave Guide Configuration"),
            description = L(
                "Select your preferred features to customize the guide. The leveling route automatically adapts to your choices."),
            options = foreverDungeonOptions,
            nextLabel = L("Next step"),
            next = function() return "foreverDungeonGuides" end
        }
        pages.foreverDungeonGuides = {
            kind = "choices",
            title = L("Dungeon Cleave Guide"),
            description = L("Select your preferred guide."),
            options = function()
                return self:GetGuideChoices(addon.player.faction == "Horde" and
                                                "RestedXP Forever Dungeon Guide (H)" or
                                                "RestedXP Forever Dungeon Guide (A)", nil,
                                            addon.ui.v2:GetTexture("dungeons-icon"))
            end
        }
    end

    self.pages = pages
end
