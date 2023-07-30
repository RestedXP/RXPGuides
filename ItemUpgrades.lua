local _, addon = ...

if addon.gameVersion > 40000 then return end

local  fmt = string.format

local L = addon.locale.Get

addon.itemUpgrades = addon:NewModule("ItemUpgrades", "AceEvent-3.0")

local session = {
    statWeights = {}
}

local GetItemInfoInstant, GetInventoryItemLink = _G.GetItemInfoInstant, _G.GetInventoryItemLink
local GetItemStats = _G.GetItemStats
local itemStatsCache = {}

local SLOT_MAP = {
    ["INVTYPE_HEAD"]        	= INVSLOT_HEAD,
    ["INVTYPE_NECK"]        	= INVSLOT_NECK,
    ["INVTYPE_SHOULDER"]    	= INVSLOT_SHOULDER,
    ["INVTYPE_BODY"]        	= INVSLOT_BODY,
    ["INVTYPE_CHEST"]       	= INVSLOT_CHEST,
    ["INVTYPE_ROBE"]        	= INVSLOT_CHEST,
    ["INVTYPE_WAIST"]       	= INVSLOT_WAIST,
    ["INVTYPE_LEGS"]        	= INVSLOT_LEGS,
    ["INVTYPE_FEET"]        	= INVSLOT_FEET,
    ["INVTYPE_WRIST"]       	= INVSLOT_WRIST,
    ["INVTYPE_HAND"]        	= INVSLOT_HAND,
    ["INVTYPE_FINGER"]      	= { [INVSLOT_FINGER1] = true, [INVSLOT_FINGER2] = true },
    ["INVTYPE_TRINKET"]     	= { [INVSLOT_TRINKET1] = true, [INVSLOT_TRINKET2] = true },
    ["INVTYPE_CLOAK"]       	= INVSLOT_BACK,
    ["INVTYPE_WEAPON"]      	= { [INVSLOT_MAINHAND] = true, [INVSLOT_OFFHAND] = true },
    ["INVTYPE_SHIELD"]      	= INVSLOT_OFFHAND,
    ["INVTYPE_2HWEAPON"]        = INVSLOT_MAINHAND,
    ["INVTYPE_WEAPONMAINHAND"]  = INVSLOT_MAINHAND,
    ["INVTYPE_WEAPONOFFHAND"]   = INVSLOT_OFFHAND,
    ["INVTYPE_HOLDABLE"]        = INVSLOT_OFFHAND,
    ["INVTYPE_RANGED"]          = INVSLOT_RANGED,
    ["INVTYPE_THROWN"]          = INVSLOT_RANGED,
    ["INVTYPE_RANGEDRIGHT"]     = INVSLOT_RANGED,
}

function addon.itemUpgrades:Setup()
    if addon.statWeights then
        self:LoadStatWeights()

        --TODO tooltip
    end
end

function addon.itemUpgrades:LoadStatWeights()
    if not addon.statWeights then return end

    for _, data in pairs(addon.statWeights) do
        --TODO spec support
        if strupper(data.Class) == addon.player.class then
            session.statWeights = data
            --print("Loaded statWeights", session.statWeights.Title)
            return
        end
    end

end

-- Maps regex global string with stat rating key
-- Most green text is 'ITEM_MOD_THING_RATING' description with '_SHORT' added for key
local function GreenToKey(keyString)
    if _G[keyString] and _G[keyString .. '_SHORT'] then
        return _G[keyString .. '_SHORT']
    end
end

