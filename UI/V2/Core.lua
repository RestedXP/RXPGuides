local addonName, addon = ...

local locale = _G.GetLocale()
local pairs, assert, type = pairs, assert, type
local min, max, floor = math.min, math.max, math.floor
local CreateFrame, UIParent = CreateFrame, UIParent

-- AceAddon doesn't exist yet
local AceGUI = LibStub("AceGUI-3.0")

addon.ui = {v2 = {}}

-- Locale doesn't exist yet
local L

function addon.ui.v2:Initialize()

    -- Locales.lua loads after this file is included
    L = addon.locale.Get

    self:RegisterRXPV2ScrollFrame()
    self:RegisterRXPV2ActiveStepsFrame()
    self:RegisterRXPV2ActivePartyStepsFrame()
    self:RegisterRXPV2ActiveStepItem()
end

local function updateTheme(this, payload)
    if not payload then return end

    if payload.scale and this.SetScale then this:SetScale(payload.scale) end

    if this.UpdateSubTheme then
        this:UpdateSubTheme(payload)
    end

    if payload.updateChildren then
        for _, child in pairs(this.children or {}) do
            if child.UpdateTheme then
                child:UpdateTheme({updateChildren = true})
            end
        end
    end
end

local function getLayout(name)
    local theme = addon.v2:GetTheme()
    local layout = theme.layout or {}

    return layout[name] or {}
end

local function setBackdropChromeShown(frame, shown)
    if frame.rxpBackground then frame.rxpBackground:SetShown(shown) end
    if frame.rxpBorder then frame.rxpBorder:SetShown(shown) end
end

local function setTextureGroupColor(group, color)
    for _, texture in ipairs(group.textures) do
        texture:SetVertexColor(unpack(color))
    end
end

local function setBackdrop(frame, edge, backgroundColor, borderColor)
    local path = edge.edgeFile
    local size = edge.edgeSize
    local texCoords = edge.texCoords

    local function setBorderTexture(texture, key)
        texture:SetTexture(path)
        texture:SetTexCoord(unpack(texCoords[key]))
    end

    if not frame.rxpBackground then
        local background = CreateFrame("Frame", nil, frame)
        background:SetAllPoints(frame)
        background:SetFrameLevel(frame:GetFrameLevel())
        local fill = background:CreateTexture(nil, "BACKGROUND")
        fill:SetTexture("Interface/BUTTONS/WHITE8X8")
        fill:SetAllPoints(background)
        background.textures = {fill}

        frame.rxpBackground = background
    end

    setTextureGroupColor(frame.rxpBackground, backgroundColor)

    if frame.rxpBorder then
        setTextureGroupColor(frame.rxpBorder, borderColor)
        return
    end

    local border = CreateFrame("Frame", nil, frame)
    border:SetAllPoints(frame)
    border:SetFrameLevel(frame:GetFrameLevel() + 1)
    border.textures = {}

    local top = border:CreateTexture(nil, "BORDER")
    setBorderTexture(top, "top")
    top:SetPoint("TOPLEFT")
    top:SetPoint("TOPRIGHT")
    top:SetHeight(size)
    table.insert(border.textures, top)

    local bottom = border:CreateTexture(nil, "BORDER")
    setBorderTexture(bottom, "bottom")
    bottom:SetPoint("BOTTOMLEFT")
    bottom:SetPoint("BOTTOMRIGHT")
    bottom:SetHeight(size)
    table.insert(border.textures, bottom)

    local left = border:CreateTexture(nil, "BORDER")
    setBorderTexture(left, "left")
    left:SetPoint("TOPLEFT")
    left:SetPoint("BOTTOMLEFT")
    left:SetWidth(size)
    table.insert(border.textures, left)

    local right = border:CreateTexture(nil, "BORDER")
    setBorderTexture(right, "right")
    right:SetPoint("TOPRIGHT")
    right:SetPoint("BOTTOMRIGHT")
    right:SetWidth(size)
    table.insert(border.textures, right)

    setTextureGroupColor(border, borderColor)
    frame.rxpBorder = border
end

