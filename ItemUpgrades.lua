local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "CATA") then return end

local locale = GetLocale()

if not (locale == "enUS" or locale == "enGB" or locale == "frFR") then return end

local fmt, tinsert, ipairs, pairs, next, type, wipe, tonumber, strlower, smatch = string.format, table.insert, ipairs,
                                                                                  pairs, next, type, wipe, tonumber,
                                                                                  strlower, string.match

local GetItemInfo = C_Item and C_Item.GetItemInfo or _G.GetItemInfo
local GetItemInfoInstant = C_Item and C_Item.GetItemInfoInstant or _G.GetItemInfoInstant
local IsEquippedItem = C_Item and C_Item.IsEquippedItem or _G.IsEquippedItem
local GetItemStats = C_Item and C_Item.GetItemStats or _G.GetItemStats
local UnitLevel = _G.UnitLevel
local GetInventoryItemLink = _G.GetInventoryItemLink

local ItemArmorSubclass, ItemWeaponSubclass = Enum.ItemArmorSubclass, Enum.ItemWeaponSubclass

addon.itemUpgrades = addon:NewModule("ItemUpgrades", "AceEvent-3.0")

local session = {
    isInitialized = false,

    -- Loaded stat weights for class
    -- Available spec weights, e.g. ele/enh or mageAoe/mageSingle
    specWeights = {},

    -- Active loaded stat weights
    activeStatWeights = {},

    -- Capturable regexes for tooltip parsing
    statsRegexes = {},

    -- Item stats cache
    itemCache = {},

    -- Track compatible
    equippableSlots = {},
    equippableArmor = {},
    equippableWeapons = {},

    weaponSlotToWeightKey = {},

    -- TODO handle thread-safe?
    comparisonTip = nil
}

-- TODO support spec awareness
-- Ignoring for now since overrides are rare and specific
local ITEM_WEIGHT_ADDITIONS = {
    ["DEATHKNIGHT"] = {},
    ["DRUID"] = {},
    ["HUNTER"] = {},
    ["MAGE"] = {},
    ["PALADIN"] = {},
    ["PRIEST"] = {},
    ["ROGUE"] = {},
    ["SHAMAN"] = {
        -- [4908] = 12 -- Additional 12 EP for testing
    },
    ["WARLOCK"] = {},
    ["WARRIOR"] = {}
}

