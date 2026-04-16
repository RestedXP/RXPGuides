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
local GetProfessions, GetProfessionInfo = _G.GetProfessions, _G.GetProfessionInfo
local GetMoney = _G.GetMoney


--local helper functions
local function formatMoney(money)
    if money > 10000 then
        return fmt("%dg %ds %dc", money / 10000, (money % 10000) / 100, money % 100)
    elseif money > 100 then
        return fmt("%ds %dc", money / 100, money % 100)
    end
    return fmt("%dc", money)
end

--local enums
local EVENTS_TO_REGISTER = {
    "AUCTION_HOUSE_SHOW",
    "AUCTION_HOUSE_CLOSED",
    "AUCTION_HOUSE_DISABLED",
    "GET_ITEM_INFO_RECEIVED",
    "AUCTION_ITEM_LIST_UPDATE",

}


local PROFESSIONS = {
    ["blacksmithing"] = {
        RECIPES = {
            ["Arcanite Skeleton Key"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Arcanite Bar"] = 1,
                    ["Dense Grinding Stone"] = 1,
                },
            },
            ["Barbaric Iron Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 12,
                    ["Large Fang"] = 4,
                    ["Tigerseye"] = 4,
                    ["Heavy Grinding Stone"] = 2,
                },
            },
            ["Barbaric Iron Gloves"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 14,
                    ["Heavy Grinding Stone"] = 3,
                    ["Large Fang"] = 2,
                },
            },
            ["Barbaric Iron Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 10,
                    ["Large Fang"] = 2,
                    ["Sharp Claw"] = 2,
                },
            },
            ["Barbaric Iron Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 8,
                    ["Sharp Claw"] = 4,
                    ["Shadowgem"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                },
            },
            ["Big Black Mace"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 16,
                    ["Black Pearl"] = 1,
                    ["Shadowgem"] = 4,
                    ["Solid Grinding Stone"] = 1,
                    ["Thick Leather"] = 2,
                },
            },
            ["Big Bronze Knife"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 6,
                    ["Weak Flux"] = 4,
                    ["Rough Grinding Stone"] = 2,
                    ["Tigerseye"] = 1,
                    ["Medium Leather"] = 1,
                },
            },
            ["Blazing Rapier"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Enchanted Thorium Bar"] = 10,
                    ["Essence of Fire"] = 4,
                    ["Heart of Fire"] = 4,
                    ["Azerothian Diamond"] = 2,
                    ["Dense Grinding Stone"] = 2,
                },
            },
            ["Blight"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 28,
                    ["Ichor of Undeath"] = 10,
                    ["Truesilver Bar"] = 10,
                    ["Solid Grinding Stone"] = 6,
                    ["Thick Leather"] = 6,
                },
            },
            ["Blue Glittering Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 16,
                    ["Aquamarine"] = 2,
                    ["Solid Grinding Stone"] = 1,
                    ["Thick Leather"] = 4,
                },
            },
            ["Bronze Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 7,
                    ["Weak Flux"] = 4,
                    ["Medium Leather"] = 1,
                },
            },
            ["Bronze Battle Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 14,
                    ["Strong Flux"] = 1,
                    ["Medium Leather"] = 2,
                },
            },
            ["Bronze Greatsword"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 12,
                    ["Strong Flux"] = 2,
                    ["Medium Leather"] = 2,
                },
            },
            ["Bronze Mace"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 6,
                    ["Weak Flux"] = 4,
                    ["Medium Leather"] = 1,
                },
            },
            ["Bronze Shortsword"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 5,
                    ["Weak Flux"] = 4,
                    ["Medium Leather"] = 2,
                },
            },
            ["Bronze Warhammer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 8,
                    ["Strong Flux"] = 1,
                    ["Medium Leather"] = 1,
                },
            },
            ["Coarse Grinding Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Coarse Stone"] = 2,
                },
            },
            ["Coarse Sharpening Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Coarse Stone"] = 1,
                },
            },
            ["Copper Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 6,
                    ["Weak Flux"] = 1,
                    ["Linen Cloth"] = 2,
                },
            },
            ["Copper Battle Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 12,
                    ["Weak Flux"] = 2,
                    ["Malachite"] = 2,
                    ["Rough Grinding Stone"] = 2,
                    ["Light Leather"] = 2,
                },
            },
            ["Copper Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 2,
                },
            },
            ["Copper Chain Belt"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 6,
                },
            },
            ["Copper Chain Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 8,
                },
            },
            ["Copper Chain Pants"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 4,
                },
            },
            ["Copper Chain Vest"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 8,
                    ["Malachite"] = 1,
                    ["Rough Grinding Stone"] = 2,
                },
            },
            ["Copper Claymore"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 10,
                    ["Weak Flux"] = 2,
                    ["Rough Grinding Stone"] = 1,
                    ["Light Leather"] = 1,
                },
            },
            ["Copper Dagger"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 6,
                    ["Weak Flux"] = 1,
                    ["Rough Grinding Stone"] = 1,
                    ["Light Leather"] = 1,
                },
            },
            ["Copper Mace"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 6,
                    ["Weak Flux"] = 1,
                    ["Linen Cloth"] = 2,
                },
            },
            ["Copper Shortsword"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 6,
                    ["Weak Flux"] = 1,
                    ["Linen Cloth"] = 2,
                },
            },
            ["Dark Iron Mail"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dark Iron Bar"] = 10,
                    ["Heart of Fire"] = 2,
                },
            },
            ["Dark Iron Plate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dark Iron Bar"] = 20,
                    ["Heart of Fire"] = 8,
                },
            },
            ["Dark Iron Pulverizer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dark Iron Bar"] = 18,
                    ["Heart of Fire"] = 4,
                },
            },
            ["Dark Iron Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dark Iron Bar"] = 6,
                    ["Heart of Fire"] = 1,
                },
            },
            ["Dark Iron Sunderer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dark Iron Bar"] = 26,
                    ["Heart of Fire"] = 4,
                },
            },
            ["Dazzling Mithril Rapier"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 14,
                    ["Aquamarine"] = 1,
                    ["Lesser Moonstone"] = 2,
                    ["Moss Agate"] = 2,
                    ["Solid Grinding Stone"] = 1,
                    ["Mageweave Cloth"] = 2,
                },
            },
            ["Deadly Bronze Poniard"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 4,
                    ["Strong Flux"] = 1,
                    ["Swiftness Potion"] = 1,
                    ["Shadowgem"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                    ["Medium Leather"] = 2,
                },
            },
            ["Dense Grinding Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dense Stone"] = 4,
                },
            },
            ["Dense Sharpening Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Dense Stone"] = 1,
                },
            },
            ["Ebon Shiv"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                    ["Truesilver Bar"] = 6,
                    ["Star Ruby"] = 2,
                    ["Solid Grinding Stone"] = 1,
                    ["Thick Leather"] = 2,
                },
            },
            ["Edge of Winter"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 10,
                    ["Frost Oil"] = 1,
                    ["Elemental Water"] = 2,
                    ["Elemental Air"] = 2,
                    ["Heavy Leather"] = 2,
                },
            },
            ["Enchanted Battlehammer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 20,
                    ["Enchanted Thorium Bar"] = 6,
                    ["Huge Emerald"] = 2,
                    ["Powerful Mojo"] = 4,
                    ["Rugged Leather"] = 4,
                },
            },
            ["Fiery Plate Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 20,
                    ["Enchanted Thorium Bar"] = 6,
                    ["Essence of Fire"] = 2,
                    ["Star Ruby"] = 4,
                },
            },
            ["Frost Tiger Blade"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 8,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                    ["Jade"] = 2,
                    ["Frost Oil"] = 1,
                    ["Heavy Leather"] = 4,
                },
            },
            ["Gemmed Copper Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 8,
                    ["Tigerseye"] = 1,
                    ["Malachite"] = 1,
                },
            },
            ["Glinting Steel Dagger"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 10,
                    ["Strong Flux"] = 2,
                    ["Moss Agate"] = 1,
                    ["Elemental Earth"] = 1,
                    ["Heavy Leather"] = 1,
                },
            },
            ["Golden Iron Destroyer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 10,
                    ["Gold Bar"] = 4,
                    ["Lesser Moonstone"] = 2,
                    ["Strong Flux"] = 2,
                    ["Heavy Leather"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                },
            },
            ["Golden Rod"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Gold Bar"] = 1,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Golden Scale Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 10,
                    ["Gold Bar"] = 4,
                    ["Heavy Grinding Stone"] = 4,
                    ["Citrine"] = 1,
                },
            },
            ["Golden Scale Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 5,
                    ["Heavy Grinding Stone"] = 2,
                },
            },
            ["Golden Scale Coif"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 8,
                    ["Gold Bar"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                },
            },
            ["Golden Scale Cuirass"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 12,
                    ["Gold Bar"] = 2,
                    ["Heavy Grinding Stone"] = 4,
                    ["Jade"] = 2,
                },
            },
            ["Golden Scale Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 10,
                    ["Gold Bar"] = 4,
                    ["Heavy Grinding Stone"] = 4,
                    ["Citrine"] = 1,
                },
            },
            ["Golden Scale Leggings"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 10,
                    ["Gold Bar"] = 2,
                    ["Heavy Grinding Stone"] = 1,
                },
            },
            ["Golden Scale Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 6,
                    ["Gold Bar"] = 2,
                    ["Heavy Grinding Stone"] = 1,
                },
            },
            ["Golden Skeleton Key"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Gold Bar"] = 1,
                    ["Heavy Grinding Stone"] = 1,
                },
            },
            ["Green Iron Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 4,
                    ["Lesser Moonstone"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                    ["Green Dye"] = 1,
                },
            },
            ["Green Iron Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 6,
                    ["Green Dye"] = 1,
                },
            },
            ["Green Iron Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 4,
                    ["Small Lustrous Pearl"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                    ["Green Dye"] = 1,
                },
            },
            ["Green Iron Hauberk"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 20,
                    ["Heavy Grinding Stone"] = 4,
                    ["Jade"] = 2,
                    ["Moss Agate"] = 2,
                    ["Green Leather Armor"] = 1,
                },
            },
            ["Green Iron Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 12,
                    ["Citrine"] = 1,
                    ["Green Dye"] = 1,
                },
            },
            ["Green Iron Leggings"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 8,
                    ["Heavy Grinding Stone"] = 1,
                    ["Green Dye"] = 1,
                },
            },
            ["Green Iron Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 7,
                    ["Heavy Grinding Stone"] = 1,
                    ["Green Dye"] = 1,
                },
            },
            ["Hardened Iron Shortsword"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 6,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 1,
                    ["Lesser Moonstone"] = 2,
                    ["Heavy Leather"] = 3,
                },
            },
            ["Heavy Bronze Mace"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 8,
                    ["Strong Flux"] = 1,
                    ["Moss Agate"] = 1,
                    ["Shadowgem"] = 1,
                    ["Coarse Grinding Stone"] = 2,
                    ["Medium Leather"] = 2,
                },
            },
            ["Heavy Copper Broadsword"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 14,
                    ["Weak Flux"] = 2,
                    ["Tigerseye"] = 2,
                    ["Medium Leather"] = 2,
                },
            },
            ["Heavy Copper Maul"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 12,
                    ["Weak Flux"] = 2,
                    ["Light Leather"] = 2,
                },
            },
            ["Heavy Grinding Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Heavy Stone"] = 3,
                },
            },
            ["Heavy Mithril Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                    ["Citrine"] = 2,
                    ["Solid Grinding Stone"] = 1,
                    ["Heavy Leather"] = 4,
                },
            },
            ["Heavy Mithril Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 14,
                    ["Thick Leather"] = 4,
                },
            },
            ["Heavy Mithril Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 16,
                },
            },
            ["Heavy Mithril Gauntlet"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 6,
                    ["Mageweave Cloth"] = 4,
                },
            },
            ["Heavy Mithril Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 14,
                    ["Aquamarine"] = 1,
                },
            },
            ["Heavy Mithril Pants"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 10,
                    ["Lesser Moonstone"] = 2,
                },
            },
            ["Heavy Mithril Shoulder"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 8,
                    ["Heavy Leather"] = 6,
                },
            },
            ["Heavy Sharpening Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Heavy Stone"] = 1,
                },
            },
            ["Heavy Timbermaw Belt"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 12,
                    ["Essence of Earth"] = 3,
                    ["Living Essence"] = 3,
                },
            },
            ["Huge Thorium Battleaxe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 40,
                    ["Dense Grinding Stone"] = 6,
                    ["Rugged Leather"] = 6,
                },
            },
            ["Imperial Plate Belt"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 22,
                    ["Rugged Leather"] = 6,
                    ["Aquamarine"] = 1,
                },
            },
            ["Imperial Plate Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 34,
                    ["Star Ruby"] = 1,
                    ["Aquamarine"] = 1,
                },
            },
            ["Imperial Plate Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 20,
                    ["Star Ruby"] = 1,
                },
            },
            ["Imperial Plate Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 34,
                    ["Star Ruby"] = 2,
                },
            },
            ["Imperial Plate Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 24,
                    ["Rugged Leather"] = 6,
                    ["Citrine"] = 2,
                },
            },
            ["Inlaid Mithril Cylinder"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 5,
                    ["Gold Bar"] = 1,
                    ["Truesilver Bar"] = 1,
                },
            },
            ["Iridescent Hammer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 10,
                    ["Strong Flux"] = 1,
                    ["Iridescent Pearl"] = 1,
                    ["Coarse Grinding Stone"] = 2,
                    ["Medium Leather"] = 2,
                },
            },
            ["Iron Buckle"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 1,
                },
            },
            ["Iron Counterweight"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 4,
                    ["Coarse Grinding Stone"] = 2,
                    ["Lesser Moonstone"] = 1,
                },
            },
            ["Iron Shield Spike"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 6,
                    ["Coarse Grinding Stone"] = 4,
                },
            },
            ["Ironforge Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 16,
                    ["Tigerseye"] = 2,
                    ["Rough Grinding Stone"] = 3,
                },
            },
            ["Jade Serpentblade"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 8,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                    ["Jade"] = 2,
                    ["Heavy Leather"] = 3,
                },
            },
            ["Massive Iron Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 14,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                    ["Gold Bar"] = 4,
                    ["Heavy Leather"] = 2,
                },
            },
            ["Mighty Iron Hammer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 6,
                    ["Strong Flux"] = 2,
                    ["Elixir of Ogre's Strength"] = 1,
                    ["Lesser Moonstone"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                    ["Medium Leather"] = 2,
                },
            },
            ["Mithril Coif"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 10,
                    ["Mageweave Cloth"] = 6,
                },
            },
            ["Mithril Scale Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 8,
                    ["Citrine"] = 2,
                },
            },
            ["Mithril Scale Pants"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                },
            },
            ["Mithril Scale Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 14,
                    ["Thick Leather"] = 4,
                    ["Citrine"] = 4,
                },
            },
            ["Mithril Shield Spike"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 4,
                    ["Truesilver Bar"] = 2,
                    ["Solid Grinding Stone"] = 4,
                },
            },
            ["Mithril Spurs"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 4,
                    ["Solid Grinding Stone"] = 3,
                },
            },
            ["Moonsteel Broadsword"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 8,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 2,
                    ["Lesser Moonstone"] = 3,
                    ["Heavy Leather"] = 3,
                },
            },
            ["Name"] = {
                trainable = false,
                orange = Orange,
                yellow = Yellow,
                grey = Grey,
                materials = {
                },
            },
            ["Orcish War Leggings"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                    ["Elemental Earth"] = 1,
                },
            },
            ["Ornate Mithril Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 14,
                    ["Truesilver Bar"] = 2,
                    ["Thick Leather"] = 4,
                    ["Solid Grinding Stone"] = 1,
                    ["Aquamarine"] = 1,
                },
            },
            ["Ornate Mithril Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 16,
                    ["Truesilver Bar"] = 6,
                    ["Heart of Fire"] = 1,
                    ["Solid Grinding Stone"] = 1,
                },
            },
            ["Ornate Mithril Gloves"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 10,
                    ["Mageweave Cloth"] = 6,
                    ["Truesilver Bar"] = 1,
                    ["Solid Grinding Stone"] = 1,
                },
            },
            ["Ornate Mithril Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 16,
                    ["Truesilver Bar"] = 2,
                    ["Black Pearl"] = 1,
                    ["Solid Grinding Stone"] = 1,
                },
            },
            ["Ornate Mithril Pants"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                    ["Truesilver Bar"] = 1,
                    ["Solid Grinding Stone"] = 1,
                    ["Aquamarine"] = 1,
                },
            },
            ["Ornate Mithril Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                    ["Truesilver Bar"] = 1,
                    ["Thick Leather"] = 6,
                },
            },
            ["Ornate Thorium Handaxe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 20,
                    ["Large Opal"] = 2,
                    ["Dense Grinding Stone"] = 2,
                    ["Rugged Leather"] = 4,
                },
            },
            ["Patterned Bronze Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 5,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Pearl-handled Dagger"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 6,
                    ["Strong Flux"] = 1,
                    ["Small Lustrous Pearl"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Phantom Blade"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 28,
                    ["Breath of Wind"] = 6,
                    ["Truesilver Bar"] = 8,
                    ["Lesser Invisibility Potion"] = 2,
                    ["Aquamarine"] = 6,
                    ["Solid Grinding Stone"] = 4,
                    ["Thick Leather"] = 2,
                },
            },
            ["Polished Steel Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 8,
                    ["Citrine"] = 1,
                    ["Lesser Moonstone"] = 1,
                    ["Heavy Grinding Stone"] = 2,
                },
            },
            ["Radiant Belt"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 10,
                    ["Heart of Fire"] = 2,
                },
            },
            ["Radiant Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 14,
                    ["Heart of Fire"] = 4,
                },
            },
            ["Radiant Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 18,
                    ["Heart of Fire"] = 2,
                    ["Star Ruby"] = 1,
                },
            },
            ["Radiant Circlet"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 18,
                    ["Heart of Fire"] = 4,
                },
            },
            ["Radiant Gloves"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 18,
                    ["Heart of Fire"] = 4,
                },
            },
            ["Rough Bronze Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 6,
                    ["Rough Grinding Stone"] = 6,
                },
            },
            ["Rough Bronze Leggings"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 6,
                },
            },
            ["Rough Bronze Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 5,
                    ["Shadowgem"] = 1,
                    ["Coarse Grinding Stone"] = 1,
                },
            },
            ["Rough Copper Vest"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 4,
                },
            },
            ["Rough Grinding Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Rough Stone"] = 2,
                },
            },
            ["Rough Sharpening Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Rough Stone"] = 1,
                },
            },
            ["Runed Copper Belt"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 10,
                },
            },
            ["Runed Copper Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 10,
                    ["Rough Grinding Stone"] = 3,
                },
            },
            ["Runed Copper Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 12,
                    ["Shadowgem"] = 1,
                    ["Rough Grinding Stone"] = 2,
                },
            },
            ["Runed Copper Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 8,
                    ["Rough Grinding Stone"] = 2,
                },
            },
            ["Runed Copper Pants"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 8,
                    ["Fine Thread"] = 2,
                    ["Rough Grinding Stone"] = 3,
                },
            },
            ["Runed Mithril Hammer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 18,
                    ["Core of Earth"] = 2,
                    ["Solid Grinding Stone"] = 1,
                    ["Thick Leather"] = 4,
                },
            },
            ["Searing Golden Blade"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 10,
                    ["Gold Bar"] = 4,
                    ["Elemental Fire"] = 2,
                    ["Heavy Leather"] = 2,
                },
            },
            ["Shadow Crescent Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 10,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 3,
                    ["Citrine"] = 2,
                    ["Shadow Oil"] = 1,
                    ["Heavy Leather"] = 3,
                },
            },
            ["Shining Silver Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 20,
                    ["Moss Agate"] = 2,
                    ["Lesser Moonstone"] = 2,
                    ["Iridescent Pearl"] = 2,
                    ["Silver Bar"] = 4,
                },
            },
            ["Silver Rod"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Silver Bar"] = 1,
                    ["Rough Grinding Stone"] = 2,
                },
            },
            ["Silver Skeleton Key"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Silver Bar"] = 1,
                    ["Rough Grinding Stone"] = 1,
                },
            },
            ["Silvered Bronze Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 6,
                    ["Silver Bar"] = 1,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Silvered Bronze Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 10,
                    ["Silver Bar"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                    ["Lesser Moonstone"] = 1,
                },
            },
            ["Silvered Bronze Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 8,
                    ["Silver Bar"] = 1,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Silvered Bronze Leggings"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 12,
                    ["Silver Bar"] = 4,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Silvered Bronze Shoulders"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Bronze Bar"] = 8,
                    ["Silver Bar"] = 2,
                    ["Coarse Grinding Stone"] = 2,
                },
            },
            ["Solid Grinding Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Solid Stone"] = 4,
                },
            },
            ["Solid Iron Maul"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Iron Bar"] = 8,
                    ["Strong Flux"] = 2,
                    ["Heavy Grinding Stone"] = 1,
                    ["Silver Bar"] = 4,
                    ["Heavy Leather"] = 2,
                },
            },
            ["Solid Sharpening Stone"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Solid Stone"] = 1,
                },
            },
            ["Steel Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 16,
                    ["Heavy Grinding Stone"] = 3,
                },
            },
            ["Steel Plate Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 14,
                    ["Solid Grinding Stone"] = 1,
                },
            },
            ["Steel Weapon Chain"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Steel Bar"] = 8,
                    ["Heavy Grinding Stone"] = 2,
                    ["Heavy Leather"] = 4,
                },
            },
            ["Storm Gauntlets"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 20,
                    ["Enchanted Thorium Bar"] = 4,
                    ["Essence of Water"] = 4,
                    ["Blue Sapphire"] = 4,
                },
            },
            ["The Shatterer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 24,
                    ["Core of Earth"] = 4,
                    ["Truesilver Bar"] = 6,
                    ["Citrine"] = 5,
                    ["Jade"] = 5,
                    ["Solid Grinding Stone"] = 4,
                    ["Thick Leather"] = 4,
                },
            },
            ["Thick War Axe"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Copper Bar"] = 10,
                    ["Weak Flux"] = 2,
                    ["Silver Bar"] = 2,
                    ["Rough Grinding Stone"] = 2,
                    ["Light Leather"] = 2,
                },
            },
            ["Thorium Armor"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 16,
                    ["Blue Sapphire"] = 1,
                    ["Yellow Power Crystal"] = 4,
                },
            },
            ["Thorium Belt"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 12,
                    ["Red Power Crystal"] = 4,
                },
            },
            ["Thorium Boots"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 20,
                    ["Rugged Leather"] = 8,
                    ["Green Power Crystal"] = 4,
                },
            },
            ["Thorium Bracers"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 12,
                    ["Blue Power Crystal"] = 4,
                },
            },
            ["Thorium Helm"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 24,
                    ["Star Ruby"] = 1,
                    ["Yellow Power Crystal"] = 4,
                },
            },
            ["Thorium Shield Spike"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 4,
                    ["Dense Grinding Stone"] = 4,
                    ["Essence of Earth"] = 2,
                },
            },
            ["Truesilver Breastplate"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 12,
                    ["Truesilver Bar"] = 24,
                    ["Star Ruby"] = 4,
                    ["Black Pearl"] = 4,
                    ["Solid Grinding Stone"] = 2,
                },
            },
            ["Truesilver Champion"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 30,
                    ["Truesilver Bar"] = 16,
                    ["Star Ruby"] = 6,
                    ["Breath of Wind"] = 4,
                    ["Solid Grinding Stone"] = 8,
                    ["Thick Leather"] = 6,
                },
            },
            ["Truesilver Rod"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Truesilver Bar"] = 1,
                    ["Heavy Grinding Stone"] = 1,
                },
            },
            ["Truesilver Skeleton Key"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Truesilver Bar"] = 1,
                    ["Solid Grinding Stone"] = 1,
                },
            },
            ["Volcanic Hammer"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Thorium Bar"] = 30,
                    ["Heart of Fire"] = 4,
                    ["Star Ruby"] = 4,
                    ["Rugged Leather"] = 4,
                },
            },
            ["Wicked Mithril Blade"] = {
                trainable = true,
                orange = 1,
                yellow = 15,
                grey = 55,
                materials = {
                    ["Mithril Bar"] = 14,
                    ["Truesilver Bar"] = 4,
                    ["Solid Grinding Stone"] = 1,
                    ["Thick Leather"] = 2,
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
    }
}

