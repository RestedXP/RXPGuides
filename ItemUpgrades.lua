local _, addon = ...

if addon.gameVersion > 40000 then return end

local fmt, tinsert, ipairs = string.format, table.insert, ipairs

local GetItemInfoInstant, GetInventoryItemLink, IsEquippedItem =
    _G.GetItemInfoInstant, _G.GetInventoryItemLink, _G.IsEquippedItem
local GetItemStats = _G.GetItemStats
local GameTooltip = _G.GameTooltip

addon.itemUpgrades = addon:NewModule("ItemUpgrades", "AceEvent-3.0")

local session = {
    -- Loaded stat weights for class
    statWeights = {},

    -- Capturable regexes for tooltip parsing
    statsRegexes = {},

    -- Item stats cache
    itemCache = {}
}

local SLOT_MAP = {
    ["INVTYPE_HEAD"] = INVSLOT_HEAD,
    ["INVTYPE_NECK"] = INVSLOT_NECK,
    ["INVTYPE_SHOULDER"] = INVSLOT_SHOULDER,
    ["INVTYPE_BODY"] = INVSLOT_BODY,
    ["INVTYPE_CHEST"] = INVSLOT_CHEST,
    ["INVTYPE_ROBE"] = INVSLOT_CHEST,
    ["INVTYPE_WAIST"] = INVSLOT_WAIST,
    ["INVTYPE_LEGS"] = INVSLOT_LEGS,
    ["INVTYPE_FEET"] = INVSLOT_FEET,
    ["INVTYPE_WRIST"] = INVSLOT_WRIST,
    ["INVTYPE_HAND"] = INVSLOT_HAND,
    ["INVTYPE_FINGER"] = {[INVSLOT_FINGER1] = true, [INVSLOT_FINGER2] = true},
    ["INVTYPE_TRINKET"] = {[INVSLOT_TRINKET1] = true, [INVSLOT_TRINKET2] = true},
    ["INVTYPE_CLOAK"] = INVSLOT_BACK,
    ["INVTYPE_WEAPON"] = {[INVSLOT_MAINHAND] = true, [INVSLOT_OFFHAND] = true},
    ["INVTYPE_SHIELD"] = INVSLOT_OFFHAND,
    ["INVTYPE_2HWEAPON"] = INVSLOT_MAINHAND,
    ["INVTYPE_WEAPONMAINHAND"] = INVSLOT_MAINHAND,
    ["INVTYPE_WEAPONOFFHAND"] = INVSLOT_OFFHAND,
    ["INVTYPE_HOLDABLE"] = INVSLOT_OFFHAND,
    ["INVTYPE_RANGED"] = INVSLOT_RANGED,
    ["INVTYPE_THROWN"] = INVSLOT_RANGED,
    ["INVTYPE_RANGEDRIGHT"] = INVSLOT_RANGED
}

-- Map quasi-friendly key from GSheet/StatWeights to regex-friendly value
local KEY_TO_TEXT = {['STAT_ARMOR'] = _G.ARMOR_TEMPLATE}

-- Maps regex global string with stat rating key
-- Turn descriptive text into number friendly regexes
local function KeyToRegex(keyString)
    if session.statsRegexes[keyString] then
        return session.statsRegexes[keyString]
    end

    local regex = KEY_TO_TEXT[keyString]
    -- Return nil for keys without mappings
    if not regex then return end

    -- Replace '%s' with '(%d)' to match numbers
    regex = regex:gsub("%%s", "(%%d%+)")

    session.statsRegexes[keyString] = regex

    return regex
end

function addon.itemUpgrades:Setup()
    -- TODO reset cache on level up or training
    self:LoadStatWeights()

    local lookup
    -- Only load stats coming from GSheet
    for key, _ in pairs(session.statWeights) do
        -- print("Checking", key)
        lookup = KeyToRegex(key)
        if lookup then
            print("Notable key", key)
            print("Match loaded", lookup)
            session.statsRegexes[key] = lookup
        end

    end
end

function addon.itemUpgrades:LoadStatWeights()
    if not addon.statWeights then return end

    for _, data in pairs(addon.statWeights) do
        -- TODO spec support
        if strupper(data.Class) == addon.player.class then
            session.statWeights = data
            -- print("Loaded statWeights", session.statWeights.Title)
            return
        end
    end

end

-- ShoppingTooltip1
-- ShoppingTooltip2
-- ItemRefTooltip

