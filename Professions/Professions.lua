local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globals
local _G = _G
local len, fmt, lower, find, match, gmatch = string.len, string.format, string.lower, string.find, string.match, string.gmatch
local tcount, tinsert, twipe, tsort, tremove, tconcat = table.count, table.insert, table.wipe, table.sort, table.remove, table.concat
local pairs, ipairs, next, type, tostring, tonumber, error, unpack = pairs, ipairs, next, type, tostring, tonumber, error, unpack
local max, min, abs, floor, ceil, huge, log = math.max, math.min, math.abs, math.floor, math.ceil, math.huge, math.log
local GetContainerItemInfo = _G.C_Container.GetContainerItemInfo
local GetMoney, CopyTable = _G.GetMoney, _G.CopyTable


addon.professions = addon:NewModule("ProfessionsGuide", "AceEvent-3.0")

--Session
local EVENTS_TO_REGISTER = {
    --TODO: cull unnecessary events
    "TRADE_SKILL_SHOW", --Opening the tradeskill window
    "TRADE_SKILL_CLOSE", --Closing the tradeskill window
    "TRADE_SKILL_UPDATE", --Learning skill?, Minimizing categories in tradeskill window
    "UPDATE_TRADESKILL_RECAST", --Started crafting
    "ITEM_PUSH", --Item added to inventory?
    "BAG_NEW_ITEMS_UPDATED", --item added to inventory?
    "BAG_UPDATE_COOLDOWN",
    "UNIT_INVENTORY_CHANGED",
    "TRADE_SKILL_DETAILS_UPDATE", --TODO: test when activated
    "SKILL_LINES_CHANGED", --Learning/unlearning, journeyman -> master
    "ITEM_LOCKED", --Locking the item in bagSlot (when selling to a vendor for example)
    "ITEM_LOCK_CHANGED", --Changing the item status in bagSlot
    "ITEM_UNLOCKED",

    "CHAT_MSG_LOOT",
    "CHAT_MSG_SKILL",

    "PLAYER_MONEY",
}

addon.professions.session = {
    isInitialized = false,
}

--local helper functions

--TODO: Maybe change to table approach
--Faster way to concat strings
--Assumes allways builder .. "string"
--InitialString may be empty
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