function addon.ui.v2:AddFrameShadow(frame, xOffset, yOffset, alpha, size, shadowKey)
    if frame.rxpShadow then return frame.rxpShadow end

    local theme = addon.v2:GetTheme()
    local shadowTheme = theme.shadows and theme.shadows[shadowKey or "outer"] or {}

    xOffset = xOffset or shadowTheme.xOffset or 0
    yOffset = yOffset or shadowTheme.yOffset or 0
    alpha = alpha or shadowTheme.alpha or 0.55
    size = size or shadowTheme.size or 2
    if alpha <= 0 or size <= 0 then return end

    local shadow = CreateFrame("Frame", nil, frame)
    shadow:SetPoint("TOPLEFT", frame, "TOPLEFT", xOffset - size, yOffset + size)
    shadow:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", xOffset + size, yOffset - size)
    shadow:SetFrameLevel(max(frame:GetFrameLevel() - 1, 0))
    shadow:SetAlpha(alpha)

    local function createShadowTexture()
        local texture = shadow:CreateTexture(nil, "BACKGROUND")
        texture:SetTexture("Interface/BUTTONS/WHITE8X8")
        texture:SetVertexColor(0, 0, 0, 1)
        return texture
    end

    local top = createShadowTexture()
    top:SetPoint("TOPLEFT", shadow, "TOPLEFT", size, 0)
    top:SetPoint("TOPRIGHT", shadow, "TOPRIGHT", -size, 0)
    top:SetHeight(size)

    local bottom = createShadowTexture()
    bottom:SetPoint("BOTTOMLEFT", shadow, "BOTTOMLEFT", size, 0)
    bottom:SetPoint("BOTTOMRIGHT", shadow, "BOTTOMRIGHT", -size, 0)
    bottom:SetHeight(size)

    local left = createShadowTexture()
    left:SetPoint("TOPLEFT", shadow, "TOPLEFT", 0, -size)
    left:SetPoint("BOTTOMLEFT", shadow, "BOTTOMLEFT", 0, size)
    left:SetWidth(size)

    local right = createShadowTexture()
    right:SetPoint("TOPRIGHT", shadow, "TOPRIGHT", 0, -size)
    right:SetPoint("BOTTOMRIGHT", shadow, "BOTTOMRIGHT", 0, size)
    right:SetWidth(size)

    for _, point in ipairs({"TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT"}) do
        local corner = createShadowTexture()
        corner:SetPoint(point)
        corner:SetSize(size, size)
    end

    frame.rxpShadow = shadow
    return shadow
end