local function GetTooltipLines(tooltip)
    tooltip = tooltip or GameTooltip
    local textLines = {}
    local regions = {tooltip:GetRegions()}
    for _, r in ipairs(regions) do
        if r:IsObjectType("FontString") then
            tinsert(textLines, r:GetText())
        end
    end
    return textLines
end

function addon.itemUpgrades:GetItemStats(itemLink)
    if type(itemLink) ~= "string" then
        addon.error("addon.itemUpgrades:GetItemStats, itemLink string required")
        return
    end
    -- itemLink = type(itemLink) == "string" and itemLink or "item:" .. itemLink

    if session.itemCache[itemLink] then
        print("Returning cached weight", itemLink, session.itemCache[itemLink].totalWeight)
        return session.itemCache[itemLink]
    end

    -- Exclude comparing an equipped item
    if IsEquippedItem(itemLink) then return end

    -- TODO can class use item - IsEquippableItem doesn't really work

    local itemID, _, itemSubType, inventorySlotId = GetItemInfoInstant(itemLink)

    -- Not an equippable item
    if not inventorySlotId or inventorySlotId == "" then return end

    local stats = GetItemStats(itemLink)

    -- Failed to query stats, wait for next run
    if stats == nil then return end

    stats.itemLink = itemLink
    stats.itemID = itemID
    stats.itemSubType = itemSubType
    stats.InventorySlotId = inventorySlotId

    local totalWeight = 0
    local statWeight

    -- Some stats don't show up
    -- Parse API stats first before processing tooltips
    for key, value in pairs(stats) do
        if session.statWeights[key] and session.statWeights[key] ~= 0 then
            stats[key] = value
        end
    end

    -- Parse tooltip for all additional stats
    -- TODO only applies to new tooltips
    local results = GetTooltipLines(GameTooltip)

    local match1, match2

    -- Will be more stat weighted keys than tooltip lines
    -- Use larger dataset as parent loop
    for key, regex in pairs(session.statsRegexes) do
        -- Skip if stat already came from API call
        if not stats[key] then

            -- Check all tooltip lines for regex matches
            for i, line in ipairs(results) do
                -- print("Checking", i, line)

                -- print("Parsing", i, line)
                match1, match2 = string.match(line, regex)

                -- Only expect one number per line, so ignore if double match
                if match1 and not match2 then
                    print("Extracted", tonumber(match1), "from", line)
                    stats[key] = tonumber(match1)
                end
            end
        end
    end

    -- After parsing API data and tooltip text, add up stat weights
    for key, value in pairs(stats) do

        -- Only calculate values eexplicitly configured
        if session.statWeights[key] then
            -- print("Weighting stat", key, "value")
            statWeight = value * session.statWeights[key]
            totalWeight = totalWeight + statWeight

            -- print("Key", key, "Value", value, "weighted at", statWeight)
        end
    end

    stats.totalWeight = addon.Round(totalWeight, 2)
    session.itemCache[itemLink] = stats

    return stats
end

-- nil if same item
-- % change otherwise
function addon.itemUpgrades:CompareItemWeight(itemLink)
    local comparedStats = self:GetItemStats(itemLink)

    -- Failed to load, wait for next try
    if not comparedStats then
        -- print("Failed to query comparedStats")
        return
    end

    -- Not an equippable item
    -- TODO exclude quiver
    if not comparedStats.InventorySlotId or
        not SLOT_MAP[comparedStats.InventorySlotId] then return end

    local equippedItemLink = GetInventoryItemLink("player",
                                                  SLOT_MAP[comparedStats.InventorySlotId])
    -- print("GetInventoryItemLink", comparedStats.InventorySlotId, GetInventoryItemLink("player", comparedStats.InventorySlotId))

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

    -- print(comparedStats.InventorySlotId, "weights", comparedStats.totalWeight, equippedStats.totalWeight)
    if comparedStats.totalWeight > equippedStats.totalWeight then
        return addon.Round(
                   comparedStats.totalWeight / equippedStats.totalWeight, 2)
    elseif comparedStats.totalWeight < equippedStats.totalWeight then
        return -1 *
                   addon.Round(
                       comparedStats.totalWeight / equippedStats.totalWeight, 2)
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
        -- print(itemID)
        for key, value in pairs(addon.itemUpgrades:GetItemStats("item:" ..
                                                                    itemID, true)) do
            print('  ', key, value)
        end
    end
end
