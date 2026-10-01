local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}
addon.professions.PROFESSIONS = addon.professions.PROFESSIONS or {}

-- Localize globals
local _G = _G
local pairs, ipairs = pairs, ipairs
local lower, split, trim = string.lower, string.split, string.trim
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo
local GetContainerNumSlots, GetContainerItemInfo = _G.C_Container.GetContainerNumSlots, _G.C_Container.GetContainerItemInfo
local GetNumSkillLines, GetSkillLineInfo = _G.GetNumSkillLines, _G.GetSkillLineInfo
local GetNumFactions, GetFactionInfo = _G.GetNumFactions, _G.GetFactionInfo
local GetMoney, CopyTable = _G.GetMoney, _G.CopyTable

-- Local renaming
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


addon.professions.AH.session = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    foundItems = {},
    materialsToScan = {},
    materialIndex = 1,
    currentPage = 0,
    currentItemName = "",
    ahIsShowing = false,
    sentQuery = false,
    isScanning = false,
}

--Setup
function addon.professions.AH:Setup()
    --TODO: add to setting enable/disable
    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if addon.professions.session.isInitialized then return end

    --Set the flag to check the players inventory for lingering items
    RXPCData.professions.isInitialScanned = false

    --Register events
    for _, event in ipairs(EVENTS_TO_REGISTER_AH) do
        self:RegisterEvent(event)
    end

    self.session.isInitialized = true
end

function addon.professions.AH.session:Reset()
    self.foundItems = {}
    self.materialIndex = 1
    self.currentPage = 0
    self.currentItemName = ""
    self.ahIsShowing = false
    self.sentQuery = false
    self.isScanning = false
end


--Local functions

--Scans backpacks for items created by recipes in backpacks for
--given profession names and updates the RXPCData accordingly
--Because of problems stated in: https://warcraft.wiki.gg/wiki/API_GetContainerNumSlots
--we call this function when AH is opened for the first time, per player character
local function initialScanInventoryForCraftedItems(prof1Name, prof2Name)
    local numberOfSlots, itemName, itemID, itemCount
    for bagID = 0, NUM_BAG_SLOTS do
        numberOfSlots = GetContainerNumSlots(bagID)
        if numberOfSlots == 0 then
            break
        end
        for slot = 1, numberOfSlots do
            local containerInfo = GetContainerItemInfo(bagID, slot)
            if containerInfo then
                itemID = containerInfo.itemID
                itemCount = containerInfo.stackCount
                RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + itemCount
            end
        end
    end
end


function addon.professions.AH:gatherMaterialsToScan(professionName)
    if not PROFESSIONS[professionName] then return end
    --We create a local table first for easier lookup
    local lookup = {}
    for recipeName, _ in pairs(PROFESSIONS[professionName].RECIPES) do
        for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
            if not materialTable.fromVendor and not lookup[materialName] then
                lookup[materialName] = true
            end
        end
    end
    --Repopulate the correct table
    for k, _ in pairs(lookup) do
        tinsert(self.session.materialsToScan, k)
    end
end

--Events
function addon.professions.AH:AUCTION_HOUSE_SHOW()
    if self.session.isInitialized then
        self.session.ahIsShowing = true
    end
    if not RXPCData.professions.isInitialScanned then
        initialScanInventoryForCraftedItems(RXPCData.professions.profession1.name, RXPCData.professions.profession2.name)
        RXPCData.professions.isInitialScanned = true
    end
end

function addon.professions.AH:AUCTION_HOUSE_CLOSED()
    self.session.ahIsShowing = false
end

function addon.professions.AH:AUCTION_HOUSE_DISABLED()
    self.session.ahIsShowing = false
end

function addon.professions.AH:GET_ITEM_INFO_RECEIVED(_, itemID, success)
    --print("GET_ITEM_INFO_RECEIVED")
end

