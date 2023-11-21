local _, addon = ...

if addon.gameVersion > 30000 then return end

local locale = GetLocale()

-- TOOD add frFR and zhTW
if not (locale == "enUS" or locale == "enGB" or locale == "frFR") then return end

local fmt, tinsert, ipairs, pairs, next, type, wipe, tonumber, strlower =
    string.format, table.insert, ipairs, pairs, next, type, wipe, tonumber,
    strlower

local GetItemInfoInstant, GetInventoryItemLink, IsEquippedItem =
    _G.GetItemInfoInstant, _G.GetInventoryItemLink, _G.IsEquippedItem
local GetItemStats = _G.GetItemStats
local UnitLevel = _G.UnitLevel

local ItemArmorSubclass, ItemWeaponSubclass = Enum.ItemArmorSubclass,
                                              Enum.ItemWeaponSubclass

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
            ["INVTYPE_FINGER"] = {
                [_G.INVSLOT_FINGER1] = _G.INVSLOT_FINGER1,
                [_G.INVSLOT_FINGER2] = _G.INVSLOT_FINGER2
            },
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
            ["INVTYPE_WEAPONOFFHAND"] = function()
                return UnitLevel("player") >= 20 and _G.INVSLOT_OFFHAND or nil
            end
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

-- Keys only obtained from tooltip text parsing
-- Explicitly set regex
local OUT_OF_BAND_KEYS = {
    ['ITEM_MOD_CR_SPEED_SHORT'] = _G.ITEM_MOD_CR_SPEED_SHORT .. "%s+(%d+%.%d+)",
    ['ITEM_MOD_CRIT_RATING_SHORT'] = "%s+Improves your chance to get a critical strike by (%d+)%%.",
    ['ITEM_MOD_HIT_RATING_SHORT'] = "%s+Improves your chance to hit by (%d+)%%.",
    ['ITEM_MOD_DODGE_RATING_SHORT'] = "%s+Increases your chance to dodge an attack by (%d+)%%.",
    ['ITEM_MOD_PARRY_RATING_SHORT'] = "%s+Increases your chance to parry an attack by (%d+)%%.",
    ['ITEM_MOD_ATTACK_POWER_SHORT'] = "%s+%+(%d+)%s+" ..
        ITEM_MOD_ATTACK_POWER_SHORT,

    -- Stats cannot be trusted, explicitly parse
    -- Overrides ITEM_MOD_SPELL_DAMAGE_DONE built-in
    ['STAT_SPELLDAMAGE'] = {
        _G.ITEM_MOD_SPELL_POWER, _G.ITEM_MOD_SPELL_DAMAGE_DONE
    }
}