-- Saved variables and session
local profSession = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    foundItems = {}, --pairs

    currentPage = 0,
    currentItemName = "",

    materialsToScan = {}, --ipairs
    recipesToConsider = {}, --pairs [recipeName] = recipePrice
    materialIndex = 1,

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
    for _, event in ipairs(EVENTS_TO_REGISTER) do
        self:RegisterEvent(event)
    end

    profSession.isInitialized = true
end

--local functions

--Sets RXPCData.professions
local function gatherPlayerProfessionInfo()
    local prof1, prof2, archeology, fishing, cooking = GetProfessions()
    --name, icon, skillLevel, maxSkillLevel, numAbilities, spelloffset, skillLine, 
    --skillModifier, specializationIndex, specializationOffset = GetProfessionInfo(index)
    if prof1 then
        local name, _, skillLevel, _, _, _, _, _, _, _ = GetProfessionInfo(prof1)
        RXPCData.professions.profession1 = {
            name = name,
            skillLevel = skillLevel,
        }
    end
    if prof2 then
        local name, _, skillLevel, _, _, _, _, _, _, _ = GetProfessionInfo(prof2)
        RXPCData.professions.profession2 = {
            name = name,
            skillLevel = skillLevel,
        }
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
        for material, _ in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
            if not lookup[material] then
                lookup[material] = true
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
local function calculateRecipePrice(professionName)
    local totalPrice, remaining, i
    for recipe, _ in pairs(profSession.recipesToConsider) do
        totalPrice = 0
        print("recipe = ", recipe)
        for materialName, materialCount in pairs(PROFESSIONS[professionName].RECIPES[recipe].materials) do
            remaining =  materialCount
            i = 1
            print(materialName)
            print("r=", remaining)
            while remaining > 0 do
                totalPrice = totalPrice + profSession.foundItems[materialName][i].pricePerItem * profSession.foundItems[materialName][i].count
                remaining = remaining - profSession.foundItems[materialName][i].count
                print(remaining)
                i = i + 1
            end
            print("current price  = ", totalPrice)
        end
        print("total price = " , totalPrice)
        print("-------")
        profSession.recipesToConsider[recipe] = totalPrice
    end