function addon.ui.v2:RegisterRXPV2ScrollFrame()
    --[[-----------------------------------------------------------------------------
    ScrollFrame Container
    Plain container that scrolls its content and doesn't grow in height.
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ScrollFrame", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Support functions
    -------------------------------------------------------------------------------]]
    local function FixScrollOnUpdate(frame)
        frame:SetScript("OnUpdate", nil)
        frame.obj:FixScroll()
    end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function ScrollFrame_OnMouseWheel(frame, value) frame.obj:MoveScroll(value) end

    local function ScrollFrame_OnSizeChanged(frame) frame:SetScript("OnUpdate", FixScrollOnUpdate) end

    local function ScrollBar_OnScrollValueChanged(frame, value) frame.obj:SetScroll(value) end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:SetScroll(0)
            this.scrollframe:SetScript("OnUpdate", FixScrollOnUpdate)
        end,

        ["OnRelease"] = function(this)
            this.status = nil
            for k in pairs(this.localstatus) do this.localstatus[k] = nil end
            this.scrollframe:SetPoint("BOTTOMRIGHT")
            this.scrollbar:Hide()
            this.scrollBarShown = nil
            this.content.height, this.content.width, this.content.original_width = nil, nil, nil
        end,

        ["SetScroll"] = function(this, value)
            local status = this.status or this.localstatus
            local viewheight = this.scrollframe:GetHeight()
            local height = this.content:GetHeight()
            local offset

            if viewheight > height then
                offset = 0
            else
                offset = floor((height - viewheight) / 1000.0 * value)
            end
            this.content:ClearAllPoints()
            this.content:SetPoint("TOPLEFT", 0, offset)
            this.content:SetPoint("TOPRIGHT", 0, offset)
            status.offset = offset
            status.scrollvalue = value
        end,

        ["MoveScroll"] = function(this, value)
            local status = this.status or this.localstatus
            local height, viewheight = this.scrollframe:GetHeight(), this.content:GetHeight()

            if this.scrollBarShown then
                local diff = height - viewheight
                local delta = 1
                if value < 0 then delta = -1 end
                this.scrollbar:SetValue(min(max(status.scrollvalue + delta * (1000 / (diff / 45)), 0), 1000))
            end
        end,

        ["FixScroll"] = function(this)
            if this.updateLock then return end
            this.updateLock = true
            local status = this.status or this.localstatus
            local height, viewheight = this.scrollframe:GetHeight(), this.content:GetHeight()
            local offset = status.offset or 0
            -- Give us a margin of error of 2 pixels to stop some conditions that i would blame on floating point inaccuracys
            -- No-one is going to miss 2 pixels at the bottom of the frame, anyhow!
            if viewheight < height + 2 then
                if this.scrollBarShown then
                    this.scrollBarShown = nil
                    this.scrollbar:Hide()
                    this.scrollbar:SetValue(0)
                    this.scrollframe:SetPoint("BOTTOMRIGHT")
                    if this.content.original_width then
                        this.content.width = this.content.original_width
                    end
                    this:DoLayout()
                end
            else
                if not this.scrollBarShown then
                    this.scrollBarShown = true
                    this.scrollbar:Show()
                    this.scrollframe:SetPoint("BOTTOMRIGHT", -20, 0)
                    if this.content.original_width then
                        this.content.width = this.content.original_width - 20
                    end
                    this:DoLayout()
                end
                local value = (offset / (viewheight - height) * 1000)
                if value > 1000 then value = 1000 end
                this.scrollbar:SetValue(value)
                this:SetScroll(value)
                if value < 1000 then
                    this.content:ClearAllPoints()
                    this.content:SetPoint("TOPLEFT", 0, offset)
                    this.content:SetPoint("TOPRIGHT", 0, offset)
                    status.offset = offset
                end
            end
            this.updateLock = nil
        end,

        ["LayoutFinished"] = function(this, width, height)
            this.content:SetHeight((height or 0) + 20)

            -- update the scrollframe
            this:FixScroll()

            -- schedule another update when everything has "settled"
            this.scrollframe:SetScript("OnUpdate", FixScrollOnUpdate)
        end,

        ["UpdateTheme"] = updateTheme,

        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")
            this.status = status
            if not status.scrollvalue then status.scrollvalue = 0 end
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            content.width = width - (this.scrollBarShown and 20 or 0)
            content.original_width = width
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            content.height = height
        end
    }
    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent)
        local num = AceGUI:GetNextWidgetNum(Type)

        local scrollframe = CreateFrame("ScrollFrame", nil, frame)
        scrollframe:SetPoint("TOPLEFT")
        scrollframe:SetPoint("BOTTOMRIGHT")
        scrollframe:EnableMouseWheel(true)
        scrollframe:SetScript("OnMouseWheel", ScrollFrame_OnMouseWheel)
        scrollframe:SetScript("OnSizeChanged", ScrollFrame_OnSizeChanged)

        local scrollbar = CreateFrame("Slider", ("RXPV2ScrollFrame%dScrollBar"):format(num), scrollframe,
                                      "RXPV2ScrollBarTemplate")
        scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 0, -20)
        scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 0, 20)
        scrollbar:SetMinMaxValues(0, 1000)
        scrollbar:SetValueStep(1)
        scrollbar:SetValue(0)
        scrollbar:SetWidth(16)
        scrollbar:Hide()

        -- set the script as the last step, so it doesn't fire yet
        scrollbar:SetScript("OnValueChanged", ScrollBar_OnScrollValueChanged)

        local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND")
        scrollbg:SetAllPoints(scrollbar)
        scrollbg:SetColorTexture(0, 0, 0, 0.4)

        -- Container Support
        local content = CreateFrame("Frame", nil, scrollframe)
        content:SetPoint("TOPLEFT")
        content:SetPoint("TOPRIGHT")
        content:SetHeight(400)
        scrollframe:SetScrollChild(content)

        local widget = {
            localstatus = {scrollvalue = 0},
            scrollframe = scrollframe,
            scrollbar = scrollbar,
            content = content,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end
        scrollframe.obj, scrollbar.obj = widget, widget

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActiveStepsFrame()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ActiveStepsFrame", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Frame_OnShow(frame) frame.obj:Fire("OnShow") end

    local function Frame_OnClose(frame) frame.obj:Fire("OnClose") end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:Show()
            this.IsFeatureEnabled = function() return true, false end

            -- Do not SaveFramePositions / LoadFramePositions
            this.savePosition = false
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function(this, payload)
            if not payload or payload.hideBackground == nil then return end

            local shown = not payload.hideBackground
            setBackdropChromeShown(this.frame, shown)

            if this.frame.rxpShadow then
                this.frame.rxpShadow:SetShown(shown)
            end
        end,

        ["Hide"] = function(this) this.frame:Hide() end,

        ["Show"] = function(this) this.frame:Show() end,

        ["SetShown"] = function(this)
            if this.frame:IsShown() then
                this.frame:Hide()
            else
                this.frame:Show()
            end
        end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end
            local padding = getLayout("outerPadding")
            this:SetHeight((height or 0) + (padding.top or 12) + (padding.bottom or 0))
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            content:SetHeight(height)
            content.height = height
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]

    local function Constructor()
        local frame = CreateFrame("Frame", nil, addon.RXPFrame or UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(false)
        frame:SetResizable(false)
        frame:SetToplevel(true)

        local theme = addon.v2:GetTheme()

        frame:SetFrameStrata("BACKGROUND")
        frame:SetFrameLevel(100)
        setBackdrop(frame, theme.edges.activeSteps or theme.edges.common,
                    theme.backgroundColors.activeSteps or theme.backgroundColors.common,
                    theme.borderColors.activeSteps or theme.borderColors.common)
        self:AddFrameShadow(frame)

        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        local padding = theme.layout and theme.layout.outerPadding or {}
        content:SetPoint("TOPLEFT", padding.left or 8, -(padding.top or 12))
        content:SetPoint("BOTTOMRIGHT", -(padding.right or 8), padding.bottom or 0)

        local widget = {
            content = content,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActivePartyStepsFrame()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2ActivePartyStepsFrame", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Frame_OnShow(frame) frame.obj:Fire("OnShow") end

    local function Frame_OnClose(frame) frame.obj:Fire("OnClose") end

    local function Frame_OnMouseDown(frame)
        frame:StartMoving()
        AceGUI:ClearFocus()
    end

    local function Frame_OnMouseUp(frame)
        frame:StopMovingOrSizing()
        AceGUI:ClearFocus()
    end

    local function Title_OnMouseDown(frame)
        frame:GetParent():StartMoving()
        AceGUI:ClearFocus()
    end

    local function MoverSizer_OnMouseUp(mover)
        local frame = mover:GetParent()
        frame:StopMovingOrSizing()
        local this = frame.obj
        local status = this.status or this.localstatus
        status.width = frame:GetWidth()
        status.height = frame:GetHeight()
        status.top = frame:GetTop()
        status.left = frame:GetLeft()
    end

    local function Sizer_OnMouseDown(frame)
        frame:GetParent():StartSizing("BOTTOMRIGHT")
        AceGUI:ClearFocus()
    end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this.frame:SetParent(UIParent)
            this.frame:SetFrameStrata("MEDIUM")
            this.frame:SetFrameLevel(100)
            this:SetTitle()
            this:ApplyStatus()
            this:Show()
            this.IsFeatureEnabled = function() return true, false end
        end,

        ["OnRelease"] = function(this)
            this.status = nil
            wipe(this.localstatus)
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local padding = getLayout("outerPadding")
            local contentwidth = width - (padding.left or 8) - (padding.right or 8) - 20
            if contentwidth < 0 then contentwidth = 0 end
            content:SetWidth(contentwidth)
            content.width = contentwidth
        end,

        ["GetWidth"] = function(this) return this.content.width end,

        ["GetHeight"] = function(this) return this.content.height end,

        ["SetSize"] = function(this, width, height)
            this:SetWidth(width)
            this:SetHeight(height)
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local padding = getLayout("outerPadding")
            local title = getLayout("partyTitle")
            local contentheight = height - (padding.top or 12) - (padding.bottom or 0) - (title.height or 17) - 28
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["SetTitle"] = function(this, title)
            local layout = getLayout("partyTitle")
            this.titletext:SetText(title)
            this.title:SetSize(this.titletext:GetStringWidth() + (layout.horizontalPadding or 10), layout.height or 17)
            this.title:Show()
        end,

        ["UpdateTheme"] = updateTheme,

        ["Hide"] = function(this) this.frame:Hide() end,

        ["Show"] = function(this) this.frame:Show() end,

        ["SetShown"] = function(this)
            if this.frame:IsShown() then
                this.frame:Hide()
            else
                this.frame:Show()
            end
        end,

        -- called to set an external table to store status in
        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")
            this.status = status
            this:ApplyStatus()
        end,

        ["ApplyStatus"] = function(this)
            local status = this.status or this.localstatus
            local frame = this.frame

            this:SetWidth(status.width or 225)
            this:SetHeight(status.height or 105)
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
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(true)
        frame:SetResizable(true)
        frame:SetFrameStrata("BACKGROUND")
        frame:SetFrameLevel(100)

        local theme = addon.v2:GetTheme()

        setBackdrop(frame, theme.edges.activePartySteps or theme.edges.common,
                    theme.backgroundColors.activePartySteps or theme.backgroundColors.common,
                    theme.borderColors.activePartySteps or theme.borderColors.common)
        self:AddFrameShadow(frame)

        if frame.SetResizeBounds then -- WoW 10.0
            frame:SetResizeBounds(220, 40)
        else
            frame:SetMinResize(220, 40)
        end
        frame:SetToplevel(true)
        frame:SetScript("OnShow", Frame_OnShow)
        frame:SetScript("OnHide", Frame_OnClose)
        frame:SetScript("OnMouseDown", Frame_OnMouseDown)
        frame:SetScript("OnMouseUp", Frame_OnMouseUp)

        local title = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        local titleLayout = theme.layout and theme.layout.partyTitle or {}
        title:SetPoint("TOPRIGHT", frame, "TOPRIGHT", titleLayout.right or -20, titleLayout.y or 6)
        title:ClearBackdrop()
        setBackdrop(title, theme.edges.activePartySteps or theme.edges.common,
                    theme.backgroundColors.activePartySteps or theme.backgroundColors.common,
                    theme.borderColors.activePartySteps or theme.borderColors.common)
        title:EnableMouse(true)
        title:SetScript("OnMouseDown", Title_OnMouseDown)
        title:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 2, 1)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(theme.textColor.activePartySteps or theme.textColor.common))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(theme.font, addon.settings.profile.guideFontSize + 1, "")

        local sizer = CreateFrame("Button", nil, frame)

        sizer:SetFrameLevel(frame:GetFrameLevel() + 1)
        sizer:SetSize(12, 12)
        sizer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 3)
        sizer:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
        sizer:SetHighlightTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
        sizer:EnableMouse(true)
        sizer:SetScript("OnMouseDown", Sizer_OnMouseDown)
        sizer:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        local padding = theme.layout and theme.layout.outerPadding or {}
        content:SetPoint("TOPLEFT", padding.left or 8, -(padding.top or 12))
        content:SetPoint("BOTTOMRIGHT", -(padding.right or 8), padding.bottom or 0)
        -- content:ClearBackdrop()
        -- content:SetBackdrop(addon.RXPFrame.backdrop.bottom)
        -- content:SetBackdropColor(unpack(addon.colors.bottomFrameBG))

        local widget = {
            localstatus = {},
            title = title,
            titletext = titletext,
            sizer = sizer,
            content = content,
            frame = frame,
            type = Type
        }
        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end

