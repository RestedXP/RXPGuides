local _, addon = ...

if addon.gameVersion > 40000 then return end

local fmt, tinsert, ipairs = string.format, table.insert, ipairs

local GetItemInfoInstant, GetInventoryItemLink, IsEquippedItem =
    _G.GetItemInfoInstant, _G.GetInventoryItemLink, _G.IsEquippedItem
local GetItemStats = _G.GetItemStats

addon.itemUpgrades = addon:NewModule("ItemUpgrades", "AceEvent-3.0")

local session = {
    -- Loaded stat weights for class
    statWeights = {},

    -- Capturable regexes for tooltip parsing
    statsRegexes = {},

    -- Item stats cache
    itemCache = {},

    -- TODO handle thread-safe?
    comparisonTip = nil
}

local SLOT_MAP = {
    ["INVTYPE_HEAD"] = _G.INVSLOT_HEAD,
    ["INVTYPE_NECK"] = _G.INVSLOT_NECK,
    ["INVTYPE_SHOULDER"] = _G.INVSLOT_SHOULDER,
    ["INVTYPE_BODY"] = _G.INVSLOT_BODY,
    ["INVTYPE_CHEST"] = _G.INVSLOT_CHEST,
    ["INVTYPE_ROBE"] = _G.INVSLOT_CHEST,
    ["INVTYPE_WAIST"] = _G.INVSLOT_WAIST,
    ["INVTYPE_LEGS"] = _G.INVSLOT_LEGS,
    ["INVTYPE_FEET"] = _G.INVSLOT_FEET,
    ["INVTYPE_WRIST"] = _G.INVSLOT_WRIST,
    ["INVTYPE_HAND"] = _G.INVSLOT_HAND,
    ["INVTYPE_FINGER"] = {
        [_G.INVSLOT_FINGER1] = true,
        [_G.INVSLOT_FINGER2] = true
    },
    ["INVTYPE_TRINKET"] = {
        [_G.INVSLOT_TRINKET1] = true,
        [_G.INVSLOT_TRINKET2] = true
    },
    ["INVTYPE_CLOAK"] = _G.INVSLOT_BACK,
    ["INVTYPE_WEAPON"] = {
        [_G.INVSLOT_MAINHAND] = true,
        [_G.INVSLOT_OFFHAND] = true
    },
    ["INVTYPE_SHIELD"] = _G.INVSLOT_OFFHAND,
    ["INVTYPE_2HWEAPON"] = _G.INVSLOT_MAINHAND,
    ["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND,
    ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND,
    ["INVTYPE_HOLDABLE"] = _G.INVSLOT_OFFHAND,
    ["INVTYPE_RANGED"] = _G.INVSLOT_RANGED,
    ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
    ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED
}

-- Map quasi-friendly key from GSheet/StatWeights to regex-friendly value
-- GSheet or pretty name = Regex formatting
local KEY_TO_TEXT = {
    ['STAT_ARMOR'] = _G.ARMOR_TEMPLATE,
    ['ITEM_MOD_STRENGTH_SHORT'] = _G.ITEM_MOD_STRENGTH,
    ['ITEM_MOD_AGILITY_SHORT'] = _G.ITEM_MOD_AGILITY,
    ['ITEM_MOD_INTELLECT_SHORT'] = _G.ITEM_MOD_INTELLECT,
    ['ITEM_MOD_STAMINA_SHORT'] = _G.ITEM_MOD_STAMINA,
    ['ITEM_MOD_SPIRIT_SHORT'] = _G.ITEM_MOD_SPIRIT,
    ['ITEM_MOD_HEALTH_REGEN_SHORT'] = _G.ITEM_MOD_HEALTH_REGEN,
    ['ITEM_MOD_POWER_REGEN0_SHORT'] = _G.ITEM_MOD_MANA_REGENERATION,
    ['ITEM_MOD_SPELL_DAMAGE_DONE_SHORT'] = {
        _G.ITEM_MOD_SPELL_POWER, _G.ITEM_MOD_SPELL_DAMAGE_DONE
    },
    ['ITEM_MOD_SPELL_HEALING_DONE_SHORT'] = _G.ITEM_MOD_SPELL_HEALING_DONE,
    ['ITEM_MOD_HIT_SPELL_RATING_SHORT'] = _G.ITEM_MOD_HIT_SPELL_RATING,
    ['ITEM_MOD_CRIT_SPELL_RATING_SHORT'] = _G.ITEM_MOD_CRIT_SPELL_RATING,
    ['ITEM_MOD_ATTACK_POWER_SHORT'] = _G.ITEM_MOD_ATTACK_POWER,
    ['ITEM_MOD_HIT_RATING_SHORT'] = _G.ITEM_MOD_HIT_RATING,
    ['ITEM_MOD_CRIT_RATING_SHORT'] = _G.ITEM_MOD_CRIT_RATING,
    ['ITEM_MOD_RANGED_ATTACK_POWER_SHORT'] = _G.ITEM_MOD_RANGED_ATTACK_POWER,
    ['ITEM_MOD_DEFENSE_SKILL_RATING_SHORT'] = _G.ITEM_MOD_DEFENSE_SKILL_RATING,
    ['ITEM_MOD_DODGE_RATING_SHORT'] = _G.ITEM_MOD_DODGE_RATING,
    ['ITEM_MOD_PARRY_RATING_SHORT'] = _G.ITEM_MOD_PARRY_RATING
}

local function regexify(input)
    -- Replace '%s' with '(%d+)' to match numbers
    -- Remove leading control characters on stats
    return input:gsub("%%[ds]", "(%%d%+)"):gsub("^%%c", '')
end

-- Maps regex global string with stat rating key
-- Turn descriptive text into number friendly regexes
local function KeyToRegex(keyString)
    if session.statsRegexes[keyString] then
        return session.statsRegexes[keyString]
    end

    local regex = KEY_TO_TEXT[keyString]
    -- Return nil for keys without mappings
    if not regex then return end

    if type(regex) == "table" then
        for i, _ in ipairs(regex) do regex[i] = regexify(regex[i]) end
    else
        regex = regexify(regex)
    end

    session.statsRegexes[keyString] = regex

    return regex
end

function addon.itemUpgrades:Setup()
    self:LoadStatWeights()

    self:RegisterEvent("PLAYER_LEVEL_UP")
    self:RegisterEvent("TRAINER_SHOW")

    local lookup
    -- Only load stats coming from GSheet
    for key, _ in pairs(session.statWeights) do
        -- print("Checking", key)
        lookup = KeyToRegex(key)
        if lookup then
            -- print("Match loaded", lookup)
            session.statsRegexes[key] = lookup
        end

    end

end

-- Reset cache on levelup
function addon.itemUpgrades:PLAYER_LEVEL_UP()
    wipe(session.itemCache)
end

-- Reset cache on trainer
function addon.itemUpgrades:TRAINER_SHOW()
    wipe(session.itemCache)
end

function addon.itemUpgrades:LoadStatWeights()
    if not addon.statWeights then return end

    local activeKind = addon.settings.profile.hardcore and "HARDCORE" or
                           "SPEEDRUN"

    for _, data in pairs(addon.statWeights) do
        -- TODO spec support
        if strupper(data.Class) == addon.player.class and strupper(data.Kind) ==
            activeKind then
            session.statWeights = data
            -- print("Loaded statWeights", session.statWeights.Title)
            return
        end
    end

end

local function GetTooltipLines(tooltip)
    local textLines = {}
    -- print("GetTooltipLines, tooltip", tooltip:GetName())

    local regions = {tooltip:GetRegions()}
    for _, r in ipairs(regions) do

        if r:IsObjectType("FontString") and r:GetText() then
            -- print("GetTooltipLines, regions", r:GetText())
            tinsert(textLines, r:GetText())
        end
    end
    return textLines
end

local function GetComparisonTip()
    if session.comparisonTip then return session.comparisonTip end

    session.comparisonTip = CreateFrame("GameTooltip",
                                        "RXPItemUpgradesComparison", nil,
                                        "GameTooltipTemplate")
    session.comparisonTip:SetOwner(WorldFrame, "ANCHOR_NONE")
    session.comparisonTip:AddFontStrings(
        session.comparisonTip:CreateFontString("$parentTextLeft1", nil,
                                               "GameTooltipText"),
        session.comparisonTip:CreateFontString("$parentTextRight1", nil,
                                               "GameTooltipText"))

    return session.comparisonTip
end

function addon.itemUpgrades:GetItemData(itemLink, tooltip)
    if type(itemLink) ~= "string" then
        addon.error("addon.itemUpgrades:GetItemData, itemLink string required")
        return
    end

    if session.itemCache[itemLink] then
        -- print("Returning cached weight", itemLink, session.itemCache[itemLink].totalWeight)
        return session.itemCache[itemLink]
    end

    -- TODO can class use item - IsEquippableItem doesn't really work

    local itemID, _, itemSubType, inventorySlotId = GetItemInfoInstant(itemLink)

    -- Not an equippable item
    if not inventorySlotId or inventorySlotId == "" then return end

    local stats = GetItemStats(itemLink)

    -- Failed to query stats, wait for next run
    if stats == nil then return end

    local itemData = {
        itemLink = itemLink,
        itemID = itemID,
        itemSubType = itemSubType,
        InventorySlotId = inventorySlotId
    }

    local totalWeight = 0
    local statWeight, tooltipTextLines

    -- Some stats don't show up
    -- Parse API stats first before processing tooltips
    for key, value in pairs(stats) do
        -- print("Checking built-in calls")
        if session.statWeights[key] and session.statWeights[key] ~= 0 then
            stats[key] = value
        end
    end

    -- Parse tooltip for all additional stats
    if tooltip then
        tooltipTextLines = GetTooltipLines(tooltip)
    else -- If not tooltip, set hidden comparison tooltip
        tooltip = GetComparisonTip()

        if not tooltip then return end

        tooltip:SetHyperlink(itemLink)

        tooltipTextLines = GetTooltipLines(tooltip)
    end

    local match1, match2

    -- Will be more stat weighted keys than tooltip lines
    -- Use larger dataset as parent loop
    for key, regex in pairs(session.statsRegexes) do
        -- Skip if stat already came from API call
        if not stats[key] then

            -- Check all tooltip lines for regex matches
            for i, line in ipairs(tooltipTextLines) do
                -- print("Checking", i, line)

                if type(regex) == "table" then
                    for _, r in ipairs(regex) do
                        -- print("Parsing", i, line)
                        match1, match2 = string.match(line, r)

                        -- Only expect one number per line, so ignore if double match
                        if match1 and not match2 then
                            -- print("Extracted", tonumber(match1), "from", line)
                            stats[key] = tonumber(match1)
                        end
                    end
                else
                    -- print("Parsing", i, line, "for", regex)
                    match1, match2 = string.match(line, regex)

                    -- Only expect one number per line, so ignore if double match
                    if match1 and not match2 then
                        -- print("Extracted", tonumber(match1), "from", line)
                        stats[key] = tonumber(match1)
                    end
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

    itemData.totalWeight = addon.Round(totalWeight, 2)
    itemData.stats = stats
    session.itemCache[itemLink] = itemData

    return itemData
end

-- nil if same item
-- % change otherwise
function addon.itemUpgrades:CompareItemWeight(itemLink, tooltip)
    local comparedData = self:GetItemData(itemLink, tooltip)

    -- Failed to load, wait for next try
    if not comparedData then
        -- print("Failed to query comparedStats", itemLink)
        return
    end

    -- Not an equippable item
    if not comparedData.InventorySlotId or
        not SLOT_MAP[comparedData.InventorySlotId] then return end

    -- TODO handle slot map array and multiple matches
    local equippedItemLink = GetInventoryItemLink("player",
                                                  SLOT_MAP[comparedData.InventorySlotId])
    -- print("GetInventoryItemLink", comparedStats.InventorySlotId, GetInventoryItemLink("player", comparedStats.InventorySlotId))

    -- No equipped item, so anything is an upgrade from no item
    if not equippedItemLink or equippedItemLink == "" then
        return 1
    elseif comparedData.itemLink == equippedItemLink then
        return
    end

    -- Load equipped item into hidden tooltip for parsing
    local equippedData = self:GetItemData(equippedItemLink, nil)

    if not equippedData then
        -- Failed to load stats, wait for the next refresh
        print("not equippedStats", equippedItemLink)
        return
    end

    -- print(comparedData.InventorySlotId, "weights", comparedData.totalWeight, equippedData.totalWeight)

    if equippedData.totalWeight == 0 or equippedData.totalWeight == 0 then
        -- Prevent division by 0
        return
    elseif comparedData.totalWeight > equippedData.totalWeight then
        return addon.Round(comparedData.totalWeight / equippedData.totalWeight,
                           2)
    elseif comparedData.totalWeight < equippedData.totalWeight then
        return -1 *
                   addon.Round(
                       comparedData.totalWeight / equippedData.totalWeight, 2)
    elseif comparedData.totalWeight == equippedData.totalWeight then
        return 0
    else
        return
    end
end

local function TooltipSetItem(tooltip, ...)
    local _, itemLink = tooltip:GetItem()
    if not itemLink then return end
    -- print("TooltipSetItem", tooltip:GetName(), itemLink)

    -- Exclude addon text for an equipped item
    if IsEquippedItem(itemLink) then return end

    local ratio = addon.itemUpgrades:CompareItemWeight(itemLink,
                                                                tooltip)
    -- print("percentageDiff", percentageDiff)
    -- Incomplete data
    if not ratio then return end

    tooltip:AddLine(addon.title)

    tooltip:AddLine(fmt("%s %s%%", _G.ITEM_UPGRADE, ratio * 100))

    tooltip:Show()
end

GameTooltip:HookScript("OnTooltipSetItem", TooltipSetItem)
-- ShoppingTooltip1:HookScript("OnTooltipSetItem", TooltipSetItem)
-- ShoppingTooltip2:HookScript("OnTooltipSetItem", TooltipSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", TooltipSetItem)

function addon.itemUpgrades.Test()
    local itemData
    for _, itemID in pairs({19857, 19347, 19861, 19319}) do
        -- print(itemID)
        itemData =
            addon.itemUpgrades:GetItemData("item:" .. itemID, GameTooltip)

        if itemData then
            for key, value in pairs(itemData) do
                print('  ', key, value)
            end
            for key, value in pairs(itemData.stats) do
                print('  - ', key, value)
            end
        end
    end
end
