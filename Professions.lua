local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globals
local _G = _G
local len, fmt, lower = string.len, string.format, string.lower
local tcount, tinsert, twipe, tsort = table.count, table.insert, table.wipe, table.sort
local pairs, ipars, next, type, tostring, tonumber = pairs, ipairs, next, type, tostring, tonumber
local max, abs, floor, ceil, huge = math.max, math.abs, math.floor, math.ceil, math.huge
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo
local GetNumPrimaryProfessions, GetProfessionInfo, GetSpellTabInfo = _G.GetNumPrimaryProfessions, _G.GetProfessionInfo, _G.GetSpellTabInfo --GetProfessions is not used in classics
local GetNumSkillLines, GetSkillLineInfo = _G.GetNumSkillLines, _G.GetSkillLineInfo
local GetItemNameByID = _G.C_Item.GetItemNameByID
local GetMoney = _G.GetMoney

addon.professions = addon:NewModule("ProfessionsGuide", "AceEvent-3.0") --TODO: maybe change thne name

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

    "CHAT_MSG_LOOT",
    "CHAT_MSG_SKILL",

    "PLAYER_MONEY",
}

local session = {
    isInitialized = false,
}

--local helper functions

--Formats money to xg ys zc
local function formatMoney(money)
    if money > 10000 then
        return fmt("%dg %ds %dc", money / 10000, (money % 10000) / 100, money % 100)
    elseif money > 100 then
        return fmt("%ds %dc", money / 100, money % 100)
    end
    return fmt("%dc", money)
end

--Serializes RXPCData.professions to string for debugging purposes
local function serializeProfessions()
    if next(RXPCData.professions.profession1) and next(RXPCData.professions.profession2) then
        return fmt("%s: %d/%d\n%s: %d/%d",
                    RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel, RXPCData.professions.profession1.skillMaxLevel,
                    RXPCData.professions.profession2.name, RXPCData.professions.profession2.skillLevel, RXPCData.professions.profession2.skillMaxLevel)
    elseif next(RXPCData.professions.profession1) then
        return fmt("%s: %d/%d", RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel, RXPCData.professions.profession1.skillMaxLevel)
    elseif next(RXPCData.professions.profession2) then
        return fmt("%s: %d/%d", RXPCData.professions.profession2.name, RXPCData.professions.profession2.skillLevel, RXPCData.professions.profession2.skillMaxLevel)
    end
    return ""
end

--Serializes RXPCData.craftedItems to string for debugging purposes
local function serializeCraftedItems()
    local str = "crafted items = {\n"
    for itemName, itemCount in pairs(RXPCData.craftedItems) do
        str = str .. itemName .. ": " .. tostring(itemCount) .. "\n"
    end
    str = str .. "}"
    return str
end

