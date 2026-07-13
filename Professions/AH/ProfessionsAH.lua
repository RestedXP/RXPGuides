local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}
addon.professions.profSession = addon.professions.profSession or {}

-- Localize globals
local _G = _G
local pairs, ipairs = pairs, ipairs
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo
local GetContainerNumSlots, GetContainerItemInfo = _G.C_Container.GetContainerNumSlots, _G.GetContainerItemInfo

-- Local renaming
local profSession = addon.professions.profSession
local PROFESSIONS = addon.professions.PROFESSIONS

--local enums
local EVENTS_TO_REGISTER_AH = {
    "AUCTION_HOUSE_SHOW",
    "AUCTION_HOUSE_CLOSED",
    "AUCTION_HOUSE_DISABLED",
    "GET_ITEM_INFO_RECEIVED",
    "AUCTION_ITEM_LIST_UPDATE",
}

addon.professions.AH = addon:NewModule("ProfessionsAH", "AceEvent-3.0")

--Setup
function addon.professions.AH:Setup()
    --TODO: add to setting enable/disable
    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if addon.professions.profSession.isInitialized then return end

    --Register events
    for _, event in ipairs(EVENTS_TO_REGISTER_AH) do
        self:RegisterEvent(event)
    end

    profSession.isInitialized = true
end


--Local functions

--Scans backpacks for items created by recipes in backpacks for
--given profession names and updates the RXPCData accordingly
--Because of problems stated in: https://warcraft.wiki.gg/wiki/API_GetContainerNumSlots
--we call this function when AH is opened for the first time, per player character
local function initialScanInventoryForCraftedItems(prof1Name, prof2Name)
    local numberOfSlots, itemName, itemCount
    for bagID = 0, NUM_BAG_SLOTS do
        numberOfSlots = GetContainerNumSlots(bagID)
        if numberOfSlots == 0 then
            break
        end
        for slot = 1, numberOfSlots do
            local containerInfo = GetContainerItemInfo(bagID, slot)
            if containerInfo then
                itemName = containerInfo.itemName
                itemCount = containerInfo.stackCount
                if prof1Name then
                    if PROFESSIONS[prof1Name].RECIPES[itemName] then
                        RXPCData.craftedItems[itemName] = (RXPCData.craftedItems[itemName] or 0) + itemCount
                    end
                elseif prof2Name then
                    if PROFESSIONS[prof2Name].RECIPES[itemName] then
                        RXPCData.craftedItems[itemName] = (RXPCData.craftedItems[itemName] or 0) + itemCount
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
    if not RXPCData.professions.isInitialScanned then
        initialScanInventoryForCraftedItems(RXPCData.professions.profession1.name, RXPCData.professions.profession2.name)
        RXPCData.professions.isInitialScanned = true
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

        profSession.foundItems[name] = profSession.foundItems[name] or {}
        if buyoutPrice > 0 then
            tinsert(profSession.foundItems[name], {
                count = count,
                price = buyoutPrice,
                pricePerItem = ceil(buyoutPrice / count),
                owner = owner,
                itemLink = itemLink,
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
    QueryAuctionItems(itemName, nil, nil, profSession.currentPage, false, nil, false, true, nil)
end

