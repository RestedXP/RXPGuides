local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC" or addon.game == "FOREVER" or addon.game == "MOP") then return end

addon.professions = addon.professions or {}
addon.professions.locale = addon.professions.locale or {}

-- Localize globals
local _G = _G
local len, fmt, lower, find, match, gmatch = string.len, string.format, string.lower, string.find, string.match, string.gmatch
local tcount, tinsert, twipe, tsort, tremove, tconcat = table.count, table.insert, table.wipe, table.sort, table.remove, table.concat
local pairs, ipairs, next, type, tostring, tonumber, error, unpack = pairs, ipairs, next, type, tostring, tonumber, error, unpack
local max, min, abs, floor, ceil, huge, log = math.max, math.min, math.abs, math.floor, math.ceil, math.huge, math.log
local GetContainerItemInfo = _G.C_Container.GetContainerItemInfo
local GetMoney, CopyTable = _G.GetMoney, _G.CopyTable
local GetLocale = _G.GetLocale()

-- Local renaming
local PROFESSION_NAMES = addon.professions.locale.PROFESSION_NAMES


addon.professions = addon:NewModule("ProfessionsGuide", "AceEvent-3.0")

--Session
local EVENTS_TO_REGISTER = {
    --Universal
    universal = {
        "CHAT_MSG_LOOT",
        "CHAT_MSG_SKILL",
        "PLAYER_MONEY",
    },
    --Classic
    classic = {
        "ITEM_LOCKED", --Locking the item in bagSlot (when selling to a vendor for example)
        "ITEM_UNLOCKED",
    },
    --Forever
    forever = {

    },
}

addon.professions.session = {
    isInitialized = false,
    isClassic = false,
}

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

--Updates craftedItems when an item is removed from inventory
function addon.professions:ITEM_LOCKED(_, bagIndex, slotIndex)
    --TODO: Check if this functionality is necessary at all!
    --[[if not bagIndex or not slotIndex or bagIndex < 0 or bagIndex > 4 then return end

    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    if not containerInfo then return end
    RXPCData.craftedItems = RXPCData.craftedItems or {}
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    if RXPCData.craftedItems[itemID] then
        RXPCData.craftedItems[itemID] = max(0, RXPCData.craftedItems[itemID] - stackCount)
        if RXPCData.craftedItems[itemID] == 0 then
            RXPCData.craftedItems[itemID] = nil
        end
    end]]
end

--Updates craftedItems when an item is stored to inventory
function addon.professions:ITEM_UNLOCKED(_, bagIndex, slotIndex)
    --TODO: Check if this functionality is necessary at all!
    --[[if not bagIndex or not slotIndex or bagIndex < 0 or bagIndex > 4 then return end

    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    if not containerInfo then return end
    RXPCData.craftedItems = RXPCData.craftedItems or {}
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    --Until then every item counts, as before (the old isRecipe check was never defined)
    RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + stackCount]]
end

--Updates crafted items list
function addon.professions:CHAT_MSG_LOOT(_, text) --TODO: Rework this
end

--Updates skill level
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
    end
    --Anything else (weapon skills, defense, gathering) is not tracked here, so it is ignored instead of raising an error
end

function addon.professions:PLAYER_MONEY(...)
    RXPCData.money = GetMoney()
end

--Helper function to set up RXPCData
local function setUpRXPCData()
    RXPCData.professions = RXPCData.professions or {}
    RXPCData.professions.faction = RXPCData.professions.faction or ""
    RXPCData.professions.money = RXPCData.money or 0
    RXPCData.professions.scannedAt = RXPCData.professions.scannedAt or ""
    RXPCData.professions.foundItems = RXPCData.professions.foundItems or {}

    RXPCData.professions.profession1 = RXPCData.professions.profession1 or {}
    RXPCData.professions.profession1.name = RXPCData.professions.profession1.name or ""
    RXPCData.professions.profession1.skillLevel = RXPCData.professions.profession1.skillLevel or 0
    RXPCData.professions.profession1.skillMaxLevel = RXPCData.professions.profession1.skillMaxLevel or 0

    RXPCData.professions.profession2 = RXPCData.professions.profession2 or {}
    RXPCData.professions.profession2.name = RXPCData.professions.profession2.name or ""
    RXPCData.professions.profession2.skillLevel = RXPCData.professions.profession2.skillLevel or 0
    RXPCData.professions.profession2.skillMaxLevel = RXPCData.professions.profession2.skillMaxLevel or 0
end

--Setup
function addon.professions:Setup()
    --TODO: add toggle on/off functionality

    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" and addon.game ~= "MOP" and addon.game ~= "FOREVER" then return end
    if self.session.isInitialized == true then return end

    if addon.game ~= "MOP" and addon.game ~= "FOREVER" then
        self.session.isClassic = true
    end

    for version, events in pairs(EVENTS_TO_REGISTER) do
        if version == "universal" or (version == "classic" and addon.professions.session.isClassic) or (version == "forever" and not addon.professions.session.isClassic) then
            for _, event in ipairs(events) do
                self:RegisterEvent(event)
            end
        end
    end
    RXPCData.professions.isInitialScanned = RXPCData.professions.isInitialScanned or false
    setUpRXPCData()
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


print("done loading professions")

--[[ Notes
   
]]