--Sorts an associative array by value.
--Assumes the value has "<" operator implementation
local function sortAssociativeArrayByValue(map)
    local sorted = {}
    for k, v in pairs(map) do
        sorted[#sorted+1] = {k, v}
    end
    tsort(sorted, function (a, b)
        return a[2] < b[2]
    end)
    return sorted
end

--local enums
local EVENTS_TO_REGISTER_AH = {
    "AUCTION_HOUSE_SHOW",
    "AUCTION_HOUSE_CLOSED",
    "AUCTION_HOUSE_DISABLED",
    "GET_ITEM_INFO_RECEIVED",
    "AUCTION_ITEM_LIST_UPDATE",
}

--TODO: Maybe change to IDs
local PROFESSION_NAMES = {
    --ENGLISH
    ["Alchemy"] = true,
    ["Blacksmithing"] = true,
    ["Enchanting"] = true,
    ["Engineering"] = true,
    ["Herbalism"] = true,
    ["Leatherworking"] = true,
    ["Mining"] = true,
    ["Skinning"] = true,
    ["Tailoring"] = true,
    --GERMAN
    ["Alchemie"] = true,
    ["Schmiedekunst"] = true,
    ["Verzauberkunst"] = true,
    ["Ingenieurskunst"] = true,
    ["Kräuterkunde"] = true,
    ["Lederverarbeitung"] = true,
    ["Bergbau"] = true,
    ["Kürschnerei"] = true,
    ["Schneiderei"] = true,
    --ES
    ["Alquimia"] = true,
    ["Herrería"] = true,
    ["Encantamiento"] = true,
    ["Ingeniería"] = true,
    ["Botánica"] = true,
    ["Marroquinería"] = true,
    ["Minería"] = true,
    ["Desollar"] = true,
    ["Costura"] = true,
    --AL
    ["Alquimia"] = true,
    ["Herrería"] = true,
    ["Encantamiento"] = true,
    ["Ingeniería"] = true,
    ["Herboristería"] = true,
    ["Peletería"] = true,
    ["Minería"] = true,
    ["Desuello"] = true,
    ["Sastrería"] = true,
    --PT
    ["Alquimia"] = true,
    ["Ferraria"] = true,
    ["Encantamento"] = true,
    ["Engenharia"] = true,
    ["Herborismo"] = true,
    ["Couraria"] = true,
    ["Mineração"] = true,
    ["Esfolamento"] = true,
    ["Alfaiataria"] = true,
    --FR
    ["Alchimie"] = true,
    ["Forge"] = true,
    ["Enchantement"] = true,
    ["Ingénierie"] = true,
    ["Herboristerie"] = true,
    ["Travail du cuir"] = true,
    ["Minage"] = true,
    ["Dépeçage"] = true,
    ["Couture"] = true,
    --RU
    ["Алхимия"] = true,
    ["Кузнечное дело"] = true,
    ["Наложение чар"] = true,
    ["Инженерное дело"] = true,
    ["Травничество"] = true,
    ["Кожевничество"] = true,
    ["Горное дело"] = true,
    ["Снятие шкур"] = true,
    ["Портняжное дело"] = true,
    --KO
    ["연금술"] = true,
    ["대장기술"] = true,
    ["마법부여"] = true,
    ["기계공학"] = true,
    ["약초 채집"] = true,
    ["가죽 세공"] = true,
    ["채광"] = true,
    ["무두질"] = true,
    ["재봉술"] = true,
    --CN
    ["炼金术"] = true,
    ["锻造"] = true,
    ["附魔"] = true,
    ["工程学"] = true,
    ["草药学"] = true,
    ["制皮"] = true,
    ["采矿"] = true,
    ["剥皮"] = true,
    ["裁缝"] = true,
    --TW
    ["煉金術"] = true,
    ["鍛造"] = true,
    ["附魔"] = true,
    ["工程學"] = true,
    ["草藥學"] = true,
    ["製皮"] = true,
    ["採礦"] = true,
    ["剝皮"] = true,
    ["裁縫"] = true,
}


local PROFESSIONS = {
    VENDOR_ITEMS = {
        ["Empty Vial"] = 0.20,
        ["Leaded Vial"] = 2.00,
        ["Crystal Vial"] = 25.00,
        ["Imbued Vial"] = 40.00,
        ["Coarse Thread"] =	0.10,
        ["Fine Thread"] = 1.00,
        ["Silken Thread"] =	5.00,
        ["Heavy Silken Thread"] = 20.00,
        ["Rune Thread"] = 50.00,
        ["Weak Flux"] =	1.00,
        ["Strong Flux"] = 20.00,
        ["Salt"] = 0.50,
        ["Simple Wood"] = 0.38,
        ["Star Wood"] =	45.00,
        ["Soothing Spices"] = 1.60,
        ["Mild Spices"] = 0.10,
        ["Hot Spices"] = 0.40,
        ["Bleach"] = 0.26,
        ["Green Dye"] =	1.12,
    },
    ["blacksmithing"] = {
        RECIPES = {
            ["Arcanite Skeleton Key"] = {
                trainable = true,
                orange = 275,
                yellow = 280,
                grey = 285,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 12.5,
                materials = {
                    ["Arcanite Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dense Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Iron Boots"] = {
                trainable = false,
                orange = 180,
                yellow = 205,
                grey = 230,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 37,
                materials = {
                    ["Iron Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Large Fang"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Iron Gloves"] = {
                trainable = false,
                orange = 185,
                yellow = 210,
                grey = 235,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 27.11,
                materials = {
                    ["Iron Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Large Fang"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Iron Helm"] = {
                trainable = false,
                orange = 175,
                yellow = 200,
                grey = 225,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 33.37,
                materials = {
                    ["Iron Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Large Fang"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Sharp Claw"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Iron Shoulders"] = {
                trainable = false,
                orange = 160,
                yellow = 185,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 25,
                materials = {
                    ["Iron Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Sharp Claw"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Big Black Mace"] = {
                trainable = true,
                orange = 230,
                yellow = 255,
                grey = 280,
                trainingCost = 150,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 172.91,
                materials = {
                    ["Mithril Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Big Bronze Knife"] = {
                trainable = true,
                orange = 105,
                yellow = 135,
                grey = 165,
                trainingCost = 6,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 14.26,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Blazing Rapier"] = {
                trainable = false,
                orange = 280,
                yellow = 305,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 386.48,
                materials = {
                    ["Enchanted Thorium Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Azerothian Diamond"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dense Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Blight"] = {
                trainable = true,
                orange = 250,
                yellow = 275,
                grey = 300,
                trainingCost = 135,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 338.57,
                materials = {
                    ["Mithril Bar"] = {
                        count = 28,
                        fromVendor = false,
                    },
                    ["Ichor of Undeath"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Blue Glittering Axe"] = {
                trainable = false,
                orange = 220,
                yellow = 245,
                grey = 270,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 146.59,
                materials = {
                    ["Mithril Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Axe"] = {
                trainable = true,
                orange = 115,
                yellow = 145,
                grey = 175,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 12.69,
                materials = {
                    ["Bronze Bar"] = {
                        count = 7,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Battle Axe"] = {
                trainable = true,
                orange = 135,
                yellow = 165,
                grey = 195,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 24.35,
                materials = {
                    ["Bronze Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Greatsword"] = {
                trainable = true,
                orange = 130,
                yellow = 160,
                grey = 190,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 22.05,
                materials = {
                    ["Bronze Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Mace"] = {
                trainable = true,
                orange = 110,
                yellow = 140,
                grey = 170,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 11.19,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Shortsword"] = {
                trainable = true,
                orange = 120,
                yellow = 150,
                grey = 180,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 14.39,
                materials = {
                    ["Bronze Bar"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Warhammer"] = {
                trainable = true,
                orange = 125,
                yellow = 155,
                grey = 185,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 19.44,
                materials = {
                    ["Bronze Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Coarse Grinding Stone"] = {
                trainable = true,
                orange = 75,
                yellow = 75,
                grey = 100,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.1,
                materials = {
                    ["Coarse Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Coarse Sharpening Stone"] = {
                trainable = true,
                orange = 65,
                yellow = 65,
                grey = 80,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.1,
                materials = {
                    ["Coarse Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Axe"] = {
                trainable = true,
                orange = 20,
                yellow = 60,
                grey = 100,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.09,
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Battle Axe"] = {
                trainable = true,
                orange = 35,
                yellow = 75,
                grey = 115,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 6.13,
                materials = {
                    ["Copper Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Malachite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 20,
                grey = 60,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.17,
                materials = {
                    ["Copper Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Chain Belt"] = {
                trainable = true,
                orange = 35,
                yellow = 75,
                grey = 115,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.56,
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Chain Boots"] = {
                trainable = true,
                orange = 20,
                yellow = 60,
                grey = 100,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.49,
                materials = {
                    ["Copper Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Chain Pants"] = {
                trainable = true,
                orange = 1,
                yellow = 50,
                grey = 90,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.67,
                materials = {
                    ["Copper Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Chain Vest"] = {
                trainable = false,
                orange = 35,
                yellow = 75,
                grey = 115,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.42,
                materials = {
                    ["Copper Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Claymore"] = {
                trainable = true,
                orange = 30,
                yellow = 70,
                grey = 110,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.41,
                materials = {
                    ["Copper Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Dagger"] = {
                trainable = true,
                orange = 30,
                yellow = 70,
                grey = 110,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.94,
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Mace"] = {
                trainable = true,
                orange = 15,
                yellow = 55,
                grey = 95,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.06,
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Shortsword"] = {
                trainable = true,
                orange = 25,
                yellow = 65,
                grey = 105,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.1,
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Mail"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 192.55,
                materials = {
                    ["Dark Iron Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Plate"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 194.28,
                materials = {
                    ["Dark Iron Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Pulverizer"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 457.6,
                materials = {
                    ["Dark Iron Bar"] = {
                        count = 18,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Shoulders"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 107.76,
                materials = {
                    ["Dark Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Sunderer"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 512.25,
                materials = {
                    ["Dark Iron Bar"] = {
                        count = 26,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Dazzling Mithril Rapier"] = {
                trainable = false,
                orange = 240,
                yellow = 265,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 200.92,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Deadly Bronze Poniard"] = {
                trainable = false,
                orange = 125,
                yellow = 155,
                grey = 185,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 27.31,
                materials = {
                    ["Bronze Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Swiftness Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dense Grinding Stone"] = {
                trainable = true,
                orange = 250,
                yellow = 255,
                grey = 260,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2,
                materials = {
                    ["Dense Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Dense Sharpening Stone"] = {
                trainable = true,
                orange = 250,
                yellow = 255,
                grey = 260,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.75,
                materials = {
                    ["Dense Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ebon Shiv"] = {
                trainable = false,
                orange = 255,
                yellow = 280,
                grey = 305,
                trainingCost = 0,
                recipeCost = 100,
                castTime = 60,
                sellPrice = 248.92,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Edge of Winter"] = {
                trainable = false,
                orange = 190,
                yellow = 215,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 91.78,
                materials = {
                    ["Steel Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Elemental Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Air"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchanted Battlehammer"] = {
                trainable = false,
                orange = 280,
                yellow = 305,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 481.24,
                materials = {
                    ["Thorium Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Enchanted Thorium Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Huge Emerald"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Powerful Mojo"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Fiery Plate Gauntlets"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 89.19,
                materials = {
                    ["Thorium Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Enchanted Thorium Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Frost Tiger Blade"] = {
                trainable = false,
                orange = 200,
                yellow = 225,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 141.2,
                materials = {
                    ["Steel Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Gemmed Copper Gauntlets"] = {
                trainable = false,
                orange = 60,
                yellow = 100,
                grey = 140,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 2.16,
                materials = {
                    ["Copper Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Glinting Steel Dagger"] = {
                trainable = true,
                orange = 180,
                yellow = 205,
                grey = 230,
                trainingCost = 75,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 80.72,
                materials = {
                    ["Steel Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Iron Destroyer"] = {
                trainable = false,
                orange = 170,
                yellow = 195,
                grey = 220,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 83.6,
                materials = {
                    ["Iron Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Rod"] = {
                trainable = true,
                orange = 150,
                yellow = 155,
                grey = 160,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 5,
                materials = {
                    ["Gold Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Boots"] = {
                trainable = false,
                orange = 200,
                yellow = 225,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 49.77,
                materials = {
                    ["Steel Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Bracers"] = {
                trainable = true,
                orange = 185,
                yellow = 210,
                grey = 235,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 16.49,
                materials = {
                    ["Steel Bar"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Coif"] = {
                trainable = false,
                orange = 190,
                yellow = 215,
                grey = 240,
                trainingCost = 0,
                recipeCost = 44,
                castTime = 45,
                sellPrice = 44.05,
                materials = {
                    ["Steel Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Cuirass"] = {
                trainable = false,
                orange = 195,
                yellow = 220,
                grey = 245,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 65.58,
                materials = {
                    ["Steel Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Gauntlets"] = {
                trainable = false,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 36.89,
                materials = {
                    ["Steel Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Leggings"] = {
                trainable = false,
                orange = 170,
                yellow = 195,
                grey = 220,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 38.82,
                materials = {
                    ["Iron Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Scale Shoulders"] = {
                trainable = false,
                orange = 175,
                yellow = 200,
                grey = 225,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 31.06,
                materials = {
                    ["Steel Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Golden Skeleton Key"] = {
                trainable = true,
                orange = 150,
                yellow = 150,
                grey = 170,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 3,
                materials = {
                    ["Gold Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Iron Boots"] = {
                trainable = false,
                orange = 145,
                yellow = 175,
                grey = 205,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 17.67,
                materials = {
                    ["Iron Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Iron Bracers"] = {
                trainable = true,
                orange = 165,
                yellow = 190,
                grey = 215,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 11.06,
                materials = {
                    ["Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Iron Gauntlets"] = {
                trainable = false,
                orange = 150,
                yellow = 180,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 12.95,
                materials = {
                    ["Iron Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Small Lustrous Pearl"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Iron Hauberk"] = {
                trainable = true,
                orange = 180,
                yellow = 205,
                grey = 230,
                trainingCost = 75,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 56.58,
                materials = {
                    ["Iron Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Green Leather Armor"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Iron Helm"] = {
                trainable = true,
                orange = 170,
                yellow = 195,
                grey = 220,
                trainingCost = 12.5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 30.53,
                materials = {
                    ["Iron Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Iron Leggings"] = {
                trainable = true,
                orange = 155,
                yellow = 180,
                grey = 205,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 29.06,
                materials = {
                    ["Iron Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Iron Shoulders"] = {
                trainable = false,
                orange = 160,
                yellow = 185,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 25.71,
                materials = {
                    ["Iron Bar"] = {
                        count = 7,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Hardened Iron Shortsword"] = {
                trainable = false,
                orange = 160,
                yellow = 185,
                grey = 210,
                trainingCost = 0,
                recipeCost = 30,
                castTime = 45,
                sellPrice = 54.68,
                materials = {
                    ["Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Bronze Mace"] = {
                trainable = true,
                orange = 130,
                yellow = 160,
                grey = 190,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 27.41,
                materials = {
                    ["Bronze Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Copper Broadsword"] = {
                trainable = true,
                orange = 95,
                yellow = 135,
                grey = 175,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 14.98,
                materials = {
                    ["Copper Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Tigerseye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Copper Maul"] = {
                trainable = true,
                orange = 65,
                yellow = 105,
                grey = 145,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 5.95,
                materials = {
                    ["Copper Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Light Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Grinding Stone"] = {
                trainable = true,
                orange = 125,
                yellow = 125,
                grey = 150,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1,
                materials = {
                    ["Heavy Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Axe"] = {
                trainable = true,
                orange = 210,
                yellow = 230,
                grey = 260,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 125.2,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Boots"] = {
                trainable = true,
                orange = 235,
                yellow = 255,
                grey = 275,
                trainingCost = 200,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 57.69,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Breastplate"] = {
                trainable = true,
                orange = 230,
                yellow = 250,
                grey = 270,
                trainingCost = 150,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 70.45,
                materials = {
                    ["Mithril Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Gauntlet"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 24.76,
                materials = {
                    ["Mithril Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Helm"] = {
                trainable = false,
                orange = 245,
                yellow = 255,
                grey = 275,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 57.9,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Pants"] = {
                trainable = false,
                orange = 210,
                yellow = 230,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 53.87,
                materials = {
                    ["Mithril Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Mithril Shoulder"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 37.01,
                materials = {
                    ["Mithril Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Sharpening Stone"] = {
                trainable = true,
                orange = 125,
                yellow = 125,
                grey = 140,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.4,
                materials = {
                    ["Heavy Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Timbermaw Belt"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 220,
                castTime = 60,
                sellPrice = 132.91,
                materials = {
                    ["Thorium Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Essence of Earth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Living Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Huge Thorium Battleaxe"] = {
                trainable = false,
                orange = 280,
                yellow = 305,
                grey = 330,
                trainingCost = 0,
                recipeCost = 200,
                castTime = 60,
                sellPrice = 399.49,
                materials = {
                    ["Thorium Bar"] = {
                        count = 40,
                        fromVendor = false,
                    },
                    ["Dense Grinding Stone"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Imperial Plate Belt"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 55.33,
                materials = {
                    ["Thorium Bar"] = {
                        count = 22,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Imperial Plate Boots"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 120.62,
                materials = {
                    ["Thorium Bar"] = {
                        count = 34,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Imperial Plate Bracers"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 60.44,
                materials = {
                    ["Thorium Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Imperial Plate Helm"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 121.06,
                materials = {
                    ["Thorium Bar"] = {
                        count = 34,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Imperial Plate Shoulders"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 86.46,
                materials = {
                    ["Thorium Bar"] = {
                        count = 24,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Inlaid Mithril Cylinder"] = {
                trainable = false,
                orange = 200,
                yellow = 225,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 10,
                materials = {
                    ["Mithril Bar"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Iridescent Hammer"] = {
                trainable = false,
                orange = 140,
                yellow = 170,
                grey = 200,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 36.93,
                materials = {
                    ["Bronze Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Buckle"] = {
                trainable = true,
                orange = 150,
                yellow = 150,
                grey = 155,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1,
                materials = {
                    ["Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Counterweight"] = {
                trainable = false,
                orange = 165,
                yellow = 190,
                grey = 215,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 5,
                materials = {
                    ["Iron Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Shield Spike"] = {
                trainable = false,
                orange = 150,
                yellow = 180,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 2.5,
                materials = {
                    ["Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Ironforge Breastplate"] = {
                trainable = false,
                orange = 100,
                yellow = 140,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 8.71,
                materials = {
                    ["Copper Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Jade Serpentblade"] = {
                trainable = false,
                orange = 175,
                yellow = 200,
                grey = 225,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 73.04,
                materials = {
                    ["Iron Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Massive Iron Axe"] = {
                trainable = false,
                orange = 185,
                yellow = 210,
                grey = 235,
                trainingCost = 0,
                recipeCost = 44,
                castTime = 45,
                sellPrice = 112.48,
                materials = {
                    ["Iron Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mighty Iron Hammer"] = {
                trainable = false,
                orange = 145,
                yellow = 175,
                grey = 205,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 45.52,
                materials = {
                    ["Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Elixir of Ogre's Strength"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Coif"] = {
                trainable = true,
                orange = 230,
                yellow = 250,
                grey = 270,
                trainingCost = 150,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 79.55,
                materials = {
                    ["Mithril Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Scale Bracers"] = {
                trainable = false,
                orange = 215,
                yellow = 235,
                grey = 255,
                trainingCost = 0,
                recipeCost = 60,
                castTime = 60,
                sellPrice = 41.03,
                materials = {
                    ["Mithril Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Scale Pants"] = {
                trainable = true,
                orange = 210,
                yellow = 230,
                grey = 250,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 80.53,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Scale Shoulders"] = {
                trainable = false,
                orange = 235,
                yellow = 255,
                grey = 275,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 86.61,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Shield Spike"] = {
                trainable = false,
                orange = 215,
                yellow = 235,
                grey = 255,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 2.5,
                materials = {
                    ["Mithril Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Spurs"] = {
                trainable = false,
                orange = 235,
                yellow = 255,
                grey = 275,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 2.5,
                materials = {
                    ["Mithril Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Moonsteel Broadsword"] = {
                trainable = false,
                orange = 180,
                yellow = 205,
                grey = 230,
                trainingCost = 0,
                recipeCost = 44,
                castTime = 45,
                sellPrice = 101.53,
                materials = {
                    ["Steel Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Orcish War Leggings"] = {
                trainable = false,
                orange = 230,
                yellow = 250,
                grey = 270,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 77.39,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Mithril Boots"] = {
                trainable = false,
                orange = 245,
                yellow = 265,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 67.39,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Mithril Breastplate"] = {
                trainable = false,
                orange = 240,
                yellow = 260,
                grey = 280,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 83.68,
                materials = {
                    ["Mithril Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Mithril Gloves"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 29.87,
                materials = {
                    ["Mithril Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Mithril Helm"] = {
                trainable = false,
                orange = 245,
                yellow = 265,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 67.63,
                materials = {
                    ["Mithril Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Mithril Pants"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 59.52,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Mithril Shoulders"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 48.57,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Thorium Handaxe"] = {
                trainable = false,
                orange = 275,
                yellow = 300,
                grey = 325,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 60,
                sellPrice = 330.79,
                materials = {
                    ["Thorium Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Large Opal"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dense Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Patterned Bronze Bracers"] = {
                trainable = true,
                orange = 120,
                yellow = 150,
                grey = 180,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 8.07,
                materials = {
                    ["Bronze Bar"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Pearl-handled Dagger"] = {
                trainable = true,
                orange = 110,
                yellow = 140,
                grey = 170,
                trainingCost = 8,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 21.07,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Small Lustrous Pearl"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Phantom Blade"] = {
                trainable = true,
                orange = 245,
                yellow = 270,
                grey = 295,
                trainingCost = 135,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 255.08,
                materials = {
                    ["Mithril Bar"] = {
                        count = 28,
                        fromVendor = false,
                    },
                    ["Breath of Wind"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Lesser Invisibility Potion"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Polished Steel Boots"] = {
                trainable = false,
                orange = 185,
                yellow = 210,
                grey = 235,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 39.37,
                materials = {
                    ["Steel Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Radiant Belt"] = {
                trainable = false,
                orange = 260,
                yellow = 280,
                grey = 300,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 75.95,
                materials = {
                    ["Thorium Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Radiant Boots"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 164.21,
                materials = {
                    ["Thorium Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Radiant Breastplate"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 170.03,
                materials = {
                    ["Thorium Bar"] = {
                        count = 18,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Radiant Circlet"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 170.34,
                materials = {
                    ["Thorium Bar"] = {
                        count = 18,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Radiant Gloves"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 102.42,
                materials = {
                    ["Thorium Bar"] = {
                        count = 18,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Bronze Boots"] = {
                trainable = true,
                orange = 95,
                yellow = 125,
                grey = 155,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.95,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Bronze Leggings"] = {
                trainable = true,
                orange = 105,
                yellow = 145,
                grey = 175,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 9.62,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Bronze Shoulders"] = {
                trainable = true,
                orange = 110,
                yellow = 140,
                grey = 170,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 5.32,
                materials = {
                    ["Bronze Bar"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Copper Vest"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.32,
                materials = {
                    ["Copper Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Grinding Stone"] = {
                trainable = true,
                orange = 25,
                yellow = 45,
                grey = 85,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.05,
                materials = {
                    ["Rough Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Sharpening Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.03,
                materials = {
                    ["Rough Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Copper Belt"] = {
                trainable = true,
                orange = 70,
                yellow = 110,
                grey = 150,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.98,
                materials = {
                    ["Copper Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Copper Bracers"] = {
                trainable = true,
                orange = 90,
                yellow = 115,
                grey = 140,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.25,
                materials = {
                    ["Copper Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Copper Breastplate"] = {
                trainable = false,
                orange = 80,
                yellow = 120,
                grey = 160,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 6.3,
                materials = {
                    ["Copper Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Copper Gauntlets"] = {
                trainable = true,
                orange = 40,
                yellow = 80,
                grey = 120,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.71,
                materials = {
                    ["Copper Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Copper Pants"] = {
                trainable = true,
                orange = 45,
                yellow = 85,
                grey = 125,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 2.99,
                materials = {
                    ["Copper Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Mithril Hammer"] = {
                trainable = false,
                orange = 245,
                yellow = 270,
                grey = 295,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 216.6,
                materials = {
                    ["Mithril Bar"] = {
                        count = 18,
                        fromVendor = false,
                    },
                    ["Core of Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Searing Golden Blade"] = {
                trainable = false,
                orange = 190,
                yellow = 215,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 103.95,
                materials = {
                    ["Steel Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Shadow Crescent Axe"] = {
                trainable = false,
                orange = 200,
                yellow = 225,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 142.21,
                materials = {
                    ["Steel Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Shining Silver Breastplate"] = {
                trainable = true,
                orange = 145,
                yellow = 175,
                grey = 205,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 29.35,
                materials = {
                    ["Bronze Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Silver Rod"] = {
                trainable = true,
                orange = 100,
                yellow = 105,
                grey = 110,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.25,
                materials = {
                    ["Silver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Silver Skeleton Key"] = {
                trainable = true,
                orange = 100,
                yellow = 100,
                grey = 120,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1,
                materials = {
                    ["Silver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Silvered Bronze Boots"] = {
                trainable = true,
                orange = 130,
                yellow = 160,
                grey = 190,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 13.17,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Silvered Bronze Breastplate"] = {
                trainable = false,
                orange = 130,
                yellow = 160,
                grey = 190,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 18.31,
                materials = {
                    ["Bronze Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Silvered Bronze Gauntlets"] = {
                trainable = true,
                orange = 135,
                yellow = 165,
                grey = 195,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 9.65,
                materials = {
                    ["Bronze Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Silvered Bronze Leggings"] = {
                trainable = false,
                orange = 155,
                yellow = 180,
                grey = 205,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 28.42,
                materials = {
                    ["Bronze Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Silvered Bronze Shoulders"] = {
                trainable = false,
                orange = 125,
                yellow = 155,
                grey = 185,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 12.84,
                materials = {
                    ["Bronze Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Grinding Stone"] = {
                trainable = true,
                orange = 200,
                yellow = 200,
                grey = 210,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2,
                materials = {
                    ["Solid Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Iron Maul"] = {
                trainable = false,
                orange = 155,
                yellow = 180,
                grey = 205,
                trainingCost = 0,
                recipeCost = 30,
                castTime = 45,
                sellPrice = 62.58,
                materials = {
                    ["Iron Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Strong Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silver Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Sharpening Stone"] = {
                trainable = true,
                orange = 200,
                yellow = 200,
                grey = 210,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.4,
                materials = {
                    ["Solid Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Steel Breastplate"] = {
                trainable = true,
                orange = 200,
                yellow = 225,
                grey = 250,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 64.88,
                materials = {
                    ["Steel Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Steel Plate Helm"] = {
                trainable = true,
                orange = 215,
                yellow = 235,
                grey = 255,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 23.77,
                materials = {
                    ["Steel Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Steel Weapon Chain"] = {
                trainable = false,
                orange = 190,
                yellow = 215,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 15,
                materials = {
                    ["Steel Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Storm Gauntlets"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 335,
                trainingCost = 0,
                recipeCost = 400,
                castTime = 60,
                sellPrice = 140.99,
                materials = {
                    ["Thorium Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Enchanted Thorium Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Blue Sapphire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["The Shatterer"] = {
                trainable = true,
                orange = 235,
                yellow = 260,
                grey = 285,
                trainingCost = 135,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 231.59,
                materials = {
                    ["Mithril Bar"] = {
                        count = 24,
                        fromVendor = false,
                    },
                    ["Core of Earth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thick War Axe"] = {
                trainable = true,
                orange = 70,
                yellow = 110,
                grey = 150,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 9.37,
                materials = {
                    ["Copper Bar"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Silver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rough Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Armor"] = {
                trainable = false,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 92.39,
                materials = {
                    ["Thorium Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Blue Sapphire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Yellow Power Crystal"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Belt"] = {
                trainable = false,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 46.36,
                materials = {
                    ["Thorium Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Red Power Crystal"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Boots"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 103.36,
                materials = {
                    ["Thorium Bar"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Green Power Crystal"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Bracers"] = {
                trainable = false,
                orange = 255,
                yellow = 275,
                grey = 295,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 49.98,
                materials = {
                    ["Thorium Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Blue Power Crystal"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Helm"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 103.72,
                materials = {
                    ["Thorium Bar"] = {
                        count = 24,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Yellow Power Crystal"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Shield Spike"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 5,
                materials = {
                    ["Thorium Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Dense Grinding Stone"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Essence of Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Truesilver Breastplate"] = {
                trainable = true,
                orange = 245,
                yellow = 265,
                grey = 285,
                trainingCost = 90,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 108.99,
                materials = {
                    ["Mithril Bar"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 24,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Truesilver Champion"] = {
                trainable = true,
                orange = 260,
                yellow = 285,
                grey = 310,
                trainingCost = 135,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 385.48,
                materials = {
                    ["Mithril Bar"] = {
                        count = 30,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Breath of Wind"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Truesilver Rod"] = {
                trainable = true,
                orange = 200,
                yellow = 205,
                grey = 210,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 10,
                materials = {
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Truesilver Skeleton Key"] = {
                trainable = true,
                orange = 200,
                yellow = 200,
                grey = 220,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 6.25,
                materials = {
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Volcanic Hammer"] = {
                trainable = false,
                orange = 290,
                yellow = 315,
                grey = 340,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 392.55,
                materials = {
                    ["Thorium Bar"] = {
                        count = 30,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Wicked Mithril Blade"] = {
                trainable = false,
                orange = 225,
                yellow = 250,
                grey = 275,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 158.91,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Solid Grinding Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
        },
        SEGMENTS = {
            --Each recipe appears only once, at the start of its level
            [1] = {
                "Rough Copper Vest",
                "Rough Sharpening Stone",
                "Copper Bracers",
                "Copper Chain Pants",
            },
            [15] = {
                "Copper Mace",
            },
            [20] = {
                "Copper Axe",
                "Copper Chain Boots",
            },
            [30] = {
                "Copper Claymore",
                "Copper Dagger",
                "Rough Grinding Stone",
                "Copper Shortsword",
            },
            [35] = {
                "Copper Battle Axe",
                "Copper Chain Belt",
                "Copper Chain Vest",
            },
            [40] = {
                "Runed Copper Gauntlets",
            },
            [45] = {
                "Runed Copper Pants"
            },
            [60] = {
                "Gemmed Copper Gauntlets",
            },
            [65] = {
                "Coarse Sharpening Stone",
                "Heavy Copper Maul",
            },
            [70] = {
                "Runed Copper Belt",
                "Thick War Axe",
            },
            [75] = {
                "Coarse Grinding Stone",
            },
            [80] = {
                "Runed Copper Breastplate",
            },
            [90] = {
                "Runed Copper Bracers",
            },
            [95] = {
                "Rough Bronze Boots",
                "Heavy Copper Broadsword",
            },
            [100] = {
                "Silver Skeleton Key",
                "Silver Rod",
                "Ironforge Breastplate",
            },
            [105] = {
                "Big Bronze Knife",
                "Rough Bronze Leggings",
            },
            [110] = {
                "Bronze Mace",
                "Pearl-handled Dagger",
                "Rough Bronze Shoulders",
            },
            [115] = {
                "Bronze Axe",
            },
            [120] = {
                "Bronze Shortsword",
                "Patterned Bronze Bracers",
            },
            [125] = {
                "Heavy Sharpening Stone",
                "Heavy Grinding Stone",
                "Bronze Warhammer",
                "Deadly Bronze Poniard",
                "Silvered Bronze Shoulders",
            },
            [130] = {
                "Bronze Greatsword",
                "Heavy Bronze Mace",
                "Silvered Bronze Boots",
                "Silvered Bronze Breastplate",
            },
            [135] = {
                "Bronze Battle Axe",
                "Silvered Bronze Gauntlets",
            },
            [140] = {
                "Iridescent Hammer",
            },
            [145] = {
                "Shining Silver Breastplate",
                "Green Iron Boots",
                "Mighty Iron Hammer",
            },
            [150] = {
                "Iron Buckle",
                "Golden Skeleton Key",
                "Golden Rod",
                "Green Iron Gauntlets",
                "Iron Shield Spike",
            },
            [155] = {
                "Green Iron Leggings",
                "Silvered Bronze Leggings",
                "Solid Iron Maul",
            },
            [160] = {
                "Barbaric Iron Shoulders",
                "Green Iron Shoulders",
                "Hardened Iron Shortsword",
            },
            [165] = {
                "Green Iron Bracers",
                "Iron Counterweight",
            },
            [170] = {
                "Green Iron Helm",
                "Golden Iron Destroyer",
                "Golden Scale Leggings",
            },
            [175] = {
                "Barbaric Iron Helm",
                "Golden Scale Shoulders",
                "Jade Serpentblade",
            },
            [180] = {
                "Glinting Steel Dagger",
                "Green Iron Hauberk",
                "Barbaric Iron Boots",
                "Moonsteel Broadsword",
            },
            [185] = {
                "Golden Scale Bracers",
                "Barbaric Iron Gloves",
                "Massive Iron Axe",
                "Polished Steel Boots",
            },
            [190] = {
                "Edge of Winter",
                "Golden Scale Coif",
                "Searing Golden Blade",
                "Steel Weapon Chain",
            },
            [195] = {
                "Golden Scale Cuirass",
            },
            [200] = {
                "Solid Grinding Stone",
                "Solid Sharpening Stone",
                "Truesilver Skeleton Key",
                "Truesilver Rod",
                "Steel Breastplate",
                "Frost Tiger Blade",
                "Golden Scale Boots",
                "Inlaid Mithril Cylinder",
                "Shadow Crescent Axe",
            },
            [205] = {
                "Heavy Mithril Gauntlet",
                "Heavy Mithril Shoulder",
                "Golden Scale Gauntlets",
            },
            [210] = {
                "Mithril Scale Pants",
                "Heavy Mithril Axe",
                "Heavy Mithril Pants",
            },
            [215] = {
                "Steel Plate Helm",
                "Mithril Scale Bracers",
                "Mithril Shield Spike",
            },
            [220] = {
                "Ornate Mithril Gloves",
                "Ornate Mithril Pants",
                "Blue Glittering Axe",
            },
            [225] = {
                "Ornate Mithril Shoulders",
                "Wicked Mithril Blade",
            },
            [230] = {
                "Heavy Mithril Breastplate",
                "Mithril Coif",
                "Big Black Mace",
                "Orcish War Leggings",
            },
            [235] = {
                "Heavy Mithril Boots",
                "The Shatterer",
                "Mithril Scale Shoulders",
                "Mithril Spurs",
            },
            [240] = {
                "Ornate Mithril Breastplate",
                "Dazzling Mithril Rapier",
            },
            [245] = {
                "Truesilver Breastplate",
                "Phantom Blade",
                "Heavy Mithril Helm",
                "Ornate Mithril Boots",
                "Ornate Mithril Helm",
                "Runed Mithril Hammer",
            },
            [250] = {
                "Dense Grinding Stone",
                "Dense Sharpening Stone",
                "Blight",
                "Thorium Armor",
                "Thorium Belt",
            },
            [255] = {
                "Thorium Bracers",
                "Ebon Shiv",
            },
            [260] = {
                "Truesilver Champion",
                "Radiant Belt",
            },
            [265] = {
                "Dark Iron Pulverizer",
                "Imperial Plate Belt",
                "Imperial Plate Shoulders",
            },
            [270] = {
                "Dark Iron Mail",
                "Imperial Plate Bracers",
                "Radiant Breastplate",
            },
            [275] = {
                "Arcanite Skeleton Key",
                "Dark Iron Sunderer",
                "Thorium Shield Spike",
                "Ornate Thorium Handaxe",
            },
            [280] = {
                "Dark Iron Shoulders",
                "Thorium Boots",
                "Thorium Helm",
                "Blazing Rapier",
                "Enchanted Battlehammer",
                "Huge Thorium Battleaxe",
            },
            [285] = {
                "Dark Iron Plate",
                "Radiant Gloves",
            },
            [290] = {
                "Fiery Plate Gauntlets",
                "Heavy Timbermaw Belt",
                "Radiant Boots",
                "Volcanic Hammer",
            },
            [295] = {
                "Imperial Plate Boots",
                "Imperial Plate Helm",
                "Radiant Circlet",
                "Storm Gauntlets",
            },
        },
    },
    ["leatherworking"] = {
        RECIPES = {
            ["Barbaric Belt"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 28.04,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Gorilla Hair "] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Great Rage Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Bracers"] = {
                trainable = false,
                orange = 155,
                yellow = 175,
                grey = 195,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 25,
                sellPrice = 15.89,
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Small Lustrous Pearl"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Raptor Hide"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Large Fang"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Gloves"] = {
                trainable = false,
                orange = 150,
                yellow = 170,
                grey = 190,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 10.71,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Large Fang"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Harness"] = {
                trainable = true,
                orange = 190,
                yellow = 210,
                grey = 230,
                trainingCost = 18,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 27.38,
                materials = {
                    ["Heavy Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Leggings"] = {
                trainable = false,
                orange = 170,
                yellow = 190,
                grey = 210,
                trainingCost = 0,
                recipeCost = 6.5,
                castTime = 45,
                sellPrice = 31.51,
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Barbaric Shoulders"] = {
                trainable = true,
                orange = 175,
                yellow = 195,
                grey = 215,
                trainingCost = 10.8,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 26.09,
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Cloak"] = {
                trainable = false,
                orange = 240,
                yellow = 260,
                grey = 280,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 63.23,
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Flask of Big Mojo"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Mask"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 53.5,
                materials = {
                    ["Thick Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Flask of Mojo"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Pants"] = {
                trainable = false,
                orange = 240,
                yellow = 260,
                grey = 280,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 90.22,
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Flask of Big Mojo"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Robe"] = {
                trainable = false,
                orange = 215,
                yellow = 235,
                grey = 255,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 72.75,
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Flask of Mojo"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Whelp Cloak"] = {
                trainable = false,
                orange = 100,
                yellow = 125,
                grey = 150,
                trainingCost = 0,
                recipeCost = 6.5,
                castTime = 12.5,
                sellPrice = 5.19,
                materials = {
                    ["Black Whelp Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Whelp Tunic"] = {
                trainable = false,
                orange = 100,
                yellow = 125,
                grey = 150,
                trainingCost = 0,
                recipeCost = 14,
                castTime = 12.5,
                sellPrice = 7.43,
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Black Whelp Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Boots"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 115.3,
                materials = {
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Gloves"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 60,
                sellPrice = 68.67,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Leggings"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 162.33,
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Vest"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 184.49,
                materials = {
                    ["Rugged Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Comfortable Leather Hat"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 41.31,
                materials = {
                    ["Heavy Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Cured Heavy Hide"] = {
                trainable = true,
                orange = 150,
                yellow = 160,
                grey = 170,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 2.25,
                materials = {
                    ["Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Salt"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Cured Light Hide"] = {
                trainable = true,
                orange = 35,
                yellow = 55,
                grey = 75,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.1,
                materials = {
                    ["Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Salt"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cured Medium Hide"] = {
                trainable = true,
                orange = 100,
                yellow = 115,
                grey = 130,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2,
                materials = {
                    ["Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Salt"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Belt"] = {
                trainable = true,
                orange = 125,
                yellow = 150,
                grey = 175,
                trainingCost = 4,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 7.03,
                materials = {
                    ["Fine Leather Belt"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Boots"] = {
                trainable = true,
                orange = 100,
                yellow = 125,
                grey = 150,
                trainingCost = 3.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 3.07,
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Cloak"] = {
                trainable = true,
                orange = 110,
                yellow = 135,
                grey = 160,
                trainingCost = 3.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 4.08,
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Gloves"] = {
                trainable = false,
                orange = 120,
                yellow = 155,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 7.91,
                materials = {
                    ["Fine Leather Gloves"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Pants"] = {
                trainable = true,
                orange = 115,
                yellow = 140,
                grey = 165,
                trainingCost = 4,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 10.89,
                materials = {
                    ["Medium Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Shoulders"] = {
                trainable = false,
                orange = 140,
                yellow = 165,
                grey = 190,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 14.57,
                materials = {
                    ["Medium Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Elixir of Lesser Agility"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Tunic"] = {
                trainable = false,
                orange = 100,
                yellow = 125,
                grey = 150,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 6.89,
                materials = {
                    ["Medium Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Deviate Scale Cloak"] = {
                trainable = false,
                orange = 90,
                yellow = 120,
                grey = 150,
                trainingCost = 0,
                recipeCost = 5.5,
                castTime = 12.5,
                sellPrice = 4.13,
                materials = {
                    ["Deviate Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Deviate Scale Gloves"] = {
                trainable = false,
                orange = 105,
                yellow = 130,
                grey = 155,
                trainingCost = 0,
                recipeCost = 15,
                castTime = 25,
                sellPrice = 4.2,
                materials = {
                    ["Perfect Deviate Scale"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Deviate Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Belt"] = {
                trainable = true,
                orange = 195,
                yellow = 215,
                grey = 235,
                trainingCost = 22.5,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 25.87,
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Dusky Boots"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 42.37,
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Shadowcat Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Bracers"] = {
                trainable = true,
                orange = 185,
                yellow = 205,
                grey = 225,
                trainingCost = 18,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 21.46,
                materials = {
                    ["Heavy Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Leather Armor"] = {
                trainable = true,
                orange = 175,
                yellow = 195,
                grey = 215,
                trainingCost = 13.5,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 37.6,
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Leather Leggings"] = {
                trainable = false,
                orange = 165,
                yellow = 185,
                grey = 205,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 30.97,
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Earthen Leather Shoulders"] = {
                trainable = false,
                orange = 135,
                yellow = 160,
                grey = 185,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 25,
                sellPrice = 13.06,
                materials = {
                    ["Medium Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Boots"] = {
                trainable = true,
                orange = 55,
                yellow = 85,
                grey = 115,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.68,
                materials = {
                    ["Light Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 5,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Cloak"] = {
                trainable = true,
                orange = 60,
                yellow = 90,
                grey = 120,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.12,
                materials = {
                    ["Light Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Gloves"] = {
                trainable = true,
                orange = 55,
                yellow = 85,
                grey = 115,
                trainingCost = 1.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.71,
                materials = {
                    ["Light Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Pants"] = {
                trainable = true,
                orange = 75,
                yellow = 105,
                grey = 135,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 3.47,
                materials = {
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Vest"] = {
                trainable = true,
                orange = 40,
                yellow = 70,
                grey = 100,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 1.92,
                materials = {
                    ["Light Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Belt"] = {
                trainable = true,
                orange = 80,
                yellow = 110,
                grey = 140,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.25,
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Boots"] = {
                trainable = false,
                orange = 90,
                yellow = 120,
                grey = 150,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.43,
                materials = {
                    ["Light Leather"] = {
                        count = 7,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Fine Leather Cloak"] = {
                trainable = true,
                orange = 85,
                yellow = 105,
                grey = 135,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.67,
                materials = {
                    ["Light Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Gloves"] = {
                trainable = false,
                orange = 75,
                yellow = 105,
                grey = 135,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.81,
                materials = {
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Pants"] = {
                trainable = false,
                orange = 105,
                yellow = 130,
                grey = 155,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 8.29,
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Bolt of Woolen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Tunic"] = {
                trainable = true,
                orange = 85,
                yellow = 115,
                grey = 145,
                trainingCost = 3.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 4.61,
                materials = {
                    ["Cured Light Hide"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Fletcher's Gloves"] = {
                trainable = true,
                orange = 125,
                yellow = 150,
                grey = 175,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 6.9,
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Long Tail Feather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Frost Leather Cloak"] = {
                trainable = true,
                orange = 180,
                yellow = 200,
                grey = 220,
                trainingCost = 18,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 22.69,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Frostsaber Boots"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 60,
                sellPrice = 114.43,
                materials = {
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Frostsaber Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostsaber Gloves"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 98.04,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Frostsaber Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostsaber Leggings"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 170.12,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Frostsaber Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gem-studded Leather Belt"] = {
                trainable = false,
                orange = 185,
                yellow = 205,
                grey = 225,
                trainingCost = 0,
                recipeCost = 30,
                castTime = 60,
                sellPrice = 26.52,
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gloves of the Greatfather"] = {
                trainable = false,
                orange = 190,
                yellow = 210,
                grey = 230,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 22.68,
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Leather Armor"] = {
                trainable = false,
                orange = 155,
                yellow = 175,
                grey = 195,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 45,
                sellPrice = 23.66,
                materials = {
                    ["Heavy Leather"] = {
                        count = 9,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Green Leather Belt"] = {
                trainable = true,
                orange = 160,
                yellow = 180,
                grey = 200,
                trainingCost = 9,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 13.11,
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Leather Bracers"] = {
                trainable = true,
                orange = 180,
                yellow = 200,
                grey = 220,
                trainingCost = 10.8,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 19.34,
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Whelp Armor"] = {
                trainable = false,
                orange = 175,
                yellow = 195,
                grey = 215,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 37.73,
                materials = {
                    ["Green Whelp Scale"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Green Whelp Bracers"] = {
                trainable = false,
                orange = 190,
                yellow = 210,
                grey = 230,
                trainingCost = 0,
                recipeCost = 28,
                castTime = 45,
                sellPrice = 23.87,
                materials = {
                    ["Green Whelp Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Guardian Belt"] = {
                trainable = false,
                orange = 170,
                yellow = 190,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 15.92,
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Guardian Cloak"] = {
                trainable = false,
                orange = 185,
                yellow = 205,
                grey = 225,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 25.36,
                materials = {
                    ["Heavy Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Guardian Gloves"] = {
                trainable = true,
                orange = 190,
                yellow = 210,
                grey = 230,
                trainingCost = 21.6,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 13.74,
                materials = {
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Guardian Leather Bracers"] = {
                trainable = false,
                orange = 195,
                yellow = 215,
                grey = 235,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 25.59,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Guardian Pants"] = {
                trainable = true,
                orange = 160,
                yellow = 180,
                grey = 200,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 27.94,
                materials = {
                    ["Heavy Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Belt"] = {
                trainable = true,
                orange = 25,
                yellow = 55,
                grey = 85,
                trainingCost = 0.75,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.34,
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Cloak"] = {
                trainable = true,
                orange = 1,
                yellow = 40,
                grey = 70,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.34,
                materials = {
                    ["Light Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Pants"] = {
                trainable = true,
                orange = 15,
                yellow = 45,
                grey = 75,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.71,
                materials = {
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Vest"] = {
                trainable = true,
                orange = 1,
                yellow = 40,
                grey = 70,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.4,
                materials = {
                    ["Light Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Armor Kit"] = {
                trainable = true,
                orange = 150,
                yellow = 170,
                grey = 190,
                trainingCost = 7.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 6.5,
                materials = {
                    ["Heavy Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Earthen Gloves"] = {
                trainable = false,
                orange = 145,
                yellow = 170,
                grey = 195,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 9.78,
                materials = {
                    ["Medium Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bolt of Woolen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Leather"] = {
                trainable = true,
                orange = 150,
                yellow = 150,
                grey = 160,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.5,
                materials = {
                    ["Medium Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Leather Ball"] = {
                trainable = false,
                orange = 150,
                yellow = 150,
                grey = 160,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 8,
                sellPrice = 0.05,
                materials = {
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Belt"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 103.75,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Bracers"] = {
                trainable = false,
                orange = 255,
                yellow = 275,
                grey = 295,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 60,
                sellPrice = 76.15,
                materials = {
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Gauntlets"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 96.49,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Helm"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 335,
                trainingCost = 0,
                recipeCost = 250,
                castTime = 60,
                sellPrice = 182.3,
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Rugged Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Leggings"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 217.6,
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Vest"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 166.04,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Herbalist's Gloves"] = {
                trainable = false,
                orange = 135,
                yellow = 160,
                grey = 185,
                trainingCost = 0,
                recipeCost = 18,
                castTime = 25,
                sellPrice = 8.61,
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Belt"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 170,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 7.05,
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Elixir of Wisdom"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Cloak"] = {
                trainable = true,
                orange = 150,
                yellow = 170,
                grey = 190,
                trainingCost = 6,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 10.27,
                materials = {
                    ["Heavy Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Leather Gloves"] = {
                trainable = true,
                orange = 145,
                yellow = 170,
                grey = 195,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 10.49,
                materials = {
                    ["Medium Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Leather Vest"] = {
                trainable = false,
                orange = 100,
                yellow = 125,
                grey = 150,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 7.23,
                materials = {
                    ["Fine Leather Tunic"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Shoulders"] = {
                trainable = true,
                orange = 130,
                yellow = 155,
                grey = 180,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 11.99,
                materials = {
                    ["Cured Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Kodo Hide Bag"] = {
                trainable = false,
                orange = 40,
                yellow = 70,
                grey = 100,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.5,
                materials = {
                    ["Thin Kodo Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Light Armor Kit"] = {
                trainable = true,
                orange = 1,
                yellow = 30,
                grey = 60,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.15,
                materials = {
                    ["Light Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Light Leather"] = {
                trainable = true,
                orange = 1,
                yellow = 20,
                grey = 40,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.15,
                materials = {
                    ["Ruined Leather Scraps"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Light Leather Bracers"] = {
                trainable = true,
                orange = 70,
                yellow = 100,
                grey = 130,
                trainingCost = 1.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.84,
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Light Leather Pants"] = {
                trainable = true,
                orange = 95,
                yellow = 125,
                grey = 155,
                trainingCost = 4,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 5.99,
                materials = {
                    ["Light Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Light Leather Quiver"] = {
                trainable = true,
                orange = 30,
                yellow = 60,
                grey = 90,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.25,
                materials = {
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Medium Armor Kit"] = {
                trainable = true,
                orange = 100,
                yellow = 115,
                grey = 130,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 2,
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Medium Leather"] = {
                trainable = true,
                orange = 100,
                yellow = 100,
                grey = 110,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.5,
                materials = {
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Moonglow Vest"] = {
                trainable = false,
                orange = 90,
                yellow = 115,
                grey = 145,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 5.45,
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Small Lustrous Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Murloc Scale Belt"] = {
                trainable = false,
                orange = 90,
                yellow = 120,
                grey = 150,
                trainingCost = 0,
                recipeCost = 5.5,
                castTime = 8,
                sellPrice = 2.6,
                materials = {
                    ["Slimy Murloc Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Murloc Scale Breastplate"] = {
                trainable = false,
                orange = 95,
                yellow = 125,
                grey = 155,
                trainingCost = 0,
                recipeCost = 6,
                castTime = 12.5,
                sellPrice = 6.01,
                materials = {
                    ["Slimy Murloc Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 8,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Boots"] = {
                trainable = true,
                orange = 235,
                yellow = 255,
                grey = 275,
                trainingCost = 45,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 71.58,
                materials = {
                    ["Thick Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Headband"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 27,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 44.95,
                materials = {
                    ["Thick Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Pants"] = {
                trainable = true,
                orange = 230,
                yellow = 250,
                grey = 270,
                trainingCost = 40,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 87.08,
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Tunic"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 27,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 59.71,
                materials = {
                    ["Thick Leather"] = {
                        count = 7,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Nimble Leather Gloves"] = {
                trainable = true,
                orange = 120,
                yellow = 145,
                grey = 170,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 5.88,
                materials = {
                    ["Elixir of Minor Agility"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Pilferer's Gloves"] = {
                trainable = false,
                orange = 140,
                yellow = 165,
                grey = 190,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 8.85,
                materials = {
                    ["Medium Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Lucky Charm"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Raptor Hide Belt"] = {
                trainable = false,
                orange = 165,
                yellow = 185,
                grey = 205,
                trainingCost = 0,
                recipeCost = 25,
                castTime = 45,
                sellPrice = 15.53,
                materials = {
                    ["Raptor Hide"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Raptor Hide Harness"] = {
                trainable = false,
                orange = 165,
                yellow = 185,
                grey = 205,
                trainingCost = 0,
                recipeCost = 25,
                castTime = 45,
                sellPrice = 30.96,
                materials = {
                    ["Raptor Hide"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Red Whelp Gloves"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 170,
                trainingCost = 0,
                recipeCost = 16,
                castTime = 12.5,
                sellPrice = 5.86,
                materials = {
                    ["Red Whelp Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Rugged Armor Kit"] = {
                trainable = true,
                orange = 250,
                yellow = 250,
                grey = 270,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 10,
                materials = {
                    ["Rugged Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Rugged Leather Pants"] = {
                trainable = false,
                orange = 35,
                yellow = 65,
                grey = 95,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.62,
                materials = {
                    ["Light Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 5,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Belt"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 83.68,
                materials = {
                    ["Rugged Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Bracers"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 76.56,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Gauntlets"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 71.95,
                materials = {
                    ["Rugged Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Headband"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 220,
                castTime = 60,
                sellPrice = 141.55,
                materials = {
                    ["Rugged Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Small Leather Ammo Pouch"] = {
                trainable = true,
                orange = 30,
                yellow = 60,
                grey = 90,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.25,
                materials = {
                    ["Light Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Swift Boots"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 42.53,
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Swiftness Potion"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Thick Spider's Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Thick Armor Kit"] = {
                trainable = true,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 18,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 10,
                materials = {
                    ["Thick Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Thick Leather"] = {
                trainable = true,
                orange = 200,
                yellow = 200,
                grey = 205,
                trainingCost = 40,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 3,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Thick Murloc Armor"] = {
                trainable = false,
                orange = 170,
                yellow = 190,
                grey = 210,
                trainingCost = 0,
                recipeCost = 6.5,
                castTime = 45,
                sellPrice = 32.11,
                materials = {
                    ["Thick Murloc Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Boots"] = {
                trainable = false,
                orange = 235,
                yellow = 255,
                grey = 275,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 83.75,
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 6,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Bracers"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 43.46,
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Breastplate"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 86.28,
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Helm"] = {
                trainable = false,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 102.72,
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Leggings"] = {
                trainable = false,
                orange = 245,
                yellow = 265,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 127.04,
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Shoulders"] = {
                trainable = false,
                orange = 240,
                yellow = 260,
                grey = 280,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 89.78,
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Toughened Leather Armor"] = {
                trainable = true,
                orange = 120,
                yellow = 145,
                grey = 170,
                trainingCost = 4.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 7.43,
                materials = {
                    ["Medium Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Turtle Scale Breastplate"] = {
                trainable = true,
                orange = 210,
                yellow = 230,
                grey = 250,
                trainingCost = 30,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 75.67,
                materials = {
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Turtle Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Volcanic Breastplate"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 172.75,
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Essence of Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Volcanic Leggings"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 145.59,
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Core of Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Bracers"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 73.11,
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Gauntlets"] = {
                trainable = false,
                orange = 260,
                yellow = 280,
                grey = 300,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 60,
                sellPrice = 68.72,
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Headband"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 131.53,
                materials = {
                    ["Rugged Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Pants"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 178.92,
                materials = {
                    ["Rugged Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Cured Rugged Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wild Leather Boots"] = {
                trainable = false,
                orange = 245,
                yellow = 265,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 81.5,
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Cured Thick Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Wild Leather Cloak"] = {
                trainable = false,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 90.17,
                materials = {
                    ["Thick Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Thick Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Wild Leather Helmet"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 62.3,
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Cured Thick Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Wild Leather Leggings"] = {
                trainable = false,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 115.85,
                materials = {
                    ["Thick Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Thick Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Wild Leather Shoulders"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 55.37,
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Thick Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Wild Leather Vest"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 80.02,
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Cured Thick Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
        },
        SEGMENTS = {
            [1] = {
                "Light Leather",
                "Light Armor Kit",
                "Handstitched Leather Cloak",
                "Handstitched Leather Vest",
            },
            [15] = {
                "Handstitched Leather Pants",
            },
            [25] = {
                "Handstitched Leather Belt",
            },
            [30] = {
                "Light Leather Quiver",
                "Small Leather Ammo Pouch",
            },
            [35] = {
                "Cured Light Hide",
                "Rugged Leather Pants",
            },
            [40] = {
                "Embossed Leather Vest",
                "Kodo Hide Bag",
            },
            [55] = {
                "Embossed Leather Boots",
                "Embossed Leather Gloves",
            },
            [60] = {
                "Embossed Leather Cloak",
            },
            [75] = {
                "Embossed Leather Pants",
                "Fine Leather Gloves",
            },
            [80] = {
                "Fine Leather Belt",
            },
            [85] = {
                "Light Leather Bracers",
                "Fine Leather Cloak",
                "Fine Leather Tunic",
            },
            [90] = {
                "Moonglow Vest",
                "Deviate Scale Cloak",
                "Fine Leather Boots",
                "Murloc Scale Belt",
            },
            [95] = {
                "Light Leather Pants",
                "Murloc Scale Breastplate",
            },
            [100] = {
                "Medium Leather",
                "Cured Medium Hide",
                "Medium Armor Kit",
                "Black Whelp Cloak",
                "Black Whelp Tunic",
                "Dark Leather Tunic",
                "Hillman's Leather Vest",
            },
            [105] = {
                "Deviate Scale Gloves",
                "Fine Leather Pants",
            },
            [115] = {
                "Dark Leather Pants",
                "Dark Leather Boots",
            },
            [120] = {
                "Nimble Leather Gloves",
                "Toughened Leather Armor",
                "Hillman's Belt",
                "Red Whelp Gloves",
                "Dark Leather Gloves",
            },
            [125] = {
                "Dark Leather Cloak",
                "Dark Leather Belt",
                "Fletcher's Gloves",
            },
            [130] = {
                "Hillman's Shoulders",
            },
            [135] = {
                "Earthen Leather Shoulders",
                "Herbalist's Gloves",
            },
            [140] = {
                "Dark Leather Shoulders",
                "Pilferer's Gloves",
            },
            [145] = {
                "Hillman's Leather Gloves",
                "Heavy Earthen Gloves",
            },
            [150] = {
                "Heavy Leather",
                "Cured Heavy Hide",
                "Heavy Armor Kit",
                "Hillman's Cloak",
                "Heavy Leather Ball",
                "Barbaric Gloves",
            },
            [155] = {
                "Barbaric Bracers",
                "Green Leather Armor",
            },
            [160] = {
                "Green Leather Belt",
                "Guardian Pants",
            },
            [165] = {
                "Dusky Leather Leggings",
                "Raptor Hide Belt",
                "Raptor Hide Harness",
            },
            [170] = {
                "Barbaric Leggings",
                "Guardian Belt",
                "Thick Murloc Armor",
            },
            [175] = {
                "Barbaric Shoulders",
                "Dusky Leather Armor",
                "Green Whelp Armor",
            },
            [180] = {
                "Frost Leather Cloak",
                "Green Leather Bracers",
            },
            [185] = {
                "Dusky Bracers",
                "Gem-studded Leather Belt",
                "Guardian Cloak",
            },
            [190] = {
                "Barbaric Harness",
                "Guardian Gloves",
                "Gloves of the Greatfather",
                "Green Whelp Bracers",
            },
            [195] = {
                "Dusky Belt",
                "Guardian Leather Bracers",
            },
            [200] = {
                "Thick Armor Kit",
                "Thick Leather",
                "Swift Boots",
                "Barbaric Belt",
                "Comfortable Leather Hat",
                "Dusky Boots",
            },
            [205] = {
                "Nightscape Headband",
                "Nightscape Tunic",
            },
            [210] = {
                "Turtle Scale Breastplate",
            },
            [215] = {
                "Big Voodoo Robe",
            },
            [220] = {
                "Big Voodoo Mask",
                "Tough Scorpid Bracers",
                "Tough Scorpid Breastplate",
                "Wild Leather Shoulders",
            },
            [225] = {
                "Wild Leather Helmet",
                "Wild Leather Vest",
            },
            [230] = {
                "Nightscape Pants",
            },
            [235] = {
                "Tough Scorpid Boots",
            },
            [240] = {
                "Big Voodoo Cloak",
                "Big Voodoo Pants",
                "Tough Scorpid Shoulders",
            },
            [245] = {
                "Tough Scorpid Leggings",
                "Wild Leather Boots",
            },
            [250] = {
                "Rugged Armor Kit",
                "Nightscape Boots",
                "Tough Scorpid Helm",
                "Wild Leather Cloak",
                "Wild Leather Leggings",
            },
            [255] = {
                "Heavy Scorpid Bracers",
            },
            [260] = {
                "Wicked Leather Gauntlets",
            },
            [265] = {
                "Chimeric Gloves",
                "Heavy Scorpid Vest",
                "Wicked Leather Bracers",
            },
            [270] = {
                "Volcanic Leggings",
                "Runic Leather Gauntlets",
            },
            [275] = {
                "Chimeric Boots",
                "Frostsaber Boots",
                "Heavy Scorpid Gauntlets",
                "Runic Leather Bracers",
            },
            [280] = {
                "Chimeric Leggings",
                "Heavy Scorpid Belt",
                "Runic Leather Belt",
                "Wicked Leather Headband",
            },
            [285] = {
                "Frostsaber Leggings",
                "Heavy Scorpid Leggings",
                "Volcanic Breastplate",
            },
            [290] = {
                "Chimeric Vest",
                "Runic Leather Headband",
                "Wicked Leather Pants",
            },
            [295] = {
                "Frostsaber Gloves",
                "Heavy Scorpid Helm",
            },
        },
    },
    ["tailoring"] = { --TODO: finish tailoring
        RECIPES = { --TODO: add recipes from 1-145
            ["Admiral's Hat"] = {
                trainable = false,
                orange = 240,
                yellow = 255,
                grey = 285,
                trainingCost = 0,
                recipeCost = 70,
                castTime = 60,
                sellPrice = 60.7,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Long Elegant Feather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Azure Silk Cloak"] = {
                trainable = false,
                orange = 175,
                yellow = 195,
                grey = 225,
                trainingCost = 0,
                recipeCost = 15,
                castTime = 45,
                sellPrice = 22.4,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Blue Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Azure Silk Hood"] = {
                trainable = true,
                orange = 145,
                yellow = 155,
                grey = 165,
                trainingCost = 6,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 7.45,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Blue Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Mageweave Gloves"] = {
                trainable = true,
                orange = 215,
                yellow = 230,
                grey = 260,
                trainingCost = 45,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 28.59,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Black Mageweave Leggings"] = {
                trainable = true,
                orange = 205,
                yellow = 220,
                grey = 250,
                trainingCost = 36,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 48.32,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Black Mageweave Shoulders"] = {
                trainable = true,
                orange = 230,
                yellow = 245,
                grey = 275,
                trainingCost = 60,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 54.79,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Black Silk Pack"] = {
                trainable = false,
                orange = 185,
                yellow = 205,
                grey = 235,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 40,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Blackmageweave Leggings"] = {
                trainable = true,
                orange = 205,
                yellow = 220,
                grey = 250,
                trainingCost = 36,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 48.32,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Bolt of Mageweave"] = {
                trainable = true,
                orange = 175,
                yellow = 180,
                grey = 185,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 12.5,
                materials = {
                    ["Mageweave Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Bolt of Runecloth"] = {
                trainable = true,
                orange = 250,
                yellow = 255,
                grey = 260,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 20,
                materials = {
                    ["Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Bright Yellow Shirt"] = {
                trainable = false,
                orange = 135,
                yellow = 145,
                grey = 155,
                trainingCost = 0,
                recipeCost = 8,
                castTime = 12.5,
                sellPrice = 5,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Yellow Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Cloak"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 97.16,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Gloves"] = {
                trainable = false,
                orange = 270,
                yellow = 285,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 60.66,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Brightcloth Pants"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 154.84,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Robe"] = {
                trainable = false,
                orange = 270,
                yellow = 285,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 120.89,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Cloak"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 95.03,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Gloves"] = {
                trainable = false,
                orange = 270,
                yellow = 285,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 59.55,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Pants"] = {
                trainable = false,
                orange = 280,
                yellow = 295,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 134.8,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Vest"] = {
                trainable = false,
                orange = 260,
                yellow = 275,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 105.61,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Colorful Kit"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 9.35,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Crimson Silk Pantaloons"] = {
                trainable = true,
                orange = 195,
                yellow = 215,
                grey = 235,
                trainingCost = 27,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 24.3,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Crimson Silk Vest"] = {
                trainable = true,
                orange = 185,
                yellow = 205,
                grey = 225,
                trainingCost = 22.5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 20.52,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Silk Shirt"] = {
                trainable = false,
                orange = 155,
                yellow = 165,
                grey = 175,
                trainingCost = 0,
                recipeCost = 11,
                castTime = 25,
                sellPrice = 12,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gray Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Earthen Vest"] = {
                trainable = true,
                orange = 170,
                yellow = 190,
                grey = 220,
                trainingCost = 8.1,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 26.96,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Enchanted Runecloth Bag"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 200,
                castTime = 60,
                sellPrice = 100,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Greater Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Felcloth Boots"] = {
                trainable = false,
                orange = 285,
                yellow = 300,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 111.12,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Felcloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Felcloth Hood"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 107.75,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Felcloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Felcloth Pants"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 60,
                sellPrice = 131.4,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Felcloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Formal White Shirt"] = {
                trainable = true,
                orange = 170,
                yellow = 180,
                grey = 190,
                trainingCost = 4.5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 5.5,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Bleach"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Gloves"] = {
                trainable = false,
                orange = 265,
                yellow = 280,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 54.71,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Pants"] = {
                trainable = false,
                orange = 280,
                yellow = 295,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 134.36,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Robe"] = {
                trainable = false,
                orange = 255,
                yellow = 270,
                grey = 300,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 96.65,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Globe of Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Tunic"] = {
                trainable = false,
                orange = 255,
                yellow = 270,
                grey = 300,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 97.02,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Globe of Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Belt"] = {
                trainable = false,
                orange = 265,
                yellow = 280,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 57.63,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Gloves"] = {
                trainable = false,
                orange = 270,
                yellow = 285,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 60.87,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Pants"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 143.74,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Vest"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 128.59,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gloves of Meditation"] = {
                trainable = true,
                orange = 130,
                yellow = 150,
                grey = 180,
                trainingCost = 7.5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 6.1,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Elixir of Wisdom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Greater Adept's Robe"] = {
                trainable = false,
                orange = 115,
                yellow = 140,
                grey = 175,
                trainingCost = 0,
                recipeCost = 8,
                castTime = 25,
                sellPrice = 8.84,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Icy Cloak"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 250,
                trainingCost = 0,
                recipeCost = 15,
                castTime = 45,
                sellPrice = 37.88,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Spider's Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Lavender Mageweave Shirt"] = {
                trainable = false,
                orange = 230,
                yellow = 235,
                grey = 245,
                trainingCost = 0,
                recipeCost = 40,
                castTime = 45,
                sellPrice = 30,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Purple Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Mageweave Bag"] = {
                trainable = true,
                orange = 225,
                yellow = 249,
                grey = 270,
                trainingCost = 45,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 25,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Orange Mageweave Shirt"] = {
                trainable = true,
                orange = 215,
                yellow = 220,
                grey = 230,
                trainingCost = 22.5,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 15,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Orange Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Phoenix Gloves"] = {
                trainable = false,
                orange = 125,
                yellow = 150,
                grey = 185,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 5.26,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Bleach"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Phoenix Pants"] = {
                trainable = false,
                orange = 125,
                yellow = 150,
                grey = 185,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 10.76,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Red Mageweave Bag"] = {
                trainable = true,
                orange = 235,
                yellow = 250,
                grey = 280,
                trainingCost = 65,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 25,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Red Mageweave Headband"] = {
                trainable = false,
                orange = 240,
                yellow = 255,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 60.75,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Red Mageweave Vest"] = {
                trainable = false,
                orange = 215,
                yellow = 230,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 57.99,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Red Woolen Bag"] = {
                trainable = false,
                orange = 115,
                yellow = 140,
                grey = 175,
                trainingCost = 0,
                recipeCost = 5,
                castTime = 25,
                sellPrice = 7,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Reinforced Woolen Shoulders"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 4.25,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Robe of Power"] = {
                trainable = true,
                orange = 190,
                yellow = 210,
                grey = 240,
                trainingCost = 9,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 47,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Air"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Belt"] = {
                trainable = true,
                orange = 255,
                yellow = 270,
                grey = 300,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 51.12,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Boots"] = {
                trainable = false,
                orange = 280,
                yellow = 295,
                grey = 320,
                trainingCost = 0,
                recipeCost = 200,
                castTime = 60,
                sellPrice = 95.53,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Cloak"] = {
                trainable = false,
                orange = 265,
                yellow = 280,
                grey = 310,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 60,
                sellPrice = 87.41,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Gloves"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 60,
                sellPrice = 66.17,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Headband"] = {
                trainable = false,
                orange = 295,
                yellow = 310,
                grey = 340,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 113.58,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Pants"] = {
                trainable = false,
                orange = 285,
                yellow = 300,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 135.55,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Robe"] = {
                trainable = false,
                orange = 260,
                yellow = 275,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 109.17,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Tunic"] = {
                trainable = false,
                orange = 260,
                yellow = 275,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 108.78,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Shadoweave Mask"] = {
                trainable = false,
                orange = 245,
                yellow = 260,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 67.9,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadow Silk"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Silk Headband"] = {
                trainable = true,
                orange = 160,
                yellow = 170,
                grey = 180,
                trainingCost = 6.75,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 9.99,
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Simple Black Dress"] = {
                trainable = true,
                orange = 235,
                yellow = 240,
                grey = 250,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 44.99,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Bleach"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Star Belt"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 21.2,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Stylish Blue Shirt"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 2.5,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Blue Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Stylish Green Shirt"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 2.5,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Tuxedo Jacket"] = {
                trainable = false,
                orange = 250,
                yellow = 265,
                grey = 295,
                trainingCost = 0,
                recipeCost = 50,
                castTime = 45,
                sellPrice = 17.41,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["White Bandit Mask"] = {
                trainable = false,
                orange = 215,
                yellow = 220,
                grey = 230,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 43.65,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bleach"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["White Woolen Dress"] = {
                trainable = true,
                orange = 110,
                yellow = 135,
                grey = 170,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 4.66,
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Bleach"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wizardweave Leggings"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 124.41,
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
        },
        SEGMENTS = { --TODO: add recipes from 1-145
            [110] = {
                "White Woolen Dress",
            },
            [115] = {
                "Red Woolen Bag",
                "Greater Adept's Robe",
            },
            [120] = {
                "Stylish Green Shirt",
                "Stylish Blue Shirt",
                "Reinforced Woolen Shoulders",
                "Colorful Kit",
            },
            [125] = {
                "Phoenix Pants",
                "Phoenix Gloves",
            },
            [130] = {
                "Gloves of Meditation",
            },
            [135] = {
                "Bright Yellow Shirt",
            },
            [145] = {
                "Azure Silk Hood",
            },
            [155] = {
                "Dark Silk Shirt",
            },
            [160] = {
                "Silk Headband",
            },
            [170] = {
                "Formal White Shirt",
                "Earthen Vest",
            },
            [175] = {
                "Bolt of Mageweave",
                "Azure Silk Cloak",
            },
            [185] = {
                "Crimson Silk Vest",
                "Black Silk Pack",
            },
            [190] = {
                "Robe of Power", --TODO: Stillow: Should most likeley not be considered
            },
            [195] = {
                "Crimson Silk Pantaloons", --TODO: there is some forcing to be done with this recipe
            },
            [200] = {
                "Icy Cloak",
                "Star Belt",
            },
            [205] = {
                "Black Mageweave Leggings",
                "Blackmageweave Leggings",
            },
            [215] = {
                "Orange Mageweave Shirt",
                "White Bandit Mask",
                "Red Mageweave Vest",
                "Black Mageweave Gloves",
            },
            [225] = {
                "Mageweave Bag",
            },
            [230] = {
                "Black Mageweave Shoulders",
                "Lavender Mageweave Shirt",
            },
            [235] = {
                "Simple Black Dress",
                "Red Mageweave Bag",
            },
            [240] = {
                "Admiral's Hat",
                "Red Mageweave Headband",
            },
            [245] = {
                "Shadoweave Mask",
            },
            [250] = {
                "Bolt of Runecloth",
                "Tuxedo Jacket",
            },
            [255] = {
                "Runecloth Belt",
                "Frostweave Robe",
                "Frostweave Tunic",
            },
            [260] = {
                "Cindercloth Vest",
                "Runecloth Robe",
                "Runecloth Tunic",
            },
            [265] = {
                "Ghostweave Belt",
                "Frostweave Gloves",
                "Runecloth Cloak",
            },
            [270] = {
                "Ghostweave Gloves",
                "Cindercloth Gloves",
                "Brightcloth Gloves",
                "Brightcloth Robe",
            },
            [275] = {
                "Brightcloth Cloak",
                "Cindercloth Cloak",
                "Enchanted Runecloth Bag",
                "Felcloth Pants",
                "Ghostweave Vest",
                "Runecloth Gloves",
                "Wizardweave Leggings",
            },
            [280] = {
                "Cindercloth Pants",
                "Frostweave Pants",
                "Runecloth Boots",
            },
            [285] = {
                "Felcloth Boots",
                "Runecloth Pants",
            },
            [290] = {
                "Brightcloth Pants",
                "Felcloth Hood",
                "Ghostweave Pants",
            },
            [295] = {
                "Runecloth Headband",
            },
        },
    },
    ["enchanting"] = { --TODO: some recipies do not have sell cost???
        RECIPES = {
            ["Enchant 2H Weapon - Lesser Intellect"] = {
                trainable = false,
                orange = 100,
                yellow = 130,
                grey = 170,
                trainingCost = 0,
                recipeCost = 5,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Magic Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant 2H Weapon - Minor Impact"] = {
                trainable = true,
                orange = 100,
                yellow = 130,
                grey = 170,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Small Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Agility"] = {
                trainable = true,
                orange = 235,
                yellow = 255,
                grey = 295,
                trainingCost = 58,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Greater Agility"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 355,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Greater Stamina"] = {
                trainable = false,
                orange = 260,
                yellow = 280,
                grey = 320,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Lesser Agility"] = {
                trainable = true,
                orange = 160,
                yellow = 180,
                grey = 220,
                trainingCost = 28,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Lesser Stamina"] = {
                trainable = true,
                orange = 170,
                yellow = 190,
                grey = 230,
                trainingCost = 28,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Minor Speed"] = {
                trainable = true,
                orange = 225,
                yellow = 245,
                grey = 285,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Small Radiant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Minor Stamina"] = {
                trainable = true,
                orange = 125,
                yellow = 150,
                grey = 190,
                trainingCost = 14,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Spirit"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Eternal Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Stamina"] = {
                trainable = true,
                orange = 215,
                yellow = 235,
                grey = 275,
                trainingCost = 46,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Vision Dust"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Greater Intellect"] = {
                trainable = false,
                orange = 255,
                yellow = 275,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Greater Stamina"] = {
                trainable = false,
                orange = 245,
                yellow = 265,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Dream Dust"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Greater Strength"] = {
                trainable = true,
                orange = 240,
                yellow = 260,
                grey = 300,
                trainingCost = 62,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Dream Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Intellect"] = {
                trainable = true,
                orange = 210,
                yellow = 230,
                grey = 270,
                trainingCost = 44,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Intellect"] = {
                trainable = true,
                orange = 150,
                yellow = 175,
                grey = 215,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Spirit"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 185,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Stamina"] = {
                trainable = true,
                orange = 130,
                yellow = 155,
                grey = 195,
                trainingCost = 15,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Strength"] = {
                trainable = false,
                orange = 140,
                yellow = 165,
                grey = 205,
                trainingCost = 0,
                recipeCost = 25,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Agility"] = {
                trainable = true,
                orange = 80,
                yellow = 115,
                grey = 155,
                trainingCost = 4,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Deflect"] = {
                trainable = true,
                orange = 1,
                yellow = 80,
                grey = 120,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Health"] = {
                trainable = true,
                orange = 1,
                yellow = 70,
                grey = 110,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Spirit"] = {
                trainable = false,
                orange = 60,
                yellow = 105,
                grey = 145,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Magic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Stamina"] = {
                trainable = true,
                orange = 50,
                yellow = 100,
                grey = 140,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Strength"] = {
                trainable = false,
                orange = 80,
                yellow = 115,
                grey = 155,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Spirit"] = {
                trainable = true,
                orange = 165,
                yellow = 185,
                grey = 225,
                trainingCost = 28,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Strength"] = {
                trainable = true,
                orange = 180,
                yellow = 200,
                grey = 240,
                trainingCost = 36,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Vision Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Superior Spirit"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Superior Strength"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 355,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Illusion Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Greater Eternal Essence"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Greater Health"] = {
                trainable = true,
                orange = 160,
                yellow = 180,
                grey = 220,
                trainingCost = 27,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Greater Mana"] = {
                trainable = true,
                orange = 185,
                yellow = 205,
                grey = 245,
                trainingCost = 38,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Lesser Absorption"] = {
                trainable = true,
                orange = 140,
                yellow = 165,
                grey = 205,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Lesser Health"] = {
                trainable = true,
                orange = 60,
                yellow = 105,
                grey = 145,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Lesser Mana"] = {
                trainable = false,
                orange = 80,
                yellow = 115,
                grey = 155,
                trainingCost = 0,
                recipeCost = 4,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Major Health"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 335,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Illusion Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Small Brilliant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Major Mana"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 350,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Small Brilliant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Mana"] = {
                trainable = true,
                orange = 145,
                yellow = 170,
                grey = 210,
                trainingCost = 24,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Minor Absorption"] = {
                trainable = true,
                orange = 40,
                yellow = 90,
                grey = 130,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Minor Mana"] = {
                trainable = false,
                orange = 20,
                yellow = 80,
                grey = 120,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Minor Stats"] = {
                trainable = true,
                orange = 150,
                yellow = 175,
                grey = 215,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Superior Health"] = {
                trainable = true,
                orange = 220,
                yellow = 240,
                grey = 280,
                trainingCost = 48,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Vision Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Superior Mana"] = {
                trainable = true,
                orange = 230,
                yellow = 250,
                grey = 290,
                trainingCost = 54,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Defense"] = {
                trainable = true,
                orange = 155,
                yellow = 175,
                grey = 215,
                trainingCost = 26,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Small Glowing Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Greater Defense"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 265,
                trainingCost = 42,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Greater Resistance"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Core of Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Globe of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Breath of Wind"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Ichor of Undeath"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Lesser Agility"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Lesser Fire Resistance"] = {
                trainable = true,
                orange = 125,
                yellow = 150,
                grey = 190,
                trainingCost = 12.5,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Fire Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Lesser Shadow Resistance"] = {
                trainable = false,
                orange = 135,
                yellow = 160,
                grey = 200,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Shadow Protection Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Minor Agility"] = {
                trainable = false,
                orange = 110,
                yellow = 135,
                grey = 175,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Minor Resistance"] = {
                trainable = true,
                orange = 45,
                yellow = 95,
                grey = 135,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Resistance"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 265,
                trainingCost = 42,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Superior Defense"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 200,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Illusion Dust"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Advanced Herbalism"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Sungrass"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Advanced Mining"] = {
                trainable = false,
                orange = 215,
                yellow = 235,
                grey = 275,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Agility"] = {
                trainable = true,
                orange = 210,
                yellow = 230,
                grey = 270,
                trainingCost = 44,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Vision Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Fishing"] = {
                trainable = false,
                orange = 145,
                yellow = 170,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blackmouth Oil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Greater Agility"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Illusion Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Greater Strength"] = {
                trainable = false,
                orange = 295,
                yellow = 315,
                grey = 355,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Illusion Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Herbalism"] = {
                trainable = false,
                orange = 145,
                yellow = 170,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Mining"] = {
                trainable = false,
                orange = 145,
                yellow = 170,
                grey = 210,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iron Ore"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Strength"] = {
                trainable = true,
                orange = 225,
                yellow = 245,
                grey = 285,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Greater Spirit"] = {
                trainable = true,
                orange = 230,
                yellow = 250,
                grey = 290,
                trainingCost = 54,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Greater Stamina"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 325,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Lesser Protection"] = {
                trainable = false,
                orange = 115,
                yellow = 140,
                grey = 180,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Small Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Lesser Spirit"] = {
                trainable = true,
                orange = 130,
                yellow = 155,
                grey = 195,
                trainingCost = 15,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Lesser Stamina"] = {
                trainable = true,
                orange = 155,
                yellow = 175,
                grey = 215,
                trainingCost = 26,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Minor Stamina"] = {
                trainable = true,
                orange = 105,
                yellow = 130,
                grey = 170,
                trainingCost = 6,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Superior Spirit"] = {
                trainable = false,
                orange = 280,
                yellow = 300,
                grey = 340,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Illusion Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Demonslaying"] = {
                trainable = false,
                orange = 230,
                yellow = 250,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Small Radiant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elixir of Demonslaying"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Fiery Weapon"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Small Radiant Shard"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Icy Chill"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Small Brilliant Shard"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Essence of Air"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Icecap"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Lesser Striking"] = {
                trainable = true,
                orange = 140,
                yellow = 165,
                grey = 205,
                trainingCost = 20,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Large Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Minor Striking"] = {
                trainable = true,
                orange = 90,
                yellow = 120,
                grey = 160,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Small Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchanted Leather"] = {
                trainable = true,
                orange = 250,
                yellow = 250,
                grey = 260,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Rugged Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Eternal Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchanted Thorium"] = {
                trainable = true,
                orange = 250,
                yellow = 250,
                grey = 260,
                trainingCost = 100,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Thorium Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Greater Magic Wand"] = {
                trainable = true,
                orange = 70,
                yellow = 110,
                grey = 150,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 10,
                sellPrice = 15.35,
                materials = {
                    ["Simple Wood"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Greater Magic Want"] = {
                trainable = true,
                orange = 70,
                yellow = 110,
                grey = 150,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 10,
                sellPrice = 15.35,
                materials = {
                    ["Simple Wood"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Lesser Magic Wand"] = {
                trainable = true,
                orange = 10,
                yellow = 75,
                grey = 115,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 10,
                sellPrice = 5.08,
                materials = {
                    ["Simple Wood"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Lesser Mana Oil"] = {
                trainable = false,
                orange = 250,
                yellow = 260,
                grey = 280,
                trainingCost = 0,
                recipeCost = 100,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Dream Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Mana Oil"] = {
                trainable = false,
                orange = 150,
                yellow = 160,
                grey = 180,
                trainingCost = 0,
                recipeCost = 30,
                castTime = 5,
                sellPrice = 10,
                materials = {
                    ["Soul Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Maple Seed"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runed Copper Rod"] = {
                trainable = true,
                orange = 1,
                yellow = 5,
                grey = 10,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 10,
                sellPrice = 0.24,
                materials = {
                    ["Copper Rod"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Golden Rod"] = {
                trainable = true,
                orange = 150,
                yellow = 175,
                grey = 215,
                trainingCost = 25,
                recipeCost = 0,
                castTime = 30,
                sellPrice = 0,
                materials = {
                    ["Golden Rod"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Greater Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Silver Rod"] = {
                trainable = true,
                orange = 100,
                yellow = 130,
                grey = 170,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 30,
                sellPrice = 0.24,
                materials = {
                    ["Silver Rod"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Greater Magic Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Truesilver Rod"] = {
                trainable = true,
                orange = 200,
                yellow = 220,
                grey = 260,
                trainingCost = 40,
                recipeCost = 0,
                castTime = 30,
                sellPrice = 0,
                materials = {
                    ["Truesilver Rod"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Greater Mystic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Vision Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Wizard Oil"] = {
                trainable = false,
                orange = 275,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 200,
                castTime = 5,
                sellPrice = 0,
                materials = {
                    ["Illusion Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Firebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
        },
        SEGMENTS = {
            [1] = {
                "Runed Copper Rod",
                "Enchant Bracer - Minor Health",
                "Enchant Bracer - Minor Deflect",
            },
            [10] = {
                "Lesser Magic Wand",
            },
            [20] = {
                "Enchant Chest - Minor Mana",
            },
            [40] = {
                "Enchant Chest - Minor Absorption",
            },
            [45] = {
                "Enchant Cloak - Minor Resistance",
            },
            [50] = {
                "Enchant Bracer - Minor Stamina",
            },
            [60] = {
                "Enchant Bracer - Minor Spirit",
                "Enchant Chest - Lesser Health",
            },
            [70] = {
                "Greater Magic Wand",
                "Greater Magic Want",
            },
            [80] = {
                "Enchant Bracer - Minor Agility",
                "Enchant Chest - Lesser Mana",
                "Enchant Bracer - Minor Strength",
            },
            [90] = {
                "Enchant Weapon - Minor Striking",
            },
            [100] = {
                "Runed Silver Rod",
                "Enchant 2H Weapon - Minor Impact",
                "Enchant 2H Weapon - Lesser Intellect",
            },
            [105] = {
                "Enchant Shield - Minor Stamina",
            },
            [110] = {
                "Enchant Cloak - Minor Agility",
            },
            [115] = {
                "Enchant Shield - Lesser Protection",
            },
            [120] = {
                "Enchant Bracer - Lesser Spirit",
            },
            [125] = {
                "Enchant Boots - Minor Stamina",
                "Enchant Cloak - Lesser Fire Resistance",
            },
            [130] = {
                "Enchant Bracer - Lesser Stamina",
                "Enchant Shield - Lesser Spirit",
            },
            [135] = {
                "Enchant Cloak - Lesser Shadow Resistance",
            },
            [140] = {
                "Enchant Chest - Lesser Absorption",
                "Enchant Weapon - Lesser Striking",
                "Enchant Bracer - Lesser Strength",
            },
            [145] = {
                "Enchant Chest - Mana",
                "Enchant Gloves - Fishing",
                "Enchant Gloves - Herbalism",
                "Enchant Gloves - Mining",
            },
            [150] = {
                "Runed Golden Rod",
                "Enchant Chest - Minor Stats",
                "Minor Mana Oil",
                "Enchant Bracer - Lesser Intellect",
            },
            [155] = {
                "Enchant Cloak - Defense",
                "Enchant Shield - Lesser Stamina",
            },
            [160] = {
                "Enchant Boots - Lesser Agility",
                "Enchant Chest - Greater Health",
            },
            [165] = {
                "Enchant Bracer - Spirit",
            },
            [170] = {
                "Enchant Boots - Lesser Stamina",
            },
            [180] = {
                "Enchant Bracer - Strength",
            },
            [185] = {
                "Enchant Chest - Greater Mana",
            },
            [200] = {
                "Runed Truesilver Rod",
            },
            [205] = {
                "Enchant Cloak - Resistance",
                "Enchant Cloak - Greater Defense",
            },
            [210] = {
                "Enchant Gloves - Agility",
                "Enchant Bracer - Intellect",
            },
            [215] = {
                "Enchant Boots - Stamina",
                "Enchant Gloves - Advanced Mining",
            },
            [220] = {
                "Enchant Chest - Superior Health",
            },
            [225] = {
                "Enchant Boots - Minor Speed",
                "Enchant Cloak - Lesser Agility",
                "Enchant Gloves - Advanced Herbalism",
                "Enchant Gloves - Strength",
            },
            [230] = {
                "Enchant Weapon - Demonslaying",
                "Enchant Chest - Superior Mana",
                "Enchant Shield - Greater Spirit",
            },
            [235] = {
                "Enchant Boots - Agility",
            },
            [240] = {
                "Enchant Bracer - Greater Strength",
            },
            [245] = {
                "Enchant Bracer - Greater Stamina",
            },
            [250] = {
                "Enchanted Leather",
                "Enchanted Thorium",
                "Lesser Mana Oil",
            },
            [255] = {
                "Enchant Bracer - Greater Intellect",
            },
            [260] = {
                "Enchant Boots - Greater Stamina",
            },
            [265] = {
                "Enchant Cloak - Greater Resistance",
                "Enchant Shield - Greater Stamina",
                "Enchant Weapon - Fiery Weapon",
            },
            [270] = {
                "Enchant Bracer - Superior Spirit",
                "Enchant Gloves - Greater Agility",
            },
            [275] = {
                "Wizard Oil",
                "Enchant Boots - Spirit",
                "Enchant Chest - Major Health",
            },
            [280] = {
                "Enchant Shield - Superior Spirit",
            },
            [285] = {
                "Enchant Cloak - Superior Defense",
                "Enchant Weapon - Icy Chill",
            },
            [290] = {
                "Enchant Chest - Major Mana",
            },
            [295] = {
                "Enchant Boots - Greater Agility",
                "Enchant Bracer - Superior Strength",
                "Enchant Gloves - Greater Strength",
            },
        },
    },
    ["alchemy"] = {
        RECIPES = {
            ["Arcane Elixir"] = {
                trainable = true,
                orange = 235,
                yellow = 250,
                grey = 290,
                trainingCost = 90,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 4,
                materials = {
                    ["Blindweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Blackmouth Oil"] = {
                trainable = true,
                orange = 80,
                yellow = 80,
                grey = 100,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0.1,
                materials = {
                    ["Oily Blackmouth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Catseye Elixir"] = {
                trainable = true,
                orange = 200,
                yellow = 220,
                grey = 260,
                trainingCost = 72,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 1.5,
                materials = {
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fadeleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Discolored Healing Potion"] = {
                trainable = false,
                orange = 50,
                yellow = 80,
                grey = 120,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.25,
                materials = {
                    ["Discolored Worg Heart"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dreamless Sleep Potion"] = {
                trainable = true,
                orange = 230,
                yellow = 245,
                grey = 285,
                trainingCost = 90,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2.5,
                materials = {
                    ["Purple Lotus"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Agility"] = {
                trainable = true,
                orange = 185,
                yellow = 205,
                grey = 245,
                trainingCost = 58.5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2,
                materials = {
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Brute Force"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 12.5,
                materials = {
                    ["Gromsblood"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Defense"] = {
                trainable = true,
                orange = 130,
                yellow = 155,
                grey = 195,
                trainingCost = 20,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.4,
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Demonslaying"] = {
                trainable = false,
                orange = 250,
                yellow = 265,
                grey = 305,
                trainingCost = 0,
                recipeCost = 100,
                castTime = 3,
                sellPrice = 7,
                materials = {
                    ["Gromsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Ghost Mushroom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Detect Demon"] = {
                trainable = true,
                orange = 250,
                yellow = 265,
                grey = 305,
                trainingCost = 126,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 5,
                materials = {
                    ["Gromsblood"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Detect Lesser Invisibility"] = {
                trainable = false,
                orange = 195,
                yellow = 215,
                grey = 255,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 1.5,
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fadeleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Detect Undead"] = {
                trainable = true,
                orange = 230,
                yellow = 245,
                grey = 285,
                trainingCost = 45,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 3,
                materials = {
                    ["Arthas' Tears"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Dream Vision"] = {
                trainable = false,
                orange = 240,
                yellow = 255,
                grey = 295,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 6,
                materials = {
                    ["Purple Lotus"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Firepower"] = {
                trainable = true,
                orange = 140,
                yellow = 165,
                grey = 205,
                trainingCost = 30,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Fire Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Fortitude"] = {
                trainable = true,
                orange = 175,
                yellow = 195,
                grey = 235,
                trainingCost = 54,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 1.1,
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Frost Power"] = {
                trainable = false,
                orange = 190,
                yellow = 210,
                grey = 250,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Wintersbite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Giant Growth"] = {
                trainable = false,
                orange = 90,
                yellow = 120,
                grey = 160,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.95,
                materials = {
                    ["Deviate Fish"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Earthroot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Giants"] = {
                trainable = false,
                orange = 245,
                yellow = 260,
                grey = 300,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7,
                materials = {
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gromsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Agility"] = {
                trainable = true,
                orange = 240,
                yellow = 255,
                grey = 295,
                trainingCost = 108,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 6,
                materials = {
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Defense"] = {
                trainable = true,
                orange = 195,
                yellow = 215,
                grey = 255,
                trainingCost = 67.5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2,
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Firepower"] = {
                trainable = false,
                orange = 250,
                yellow = 265,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Fire Oil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Firebloom"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Intellect"] = {
                trainable = true,
                orange = 235,
                yellow = 250,
                grey = 290,
                trainingCost = 108,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 10,
                materials = {
                    ["Blindweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Water Breathing"] = {
                trainable = true,
                orange = 215,
                yellow = 230,
                grey = 270,
                trainingCost = 90,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2.5,
                materials = {
                    ["Ichor of Undeath"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Lesser Agility"] = {
                trainable = false,
                orange = 140,
                yellow = 165,
                grey = 205,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Lion's Strength"] = {
                trainable = true,
                orange = 1,
                yellow = 55,
                grey = 95,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.2,
                materials = {
                    ["Earthroot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Minor Agility"] = {
                trainable = false,
                orange = 50,
                yellow = 80,
                grey = 120,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.15,
                materials = {
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Minor Defense"] = {
                trainable = true,
                orange = 1,
                yellow = 55,
                grey = 95,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.05,
                materials = {
                    ["Silverleaf"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Minor Fortitude"] = {
                trainable = true,
                orange = 50,
                yellow = 80,
                grey = 120,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.15,
                materials = {
                    ["Earthroot"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Ogre's Strength"] = {
                trainable = false,
                orange = 150,
                yellow = 175,
                grey = 215,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.2,
                materials = {
                    ["Earthroot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Poison Resistance"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 185,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Large Venom Sac"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Shadow Power"] = {
                trainable = false,
                orange = 250,
                yellow = 265,
                grey = 305,
                trainingCost = 0,
                recipeCost = 100,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Ghost Mushroom"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Superior Defense"] = {
                trainable = false,
                orange = 265,
                yellow = 280,
                grey = 320,
                trainingCost = 0,
                recipeCost = 130,
                castTime = 3,
                sellPrice = 5,
                materials = {
                    ["Stonescale Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Water Breathing"] = {
                trainable = true,
                orange = 90,
                yellow = 120,
                grey = 160,
                trainingCost = 4.5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.95,
                materials = {
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blackmouth Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Wisdom"] = {
                trainable = true,
                orange = 90,
                yellow = 120,
                grey = 160,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 1,
                materials = {
                    ["Mageroyal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of the Mongoose"] = {
                trainable = false,
                orange = 280,
                yellow = 295,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 12.5,
                materials = {
                    ["Mountain Silversage"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of the Sages"] = {
                trainable = false,
                orange = 270,
                yellow = 285,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 12.5,
                materials = {
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fire Oil"] = {
                trainable = true,
                orange = 130,
                yellow = 150,
                grey = 170,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 0.12,
                materials = {
                    ["Firefin Snapper"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fire Protection Potion"] = {
                trainable = false,
                orange = 165,
                yellow = 210,
                grey = 250,
                trainingCost = 0,
                recipeCost = 15,
                castTime = 3,
                sellPrice = 1.7,
                materials = {
                    ["Small Flame Sac"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fire Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Free Action Potion"] = {
                trainable = false,
                orange = 150,
                yellow = 175,
                grey = 215,
                trainingCost = 0,
                recipeCost = 18,
                castTime = 3,
                sellPrice = 0.75,
                materials = {
                    ["Blackmouth Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frost Oil"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 260,
                trainingCost = 0,
                recipeCost = 25,
                castTime = 5,
                sellPrice = 1.5,
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Wintersbite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frost Protection Potion"] = {
                trainable = false,
                orange = 190,
                yellow = 205,
                grey = 245,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 3,
                sellPrice = 3,
                materials = {
                    ["Wintersbite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghost Dye"] = {
                trainable = false,
                orange = 245,
                yellow = 260,
                grey = 300,
                trainingCost = 0,
                recipeCost = 90,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Ghost Mushroom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Purple Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gift of Arthas"] = {
                trainable = false,
                orange = 240,
                yellow = 255,
                grey = 295,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2.5,
                materials = {
                    ["Arthas' Tears"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blindweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Goblin Rocket Fuel"] = {
                trainable = false,
                orange = 210,
                yellow = 225,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2.5,
                materials = {
                    ["Firebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Volatile Rum"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Great Rage Potion"] = {
                trainable = false,
                orange = 175,
                yellow = 195,
                grey = 235,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 3,
                sellPrice = 1.5,
                materials = {
                    ["Large Fang"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Arcane Elixir"] = {
                trainable = false,
                orange = 285,
                yellow = 300,
                grey = 340,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Dreamfoil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Mountain Silversage"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Arcane Protection Potion"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Fire Protection Potion"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Elemental Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Frost Protection Potion"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Elemental Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Healing Potion"] = {
                trainable = true,
                orange = 155,
                yellow = 175,
                grey = 215,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 1.25,
                materials = {
                    ["Liferoot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Mana Potion"] = {
                trainable = true,
                orange = 205,
                yellow = 220,
                grey = 260,
                trainingCost = 81,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 1.2,
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Nature Protection Potion"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Shadow Protection Potion"] = {
                trainable = false,
                orange = 290,
                yellow = 305,
                grey = 345,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 1,
                materials = {
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Stoneshield Potion"] = {
                trainable = false,
                orange = 280,
                yellow = 295,
                grey = 335,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Stonescale Oil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Thorium Ore"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Healing Potion"] = {
                trainable = true,
                orange = 110,
                yellow = 135,
                grey = 175,
                trainingCost = 40,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.75,
                materials = {
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Holy Protection Potion"] = {
                trainable = false,
                orange = 100,
                yellow = 130,
                grey = 170,
                trainingCost = 0,
                recipeCost = 8,
                castTime = 3,
                sellPrice = 0.62,
                materials = {
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Invisibility Potion"] = {
                trainable = false,
                orange = 235,
                yellow = 250,
                grey = 290,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 5,
                materials = {
                    ["Ghost Mushroom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Healing Potion"] = {
                trainable = true,
                orange = 55,
                yellow = 85,
                grey = 125,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.25,
                materials = {
                    ["Minor Healing Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Lesser Invisibility Potion"] = {
                trainable = true,
                orange = 165,
                yellow = 185,
                grey = 225,
                trainingCost = 45,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 1,
                materials = {
                    ["Fadeleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Mana Potion"] = {
                trainable = true,
                orange = 120,
                yellow = 145,
                grey = 185,
                trainingCost = 15,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.3,
                materials = {
                    ["Mageroyal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Stoneshield Potion"] = {
                trainable = false,
                orange = 215,
                yellow = 230,
                grey = 270,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 3.75,
                materials = {
                    ["Mithril Ore"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Limited Invulnerability Potion"] = {
                trainable = false,
                orange = 250,
                yellow = 275,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.3,
                materials = {
                    ["Blindweed"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ghost Mushroom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Magic Resistance Potion"] = {
                trainable = false,
                orange = 210,
                yellow = 225,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.2,
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Major Healing Potion"] = {
                trainable = false,
                orange = 275,
                yellow = 290,
                grey = 330,
                trainingCost = 0,
                recipeCost = 150,
                castTime = 3,
                sellPrice = 10,
                materials = {
                    ["Golden Sansam"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Mountain Silversage"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Major Mana Potion"] = {
                trainable = false,
                orange = 295,
                yellow = 310,
                grey = 350,
                trainingCost = 0,
                recipeCost = 300,
                castTime = 3,
                sellPrice = 15,
                materials = {
                    ["Dreamfoil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Icecap"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Mana Potion"] = {
                trainable = true,
                orange = 160,
                yellow = 180,
                grey = 220,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 1.2,
                materials = {
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Mighty Rage Potion"] = {
                trainable = false,
                orange = 255,
                yellow = 270,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 5,
                materials = {
                    ["Gromsblood"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Mighty Troll's Blood Potion"] = {
                trainable = false,
                orange = 180,
                yellow = 200,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5,
                sellPrice = 1.05,
                materials = {
                    ["Liferoot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Healing Potion"] = {
                trainable = true,
                orange = 1,
                yellow = 55,
                grey = 95,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.05,
                materials = {
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Magic Resistance Potion"] = {
                trainable = false,
                orange = 110,
                yellow = 135,
                grey = 175,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.2,
                materials = {
                    ["Mageroyal"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Mana Potion"] = {
                trainable = true,
                orange = 25,
                yellow = 65,
                grey = 105,
                trainingCost = 1,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.1,
                materials = {
                    ["Mageroyal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Rejuvenation Potion"] = {
                trainable = true,
                orange = 40,
                yellow = 70,
                grey = 110,
                trainingCost = 1.5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.15,
                materials = {
                    ["Mageroyal"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Nature Protection Potion"] = {
                trainable = false,
                orange = 190,
                yellow = 210,
                grey = 250,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 3,
                sellPrice = 3,
                materials = {
                    ["Liferoot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Oil of Immolation"] = {
                trainable = true,
                orange = 205,
                yellow = 220,
                grey = 260,
                trainingCost = 72,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2,
                materials = {
                    ["Firebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Philosophers' Stone"] = {
                trainable = false,
                orange = 225,
                yellow = 240,
                grey = 280,
                trainingCost = 0,
                recipeCost = 80,
                castTime = 30,
                sellPrice = 2.5,
                materials = {
                    ["Iron Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Black Vitriol"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Firebloom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Purification Potion"] = {
                trainable = false,
                orange = 285,
                yellow = 300,
                grey = 340,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 7.5,
                materials = {
                    ["Icecap"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Rage Potion"] = {
                trainable = false,
                orange = 60,
                yellow = 90,
                grey = 130,
                trainingCost = 0,
                recipeCost = 1,
                castTime = 3,
                sellPrice = 0.3,
                materials = {
                    ["Sharp Claw"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Shadow Oil"] = {
                trainable = false,
                orange = 165,
                yellow = 190,
                grey = 230,
                trainingCost = 0,
                recipeCost = 15,
                castTime = 3,
                sellPrice = 1.5,
                materials = {
                    ["Fadeleaf"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Grave Moss"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Shadow Protection Potion"] = {
                trainable = false,
                orange = 135,
                yellow = 160,
                grey = 200,
                trainingCost = 0,
                recipeCost = 9,
                castTime = 3,
                sellPrice = 1,
                materials = {
                    ["Grave Moss"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Stonescale Oil"] = {
                trainable = true,
                orange = 250,
                yellow = 250,
                grey = 260,
                trainingCost = 135,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 1.25,
                materials = {
                    ["Stonescale Eel"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Strong Troll's Blood Potion"] = {
                trainable = true,
                orange = 125,
                yellow = 150,
                grey = 190,
                trainingCost = 15,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.4,
                materials = {
                    ["Bruiseweed"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Superior Healing Potion"] = {
                trainable = true,
                orange = 215,
                yellow = 230,
                grey = 270,
                trainingCost = 90,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2.5,
                materials = {
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Superior Mana Potion"] = {
                trainable = false,
                orange = 260,
                yellow = 275,
                grey = 315,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 3,
                sellPrice = 4,
                materials = {
                    ["Sungrass"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Blindweed"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Swiftness Potion"] = {
                trainable = false,
                orange = 60,
                yellow = 90,
                grey = 130,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.25,
                materials = {
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Swim Speed Potion"] = {
                trainable = true,
                orange = 100,
                yellow = 130,
                grey = 170,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.35,
                materials = {
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blackmouth Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Weak Troll's Blood Potion"] = {
                trainable = true,
                orange = 15,
                yellow = 60,
                grey = 100,
                trainingCost = 0.5,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 0.1,
                materials = {
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Earthroot"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wildvine Potion"] = {
                trainable = false,
                orange = 225,
                yellow = 240,
                grey = 280,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 3,
                sellPrice = 2.5,
                materials = {
                    ["Wildvine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
        },
        SEGMENTS = {
            [1] = {
                "Elixir of Lion's Strength",
                "Elixir of Minor Defense",
                "Minor Healing Potion",
            },
            [15] = {
                "Weak Troll's Blood Potion",
            },
            [25] = {
                "Minor Mana Potion",
            },
            [40] = {
                "Minor Rejuvenation Potion",
            },
            [50] = {
                "Elixir of Minor Fortitude",
                "Discolored Healing Potion",
                "Elixir of Minor Agility",
            },
            [55] = {
                "Lesser Healing Potion",
            },
            [60] = {
                "Rage Potion",
                "Swiftness Potion",
            },
            [80] = {
                "Blackmouth Oil",
            },
            [90] = {
                "Elixir of Water Breathing",
                "Elixir of Wisdom",
                "Elixir of Giant Growth",
            },
            [100] = {
                "Swim Speed Potion",
                "Holy Protection Potion",
            },
            [110] = {
                "Healing Potion",
                "Minor Magic Resistance Potion",
            },
            [120] = {
                "Lesser Mana Potion",
                "Elixir of Poison Resistance",
            },
            [125] = {
                "Strong Troll's Blood Potion",
            },
            [130] = {
                "Fire Oil",
                "Elixir of Defense",
            },
            [135] = {
                "Shadow Protection Potion",
            },
            [140] = {
                "Elixir of Firepower",
                "Elixir of Lesser Agility",
            },
            [150] = {
                "Elixir of Ogre's Strength",
                "Free Action Potion",
            },
            [155] = {
                "Greater Healing Potion",
            },
            [160] = {
                "Mana Potion",
            },
            [165] = {
                "Lesser Invisibility Potion",
                "Shadow Oil",
                "Fire Protection Potion",
            },
            [175] = {
                "Elixir of Fortitude",
                "Great Rage Potion",
            },
            [180] = {
                "Mighty Troll's Blood Potion",
            },
            [185] = {
                "Elixir of Agility",
            },
            [190] = {
                "Frost Protection Potion",
                "Elixir of Frost Power",
                "Nature Protection Potion",
            },
            [195] = {
                "Elixir of Greater Defense",
                "Elixir of Detect Lesser Invisibility",
            },
            [200] = {
                "Catseye Elixir",
                "Frost Oil",
            },
            [205] = {
                "Greater Mana Potion",
                "Oil of Immolation",
            },
            [210] = {
                "Goblin Rocket Fuel",
                "Magic Resistance Potion",
            },
            [215] = {
                "Elixir of Greater Water Breathing",
                "Superior Healing Potion",
                "Lesser Stoneshield Potion",
            },
            [225] = {
                "Philosophers' Stone",
                "Wildvine Potion",
            },
            [230] = {
                "Dreamless Sleep Potion",
                "Elixir of Detect Undead",
            },
            [235] = {
                "Arcane Elixir",
                "Elixir of Greater Intellect",
                "Invisibility Potion",
            },
            [240] = {
                "Elixir of Greater Agility",
                "Elixir of Dream Vision",
                "Gift of Arthas",
            },
            [245] = {
                "Elixir of Giants",
                "Ghost Dye",
            },
            [250] = {
                "Stonescale Oil",
                "Elixir of Detect Demon",
                "Elixir of Demonslaying",
                "Elixir of Greater Firepower",
                "Elixir of Shadow Power",
                "Limited Invulnerability Potion",
            },
            [255] = {
                "Mighty Rage Potion",
            },
            [260] = {
                "Superior Mana Potion",
            },
            [265] = {
                "Elixir of Superior Defense",
            },
            [270] = {
                "Elixir of the Sages",
            },
            [275] = {
                "Elixir of Brute Force",
                "Major Healing Potion",
            },
            [280] = {
                "Elixir of the Mongoose",
                "Greater Stoneshield Potion",
            },
            [285] = {
                "Greater Arcane Elixir",
                "Purification Potion",
            },
            [290] = {
                "Greater Arcane Protection Potion",
                "Greater Fire Protection Potion",
                "Greater Frost Protection Potion",
                "Greater Nature Protection Potion",
                "Greater Shadow Protection Potion",
            },
            [295] = {
                "Major Mana Potion",
            },
        },
    },
    ["engineering"] = {
        RECIPES = {
            ["Accurate Scope"] = {
                trainable = false,
                orange = 180,
                yellow = 200,
                grey = 220,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 25,
                sellPrice = 12,
                materials = {
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Advanced Target Dummy"] = {
                trainable = true,
                orange = 185,
                yellow = 185,
                grey = 225,
                trainingCost = 12,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 25,
                materials = {
                    ["Iron Strut"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Alarm-O-Bot"] = {
                trainable = false,
                orange = 265,
                yellow = 275,
                grey = 285,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 15,
                materials = {
                    ["Thorium Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Aquadynamic Fish Attractor"] = {
                trainable = true,
                orange = 150,
                yellow = 150,
                grey = 170,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.86,
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Nightcrawlers"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Coarse Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Arclight Spanner"] = {
                trainable = true,
                orange = 50,
                yellow = 70,
                grey = 90,
                trainingCost = 1.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.44,
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Big Bronze Bomb"] = {
                trainable = true,
                orange = 140,
                yellow = 140,
                grey = 190,
                trainingCost = 6,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 15,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Big Iron Bomb"] = {
                trainable = true,
                orange = 190,
                yellow = 190,
                grey = 230,
                trainingCost = 14,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 15,
                materials = {
                    ["Iron Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Blue Firework"] = {
                trainable = false,
                orange = 150,
                yellow = 150,
                grey = 175,
                trainingCost = 0,
                recipeCost = 18,
                castTime = 5.125,
                sellPrice = 0.15,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bright-Eye Goggles"] = {
                trainable = false,
                orange = 175,
                yellow = 195,
                grey = 215,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 21.05,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Framework"] = {
                trainable = true,
                orange = 145,
                yellow = 145,
                grey = 195,
                trainingCost = 6,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 6,
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Tube"] = {
                trainable = true,
                orange = 105,
                yellow = 105,
                grey = 155,
                trainingCost = 4.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 2,
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Catseye Ultra Goggles"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 43.98,
                materials = {
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Catseye Elixir"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Coarse Blasting Powder"] = {
                trainable = true,
                orange = 75,
                yellow = 85,
                grey = 95,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.12,
                materials = {
                    ["Coarse Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Coarse Dynamite"] = {
                trainable = true,
                orange = 75,
                yellow = 90,
                grey = 105,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.5,
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Compact Harvest Reaper Kit"] = {
                trainable = true,
                orange = 175,
                yellow = 175,
                grey = 215,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 40,
                materials = {
                    ["Iron Strut"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Modulator"] = {
                trainable = true,
                orange = 65,
                yellow = 95,
                grey = 125,
                trainingCost = 2.25,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.5,
                materials = {
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Tube"] = {
                trainable = true,
                orange = 50,
                yellow = 80,
                grey = 110,
                trainingCost = 1.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.2,
                materials = {
                    ["Copper Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Crafted Heavy Shot"] = {
                trainable = true,
                orange = 75,
                yellow = 85,
                grey = 95,
                trainingCost = 2.5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0,
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Crafted Light Shot"] = {
                trainable = true,
                orange = 1,
                yellow = 30,
                grey = 60,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0,
                materials = {
                    ["Rough Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Crafted Solid Shot"] = {
                trainable = true,
                orange = 125,
                yellow = 125,
                grey = 145,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Craftsman's Monocle"] = {
                trainable = false,
                orange = 185,
                yellow = 205,
                grey = 225,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 26.32,
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Crude Scope"] = {
                trainable = true,
                orange = 60,
                yellow = 90,
                grey = 120,
                trainingCost = 2,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.25,
                materials = {
                    ["Copper Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Bomb"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 37.5,
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dark Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Rifle"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 291.52,
                materials = {
                    ["Thorium Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dark Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Deadly Scope"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Blue Sapphire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Large Opal"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Deadly Blunderbuss"] = {
                trainable = true,
                orange = 105,
                yellow = 130,
                grey = 155,
                trainingCost = 4.2,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 11.79,
                materials = {
                    ["Copper Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Wooden Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Deadly Scope"] = {
                trainable = false,
                orange = 210,
                yellow = 230,
                grey = 250,
                trainingCost = 0,
                recipeCost = 30,
                castTime = 45,
                sellPrice = 15,
                materials = {
                    ["Mithril Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Deepdive Helmet"] = {
                trainable = false,
                orange = 230,
                yellow = 250,
                grey = 270,
                trainingCost = 0,
                recipeCost = 36,
                castTime = 45,
                sellPrice = 52.27,
                materials = {
                    ["Mithril Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Dense Blasting Powder"] = {
                trainable = true,
                orange = 250,
                yellow = 250,
                grey = 260,
                trainingCost = 40,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.5,
                materials = {
                    ["Dense Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dense Dynamite"] = {
                trainable = true,
                orange = 250,
                yellow = 250,
                grey = 270,
                trainingCost = 50,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 10,
                materials = {
                    ["Dense Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Discombobulator Ray"] = {
                trainable = false,
                orange = 160,
                yellow = 180,
                grey = 200,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 10,
                materials = {
                    ["Whirring Bronze Gizmo"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["EZ-Thro Dynamite"] = {
                trainable = false,
                orange = 100,
                yellow = 115,
                grey = 130,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.5,
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["EZ-Thro Dynamite II"] = {
                trainable = false,
                orange = 200,
                yellow = 200,
                grey = 220,
                trainingCost = 0,
                recipeCost = 50,
                castTime = 5.125,
                sellPrice = 2,
                materials = {
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Explosive Sheep"] = {
                trainable = true,
                orange = 150,
                yellow = 175,
                grey = 200,
                trainingCost = 7.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 10,
                materials = {
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Fire Goggles"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 16,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 34.78,
                materials = {
                    ["Green Tinted Goggles"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Firework Cluster Launcher"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 0,
                materials = {
                    ["Inlaid Mithril Cylinder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Goblin Rocket Fuel"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Truesilver Transformer"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Firework Launcher"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 0,
                materials = {
                    ["Inlaid Mithril Cylinder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goblin Rocket Fuel"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Flame Deflector"] = {
                trainable = false,
                orange = 125,
                yellow = 125,
                grey = 175,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 2,
                materials = {
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Small Flame Sac"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Flash Bomb"] = {
                trainable = false,
                orange = 185,
                yellow = 185,
                grey = 225,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 3,
                materials = {
                    ["Blue Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Flying Tiger Goggles"] = {
                trainable = true,
                orange = 100,
                yellow = 130,
                grey = 160,
                trainingCost = 4,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 4.08,
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Gnomish Cloaking Device"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 0,
                recipeCost = 24,
                castTime = 45,
                sellPrice = 50,
                materials = {
                    ["Gyrochronatom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Gnomish Universal Remote"] = {
                trainable = false,
                orange = 125,
                yellow = 150,
                grey = 175,
                trainingCost = 0,
                recipeCost = 12,
                castTime = 12.5,
                sellPrice = 5,
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Flask of Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Goblin Jumper Cables"] = {
                trainable = false,
                orange = 165,
                yellow = 165,
                grey = 200,
                trainingCost = 0,
                recipeCost = 20,
                castTime = 12.5,
                sellPrice = 0.21,
                materials = {
                    ["Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Flask of Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Goblin Jumper Cables XL"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 20,
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Truesilver Transformer"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Goblin Land Mine"] = {
                trainable = false,
                orange = 195,
                yellow = 215,
                grey = 235,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 16,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Iron Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Gold Power Core"] = {
                trainable = true,
                orange = 150,
                yellow = 150,
                grey = 190,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 7.5,
                materials = {
                    ["Gold Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Firework"] = {
                trainable = false,
                orange = 150,
                yellow = 150,
                grey = 175,
                trainingCost = 0,
                recipeCost = 18,
                castTime = 5.125,
                sellPrice = 0.15,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Lens"] = {
                trainable = true,
                orange = 245,
                yellow = 265,
                grey = 285,
                trainingCost = 28,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 77.7,
                materials = {
                    ["Thick Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heart of the Wild"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Green Tinted Goggles"] = {
                trainable = true,
                orange = 150,
                yellow = 175,
                grey = 200,
                trainingCost = 7.5,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 14.1,
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Flying Tiger Goggles"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Gyrochronatom"] = {
                trainable = true,
                orange = 170,
                yellow = 170,
                grey = 210,
                trainingCost = 9,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 7.5,
                materials = {
                    ["Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Gyromatic Micro-Adjustor"] = {
                trainable = true,
                orange = 175,
                yellow = 175,
                grey = 215,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.16,
                materials = {
                    ["Steel Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Handful of Copper Bolts"] = {
                trainable = true,
                orange = 30,
                yellow = 45,
                grey = 60,
                trainingCost = 1.15,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.12,
                materials = {
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Blasting Powder"] = {
                trainable = true,
                orange = 125,
                yellow = 125,
                grey = 145,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.5,
                materials = {
                    ["Heavy Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Dynamite"] = {
                trainable = true,
                orange = 125,
                yellow = 125,
                grey = 145,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 10.5,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Hi-Explosive Bomb"] = {
                trainable = true,
                orange = 235,
                yellow = 255,
                grey = 275,
                trainingCost = 24,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 30,
                materials = {
                    ["Mithril Casing"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Hi-Impact Mithril Slugs"] = {
                trainable = true,
                orange = 210,
                yellow = 210,
                grey = 250,
                trainingCost = 17,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 4,
                materials = {
                    ["Mithril Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ice Deflector"] = {
                trainable = false,
                orange = 155,
                yellow = 175,
                grey = 195,
                trainingCost = 0,
                recipeCost = 18,
                castTime = 12.5,
                sellPrice = 1.75,
                materials = {
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Grenade"] = {
                trainable = true,
                orange = 175,
                yellow = 175,
                grey = 215,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 15,
                materials = {
                    ["Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Strut"] = {
                trainable = true,
                orange = 160,
                yellow = 160,
                grey = 180,
                trainingCost = 8,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 4,
                materials = {
                    ["Iron Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Large Copper Bomb"] = {
                trainable = true,
                orange = 105,
                yellow = 105,
                grey = 155,
                trainingCost = 4.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 5.25,
                materials = {
                    ["Copper Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Large Seaforium Charge"] = {
                trainable = false,
                orange = 200,
                yellow = 200,
                grey = 240,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 9,
                materials = {
                    ["Solid Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Refreshing Spring Water"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lifelike Mechanical Toad"] = {
                trainable = false,
                orange = 265,
                yellow = 285,
                grey = 305,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 25,
                materials = {
                    ["Living Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Lovingly Crafted Boomstick"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 170,
                trainingCost = 0,
                recipeCost = 10,
                castTime = 25,
                sellPrice = 18,
                materials = {
                    ["Bronze Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Moss Agate"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Major Recombobulator"] = {
                trainable = false,
                orange = 275,
                yellow = 285,
                grey = 295,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 6,
                materials = {
                    ["Thorium Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Truesilver Transformer"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Master Engineer's Goggles"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 60,
                sellPrice = 117.39,
                materials = {
                    ["Fire Goggles"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Huge Emerald"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Enchanted Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Masterwork Target Dummy"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 12.5,
                sellPrice = 100,
                materials = {
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Mechanical Dragonling"] = {
                trainable = false,
                orange = 200,
                yellow = 220,
                grey = 240,
                trainingCost = 0,
                recipeCost = 100,
                castTime = 45,
                sellPrice = 60,
                materials = {
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iron Strut"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mechanical Repair Kit"] = {
                trainable = true,
                orange = 200,
                yellow = 200,
                grey = 240,
                trainingCost = 15,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.5,
                materials = {
                    ["Mithril Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mechanical Squirrel"] = {
                trainable = false,
                orange = 75,
                yellow = 105,
                grey = 135,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1,
                materials = {
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Minor Recombobulator"] = {
                trainable = false,
                orange = 140,
                yellow = 165,
                grey = 190,
                trainingCost = 0,
                recipeCost = 15,
                castTime = 12.5,
                sellPrice = 6,
                materials = {
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Blunderbuss"] = {
                trainable = true,
                orange = 205,
                yellow = 225,
                grey = 245,
                trainingCost = 16,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 89.58,
                materials = {
                    ["Mithril Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Mithril Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Casing"] = {
                trainable = true,
                orange = 215,
                yellow = 215,
                grey = 255,
                trainingCost = 18,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 10,
                materials = {
                    ["Mithril Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Frag Bomb"] = {
                trainable = true,
                orange = 215,
                yellow = 215,
                grey = 255,
                trainingCost = 18,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 22.5,
                materials = {
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Gyro-Shot"] = {
                trainable = true,
                orange = 245,
                yellow = 245,
                grey = 285,
                trainingCost = 28,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 10,
                materials = {
                    ["Mithril Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Heavy-bore Rifle"] = {
                trainable = false,
                orange = 220,
                yellow = 240,
                grey = 260,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 113.69,
                materials = {
                    ["Mithril Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Mithril Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Mechanical Dragonling"] = {
                trainable = false,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 0,
                recipeCost = 40,
                castTime = 45,
                sellPrice = 60,
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Inlaid Mithril Cylinder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Goblin Rocket Fuel"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Tube"] = {
                trainable = true,
                orange = 195,
                yellow = 195,
                grey = 235,
                trainingCost = 13,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 7.5,
                materials = {
                    ["Mithril Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Moonsight Rifle"] = {
                trainable = false,
                orange = 145,
                yellow = 170,
                grey = 195,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 31.83,
                materials = {
                    ["Bronze Tube"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Spyglass"] = {
                trainable = true,
                orange = 135,
                yellow = 160,
                grey = 185,
                trainingCost = 4,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 6,
                materials = {
                    ["Bronze Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Parachute Cloak"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 46.96,
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Shadow Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Portable Bronze Mortar"] = {
                trainable = false,
                orange = 165,
                yellow = 185,
                grey = 205,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 12.5,
                sellPrice = 20,
                materials = {
                    ["Bronze Tube"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Iron Strut"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Powerful Seaforium Charge"] = {
                trainable = false,
                orange = 275,
                yellow = 275,
                grey = 295,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 12.5,
                sellPrice = 30,
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Refreshing Spring Water"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Practice Lock"] = {
                trainable = true,
                orange = 100,
                yellow = 115,
                grey = 130,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.12,
                materials = {
                    ["Bronze Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Red Firework"] = {
                trainable = false,
                orange = 150,
                yellow = 150,
                grey = 175,
                trainingCost = 0,
                recipeCost = 18,
                castTime = 5.125,
                sellPrice = 0.15,
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rose Colored Goggles"] = {
                trainable = true,
                orange = 230,
                yellow = 250,
                grey = 270,
                trainingCost = 22,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 51.69,
                materials = {
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Blasting Powder"] = {
                trainable = true,
                orange = 1,
                yellow = 20,
                grey = 40,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.04,
                materials = {
                    ["Rough Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Boomstick"] = {
                trainable = true,
                orange = 50,
                yellow = 80,
                grey = 110,
                trainingCost = 1.5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.87,
                materials = {
                    ["Copper Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wooden Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Rough Copper Bomb"] = {
                trainable = true,
                orange = 30,
                yellow = 60,
                grey = 90,
                trainingCost = 1.3,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.2,
                materials = {
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rough Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Dynamite"] = {
                trainable = true,
                orange = 1,
                yellow = 30,
                grey = 60,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 0.6,
                materials = {
                    ["Rough Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Salt Shaker"] = {
                trainable = true,
                orange = 250,
                yellow = 270,
                grey = 290,
                trainingCost = 40,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 75,
                materials = {
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Shadow Goggles"] = {
                trainable = false,
                orange = 120,
                yellow = 145,
                grey = 170,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 7.22,
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Silver Contact"] = {
                trainable = true,
                orange = 90,
                yellow = 110,
                grey = 140,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.25,
                materials = {
                    ["Silver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Silver-plated Shotgun"] = {
                trainable = true,
                orange = 130,
                yellow = 155,
                grey = 180,
                trainingCost = 5.5,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 23.57,
                materials = {
                    ["Bronze Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Silver Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Small Bronze Bomb"] = {
                trainable = true,
                orange = 120,
                yellow = 120,
                grey = 170,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 4,
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Small Seaforium Charge"] = {
                trainable = false,
                orange = 100,
                yellow = 130,
                grey = 160,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 1.5,
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Refreshing Spring Water"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Snake Burst Firework"] = {
                trainable = false,
                orange = 250,
                yellow = 250,
                grey = 270,
                trainingCost = 0,
                recipeCost = 50,
                castTime = 12.5,
                sellPrice = 10,
                materials = {
                    ["Dense Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Deeprock Salt"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Sniper Scope"] = {
                trainable = false,
                orange = 240,
                yellow = 260,
                grey = 280,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 25,
                materials = {
                    ["Mithril Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["SnowMaster 9000"] = {
                trainable = false,
                orange = 190,
                yellow = 190,
                grey = 230,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 25,
                sellPrice = 75,
                materials = {
                    ["Mithril Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Snowball"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Blasting Powder"] = {
                trainable = true,
                orange = 175,
                yellow = 175,
                grey = 195,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 2.5,
                materials = {
                    ["Solid Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Dynamite"] = {
                trainable = true,
                orange = 175,
                yellow = 175,
                grey = 195,
                trainingCost = 10,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 7,
                materials = {
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Spellpower Goggles"] = {
                trainable = false,
                orange = 270,
                yellow = 290,
                grey = 310,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 40.88,
                materials = {
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Spellpower Goggles Xtreme"] = {
                trainable = false,
                orange = 225,
                yellow = 245,
                grey = 265,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 40.88,
                materials = {
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Standard Scope"] = {
                trainable = true,
                orange = 110,
                yellow = 135,
                grey = 160,
                trainingCost = 4.75,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 6,
                materials = {
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Steam Tonk Controller"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 50,
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Target Dummy"] = {
                trainable = true,
                orange = 85,
                yellow = 115,
                grey = 145,
                trainingCost = 3,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 0.75,
                materials = {
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Grenade"] = {
                trainable = false,
                orange = 260,
                yellow = 280,
                grey = 300,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 8,
                sellPrice = 45,
                materials = {
                    ["Thorium Widget"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Rifle"] = {
                trainable = false,
                orange = 260,
                yellow = 280,
                grey = 300,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 45,
                sellPrice = 197.39,
                materials = {
                    ["Mithril Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thorium Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Deadly Scope"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Shells"] = {
                trainable = false,
                orange = 285,
                yellow = 305,
                grey = 325,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 20,
                materials = {
                    ["Thorium Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Tube"] = {
                trainable = false,
                orange = 275,
                yellow = 295,
                grey = 315,
                trainingCost = 0,
                recipeCost = 160,
                castTime = 8,
                sellPrice = 37.5,
                materials = {
                    ["Thorium Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Widget"] = {
                trainable = false,
                orange = 260,
                yellow = 280,
                grey = 300,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 8,
                sellPrice = 25,
                materials = {
                    ["Thorium Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Truesilver Transformer"] = {
                trainable = false,
                orange = 260,
                yellow = 270,
                grey = 280,
                trainingCost = 0,
                recipeCost = 120,
                castTime = 8,
                sellPrice = 30,
                materials = {
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Air"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Unstable Trigger"] = {
                trainable = true,
                orange = 200,
                yellow = 200,
                grey = 240,
                trainingCost = 15,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 10,
                materials = {
                    ["Mithril Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Voice Amplification Modulator"] = {
                trainable = false,
                orange = 290,
                yellow = 310,
                grey = 330,
                trainingCost = 0,
                recipeCost = 0,
                castTime = 8,
                sellPrice = 59.3,
                materials = {
                    ["Delicate Arcanite Converter"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Opal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Whirring Bronze Gizmo"] = {
                trainable = true,
                orange = 125,
                yellow = 125,
                grey = 175,
                trainingCost = 5,
                recipeCost = 0,
                castTime = 5.125,
                sellPrice = 1.15,
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
        },
        SEGMENTS = {
            [1] = {
                "Rough Blasting Powder",
                "Rough Dynamite",
                "Crafted Light Shot",
            },
            [30] = {
                "Handful of Copper Bolts",
                "Rough Copper Bomb",
            },
            [50] = {
                "Arclight Spanner",
                "Copper Tube",
                "Rough Boomstick",
            },
            [60] = {
                "Crude Scope",
            },
            [65] = {
                "Copper Modulator",
            },
            [75] = {
                "Coarse Blasting Powder",
                "Crafted Heavy Shot",
                "Coarse Dynamite",
                "Mechanical Squirrel",
            },
            [85] = {
                "Target Dummy",
            },
            [90] = {
                "Silver Contact",
            },
            [100] = {
                "Practice Lock",
                "Flying Tiger Goggles",
                "EZ-Thro Dynamite",
                "Small Seaforium Charge",
            },
            [105] = {
                "Bronze Tube",
                "Large Copper Bomb",
                "Deadly Blunderbuss",
            },
            [110] = {
                "Standard Scope",
            },
            [120] = {
                "Small Bronze Bomb",
                "Lovingly Crafted Boomstick",
                "Shadow Goggles",
            },
            [125] = {
                "Crafted Solid Shot",
                "Heavy Blasting Powder",
                "Heavy Dynamite",
                "Whirring Bronze Gizmo",
                "Flame Deflector",
                "Gnomish Universal Remote",
            },
            [130] = {
                "Silver-plated Shotgun",
            },
            [135] = {
                "Ornate Spyglass",
            },
            [140] = {
                "Big Bronze Bomb",
                "Minor Recombobulator",
            },
            [145] = {
                "Bronze Framework",
                "Moonsight Rifle",
            },
            [150] = {
                "Aquadynamic Fish Attractor",
                "Gold Power Core",
                "Explosive Sheep",
                "Green Tinted Goggles",
                "Blue Firework",
                "Green Firework",
                "Red Firework",
            },
            [155] = {
                "Ice Deflector",
            },
            [160] = {
                "Iron Strut",
                "Discombobulator Ray",
            },
            [165] = {
                "Goblin Jumper Cables",
                "Portable Bronze Mortar",
            },
            [170] = {
                "Gyrochronatom",
            },
            [175] = {
                "Solid Blasting Powder",
                "Solid Dynamite",
                "Compact Harvest Reaper Kit",
                "Gyromatic Micro-Adjustor",
                "Iron Grenade",
                "Bright-Eye Goggles",
            },
            [180] = {
                "Accurate Scope",
            },
            [185] = {
                "Advanced Target Dummy",
                "Flash Bomb",
                "Craftsman's Monocle",
            },
            [190] = {
                "Big Iron Bomb",
                "SnowMaster 9000",
            },
            [195] = {
                "Mithril Tube",
                "Goblin Land Mine",
            },
            [200] = {
                "Mechanical Repair Kit",
                "Unstable Trigger",
                "EZ-Thro Dynamite II",
                "Large Seaforium Charge",
                "Gnomish Cloaking Device",
                "Mechanical Dragonling",
            },
            [205] = {
                "Fire Goggles",
                "Mithril Blunderbuss",
            },
            [210] = {
                "Hi-Impact Mithril Slugs",
                "Deadly Scope",
            },
            [215] = {
                "Mithril Casing",
                "Mithril Frag Bomb",
            },
            [220] = {
                "Catseye Ultra Goggles",
                "Mithril Heavy-bore Rifle",
            },
            [225] = {
                "Firework Launcher",
                "Parachute Cloak",
                "Spellpower Goggles Xtreme",
            },
            [230] = {
                "Rose Colored Goggles",
                "Deepdive Helmet",
            },
            [235] = {
                "Hi-Explosive Bomb",
            },
            [240] = {
                "Sniper Scope",
            },
            [245] = {
                "Mithril Gyro-Shot",
                "Green Lens",
            },
            [250] = {
                "Dense Blasting Powder",
                "Dense Dynamite",
                "Salt Shaker",
                "Mithril Mechanical Dragonling",
                "Snake Burst Firework",
            },
            [260] = {
                "Truesilver Transformer",
                "Thorium Grenade",
                "Thorium Rifle",
                "Thorium Widget",
            },
            [265] = {
                "Alarm-O-Bot",
                "Goblin Jumper Cables XL",
                "Lifelike Mechanical Toad",
            },
            [270] = {
                "Spellpower Goggles",
            },
            [275] = {
                "Powerful Seaforium Charge",
                "Major Recombobulator",
                "Dark Iron Rifle",
                "Firework Cluster Launcher",
                "Masterwork Target Dummy",
                "Steam Tonk Controller",
                "Thorium Tube",
            },
            [285] = {
                "Dark Iron Bomb",
                "Thorium Shells",
            },
            [290] = {
                "Master Engineer's Goggles",
                "Voice Amplification Modulator",
            },
        },
    },
}

-- Saved variables and session
local segmentRange = 75 --TODO: store in RXPData / addon.settings or somewhere better

local profSession = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    foundItems = {}, --pairs

    currentPage = 0,
    currentItemName = "",

    materialsToScan = {}, --ipairs
    recipesToConsider = {}, --pairs [recipeName] = recipePrice
    materialIndex = 1,

    ahIsShowing = false,
    sentQuery = false,
    isScanning = false,
}

function profSession:Reset()
    self.foundItems = {}
    self.currentPage = 0
    self.sentQuery = false
    self.isScanning = false
    self.currentItemName = ""
    self.materialIndex = 1
    self.recipesToConsider = {}
    self.materialsToScan = {}
end

addon.professions.AH = addon:NewModule("ProfessionsAH", "AceEvent-3.0")

function addon.professions.AH:Setup()
    --TODO: add to setting enable/disable
    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if profSession.isInitialized then return end

    --Register events
    for _, event in ipairs(EVENTS_TO_REGISTER_AH) do
        self:RegisterEvent(event)
    end

    profSession.isInitialized = true
end

--local functions

--Sets RXPCData.professions
local function gatherPlayerProfessionInfo()
    --skillName, header, isExpanded, skillRank, numTempPoints, skillModifier,
    --skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType,
    --skillDescription = GetSkillLineInfo(index)
    local skillName, isHeader, skillRank, skillMaxRank
    local foundFirst = false
    for i = 1, GetNumSkillLines() do
        skillName, isHeader, _, skillRank, _, _, skillMaxRank, _, _, _, _, _, _ = GetSkillLineInfo(i)     
        if skillName and not isHeader and PROFESSION_NAMES[skillName] then
            --TODO:be sure that in the future code RXPCData.prof1 and RXPCData.prof2 does not get mixed up, because this way we don't really know what is the 'primary' and what is the 'secondary' profession.
            if not foundFirst then
                RXPCData.professions.profession1 = {
                    name = lower(skillName),
                    skillLevel = skillRank,
                    skillMaxLevel = skillMaxRank,
                }
                foundFirst = true
            else
                RXPCData.professions.profession2 = {
                    name = lower(skillName),
                    skillLevel = skillRank,
                    skillMaxLevel = skillMaxRank,
                }
            end
        end
    end
end

--Sets player data
local function setPlayerData(prof1Name, prof1Lvl, prof2Name, prof2Lvl)
    if not RXPCData.professions.profession1 then RXPCData.professions.profession1 = {} end
    if not RXPCData.professions.profession2 then RXPCData.professions.profession2 = {} end
    if prof1Name then
        RXPCData.professions.profession1.name = lower(prof1Name)
        RXPCData.professions.profession1.skillLevel = prof1Lvl
    end
    if prof2Name then
        RXPCData.professions.profession2.name = lower(prof2Name)
        RXPCData.professions.profession2.skillLevel = prof2Lvl
    end
end

--Sets RXPCData.professions.money
local function gatherPlayerMoneyInfo()
    RXPCData.professions.money = GetMoney()
end

--Sort all found items by price
local function sortItemsByPrice()
    for _, items in pairs(profSession.foundItems) do
        tsort(items, function (a, b)
            return a.pricePerItem < b.pricePerItem
        end)
    end
end

--Calculate what skill segments to look into
--Segment step: eg. 75: 1-75, 75-150, ...
local function calculateSegmentRange(professionSkillLevel, segmentStep)
    local minimum = floor(professionSkillLevel / segmentStep) * segmentStep + 1
    local maximum = ceil(professionSkillLevel / segmentStep) * segmentStep
    if maximum > 300 then maximum = 300 end
    return minimum, maximum
end


--Removes grey recipes
local function removeGreyRecipes(professionName, professionSkillLevel)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if PROFESSIONS[professionName].RECIPES[recipe].grey <= professionSkillLevel then
            profSession.recipesToConsider[recipe] = nil --TODO: efficient, but test if safe!
        end
    end
end

--Gather what recipes to consider based on segment
--minSegment = minimumSkillLevel
--maxSegment = maximumSkillLevel
local function gatherRecipesBySegment(professionName, minSegment, maxSegment)
    profSession.recipesToConsider = {}

    for segmentLevel, recipesInSegment in pairs(PROFESSIONS[professionName].SEGMENTS) do
        if segmentLevel >= minSegment and segmentLevel <= maxSegment then
            for _, recipe in ipairs(recipesInSegment) do
                if not profSession.recipesToConsider[recipe] then
                    profSession.recipesToConsider[recipe] = huge
                end
            end
        end
    end
end

--Gather what materials to scan based on gatheredRecipes in a given profession
local function gatherMaterialsToScan(professionName)
    profSession.materialsToScan = {}
    --We create a local table first for easier lookup
    local lookup = {}
    for recipeName, _ in pairs(profSession.recipesToConsider) do
        for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
            if not materialTable.fromVendor and not lookup[materialName] then
                lookup[materialName] = true
            end
        end
    end
    --Repopulate the correct table
    for k, _ in pairs(lookup) do
        tinsert(profSession.materialsToScan, k)
    end
end

--Calculate value of each recipe
--There might be a better way of doing this (more money wise optimal)
--[[ 
General idea:
- We go through all recipes we want to consider
  and through all materials needed for the given recipe.
  If the material is to be bought from a vendor we just calculate the value
  If the material is to be bought from AH we find n cheapest, where n is the number of material needed for the recipe
  If the material is to be bought from AH and its not available, we put math.huge value
  If the material is another recipe we just calculate its value. (Not yet implemented to check if its in the inventory)

The problem arises if one recipe is dependant of another recipe that is yet to be evluated.
We fix this by iterating over this procedure until all recipes are evaluted.
This unfortunately makes our algorithm's worst case O(n^2)
]]
local function calculateRecipePrice(professionName)
    local totalPrice, remaining, i, materialNotFound, impossibleToCraft
    -- Check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, _ in pairs(profSession.recipesToConsider) do
            --Evaluate only if its not already evaluted
            materialNotFound = false
            impossibleToCraft = false
            if profSession.recipesToConsider[recipe] == huge then
                totalPrice = 0
                for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipe].materials) do
                    --If it is another recipe
                    if PROFESSIONS[professionName].RECIPES[materialName] then
                        --print("compund recipe = ", recipe, " | ", materialName)
                        --If determined impossible to calculate
                        if not profSession.recipesToConsider[materialName] then
                            totalPrice = huge
                            impossibleToCraft = true
                        --If not yet calculated
                        elseif profSession.recipesToConsider[materialName] == huge then
                            totalPrice = huge
                        else
                            totalPrice = totalPrice + profSession.recipesToConsider[materialName]
                        end
                    --If its from a vendor
                    elseif materialTable.fromVendor then
                        totalPrice = totalPrice + (PROFESSIONS.VENDOR_ITEMS[materialName] * 100) * materialTable.count --Vendor prices are in silvers
                    else --If from AH
                        --If there isn't any in the AH
                        if not profSession.foundItems[materialName] or select(1, tcount(profSession.foundItems[materialName])) == 0 then
                            totalPrice = huge
                            materialNotFound = true
                        else
                            remaining =  materialTable.count
                            i = 1
                            while profSession.foundItems[materialName] ~= nil and remaining > 0 and i <= #profSession.foundItems[materialName] and remaining <= #profSession.foundItems[materialName] do --TODO: better check for. maybe calculate how many in general there are materials of 'materialName'
                                totalPrice = totalPrice + profSession.foundItems[materialName][i].pricePerItem * profSession.foundItems[materialName][i].count
                                remaining = remaining - profSession.foundItems[materialName][i].count
                                --print(remaining)
                                i = i + 1
                            end
                            --Check if not enough
                            if remaining > 0 then
                                totalPrice = huge
                                materialNotFound = true
                            end
                        end
                    end
                end
                profSession.recipesToConsider[recipe] = totalPrice
                --Check if its evluated (= not huge) and if so mark it as evaluated
                if profSession.recipesToConsider[recipe] ~= huge then
                    recipeCount = recipeCount - 1
                else
                    --Check if there is no(t enough) material(s) in AH and remove it
                    if materialNotFound or impossibleToCraft then
                        --If so, remove it from the list
                        profSession.recipesToConsider[recipe] = nil
                        recipeCount = recipeCount - 1
                    end
                end
            end
        end
    end
end

--Calculate number of items needed for skillup per recipe
local function calculateNumberOfItemsPerRecipe(professionName, skillLevel)
    local numberOfItemsPerRecipe = {} --["recipe name"] = number of items
    local multiplier = 0 -- 0 For grey by default; should never happen
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
        if skillLevel < PROFESSIONS[professionName].RECIPES[recipeName].orange then
            multiplier = 1
        elseif skillLevel < PROFESSIONS[professionName].RECIPES[recipeName].yellow then
            multiplier = 1.01 * (select(2, calculateSegmentRange(skillLevel, segmentRange)) - skillLevel) --TODO: maybe use another function for this
        end
        numberOfItemsPerRecipe[recipeName] = ceil(multiplier)
    end
    return numberOfItemsPerRecipe
end

--Calculates full cost of the recipe taking everything in account
-- (mats - sell) * multiplier + training cost + recipe cost
local function calculateFullCost(professionName, skillLevel)
    local numberOfItemsPerRecipe = calculateNumberOfItemsPerRecipe(professionName, skillLevel)
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
        profSession.recipesToConsider[recipeName] = ((recipePrice - PROFESSIONS[professionName].RECIPES[recipeName].sellPrice) * numberOfItemsPerRecipe[recipeName] + PROFESSIONS[professionName].RECIPES[recipeName].trainingCost + PROFESSIONS[professionName].RECIPES[recipeName].recipeCost)
    end
end

--Calculate flux density [T^-1Skill^-1Money]
local function calculateFullCostFluxDensity(professionName, skillLevel)
    local fluxDensity = {}
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
        fluxDensity[recipeName] = ceil(recipePrice / PROFESSIONS[professionName].RECIPES[recipeName].castTime)
    end
    return fluxDensity
end

--Calculate cost efficiency [T^-1Money^-1Skill]
local function calculateFullCostEfficiency(professionName, skillLevel)
    local costEfficiency = {}
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
        costEfficiency[recipeName] = addon.Round(1 / (recipePrice * PROFESSIONS[professionName].RECIPES[recipeName].castTime), 2)
    end
    return costEfficiency
end


--[[ 
General idea:
--Go over the cheapest recipe and buy as much as we can.
--Once we cannot do it, go to next.
--Repeat until done or no more money or no more recipes
]]
local function buyoutItems(professionName, skillLevel)
    local _, maxSegment = calculateSegmentRange(skillLevel)
    local skillLevelsToEarn = maxSegment - skillLevel
    sortItemsByPrice()

    calculateRecipePrice(professionName)
    calculateFullCost(professionName, skillLevel)
    local sortedRecipes = sortAssociativeArrayByValue(profSession.recipesToConsider)

    local str = "" --print string 
    local totalCost = 0
    local materialsGathered = {} --[materialName] = materialCount
    local skillLevelsEarned = 0
    local i = 1 --counter for sorted recipes
    local recipeName, recipeCost
    local bought, materialCount
    local canBuy
    while skillLevelsEarned < skillLevelsToEarn do
        recipeName, recipeCost = sortedRecipes[i][1], sortedRecipes[i][2]
        canBuy = true
        --Check if we can buy/gather materials for the recipe
        for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
            --If its not from vendor
            if not materialTable.fromVendor then
                materialCount = materialTable.count
                bought = 0
                --Check if we have it already --TODO: maybe we have it from crafting. Need to account for this as well later on.
                if materialsGathered[materialName] ~= nil then
                    --Use as many as we can
                    bought = min(materialCount, materialsGathered[materialName])
                    materialsGathered[materialName] = max(0, materialsGathered[materialName] - materialCount)
                end
                --Check if we need to buy more
                while bought < materialCount do
                    --Check if any remaining
                    if not profSession.foundItems[materialName] then
                       canBuy = false
                       --TODO: now we should return the bought materials
                    else
                    end
                end
            end
        end
    end
end


--Events
function addon.professions.AH:AUCTION_HOUSE_SHOW()
    if profSession.isInitialized then
        profSession.ahIsShowing = true
    end
end

function addon.professions.AH:AUCTION_HOUSE_CLOSED()
    profSession.ahIsShowing = false
end

function addon.professions.AH:AUCTION_HOUSE_DISABLED()
    profSession.ahIsShowing = false
end

function addon.professions.AH:GET_ITEM_INFO_RECEIVED(_, itemID, success)
    --print("GET_ITEM_INFO_RECEIVED")
end

function addon.professions.AH:AUCTION_ITEM_LIST_UPDATE()
    if not profSession.sentQuery then return end

    local resultCount, totalAuctions = GetNumAuctionItems("list")
    print(resultCount, totalAuctions)
    if resultCount == 0 or totalAuctions == 0 then
        profSession.sentQuery = false
        profSession.currentPage = 0
        profSession.materialIndex = profSession.materialIndex + 1
        if profSession.materialIndex <= #profSession.materialsToScan then
            self:Scan(profSession.materialsToScan[profSession.materialIndex])
        end
        return
    end

    local name, count, buyoutPrice, owner, itemId, hasAllInfo, itemLink
    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)
        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        name, _, count, _, _, _, _, _, _, buyoutPrice, _, _, _, owner, _, _, itemId, hasAllInfo = GetAuctionItemInfo("list", i)

        --Check if itemId already exists
        if not profSession.foundItems[name] then profSession.foundItems[name] = {} end
        if buyoutPrice > 0 then
            tinsert(profSession.foundItems[name], {
                count = count,
                price = buyoutPrice,
                pricePerItem = ceil(buyoutPrice / count),
                owner = owner,
                itemLink = itemLink
            })
        end
    end

    profSession.sentQuery = false
    profSession.currentPage = profSession.currentPage + 1

    self:Scan(profSession.materialsToScan[profSession.materialIndex])
end

function addon.professions:TRADE_SKILL_SHOW()
end

function addon.professions:TRADE_SKILL_CLOSE()
end

function addon.professions:TRADE_SKILL_UPDATE()
end

function addon.professions:UPDATE_TRADESKILL_RECAST()
end

function addon.professions:ITEM_PUSH(bagSlot, iconFileID)
end

function addon.professions:BAG_NEW_ITEMS_UPDATED()
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
    local itemName = text:match("%[(.*)%]")
    if not RXPCData.craftedItems[itemName] then RXPCData.craftedItems[itemName] = 0 end
    RXPCData.craftedItems[itemName] = RXPCData.craftedItems[itemName] + 1
end

--Updates skill level
function addon.professions:CHAT_MSG_SKILL(_, text)
    local newSkillLevel = tonumber(text:match("%d+"))
    local prof1Name, prof2Name = RXPCData.professions.profession1.name, RXPCData.professions.profession2.name
    if text:lower():find(prof1Name) then
        RXPCData.professions.profession1.skillLevel = newSkillLevel
    elseif text:lower():find(prof2Name) then
        RXPCData.professions.profession2.skillLevel = newSkillLevel
    else
        error("Profession leveled: " .. text .. "\nIs not among: {" .. prof1Name .. ", " .. prof2Name .. "}", 2)
    end
end

function addon.professions:PLAYER_MONEY(...)
    RXPCData.money = GetMoney()
end



--Scan function
function addon.professions.AH:Scan(itemName)
    --print("scanning - ", itemName)
    if profSession.sentQuery then return end
    if not CanSendAuctionQuery() then
        C_Timer.After(0.35, function ()
            self:Scan(itemName)
        end)
        return
    end

    profSession.sentQuery = true
    -- text, minLevel, maxLevel, page, usable, rarity, getAll, exactMatch, filterData
    QueryAuctionItems(itemName, nil, nil, profSession.currentPage, false, nil, false, true, nil) --TODO: check if usable should be true, exactMatch should be true by testing
end



--Full scan function - For testing purposes only -- Scans first profession
local function fullScan()
    profSession:Reset()
    local minSegment, maxSegment = calculateSegmentRange(RXPCData.professions.profession1.skillLevel, segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    if tcount(profSession.recipesToConsider) == 0 then return end
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    if #profSession.materialsToScan == 0 then return end
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end

--Setup
function addon.professions:Setup()
    --TODO: add toggle on/off functionality

    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if session.isInitialized == true then return end

    for _, event in ipairs(EVENTS_TO_REGISTER) do
        self:RegisterEvent(event)
    end

    session.isInitialized = true
    self.AH:Setup()

    gatherPlayerProfessionInfo()
end


--GUI
local printed = false --last minute variable for a gui bugfix, will be properly resolved
local function createGUI()
    local guiFrame = CreateFrame("Frame", "ProfessionsFrame", UIParent, "BasicFrameTemplateWithInset")
    guiFrame:SetSize(500, 700)
    guiFrame:SetPoint("BOTTOMLEFT", UIParent, "CENTER")
    guiFrame.TitleBg:SetHeight(30)
    guiFrame.title = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    guiFrame.title:SetPoint("CENTER", guiFrame.TitleBg, "CENTER", 0, 6)
    guiFrame.title:SetText("Professions guide")
    guiFrame:EnableMouse(true)
    guiFrame:SetMovable(true)
    guiFrame:RegisterForDrag("LeftButton")
    guiFrame:SetScript("OnDragStart", function (self)
        self:StartMoving()
    end)
    guiFrame:SetScript("OnDragStop", function (self)
        self:StopMovingOrSizing()
    end)


    guiFrame.descriptionText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.descriptionText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -30)
    guiFrame.descriptionText:SetText("Skill level sets players skill level in Blacksmithing.\nSegment range sets in what segments \nto split the profession (eg. 1-75, 76-150, ...).\nSet parameters sets slider's current parameters.\nScan Auction House scans the auction house \nfor necessary materials.\nPrint scan results prints the results. Values are per recipe per skill-up.")


    local selectSkillLevelFrame = CreateFrame("Slider", "selectSkillLevelFrame", guiFrame, "UISliderTemplateWithLabels")
    selectSkillLevelFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -150)
    selectSkillLevelFrame:SetSize(300, 20)
    selectSkillLevelFrame:SetMinMaxValues(5, 300)
    selectSkillLevelFrame:SetValue(20)
    selectSkillLevelFrame:SetValueStep(1)
    selectSkillLevelFrame:SetObeyStepOnDrag(true)
    selectSkillLevelFrame.Text:SetText("Select Skill level (" .. selectSkillLevelFrame:GetValue() .. ")")
    selectSkillLevelFrame:SetScript("OnValueChanged", function (self, value, userInput)
        self:SetValue(value)
        self.Text:SetText("Select Skill level  (" .. self:GetValue() .. ")")
    end)

    local selectSegmentFrame = CreateFrame("Slider", "SelectSegmentFrame", guiFrame, "UISliderTemplateWithLabels")
    selectSegmentFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -180)
    selectSegmentFrame:SetSize(300, 20)
    selectSegmentFrame:SetMinMaxValues(5, 300)
    selectSegmentFrame:SetValue(75)
    selectSegmentFrame:SetValueStep(5)
    selectSegmentFrame:SetObeyStepOnDrag(true)
    selectSegmentFrame.Text:SetText("Segment Range (" .. selectSegmentFrame:GetValue() .. ")")
    selectSegmentFrame:SetScript("OnValueChanged", function (self, value, userInput)
        self:SetValue(value)
        self.Text:SetText("Segment Range (" .. self:GetValue() .. ")")
    end)

    local setButtonFrame = CreateFrame("Button", "SetButtonFrame", guiFrame, "UIPanelButtonTemplate")
    setButtonFrame:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 20, -210)
    setButtonFrame:SetSize(100, 40)
    setButtonFrame:SetText("Set parameters")
    setButtonFrame:RegisterForClicks("LeftButtonUp")
    setButtonFrame:SetScript("OnClick", function (self)
        setPlayerData("Blacksmithing", selectSkillLevelFrame:GetValue())
        segmentRange = selectSegmentFrame:GetValue()
    end)

    local ahNotShowingMessageFrame = CreateFrame("MessageFrame", "ahNotShowingMessageFrame", UIParent)
    ahNotShowingMessageFrame:SetPoint("TOP")
    ahNotShowingMessageFrame:SetSize(200, 200)
    ahNotShowingMessageFrame:SetFont("fonts/arialn.ttf", 20, "")
    ahNotShowingMessageFrame:AddMessage("AH must be open to scan!", 1, 0, 0)
    ahNotShowingMessageFrame:Hide()
    ahNotShowingMessageFrame:RegisterEvent("AUCTION_HOUSE_SHOW")
    ahNotShowingMessageFrame:SetScript("OnEvent", function (self, event)
        if event == "AUCTION_HOUSE_SHOW" then
            ahNotShowingMessageFrame:Hide()
        end
    end)

    local scanButtonFrame = CreateFrame("Button", "ScanButtonFrame", setButtonFrame, "UIPanelButtonTemplate")
    scanButtonFrame:SetPoint("LEFT", setButtonFrame, "RIGHT")
    scanButtonFrame:SetSize(200, 40)
    scanButtonFrame:SetText("Scan Auction House")
    scanButtonFrame:RegisterForClicks("LeftButtonUp")
    scanButtonFrame:SetScript("OnClick", function (self)
        printed = false
        if not profSession.isInitialized then
            error("Profession session not initialized", 2)
        end
        if not profSession.ahIsShowing then
            ahNotShowingMessageFrame:Show()
        else
            guiFrame.printText:SetText("")
            fullScan()
        end
    end)

    guiFrame.printText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    guiFrame.printText:SetPoint("TOPLEFT", setButtonFrame, "BOTTOMLEFT", 0, -10)
    local textToPrint = ""


    local printButtonFrame = CreateFrame("Button", "printButtonFrame", scanButtonFrame, "UIPanelButtonTemplate")
    printButtonFrame:SetPoint("LEFT", scanButtonFrame, "RIGHT")
    printButtonFrame:SetSize(120, 40)
    printButtonFrame:SetText("Print scan results")
    printButtonFrame:RegisterForClicks("LeftButtonUp")
    printButtonFrame:SetScript("OnClick", function (self)
        textToPrint = ""
        if not printed then
            calculateRecipePrice(RXPCData.professions.profession1.name)
            calculateFullCost(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
        end
        local sorted = sortAssociativeArrayByValue(profSession.recipesToConsider)
        for _, v in ipairs(sorted) do
            textToPrint = textToPrint .. v[1] .. ": "
            if v[2] == huge then
                textToPrint = textToPrint .. "huge\n"
            else
                textToPrint = textToPrint .. formatMoney(ceil(v[2] / (select(2, calculateSegmentRange(RXPCData.professions.profession1.skillLevel, segmentRange)) - RXPCData.professions.profession1.skillLevel))) .. "\n"
            end
        end
        textToPrint = textToPrint .. "==========\n"
        guiFrame.printText:SetText(textToPrint)
        printed = true
    end)

    SLASH_prof1 = '/prof'
    SlashCmdList['prof'] = function()
        if not guiFrame:IsShown() then
            guiFrame:Show()
        end
    end

    guiFrame:Hide()
end

createGUI()


--Testing
--[[ 
local variables and functions
for testing purposes
]]


--Slash commands

SLASH_clear1 = '/clear'
SlashCmdList['clear'] = function()
    _G["ChatFrame1"]:Clear()
end

SLASH_cls1 = '/cls'
SlashCmdList['cls'] = function()
    _G["ChatFrame1"]:Clear()
end

SLASH_scan1 = '/scan'
SlashCmdList['scan'] = function()
    profSession:Reset()
    --setPlayerData("Blacksmithing", 40)
    local minSegment, maxSegment = calculateSegmentRange(RXPCData.professions.profession1.skillLevel, 75)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    if tcount(profSession.recipesToConsider) == 0 then return end
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    if #profSession.materialsToScan == 0 then return end
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end

--Find minimum
SLASH_pnt1 = '/pnt'
SlashCmdList['pnt'] = function()
    local minimum = {}
    local minItem = {}
    local minPrice
    local c = 1
    print("Recipes considered:")
    for k, v in pairs(profSession.recipesToConsider) do
        print(k)
    end
    for k, v in pairs(profSession.foundItems) do
        print("===" .. tostring(k) .. "===")
        minPrice = huge
        minItem = {}
        for _, itemInfo in ipars(v) do
            c = c + 1
            --print(tostring(i)..":", itemInfo.name, itemInfo.count, itemInfo.pricePerItem, itemInfo.owner)
            if itemInfo.pricePerItem < minPrice then
                minPrice = itemInfo.pricePerItem
                --print("min: ", minPrice)
                minItem.name = itemInfo.name
                minItem.pricePerItem = minPrice
                minItem.owner = itemInfo.owner
            end
        end
        tinsert(minimum, minItem)
    end
    print("c=", c)
    --Print mimimums
    print("==========")
    for _, v in pairs(minimum) do
        print(v.name, v.pricePerItem, v.owner)
    end
end


SLASH_rst1 = '/rst'
SlashCmdList['rst'] = function()
    profSession:Reset()
end

SLASH_set1 = '/set'
SlashCmdList['set'] = function()
    setPlayerData("Blacksmithing", 75)
end

--Testing
SLASH_tst1 = '/tst'
SlashCmdList['tst'] = function()
    setPlayerData("Blacksmithing", 1)
    local minSegment, maxSegment = calculateSegmentRange(RXPCData.professions.profession1.skillLevel, 75)
    print("==========")
    --gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    --removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    for k, _ in pairs(profSession.recipesToConsider) do
        print(k)
    end
    print("==========")
    --gatherMaterialsToScan(RXPCData.professions.profession1.name)
    --for _, v in ipairs(profSession.materialsToScan) do
    --    print(v)
    --end
    print("==========")
    calculateRecipePrice(RXPCData.professions.profession1.name)
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
        if recipeName == huge then
            print(recipeName, ": huge")
        else
            print(recipeName, ": ", formatMoney(recipePrice))
        end
    end
end

--Quick testing
SLASH_qtst1 = '/qtst'
SlashCmdList['qtst'] = function()
    --print(calculateSegmentRange(RXPCData.professions.profession1.skillLevel))

    -- sortItemsByPrice()
    -- for itemID, items in pairs(profSession.foundItems) do
    --     print(itemID, ":")
    --     for _, item in ipairs(items) do
    --         print(item.name, item.pricePerItem, item.owner)
    --     end
    --     print("==========")
    -- end

    --sortRecipesByCheapest()

    -- calculateFullCost(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    -- local sorted = sortAssociativeArrayByValue(profSession.recipesToConsider)
    -- for _, v in ipairs(sorted) do
    --     print(v[1], ": ", formatMoney(ceil(v[2] / segmentRange)))
    -- end

    --print(GetItemNameByID(2840))
end



print("done loading professions")


--[[ Notes
    merchant show
]]