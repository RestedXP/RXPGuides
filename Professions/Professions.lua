local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globals
local _G = _G
local len, fmt, lower, find, match, gmatch = string.len, string.format, string.lower, string.find, string.match, string.gmatch
local tcount, tinsert, twipe, tsort, tremove, tconcat = table.count, table.insert, table.wipe, table.sort, table.remove, table.concat
local pairs, ipairs, next, type, tostring, tonumber, error, unpack = pairs, ipairs, next, type, tostring, tonumber, error, unpack
local max, min, abs, floor, ceil, huge, log = math.max, math.min, math.abs, math.floor, math.ceil, math.huge, math.log
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo
local GetNumPrimaryProfessions, GetProfessionInfo, GetSpellTabInfo = _G.GetNumPrimaryProfessions, _G.GetProfessionInfo, _G.GetSpellTabInfo --GetProfessions is not used in classics
local GetNumSkillLines, GetSkillLineInfo = _G.GetNumSkillLines, _G.GetSkillLineInfo
local GetItemNameByID = _G.C_Item.GetItemNameByID
local GetNumFactions, GetFactionInfo = _G.GetNumFactions, _G.GetFactionInfo
local GetContainerItemInfo = _G.C_Container.GetContainerItemInfo
local date = _G.date
local GetMoney = _G.GetMoney


addon.professions = addon:NewModule("ProfessionsGuide", "AceEvent-3.0")

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
    "ITEM_LOCKED", --Locking the item in bagSlot (when selling to a vendor for example)

    "CHAT_MSG_LOOT",
    "CHAT_MSG_SKILL",

    "PLAYER_MONEY",
}

local session = {
    isInitialized = false,
}

--local helper functions