function addon.professions.AH:AUCTION_ITEM_LIST_UPDATE()
    if not self.session.sentQuery then return end

    local resultCount, totalAuctions = GetNumAuctionItems("list")
    print(resultCount, totalAuctions)
    if resultCount == 0 or totalAuctions == 0 then
        self.session.sentQuery = false
        self.session.currentPage = 0
        self.session.materialIndex = self.session.materialIndex + 1
        if self.session.materialIndex <= #self.session.materialsToScan then
            self:Scan(self.session.materialsToScan[self.session.materialIndex])
        end
        return
    end

    local name, count, buyoutPrice, owner, itemId, hasAllInfo, itemLink
    local pricePerItem
    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)
        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        name, _, count, _, _, _, _, _, _, buyoutPrice, _, _, _, owner, _, _, itemId, hasAllInfo = GetAuctionItemInfo("list", i)

        self.session.foundItems[itemId] = self.session.foundItems[itemId] or {}
        if buyoutPrice > 0 then
            --TODO: maybe even coalesce 'nearby' pricePerItems as well
            pricePerItem = ceil(buyoutPrice / count)
            self.session.foundItems[itemId][pricePerItem] = (self.session.foundItems[itemId][pricePerItem] or 0) + count
        end
    end

    self.session.sentQuery = false
    self.session.currentPage = self.session.currentPage + 1

    self:Scan(self.session.materialsToScan[self.session.materialIndex])
end

--Scan function
function addon.professions.AH:Scan(itemName)
    --print("scanning - ", itemName)
    if self.session.sentQuery then return end
    if not CanSendAuctionQuery() then
        C_Timer.After(0.35, function ()
            self:Scan(itemName)
        end)
        return
    end

    self.session.sentQuery = true
    -- text, minLevel, maxLevel, page, usable, rarity, getAll, exactMatch, filterData
    QueryAuctionItems(itemName, nil, nil, self.session.currentPage, false, nil, false, true, nil)
end



local function gatherPlayerProfessionInfo()
    if not RXPCData.professions.profession1 then RXPCData.professions.profession1 = {} end
    if not RXPCData.professions.profession2 then RXPCData.professions.profession2 = {} end
    --skillName, header, isExpanded, skillRank, numTempPoints, skillModifier,
    --skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType,
    --skillDescription = GetSkillLineInfo(index)
    local skillName, isHeader, skillRank, skillMaxRank
    local foundFirst = false
    for i = 1, GetNumSkillLines() do
        skillName, isHeader, _, skillRank, _, _, skillMaxRank, _, _, _, _, _, _ = GetSkillLineInfo(i)
        if skillName and not isHeader and addon.professions.locale.PROFESSION_NAMES[skillName] then
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


local function gatherPlayerFactionInfo()
    if not RXPCData.professions then RXPCData.professions = {} end

    local name
    for i = 1, GetNumFactions() do
        name = GetFactionInfo(i)
        if name and addon.professions.locale.FACTION_NAMES[name] then
            RXPCData.professions.faction = addon.professions.locale.FACTION_NAMES[name]
            break
        end
    end
end

local function gatherPlayerMoneyInfo()
    if not RXPCData.professions then RXPCData.professions = {} end
    RXPCData.professions.money = GetMoney()
end

function addon.professions.AH:fullScan()
    gatherPlayerProfessionInfo()
    if not RXPCData.professions.profession1.name then
        print("No profession detected")
        return
    end
    self.session:Reset()
    self.session.scannedAt = time()
    addon.professions.AH:gatherMaterialsToScan(RXPCData.professions.profession1.name)
    if RXPCData.professions.profession2.name then
        addon.professions.AH:gatherMaterialsToScan(RXPCData.professions.profession2.name)
    end

    addon.professions.AH.session.materialIndex = 1
    addon.professions.AH:Scan(addon.professions.AH.session.materialsToScan[addon.professions.AH.session.materialIndex])
end


function addon.professions.AH:exportInfo()
    gatherPlayerProfessionInfo()
    gatherPlayerFactionInfo()
    gatherPlayerMoneyInfo()
    RXPCData.professions.foundItems = self.session.foundItems
    RXPCData.professions.scannedAt = self.session.scannedAt
end

--Debug actions, shared by the slash commands below and the debug window (GUI/ProfessionsDebugGUI.lua)
local debug = {}
addon.professions.debug = debug

function debug.IsAuctionHouseOpen()
    return addon.professions.AH.session and addon.professions.AH.session.isInitialized and addon.professions.AH.session.ahIsShowing
end

function debug.Scan()
    if not debug.IsAuctionHouseOpen() then print("Open the Auction House first") return end
    addon.professions.AH:fullScan()
end

function debug.Export()
    addon.professions.AH:exportInfo()
    print("export done")
end