local WEAPON_SLOT_MAP = {
    ['2H'] = {['Slot'] = {["INVTYPE_2HWEAPON"] = _G.INVSLOT_MAINHAND}},
    ['MH'] = {
        ['Slot'] = {
            ["INVTYPE_WEAPON"] = _G.INVSLOT_MAINHAND,
            ["INVTYPE_WEAPONMAINHAND"] = _G.INVSLOT_MAINHAND
        }
    },
    ['OH'] = {
        ['Slot'] = {
            ["INVTYPE_WEAPON"] = _G.INVSLOT_OFFHAND,
            ["INVTYPE_WEAPONOFFHAND"] = _G.INVSLOT_OFFHAND
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

-- Turn GSheet suffix
local SPELL_KIND_MAP = {
    -- SPELL_SCHOOL1_NAME = "STAT_SPELLDAMAGE_HOLY",
    [SPELL_SCHOOL2_NAME] = "STAT_SPELLDAMAGE_FIRE",
    [SPELL_SCHOOL3_NAME] = "STAT_SPELLDAMAGE_NATURE",
    [SPELL_SCHOOL4_NAME] = "STAT_SPELLDAMAGE_FROST",
    [SPELL_SCHOOL5_NAME] = "STAT_SPELLDAMAGE_SHADOW",
    [SPELL_SCHOOL6_NAME] = "STAT_SPELLDAMAGE_ARCANE"
}

-- TODO locale
local SPELL_KIND_MATCH =
    "Increases damage done by (%a+) spells and effects by up to (%d+)."

if locale == 'frFR' then
    SPELL_KIND_MATCH =
        "Augmente les dégâts infligés par les sorts et effets d?e?'? ?(%a+) de (%d+) au maximum."

    -- Comma decimal delimiter
    OUT_OF_BAND_KEYS['ITEM_MOD_CR_SPEED_SHORT'] =
        _G.ITEM_MOD_CR_SPEED_SHORT .. "%s+(%d+,%d+)"

    OUT_OF_BAND_KEYS['ITEM_MOD_CRIT_RATING_SHORT'] =
        "%s+Augmente vos chances d'infliger un coup critique de (%d+)%%."
    OUT_OF_BAND_KEYS['ITEM_MOD_HIT_RATING_SHORT'] =
        "%s+Augmente vos chances de toucher de (%d+)%%."
    OUT_OF_BAND_KEYS['ITEM_MOD_DODGE_RATING_SHORT'] =
        "%s+Augmente vos chances d'esquiver une attaque de (%d+)%%."
    OUT_OF_BAND_KEYS['ITEM_MOD_PARRY_RATING_SHORT'] =
        "%s+Augmente vos chances de parer une attaque de (%d+)%%."
end

-- Setup reverse lookup in session.weaponSlotToWeightKey
for weaponKey, d in pairs(WEAPON_SLOT_MAP) do
    if not d.Slot then
        addon.error("Incomplete WEAPON_SLOT_MAP slot data for", weaponKey)
        return
    end

    for itemEquipLoc, _ in pairs(d.Slot) do
        if not session.weaponSlotToWeightKey[itemEquipLoc] then
            session.weaponSlotToWeightKey[itemEquipLoc] = {}
        end

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

local function TooltipSetItem(tooltip, ...)
    if not addon.settings.profile.enableItemUpgrades or
        not addon.settings.profile.enableTips then return end

    local _, itemLink = tooltip:GetItem()
    if not itemLink then return end
    -- print("TooltipSetItem", tooltip:GetName(), itemLink)

    -- Exclude addon text when looking at an equipped item
    if IsEquippedItem(itemLink) then return end

    local comparisons = addon.itemUpgrades:CompareItemWeight(itemLink, tooltip)

    if not comparisons or next(comparisons) == nil then return end

    tooltip:AddLine(fmt("%s - %s", addon.title, _G.ITEM_UPGRADE))

    local ratioText
    for _, data in ipairs(comparisons) do
        -- Remove base 100 from percentage
        -- A 140% upgrade ratio is only a 40% upgrade
        if data['debug'] or not data['Ratio'] then
            ratioText = "(debug) " .. data['debug'] or _G.SPELL_FAILED_ERROR
        elseif data['Ratio'] == 1 then
            ratioText = '100%'
        elseif data['Ratio'] > 0 then
            ratioText = ((data['Ratio'] * 100) - 100) .. '%'
        elseif data['Ratio'] == 0 then
            ratioText = '0%'
        else -- < 0
            ratioText = (data['Ratio'] * 100) .. '%'
        end

        if data.itemEquipLoc and data.itemEquipLoc == 'INVTYPE_WEAPONOFFHAND' then
            tooltip:AddLine(fmt("  %s: %s (%s)", data['ItemLink'] or _G.UNKNOWN,
                                ratioText, _G.INVTYPE_WEAPONOFFHAND))
        else
            tooltip:AddLine(fmt("  %s: %s", data['ItemLink'] or _G.UNKNOWN,
                                ratioText))
        end
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
    if not addon.settings.profile.enableItemUpgrades or
        not addon.settings.profile.enableTips then return end

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
    for key, regex in pairs(OUT_OF_BAND_KEYS) do
        session.statsRegexes[key] = regex
    end

    -- Inventory
    GameTooltip:HookScript("OnTooltipSetItem", TooltipSetItem)

    -- Vendor?
    ItemRefTooltip:HookScript("OnTooltipSetItem", TooltipSetItem)

    -- Enable AH
    ShoppingTooltip1:HookScript("OnTooltipSetItem", TooltipSetItem)
    -- ShoppingTooltip2:HookScript("OnTooltipSetItem", TooltipSetItem)

    session.isInitialized = true
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

    local guideMode = addon.settings.profile.hardcore and "HARDCORE" or
                          "SPEEDRUN"

    for _, data in pairs(addon.statWeights) do
        if strupper(data.Class) == addon.player.class and strupper(data.Kind) ==
            guideMode then
            newWeights[data.Spec or data.Class] = data
            -- print("Loaded statWeights", data.Title)
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
    end

    session.specWeights = newWeights

    return session.specWeights ~= nil
end

-- Always run after LoadStatWeights
function addon.itemUpgrades:ActivateSpecWeights()
    if not session.specWeights then return end

    -- TODO check active talent guide
    -- TODO check talent count per tab
    local spec = addon.settings.profile.itemUpgradeSpec or
                     addon.player.localeClass

    -- If only multi-spec (Enhancement / Elemental) arbitrarily pick the first one
    if not session.specWeights[spec] then
        spec = next(session.specWeights)

        addon.settings.profile.itemUpgradeSpec = spec
    end

    session.activeStatWeights = session.specWeights[spec]

    return session.activeStatWeights ~= nil
end

function addon.itemUpgrades:GetSpecWeights()
    local options = {}
    for k, _ in pairs(session.specWeights) do options[k] = k end

    return options
end

local function GetTooltipLines(tooltip)
    local textLines = {}
    -- print("GetTooltipLines, tooltip", tooltip:GetName(), tooltip:NumLines())

    -- Something went wrong
    if tooltip:NumLines() == 0 then return end

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
            addon.comms.PrettyPrint(
                "itemUpgrades CalculateDPSWeight, Speed property required %s",
                itemData and itemData['itemLink'])
        end
        return nil
    end

    local dpsWeights = {}
    local itemEquipLoc = itemData.itemEquipLoc
    local speedWeightKey, overallWeaponWeight, dpsWeight, speedKindWeight

    -- Look through weaponSlotToWeightKey for all kinds associated with itemEquipLoc
    -- - which then gives the WEAPON_SLOT_MAP key for weight lookup
    -- weaponSlotToWeightKey['INVTYPE_WEAPON'] = { "MH", "OH" }
    for _, keySuffix in
        ipairs(session.weaponSlotToWeightKey[itemEquipLoc] or {}) do

        -- Lookup speed weight key with kind suffix (MH, OH, RANGED, 2H)
        speedWeightKey = 'ITEM_MOD_CR_SPEED_SHORT_' .. keySuffix

        -- Check weaponKind keys for class statWeights
        if session.activeStatWeights[speedWeightKey] then

            if itemEquipLoc == 'INVTYPE_RANGED' or itemEquipLoc ==
                'INVTYPE_THROWN' or itemEquipLoc == 'INVTYPE_RANGEDRIGHT' then

                dpsWeight = stats['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] *
                                session.activeStatWeights['ITEM_MOD_DAMAGE_PER_SECOND_SHORT_RANGED']
            else
                dpsWeight = stats['ITEM_MOD_DAMAGE_PER_SECOND_SHORT'] *
                                session.activeStatWeights['ITEM_MOD_DAMAGE_PER_SECOND_SHORT']
            end

            speedKindWeight = stats['ITEM_MOD_CR_SPEED_SHORT'] *
                                  session.activeStatWeights[speedWeightKey]

            -- (DPS * 1_DPS_WEIGHT) + (SPEED * WEAPON_WEIGHT)
            overallWeaponWeight = dpsWeight + speedKindWeight

            dpsWeights[keySuffix] = {
                ['overallWeight'] = overallWeaponWeight,
                ['scaleWeight'] = session.activeStatWeights[speedWeightKey]
            }
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

    local schoolStatWeight, totalStatWeight = 0, 0
    local schoolKey, schoolName, spellPower

    -- Check all tooltip lines for regex matches
    for _, line in ipairs(tooltipTextLines) do
        -- print("CalculateSpellWeight (", line, ")")
        schoolName, spellPower = string.match(line, SPELL_KIND_MATCH)

        if schoolName then
            schoolKey = SPELL_KIND_MAP[strlower(schoolName)]

            -- print("Matched schoolName", strlower(schoolName), schoolKey, spellPower)
            if session.activeStatWeights[schoolKey] and
                session.activeStatWeights[schoolKey] > 0 then

                -- ITEM_MOD_SPELL_DAMAGE_DONE cannot be trusted, byRef add parsed stats
                stats[schoolKey] = spellPower
                schoolStatWeight = spellPower *
                                       session.activeStatWeights[schoolKey]

                totalStatWeight = totalStatWeight + schoolStatWeight
            end
        end
    end

    -- Not a magic school, return default weighting
    -- TODO also include base spellpower
    -- Base spellpower CANNOT BE TRUSTED, 40 Shadow + 40 Frost == 78 ITEM_MOD_SPELL_DAMAGE_DONE
    if totalStatWeight == 0 and stats['STAT_SPELLDAMAGE'] then
        --  print("Not a magic school")
        -- ITEM_MOD_SPELL_DAMAGE_DONE cannot be trusted without validation
        -- Set spellPower stat to built-in stat after verifying no school
        stats['STAT_SPELLDAMAGE'] = stats['ITEM_MOD_SPELL_DAMAGE_DONE'] + 1

        return stats['STAT_SPELLDAMAGE'] *
                   session.activeStatWeights['STAT_SPELLDAMAGE']
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

    local _, _, _, _, itemMinLevel, _, _, _, itemEquipLoc, _, sellPrice, _,
          itemSubTypeID = GetItemInfo(itemLink)

    -- Not an equippable item
    if not itemEquipLoc or itemEquipLoc == "" or itemEquipLoc == "INVTYPE_AMMO" or
        itemEquipLoc == "INVTYPE_BAG" then return end

    -- Parse API stats first before processing tooltip text
    local stats = GetItemStats(itemLink)

    -- Failed to query stats, wait for next run
    if stats == nil then
        -- print("failed to retrieve stats", itemEquipLoc)
        return
    end

    local itemData = {
        itemLink = itemLink,
        itemSubTypeID = itemSubTypeID,
        itemEquipLoc = itemEquipLoc,
        sellPrice = sellPrice,
        itemMinLevel = itemMinLevel
    }

    local totalWeight = 0
    local statWeight, tooltipTextLines

    -- Parse tooltip for all additional stats
    if tooltip then
        tooltipTextLines = GetTooltipLines(tooltip)
    else -- If not tooltip, set hidden comparison tooltip
        tooltip = GetComparisonTip()

        if not tooltip then
            -- print("Comparisontip failure")
            return
        end

        -- Note: Calling this function with the same link which is currently shown, will close the Tooltip.
        tooltip:SetHyperlink(itemLink)
        -- print("RXPItemUpgradesComparison:SetHyperlink", itemLink)

        tooltipTextLines = GetTooltipLines(tooltip)

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
                        match1, match2 = string.match(line, r)

                        -- Only expect one number per line, so ignore if double match
                        if match1 and not match2 then
                            -- print("Extracted multi-match", tonumber(match1), "from", line)
                            -- If no match, try EU , -> . for numbers
                            stats[key] = tonumber(match1) or
                                             tonumber(
                                                 (match1:gsub(",", "%.", 1)))
                        end
                    end
                else
                    -- print("Parsing not-table", i, line, "for", regex)
                    match1, match2 = string.match(line, regex)

                    -- Only expect one number per line, so ignore if double match
                    if match1 and not match2 then
                        -- print("Extracted", tonumber(match1), "from", line)
                        -- If no match, try EU , -> . for numbers
                        stats[key] = tonumber(match1) or
                                         tonumber((match1:gsub(",", "%.", 1)))
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
        elseif key == 'ITEM_MOD_SPELL_DAMAGE_DONE' then
            -- ITEM_MOD_SPELL_DAMAGE_DONE is terrible, but it's built-in so key off that to parse spell damage
            statWeight = CalculateSpellWeight(stats, tooltipTextLines)
            -- print("Key", key, "Value", value, "weighted at", statWeight)

            -- If fails to parse, return nil instead of misallocating to all spellpower
            if not statWeight then
                -- print("CalculateSpellWeight return nil", itemData.itemLink)
                return
            end

            totalWeight = totalWeight + statWeight
        elseif session.activeStatWeights[key] then -- Only calculate values explicitly configured

            statWeight = value * session.activeStatWeights[key]
            totalWeight = totalWeight + statWeight

            -- print("Key", key, "Value", value, "weighted at", statWeight)
        end
    end

    itemData.totalWeight = addon.Round(totalWeight, 2)
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

-- Moved to make nested loops less egregious without break/continue
-- return ratio, debugMsg
function addon.itemUpgrades:GetEquippedComparisonRatio(equippedItemLink,
                                                       comparedData,
                                                       slotComparisonId)
    if not comparedData or not equippedItemLink then
        -- print("GetEquippedComparisonRatio: not comparedData or not equippedItemLink ")
        return nil, "invalid parameters"
    end

    -- Load equipped item into hidden tooltip for parsing
    local equippedData = self:GetItemData(equippedItemLink, nil)

    if not equippedData then
        -- print("GetEquippedComparisonRatio: not equippedData")
        return nil, "not equippedData"
    end

    local equippedWeight = equippedData.totalWeight
    local comparedWeight = comparedData.totalWeight
    -- _G.INVSLOT_RANGED, _G.INVSLOT_OFFHAND, _G.INVSLOT_MAINHAND
    -- MH / OH have more complex handling, requires DPS calculations here

    for suffix, data in pairs(equippedData.dpsWeights or {}) do
        if slotComparisonId == SPEED_SUFFIX_SLOT_MAP[suffix] then
            equippedWeight = equippedWeight + data.overallWeight
        end
    end

    for suffix, data in pairs(comparedData.dpsWeights or {}) do
        if slotComparisonId == SPEED_SUFFIX_SLOT_MAP[suffix] then
            comparedWeight = comparedWeight + data.overallWeight
        end
    end

    if equippedWeight == 0 or comparedWeight == 0 then
        -- Prevent division by 0
        -- One of these has no stats, so treat same as empty slot (nil)
        return nil, _G.NONE
    elseif comparedWeight > equippedWeight then
        return addon.Round(comparedWeight / equippedWeight, 2)
    elseif comparedWeight < equippedWeight then
        -- Item upgrade being negative is confusing and difficult to represent accurately, ignore
        -- return -1 * addon.Round(comparedWeight / equippedWeight, 2)
        -- Display 'downgrade' when debugging
        return nil, 'downgrade'
    elseif comparedWeight == equippedWeight then
        return 0, 'equal'
    end

    -- print("GetEquippedComparisonRatio nil")
    return nil, _G.UNKNOWN
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

    if not IsUsableForClass(comparedData.itemSubTypeID,
                            comparedData.itemEquipLoc) then
        -- print("CompareItemWeight: not usable by class")
        return nil, "unusable"
    end

    local slotsToCompare = {}

    if type(session.equippableSlots[comparedData.itemEquipLoc]) == "table" then
        -- print("is multi-slot", comparedData.itemEquipLoc)
        slotsToCompare = session.equippableSlots[comparedData.itemEquipLoc]
    else
        slotsToCompare[comparedData.itemEquipLoc] =
            session.equippableSlots[comparedData.itemEquipLoc]
    end

    -- if 1H weapon, check OH if INVTYPE_WEAPONOFFHAND, add to slot comparisons
    if comparedData.itemEquipLoc == 'INVTYPE_WEAPON' and
        session.equippableSlots['INVTYPE_WEAPONOFFHAND'] then
        slotsToCompare['INVTYPE_WEAPONOFFHAND'] =
            session.equippableSlots['INVTYPE_WEAPONOFFHAND']
    end

    local comparisons = {
        -- { ['Ratio'] = 1.23, ['ItemLink'] = 'item:1234', ['itemEquipLoc'] = itemEquipLoc },
    }
    local equippedItemLink, ratio, debug

    -- Check applicable slots
    -- Will be 1 for most, 1-2 for weapons, 1-2 for rings
    for itemEquipLoc, slotId in pairs(slotsToCompare) do
        equippedItemLink = GetInventoryItemLink("player", slotId)

        -- No equipped item, so anything is an upgrade from no item
        -- 100% looks wrong for a infinitely better upgrade, return nil
        if not equippedItemLink or equippedItemLink == "" then
            ratio = nil
            debug = _G.EMPTY
        elseif comparedData.itemLink == equippedItemLink then
            -- Same item, so not an upgrade
            ratio = nil
            debug = 'same'
        else
            ratio, debug = self:GetEquippedComparisonRatio(equippedItemLink,
                                                           comparedData, slotId)
        end

        if ratio or addon.settings.profile.debug then
            tinsert(comparisons, {
                ['Ratio'] = ratio,
                ['ItemLink'] = equippedItemLink or _G.UNKNOWN, -- Pass "Unknown" for debugging
                ['itemEquipLoc'] = itemEquipLoc, -- Is actually slotID for rings/trinkets
                ['debug'] = debug
            })
        end

    end

    return comparisons
end

function addon.itemUpgrades.Test()
    local itemData
    local testData = {
        14136, 16886, 2816, 7719, 9379, 9479, 12927, 12929, 12963, 18298, 11907,
        13052, 20703
    }
    for _, itemID in pairs(testData) do
        print('----- ' .. itemID)
        itemData = addon.itemUpgrades:GetItemData("item:" .. itemID)
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
