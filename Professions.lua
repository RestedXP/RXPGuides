local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC" or addon.game == "VANILLA") then print("a") return end

-- Localize globals
local _G = _G
local fmt = string.format
local tcount, tinsert, twipe = table.count, table.insert, table.wipe
local pairs, ipars, next, type, tostring, tonumber = pairs, ipairs, next, type, tostring, tonumber
local max, abs, floor, ceil, huge = math.max, math.abs, math.floor, math.ceil, math.huge
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo


--local enums
local eventsToRegister = {
    "AUCTION_HOUSE_SHOW",
    "AUCTION_HOUSE_CLOSED",
    "AUCTION_HOUSE_DISABLED",
    "GET_ITEM_INFO_RECEIVED",
    "AUCTION_ITEM_LIST_UPDATE",
}

local materialsToSeachBySegments = {
    {
        segmentEndLevel = 9,
        material = {
            "Rough stone",
            "Copper bar",
        }
    }
}

local recipes = {
    ["Rough Sharpening Stone"] = {
        trainingCost = 0,
        materials = {
            {
                ["name"] = "Rough Stone",
                amount = 1,
            },
        },
    },
    ["Copper Braces"] = {
        trainingCost = 0,
        materials = {
            {
                ["name"] = "Copper Bar",
                amount = 2
            },
        },
    },
}

-- Saved variables and session
local profSession = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    materials = materialsToSeachBySegments,
    materialIndex = 0,
    foundItems = {},

    currentPage = 0,

    currentItemName = "",

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
end

addon.professions.AH = addon:NewModule("ProfessionsAH", "AceEvent-3.0")

function addon.professions.AH:Setup()
    --TODO: add to setting enable/disable
    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if profSession.isInitialized then return end

    --Register events
    for _, event in ipairs(eventsToRegister) do
        self:RegisterEvent(event)
    end

    profSession.isInitialized = true
end

--local functions


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
        if profSession.materialIndex <= #profSession.materials[1].material then
            self:Scan(profSession.materials[1].material[profSession.materialIndex])
        end
        return
    end

    local name, count, buyoutPrice, owner, itemId, hasAllInfo, itemLink
    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)
        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        name, _, count, _, _, _, _, _, _, buyoutPrice, _, _, _, owner, _, _, itemId, hasAllInfo = GetAuctionItemInfo("list", i)

        --Check if itemId already exists
        if not profSession.foundItems[itemId] then profSession.foundItems[itemId] = {} end
        --TODO: Why do some auctions not have a byout??????
        if buyoutPrice > 0 then
            tinsert(profSession.foundItems[itemId], {
                name = name,
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

    self:Scan(profSession.materials[1].material[profSession.materialIndex])
end

--Scan function
function addon.professions.AH:Scan(itemName)
    print("scanning - ", itemName)
    if profSession.sentQuery then return end
    if not CanSendAuctionQuery() then
        C_Timer.After(0.35, function ()
            self:Scan(itemName)
        end)
        return
    end

    profSession.sentQuery = true
    -- text, minLevel, maxLevel, page, usable, rarity, getAll, exactMatch, filterData
    QueryAuctionItems(itemName, nil, nil, profSession.currentPage, false, nil, false, false, nil)
end

--Init setup
addon.professions.AH:Setup()




--Slash commands
SLASH_scan1 = '/scan'
SlashCmdList['scan'] = function()
    profSession:Reset()
    profSession.currentItemName = "Rough Stone"
    addon.professions.AH:Scan(profSession.materials[1].material[profSession.materialIndex])
end

SLASH_pnt1 = '/pnt'
SlashCmdList['pnt'] = function()
    local minimum = {}
    local minItem = {}
    local minPrice
    for k, v in pairs(profSession.foundItems) do
        print("===" .. tostring(k) .. "===")
        minPrice = huge
        minItem = {}
        for i, itemInfo in ipars(v) do
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
    --Print mimimums
    print("==========")
    for _, v in pairs(minimum) do
        print(v.name, v.pricePerItem, v.owner)
    end
end


print("done loading professions")