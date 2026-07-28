local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globlas
local _G = _G
local len, fmt, lower, find, match, gmatch = string.len, string.format, string.lower, string.find, string.match, string.gmatch
local tcount, tinsert, twipe, tsort, tremove, tconcat = table.count, table.insert, table.wipe, table.sort, table.remove, table.concat
local pairs, ipairs, next, type, tostring, tonumber, error, unpack = pairs, ipairs, next, type, tostring, tonumber, error, unpack
local max, min, abs, floor, ceil, huge, log = math.max, math.min, math.abs, math.floor, math.ceil, math.huge, math.log

addon.professions.export = addon.professions.export or {}
addon.professions.export.gui = addon.professions.export.gui or {}


addon.professions.export.gui = CreateFrame('Frame', 'exportFrame', UIParent, "BasicFrameTemplateWithInset")
local gui = addon.professions.export.gui

gui:SetSize(500, 700)
gui:SetPoint("BOTTOMLEFT", UIParent, "CENTER")
gui.TitleBg:SetHeight(30)
gui.title = gui:CreateFontString(nil, "OVERLAY", "GameFontNormal")
gui.title:SetPoint("CENTER", gui.TitleBg, "CENTER", 0, 6)
gui.title:SetText("Export page")
gui:EnableMouse(true)
gui:SetMovable(true)
gui:RegisterForDrag("LeftButton")
gui:SetScript("OnDragStart", function (self)
    self:StartMoving()
end)
gui:SetScript("OnDragStop", function (self)
    self:StopMovingOrSizing()
end)

-- Create the scrolling parent frame and size it to fit inside the texture
local scrollFrame = CreateFrame("ScrollFrame", nil, gui, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", -20, -30)
scrollFrame:SetPoint("BOTTOMRIGHT", -30, 30)

-- Create the scrolling child frame, set its width to fit, and give it an arbitrary minimum height (such as 1)
local scrollChild = CreateFrame("EditBox")
scrollChild:SetEnabled(false)
scrollChild:SetMultiLine(true)
scrollChild:SetAutoFocus(false)
scrollChild:SetFontObject("GameFontNormal")
scrollFrame:SetScrollChild(scrollChild)
scrollChild:SetWidth(gui:GetWidth() - 18)
scrollChild:SetHeight(1)
scrollChild:SetScript("OnEscapePressed", function(self)
    self:ClearFocus()
end)

gui:SetScript("OnHide", function (self)
    scrollChild:SetEnabled(false)
end)
gui:SetScript("OnShow", function (self)
    scrollChild:HighlightText()
end)

--String builder
local function stringBuilder(initialString)
    local self = {
        t = {initialString}
    }

    function self:append(str)
        self.t[#self.t+1] = str
        return self
    end

    function self:build()
        return tconcat(self.t)
    end

    function self:flush()
        self.t = {}
    end

    function self:isEmpty()
        return #self.t > 0
    end

    return setmetatable(self, {__concat = function (a, b)
        a.t[#a.t+1] = b
        return a
    end})
end

--Converts foundItems to Lua table text
local function foundItemsToLuaTable()
    local sb = stringBuilder("{\n")
    for itemName, itemTables in pairs(addon.professions.profSession.foundItems) do
        sb:append("\t[\""):append(itemName):append("\"] = {\n")
        for _, itemTable in ipairs(itemTables) do
            sb:append("\t\t{\n")
            sb:append("\t\t\tcount = "):append(itemTable.count):append(",\n")
            sb:append("\t\t\tprice = "):append(itemTable.price):append(",\n")
            sb:append("\t\t\tpricePerItem = "):append(itemTable.pricePerItem):append(",\n")
            sb:append("\t\t},\n")
        end
        sb:append("\t},\n")
    end
    sb:append("}")

    return sb:build()
end

--Converts foundItems to JSON Object
local function foundItemsToJSONObject()
    local sb = stringBuilder("{\n")
    for itemName, itemTables in pairs(addon.professions.profSession.foundItems) do
        sb:append("\t\""):append(itemName):append("\" : {\n")
        local i = 1
        for _, itemTable in ipairs(itemTables) do
            sb:append("\t\t\""):append(tostring(i)):append("\":{\n")
            sb:append("\t\t\t\"count\" : "):append(itemTable.count):append(",\n")
            sb:append("\t\t\t\"price\" : "):append(itemTable.price):append(",\n")
            sb:append("\t\t\t\"pricePeritem\" : "):append(itemTable.pricePerItem):append("\n")
            sb:append("\t\t},\n")
            i = i + 1
        end
        sb:append("\t},\n")
    end
    sb:append("}")

    return sb:build()
end

--Exports foundItems to clipboard in given format
--1 -> Lua Table (default)
--2 -> JSON Object
local function exportFoundItems(option)
    local currentDate = tostring(date("%m/%d/%y %H:%M:%S"))
    local sb = stringBuilder("---"):append(currentDate):append(" "):append(tostring(RXPCData.professions.profession1.name)):append(" "):append(RXPCData.professions.faction):append(" - "):append(GetRealmName()):append("---\n")
    local converted
    if option == 2 then
        converted = foundItemsToJSONObject()
    else
        converted = foundItemsToLuaTable()
    end
    sb:append(converted)

    return sb:build()
end


SLASH_showexport1 = '/se'
SlashCmdList['showexport'] = function()
    if not gui:IsVisible() then
        gui:Show()
        scrollChild:SetEnabled(true)
    end
end



SLASH_export1 = '/export'
SlashCmdList['export'] = function(option)
    print("exporting", RXPCData.professions.profession1.name, "...")
    if not gui:IsVisible() then gui:Show() end
    if not option then option = 1 else option = tonumber(option) end

    scrollChild:SetEnabled(true)
    scrollChild:SetFocus()
    scrollChild:SetText(exportFoundItems(option))
    scrollChild:HighlightText()
end



