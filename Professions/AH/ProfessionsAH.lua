local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}
addon.professions.materialIds = addon.professions.materialIds or {}
addon.professions.recipeIds = addon.professions.recipeIds or {}
addon.professions.PROFESSIONS = addon.professions.PROFESSIONS or {}

-- Localize globals
local _G = _G
local pairs, ipairs = pairs, ipairs
local lower, split, trim = string.lower, string.split, string.trim
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo
local GetContainerNumSlots, GetContainerItemInfo = _G.C_Container.GetContainerNumSlots, _G.C_Container.GetContainerItemInfo
local GetNumItemSearchResults, GetItemSearchResultInfo =
    (_G.C_AuctionHouse and _G.C_AuctionHouse.GetNumItemSearchResults) or nil,
    (_G.C_AuctionHouse and _G.C_AuctionHouse.GetItemSearchResultInfo) or nil
local GetNumCommoditySearchResults, GetCommoditySearchResultInfo =
    (_G.C_AuctionHouse and _G.C_AuctionHouse.GetNumCommoditySearchResults) or nil,
    (_G.C_AuctionHouse and _G.C_AuctionHouse.GetCommoditySearchResultInfo) or nil
local SendSearchQuery = (_G.C_AuctionHouse and _G.C_AuctionHouse.SendSearchQuery) or nil
local IsThrottledMessageSystemReady = (_G.C_AuctionHouse and _G.C_AuctionHouse.IsThrottledMessageSystemReady) or nil
local MakeItemKey = (_G.C_AuctionHouse and _G.C_AuctionHouse.MakeItemKey) or nil
local GetNumSkillLines, GetSkillLineInfo = _G.GetNumSkillLines, _G.GetSkillLineInfo
local GetNumFactions, GetFactionInfo = _G.GetNumFactions, _G.GetFactionInfo
local GetMoney, CopyTable = _G.GetMoney, _G.CopyTable
local GetItemNameByID, GetItemInfo = _G.C_Item.GetItemNameByID, _G.C_Item.GetItemInfo
local GetItemCount = _G.C_Item and _G.C_Item.GetItemCount
local GetActiveConfigID = _G.C_ClassTalents and _G.C_ClassTalents.GetActiveConfigID
local GetConfigIDBySystemID, GetNodeInfo, ConfigHasStagedChanges, GetStagedChanges, GetTreeNodes, GetConfigInfo =
    (_G.C_Traits and _G.C_Traits.GetConfigIDBySystemID),
    (_G.C_Traits and _G.C_Traits.GetNodeInfo),
    (_G.C_Traits and _G.C_Traits.ConfigHasStagedChanges),
    (_G.C_Traits and _G.C_Traits.GetStagedChanges),
    (_G.C_Traits and _G.C_Traits.GetTreeNodes),
    (_G.C_Traits and _G.C_Traits.GetConfigInfo)

-- Local renaming
local RECIPES = addon.professions.recipeIds
local MATERIALS = addon.professions.materialIds

--local enums
local EVENTS_TO_REGISTER_AH = {
    --Universal
    universal = {
        "AUCTION_HOUSE_SHOW",
        "AUCTION_HOUSE_CLOSED",
        "AUCTION_HOUSE_DISABLED",
        "GET_ITEM_INFO_RECEIVED",
    },
    --Classic
    classic = {
        "AUCTION_ITEM_LIST_UPDATE",
    },
    --Forever
    forever = {
        "ITEM_SEARCH_RESULTS_UPDATED",
        "COMMODITY_SEARCH_RESULTS_UPDATED",
    },
}

