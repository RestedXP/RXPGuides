local addonName, addon = ...

-- Locale doesn't exist yet
-- AceAddon doesn't exist yet
local AceGUI = LibStub("AceGUI-3.0")

addon.ui = {
    v2 = {}
}

local L

function addon.ui.v2:Initialize()

    -- Locales.lua loads after this file is included
    L = addon.locale.Get
end

-- LFGParentFrameMixin
function addon.ui.v2:GetBrandedFrame(template, frameTitle, attachment)
    attachment = attachment or _G.UIParent

    if not attachment then return end
    local attachmentName = attachment.GetName and attachment:GetName()
    if not attachmentName then return end

    local frame = AceGUI:Create(template)
    RXPD = frame
    frame:SetLayout("Fill")
    --frame:Hide()
    -- frame:EnableResize(true)

    --frame.statustext:GetParent():Hide() -- Hide the statustext bar
    frame:SetTitle(frameTitle)
    -- frame.frame:ClearAllPoints()
    -- frame.frame:SetPoint("TOPLEFT", attachment, "TOPRIGHT", offset.x, offset.y)
    -- frame:SetWidth(attachment:GetWidth() * 0.7)
    -- frame:SetHeight(attachment:GetHeight()) -- + offset.y - 8 - offset.tabsHeight * 2)

    -- frame.scrollContainer = AceGUI:Create("ScrollFrame")
    -- frame.scrollContainer:SetLayout("Flow")
    -- frame:AddChild(frame.scrollContainer)

    -- frame.frame:SetBackdrop(addon.RXPFrame.backdrop.edge)
    -- frame.frame:SetBackdropColor(unpack(addon.colors.background))
end