--Scans the materials of the professions set with SetProfessions instead of the character's own
function debug.ScanOverride()
    if not debug.IsAuctionHouseOpen() then print("Open the Auction House first") return end
    if not RXPCData.professions.profession1.name then return end
    addon.professions.AH.session:Reset()
    addon.professions.AH.session.scannedAt = time()
    print("gathering first profession")
    addon.professions.AH:gatherMaterialsToScan(RXPCData.professions.profession1.name)
    if RXPCData.professions.profession2.name then
        print("gathering second profession")
        addon.professions.AH:gatherMaterialsToScan(RXPCData.professions.profession2.name)
    end
    print("scanning")
    addon.professions.AH.session.materialIndex = 1
    addon.professions.AH:Scan(addon.professions.AH.session.materialsToScan[addon.professions.AH.session.materialIndex])
end

function debug.ExportScanOnly()
    RXPCData.professions.foundItems = addon.professions.AH.session.foundItems
    RXPCData.professions.scannedAt = addon.professions.AH.session.scannedAt
    print("test export done")
end

function debug.SetProfessions(name1, skillLevel1, name2, skillLevel2)
    if not name1 or not tonumber(skillLevel1) then print("no prof1 - done set") return end
    RXPCData.professions.profession1 = RXPCData.professions.profession1 or {}
    RXPCData.professions.profession1.name = lower(name1)
    RXPCData.professions.profession1.skillLevel = tonumber(skillLevel1)
    RXPCData.professions.profession1.skillMaxLevel = 300

    if not name2 or not tonumber(skillLevel2) then print("no prof2 - done set") return end
    RXPCData.professions.profession2 = RXPCData.professions.profession2 or {}
    RXPCData.professions.profession2.name = lower(name2)
    RXPCData.professions.profession2.skillLevel = tonumber(skillLevel2)
    RXPCData.professions.profession2.skillMaxLevel = 300

    print("done set")
end

function debug.SetFaction(faction)
    if not faction or faction == "" then return end
    RXPCData.professions.faction = lower(faction)
    print("done set")
end

function debug.SetMoney(money)
    if not tonumber(money) then return end
    RXPCData.professions.money = tonumber(money)
    print("done set")
end

function debug.PrintData()
    for k, v in pairs(RXPCData.professions) do
        if type(v) == "table" then
            for kk, vv in pairs(v) do
                print(tostring(kk), " -> ", tostring(vv))
            end
        else
            print(tostring(k), " -> ", tostring(v))
        end
    end

    print("print done")
end

function debug.Reset()
    RXPCData.professions = {}
    RXPCData.professions.profession1 = {}
    RXPCData.professions.profession2 = {}

    print("reset done")
end

function debug.ListScanItems()
    print("To scan:")
    for k, v in pairs(addon.professions.AH.session.materialsToScan) do
        print(tostring(k), " -> ", tostring(v))
    end

    print("list done")
end

function debug.DetectFaction()
    gatherPlayerFactionInfo()
    print("faction = ", RXPCData.professions.faction)

    print("test done")
end

SLASH_scan1 = '/scan'
SlashCmdList['scan'] = debug.Scan

SLASH_export1 = '/export'
SlashCmdList['export'] = debug.Export

--TODO: Debug only
SLASH_tscan1 = '/tscan'
SlashCmdList['tscan'] = debug.ScanOverride

--TODO: Debug only
SLASH_texport1 = '/texport'
SlashCmdList['texport'] = debug.ExportScanOnly

--TODO: Debug only
SLASH_setp1 = '/setp'
SlashCmdList['setp'] = function(args)
    debug.SetProfessions(split(" ", trim(args)))
end

--TODO: Debug only
SLASH_setf1 = '/setf'
SlashCmdList['setf'] = function(args)
    debug.SetFaction((split(" ", trim(args))))
end

--TODO: Debug only
SLASH_setm1 = '/setm'
SlashCmdList['setm'] = function(args)
    debug.SetMoney((split(" ", trim(args))))
end

--TODO: Debug only
SLASH_pn1 = '/pn'
SlashCmdList['pn'] = debug.PrintData

--TODO: Debug only
SLASH_rs1 = '/rs'
SlashCmdList['rs'] = debug.Reset

--TODO: Debug only
SLASH_items1 = '/items'
SlashCmdList['items'] = debug.ListScanItems

--TODO: Debug only
SLASH_df1 = '/df'
SlashCmdList['df'] = debug.DetectFaction

--TODO: Debug only
SLASH_tt1 = '/tt'
SlashCmdList['tt'] = function()
    print(addon.professions.AH.session.ahIsShowing)
end
