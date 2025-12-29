local addonName, addon = ...

-- Copied from libs\AceGUI-3.0\widgets\AceGUIContainer-Frame.lua, version 8

function addon.ui.v2.RegisterRXPGuideConfigurator()
    local L = addon.locale.Get

    --[[-----------------------------------------------------------------------------
    Frame Container
    -------------------------------------------------------------------------------]]
    local Type, Version = "RXPGuideConfigurator", 1
    local AceGUI = LibStub and LibStub("AceGUI-3.0", true)
    if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

    -- Lua APIs
    local pairs, assert, type = pairs, assert, type
    local wipe = table.wipe

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
        frame:GetParent():StartMoving()
        AceGUI:ClearFocus()
    end

    local function MoverSizer_OnMouseUp(mover)
        local frame = mover:GetParent()
        frame:StopMovingOrSizing()
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
            self:Show()
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
        frame:SetMovable(true)
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

        local welcometext = frame:CreateFontString(nil, "ARTWORK")
        welcometext:SetFontObject(GameFontNormal)
        welcometext:SetPoint("BOTTOMLEFT", topLeftIcon, "BOTTOMRIGHT", 12, 6)
        welcometext:SetTextColor(1, 1, 1)
        welcometext:SetFont(addon.font, 14, "")
        welcometext:SetText(L("Welcome, select a guide."))

        --Container Support
        local content = CreateFrame("Frame", nil, frame)
        content:SetPoint("TOPLEFT", 17, -27)
        content:SetPoint("BOTTOMRIGHT", -17, 40)

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
