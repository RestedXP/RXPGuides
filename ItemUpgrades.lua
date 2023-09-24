local _, addon = ...

if addon.gameVersion > 40000 then return end

local fmt, tinsert, ipairs = string.format, table.insert, ipairs

local GetItemInfoInstant, GetInventoryItemLink, IsEquippedItem =
    _G.GetItemInfoInstant, _G.GetInventoryItemLink, _G.IsEquippedItem
local GetItemStats = _G.GetItemStats
local UnitLevel = _G.UnitLevel

local ItemArmorSubclass, ItemWeaponSubclass = Enum.ItemArmorSubclass,
                                              Enum.ItemWeaponSubclass

addon.itemUpgrades = addon:NewModule("ItemUpgrades", "AceEvent-3.0")

local session = {
    -- Loaded stat weights for class
    statWeights = {},

    -- Capturable regexes for tooltip parsing
    statsRegexes = {},

    -- Item stats cache
    itemCache = {},

    -- Track compatible
    equippableSlots = {},
    equippableArmor = {},
    equippableWeapons = {},

    weaponKindToKey = {},

    -- TODO handle thread-safe?
    comparisonTip = nil
}

local CLASS_MAP = { -- TODO 2H weapon difference?
    ["All"] = {
        ["Slot"] = {
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
            ["INVTYPE_HOLDABLE"] = _G.INVSLOT_OFFHAND,
            ["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Generic] = true, -- Trinkets, rings, necks
            [ItemArmorSubclass.Cloth] = true -- Cloaks plus cloth armor
        },
        ["WeaponType"] = {[ItemWeaponSubclass.Generic] = true}
    },
    ["DRUID"] = {
        ["Slot"] = {},
        ["ArmorType"] = {[ItemArmorSubclass.Leather] = true},
        ["WeaponType"] = {
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Unarmed] = true,
            [ItemWeaponSubclass.Dagger] = true
        }
    },
    ["HUNTER"] = {
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGED"] = _G.INVSLOT_RANGED,
            ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = function()
                return UnitLevel("player") >= 40
            end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Bows] = true,
            [ItemWeaponSubclass.Guns] = true,
            [ItemWeaponSubclass.Polearm] = function()
                return UnitLevel("player") >= 20
            end,
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Sword2H] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Unarmed] = true,
            [ItemWeaponSubclass.Dagger] = true,
            [ItemWeaponSubclass.Crossbow] = true
        }
    },
    ["MAGE"] = {
        ["Slot"] = {["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED},
        ["ArmorType"] = {},
        ["WeaponType"] = {
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Dagger] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Wand] = true
        }
    },
    ["PALADIN"] = {
        ["Slot"] = {["INVTYPE_SHIELD"] = _G.INVSLOT_OFFHAND},
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = true,
            [ItemArmorSubclass.Plate] = function()
                return UnitLevel("player") >= 40
            end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Polearm] = function()
                return UnitLevel("player") >= 20
            end,
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Sword2H] = true
        }
    },
    ["PRIEST"] = {
        ["Slot"] = {["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED},
        ["ArmorType"] = {},
        ["WeaponType"] = {
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Dagger] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Wand] = true
        }
    },
    ["ROGUE"] = {
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGED"] = _G.INVSLOT_RANGED,
            ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND
        },
        ["ArmorType"] = {[ItemArmorSubclass.Leather] = true},
        ["WeaponType"] = {
            [ItemWeaponSubclass.Bows] = true,
            [ItemWeaponSubclass.Guns] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Unarmed] = true,
            [ItemWeaponSubclass.Dagger] = true,
            [ItemWeaponSubclass.Thrown] = true,
            [ItemWeaponSubclass.Crossbow] = true
        }
    },
    ["SHAMAN"] = {
        ["Slot"] = {{["INVTYPE_SHIELD"] = _G.INVSLOT_OFFHAND}},
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = function()
                return UnitLevel("player") >= 40
            end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Unarmed] = true,
            [ItemWeaponSubclass.Dagger] = true
        }
    },
    ["WARLOCK"] = {
        ["Slot"] = {["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED},
        ["ArmorType"] = {},
        ["WeaponType"] = {
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Dagger] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Wand] = true
        }
    },
    ["WARRIOR"] = {
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED,
            ["INVTYPE_SHIELD"] = _G.INVSLOT_OFFHAND,
            ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = true,
            [ItemArmorSubclass.Plate] = function()
                return UnitLevel("player") >= 40
            end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Bows] = true,
            [ItemWeaponSubclass.Guns] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Polearm] = function()
                return UnitLevel("player") >= 20
            end,
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Sword2H] = true,
            [ItemWeaponSubclass.Staff] = true,
            [ItemWeaponSubclass.Unarmed] = true,
            [ItemWeaponSubclass.Thrown] = true,
            [ItemWeaponSubclass.Dagger] = true,
            [ItemWeaponSubclass.Crossbow] = true
        }
    }
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
    ['ITEM_MOD_PARRY_RATING_SHORT'] = _G.ITEM_MOD_PARRY_RATING,

    -- Parse text/value for all weapon DPS
    ['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] = _G.DPS_TEMPLATE,

    -- Handle weapon types, faked/overloaded keys from GSheet
    -- WEAPON_MAP + UpdateSlotMap()
    -- 'ITEM_MOD_DAMAGE_PER_SECOND_SHORT' .. '_' .. 'TYPE'

    -- Hack in weapon speed parsing
    -- TODO may not be calculated later
    ['STAT_SPEED'] = _G.STAT_SPEED .. "%f"
}

