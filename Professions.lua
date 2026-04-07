local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globals
local _G = _G
local fmt = string.format
local tcount, tinsert, twipe = table.count, table.insert, table.wipe
local pairs, ipars, next, type, tostring, tonumber = pairs, ipairs, next, type, tostring, tonumber
local max, abs = math.max, math.abs
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

--[[ 
{
    {
        segmentEndLevel = number
        items = {}
    }
}
]]
local materialsToSeachBySegments = {
    {
        segmentEndLevel = 9,
        material = {
            "Rough stone",
            "Copper Bracers",
            "Copper Chain Pants",
            "Rough Copper Vest"
        }
    }
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

function addon.professions.AH:AUCTION_HOUSE_SHOW()
end

function addon.professions.AH:AUCTION_HOUSE_CLOSED()
end

function addon.professions.AH:AUCTION_HOUSE_DISABLED()
end

function addon.professions.AH:GET_ITEM_INFO_RECEIVED(_, itemID, success)
    print("GET_ITEM_INFO_RECEIVED")
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

    local name, count, buyoutPrice, itemId, hasAllInfo, itemLink
    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)
        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        name, _, count, _, _, _, _, _, _, buyoutPrice, _, _, _, _, _, _, itemId, hasAllInfo = GetAuctionItemInfo("list", i)

        tinsert(profSession.foundItems, {
            itemId = itemId,
            name = name,
            count = count,
            price = buyoutPrice,
        })
    end

    profSession.sentQuery = false
    profSession.currentPage = profSession.currentPage + 1

    self:Scan(profSession.materials[1].material[profSession.materialIndex])
end

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



SLASH_scan1 = '/scan'
SlashCmdList['scan'] = function()
    profSession:Reset()
    profSession.currentItemName = "Rough Stone"
    -- addon.professions.AH:Scan("Rough Stone")
    addon.professions.AH:Scan(profSession.materials[1].material[profSession.materialIndex])
end

SLASH_pnt1 = '/pnt'
SlashCmdList['pnt'] = function()
    print(tcount(profSession.foundItems))
    for k, v in pairs(profSession.foundItems) do
    end
end







print("done loading professions")