--TODO: Maybe change to table approach
--Faster way to concat strings
--Assumes allways builder .. "string"
--InitialString may be empty
local function stringBuilder(initialString)
    local self = {
        t = {initialString}
    }

    function self:append(str)
        self.t[#self.t+1] = str
        return self
    end

    function self:build()
        return tconcat(self.t)
    end

    function self:flush()
        self.t = {}
    end

    function self:isEmpty()
        return #self.t > 0
    end

    return setmetatable(self, {__concat = function (a, b)
        a.t[#a.t+1] = b
        return a
    end})
end

--Splits arguments for slash commands to emulate ... var args
local function varArgs(message)
    local args = {}
    for arg in message:gmatch("%S+") do
        args[#args+1] = arg
    end
    return unpack(args)
end

--Prints the (global) data
local function pnt(...)
    local args = {...}
    local arg
    local dots
    for i = 1, #args do
        arg = args[i]
        if find(arg, "%.") then
            dots = nil
            for dot in gmatch(arg, "[^%.]+") do
                if not dots then
                    dots = _G[dot]
                else
                    dots = dots[dot]
                end
            end
            print(dots)
        elseif _G[arg] then
            print("global: ", _G[arg])
        else
            print(arg)
        end
    end
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

--Formats money to xg ys zc
local function formatMoney(money)
    if money > 10000 then
        return fmt("%dg %ds %dc", money / 10000, (money % 10000) / 100, money % 100)
    elseif money > 100 then
        return fmt("%ds %dc", money / 100, money % 100)
    end
    return fmt("%dc", money)
end

--Validates that RXPCData.professions.profession1 and RXPCData.professions.profession2 are set up correctly
local function validatePlayerProfessions(level)
    level = level or 0

    --Profession 1
    if not RXPCData.professions then
        error("RXPCData.professions is not initialized", level + 1)
    elseif not RXPCData.professions.profession1 then
        error("RXPCData.professions.profession1 is not initialized", level + 1)
    elseif not RXPCData.professions.profession1.name then
        error("RXPCData.professions.profession1.name is not initialized", level + 1)
    elseif type(RXPCData.professions.profession1.name) ~= "string" then
        error("RXPCData.professions.profession1.name is of type '" .. type(RXPCData.professions.profession1.name) .. "' but 'string' expected", level + 1)
    elseif not addon.professions.locale.PROFESSION_NAMES[RXPCData.professions.profession1.name] then
        error("RXPCData.professions.profession1.name is '" .. RXPCData.professions.profession1.name .. "' which is not a valid profession", level + 1)
    elseif not RXPCData.professions.profession1.skillLevel then
        error("RXPCData.professions.profession1.skillLevel is not initialized", level + 1)
    elseif type(RXPCData.professions.profession1.skillLevel) ~= "number" then
        error("RXPCData.professions.profession1.skillLevel is of type '" .. type(RXPCData.professions.profession1.skillLevel) .. "' but 'number' expected", level + 1)
    elseif RXPCData.professions.profession1.skillLevel < 1 or RXPCData.professions.profession1.skillLevel > 300 then
        error("RXPCData.professions.profession1.skillLevel " .. tostring(RXPCData.professions.profession1.skillLevel) .. " out of bounds for [1, 300]", level + 1)
    elseif not RXPCData.professions.profession1.skillMaxLevel then
        error("RXPCData.professions.profession1.skillMaxLevel is not initialized", level + 1)
    elseif type(RXPCData.professions.profession1.skillMaxLevel) ~= "number" then
        error("RXPCData.professions.profession1.skillMaxLevel is of type '" .. type(RXPCData.professions.profession1.skillMaxLevel) .. "' but 'number' expected", level + 1)
    elseif RXPCData.professions.profession1.skillMaxLevel ~= 300 then
        error("RXPCData.professions.profession1.skillLevel " .. tostring(RXPCData.professions.profession1.skillLevel) .. " but 300 expected", level + 1)
    end

    --Profession 2
    if RXPCData.professions.profession2 then
        if not RXPCData.professions.profession2 then
            error("RXPCData.professions.profession2 is not initialized", level + 1)
        elseif not RXPCData.professions.profession2.name then
            error("RXPCData.professions.profession2.name is not initialized", level + 1)
        elseif type(RXPCData.professions.profession2.name) ~= "string" then
            error("RXPCData.professions.profession2.name is of type '" .. type(RXPCData.professions.profession2.name) .. "' but 'string' expected", level + 1)
        elseif not addon.professions.locale.PROFESSION_NAMES[RXPCData.professions.profession2.name] then
            error("RXPCData.professions.profession2.name is '" .. RXPCData.professions.profession2.name .. "' which is not a valid profession", level + 1)
        elseif not RXPCData.professions.profession2.skillLevel then
            error("RXPCData.professions.profession2.skillLevel is not initialized", level + 1)
        elseif type(RXPCData.professions.profession2.skillLevel) ~= "number" then
            error("RXPCData.professions.profession2.skillLevel is of type '" .. type(RXPCData.professions.profession2.skillLevel) .. "' but 'number' expected", level + 1)
        elseif RXPCData.professions.profession2.skillLevel < 1 or RXPCData.professions.profession2.skillLevel > 300 then
            error("RXPCData.professions.profession2.skillLevel " .. tostring(RXPCData.professions.profession2.skillLevel) .. " out of bounds for [1, 300]", level + 1)
        elseif not RXPCData.professions.profession2.skillMaxLevel then
            error("RXPCData.professions.profession2.skillMaxLevel is not initialized", level + 1)
        elseif type(RXPCData.professions.profession2.skillMaxLevel) ~= "number" then
            error("RXPCData.professions.profession2.skillMaxLevel is of type '" .. type(RXPCData.professions.profession2.skillMaxLevel) .. "' but 'number' expected", level + 1)
        elseif RXPCData.professions.profession2.skillMaxLevel ~= 300 then
            error("RXPCData.professions.profession2.skillLevel " .. tostring(RXPCData.professions.profession2.skillLevel) .. " but 300 expected", level + 1)
        end
    end
end

--Validates that RXPCData.profession.faction is "Horde" | "Alliance"
--Throws error with given level, where level corresponds to level in 'error' **numerically** (default 0)
--TODO: Check if level + 1 is correct
local function validatePlayerFaction(level)
    level = level or 0
    if not RXPCData.professions then
        error("RXPCData.professions is not initialized", level + 1)
    elseif not RXPCData.professions.faction then
        error("RXPCData.professions.faction is not initialized", level + 1)
    elseif type(RXPCData.professions.faction) ~= "string" then
        error("RXPCData.professions.faction is of type '" .. type(RXPCData.professions.faction) .. "' but 'string' expected", level + 1)
    elseif lower(RXPCData.professions.faction) ~= "alliance" and lower(RXPCData.professions.faction) ~= "horde" then
        error("RXPCData.professions.faction is '" .. RXPCData.professions.faction .. "' which is not 'Alliance' nor 'Horde'", level + 1)
    end
end

--Auxilliary function to the one below it. Should never be called directly
local function deepCopyTableAUX(tbl, visited)
    visited = visited or {}
    --Base cases
    if tbl == nil then return nil end
    if visited[tbl] then return visited[tbl] end
    if type(tbl) ~= "table" then return tbl end

    local copy = {}
    visited[tbl] = copy
    for k, v in pairs(tbl) do
        copy[deepCopyTableAUX(k, visited)] = deepCopyTableAUX(v, visited)
    end
    return copy
end

--Creates a deep copy of a table recursively, based on a graph oriented approach
local function deepCopyTable(tbl)
    if type(tbl) ~= "table" then return nil end
    return deepCopyTableAUX(tbl, {})
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
    if not RXPCData.craftedItems then return end

    local sb = stringBuilder("crafted items = {\n")
    for itemName, itemCount in pairs(RXPCData.craftedItems) do
        sb:append(itemName):append(": "):append(tostring(itemCount)):append("\n")
    end
    sb:append("}")
    return sb:build()
end

--Serializes foundItems for debugging purposes
--Optionally should call calculateMaterialAveragePrice first to display that info as well
local function serializeFoundItems()
    local sb = stringBuilder("Found items:\n")
    local avg
    for itemName, items in pairs(addon.professions.profSession.foundItems) do
        avg = addon.professions.profSession.itemAveragePrice[itemName] and formatMoney(ceil(addon.professions.profSession.itemAveragePrice[itemName])) or "N/A"
        sb:append(itemName):append(" | count = "):append(#items):append("| avg = "):append(avg):append("\n")
        for _, itemTable in ipairs(items) do
            sb:append(tostring(itemTable.count)):append(" @ "):append(formatMoney(itemTable.pricePerItem)):append("| ")
        end
        sb:append("=====\n")
    end
    return sb:build()
end

--Converts foundItems to Lua table text
local function foundItemsToLuaTable()
    local sb = stringBuilder("{\n")
    for itemName, itemTables in pairs(addon.professions.profSession.foundItems) do
        sb:append("\t[\""):append(itemName):append("\"] = {\n")
        for _, itemTable in ipairs(itemTables) do
            sb:append("\t\t{\n")
            sb:append("\t\t\tcount = "):append(itemTable.count):append(",\n")
            sb:append("\t\t\tprice = "):append(itemTable.price):append(",\n")
            sb:append("\t\t\tpricePerItem = "):append(itemTable.pricePerItem):append(",\n")
            sb:append("\t\t},\n")
        end
        sb:append("\t},\n")
    end
    sb:append("}")

    return sb:build()
end

--Converts foundItems to JSON Object
local function foundItemsToJSONObject()
    local sb = stringBuilder("{\n")
    for itemName, itemTables in pairs(addon.professions.profSession.foundItems) do
        sb:append("\t\""):append(itemName):append("\" : {\n")
        local i = 1
        for _, itemTable in ipairs(itemTables) do
            sb:append("\t\t\""):append(tostring(i)):append("\":{\n")
            sb:append("\t\t\t\"count\" : "):append(itemTable.count):append(",\n")
            sb:append("\t\t\t\"price\" : "):append(itemTable.price):append(",\n")
            sb:append("\t\t\t\"pricePeritem\" : "):append(itemTable.pricePerItem):append("\n")
            sb:append("\t\t},\n")
            i = i + 1
        end
        sb:append("\t},\n")
    end
    sb:append("}")

    return sb:build()
end

--Exports foundItems to clipboard in given format
--1 -> Lua Table (default)
--2 -> JSON Object
local function exportFoundItems(option)
    local currentDate = tostring(date("%m/%d/%y %H:%M:%S"))
    local sb = stringBuilder("---"):append(currentDate):append(" "):append(tostring(RXPCData.professions.profession1.name)):append("---\n")
    local converted
    if option == 2 then
        converted = foundItemsToJSONObject()
    else
        converted = foundItemsToLuaTable()
    end
    sb:append(converted)

    return sb:build()
end

--[[
Sorts collected recipies by options and order
Options:
1  - Orange
2  - Yellow
3  - Grey
4  - Training Cost
5  - Recipe Cost
6 - Cast Time
7 - Sell Price
Order:
1 - ASC
2 - DESC
]]
local function sortSelectedRecipesBy(selectedRecipes, option, order)
    local sorted = {}
    for k, v in pairs(selectedRecipes) do
        sorted[#sorted+1] = {k, v}
    end
    tsort(sorted, function (a, b)
        if order == 1 then
            return a[2][option] < b[2][option]
        else
            return a[2][option] > b[2][option]
        end
    end)
end


addon.professions.profSession = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    foundItems = {}, --pairs --table of 'rows' in AH per item --pairs of ipairs
    itemAveragePrice = {}, --pairs [itemName] = averagePrice

    currentPage = 0,
    currentItemName = "",

    materialsToScan = {}, --ipairs
    recipesToConsider = {}, --pairs [recipeName] = {recipeMinimumPrice, recipeAveragePrice}
    materialIndex = 1,

    ahIsShowing = false,
    sentQuery = false,
    isScanning = false,
}

function addon.professions.profSession:Reset()
    self.foundItems = {}
    self.itemAveragePrice = {}
    self.currentPage = 0
    self.sentQuery = false
    self.isScanning = false
    self.currentItemName = ""
    self.materialIndex = 1
    self.recipesToConsider = {}
    self.materialsToScan = {}
end

--local renaming
--we do this as to not have addon.professions.etc every time
local profSession = addon.professions.profSession
local PROFESSIONS = addon.professions.PROFESSIONS
local vah = addon.professions.vah
local GUI = addon.professions.GUI
local locale = addon.professions.locale

--local functions

--Sets RXPCData.professions
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

--Sets RXPCData.faction
local function gatherPlayerFactionInfo()
    if not RXPCData.professions then RXPCData.professions = {} end

    local name
    for i = 1, GetNumFactions() do
        name = GetFactionInfo(i)
        if name == "Alliance" then
            RXPCData.professions.faction = "Alliance"
        elseif name == "Horde" then
            RXPCData.professions.faction = "Horde"
        end
    end
end

--Sets RXPCData.professions.money
local function gatherPlayerMoneyInfo()
    if not RXPCData.professions then RXPCData.professions = {} end

    RXPCData.professions.money = GetMoney()
end

--Removes grey recipes
local function removeGreyRecipes(professionName, professionSkillLevel)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if PROFESSIONS[professionName].RECIPES[recipe].grey <= professionSkillLevel then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Removes non-trainable recipes
local function removeNonTrainable(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if not PROFESSIONS[professionName].RECIPES[recipe].trainable then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Remove non-faction recipes
local function removeNonFactionProfessions(professionName)
    validatePlayerFaction(2)

    local playerFaction = lower(RXPCData.professions.faction)
    local faction
    for recipe, _ in pairs(profSession.recipesToConsider) do
        faction = PROFESSIONS[professionName].RECIPES[recipe].faction
        if faction ~= "neutral" and faction ~= playerFaction then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Gather what recipes to consider based on segment
--minSegment = minimumSkillLevel
--maxSegment = maximumSkillLevel
local function gatherRecipesBySegment(professionName, minSegment, maxSegment)
    profSession.recipesToConsider = {}

    for segmentLevel, recipesInSegment in pairs(PROFESSIONS[professionName].SEGMENTS) do
        if segmentLevel <= maxSegment then
            for _, recipe in ipairs(recipesInSegment) do
                if not profSession.recipesToConsider[recipe] then
                    profSession.recipesToConsider[recipe] = {recipeMinimumPrice = huge, recipeAveragePrice = huge}
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

--Calculate average price per found item
--Must be called after a scan is done
local function calculateMaterialAveragePrice()
    local average = 0.0
    local count = 0
    for itemName, itemTables in pairs(profSession.foundItems) do
        average = 0.0
        count = 0
        for _, itemTable in ipairs(itemTables) do
            average = average + itemTable.price
            count = count + itemTable.count
        end
        profSession.itemAveragePrice[itemName] = average / count
    end
end

--Calculate minimum price of each recipe and sets it in profSession.recipesToConsider
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

The downside of this approach is that the minimum price might
vary very much from the actual prices when created in bulk
]]
local function calculateRecipeMinimumPrice(professionName)
    local totalPrice, remaining, i, materialNotFound, impossibleToCraft, recipeMinimumPrice
    -- Check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, recipePrices in pairs(profSession.recipesToConsider) do
            --print("considering to calculate: ", recipe)
            --Evaluate only if its not already evaluted
            recipeMinimumPrice = recipePrices["recipeMinimumPrice"]
            materialNotFound = false
            impossibleToCraft = false
            if recipeMinimumPrice == huge then
                --print("calculating: ", recipe)
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
                        elseif profSession.recipesToConsider[materialName]["recipeMinimumPrice"] == huge then
                            totalPrice = huge
                        else
                            totalPrice = totalPrice + profSession.recipesToConsider[materialName]["recipeMinimumPrice"]
                        end
                    --If its from a vendor
                    elseif materialTable.fromVendor then
                        --Check if already impossible
                        if not totalPrice == huge then
                            totalPrice = totalPrice + (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100) * materialTable.count --Vendor prices are in silvers
                        end
                    else --If from AH
                        --If there isn't any in the AH
                        if not profSession.foundItems[materialName] or select(1, tcount(profSession.foundItems[materialName])) == 0 then
                            totalPrice = huge
                            materialNotFound = true
                        else
                            remaining = materialTable.count
                            i = 1
                            while profSession.foundItems[materialName] ~= nil and remaining > 0 and i <= #profSession.foundItems[materialName] and remaining <= #profSession.foundItems[materialName] do --TODO:remaining <= #profSession.foundItems[materialName] should not exist??? --TODO: better check for. maybe calculate how many in general there are materials of 'materialName'
                                totalPrice = totalPrice + profSession.foundItems[materialName][i].pricePerItem * materialTable.count
                                remaining = remaining - profSession.foundItems[materialName][i].count
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
                profSession.recipesToConsider[recipe]["recipeMinimumPrice"] = totalPrice
                --Check if its evluated (= not huge) and if so mark it as evaluated
                if profSession.recipesToConsider[recipe]["recipeMinimumPrice"] ~= huge then
                    recipeCount = recipeCount - 1
                else
                    --Check if there is no(t enough) material(s) in AH and remove it
                    if materialNotFound or impossibleToCraft then
                        --If so, remove it from the list
                        print("impossible: ", recipe)
                        profSession.recipesToConsider[recipe] = nil --We are still in the for loop, be mindful if this is correct
                        recipeCount = recipeCount - 1
                    end
                end
            else
                recipeCount = recipeCount - 1
            end
        end
    end
end

-- Calulcates the average price of each recipe and sets it in profSession.recipesToConsider
--[[
Function is akin to calculateRecipeMinimumPrice, only instead of using the cheapest
resources, it calculates by using the average item price.

The downside of this approache is that the average price
might be skewed by some low or high items in the AH
]]
local function calculateRecipeAveragePrice(professionName)
    calculateMaterialAveragePrice()
    local totalPrice, remaining, i, materialNotFound, impossibleToCraft, recipeAveragePrice
    -- Check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, recipePrices in pairs(profSession.recipesToConsider) do
            --print("considering to calculate: ", recipe)
            --Evaluate only if its not already evaluted
            recipeAveragePrice = recipePrices["recipeAveragePrice"]
            materialNotFound = false
            impossibleToCraft = false
            if recipeAveragePrice == huge then
                --print("calculating: ", recipe)
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
                        elseif profSession.recipesToConsider[materialName]["recipeAveragePrice"] == huge then
                            totalPrice = huge
                        else
                            totalPrice = totalPrice + profSession.recipesToConsider[materialName]["recipeAveragePrice"] * materialTable.count
                        end
                    --If its from a vendor
                    elseif materialTable.fromVendor then
                        --Check if already impossible
                        if not totalPrice == huge then
                            totalPrice = totalPrice + (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100) * materialTable.count --Vendor prices are in silvers
                        end
                    else --If from AH
                        --If there isn't any in the AH
                        if not profSession.itemAveragePrice[materialName] then
                            totalPrice = huge
                            materialNotFound = true
                        else
                            totalPrice = totalPrice + profSession.itemAveragePrice[materialName] * materialTable.count
                        end
                    end
                end
                profSession.recipesToConsider[recipe]["recipeAveragePrice"] = ceil(totalPrice)
                --Check if its evluated (= not huge) and if so mark it as evaluated
                if profSession.recipesToConsider[recipe]["recipeAveragePrice"] ~= huge then
                    recipeCount = recipeCount - 1
                else
                    --Check if there is no(t enough) material(s) in AH and remove it
                    if materialNotFound or impossibleToCraft then
                        --If so, remove it from the list
                        print("impossible: ", recipe)
                        profSession.recipesToConsider[recipe] = nil --We are still in the for loop, be mindful if this is correct
                        recipeCount = recipeCount - 1
                    end
                end
            else
                recipeCount = recipeCount - 1
            end
        end
    end
end

--Chooses which calculation method to use.
--[[
1 - Minimum price (default)
2 - Average price
]]
function addon.professions.calculateRecipePrice(professionName, option)
    option = option or 1
    if type(option) ~= "number" then option = 1 end

    if option == 1 then
        calculateRecipeMinimumPrice(professionName)
    elseif option == 2 then
        calculateRecipeAveragePrice(professionName)
    end
end


--Find the last recipe that the given material is used in
--Might return nil if targetMaterialName is not used anywhere
local function findLastUse(professionName, targetMaterialName)
    --Looks for the recipe name with the largest grey value associated to it.
    --TODO: maybe its better to use orange instead? Think.
    local recipe, grey
    local found
    for recipeName, recipeTable in pairs(PROFESSIONS[professionName].RECIPES) do
        found = false
        for materialName, _ in pairs(recipeTable.materials) do
            if not found then
                if materialName == targetMaterialName then
                    --Check if new largest
                    if not recipe or (recipe and grey < recipeTable.grey) then
                        recipe = recipeName
                        grey = recipeTable.grey
                    end
                end
            end
        end
    end
    --Return largest
    return recipe
end

--Check if the given recipe is the last recipe for the given material
local function isLastRecipeThatUsesMaterial(professionName, recipeName, materialName)
    return recipeName == findLastUse(professionName, materialName)
end

--Checks if the given recipe is a compound recipe
local function isCompoundRecipe(professionName, recipeName)
    for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
       if PROFESSIONS[professionName].RECIPES[materialName] then return true end
    end
    return false
end

--Checks if a given material(or reipce) is a part of the given recipe
local function isPartOfTheRecipe(professionName, targetMaterialName, targetRecipe)
    local isPart = false
    for materialName, _ in pairs(PROFESSIONS[professionName].RECIPES[targetRecipe].materials) do
        if not isPart then
            if materialName == targetMaterialName then
                isPart = true
            end
        end
    end
    return isPart
end

--Checks if the given material(or recipe) name is a part of a different recipe.
local function isPartOfAnyRecipe(professionName, targetMaterialName)
    for recipeName, recipeTable in pairs(PROFESSIONS[professionName].RECIPES) do
        for materialName, _ in pairs(recipeTable.materials) do
            if materialName == targetMaterialName then
                return true
            end
        end
    end
    return false
end


--Calculates recipe craft chance percentage
local function calculatePercent(professionName, recipeName, skillLevel)
    local recipe = PROFESSIONS[professionName].RECIPES[recipeName]
    local grey = recipe.grey
    local yellow = recipe.yellow
    local percent = (1.0 * (grey - skillLevel) / (grey - yellow))
    return percent
end

--Calculate how many attempts are needed to guarantee targetPercent P probability
local function calculateAttemptCount(percentChance, targetPercent)
    if percentChance >= 1.0 then return 1 end
    if percentChance == 0 then return huge end
    local n = log(1 - targetPercent) / log(1 - percentChance)
    return ceil(n)
end

--Applies a 'bonus' for the percentage
local function applyPercentageBonus(percentage, bonus)
    if percentage + bonus > 1.0 then
        return 1.0
    elseif percentage + bonus < 0.0 then
        return 0.0
    end
    return percentage + bonus
end


--Helper functions for main logic

--Gets recipes from sorted recipes by price
--If index isn't provided, defaults to first recipe
--Returns recipeName, recipePrice, recipeTable
local function getRecipeInfoFromSortedRecipesByPrice(professionName, sortedRecipesByPrice, index)
    index = index or 1
    local recipeName = sortedRecipesByPrice[index][1]
    local recipePrice = sortedRecipesByPrice[index][2]
    local recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
    return recipeName, recipePrice, recipeTable
end

--Gets recipe info from the database
--Returns recipeMinimumPrice, recipeAveragePrice, recipeTable
local function getRecipeInfo(professionName, recipeName)
    local recipeMinimumPrice = profSession.recipesToConsider[recipeName]["recipeMinimumPrice"]
    local recipeAveragePrice = profSession.recipesToConsider[recipeName]["recipeAveragePrice"]
    local recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
    return recipeMinimumPrice, recipeAveragePrice, recipeTable
end

--Sorts recipes by chosen price and returns at as an array ipairs{"name", chosenRecipePrice}
--1 - minimumRecipePrice (default)
--2 - averageRecipePrice
local function sortRecipesByChosenPrice(choice)
    choice = choice or 1
    if choice < 1 or choice > 2 then choice = 1 end

    local sorted = {}
    for k, v in pairs(profSession.recipesToConsider) do
        if choice == 1 then
            v = v["recipeMinimumPrice"]
        else
            v = v["recipeAveragePrice"]
        end
        sorted[#sorted+1] = {k, v}
    end
    tsort(sorted, function (a, b)
        return a[2] < b[2]
    end)
    return sorted
end

--Gathers sorted keys from sortedRecipesByPrice
local function getSortedKeys(sortedRecipesByPrice)
    local sorted = {}
    for _, k in ipairs(sortedRecipesByPrice) do
        sorted[#sorted+1] = k[1]
    end
    return sorted
end
--[[
Assumes **both** calculation methods has been envoked (average and minimum)
General idea:
0) Create an empty set of actual recipes to craft
1) Calculate raw value of each recipe
2) Sort selected recipes by price
3) Add cheapest one in greedily, but only ones that are 100%, and if it is cheaper then the next's average price
4) If added recipe is part of a recipe, recalculate considered recipes
TODO: move locals out from loop
]]
function addon.professions.gatherRecipesToBuyGreedy(professionName, skillLevel, segmentMaxLevel, money)
    local sortedRecipesByMinimumPrice = sortRecipesByChosenPrice(1) -- ipairs{"name", minimumPrice}
    local sortedRecipesByAveragePrice = sortRecipesByChosenPrice(2) -- ipairs{"name", averagePrice}
    local sortedRecipeKeysMinimum = getSortedKeys(sortedRecipesByMinimumPrice) -- ipairs{"recipeName"}
    local sortedRecipeKeysAverage = getSortedKeys(sortedRecipesByAveragePrice) -- ipairs{"recipeName"}
    --Create a lookup tables [recipeName] = true | false, whether to consider recipe or not
    local recipeToConsiderLookupMinimum = {}
    for _, recipeName in ipairs(sortedRecipeKeysMinimum) do
        recipeToConsiderLookupMinimum[recipeName] = true
    end
    local recipeToConsiderLookupAverage = {}
    for _, recipeName in ipairs(sortedRecipeKeysAverage) do
        recipeToConsiderLookupAverage[recipeName] = true
    end
    local foundItems = deepCopyTable(profSession.foundItems) -- Copy found items so we can remove them once marked as "bought"
    local haveMoney = true --If we do not have the money for the nth recipe, we do not have money for any subsequent one
    local materialsToBuyKnapsack = {} --pairs{[name] = count}
    local craftedRecipes = {} --pairs{[name] = count} --We take from this knapsack when we need it for another recipe
    local recipesToCraftKnapsack = {} --pairs{[name] = count} --This is the one that stores all necessary crafts
    local backpackKnapsack = {} --pairs{[name] = count} --Backpack containing items that we bought this session
    local skillLevelsToGain = segmentMaxLevel - skillLevel
    local skillLevelsGained = 0
    local moneySpent = money
    local howManyToMake = 0
    local recipeKeyIndex = 1
    while recipeKeyIndex <= #sortedRecipeKeysMinimum and skillLevelsToGain > 0 and haveMoney do
        local canCreateIthRecipe = true
        local recipeCreated = false
        local recipeName = sortedRecipeKeysMinimum[recipeKeyIndex]
        local recipeMinimumPrice, recipeAveragePrice, recipeTable = getRecipeInfo(professionName, recipeName)
        --Check if we should skip this recipe
        if not recipeToConsiderLookupMinimum[recipeName] then
            canCreateIthRecipe = false
        end
        --Check if we have money
        if money >= recipeMinimumPrice and canCreateIthRecipe then
            --We have money
            local percent = calculatePercent(professionName, recipeName, skillLevel + skillLevelsGained)
            howManyToMake = calculateAttemptCount(percent, RXPCData.professions.percentageTreshold)
            if howManyToMake == 0 or howManyToMake == huge then
                canCreateIthRecipe = false
            elseif howManyToMake > 1 then
                --Check if not last
                if recipeKeyIndex + 1 <= #sortedRecipeKeysMinimum then
                    print("% calc", recipeName, " ", percent, "% ", howManyToMake)
                    --Check if some next is more profitable
                    local nextRecipeKeyIndex = recipeKeyIndex + 1
                    while nextRecipeKeyIndex <= #sortedRecipeKeysMinimum do
                        local nextRecipeName = sortedRecipeKeysMinimum[nextRecipeKeyIndex]
                        local nextRecipeMinimumPrice, nextRecipeAveragePrice, nextRecipeTable = getRecipeInfo(professionName, nextRecipeName)
                        local nextPrecent = calculatePercent(professionName, nextRecipeName, skillLevel + skillLevelsGained)
                        local nextHowManyToMake = calculateAttemptCount(nextPrecent, RXPCData.professions.percentageTreshold)
                        --TODO: Very rough estimate, make better:
                        if nextRecipeMinimumPrice * nextHowManyToMake < recipeMinimumPrice * howManyToMake then
                            --We found more profitable one, save its values
                            recipeName, recipeMinimumPrice, recipeAveragePrice, recipeTable, percent, howManyToMake = nextRecipeName, nextRecipeMinimumPrice, nextRecipeAveragePrice, nextRecipeTable, nextPrecent, nextHowManyToMake
                            recipeKeyIndex = nextRecipeKeyIndex
                            print("new target: ", recipeName, " ", percent, "% ", howManyToMake)
                            --Continue on, since then next one might be even more profitable
                        end
                        nextRecipeKeyIndex = nextRecipeKeyIndex + 1
                    end
                end
            end
            while howManyToMake > 0 and canCreateIthRecipe do --Add greedily
                local saveMoneyBeforeRecipe = money
                local moneyPerItem = 0 --calculates the worth of recipe per one craft rather then the money needed to buy everything (this is for the cases when the stack is n but we only need 1..n-1 items of it)
                local tempMaterialsToBuy = {}
                local canCreateRecipe = true --wheter there are enough materials overall; We assume we can
                --Create temp new tables to add to main ones once we are don with recipe creation
                local newBackpackKnapsack = {}
                local removedCraftedRecipes = {}
                local removedBackpackKnapsack = {}
                for materialName, materialTable in pairs(recipeTable.materials) do
                    --Check if we can create the recipe
                    if canCreateRecipe then
                        --Check if material is another recipe
                        if PROFESSIONS[professionName].RECIPES[materialName] then
                            --It is
                            --Check if there is some in Knapsack
                            if craftedRecipes[materialName] and craftedRecipes[materialName] - (removedCraftedRecipes[materialName] or 0) >= materialTable.count then --and recipesToCraftKnapsack[materialName] > 0 then --No need for this becuse the 2 row below
                                --Add to removed table
                                removedCraftedRecipes[materialName] = (removedCraftedRecipes[materialName] or 0) + materialTable.count
                            else
                                canCreateRecipe = false
                            end
                        --Check if its a vendor item
                        elseif PROFESSIONS.VENDOR_ITEMS[materialName] then
                            local addedMaterials = 0
                            --Check if there is some in backpack
                            if backpackKnapsack[materialName] then
                                addedMaterials = min(backpackKnapsack[materialName] - (removedBackpackKnapsack[materialName] or 0), materialTable.count)
                                addedMaterials = max(0, addedMaterials)
                                --Add to removed table
                                removedBackpackKnapsack[materialName] = (removedBackpackKnapsack[materialName] or 0) + addedMaterials
                            end
                            --Keep buying until enough
                            while addedMaterials < materialTable.count do
                                money = money - (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100)
                                moneyPerItem = moneyPerItem + ceil((PROFESSIONS.VENDOR_ITEMS[materialName].price * 100) * materialTable.count / PROFESSIONS.VENDOR_ITEMS[materialName].count)
                                addedMaterials = addedMaterials + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                newBackpackKnapsack[materialName] = (newBackpackKnapsack[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
                            end
                            --Check if we have enough money for this
                            if money < 0 then
                                canCreateRecipe = false
                                canCreateIthRecipe = false --We dont need this here logically, but for safety reasons
                            end
                        else --It's not another recipe/vendor item
                            local addedMaterials = 0
                            --Check if we have some leftovers in backpack
                            if backpackKnapsack[materialName] then --and backpackKnapsack[materialName] > 0 then --We don't need it because of the code below
                                addedMaterials = min(backpackKnapsack[materialName] - (removedBackpackKnapsack[materialName] or 0), materialTable.count)
                                addedMaterials = max(0, addedMaterials)
                                removedBackpackKnapsack[materialName] = (removedBackpackKnapsack[materialName] or 0) + addedMaterials
                            end
                            while addedMaterials < materialTable.count and foundItems and #foundItems[materialName] > 0 and haveMoney do
                                local foundItemDetails = foundItems[materialName][1]
                                money = money - foundItemDetails.price
                                moneyPerItem = moneyPerItem + (foundItemDetails.price * min(foundItemDetails.count, materialTable.count) / foundItemDetails.count) --min, because we want to check if we need more then the current stack has to offer
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + foundItemDetails.count
                                newBackpackKnapsack[materialName] = (newBackpackKnapsack[materialName] or 0) + foundItemDetails.count - materialTable.count
                                addedMaterials = addedMaterials + foundItemDetails.count
                                --Check if we actually have money for this
                                if money < 0 then --We cannot
                                    canCreateIthRecipe = false -- Probably not needed here
                                    canCreateRecipe = false
                                    haveMoney = false
                                else
                                    if foundItems then --Superficial test to see foundItems is not null
                                        tremove(foundItems[materialName], 1)
                                    end
                                end
                            end
                            --Check if it is completed
                            if addedMaterials >= materialTable.count then
                                --Everything is good. --Not reversed with 'not' because its easier to read this way
                            else --Not enough materials so we cannot create the recipe
                                canCreateRecipe = false
                            end
                        end
                    end
                end
                --Check if next recipe is cheaper
                local nextRecipeKeyIndex = recipeKeyIndex + 1
                --TODO:next line for debugging purposes
                local doCheck = true
                if doCheck and nextRecipeKeyIndex <= #sortedRecipeKeysMinimum then
                    --TODO: something is very wrong here
                    --TODO: re-calculate minPrice for nextRecipe!!!!!
                    local nextRecipeName = sortedRecipeKeysMinimum[nextRecipeKeyIndex]
                    local nextRecipeMinimumPrice, _, _ = getRecipeInfo(professionName, nextRecipeName)
                    local nextPrecent = calculatePercent(professionName, nextRecipeName, skillLevel + skillLevelsGained)
                    local nextHowManyToMake = calculateAttemptCount(nextPrecent, RXPCData.professions.percentageTreshold)
                    --TODO: Very rough estimate:
                    --if nextHowManyToMake * nextRecipeMinimumPrice < saveMoneyBeforeRecipe - money then
                    if nextHowManyToMake * nextRecipeMinimumPrice < moneyPerItem then
                        --Next one is cheaper, mark this one as not created
                        canCreateRecipe = false
                        canCreateIthRecipe = false
                        local temp = saveMoneyBeforeRecipe - money
                        local temp2 = nextHowManyToMake * nextRecipeMinimumPrice
                        print("next is cheaper: ", recipeName, ": ", temp, " vs ", nextRecipeName, ": ", temp2)
                    end
                end
                --Check finally if we can create the recipe
                if canCreateRecipe then
                    print(recipeName, ": ", (saveMoneyBeforeRecipe - money))
                    recipeCreated = true
                    howManyToMake = howManyToMake - 1
                    --add everything to knapsack and update accordingly
                    for materialName, materialCount in pairs(tempMaterialsToBuy) do
                        materialsToBuyKnapsack[materialName] = (materialsToBuyKnapsack[materialName] or 0) + materialCount
                    end
                    craftedRecipes[recipeName] = (craftedRecipes[recipeName] or 0) + 1
                    recipesToCraftKnapsack[recipeName] = (recipesToCraftKnapsack[recipeName] or 0) + 1
                    --These should never be nil; not nil check here with 'or 0' is for safety reasons only
                    for rn, rc in pairs(removedCraftedRecipes) do
                        craftedRecipes[rn] = max(0, (craftedRecipes[rn] or 0) - rc)
                        if craftedRecipes[rn] == 0 then
                            craftedRecipes[rn] = nil
                        end
                    end
                    for rn, rc in pairs(newBackpackKnapsack) do
                        backpackKnapsack[rn] = (backpackKnapsack[rn] or 0) + rc --Here we do ned to check for nil, though
                    end
                    for rn, rc in pairs(removedBackpackKnapsack) do
                        backpackKnapsack[rn] = max(0, (backpackKnapsack[rn] or 0) - rc)
                    end
                else --We cannot craft the recipe
                    canCreateIthRecipe = false
                    money = saveMoneyBeforeRecipe --return all money we have "spent"
                end
            end
        else -- We don't have enough money; abort
            haveMoney = false
        end
        --Check if the skillUp will move the recipe into grey area
        if recipeCreated then
            --Update skill level
            skillLevelsToGain = skillLevelsToGain - 1
            skillLevelsGained = skillLevelsGained + 1
            if PROFESSIONS[professionName].RECIPES[recipeName].grey <= skillLevel + skillLevelsGained then
                canCreateIthRecipe = false
            end
        end
        --Check if we have to move to another recipe
        if not canCreateIthRecipe then
            recipeKeyIndex = recipeKeyIndex + 1
            --Check if we created any and is part of another recipe
            if craftedRecipes and craftedRecipes[recipeName] and isPartOfAnyRecipe(professionName, recipeName) then
                --Remove from pool of considered recipes
                recipeToConsiderLookupMinimum[recipeName] = false

                --Recalculate all other recipes counting this as free
                --TODO: Check with dredd whether this is ok!!!!
                for rn, rps in pairs(profSession.recipesToConsider) do
                    if isPartOfTheRecipe(professionName, recipeName, rn) then
                        --TODO: potential problem here as well <- mutating a table from profSession!!!!
                        profSession.recipesToConsider[rn]["recipeMinimumPrice"] = rps["recipeMinimumPrice"] - recipeMinimumPrice
                        profSession.recipesToConsider[rn]["recipeAveragePrice"] = rps["recipeAveragePrice"] - recipeAveragePrice
                    end
                end
            end
        end
    end
    --Finish up
    RXPCData.professions.money = money --TODO: delete once we implement actual buying (and then move this logic to that function)
    moneySpent = moneySpent - money
    return recipesToCraftKnapsack, materialsToBuyKnapsack, backpackKnapsack, skillLevelsGained, moneySpent
end

--Events
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

--Updates craftedItems when an item is sold
--TODO: check if this is correct
function addon.professions:ITEM_LOCKED(_, bagIndex, slotIndex)
    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    if RXPCData.craftedItems[itemID] then
        RXPCData.craftedItems[itemID] = max(0, RXPCData.craftedItems[itemID] - stackCount)
        if RXPCData.craftedItems[itemID] == 0 then
            RXPCData.craftedItems[itemID] = nil
        end
    end
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
    --TODO: change only to check prof1 and prof2
    --TODO: get crafted stack size and update accordingly
    local itemName = match(text, "%[(.*)%]")
    local foundRecipe = false
    for k, recipes in pairs(PROFESSIONS) do
        if k ~= "VENDOR_ITEMS" and k ~= "testing" then
            for recipeName, _ in pairs(recipes) do
                if lower(itemName) == lower(recipeName) then
                    --Update crafted items
                    RXPCData.craftedItems[itemName] = (RXPCData.craftedItems[itemName] or 0) + 1
                    foundRecipe = true
                    break
                end
            end
            if foundRecipe then
                break
            end
        end
    end
end

--Updates skill level
--TODO: Make a better check whether chat_msg_skill is related to professions or not!
function addon.professions:CHAT_MSG_SKILL(_, text)
    if RXPCData.professions == nil or RXPCData.professions.profession1 == nil or RXPCData.professions.profession1.name == nil
        or RXPCData.professions.profession2 == nil or RXPCData.professions.profession2.name == nil then
        return
    end

    local newSkillLevel = tonumber(match(text, "%d+"))
    local prof1Name, prof2Name = RXPCData.professions.profession1.name, RXPCData.professions.profession2.name
    if find(lower(text), prof1Name) then
        RXPCData.professions.profession1.skillLevel = newSkillLevel
    elseif find(lower(text), prof2Name) then
        RXPCData.professions.profession2.skillLevel = newSkillLevel
    else --TODO: check if we even have to send an error here
        error("Profession leveled: " .. text .. "\nIs not among: {" .. prof1Name .. ", " .. prof2Name .. "}", 2)
    end
end

function addon.professions:PLAYER_MONEY(...)
    RXPCData.money = GetMoney()
end

-- Functions

--Calculate what skill segments to look into
--Segment step: eg. 75: 1-75, 75-150, ...
function addon.professions.calculateSegmentRange(professionSkillLevel, segmentStep)
    local minimum = floor(professionSkillLevel / segmentStep) * segmentStep + 1
    local maximum = ceil(professionSkillLevel / segmentStep) * segmentStep
    if maximum < minimum then
        maximum = maximum + segmentStep
    end
    if maximum > 300 then maximum = 300 end
    return minimum, maximum
end

--Sets player data
function addon.professions.setPlayerData(prof1Name, prof1Lvl, prof2Name, prof2Lvl)
    if prof1Name then
        RXPCData.professions.profession1.name = lower(prof1Name)
        RXPCData.professions.profession1.skillLevel = prof1Lvl
        RXPCData.professions.profession1.skillMaxLevel = 300 --TODO: Rework this
    end
    if prof2Name then
        RXPCData.professions.profession2.name = lower(prof2Name)
        RXPCData.professions.profession2.skillLevel = prof2Lvl
        RXPCData.professions.profession2.skillMaxLevel = 300 --TODO: Rework this
    end
end


--Prepare necessary stuff for scan

--Full scan function - For testing purposes only -- Scans first profession
function addon.professions:fullScan()
    profSession:Reset()
    local minSegment, maxSegment = self.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, RXPCData.professions.segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    removeNonTrainable(RXPCData.professions.profession1.name)
    removeNonFactionProfessions(RXPCData.professions.profession1.name)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end

--A scan function for 'test' profession
function addon.professions:testScan()
    profSession:Reset()
    local minSegment, maxSegment = self.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, RXPCData.professions.segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    profSession.materialIndex = 1
    --Simulate scanning
    for _, materialName in ipairs(profSession.materialsToScan) do
        for ahMaterialName, ahMaterialTable in pairs(vah.VIRTUAL_AH) do
            if ahMaterialName == materialName then
                profSession.foundItems[materialName] = profSession.foundItems[materialName] or {}
                for i = 1, #ahMaterialTable do
                    tinsert(profSession.foundItems[materialName], {
                        count = ahMaterialTable[i].count,
                        price = ahMaterialTable[i].price,
                        pricePerItem = ahMaterialTable[i].pricePerItem
                    })
                end
            end
        end
    end
    print("Scan done")
end

--Stringifies results form Greedy algorthim - For testing purposes only
function addon.professions.greedyToString(recipesToCraft, materialsToBuy, backPack, skillLevelsGained, moneySpent)
    local sb = stringBuilder("====Recipe costs====\n")
    local sorted = sortRecipesByChosenPrice(1)
    for _, v in ipairs(sorted) do
        sb:append(tostring(v[1])):append(": "):append(profSession.recipesToConsider[v[1]]["recipeMinimumPrice"]):append(" | "):append(profSession.recipesToConsider[v[1]]["recipeAveragePrice"]):append("\n")
    end
    sb:append("====To craft====\n")
    for k, v in pairs(recipesToCraft) do
        sb:append(tostring(k)):append(" -> "):append(tostring(v)):append("\n")
    end
    sb:append("====To buy====\n")
    for k, v in pairs(materialsToBuy) do
        sb:append(tostring(k)):append(" -> "):append(tostring(v)):append("\n")
    end
    sb:append("====Leftovers====\n")
    for k, v in pairs(backPack) do
        sb:append(tostring(k)):append(" -> "):append(tostring(v)):append("\n")
    end
    sb:append("===After calc===\n")
    sb:append("Money: "):append(formatMoney(RXPCData.professions.money)):append("\n")
    sb:append("Money spent: "):append(formatMoney(moneySpent)):append("\n")
    sb:append("Skill level reached: "):append(tostring((RXPCData.professions.profession1.skillLevel + skillLevelsGained))):append("\n")

    return sb:build()
end

--Setup
function addon.professions:Setup()
    --TODO: add toggle on/off functionality

    if addon.game ~= "CLASSIC" and addon.game ~= "TBC" then return end
    if session.isInitialized == true then return end

    for _, event in ipairs(EVENTS_TO_REGISTER) do
        self:RegisterEvent(event)
    end
    RXPCData.professions.segmentRange = RXPCData.professions.segmentRange or 75
    RXPCData.professions.percentageTreshold = RXPCData.professions.percentageTreshold or 0.8
    RXPCData.professions.isInitialScanned = RXPCData.professions.isInitialScanned or false

    self.AH:Setup()

    --We need to "re-delcare" these things here in order to hook them properly. Last time was just for the 'linter'
    PROFESSIONS = addon.professions.PROFESSIONS
    profSession = addon.professions.profSession
    vah = addon.professions.vah
    GUI = addon.professions.GUI
    locale = addon.professions.locale

    gatherPlayerProfessionInfo()
    gatherPlayerFactionInfo()
    gatherPlayerMoneyInfo()
    GUI.createGUI()
    session.isInitialized = true
end



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

SLASH_r1 = '/r'
SlashCmdList['r'] = function()
    C_UI.Reload()
end


SLASH_scan1 = '/scan'
SlashCmdList['scan'] = function()
    profSession:Reset()
    addon.professions.setPlayerData("Blacksmithing", 1)
    RXPCData.professions.money = 10000
    local minSegment, maxSegment = addon.professions.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, RXPCData.professions.segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end


SLASH_pnt1 = '/pnt'
SlashCmdList['pnt'] = function(args)
    pnt(varArgs(args))
end

SLASH_print1 = '/print'
SlashCmdList['print'] = function(args)
    pnt(varArgs(args))
end


SLASH_rst1 = '/rst'
SlashCmdList['rst'] = function()
    profSession:Reset()
end

SLASH_set1 = '/set'
SlashCmdList['set'] = function(args)
    RXPCData.professions.segmentRange = tonumber(args)
end

--Testing
SLASH_tst1 = '/tst'
SlashCmdList['tst'] = function()
    --addon.professions:fullScan()

end

--Quick testing
SLASH_qtst1 = '/qtst'
SlashCmdList['qtst'] = function(item)
    scanInventoryForCraftedItems("a", "b")
end

--Export
SLASH_export1 = '/export'
SlashCmdList['export'] = function(option)
    if not option then option = 1 else option = tonumber(option) end
    calculateMaterialAveragePrice()

    GUI.guiFrame.printText:SetEnabled(true)
    GUI.guiFrame.printText:SetText(exportFoundItems(option))
    GUI.guiFrame.printText:SetFocus()
    GUI.guiFrame.printText:HighlightText()
end



print("done loading professions")

--[[ Notes
   
]]