local WEAPON_MAP = {
    ['1H'] = {
        ['Slot'] = {
            ["INVTYPE_WEAPON"] = { -- 1H can go into MH or OH, compare to both
                [INVSLOT_MAINHAND] = true,
                [INVSLOT_OFFHAND] = true
            },
            ["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND,
            ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_MAINHAND
        }
    },
    ['2H_FAST'] = { -- Weapon speed (0.1s) 2h - 2.1 fastest
        ['Speed'] = 2.1,
        ['Slot'] = {["INVTYPE_2HWEAPON"] = _G.INVSLOT_MAINHAND}
    },
    ['MH_FAST'] = { -- Weapon speed (0.1s) mh - 1.3 fastest
        ['Speed'] = 1.3,
        ['Slot'] = {["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND}
    },
    ['OH_FAST'] = { -- Weapon speed (0.1s) oh - 1.3 fastest
        ['Speed'] = 1.3,
        ['Slot'] = {["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND}
    },
    ['RANGED_FAST'] = { -- Ranged weapon speed (0.1s) - fastest 1.3
        ['Speed'] = 1.3,
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGED"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED
        }
    },
    ['RANGED'] = {
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGED"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED
        }
    }
}

-- Setup reverse lookup in session.weaponKindToKey
for weaponKey, d in pairs(WEAPON_MAP) do
    if not d.Slot then
        addon.error("Incomplete WEAPON_MAP slot data")
        return
    end

    for itemEquipLoc, _ in pairs(d.Slot) do
        if not session.weaponKindToKey[itemEquipLoc] then
            session.weaponKindToKey[itemEquipLoc] = {}
        end

        -- ['INVTYPE_THROWN'] = { "RANGED_FAST", "RANGED"}
        tinsert(session.weaponKindToKey[itemEquipLoc], weaponKey)
    end
end

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

function addon.itemUpgrades:UpdateSlotMap()

    session.equippableSlots = CLASS_MAP["All"]["Slot"]
    for k, v in pairs(CLASS_MAP[addon.player.class]["Slot"]) do
        if type(v) == "function" then v = v() end
        session.equippableSlots[k] = v
    end

    session.equippableArmor = CLASS_MAP["All"]["ArmorType"]
    for k, v in pairs(CLASS_MAP[addon.player.class]["ArmorType"]) do
        if type(v) == "function" then v = v() end
        session.equippableArmor[k] = v
    end

    session.equippableWeapons = CLASS_MAP["All"]["WeaponType"]
    for k, v in pairs(CLASS_MAP[addon.player.class]["WeaponType"]) do
        if type(v) == "function" then v = v() end
        session.equippableWeapons[k] = v
    end

    -- Load DPS columns from GSheet
    -- 'ITEM_MOD_DAMAGE_PER_SECOND_SHORT' .. '_' .. type
    local DPS_TEMPLATE = _G.DPS_TEMPLATE

    for k, _ in pairs(WEAPON_MAP) do
        -- TODO stat comes from GetItemStats, avoid potentially text parsing
        KEY_TO_TEXT['ITEM_MOD_DAMAGE_PER_SECOND_SHORT_' .. k] = DPS_TEMPLATE
    end
end

function addon.itemUpgrades:Setup()
    self:UpdateSlotMap()
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
    self:UpdateSlotMap()
end

-- Reset cache on trainer
function addon.itemUpgrades:TRAINER_SHOW()
    wipe(session.itemCache)
    self:UpdateSlotMap()
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

local function IsWeaponSlot(itemEquipLoc)
    return
        itemEquipLoc == 'INVTYPE_WEAPON' or itemEquipLoc == 'INVTYPE_RANGED' or
            itemEquipLoc == 'INVTYPE_2HWEAPON' or itemEquipLoc ==
            'INVTYPE_WEAPONMAINHAND' or itemEquipLoc == 'INVTYPE_WEAPONOFFHAND' or
            itemEquipLoc == 'INVTYPE_THROWN' or itemEquipLoc ==
            'INVTYPE_RANGEDRIGHT'
end

local function IsUsableForClass(itemSubTypeID, itemEquipLoc)
    if type(itemSubTypeID) ~= "number" then
        addon.error("IsUsableForClass, itemSubTypeID number required")
        return
    end

    if type(itemEquipLoc) ~= "string" then
        addon.error("IsUsableForClass, itemEquipLoc string required")
        return
    end

    -- Slot not equippable
    -- TODO re-enable short-circuit after updating weapon handling GSheet
    -- if not session.equippableSlots[itemEquipLoc] then return end

    -- Type not usable by class
    if IsWeaponSlot(itemEquipLoc) then
        if not session.equippableWeapons[itemSubTypeID] then return end
    else
        if not session.equippableArmor[itemSubTypeID] then return end
    end

    return true
end

local function CalculateDPSWeight(itemData, stats)
    -- Example:
    -- stats = {
    --    ['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] = 12.3456789,
    --    ['itemEquipLoc'] = 'INVTYPE_RANGED',
    --    ...
    -- }

    local weaponDPS = stats['ITEM_MOD_DAMAGE_PER_SECOND_SHORT']
    local dpsWeights = {}
    local statWeightKey



    -- Look through WEAPON_MAP for all kinds associated with itemEquipLoc
    -- - which then gives the WEAPON_MAP key for weight lookup
    -- session.weaponKindToKey['INVTYPE_RANGED'] -> {RANGED, RANGED_FAST}
    for _, keySuffix in ipairs(session.weaponKindToKey[itemData.itemEquipLoc] or
                                   {}) do

        statWeightKey = 'ITEM_MOD_DAMAGE_PER_SECOND_SHORT_' .. keySuffix

        -- Check weaponKind keys for class statWeights
        if session.statWeights[statWeightKey] then
            -- print("session.statWeights[statWeightKey]", session.statWeights[statWeightKey])
            -- TODO check weapon speed to tell if normal or fast
            -- TODO add weapon speed weights
            tinsert(dpsWeights, {
                ['Weight'] = weaponDPS * session.statWeights[statWeightKey],
                ['Key'] = statWeightKey
            })
        end
    end

    -- Get GSheet keys that weapon slot results in
    -- TODO return highest weighted value
    if dpsWeights[1] and dpsWeights[1].Weight then
        return dpsWeights[1].Weight, dpsWeights
    else
        -- if all else fails treat value as zero because something went wrong
        return 0, nil
    end
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

    local itemID, _, _, itemEquipLoc, _, _, itemSubTypeID = GetItemInfoInstant(
                                                                itemLink)

    -- Not an equippable item
    if not itemEquipLoc or itemEquipLoc == "" then return end

    local stats = GetItemStats(itemLink)

    -- Failed to query stats, wait for next run
    if stats == nil then return end

    local itemData = {
        itemLink = itemLink,
        itemID = itemID,
        itemSubTypeID = itemSubTypeID,
        itemEquipLoc = itemEquipLoc
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
        -- print("Weighting stat", key, "value")

        -- Weapon DPS only comes back as a single stat/key
        if key == 'ITEM_MOD_DAMAGE_PER_SECOND_SHORT' then
            statWeight = CalculateDPSWeight(itemData, stats)
            -- print("Key", key, "Value", value, "weighted at", statWeight)

            totalWeight = totalWeight + statWeight
        elseif session.statWeights[key] then -- Only calculate values explicitly configured

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
    if not comparedData.itemEquipLoc then return end

    if not IsUsableForClass(comparedData.itemSubTypeID,
                            comparedData.itemEquipLoc) then return end

    if type(session.equippableSlots[comparedData.itemEquipLoc]) == "table" then
        print("is multi-slot", comparedData.itemEquipLoc)
    end
    -- TODO handle slot map array and multiple matches
    local equippedItemLink = GetInventoryItemLink("player",
                                                  session.equippableSlots[comparedData.itemEquipLoc])
    -- print("GetInventoryItemLink", comparedStats.itemEquipLoc, GetInventoryItemLink("player", comparedStats.itemEquipLoc))

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

    -- print(comparedData.itemEquipLoc, "weights", comparedData.totalWeight, equippedData.totalWeight)

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

    local ratio = addon.itemUpgrades:CompareItemWeight(itemLink, tooltip)
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
        print('----- ' .. itemID)
        itemData =
            addon.itemUpgrades:GetItemData("item:" .. itemID, GameTooltip)

        if itemData then
            for key, value in pairs(itemData) do
                print('  ', key, value)
            end
            print('  stats:')
            for key, value in pairs(itemData.stats) do
                print('  - ', key, value)
            end
        end
    end
end
