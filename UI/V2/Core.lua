local addonName, addon = ...

local locale = _G.GetLocale()

-- AceAddon doesn't exist yet
local AceGUI = LibStub("AceGUI-3.0")

addon.ui = {v2 = {}}

-- Locale doesn't exist yet
local L

function addon.ui.v2:Initialize()

    -- Locales.lua loads after this file is included
    L = addon.locale.Get

    self:RegisterRXPV2CurrentStep()
end

function addon.ui.v2:RegisterRXPV2CurrentStep()
    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPV2CurrentStep", 1
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    --[[-----------------------------------------------------------------------------
    Scripts
    -------------------------------------------------------------------------------]]
    local function Button_OnClick(frame)
        frame.obj:Hide()
    end

    local function Frame_OnShow(frame) frame.obj:Fire("OnShow") end

    local function Frame_OnClose(frame) frame.obj:Fire("OnClose") end

    local function Frame_OnMouseDown(frame) AceGUI:ClearFocus() end

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
            this.frame:SetParent(addon.RXPFrame)
            this.frame:SetFrameStrata("MEDIUM")
            this.frame:SetFrameLevel(100)
            this:SetTitle()
            this:ApplyStatus()
            this:Show()
            this:EnableResize(true)
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

        ["OnHeightSet"] = function(this, height)
            local content = this.content
            local contentheight = height - 57
            if contentheight < 0 then contentheight = 0 end
            content:SetHeight(contentheight)
            content.height = contentheight
        end,

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

        ["Hide"] = function(this) this.frame:Hide() end,

        ["Show"] = function(this) this.frame:Show() end,

        ["SetShown"] = function(this)
            if this.frame:IsShown() then
                this.frame:Hide()
            else
                this.frame:Show()
            end
        end,

        ["EnableResize"] = function(this, state)
            this.frame:SetResizable(state or false)
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
    local FrameBackdrop = {
        bgFile = "Interface\\LFGFrame\\UI-LFG-BlueBG",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 16,
        insets = {left = 3, right = 3, top = 5, bottom = 3}
    }

    local function Constructor()
        local frame = CreateFrame("Frame", nil, addon.RXPFrame, "BackdropTemplate")
        frame:Hide()

        frame:EnableMouse(true)
        frame:SetMovable(true) -- TODO only allow for not-player
        frame:SetResizable(true)
        frame:SetFrameStrata(addon.RXPFrame:GetFrameStrata())
        frame:SetFrameLevel(100) -- Lots of room to draw under it
        frame:SetBackdrop(FrameBackdrop)
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

        local title = CreateFrame("Frame", nil, frame)
        title:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)

        local titletext = title:CreateFontString(nil, "OVERLAY")
        titletext:ClearAllPoints()
        titletext:SetPoint("CENTER", title, 0, 0)
        titletext:SetJustifyH("CENTER")
        titletext:SetJustifyV("MIDDLE")
        titletext:SetTextColor(unpack(addon.activeTheme.textColor))
        titletext:SetFontObject(_G.GameFontNormalSmall)
        titletext:SetFont(addon.font, addon.settings.profile.guideFontSize - 1, "")
        titletext:EnableMouse(true)
        titletext:SetScript("OnMouseDown", Title_OnMouseDown)
        titletext:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        local sizer = CreateFrame("Button", nil, frame)

        sizer:SetFrameLevel(frame:GetFrameLevel() + 1)
        sizer:SetSize(16, 16)
        sizer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
        sizer:SetNormalTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
        sizer:SetHighlightTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight", "ADD")
        sizer:EnableMouse(true)
        sizer:SetScript("OnMouseDown", Sizer_OnMouseDown)
        sizer:SetScript("OnMouseUp", MoverSizer_OnMouseUp)

        -- Container Support
        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", 17, -27)
        content:SetPoint("BOTTOMRIGHT", -17, 40)

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
