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

    self:RegisterRXPV2ScrollBar()
    self:RegisterRXPV2CurrentStepFrame()
    self:RegisterRXPV2CurrentStepItem()
end

local function updateTheme(this, payload)
    if not payload then return end

    print("Updating", this.type)

    this.theme = this.theme or {
        edge = addon.RXPFrame.backdrop.edge,
        backgroundColor = addon.colors.background,
        scale = 1
    }

    if payload.scale then
        this.theme.scale = payload.scale
    end

    if this.SetScale then
        this:SetScale(this.theme.scale)
    end

    if payload.edge then
        this.theme.edge = payload.edge
    end

    if payload.backgroundColor then
        this.theme.backgroundColor = payload.backgroundColor
    end

    if payload.showBackground ~= nil and this.frame.SetBackdrop then
        if payload.showBackground then
            this.frame:SetBackdrop(this.theme.edge)
            this.frame:SetBackdropColor(unpack(this.theme.backgroundColor))
        else
            this.frame:ClearBackdrop()
        end
    end

    if payload.updateChildren then
        -- Do not recursively changes some child properties
        payload.showBackground = nil
        payload.scale = nil

        for _, child in pairs(this.children or {}) do
            if child.UpdateTheme then
                child:UpdateTheme(payload)
            end
        end
    end
end

function addon.ui.v2:RegisterRXPV2ScrollBar()
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
                                      "UIPanelScrollBarTemplate")
        scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 4, -16)
        scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 4, 16)
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

function addon.ui.v2:RegisterRXPV2CurrentStepFrame()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2CurrentStepFrame", 1
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
            this:EnableResize(true)
            this.IsFeatureEnabled = function() return true, false end
        end,

        ["OnRelease"] = function(this)
            this.status = nil
            wipe(this.localstatus)
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local contentwidth = width - 34
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
            local contentheight = height - 57
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["SetTitle"] = function(this, title)
            this.titletext:SetText(title)
            if title == "" or not title then
                this.title:Hide()
                this.title:SetSize(10, 17)
            else
                this.title:SetAlpha(1)
                this.titletext:SetText(title)
                this.title:SetSize(this.titletext:GetStringWidth() + 10, 17)
                this.title:Show()
            end
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

        ["EnableResize"] = function(this, state) this.frame:SetResizable(state or false) end,

        -- called to set an external table to store status in
        ["SetStatusTable"] = function(this, status)
            assert(type(status) == "table")
            this.status = status
            this:ApplyStatus()
        end,

        ["ApplyStatus"] = function(this)
            local status = this.status or this.localstatus
            local frame = this.frame
            this:SetWidth(status.width or 220)
            this:SetHeight(status.height or 100)
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
        frame:SetMovable(true) -- TODO only allow for not-player
        frame:SetResizable(true)
        frame:SetFrameStrata("BACKGROUND")
        frame:SetFrameLevel(100)
        frame:SetBackdrop(addon.RXPFrame.backdrop.edge)
        frame:SetBackdropColor(unpack(addon.colors.background))

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
        title:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -20, 6)
        title:ClearBackdrop()
        title:SetBackdrop(addon.RXPFrame.backdrop.edge)
        title:SetBackdropColor(unpack(addon.colors.background))
        title:EnableMouse(true)
        title:SetScript("OnMouseDown", Title_OnMouseDown)
        title:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 2, 1)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(addon.activeTheme.textColor))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(addon.font, addon.settings.profile.guideFontSize + 1, "")

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
        content:SetPoint("TOPLEFT", 6, -4)
        content:SetPoint("BOTTOMRIGHT", -4, 6)
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

function addon.ui.v2:RegisterRXPV2CurrentStepItem()
    local Type, Version = "RXPV2CurrentStepItem", 1
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
            this.titletext:SetText(title)
            if title == "" then
                this.titletext:SetAlpha(0)
                this.title:SetSize(10, 17)
            else
                this.title:SetAlpha(1)
                this.titletext:SetText(title)
                this.title:SetSize(this.titletext:GetStringWidth() + 10, 17)
            end
        end,

        ["SetScale"] = function(this, scale)
            this.frame:SetScale(scale)
        end,

        ["LayoutFinished"] = function(this, width, height)
            if this.noAutoHeight then return end
            this:SetHeight((height or 0) + 20)
        end,

        ["OnWidthSet"] = function(this, width)
            local content = this.content
            local contentwidth = width - 20
            if contentwidth < 0 then contentwidth = 0 end
            content:SetWidth(contentwidth)
            content.width = contentwidth
        end,

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - 20
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

        ["UpdateTheme"] = updateTheme,
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
        frame:SetBackdrop(addon.RXPFrame.backdrop.edge)
        frame:SetBackdropColor(unpack(addon.colors.background))

        local title = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        title:SetPoint("TOPLEFT", frame, "TOPLEFT", 7, 5)
        title:ClearBackdrop()
        title:SetBackdrop(addon.RXPFrame.backdrop.edge)
        title:SetBackdropColor(unpack(addon.colors.background))
        -- title:EnableMouse(true)
        -- title:SetScript("OnMouseDown", Title_OnMouseDown)
        -- title:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 2, 1)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(addon.activeTheme.textColor))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(addon.font, addon.settings.profile.guideFontSize - 1, "")

        -- local border = CreateFrame("Frame", nil, frame, "BackdropTemplate")
        -- border:SetPoint("TOPLEFT", 0, 0)
        -- border:SetPoint("BOTTOMRIGHT", 0, 0)
        -- border:SetBackdrop(PaneBackdrop)
        -- border:SetBackdropColor(unpack(addon.colors.bottomFrameBG))
        -- border:SetBackdropBorderColor(unpack(addon.colors.bottomFrameBG))

        -- Container Support
        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", 6, -10)
        content:SetPoint("BOTTOMRIGHT", -6, 6)

        local widget = {title = title, titletext = titletext, content = content, frame = frame, type = Type}

        for method, func in pairs(methods) do widget[method] = func end

        return AceGUI:RegisterAsContainer(widget)
    end

    AceGUI:RegisterWidgetType(Type, Constructor, Version)

end