function addon.ui.v2:RegisterRXPV2ActiveStepItem()
    local Type, Version = "RXPV2ActiveStepItem", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Methods
    -------------------------------------------------------------------------------]]
    local methods = {
        ["OnAcquire"] = function(this)
            this:SetWidth(300)
            this:SetHeight(100)
            this:SetTitle(nil)
        end,

        -- ["OnRelease"] = nil,

        ["SetTitle"] = function(this, title)
            local layout = getLayout("stepBadge")
            this.titletext:SetText(title)
            if title == "" then
                this.titletext:SetAlpha(0)
                this.title:SetSize(layout.horizontalPadding or 8, layout.height or 16)
            else
                this.title:SetAlpha(1)
                this.titletext:SetText(title)
                this.title:SetSize(this.titletext:GetStringWidth() + (layout.horizontalPadding or 8),
                                   layout.height or 16)
            end
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end
            local padding = getLayout("stepItemPadding")
            local margin = getLayout("stepItemMargin")
            this:SetHeight((height or 0) + (padding.top or 6) + (padding.bottom or 2) +
                           (margin.bottom or 10))
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local padding = getLayout("stepItemPadding")
            local contentwidth = width - (padding.left or 4) - (padding.right or 6)
            if contentwidth < 0 then contentwidth = 0 end
            content:SetWidth(contentwidth)
            content.width = contentwidth
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local padding = getLayout("stepItemPadding")
            local margin = getLayout("stepItemMargin")
            local contentheight = height - (padding.top or 6) - (padding.bottom or 2) -
                                  (margin.bottom or 10)
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["UpdateTheme"] = updateTheme,

        ["UpdateSubTheme"] = function (this, payload)
            if not payload then return end

            local theme = addon.v2:GetTheme()
            local itemEdge = theme.edges.activeStepItem or theme.edges.common
            local itemBackground = theme.backgroundColors.activeStepItem or theme.backgroundColors.common
            local itemBorder = theme.borderColors.activeStepItem or theme.borderColors.common
            local badgeEdge = theme.edges.activeStepBadge or itemEdge
            local badgeBackground = theme.backgroundColors.activeStepBadge or itemBackground
            local badgeBorder = theme.borderColors.activeStepBadge or itemBorder

            setBackdrop(this.card, itemEdge, itemBackground, itemBorder)
            setBackdrop(this.title, badgeEdge, badgeBackground, badgeBorder)
        end
    }

    --[[-----------------------------------------------------------------------------
    Constructor
    -------------------------------------------------------------------------------]]
    local function Constructor()
        local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")

        -- frame:EnableMouse(true)
        -- frame:SetScript("OnEnter", Control_OnEnter)
        -- frame:SetScript("OnLeave", Control_OnLeave)
        -- frame:SetScript("OnMouseDown", CheckBox_OnMouseDown)
        -- frame:SetScript("OnMouseUp", CheckBox_OnMouseUp)

        -- frame:SetBackdrop(addon.RXPFrame.backdrop.edge)
        -- frame:SetBackdropColor(unpack(addon.colors.bottomFrameBG))
        local theme = addon.v2:GetTheme()
        local itemEdge = theme.edges.activeStepItem or theme.edges.common
        local itemBackground = theme.backgroundColors.activeStepItem or theme.backgroundColors.common
        local itemBorder = theme.borderColors.activeStepItem or theme.borderColors.common
        local itemTextColor = theme.textColor.activeStepItem or theme.textColor.common
        local badgeEdge = theme.edges.activeStepBadge or itemEdge
        local badgeBackground = theme.backgroundColors.activeStepBadge or itemBackground
        local badgeBorder = theme.borderColors.activeStepBadge or itemBorder
        local badgeTextColor = theme.textColor.activeStepBadge or itemTextColor

        local margin = theme.layout and theme.layout.stepItemMargin or {}

        local card = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        card:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
        card:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, margin.bottom or 10)
        setBackdrop(card, itemEdge, itemBackground, itemBorder)
        addon.ui.v2:AddFrameShadow(card, nil, nil, nil, nil, "stepItem")

        local title = CreateFrame("Frame", nil, card, BackdropTemplateMixin and "BackdropTemplate")
        title:SetFrameLevel(card:GetFrameLevel() + 2)
        local badgeLayout = theme.layout and theme.layout.stepBadge or {}
        title:SetPoint("TOPLEFT", card, "TOPLEFT", badgeLayout.x or 4, badgeLayout.y or 10)
        title:ClearBackdrop()
        setBackdrop(title, badgeEdge, badgeBackground, badgeBorder)
        -- title:EnableMouse(true)
        -- title:SetScript("OnMouseDown", Title_OnMouseDown)
        -- title:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 0, 1)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(badgeTextColor))
        titletext:SetShadowColor(24 / 255, 210 / 255, 255 / 255, 0.7)
        titletext:SetShadowOffset(0, 0)
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(theme.font, addon.settings.profile.guideFontSize - 2, "OUTLINE")

        -- local border = CreateFrame("Frame", nil, frame, "BackdropTemplate")
        -- border:SetPoint("TOPLEFT", 0, 0)
        -- border:SetPoint("BOTTOMRIGHT", 0, 0)
        -- border:SetBackdrop(PaneBackdrop)
        -- border:SetBackdropColor(unpack(addon.colors.bottomFrameBG))
        -- border:SetBackdropBorderColor(unpack(addon.colors.bottomFrameBG))

        -- Container Support
        local content = CreateFrame("Frame", nil, card)
        local padding = theme.layout and theme.layout.stepItemPadding or {}
        content:SetPoint("TOPLEFT", padding.left or 4, -(padding.top or 6))
        content:SetPoint("BOTTOMRIGHT", -(padding.right or 6), padding.bottom or 2)

        local widget = {card = card, title = title, titletext = titletext, content = content, frame = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end
