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
                orange = 275,
                yellow = 280,
                grey = 285,
                rainingCost = 100,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 150,
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
                rainingCost = 6,
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
                rainingCost = 0,
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
                rainingCost = 135,
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
                rainingCost = 0,
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
                rainingCost = 2,
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
                rainingCost = 5,
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
                rainingCost = 5,
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
                rainingCost = 2,
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
                rainingCost = 2,
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
                rainingCost = 2.5,
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
                rainingCost = 2.5,
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
                rainingCost = 1,
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
                rainingCost = 0.5,
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
                rainingCost = 2.5,
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
                rainingCost = 0,
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
                rainingCost = 1,
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
                rainingCost = 0.5,
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
                rainingCost = 0.5,
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
                rainingCost = 0,
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
                rainingCost = 1,
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
                rainingCost = 1,
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
                rainingCost = 0.5,
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
                rainingCost = 0.5,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 100,
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
                rainingCost = 100,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 75,
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
                rainingCost = 0,
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
                rainingCost = 2.5,
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
                rainingCost = 0,
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
                rainingCost = 10,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 2.5,
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
                rainingCost = 0,
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
                rainingCost = 10,
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
                rainingCost = 0,
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
                rainingCost = 75,
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
                rainingCost = 12.5,
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
                rainingCost = 50,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 10,
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
                rainingCost = 5,
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
                rainingCost = 3,
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
                rainingCost = 10,
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
                rainingCost = 100,
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
                rainingCost = 200,
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
                rainingCost = 150,
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
                rainingCost = 50,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 50,
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
                rainingCost = 10,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 2.5,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 150,
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
                rainingCost = 0,
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
                rainingCost = 50,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 5,
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
                rainingCost = 8,
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
                rainingCost = 135,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 2,
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
                rainingCost = 3,
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
                rainingCost = 5,
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
                rainingCost = 0,
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
                rainingCost = 1,
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
                rainingCost = 0,
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
                rainingCost = 2,
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
                rainingCost = 5,
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
                rainingCost = 0,
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
                rainingCost = 1,
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
                rainingCost = 2,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 10,
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
                rainingCost = 1,
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
                rainingCost = 1,
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
                rainingCost = 5,
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
                rainingCost = 0,
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
                rainingCost = 10,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 25,
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
                rainingCost = 0,
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
                rainingCost = 25,
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
                rainingCost = 25,
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
                rainingCost = 50,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 135,
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
                rainingCost = 5,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
                rainingCost = 90,
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
                rainingCost = 135,
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
                rainingCost = 25,
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
                rainingCost = 25,
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
                rainingCost = 0,
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
                rainingCost = 0,
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
        }
    }
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
This unfortunately makes our algorithm worst case O(n^2)
]]
local function calculateRecipePrice(professionName)
    local totalPrice, remaining, i, materialNotFound
    -- check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, _ in pairs(profSession.recipesToConsider) do
            --Evaluate only if its not already evaluted
            materialNotFound = false
            if profSession.recipesToConsider[recipe] == huge then
                totalPrice = 0
                for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipe].materials) do
                    --If it is another recipe
                    if PROFESSIONS[professionName].RECIPES[materialName] then
                        --print("compund recipe = ", recipe, " | ", materialName)
                        --If not yet calculated
                        if profSession.recipesToConsider[materialName] == huge then
                            totalPrice = huge
                        else
                            totalPrice = totalPrice + profSession.recipesToConsider[materialName] --TODO: what if its huge!
                        end
                    --If its from a vendor
                    elseif materialTable.fromVendor then
                        totalPrice = totalPrice + (PROFESSIONS[professionName].VENDOR_ITEMS[materialName] * 100) * materialTable.count --Vendor prices are in silvers
                    else --If from AH
                        --If there isn't any in the AH
                        if not profSession.foundItems[materialName] then
                            --profSession.foundItems = huge
                            totalPrice = huge
                            materialNotFound = true
                        else
                            remaining =  materialTable.count
                            i = 1
                            while remaining > 0 do
                                totalPrice = totalPrice + profSession.foundItems[materialName][i].pricePerItem * profSession.foundItems[materialName][i].count
                                remaining = remaining - profSession.foundItems[materialName][i].count
                                --print(remaining)
                                i = i + 1
                            end
                        end
                    end
                end
                profSession.recipesToConsider[recipe] = totalPrice
                --Check if its evluated (= not huge) and if so mark it as evaluated
                if profSession.recipesToConsider[recipe] ~= huge then
                    recipeCount = recipeCount - 1
                else
                    --Check if there is no needed material in AH and remove it
                    if materialNotFound then
                        profSession.recipesToConsider[recipe] = nil
                        recipeCount = recipeCount - 1
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

--Init setup
addon.professions.AH:Setup()


--GUI
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

SLASH_prof1 = '/prof'
SlashCmdList['prof'] = function()
    if not guiFrame:IsShown() then
        guiFrame:Show()
    end
end

guiFrame.descriptionText = guiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
guiFrame.descriptionText:SetPoint("TOPLEFT", guiFrame, "TOPLEFT", 10, -30)
guiFrame.descriptionText:SetText("Skill level sets players skill level in Blacksmithing.\nSegment range sets in what segments \nto split the profession (eg. 1-75, 76-150, ...).\nSet parameters sets slider parameters.\nScan Auction House scans the auction house \nfor necessary materials.\nPrint scan results prints the results.")


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
    if not profSession.isInitialized then
        error("Profession session not initialized", 2)
    end
    if not profSession.ahIsShowing then
        ahNotShowingMessageFrame:Show()
    else
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
    calculateRecipePrice(RXPCData.professions.profession1.name)
    for recipeName, recipePrice in pairs(profSession.recipesToConsider) do
        if recipeName == huge then
            textToPrint = textToPrint .. recipeName .. ": huge\n"
        else
            textToPrint = textToPrint .. recipeName .. ": " .. formatMoney(recipePrice) .. "\n"
        end
    end
    textToPrint = textToPrint .. "==========\n"
    guiFrame.printText:SetText(textToPrint)
end)



--Testing
--[[ 
local variables and functions
for testing purposes
]]


--Slash commands
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
    setPlayerData("Blacksmithing", 25)
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
end



print("done loading professions")


--[[ Notes

]]