end


--Events
function addon.professions.AH:AUCTION_HOUSE_SHOW()
end

function addon.professions.AH:AUCTION_HOUSE_CLOSED()
end

function addon.professions.AH:AUCTION_HOUSE_DISABLED()
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
        --if not profSession.foundItems[itemId] then profSession.foundItems[itemId] = {} end
        if not profSession.foundItems[name] then profSession.foundItems[name] = {} end
        if buyoutPrice > 0 then
            --tinsert(profSession.foundItems[itemId], {
            tinsert(profSession.foundItems[name], {
                --name = name,
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

--Init setup
addon.professions.AH:Setup()


--Testing
--[[ 
local variables and functions
for testing purposes
]]

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


--Slash commands
SLASH_scan1 = '/scan'
SlashCmdList['scan'] = function()
    profSession:Reset()
    setPlayerData("Blacksmithing", 40)
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
    setPlayerData("Blacksmithing", 25)
end


SLASH_tst1 = '/tst'
SlashCmdList['tst'] = function()
    setPlayerData("Blacksmithing", 1)
    local minSegment, maxSegment = calculateSegmentRange(RXPCData.professions.profession1.skillLevel, 75)
    print("==========")
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    for k, _ in pairs(profSession.recipesToConsider) do
        print(k)
    end
    print("==========")
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    for _, v in ipairs(profSession.materialsToScan) do
        print(v)
    end
    print("==========")
    calculateRecipePrice(RXPCData.professions.profession1.name)
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
       print(recipeName, ": ", formatMoney(recipePrice))
    end
end


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

end



print("done loading professions")


--[[ Notes

]]