local CLASS_MAP = {
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
            ["INVTYPE_FINGER"] = {[_G.INVSLOT_FINGER1] = _G.INVSLOT_FINGER1, [_G.INVSLOT_FINGER2] = _G.INVSLOT_FINGER2},
            ["INVTYPE_TRINKET"] = {
                [_G.INVSLOT_TRINKET1] = _G.INVSLOT_TRINKET1,
                [_G.INVSLOT_TRINKET2] = _G.INVSLOT_TRINKET2
            },
            ["INVTYPE_CLOAK"] = _G.INVSLOT_BACK,
            ["INVTYPE_HOLDABLE"] = _G.INVSLOT_OFFHAND,
            ["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND,
            ["INVTYPE_WEAPON"] = _G.INVSLOT_MAINHAND,
            ["INVTYPE_2HWEAPON"] = _G.INVSLOT_MAINHAND
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Generic] = true, -- Trinkets, rings, necks
            [ItemArmorSubclass.Cloth] = true -- Cloaks plus cloth armor
        },
        ["WeaponType"] = {[ItemWeaponSubclass.Generic] = true}
    },
    ["DEATHKNIGHT"] = {
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED,
            ["INVTYPE_SHIELD"] = _G.INVSLOT_OFFHAND,
            ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = true,
            [ItemArmorSubclass.Plate] = true -- DK always 55+
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Polearm] = function() return UnitLevel("player") >= 20 end,
            [ItemWeaponSubclass.Sword1H] = true,
            [ItemWeaponSubclass.Sword2H] = true,
            [ItemWeaponSubclass.Unarmed] = true
        }
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
            ["INVTYPE_WEAPONOFFHAND"] = function()
                return UnitLevel("player") >= 20 and _G.INVSLOT_OFFHAND or nil
            end
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = function() return UnitLevel("player") >= 40 end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Bows] = true,
            [ItemWeaponSubclass.Guns] = true,
            [ItemWeaponSubclass.Polearm] = function() return UnitLevel("player") >= 20 end,
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
            [ItemArmorSubclass.Plate] = function() return UnitLevel("player") >= 40 end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Polearm] = function() return UnitLevel("player") >= 20 end,
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
            ["INVTYPE_WEAPONOFFHAND"] = function()
                return UnitLevel("player") >= 10 and _G.INVSLOT_OFFHAND or nil
            end
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
            [ItemArmorSubclass.Mail] = function() return UnitLevel("player") >= 40 end
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
            ["INVTYPE_WEAPONOFFHAND"] = function()
                return UnitLevel("player") >= 20 and _G.INVSLOT_OFFHAND or nil
            end
        },
        ["ArmorType"] = {
            [ItemArmorSubclass.Leather] = true,
            [ItemArmorSubclass.Mail] = true,
            [ItemArmorSubclass.Plate] = function() return UnitLevel("player") >= 40 end
        },
        ["WeaponType"] = {
            [ItemWeaponSubclass.Axe1H] = true,
            [ItemWeaponSubclass.Axe2H] = true,
            [ItemWeaponSubclass.Bows] = true,
            [ItemWeaponSubclass.Guns] = true,
            [ItemWeaponSubclass.Mace1H] = true,
            [ItemWeaponSubclass.Mace2H] = true,
            [ItemWeaponSubclass.Polearm] = function() return UnitLevel("player") >= 20 end,
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
    ['ITEM_MOD_STRENGTH_SHORT'] = _G.ITEM_MOD_STRENGTH,
    ['ITEM_MOD_AGILITY_SHORT'] = _G.ITEM_MOD_AGILITY,
    ['ITEM_MOD_INTELLECT_SHORT'] = _G.ITEM_MOD_INTELLECT,
    ['ITEM_MOD_STAMINA_SHORT'] = _G.ITEM_MOD_STAMINA,
    ['ITEM_MOD_SPIRIT_SHORT'] = _G.ITEM_MOD_SPIRIT,
    ['ITEM_MOD_HEALTH_REGEN_SHORT'] = _G.ITEM_MOD_HEALTH_REGEN,
    ['ITEM_MOD_POWER_REGEN0_SHORT'] = _G.ITEM_MOD_MANA_REGENERATION,
    ['ITEM_MOD_SPELL_HEALING_DONE'] = _G.ITEM_MOD_SPELL_HEALING_DONE,
    ['ITEM_MOD_HIT_SPELL_RATING_SHORT'] = _G.ITEM_MOD_HIT_SPELL_RATING,
    ['ITEM_MOD_CRIT_SPELL_RATING_SHORT'] = _G.ITEM_MOD_CRIT_SPELL_RATING,

    ['ITEM_MOD_RANGED_ATTACK_POWER_SHORT'] = _G.ITEM_MOD_RANGED_ATTACK_POWER,
    ['ITEM_MOD_DEFENSE_SKILL_RATING_SHORT'] = _G.ITEM_MOD_DEFENSE_SKILL_RATING

    -- Data in GetItemStats
    -- ['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] = _G.DPS_TEMPLATE,
    -- ['ITEM_MOD_SPELL_DAMAGE_DONE'] = { -- CANNOT BE TRUSTED, replaced by parsing STAT_SPELLDAMAGE
    --   _G.ITEM_MOD_SPELL_POWER, _G.ITEM_MOD_SPELL_DAMAGE_DONE
    -- },

    -- Wrong global variable for text, unable to find corresponding easily
    -- ['ITEM_MOD_HIT_RATING_SHORT'] = _G.ITEM_MOD_HIT_RATING,
    -- ['ITEM_MOD_CRIT_RATING_SHORT'] = _G.ITEM_MOD_CRIT_RATING,
    -- ['ITEM_MOD_DODGE_RATING_SHORT'] = _G.ITEM_MOD_DODGE_RATING,
    -- ['ITEM_MOD_PARRY_RATING_SHORT'] = _G.ITEM_MOD_PARRY_RATING
    -- ['ITEM_MOD_ATTACK_POWER_SHORT'] = _G.ITEM_MOD_ATTACK_POWER,
}

if addon.game == "CATA" then
    KEY_TO_TEXT['ITEM_MOD_MASTERY_RATING_SHORT'] = _G.ITEM_MOD_MASTERY_RATING

    KEY_TO_TEXT['ITEM_MOD_HIT_RANGED_RATING_SHORT'] = _G.ITEM_MOD_HIT_RANGED_RATING

    KEY_TO_TEXT['ITEM_MOD_CRIT_RANGED_RATING_SHORT'] = _G.ITEM_MOD_CRIT_RANGED_RATING
    KEY_TO_TEXT['ITEM_MOD_SPELL_PENETRATION_SHORT'] = _G.ITEM_MOD_SPELL_PENETRATION

    KEY_TO_TEXT['ITEM_MOD_HEALTH_REGEN_SHORT'] = _G.ITEM_MOD_HEALTH_REGEN
    KEY_TO_TEXT['ITEM_MOD_BLOCK_RATING_SHORT'] = _G.ITEM_MOD_BLOCK_RATING
    KEY_TO_TEXT['ITEM_MOD_RESILIENCE_RATING_SHORT'] = _G.ITEM_MOD_RESILIENCE_RATING
end

-- Keys only obtained from tooltip text parsing
-- Explicitly set regex
local OUT_OF_BAND_KEYS = {
    ['ITEM_MOD_CR_SPEED_SHORT'] = _G.ITEM_MOD_CR_SPEED_SHORT .. "%s+(%d+%.%d+)",
    ['ITEM_MOD_CRIT_RATING_SHORT'] = "%s+Improves your chance to get a critical strike by (%d+)%%.",
    ['ITEM_MOD_HIT_RATING_SHORT'] = "%s+Improves your chance to hit by (%d+)%%.",
    ['ITEM_MOD_DODGE_RATING_SHORT'] = "%s+Increases your chance to dodge an attack by (%d+)%%.",
    ['ITEM_MOD_PARRY_RATING_SHORT'] = "%s+Increases your chance to parry an attack by (%d+)%%.",
    ['ITEM_MOD_ATTACK_POWER_SHORT'] = "%s+%+(%d+)%s+" .. ITEM_MOD_ATTACK_POWER_SHORT,

    -- Stats cannot be trusted, explicitly parse
    -- Overrides ITEM_MOD_SPELL_DAMAGE_DONE built-in
    ['STAT_SPELLDAMAGE'] = {_G.ITEM_MOD_SPELL_POWER, _G.ITEM_MOD_SPELL_DAMAGE_DONE}
}

local WEAPON_SLOT_MAP = {
    ['2H'] = {['Slot'] = {["INVTYPE_2HWEAPON"] = _G.INVSLOT_MAINHAND}},
    ['MH'] = {['Slot'] = {["INVTYPE_WEAPON"] = _G.INVSLOT_MAINHAND, ["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND}},
    ['OH'] = {['Slot'] = {["INVTYPE_WEAPON"] = _G.INVSLOT_OFFHAND, ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND}},
    ['RANGED'] = {
        ["Slot"] = {
            ["INVTYPE_THROWN"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGED"] = _G.INVSLOT_RANGED,
            ["INVTYPE_RANGEDRIGHT"] = _G.INVSLOT_RANGED
        }
    }
}

-- Turn GSheet suffix
local SPELL_KIND_MAP = {
    -- SPELL_SCHOOL1_NAME = "STAT_SPELLDAMAGE_HOLY",
    [SPELL_SCHOOL2_NAME] = "STAT_SPELLDAMAGE_FIRE",
    [SPELL_SCHOOL3_NAME] = "STAT_SPELLDAMAGE_NATURE",
    [SPELL_SCHOOL4_NAME] = "STAT_SPELLDAMAGE_FROST",
    [SPELL_SCHOOL5_NAME] = "STAT_SPELLDAMAGE_SHADOW",
    [SPELL_SCHOOL6_NAME] = "STAT_SPELLDAMAGE_ARCANE"
}

local SPELL_KIND_MATCH = "Increases damage done by (%a+) spells and effects by up to (%d+)."

if locale == 'frFR' then
    SPELL_KIND_MATCH = "Augmente les dégâts infligés par les sorts et effets d?e?'? ?(%a+) de (%d+) au maximum."

    -- Comma decimal delimiter
    OUT_OF_BAND_KEYS['ITEM_MOD_CR_SPEED_SHORT'] = _G.ITEM_MOD_CR_SPEED_SHORT .. "%s+(%d+,%d+)"

    OUT_OF_BAND_KEYS['ITEM_MOD_CRIT_RATING_SHORT'] = "%s+Augmente vos chances d'infliger un coup critique de (%d+)%%."
    OUT_OF_BAND_KEYS['ITEM_MOD_HIT_RATING_SHORT'] = "%s+Augmente vos chances de toucher de (%d+)%%."
    OUT_OF_BAND_KEYS['ITEM_MOD_DODGE_RATING_SHORT'] = "%s+Augmente vos chances d'esquiver une attaque de (%d+)%%."
    OUT_OF_BAND_KEYS['ITEM_MOD_PARRY_RATING_SHORT'] = "%s+Augmente vos chances de parer une attaque de (%d+)%%."
end

local SPEC_MAP = {
    ["WARRIOR"] = {[1] = "Arms", [2] = "Fury", [3] = "Protection"},
    ["PALADIN"] = {[1] = "Holy", [2] = "Protection", [3] = "Retribution"},
    ["HUNTER"] = {[1] = "Beast Mastery", [2] = "Marksmanship", [3] = "Survival"},
    ["ROGUE"] = {[1] = "Assassination", [2] = "Combat", [3] = "Subtlety"},
    ["PRIEST"] = {[1] = "Discipline", [2] = "Holy", [3] = "Shadow"},
    ["SHAMAN"] = {[1] = "Elemental", [2] = "Enhancement", [3] = "Restoration"},
    ["MAGE"] = {[1] = "Arcane", [2] = "Fire", [3] = "Frost"},
    ["WARLOCK"] = {[1] = "Affliction", [2] = "Demonology", [3] = "Destruction"},
    ["DRUID"] = {[1] = "Balance", [2] = "Feral Combat", [4] = "Restoration"},
    ["DEATHKNIGHT"] = {[1] = "Blood", [2] = "Frost", [4] = "Unholy"}
}

-- Setup reverse lookup in session.weaponSlotToWeightKey
for weaponKey, d in pairs(WEAPON_SLOT_MAP) do
    if not d.Slot then
        addon.error("Incomplete WEAPON_SLOT_MAP slot data for", weaponKey)
        return
    end

    for itemEquipLoc, _ in pairs(d.Slot) do
        if not session.weaponSlotToWeightKey[itemEquipLoc] then session.weaponSlotToWeightKey[itemEquipLoc] = {} end

        -- ['INVTYPE_WEAPON'] = { "MH", "OH" }
        tinsert(session.weaponSlotToWeightKey[itemEquipLoc], weaponKey)
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
    if session.statsRegexes[keyString] then return session.statsRegexes[keyString] end

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

local function prettyPrintRatio(ratio)
    if not ratio then return "NaN" end

    local percentage

    if ratio == 1 then
        return '100%'
    elseif ratio > 0 then
        percentage = ((ratio * 100) - 100)
    elseif ratio == 0 then
        return '0%'
    else -- < 0
        percentage = (ratio * 100)
    end

    return fmt("%.2f%%", percentage)
end

local function IsWeaponSlot(itemEquipLoc)
    return itemEquipLoc == 'INVTYPE_WEAPON' or itemEquipLoc == 'INVTYPE_RANGED' or itemEquipLoc == 'INVTYPE_2HWEAPON' or
               itemEquipLoc == 'INVTYPE_WEAPONMAINHAND' or itemEquipLoc == 'INVTYPE_WEAPONOFFHAND' or itemEquipLoc ==
               'INVTYPE_THROWN' or itemEquipLoc == 'INVTYPE_RANGEDRIGHT'
end

local function IsMeleeSlot(itemEquipLoc)
    return itemEquipLoc == 'INVTYPE_WEAPON' or itemEquipLoc == 'INVTYPE_2HWEAPON' or itemEquipLoc ==
               'INVTYPE_WEAPONMAINHAND' or itemEquipLoc == 'INVTYPE_WEAPONOFFHAND'
end

local function enableTotalEPLines(itemData, lines)
    if itemData.dpsWeights then -- IsWeaponSlot equivalent
        for suffix, data in pairs(itemData.dpsWeights) do
            tinsert(lines, fmt("  Total EP (%s): %.2f", suffix, data.totalWeight))
        end
    else -- Armor
        tinsert(lines, fmt("  Total EP: %.2f", itemData.totalWeight))
    end
end

local function TooltipSetItem(tooltip, ...)
    if not addon.settings.profile.enableItemUpgrades or not addon.settings.profile.enableTips then return end

    local _, itemLink = tooltip:GetItem()
    if not itemLink then return end
    -- print("TooltipSetItem", tooltip:GetName(), itemLink)

    -- Exclude addon text when looking at an equipped item
    if IsEquippedItem(itemLink) then return end

    local itemData = addon.itemUpgrades:GetItemData(itemLink, tooltip)
    if not (itemData and itemData.totalWeight) then return end

    local statComparisons = addon.itemUpgrades:CompareItemWeight(itemLink, tooltip)

    local lines = {}

    -- Effectively only used when 1H compares against 2H
    if not statComparisons or next(statComparisons) == nil then
        if addon.settings.profile.enableTotalEP then
            enableTotalEPLines(itemData, lines)

            if #lines > 0 then
                tooltip:AddLine(fmt("%s - %s SC", addon.title, _G.ITEM_UPGRADE))

                for _, line in ipairs(lines) do tooltip:AddLine(line) end
            end
        end

        return
    end

    local lineText
    local equippedWeaponWeight, comparedWeaponWeight

    for _, statsData in ipairs(statComparisons) do
        if statsData['Ratio'] then
            lineText = fmt("  %s: %s / +%.2f stats EP", statsData['ItemLink'] or _G.UNKNOWN,
                           prettyPrintRatio(statsData['Ratio']), statsData.WeightIncrease)
        elseif statsData['ItemLink'] == _G.EMPTY then
            lineText = fmt("  %s: +%s stats EP", _G.EMPTY, statsData.WeightIncrease)
        else -- SPELL_FAILED_ERROR
            lineText = nil
        end

        -- If successful comparison but not a weapon
        if lineText and not statsData.DpsWeights then
            tinsert(lines, lineText)
        end

        for suffix, comparisonDpsData in pairs(statsData.DpsWeights or {}) do
            equippedWeaponWeight = statsData.TotalWeight + comparisonDpsData.totalWeight
            comparedWeaponWeight = itemData.totalWeight + itemData.dpsWeights[suffix].totalWeight

            -- TODO if no equippedWeaponWeight then not comparable slot
            lineText = fmt("%s (%s) EP: +%.2f", statsData['ItemLink'], suffix,
                           comparedWeaponWeight - equippedWeaponWeight)

            if statsData['debug'] and addon.settings.profile.debug then
                lineText = fmt("%s (%s)", lineText, statsData['debug'])
            end

            -- Add a comparison line for every statComparison, should be 1 except for 1H weapons and rings
            if lineText and itemData.dpsWeights[suffix] then tinsert(lines, lineText) end
        end
    end

    if #lines > 0 then
        tooltip:AddLine(fmt("%s - %s", addon.title, _G.ITEM_UPGRADE))

        if addon.settings.profile.enableTotalEP then enableTotalEPLines(itemData, lines) end

        for _, line in ipairs(lines) do tooltip:AddLine(line) end
    end

    tooltip:Show()
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
end

function addon.itemUpgrades:Setup()
    -- Toggle functionality off
    if not addon.settings.profile.enableItemUpgrades or not addon.settings.profile.enableTips then return end

    if UnitLevel("player") == GetMaxPlayerLevel() then return end

    self:UpdateSlotMap()
    if not self:LoadStatWeights() then return end
    if not self:ActivateSpecWeights() then return end
    session.itemCache = {}

    -- Only register events and hookScript once
    if session.isInitialized then return end

    self:RegisterEvent("PLAYER_LEVEL_UP")
    self:RegisterEvent("TRAINER_SHOW")

    local lookup
    -- Only load stats coming from GSheet
    for key, _ in pairs(session.activeStatWeights) do
        -- print("Checking", key)
        lookup = KeyToRegex(key)
        if lookup then
            -- print("Match loaded", lookup)
            session.statsRegexes[key] = lookup
        end

    end

    -- Add out-of-band (aka hackery) stat parsing
    for key, regex in pairs(OUT_OF_BAND_KEYS) do session.statsRegexes[key] = regex end

    -- Inventory
    GameTooltip:HookScript("OnTooltipSetItem", TooltipSetItem)

    -- Vendor?
    ItemRefTooltip:HookScript("OnTooltipSetItem", TooltipSetItem)

    -- Enable AH
    ShoppingTooltip1:HookScript("OnTooltipSetItem", TooltipSetItem)
    -- ShoppingTooltip2:HookScript("OnTooltipSetItem", TooltipSetItem)

    session.isInitialized = true

    self.AH:Setup()
end

-- Reset cache on levelup
function addon.itemUpgrades:PLAYER_LEVEL_UP()
    if not addon.settings.profile.enableItemUpgrades then return end

    addon.itemUpgrades:Setup()
end

-- Reset cache on trainer
function addon.itemUpgrades:TRAINER_SHOW()
    if not addon.settings.profile.enableItemUpgrades then return end

    addon.itemUpgrades:Setup()
end

function addon.itemUpgrades:LoadStatWeights()
    if not addon.statWeights then return end

    local newWeights = {}

    local guideMode = addon.settings.profile.hardcore and "HARDCORE" or "SPEEDRUN"

    -- TODO chance this doesn't evaluate properly on PLAYER_LEVEL_UP event
    local playerLevel = UnitLevel("player")

    for dbTitle, data in pairs(addon.statWeights) do
        if data.MAX_LEVEL <= data.MIN_LEVEL then
            addon.comms.PrettyPrint("Invalid min (%s) and max %s level for for %s", data.MIN_LEVEL, data.MAX_LEVEL,
                                    dbTitle)
        end

        if strupper(data.Class) == addon.player.class and strupper(data.Kind) == guideMode and playerLevel >=
            data.MIN_LEVEL and playerLevel <= data.MAX_LEVEL then
            newWeights[data.Spec or data.Class] = data

            -- print("Loaded statWeights", data.Title)
            -- print("Loaded statWeights, level:", playerLevel, data.MIN_LEVEL, data.MAX_LEVEL)
        end
    end

    for spec, data in pairs(newWeights) do
        for kind, value in pairs(data) do
            -- Optimization: remove all 0 stats

            if tonumber(value) and value == 0 then
                -- print("Removed", spec .. ':' .. kind)
                data[kind] = nil
            end
        end

        -- SoD
        if addon.player.season == 3 and data['ITEM_MOD_SPIRIT_SHORT'] then
            if addon.player.class == "PRIEST" then
                data['ITEM_MOD_SPIRIT_SHORT'] = data['ITEM_MOD_SPIRIT_SHORT'] * 0.75
            else
                data['ITEM_MOD_SPIRIT_SHORT'] = data['ITEM_MOD_SPIRIT_SHORT'] * 0.5
            end
        end
    end

    session.specWeights = newWeights

    return session.specWeights ~= nil
end

local function getSpec()
    -- Classes with className as spec only have one (Rogue, Warrior), use that
    if session.specWeights[addon.player.class] then return addon.player.class end

    -- if addon.settings.profile.enableTalentGuides then
    --     -- Difficult/impossible to map talent guide
    --     -- RXPCData.activeTalentGuide == "Rogue - Hardcore Rogue 10-60"
    -- end

    -- Calculate most likely spec
    local pointsSpent
    local guessedSpec = {index = nil, count = 0}

    for tabIndex = 1, _G.GetNumTalentTabs(false) do
        -- id, name, description, icon, pointsSpent, background, previewPointsSpent, isUnlocked
        _, _, _, _, pointsSpent = _G.GetTalentTabInfo(tabIndex)

        if pointsSpent > guessedSpec.count then
            guessedSpec.index = tabIndex
            guessedSpec.count = pointsSpent
        end
    end

    local specName
    -- No tabs found with > 0 talents, likely fresh character
    if guessedSpec.index then
        specName = SPEC_MAP[addon.player.class][guessedSpec.index]

        if addon.settings.profile.debug then
            addon.comms.PrettyPrint("ItemUpgrades, spec guessed as %s", specName)
        end
    end

    -- If calculated spec has no weights, then class is unsupported
    -- Likely exited earlier with Rogue/Warrior in this scenario then
    if session.specWeights[specName] then return specName end

    -- If no class-wide spec and no talents, then fallback to arbitrarily pick the first loaded spec
    specName, _ = next(session.specWeights)

    -- Returns first specName, or nil
    return specName
end

-- Always run after LoadStatWeights
function addon.itemUpgrades:ActivateSpecWeights()
    if not session.specWeights then return end

    local spec = getSpec()

    -- Uninitialized spec, so set to calculated value
    if not addon.settings.profile.itemUpgradeSpec then
        addon.settings.profile.itemUpgradeSpec = spec
    elseif addon.settings.profile.itemUpgradeSpec ~= spec then
        -- Handle spec name changes
        if not session.specWeights[addon.settings.profile.itemUpgradeSpec] then
            addon.settings.profile.itemUpgradeSpec = spec
        end

        -- Chosen talents don't match itemUpgradeSpec
        -- Leave alone as is, don't spam user if there's a mismatch
        if addon.settings.profile.debug then
            addon.comms.PrettyPrint("ItemUpgrades selected spec (%s) differs from calculated spec (%s)",
                                    addon.settings.profile.itemUpgradeSpec, spec)
        end
    end

    if not addon.settings.profile.itemUpgradeSpec then return end

    if addon.settings.profile.debug then
        addon.comms.PrettyPrint("Activating spec weights for %s", addon.settings.profile.itemUpgradeSpec)
    end

    session.activeStatWeights = session.specWeights[addon.settings.profile.itemUpgradeSpec]

    if not session.activeStatWeights then return end

    session.activeStatWeights.extraWeight = ITEM_WEIGHT_ADDITIONS[addon.player.class] or {}

    return session.activeStatWeights ~= nil
end

function addon.itemUpgrades:GetSpecWeights()
    local options = {}
    for k, _ in pairs(session.specWeights) do options[k] = k end

    -- No current support for class, spec, etc
    if next(options) == nil then return end

    return options
end

-- ITEM_SET_NAME = "%s (%d/%d)";
local SET_BONUS_MATCH = "(%w+)%s+%((%d+)/(%d+)%)"

local function GetTooltipLines(tooltip, baseItemData)
    local textLines = {}
    -- print("GetTooltipLines, tooltip", tooltip:GetName(), tooltip:NumLines())

    -- Something went wrong
    if not tooltip or not tooltip.NumLines or tooltip:NumLines() == 0 then return end

    local regions = {tooltip:GetRegions()}
    local rText
    local setMatch = {}

    for _, r in ipairs(regions) do

        if r:IsObjectType("FontString") and r:GetText() then
            rText = r:GetText()
            -- print("GetTooltipLines, regions", rText)

            -- Set bonus, so stop gathering lines past set bonus
            if baseItemData and baseItemData.setID then
                -- print("GetTooltipLines, checking for set bonus line '" .. rText .. "'")
                setMatch = {smatch(rText, SET_BONUS_MATCH)}

                if setMatch[1] and setMatch[2] and setMatch[3] then
                    -- print("GetTooltipLines, aborting at set bonuses", rText)
                    break
                end
            end

            tinsert(textLines, rText)
        end
    end
    return textLines
end

local function GetComparisonTip()
    if session.comparisonTip then return session.comparisonTip end

    session.comparisonTip = CreateFrame("GameTooltip", "RXPItemUpgradesComparison", nil, "GameTooltipTemplate")
    session.comparisonTip:SetOwner(WorldFrame, "ANCHOR_NONE")
    session.comparisonTip:AddFontStrings(session.comparisonTip:CreateFontString("$parentTextLeft1", nil,
                                                                                "GameTooltipText"),
                                         session.comparisonTip:CreateFontString("$parentTextRight1", nil,
                                                                                "GameTooltipText"))

    return session.comparisonTip
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
    -- itemData = {
    --    ['itemEquipLoc'] = 'INVTYPE_RANGED',
    --    ...
    -- }
    -- stats = {
    --    ['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] = 12.3456789,
    --    ...
    -- }

    -- TODO doesn't work on hidden/background tooltip parsing sometimes?
    if not stats or not stats['ITEM_MOD_CR_SPEED_SHORT'] then
        if addon.settings.profile.debug then
            addon.comms.PrettyPrint("itemUpgrades CalculateDPSWeight, Speed property required %s",
                                    itemData and itemData['itemLink'])
        end
        return nil
    end

    local dpsWeights = {}
    local itemEquipLoc = itemData.itemEquipLoc
    local speedWeightKey, dpsWeight, speedKindWeight

    -- Look through weaponSlotToWeightKey for all kinds associated with itemEquipLoc
    -- - which then gives the WEAPON_SLOT_MAP key for weight lookup
    -- weaponSlotToWeightKey['INVTYPE_WEAPON'] = { "MH", "OH" }
    for _, keySuffix in ipairs(session.weaponSlotToWeightKey[itemEquipLoc] or {}) do

        -- Lookup speed weight key with kind suffix (MH, OH, RANGED, 2H)
        speedWeightKey = 'ITEM_MOD_CR_SPEED_SHORT_' .. keySuffix

        -- Check weaponKind keys for class statWeights
        if session.activeStatWeights[speedWeightKey] then

            if itemEquipLoc == 'INVTYPE_RANGED' or itemEquipLoc == 'INVTYPE_THROWN' or itemEquipLoc ==
                'INVTYPE_RANGEDRIGHT' then

                dpsWeight = stats['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] *
                                session.activeStatWeights['ITEM_MOD_DAMAGE_PER_SECOND_SHORT_RANGED']
            else
                dpsWeight = stats['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] *
                                session.activeStatWeights['ITEM_MOD_DAMAGE_PER_SECOND_SHORT']
            end

            speedKindWeight = stats['ITEM_MOD_CR_SPEED_SHORT'] * session.activeStatWeights[speedWeightKey]

            -- (DPS * 1_DPS_WEIGHT) + (SPEED * WEAPON_WEIGHT)
            dpsWeights[keySuffix] = {['totalWeight'] = dpsWeight + speedKindWeight, ['speedWeight'] = speedKindWeight}
        end
    end

    return dpsWeights
end

local function CalculateSpellWeight(stats, tooltipTextLines)
    -- Example:
    -- stats = {
    --    ['ITEM_MOD_SPELL_DAMAGE_DONE'] = 12, -- Always 1 lower than tooltip shows
    --    ...
    -- }

    -- No spellpower weights for class
    if not (session.activeStatWeights['STAT_SPELLDAMAGE'] or session.activeStatWeights['ITEM_MOD_SPELL_POWER']) then
        return 0
    end

    local schoolStatWeight, totalStatWeight = 0, 0
    local schoolKey, schoolName, spellPower

    -- Check all tooltip lines for regex matches
    for _, line in ipairs(tooltipTextLines) do
        -- print("CalculateSpellWeight (", line, ")")
        schoolName, spellPower = smatch(line, SPELL_KIND_MATCH)

        if schoolName then
            schoolKey = SPELL_KIND_MAP[strlower(schoolName)]

            -- print("Matched schoolName", strlower(schoolName), schoolKey, spellPower)
            if session.activeStatWeights[schoolKey] and session.activeStatWeights[schoolKey] > 0 then

                -- ITEM_MOD_SPELL_DAMAGE_DONE cannot be trusted, byRef add parsed stats
                stats[schoolKey] = spellPower
                schoolStatWeight = spellPower * session.activeStatWeights[schoolKey]

                totalStatWeight = totalStatWeight + schoolStatWeight
            end
        end
    end

    -- Not a magic school, return default weighting
    -- ITEM_MOD_SPELL_DAMAGE_DONE cannot be trusted, e.g. 40 Shadow + 40 Frost == 78 ITEM_MOD_SPELL_DAMAGE_DONE
    if totalStatWeight == 0 and stats['STAT_SPELLDAMAGE'] then -- Legacy block
        -- print("STAT_SPELLDAMAGE: Not a magic school", stats['STAT_SPELLDAMAGE'])
        -- ITEM_MOD_SPELL_DAMAGE_DONE cannot be trusted without validation
        -- Set spellPower stat to built-in stat after verifying no school
        stats['STAT_SPELLDAMAGE'] = stats['ITEM_MOD_SPELL_DAMAGE_DONE'] + 1

        return stats['STAT_SPELLDAMAGE'] * session.activeStatWeights['STAT_SPELLDAMAGE']

    elseif totalStatWeight == 0 and stats['ITEM_MOD_SPELL_POWER'] then -- Anniversary/Era/SoD/Cata
        -- print("ITEM_MOD_SPELL_POWER: Not a magic school", stats['ITEM_MOD_SPELL_POWER'])
        -- Set spellPower stat to built-in stat after verifying no school
        stats['STAT_SPELLDAMAGE'] = stats['ITEM_MOD_SPELL_POWER'] + 1

        return stats['STAT_SPELLDAMAGE'] *
                   (session.activeStatWeights['STAT_SPELLDAMAGE'] or session.activeStatWeights['ITEM_MOD_SPELL_POWER'])
    end

    return totalStatWeight
end

function addon.itemUpgrades:GetItemData(itemLink, tooltip)
    if not itemLink or type(itemLink) ~= "string" then
        -- print("addon.itemUpgrades:GetItemData, itemLink string required", itemLink)
        return
    end

    if session.itemCache[itemLink] then
        -- print("Returning cached weight", itemLink, session.itemCache[itemLink].totalWeight)
        return session.itemCache[itemLink]
    end

    local _, _, _, _, itemMinLevel, _, _, _, itemEquipLoc, _, sellPrice, _, itemSubTypeID, _, _, setID = GetItemInfo(
                                                                                                             itemLink)

    -- Not an equippable item
    if not itemEquipLoc or itemEquipLoc == "" or itemEquipLoc == "INVTYPE_AMMO" or itemEquipLoc == "INVTYPE_BAG" or
        itemEquipLoc == "INVTYPE_NON_EQUIP_IGNORE" then return end

    -- Parse API stats first before processing tooltip text
    local stats = GetItemStats(itemLink)

    -- Failed to query stats, wait for next run
    if stats == nil then
        -- print("failed to retrieve stats", itemEquipLoc)
        return
    end

    local totalWeight = 0
    local statWeight, tooltipTextLines

    -- Need itemID for easier code lookups
    local itemID = GetItemInfoInstant(itemLink)

    if session.activeStatWeights and session.activeStatWeights.extraWeight and
        session.activeStatWeights.extraWeight[itemID] then
        totalWeight = session.activeStatWeights.extraWeight[itemID]
    end

    local itemData = {
        itemID = itemID,
        itemLink = itemLink,
        itemSubTypeID = itemSubTypeID,
        itemEquipLoc = itemEquipLoc,
        sellPrice = sellPrice,
        itemMinLevel = itemMinLevel,
        setID = setID
    }

    -- Parse tooltip for all additional stats
    if tooltip then
        tooltipTextLines = GetTooltipLines(tooltip, itemData)

        if not tooltipTextLines then return end
    else -- If not tooltip, set hidden comparison tooltip
        tooltip = GetComparisonTip()

        if not tooltip then
            -- print("Comparisontip failure")
            return
        end

        -- Note: Calling this function with the same link which is currently shown, will close the Tooltip.
        tooltip:SetHyperlink(itemLink)
        -- print("RXPItemUpgradesComparison:SetHyperlink", itemLink)

        tooltipTextLines = GetTooltipLines(tooltip, itemData)

        if not tooltipTextLines then
            -- print("Comparisontip lines empty")
            return
        end

        -- Would bug out if cache is reset or invalidated
        tooltip:ClearLines()
    end

    local match1, match2

    -- Will be more stat weighted keys than tooltip lines
    -- Use larger dataset as parent loop
    for key, regex in pairs(session.statsRegexes) do
        -- Skip if stat already came from API call
        if not stats[key] then

            -- Check all tooltip lines for regex matches
            for _, line in ipairs(tooltipTextLines) do
                -- print("Checking tooltip line", i, line)

                if type(regex) == "table" then
                    for _, r in ipairs(regex) do
                        -- print("Parsing table", i, line, "for", r)
                        match1, match2 = smatch(line, r)

                        -- Only expect one number per line, so ignore if double match
                        if match1 and not match2 then
                            -- print("Extracted multi-match", tonumber(match1), "from", line)
                            -- If no match, try EU , -> . for numbers
                            stats[key] = tonumber(match1) or tonumber((match1:gsub(",", "%.", 1)))
                        end
                    end
                else
                    -- print("Parsing not-table", i, line, "for", regex)
                    match1, match2 = smatch(line, regex)

                    -- Only expect one number per line, so ignore if double match
                    if match1 and not match2 then
                        -- print("Extracted", tonumber(match1), "from", line)
                        -- If no match, try EU , -> . for numbers
                        stats[key] = tonumber(match1) or tonumber((match1:gsub(",", "%.", 1)))
                    end
                end
            end
        end
    end

    -- After parsing API data and tooltip text, add up stat weights
    for key, value in pairs(stats) do
        -- print("Weighting stat", key, "value", value)

        -- Weapon DPS only comes back as a single stat/key
        if key == 'ITEM_MOD_DAMAGE_PER_SECOND_SHORT' then
            -- CalculateDPSWeight requires speed pulled from text

            itemData.dpsWeights = CalculateDPSWeight(itemData, stats)
            -- print("Key", key, "Value", value, "weighted at", statWeight)
            -- If weapon DPS fails to parse, return nil
            if not itemData.dpsWeights then
                -- print("CalculateDPSWeight return nil", itemData.itemLink)
                return
            end
            statWeight = nil

            -- dpsWeights is evaluated later, based on slot comparison wich this level doesn't know about
            -- totalWeight = totalWeight + statWeight
        elseif key == 'ITEM_MOD_SPELL_DAMAGE_DONE' or key == 'ITEM_MOD_SPELL_POWER' then
            -- ITEM_MOD_SPELL_DAMAGE_DONE is terrible, but it's built-in so key off that to parse spell damage
            statWeight = CalculateSpellWeight(stats, tooltipTextLines)
            -- print("Spell: Key", key, "Value", value, "weighted at", statWeight)

            -- If fails to parse, return nil instead of misallocating to all spellpower
            if not statWeight then
                -- print("CalculateSpellWeight return nil", itemData.itemLink)
                return
            end

            totalWeight = totalWeight + statWeight
        elseif session.activeStatWeights[key] then -- Only calculate values explicitly configured

            statWeight = value * session.activeStatWeights[key]
            totalWeight = totalWeight + statWeight

            -- print("General: Key", key, "Value", value, "weighted at", statWeight)
        end
    end

    itemData.totalWeight = addon.Round(totalWeight, 6)
    itemData.stats = stats

    -- TODO validate edge cases or failures before return
    session.itemCache[itemLink] = itemData

    return itemData
end

-- Used for dpsWeights post-processing
local SPEED_SUFFIX_SLOT_MAP = {
    ['2H'] = _G.INVSLOT_MAINHAND,
    ['MH'] = _G.INVSLOT_MAINHAND,
    ['OH'] = _G.INVSLOT_OFFHAND,
    ['RANGED'] = _G.INVSLOT_RANGED
}

function addon.itemUpgrades:CalculateWeaponWeight(itemData, slotComparisonId)
    if not itemData.dpsWeights then
        print("CalculateWeaponWeight, not dpsWeights")
        return -1
    end

    for suffix, dpsData in pairs(itemData.dpsWeights or {}) do
        print("CalculateWeaponWeight, suffix", suffix, "SPEED_SUFFIX_SLOT_MAP[suffix]", SPEED_SUFFIX_SLOT_MAP[suffix],
              "return", itemData.totalWeight + dpsData.totalWeight)

        if slotComparisonId == SPEED_SUFFIX_SLOT_MAP[suffix] then
            return itemData.totalWeight + dpsData.totalWeight
        end
    end

    print("CalculateWeaponWeight, -1")
    return -1
end

-- return ratio, weight, debugMsg
function addon.itemUpgrades:GetEquippedComparisonRatio(equippedItemLink, comparedData, slotComparisonId)
    if not comparedData or not equippedItemLink then return nil, -1, "invalid parameters" end

    -- Load equipped item into hidden tooltip for parsing
    local equippedData = self:GetItemData(equippedItemLink, nil)

    if not equippedData then return nil, -1, "not equippedData" end

    local equippedWeight, comparedWeight

    -- _G.INVSLOT_RANGED, _G.INVSLOT_OFFHAND, _G.INVSLOT_MAINHAND
    -- MH / OH have more complex handling, requires DPS calculations here
    if IsWeaponSlot(equippedData.itemEquipLoc) then
        equippedWeight = self:CalculateWeaponWeight(equippedData, slotComparisonId)
        comparedWeight = self:CalculateWeaponWeight(comparedData, slotComparisonId)
    else
        equippedWeight = equippedData.totalWeight
        comparedWeight = comparedData.totalWeight
    end

    -- If -1, then failed to calculate speed/DPS EP
    if equippedWeight < 0 or comparedWeight < 0 then
        return nil, -1, _G.UNKNOWN
    elseif equippedWeight == 0 then
        return 1.0, comparedWeight, _G.EMPTY
    elseif comparedWeight == 0 then
        return nil, 0, _G.EMPTY
    elseif comparedWeight > equippedWeight then
        return comparedWeight / equippedWeight, comparedWeight - equippedWeight, 'upgrade'
    elseif comparedWeight < equippedWeight then
        -- Item upgrade being negative is confusing and difficult to represent accurately, ignore
        -- return -1 * comparedWeight / equippedWeight
        -- Display 'downgrade' when debugging
        return nil, -1, 'downgrade'
    elseif comparedWeight == equippedWeight then
        return nil, 0, 'equal'
    end

    return nil, -1, _G.UNKNOWN
end

-- nil if same item
-- % change otherwise
function addon.itemUpgrades:CompareItemWeight(itemLink, tooltip)
    local comparedData = self:GetItemData(itemLink, tooltip)

    -- Failed to load (wait for next try) or not equippable
    if not comparedData then
        -- print("CompareItemWeight: Failed to query comparedStats", itemLink)
        return nil, "query failed"
    end

    -- Not an equippable item
    if not comparedData.itemEquipLoc then
        -- print("CompareItemWeight: not comparedData.itemEquipLoc")
        return nil, "not itemEquipLoc"
    end
    -- print("comparedData.itemEquipLoc", comparedData.itemEquipLoc)

    if not IsUsableForClass(comparedData.itemSubTypeID, comparedData.itemEquipLoc) then
        -- print("CompareItemWeight: not usable by class")
        return nil, "unusable"
    end

    local statComparisons = {
        -- { ['Ratio'] = 1.23, ['WeightIncrease'] = 23.4, ['ItemLink'] = 'item:1234', ['itemEquipLoc'] = itemEquipLoc },
    }
    local equippedItemLink, equippedData, ratio, weightIncrease, debug
    local slotNamesToCompare, dpsWeights = {}, nil

    if type(session.equippableSlots[comparedData.itemEquipLoc]) == "table" then
        -- print("is multi-slot", comparedData.itemEquipLoc)
        slotNamesToCompare = session.equippableSlots[comparedData.itemEquipLoc]
    else
        slotNamesToCompare[comparedData.itemEquipLoc] = session.equippableSlots[comparedData.itemEquipLoc]
    end

    -- if 1H weapon, check OH if INVTYPE_WEAPONOFFHAND, add to slot comparisons
    if comparedData.itemEquipLoc == 'INVTYPE_WEAPON' and session.equippableSlots['INVTYPE_WEAPONOFFHAND'] then
        slotNamesToCompare['INVTYPE_WEAPONOFFHAND'] = session.equippableSlots['INVTYPE_WEAPONOFFHAND']
    end

    -- Check applicable slots
    -- Will be 1 for most and 1-2 for rings
    for itemEquipLoc, slotId in pairs(slotNamesToCompare) do
        -- TODO if slotId is table
        -- print("Stack2.2, CompareItemWeight pairs(slotNamesToCompare)", "itemEquipLoc", itemEquipLoc, "slotId", slotId)
        equippedItemLink = GetInventoryItemLink("player", slotId or itemEquipLoc)

        -- No equipped item, so anything is an upgrade from no item
        -- 100% looks wrong for a infinitely better upgrade, return nil
        if not equippedItemLink or equippedItemLink == "" then
            ratio = nil
            debug = _G.EMPTY
            equippedItemLink = _G.EMPTY
            weightIncrease = comparedData.totalWeight
        elseif comparedData.itemLink == equippedItemLink then
            -- Same item, so not an upgrade
            ratio = nil
            debug = 'same'
        else
            ratio, weightIncrease, debug = self:GetEquippedComparisonRatio(equippedItemLink, comparedData, slotId)

            if slotId == _G.INVSLOT_RANGED or slotId == _G.INVSLOT_MAINHAND or slotId == _G.INVSLOT_OFFHAND then
                equippedData = self:GetItemData(equippedItemLink, tooltip)

                dpsWeights = CalculateDPSWeight(equippedData, equippedData.stats)
            else
                dpsWeights = nil
            end
        end

        -- Even if ratio nil, add to comparisons for upstream handling based on debug value
        if ratio or equippedItemLink == _G.EMPTY or equippedItemLink == _G.NONE then
            tinsert(statComparisons, {
                ['Ratio'] = ratio,
                ['DpsWeights'] = dpsWeights,
                ['TotalWeight'] = comparedData.totalWeight,
                ['WeightIncrease'] = weightIncrease or 0,
                ['ItemLink'] = equippedItemLink or _G.UNKNOWN, -- Pass "Unknown" for debugging
                ['itemEquipLoc'] = itemEquipLoc, -- Is actually slotID for rings/trinkets/weapons
                ['debug'] = addon.settings.profile.debug and debug
            })
        end

    end

    return statComparisons
end

function addon.itemUpgrades.Test()
    local itemData
    local testData = {
        ['CLASSIC'] = {
            ['WARRIOR'] = {16886, 7719, 9379, 9479, 12927, 12929, 12963, 18298, 11907, 13052, 20703},
            ['SHAMAN'] = {892, 14136, 16923, 6324, 209671}
        },
        ['CATA'] = {['WARRIOR'] = {11820, 35042, 35916, 63827, 66884, 66933}, ['SHAMAN'] = {14136, 16923, 199329}}
    }

    addon.itemUpgrades.testItems = {}
    for _, itemID in pairs(testData[addon.game][addon.player.class]) do
        print('----- ' .. itemID)
        itemData = addon.itemUpgrades:GetItemData("item:" .. itemID)

        if itemData then addon.itemUpgrades.testItems[itemData.itemID] = itemData end

        if addon.settings.profile.debug and itemData then
            for key, value in pairs(itemData) do print('  ', key, value) end
            print('  stats:')
            for key, value in pairs(itemData.stats) do print('  - ', key, value) end
        end
    end
end

local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems,
                                                                       _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink,
                                                                   _G.GetAuctionItemInfo

local AuctionFilterButtons = {["Weapons"] = 1, ["Armor"] = 2}

local ahSession = {
    isInitialized = false,
    infoItemsReceived = {}, -- takes itemID, not itemLinks

    -- Cannot cache to RXPCData, because comparisons are mutable and embedded in weighting
    scanData = {},

    scanPage = 0,
    scanResults = 0,
    scanType = AuctionFilterButtons["Armor"],

    selectedRow = nil
}

addon.itemUpgrades.AH = addon:NewModule("ItemUpgradesAH", "AceEvent-3.0")

function addon.itemUpgrades.AH:Setup()
    if not addon.settings.profile.enableItemUpgradesAH or addon.game == "CATA" then return end

    if ahSession.isInitialized then return end

    self:RegisterEvent("AUCTION_HOUSE_SHOW")
    self:RegisterEvent("AUCTION_HOUSE_CLOSED")

    self:RegisterEvent("GET_ITEM_INFO_RECEIVED")
    self:RegisterEvent("AUCTION_ITEM_LIST_UPDATE")

    ahSession.isInitialized = true
end

function addon.itemUpgrades.AH:AUCTION_HOUSE_SHOW() self:CreateEmbeddedGui() end

function addon.itemUpgrades.AH:AUCTION_HOUSE_CLOSED()

    -- Reset session
    ahSession.sentQuery = false
    ahSession.scanPage = 0
    ahSession.scanResults = 0
    ahSession.scanType = AuctionFilterButtons["Armor"]
end

-- Fired when GetItemInfo queries the server for an uncached item and the reponse has arrived.
function addon.itemUpgrades.AH:GET_ITEM_INFO_RECEIVED(_, itemID, success)
    if not success then return end

    if ahSession.infoItemsReceived[itemID] then return end

    -- If item queried, it's probably applicable to ItemUpgrades, so build and cache
    -- TODO ensure no infinite loop
    addon.itemUpgrades:GetItemData("item:" .. itemID)
    ahSession.infoItemsReceived[itemID] = true
end

-- Helper function for scanning.xml RXP_IU_AH_BuyButton:OnClick
function addon.itemUpgrades.AH:SearchForSelectedItem() return self:SearchForBuyoutItem(ahSession.selectedRow.nodeData) end

function addon.itemUpgrades.AH:SearchForBuyoutItem(itemData)
    RXPD4 = itemData
    if not itemData.Name then
        print("not itemData.name")
        return
    end

    if not _G.AuctionFrame:IsShown() then
        print("not session.windowOpen")
        return
    end

    -- print("SearchForBuyoutItem", itemData.itemLink)

    if _G.BrowseResetButton then _G.BrowseResetButton:Click() end

    _G.BrowseName:SetText('"' .. itemData.Name .. '"')

    if itemData.ItemLevel then
        _G.BrowseMinLevel:SetText(itemData.ItemLevel)
        _G.BrowseMaxLevel:SetText(itemData.ItemLevel)
    end

    -- Sort to make item very likely on first page
    -- sortTable, sortColumn, oppositeOrder
    _G.AuctionFrame_SetSort("list", "bid", false);
    _G.AuctionFrameTab1:Click()

    -- Pre-populates UI, so let user retry if server overloaded
    if CanSendAuctionQuery() then
        session.sentQuery = true
        _G.AuctionFrameBrowse_Search()
    end

    -- Results get processed async by AUCTION_ITEM_LIST_UPDATE
end

function addon.itemUpgrades.AH:FindItemAuction(itemData, recursive)
    if not itemData then
        -- print("FindItemAuction error: itemData nil")
        return
    end
    if not (itemData.ItemID and itemData.ItemLink and itemData.BuyoutMoney) then return end

    local resultCount, totalAuctions = GetNumAuctionItems("list")

    if resultCount == 0 then
        -- print("FindItemAuction no results, recursive =", recursive)
        return
    end

    -- print("FindItemAuction", itemData.Name, resultCount)
    local itemLink, buyoutPrice, itemID

    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)

        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        _, _, _, _, _, _, _, _, _, buyoutPrice, _, _, _, _, _, _, itemID, _ = GetAuctionItemInfo("list", i)
        -- print("Evaluating", i, itemLink, buyoutPrice)

        if itemID == itemData.ItemID and itemLink == itemData.ItemLink and buyoutPrice == itemData.BuyoutMoney then
            SetSelectedAuctionItem("list", i)
            return i
        end

    end

    -- Rely on BrowseNextPageButton:IsEnabled() for easy pagination handling
    if _G.BrowseNextPageButton:IsEnabled() then
        -- If next button is enabled, and we're down here; then auction not found
        -- Additionally, the next page button is disabled on final page, so no need to track count
        _G.BrowseNextPageButton:Click()
        return self:FindItemAuction(itemData, true)
    else
        -- If next page not enabled, and we're here; then no results at all
        -- print("FindItemAuction no matches in", totalAuctions, "results")
        return nil
    end
end

-- Triggers each time the scroll panel is updated
-- Scrolling, initial population
-- Blizzard's standard auction house view overcomes this problem by reacting to AUCTION_ITEM_LIST_UPDATE and re-querying the items.
function addon.itemUpgrades.AH:AUCTION_ITEM_LIST_UPDATE()
    -- TODO prevent overwriting/blocking full scan
    if ahSession.selectedRow and ahSession.selectedRow.nodeData then
        self:FindItemAuction(ahSession.selectedRow.nodeData)
    end

    if not ahSession.sentQuery then return end

    local resultCount, totalAuctions = GetNumAuctionItems("list")
    -- print("AUCTION_ITEM_LIST_UPDATE", resultCount, totalAuctions)

    ahSession.displayFrame.scanButton:SetText(_G.SEARCHING)

    if resultCount == 0 or totalAuctions == 0 then
        ahSession.sentQuery = false
        ahSession.scanPage = 0 -- TODO show scanPage on UI

        if ahSession.scanType == AuctionFilterButtons["Armor"] then
            ahSession.scanType = AuctionFilterButtons["Weapons"] -- weapons
            self:Scan()
        else
            ahSession.scanType = AuctionFilterButtons["Armor"]
            self:Analyze()
            ahSession.displayFrame.scanButton:SetText(_G.SEARCH)
            self:DisplayEmbeddedResults()
        end

        return
    end

    local itemLink
    local name, texture, level, buyoutPrice, itemID

    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)

        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        name, texture, _, _, _, level, _, _, _, buyoutPrice, _, _, _, _, _, _, itemID, _ = GetAuctionItemInfo("list", i)

        -- TODO if not hasAllInfo
        if ahSession.scanData[itemLink] then
            if buyoutPrice < ahSession.scanData[itemLink].lowestPrice then
                ahSession.scanData[itemLink].lowestPrice = buyoutPrice
            end
        else
            ahSession.scanData[itemLink] = {
                name = name,
                lowestPrice = buyoutPrice,
                itemID = itemID,
                level = level,
                scanType = ahSession.scanType, -- TODO propagate scanType for proper filters
                itemIcon = texture
            }
        end

        -- print("scan", itemLink, itemID, hasAllInfo, buyoutPrice)
    end

    ahSession.sentQuery = false

    ahSession.scanPage = ahSession.scanPage + 1

    ahSession.scanResults = ahSession.scanResults + resultCount

    self:Scan()
end

function addon.itemUpgrades.AH:Scan()
    -- Prevent double calls
    if ahSession.sentQuery then return end
    if not AuctionCategories then return end -- AH frame isn't loaded yet

    -- TODO use better queueing
    -- TODO abort on multiple retries
    if not CanSendAuctionQuery() then
        -- print("addon.itemUpgrades.AH:Scan() - queued", ahSession.scanPage, ahSession.scanType)

        C_Timer.After(0.35, function() self:Scan() end)
        return
    end
    -- print("addon.itemUpgrades.AH:Scan()", ahSession.scanType, ahSession.scanPage)

    -- TODO remove debugging +15
    -- TODO reset usable = true

    local maxLevel = UnitLevel("player") -- + 15

    ahSession.sentQuery = true

    -- text, minLevel, maxLevel, page, usable, rarity, getAll, exactMatch, filterData
    QueryAuctionItems("", maxLevel - 5, maxLevel, ahSession.scanPage, true, Enum.ItemQuality.Uncommon, false, false,
                      AuctionCategories[ahSession.scanType].filters)
end

local function calculate(itemLink, scanData)
    if scanData.lowestPrice <= 0 then return end
    local itemData = addon.itemUpgrades:GetItemData("item:" .. scanData.itemID)

    -- Should only have queried usable items, so not intentionally nil
    if not itemData then
        -- print("itemData nil", itemLink)
        return
    end

    scanData.totalWeight = itemData.totalWeight
    scanData.weightPerCopper = itemData.totalWeight / scanData.lowestPrice
    scanData.itemEquipLoc = itemData.itemEquipLoc
    scanData.ratio = 10.0 -- Empty slot value
    scanData.comparisons = addon.itemUpgrades:CompareItemWeight(itemLink) or {}

    local rwpc
    local highestRWPC, highestRatio, hightestWeightIncrease = -1, 0, 0
    -- TODO account for multi-slot comparisons, show both
    for _, compareData in ipairs(scanData.comparisons) do
        -- To avoid complicated comparison, use ratio as a multiplier
        if compareData.Ratio then
            rwpc = (scanData.totalWeight * compareData.Ratio) / scanData.lowestPrice
        else -- Treat an empty slot as 1:1 upgrade weight
            rwpc = scanData.totalWeight / scanData.lowestPrice
            compareData.Ratio = scanData.totalWeight
        end

        if rwpc > highestRWPC then highestRWPC = rwpc end

        if compareData.Ratio > highestRatio then
            highestRatio = compareData.Ratio

            -- Include flat EP for AH Scanning UI
            if compareData.WeightIncrease then -- Item upgrade
                hightestWeightIncrease = compareData.WeightIncrease
            else -- Empty slot upgrade
                hightestWeightIncrease = scanData.totalWeight
            end
            -- print(itemLink, scanData.totalWeight, hightestWeightIncrease)
        end
    end

    scanData.ratio = highestRatio
    scanData.relativeWeightPerCopper = highestRWPC
    scanData.weightIncrease = hightestWeightIncrease
end

local function analyzeSlotUpgrade(scanData, itemLink, bAS)
    -- Empty slot, so the rest of this won't handle itself
    if not bAS then return end

    if scanData.ratio and scanData.ratio > bAS.best.ratio then
        bAS.best.ratio = scanData.ratio
        bAS.best.itemLink = itemLink
        bAS.best.itemID = scanData.itemID
        bAS.best.itemIcon = scanData.itemIcon
        bAS.best.name = scanData.name
        bAS.best.level = scanData.level
        bAS.best.weightIncrease = scanData.weightIncrease
        bAS.best.totalWeight = scanData.totalWeight

        bAS.best.lowestPrice = ahSession.scanData[itemLink].lowestPrice
    end

    -- Done processing, is empty slot
    if not scanData.relativeWeightPerCopper then return true end

    if scanData.relativeWeightPerCopper > bAS.budget.rwpc then
        bAS.budget.ratio = scanData.ratio
        bAS.budget.rwpc = scanData.relativeWeightPerCopper
        bAS.budget.itemLink = itemLink
        bAS.budget.itemID = scanData.itemID
        bAS.budget.itemIcon = scanData.itemIcon
        bAS.budget.name = scanData.name
        bAS.budget.level = scanData.level
        bAS.budget.weightIncrease = scanData.weightIncrease
        bAS.budget.totalWeight = scanData.totalWeight

        bAS.budget.lowestPrice = ahSession.scanData[itemLink].lowestPrice
    end

    -- Finished processing, not an empty character slot
    return true
end

function addon.itemUpgrades.AH:Analyze()
    ahSession.bestAnalysis = {}

    -- We already know all of this is usable, so just care about slots
    for invEquipType, slotId in pairs(session.equippableSlots) do
        if type(slotId) == "table" then -- ring or trinket slot
            for j, _ in pairs(slotId) do
                ahSession.bestAnalysis[j] = {
                    slotName = _G[invEquipType],
                    best = {ratio = 0, lowestPrice = 0, itemLink = nil}, -- Biggest upgrade ratio
                    budget = {rwpc = 0, lowestPrice = 0, itemLink = nil} -- Biggest upgrade ratio / copper
                }
            end
        elseif IsMeleeSlot(invEquipType) then
            -- TODO re-enable after fixing melee weapon comparison logic, highly complex because of MH+OH vs 2H vs weapon skills
            -- print("Ignoring weapons", slotId, invEquipType)
        else
            ahSession.bestAnalysis[slotId] = {
                slotName = _G[invEquipType],
                best = {ratio = 0, lowestPrice = 0, itemLink = nil}, -- Biggest upgrade ratio
                budget = {rwpc = 0, lowestPrice = 0, itemLink = nil} -- Biggest upgrade ratio / copper
            }
        end

    end

    local bAS, slotId

    local comparisons = {}
    for itemLink, scanData in pairs(ahSession.scanData) do
        calculate(itemLink, scanData)

        slotId = session.equippableSlots[scanData.itemEquipLoc]
        if type(slotId) == "table" then
            comparisons = slotId
        else
            comparisons = {slotId}
        end

        for _, id in ipairs(comparisons) do
            bAS = ahSession.bestAnalysis[id]
            -- print("Analyze", itemLink, "weightPerCopper",
            --      scanData.weightPerCopper, "relativeWPC",
            --      scanData.relativeWeightPerCopper, "ratio", scanData.ratio)
            analyzeSlotUpgrade(scanData, itemLink, bAS)
        end
    end
end

-- TODO get parent frame names instead
local buyoutIncr = 0
-- SmallMoneyFrameTemplate doesn't handle parentKey well in .xml, moved to Lua
local function createBuyoutFrame(buyout, buyoutMoney)
    if not buyout then
        -- print("createBuyoutFrame: error", buyout)
        return
    end

    if buyout.Money then return end

    buyout.Money = CreateFrame("Frame", "$parentMoneyFrame" .. buyoutIncr, buyout, "SmallMoneyFrameTemplate")
    buyoutIncr = buyoutIncr + 1
    buyout.Money:SetPoint("RIGHT", 0, -6)

    buyout.Money.staticMoney = buyoutMoney

    MoneyFrame_SetType(buyout.Money, "AUCTION")
end

local function updateBuyoutFrame(buyout, buyoutMoney)
    buyout.Money.staticMoney = buyoutMoney
    MoneyFrame_Update(buyout.Money, buyoutMoney)

    buyout.Label:SetPoint("RIGHT", buyout.Money, "LEFT")
end

local function setKindIcon(frame, image)
    if not frame or not image then
        -- print("setKindIcon: error", frame, image)
        return
    end

    if frame.KindIcon then return end

    frame.KindIcon = frame:CreateTexture(nil, 'OVERLAY')
    frame.KindIcon:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT")
    frame.KindIcon:SetSize(16, 16)
    frame.KindIcon:SetTexture(image)
end

local function getColorizedName(itemLink, itemName)
    if not (itemLink and itemName) then return end
    local quality = C_Item.GetItemQualityByID(itemLink)
    if quality then
        local h = ITEM_QUALITY_COLORS[quality].hex

        return h .. itemName .. '|r'
    end

    return itemName
end

local function prettyPrintUpgradeColumn(data)
    -- print("data.ratio", data.ratio, "prettyPrintRatio(data.ratio)",
    --      prettyPrintRatio(data.ratio), "addon.Round(data.weightIncrease, 2))",
    --      addon.Round(data.weightIncrease, 2))

    if data.ratio < 0 then return fmt("%s / +%s EP (BIS)", _G.EMPTY, addon.Round(data.weightIncrease, 2)) end

    return fmt("%s / +%s EP (BIS)", prettyPrintRatio(data.ratio), addon.Round(data.weightIncrease, 2))
end

local function prettyPrintBudgetColumn(data)
    local epPerCopper = addon.Round(data.rwpc, 2)

    if epPerCopper == 0 then epPerCopper = addon.Round(data.rwpc, 4) end

    return fmt("%s / %s EP/c (BIS/%s)", prettyPrintRatio(data.ratio), epPerCopper, _G.ICON_TAG_RAID_TARGET_STAR3)
end

function addon.itemUpgrades.AH.RowOnEnter(row)
    if ahSession.selectedRow == row then return end
    row:LockHighlight()
end

function addon.itemUpgrades.AH.RowOnLeave(row)
    if ahSession.selectedRow == row then return end
    row:UnlockHighlight()
end

function addon.itemUpgrades.AH.RowOnClick(this)
    -- print("row:OnClick", this.nodeData.ItemID, this.nodeData.Name, this.nodeData.BuyoutMoney)

    if ahSession.selectedRow == this then
        ahSession.selectedRow = nil
        this:UnlockHighlight()
        _G.RXP_IU_AH_BuyButton:Disable()
    else
        -- Remove previous locked highlight
        if ahSession.selectedRow then ahSession.selectedRow:UnlockHighlight() end
        ahSession.selectedRow = this
        this:LockHighlight()

        if this.nodeData.BuyoutMoney <= GetMoney() then
            _G.RXP_IU_AH_BuyButton:Enable()
        else
            _G.RXP_IU_AH_BuyButton:Disable()
        end
    end
end

local function Initializer(frame, data)
    frame.Header.Name:SetText(data.Name)

    local d = data.best
    if d then
        local f = frame.Best

        f.nodeData = d -- TODO minimize reference
        f.ItemLink = d.ItemLink
        f.ItemID = d.ItemID
        f.Name:SetText(d.ColorizedName)
        f.ItemLevel.Text:SetText(d.ItemLevel)
        f.UpdateEP.Text:SetText(d.UpdateEPText)
        f.ItemIcon:SetNormalTexture(d.ItemIcon)
        setKindIcon(f.ItemIcon, d.ItemKindIcon)

        createBuyoutFrame(f.Buyout, d.BuyoutMoney)
        updateBuyoutFrame(f.Buyout, d.BuyoutMoney)

        f:Show()
    else
        frame.Best:Hide()
    end

    -- Won't be populated if best == budget items
    d = data.budget
    if data.budget then
        local f = frame.Budget

        f.nodeData = d
        f.ItemLink = d.ItemLink
        f.ItemID = d.ItemID
        f.Name:SetText(d.ColorizedName)
        f.ItemLevel.Text:SetText(d.ItemLevel)
        f.UpdateEP.Text:SetText(d.UpdateEPText)
        f.ItemIcon:SetNormalTexture(d.ItemIcon)
        setKindIcon(f.ItemIcon, d.ItemKindIcon)

        createBuyoutFrame(f.Buyout)
        updateBuyoutFrame(f.Buyout, d.BuyoutMoney)

        f:Show()
    else
        frame.Budget:Hide()
    end
end

function addon.itemUpgrades.AH:CreateEmbeddedGui()
    if ahSession.displayFrame then return end

    local attachment = _G.AuctionFrame
    if not attachment then return end

    ahSession.displayFrame = _G["RXP_IU_AH_Frame"]
    if not ahSession.displayFrame then return end

    ahSession.displayFrame:SetParent(attachment)
    ahSession.displayFrame:SetPoint("TOPLEFT", attachment, "TOPLEFT")
    ahSession.displayFrame:SetPoint("BOTTOMRIGHT", attachment, "BOTTOMRIGHT")

    _G.RXP_IU_AH_Title:SetText(fmt("%s - %s", addon.title, _G.MINIMAP_TRACKING_AUCTIONEER))

    local ScrollBar = ahSession.displayFrame.ScrollBox.ScrollBar
    ScrollBar:SetHideIfUnscrollable(false)

    local DataProvider = CreateDataProvider()
    local ScrollView = CreateScrollBoxListLinearView()
    ScrollView:SetDataProvider(DataProvider)
    ScrollView:SetElementExtent(19 + 37 * 2)
    ahSession.displayFrame.DataProvider = DataProvider

    ScrollUtil.InitScrollBoxListWithScrollBar(ahSession.displayFrame.ScrollBox, ScrollBar, ScrollView)

    ScrollView:SetElementInitializer("RXP_IU_AH_ItemBlock", Initializer)

    ScrollView:SetElementExtentCalculator(function(_, itemBlock)
        if itemBlock.best and itemBlock.budget then
            -- Header + two rows
            return 93 -- 19 + 37 * 2
        end

        -- print("SetElementExtentCalculator", itemBlock.Name, "one row")
        -- Header + one row
        return 56 -- 19 + 37
    end)

    ahSession.displayFrame.scanButton = _G.RXP_IU_AH_SearchButton

    ahSession.displayFrame.scanButton:SetScript("OnClick", function()
        ahSession.displayFrame.DataProvider:Flush()
        addon.itemUpgrades.AH:Scan()
    end)

    _G.RXP_IU_AH_BuyButton:Disable()

    -- Create tab button
    local index = attachment.numTabs + 1
    local tabButton = CreateFrame("Button", "AuctionFrameTab" .. index, attachment, "AuctionTabTemplate")
    tabButton.isRXP = true
    tabButton:SetText(addon.name)
    tabButton:SetID(index)

    tabButton:SetPoint("TOPLEFT", "AuctionFrameTab" .. (index - 1), "TOPRIGHT", -8, 0)

    tabButton:HookScript("OnHide", function() ahSession.displayFrame:Hide() end)

    tabButton.Selected = function(this)
        PanelTemplates_SetTab(attachment, this)

        _G.AuctionFrameTopLeft:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-TopLeft")
        _G.AuctionFrameTop:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-Top")
        _G.AuctionFrameTopRight:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-TopRight")
        _G.AuctionFrameBotLeft:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-BotLeft")
        _G.AuctionFrameBot:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Auction-Bot")
        _G.AuctionFrameBotRight:SetTexture("Interface\\AuctionFrame\\UI-AuctionFrame-Bid-BotRight")

        ahSession.displayFrame:Show()

        _G.AuctionFrame.type = "list"
        _G.SetAuctionsTabShowing(false)
        PanelTemplates_SelectTab(this)
    end

    tabButton.Deselected = function(this)
        PanelTemplates_DeselectTab(this)
        ahSession.displayFrame:Hide()
    end

    hooksecurefunc(_G, "AuctionFrameTab_OnClick", function(button, ...)
        if not button.isRXP then
            tabButton:Deselected()
            return
        end

        tabButton:Selected()
    end)

    PanelTemplates_TabResize(tabButton, 0, nil, 36)
    PanelTemplates_SetNumTabs(attachment, index)
    PanelTemplates_EnableTab(attachment, index)
end

StaticPopupDialogs["RXPNoUpgradesFound"] = {
    text = L("No item upgrades found"),
    button1 = _G.OKAY,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1,
    showAlert = 1
}

function addon.itemUpgrades.AH:DisplayEmbeddedResults()
    self:CreateEmbeddedGui()
    if not _G.AuctionFrame:IsShown() then return end

    local blockData
    local n = 0
    for slotId, data in pairs(ahSession.bestAnalysis) do
        if data.budget.itemLink or data.best.itemLink then
            n = n + 1
            -- print("DisplayEmbeddedResults:", data.slotName, "processing upgrades")
            blockData = {['Name'] = data.slotName}

            -- Best upgrade
            if data.best.itemLink then
                -- print("  - DisplayEmbeddedResults best", data.best.itemLink)
                blockData.best = {
                    ItemLink = data.best.itemLink,
                    ItemID = data.best.itemID,
                    ItemKindIcon = "Interface/AddOns/" .. addonName .. "/Textures/rxp_logo-64",
                    Name = data.best.name,
                    ColorizedName = getColorizedName(data.best.itemLink, data.best.name),
                    ItemLevel = data.best.level,
                    UpdateEPText = prettyPrintUpgradeColumn(data.best),
                    TotalWeight = data.best.totalWeight,
                    BuyoutMoney = data.best.lowestPrice,
                    ItemIcon = data.best.itemIcon
                }
            end

            if data.budget.itemLink then
                -- print("  - DisplayEmbeddedResults budget", data.budget.itemLink)
                if data.best.itemLink and data.budget.itemLink and data.best.itemLink ~= data.budget.itemLink then
                    blockData.budget = {
                        ItemLink = data.budget.itemLink,
                        ItemID = data.budget.itemID,
                        ItemKindIcon = 'Interface/GossipFrame/VendorGossipIcon.blp',
                        Name = data.budget.name,
                        ColorizedName = getColorizedName(data.budget.itemLink, data.budget.name),
                        ItemLevel = data.budget.level,
                        UpdateEPText = prettyPrintBudgetColumn(data.budget),
                        TotalWeight = data.budget.totalWeight,
                        BuyoutMoney = data.budget.lowestPrice,
                        ItemIcon = data.budget.itemIcon
                    }
                end

            end

            if blockData.best or blockData.budget then
                -- print("  - DisplayEmbeddedResults inserting", blockData.Name)
                ahSession.displayFrame.DataProvider:Insert(blockData)
            end
        else
            -- print("DisplayEmbeddedResults:", data.slotName, "no upgrades found")
        end
    end
    if n == 0 then _G.StaticPopup_Show("RXPNoUpgradesFound") end
end

-- Update icons to Brandung mockup
-- Add owner to scanData for additional buyout validation