local IDs = {
    LEGACY_SYSTEM_ID = 45,
    OVERTIME_NODE_ID = 110290,
    OVERTIME_SPELL_ID = 1225451,
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
    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" and addon.game ~= "MOP" and addon.game ~= "FOREVER" then return end
    if self.session.isInitialized then return end

    --Set the flag to check the players inventory for lingering items
    RXPCData.professions.isInitialScanned = false

    --Register events
    for version, events in pairs(EVENTS_TO_REGISTER_AH) do
        if version == "universal" or (version == "classic" and addon.professions.session.isClassic) or (version == "forever" and not addon.professions.session.isClassic) then
            for _, event in ipairs(events) do
                self:RegisterEvent(event)
            end
        end
    end

    self.session.isInitialized = true
end

function addon.professions.AH.session:Reset()
    self.foundItems = {}
    self.materialIndex = 1
    self.materialsToScan = {}
    self.currentPage = 0
    self.currentItemName = ""
    self.sentQuery = false
    self.isScanning = false
end

-- Local renaming
local session = addon.professions.AH.session


--Local functions

--Helper function to determine if itemID is part of a profession
local function isRecipeOrMaterial(itemID, professionName)
    if not professionName then return end
    if not type(itemID) == "number" then return end
    if addon.professions.session.isClassic then
        if not RECIPES.classic[professionName] and not MATERIALS.classic[professionName] then return end
        return RECIPES.classic[professionName][itemID] or MATERIALS.classic[professionName][itemID]
    else
        if not RECIPES.forever[professionName] and not MATERIALS.forever[professionName] then return end
        return RECIPES.forever[professionName][itemID] or MATERIALS.forever[professionName][itemID]
    end
end

--Scans backpacks for items created by recipes in backpacks for
--given profession names and updates the RXPCData accordingly
--Because of problems stated in: https://warcraft.wiki.gg/wiki/API_GetContainerNumSlots
--we call this function when AH is opened for the first time, per player character
local function initialScanInventoryForCraftedItems(prof1Name, prof2Name)
    --Reset RXPCData.craftedItems so the new scan will not be added to old scan
    RXPCData.craftedItems = {}
    local numberOfSlots, itemName, itemID, itemCount
    for bagID = 0, NUM_BAG_SLOTS do
        numberOfSlots = GetContainerNumSlots(bagID)
        if numberOfSlots == 0 then
            break
        end
        for slot = 1, numberOfSlots do
            local containerInfo = GetContainerItemInfo(bagID, slot)
            if containerInfo and (isRecipeOrMaterial(containerInfo.itemID, prof1Name) or isRecipeOrMaterial(containerInfo.itemID, prof2Name)) then
                itemID = containerInfo.itemID
                itemCount = containerInfo.stackCount
                RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + itemCount
            end
        end
    end
end


function addon.professions.AH:gatherMaterialsToScan(professionName)
    if addon.professions.session.isClassic then
        if not MATERIALS.classic[professionName] then return end
        for materialId, _ in pairs(MATERIALS.classic[professionName]) do
            tinsert(self.session.materialsToScan, materialId)
        end
    else
        if not MATERIALS.forever[professionName] then return end
        for materialId, _ in pairs(MATERIALS.forever[professionName]) do
            tinsert(self.session.materialsToScan, materialId)
        end
    end
end

--Scan functions

--Scan for classic versions
local function classicScan(itemID)
    if not addon.professions.session.isClassic then return end

    if addon.professions.AH.session.sentQuery then return end
    if not CanSendAuctionQuery() then
        C_Timer.After(0.35, function ()
           classicScan(itemID)
        end)
        return
    end

    local item = Item:CreateFromItemID(itemID)
    local itemName
    item:ContinueOnItemLoad(function ()
        itemName = item:GetItemName()
        addon.professions.AH.session.sentQuery = true
        -- text, minLevel, maxLevel, page, usable, rarity, getAll, exactMatch, filterData
        QueryAuctionItems(itemName, nil, nil, addon.professions.AH.session.currentPage, false, nil, false, true, nil)
    end)
end

--Scan for forever version
local function foreverScan(itemID)
    if addon.professions.session.isClassic then return end

    if addon.professions.AH.session.sentQuery then return end

    if not IsThrottledMessageSystemReady() then
        C_Timer.After(0.35, function ()
            foreverScan(itemID)
        end)
        return
    end

    local item = Item:CreateFromItemID(itemID)
    local itemKey
    item:ContinueOnItemLoad(function ()
        itemKey = MakeItemKey(item:GetItemID())
        addon.professions.AH.session.sentQuery = true
        SendSearchQuery(itemKey, {}, false)
    end)

end

--Main scan function
function addon.professions.AH:Scan()
    if not self.session.ahIsShowing then return end

    self.session.materialIndex = 1
    if addon.professions.session.isClassic then
        classicScan(self.session.materialsToScan[self.session.materialIndex])
    else
        foreverScan(self.session.materialsToScan[self.session.materialIndex])
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

--Classic events
function addon.professions.AH:GET_ITEM_INFO_RECEIVED(_, itemID, success)
    --print("GET_ITEM_INFO_RECEIVED")
end

function addon.professions.AH:AUCTION_ITEM_LIST_UPDATE()
    if not self.session.sentQuery then return end

    local resultCount, totalAuctions = GetNumAuctionItems("list")
    if resultCount == 0 or totalAuctions == 0 then
        self.session.sentQuery = false
        self.session.currentPage = 0
        self.session.materialIndex = self.session.materialIndex + 1
        if self.session.materialIndex <= #self.session.materialsToScan then
            classicScan(self.session.materialsToScan[self.session.materialIndex])
        end
        return
    end

    local name, count, buyoutPrice, owner, itemID, hasAllInfo, itemLink
    local pricePerItem
    for i = 1, resultCount do
        itemLink = GetAuctionItemLink("list", i)
        -- name, texture, count, quality, canUse, level, levelColHeader, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemId, hasAllInfo = GetAuctionItemInfo(type, index)
        name, _, count, _, _, _, _, _, _, buyoutPrice, _, _, _, owner, _, _, itemID, hasAllInfo = GetAuctionItemInfo("list", i)

        self.session.foundItems[itemID] = self.session.foundItems[itemID] or {}
        if buyoutPrice > 0 then
            --TODO: maybe even coalesce 'nearby' pricePerItems as well
            pricePerItem = ceil(buyoutPrice / count)
            self.session.foundItems[itemID][pricePerItem] = (self.session.foundItems[itemID][pricePerItem] or 0) + count
        end
    end

    self.session.sentQuery = false
    self.session.currentPage = self.session.currentPage + 1

    classicScan(self.session.materialsToScan[self.session.materialIndex])
end

--Forever events
function addon.professions.AH:ITEM_SEARCH_RESULTS_UPDATED(_, itemKey, _)
    if not self.session.sentQuery then return end

    local resultCount = GetNumItemSearchResults(itemKey)
    local result, itemID, price, count
    local totalCount = 0
    for i = 1, resultCount do
		result = GetItemSearchResultInfo(itemKey, i)
        if result and result.buyoutAmount then
            itemID = result.itemKey.itemID
            price = result.buyoutAmount
            count = result.quantity
            self.session.foundItems[itemID] = self.session.foundItems[itemID] or {}
            self.session.foundItems[itemID][price] = count
            totalCount = totalCount + count
        end
	end
    print(GetItemNameByID(itemKey.itemID), totalCount, "item")

    self.session.sentQuery = false
    self.session.materialIndex = self.session.materialIndex + 1
    if self.session.materialIndex <= #self.session.materialsToScan then
        foreverScan(self.session.materialsToScan[self.session.materialIndex])
    end
end

function addon.professions.AH:COMMODITY_SEARCH_RESULTS_UPDATED(_, itemID)
    if not self.session.sentQuery then return end

    local resultCount = GetNumCommoditySearchResults(itemID)
    local result,price, count
    local totalCount = 0
    for i = 1, resultCount do
		result = GetCommoditySearchResultInfo(itemID, i)
        if result then
            price = result.unitPrice
            count = result.quantity
            self.session.foundItems[itemID] = self.session.foundItems[itemID] or {}
            self.session.foundItems[itemID][price] = count
            totalCount = totalCount + count
        end
	end
    print(GetItemNameByID(itemID), totalCount, "com")

    self.session.sentQuery = false
    self.session.materialIndex = self.session.materialIndex + 1
    if self.session.materialIndex <= #self.session.materialsToScan then
        foreverScan(self.session.materialsToScan[self.session.materialIndex])
    end
end



local function gatherPlayerProfessionInfo()
    if not RXPCData.professions.profession1 then RXPCData.professions.profession1 = {} end
    if not RXPCData.professions.profession2 then RXPCData.professions.profession2 = {} end

    if addon.professions.session.isClassic then
        --skillName, header, isExpanded, skillRank, numTempPoints, skillModifier,
        --skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType,
        --skillDescription = GetSkillLineInfo(index)
        local skillName, isHeader, skillRank, skillMaxRank
        local foundFirst = false
        for i = 1, GetNumSkillLines() do --TODO: Proveri da li ovde nastaje problem u Forever-u!!!!
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
    else
        local prof1Index, prof2Index, archaeology, fishing, cooking = GetProfessions()
        local name, skillLevel, maxSkillLevel, skillLine, specializationIndex, specializationOffset, skillLineName
        if prof1Index then
            name, _, skillLevel, maxSkillLevel,
            _, _, skillLine,
            _, specializationIndex,
            specializationOffset, skillLineName = GetProfessionInfo(prof1Index)
            RXPCData.professions.profession1 = {
                name = name,
                skillLevel = skillLevel,
                skillMaxLevel = maxSkillLevel
            }
        end
        if prof2Index then
            name, _, skillLevel, maxSkillLevel,
            _, _, skillLine,
            _, specializationIndex,
            specializationOffset, skillLineName = GetProfessionInfo(prof2Index)
            RXPCData.professions.profession2 = {
                name = name,
                skillLevel = skillLevel,
                skillMaxLevel = maxSkillLevel
            }
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


--Checks if player has Working Overtime talent points
local function gatherPlayerWorkingOvertimeTalent()
    if addon.professions.session.isClassic then
        RXPCData.professions.overtimeLevel = 0
        return
    end

    --Get all config IDs
    local configIDs = {}
    if GetActiveConfigID then
        local id = GetActiveConfigID()
        if id and id ~= 0 then
            configIDs[#configIDs + 1] = id
        end
    end
    if GetConfigIDBySystemID then
        local id = GetConfigIDBySystemID(IDs.LEGACY_SYSTEM_ID)
        if id and id ~= 0 then
            configIDs[#configIDs + 1] = id
        end
    end

    --Sarch for overtime node
    local config, node
    for _, configID in ipairs(configIDs) do
        config = GetConfigInfo(configID)
        for _, treeID in ipairs(config and config.treeIDs or {}) do
            for _, nodeID in ipairs(GetTreeNodes(treeID) or {}) do
                node = GetNodeInfo(configID, nodeID)
                if node and node.ID ~= 0 and node.ID == IDs.OVERTIME_NODE_ID and node.maxRanks and node.maxRanks > 0 then
                    if node.activeRank then
                        --Check if rank is commited or not
                        local hasStaged = ConfigHasStagedChanges(configID)
                        if hasStaged then
                            local isNodeStaged = false
                            for _, list in ipairs({GetStagedChanges(configID)}) do
                                for _, id in ipairs(type(list) == "table" and list or {}) do
                                    if id == IDs.OVERTIME_NODE_ID then
                                        isNodeStaged = true
                                        break
                                    end
                                end
                            end
                            hasStaged = isNodeStaged
                        end
                        if not hasStaged then
                            RXPCData.professions.overtimeLevel = node.activeRank or 0
                        else
                            RXPCData.professions.overtimeLevel = RXPCData.professions.overtimeLevel or 0
                        end
                        return
                    end
                end
            end
        end
    end
    RXPCData.professions.overtimeLevel = 0
end



function addon.professions.AH:fullScan()
    gatherPlayerProfessionInfo()
    gatherPlayerMoneyInfo()
    gatherPlayerFactionInfo()
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
    addon.professions.AH:Scan()
end


function addon.professions.AH:exportInfo()
    gatherPlayerProfessionInfo()
    gatherPlayerFactionInfo()
    gatherPlayerMoneyInfo()
    gatherPlayerWorkingOvertimeTalent()
    RXPCData.professions.foundItems = self.session.foundItems
    RXPCData.professions.scannedAt = self.session.scannedAt
end

--[[ 
Debug section
]]

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
    --debug.ListScanItems()
    if RXPCData.professions.profession2.name then
        print("gathering second profession")
        addon.professions.AH:gatherMaterialsToScan(RXPCData.professions.profession2.name)
        --debug.ListScanItems()
    end

    addon.professions.AH.session.materialIndex = 1
    addon.professions.AH:Scan()
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

    if not name2 or not tonumber(skillLevel2) then print("no prof2 - removing prof2") RXPCData.professions.profession2 = {} return end
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

function debug.SetOvertimeLevel(level)
    if not tonumber(level) then return end
    level = tonumber(level)
    if level > 5 then level = 5 end
    if level < 0 then level = 0 end
    RXPCData.professions.overtimeLevel = level
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
SLASH_seto1 = '/seto'
SlashCmdList['seto'] = function (args)
    debug.SetOvertimeLevel((split(" ", trim(args))))
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
    local roughStone = 2835
    local felIronHammer = 23498
    local weakFlux = 2880

    gatherPlayerProfessionInfo()
    gatherPlayerFactionInfo()
    gatherPlayerMoneyInfo()

    for k, v in pairs(RXPCData.craftedItems) do
        local name = GetItemNameByID(k)
        print(name, " -> ", tostring(v))
    end

    if true then return end

    print("tt:")
    addon.professions.AH.q = addon.professions.AH.q or false
    if not addon.professions.AH.q then
        addon.professions.AH.q = true
        addon.professions.AH.session.materialsToScan = {
            2835, -- rough stone
            2840, -- copper bar
            2880, -- weak flux
            2589, -- linen cloth
        }

        addon.professions.AH:Scan()
    else
        for k, v in pairs(addon.professions.AH.session.foundItems) do
            local total = 0
            for kk, vv in pairs(v) do
                total = total + vv
            end
            print(tostring(k), ":", total)
        end
        addon.professions.AH.q = false
    end
end