--Splits arguments for slash commands to emulate ... var args
local function varArgs(message)
    local args = {}
    for arg in message:gmatch("%S+") do
        args[#args+1] = arg
    end
    return unpack(args)
end

--Prints the (global) data
local function pnt(...)
    local args = {...}
    local arg
    local dots
    for i = 1, #args do
        arg = args[i]
        if find(arg, "%.") then
            dots = nil
            for dot in gmatch(arg, "[^%.]+") do
                if not dots then
                    dots = _G[dot]
                else
                    dots = dots[dot]
                end
            end
            print(dots)
        elseif _G[arg] then
            print("global: ", _G[arg])
        else
            print(arg)
        end
    end
end

--local functions

--Adds item to RXPCData.craftedItems
--itemCount defaults to 1
local function addToCraftedItems(itemID, itemCount)
    if not itemID then return end
    itemCount = itemCount or 1

    if not RXPCData.craftedItems then
        RXPCData.craftedItems = {}
    end

    RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + itemCount
end

--Removes item from RXPCData.craftedItems
--itemCount defaults to RXPCData.craftedImtes[itemID] count
local function removeFromCraftedItems(itemID, itemCount)
    if not itemID then return end
    if not RXPCData.craftedItems or not RXPCData.craftedItems[itemID] then return end
    itemCount = itemCount or RXPCData.craftedItems[itemID]

    RXPCData.craftedItems[itemID] = max(0, RXPCData.craftedItems[itemID] - itemCount)
    if RXPCData.craftedItems[itemID] <= 0 then -- <= for safety only, should never be below 0
        RXPCData.craftedItems[itemID] = nil
    end
end

--Events
function addon.professions:TRADE_SKILL_SHOW()
end

function addon.professions:TRADE_SKILL_CLOSE()
end

function addon.professions:TRADE_SKILL_UPDATE()
end

function addon.professions:UPDATE_TRADESKILL_RECAST()
end

function addon.professions:ITEM_PUSH(_, bagSlot, iconFileID)
    print("ITEM_PUSH")
    print(bagSlot, iconFileID)
    --TODO: get info by iconFileID
end

local tstFrame = {}

function addon.professions:ITEM_LOCK_CHANGED(_, bagIndex, slotIndex)
end

--Updates craftedItems when an item is removed from inventory
function addon.professions:ITEM_LOCKED(_, bagIndex, slotIndex)
    if bagIndex < 0 or bagIndex > 4 then return end

    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    if RXPCData.craftedItems[itemID] then
        RXPCData.craftedItems[itemID] = max(0, RXPCData.craftedItems[itemID] - stackCount)
        if RXPCData.craftedItems[itemID] == 0 then
            RXPCData.craftedItems[itemID] = nil
        end
    end

    --TODO: debbuging screen -delete this when ready
    local text = ""
    for k, v in pairs(RXPCData.craftedItems) do
        text = text .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    tstFrame.text:SetText(text)
end

--Updates craftedItems when an item is stored to inventory
function addon.professions:ITEM_UNLOCKED(_, bagIndex, slotIndex)
    if bagIndex < 0 or bagIndex > 4 then return end

    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    --Check if its a recipe
    local debug = true
    if debug or isRecipe(containerInfo.itemName) then --TODO: What to do now that we don't know whats a recipe and whats not
        RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + stackCount
    end

    --TODO: debbuging screen -delete this when ready
    local text = ""
    for k, v in pairs(RXPCData.craftedItems) do
        text = text .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    tstFrame.text:SetText(text)
end

function addon.professions:BAG_NEW_ITEMS_UPDATED(_)
end

function addon.professions:BAG_UPDATE_COOLDOWN()
end

function addon.professions:UNIT_INVENTORY_CHANGED(unitTokenVariant)
end

function addon.professions:TRADE_SKILL_DETAILS_UPDATE(...)
    print("DETAILS_UPDATE")
    local args = {...}
    for index, value in ipairs(args) do
        print(index, ": ", value)
    end
    print("==========")
end

function addon.professions:SKILL_LINES_CHANGED()
    --print("skill lines changed")
end

--Updates crafted items list
function addon.professions:CHAT_MSG_LOOT(_, text)
    --TODO: change only to check prof1 and prof2
    --TODO: get crafted stack size and update accordingly
    local itemName = match(text, "%[(.*)%]")
    local foundRecipe = false
    for k, recipes in pairs(PROFESSIONS) do --TODO: What to do now that we do not have that info?
        if k ~= "VENDOR_ITEMS" and k ~= "testing" then
            for recipeName, _ in pairs(recipes) do
                if lower(itemName) == lower(recipeName) then
                    --Update crafted items
                    RXPCData.craftedItems[itemName] = (RXPCData.craftedItems[itemName] or 0) + 1
                    foundRecipe = true
                    break
                end
            end
            if foundRecipe then
                break
            end
        end
    end
end

--Updates skill level
--TODO: Make a better check whether chat_msg_skill is related to professions or not!
function addon.professions:CHAT_MSG_SKILL(_, text)
    if RXPCData.professions == nil or RXPCData.professions.profession1 == nil or RXPCData.professions.profession1.name == nil
        or RXPCData.professions.profession2 == nil or RXPCData.professions.profession2.name == nil then
        return
    end

    local newSkillLevel = tonumber(match(text, "%d+"))
    local prof1Name, prof2Name = RXPCData.professions.profession1.name, RXPCData.professions.profession2.name
    if find(lower(text), prof1Name) then
        RXPCData.professions.profession1.skillLevel = newSkillLevel
    elseif find(lower(text), prof2Name) then
        RXPCData.professions.profession2.skillLevel = newSkillLevel
    else --TODO: check if we even have to send an error here
        error("Profession leveled: " .. text .. "\nIs not among: {" .. prof1Name .. ", " .. prof2Name .. "}", 2)
    end
end

function addon.professions:PLAYER_MONEY(...)
    RXPCData.money = GetMoney()
end


--Setup
function addon.professions:Setup()
    --TODO: add toggle on/off functionality

    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if self.session.isInitialized == true then return end

    for _, event in ipairs(EVENTS_TO_REGISTER) do
        self:RegisterEvent(event)
    end
    RXPCData.professions.isInitialScanned = RXPCData.professions.isInitialScanned or false
    self.AH:Setup()
    self.session.isInitialized = true
end


--Slash commands
--Mostly used for debugging
SLASH_clear1 = '/clear'
SlashCmdList['clear'] = function()
    _G["ChatFrame1"]:Clear()
end

SLASH_cls1 = '/cls'
SlashCmdList['cls'] = function()
    _G["ChatFrame1"]:Clear()
end

SLASH_r1 = '/r'
SlashCmdList['r'] = function()
    C_UI.Reload()
end

SLASH_c1 = '/c'
SlashCmdList['c'] = function()
    RXPCData.craftedItems = {}
end

SLASH_pnt1 = '/pnt'
SlashCmdList['pnt'] = function(args)
    pnt(varArgs(args))
end

SLASH_print1 = '/print'
SlashCmdList['print'] = function(args)
    pnt(varArgs(args))
end


print("done loading professions")

--[[ Notes
   
]]