function addon.itemUpgrades:GetItemStats(itemLink, debug)
    if type(itemLink) ~= "string" then
        addon.error("addon.itemUpgrades:GetItemStats, itemLink string required")
        return
    end
    --itemLink = type(itemLink) == "string" and itemLink or "item:" .. itemLink

    if itemStatsCache[itemLink] then
        --print("(Would) Returning cached weight", itemLink, itemStatsCache[itemLink].totalWeight)
        --return itemStatsCache[itemLink]
    end

    local stats = GetItemStats(itemLink)

    -- Failed to query stats, wait for next run
    if stats == nil then return end

    stats.itemLink = itemLink
    -- TODO can class use item
    -- TODO exclude looking at equipped items

    local itemID, _, itemSubType, inventorySlotId = GetItemInfoInstant(itemLink)

    -- Not an equippable item
    if not inventorySlotId or inventorySlotId == "" then
        return
    end

    stats.itemID = itemID
    stats.itemSubType = itemSubType
    stats.InventorySlotId = inventorySlotId

    -- TODO 1H vs 2H
    -- ITEM_MOD_DAMAGE_PER_SECOND_SHORT
    -- 1H, INVTYPE_WEAPON INVTYPE_WEAPONMAINHAND
    -- 2H, INVTYPE_2HWEAPON
    -- Ranged, INVTYPE_RANGED INVTYPE_RANGEDRIGHT INVTYPE_THROWN
    -- TODO handle 1H in OH, INVTYPE_WEAPONOFFHAND
    -- TODO armor count

    local totalWeight = 0
    local statWeight

    --TODO some stats don't show up
    for key, value in pairs(stats) do
        if session.statWeights[key] and session.statWeights[key] ~= 0 then
            statWeight = value * session.statWeights[key]
            totalWeight = totalWeight + statWeight

            --print("Value", value, "weighted at", statWeight)
        end
    end

    stats.totalWeight = addon.Round(totalWeight, 2)
    itemStatsCache[itemLink] = stats

    return stats
end

-- nil if same item
-- % change otherwise
function addon.itemUpgrades:CompareItemWeight(itemLink)
    local comparedStats = self:GetItemStats(itemLink)

    -- Failed to load, wait for next try
    if not comparedStats then
        --print("Failed to query comparedStats")
        return
    end

    -- Not an equippable item
    -- TODO exclude quiver
    if not comparedStats.InventorySlotId or not SLOT_MAP[comparedStats.InventorySlotId] then return end

    local equippedItemLink = GetInventoryItemLink("player", SLOT_MAP[comparedStats.InventorySlotId])
    --print("GetInventoryItemLink", comparedStats.InventorySlotId, GetInventoryItemLink("player", comparedStats.InventorySlotId))

    -- No equipped item, so anything is an upgrade from no item
    if not equippedItemLink or equippedItemLink == "" then
        -- print("not equippedItemLink")
        return 100
    elseif comparedStats.itemLink == equippedItemLink then
        return 0
    end

    local equippedStats = self:GetItemStats(itemLink)

    if not equippedStats then
        -- Failed to load stats, wait for the next refresh
        print("not equippedStats")
        return
    end

    print(comparedStats.InventorySlotId, "weights", comparedStats.totalWeight, equippedStats.totalWeight)
    if comparedStats.totalWeight > equippedStats.totalWeight then
        return addon.Round(comparedStats.totalWeight / equippedStats.totalWeight, 2)
    elseif comparedStats.totalWeight < equippedStats.totalWeight then
        return -1 * addon.Round(comparedStats.totalWeight / equippedStats.totalWeight, 2)
    else
        return
    end
end

local function GameTooltipSetItem(tooltip, ...)
	local _, itemLink = GameTooltip:GetItem()
	if not itemLink then return end

    local percentageDiff = addon.itemUpgrades:CompareItemWeight(itemLink)

    -- Incomplete data or same item
    if not percentageDiff then return end

    tooltip:AddLine(addon.title)

    tooltip:AddLine(fmt("%s %s%%", _G.ITEM_UPGRADE, percentageDiff))

    tooltip:Show()
end

-- Hook comparison tooltip
GameTooltip:HookScript("OnTooltipSetItem", GameTooltipSetItem)

-- Hook standalone item tooltips
ItemRefTooltip:HookScript("OnTooltipSetItem", GameTooltipSetItem)

function addon.itemUpgrades.Test()
    for _, itemID in pairs({19857, 19347, 19861}) do
        --print(itemID)
        for key, value in pairs(addon.itemUpgrades:GetItemStats("item:" .. itemID, true)) do
            print('  ', key, value)
        end
    end
end
