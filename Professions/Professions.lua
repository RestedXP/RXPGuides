local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globals
local _G = _G
local len, fmt, lower = string.len, string.format, string.lower
local tcount, tinsert, twipe, tsort, tremove, tconcat = table.count, table.insert, table.wipe, table.sort, table.remove, table.concat
local pairs, ipairs, next, type, tostring, tonumber = pairs, ipairs, next, type, tostring, tonumber
local max, min, abs, floor, ceil, huge = math.max, math.min, math.abs, math.floor, math.ceil, math.huge
local CanSendAuctionQuery, QueryAuctionItems, SetSelectedAuctionItem = _G.CanSendAuctionQuery, _G.QueryAuctionItems, _G.SetSelectedAuctionItem
local GetNumAuctionItems, GetAuctionItemLink, GetAuctionItemInfo = _G.GetNumAuctionItems, _G.GetAuctionItemLink, _G.GetAuctionItemInfo
local GetNumPrimaryProfessions, GetProfessionInfo, GetSpellTabInfo = _G.GetNumPrimaryProfessions, _G.GetProfessionInfo, _G.GetSpellTabInfo --GetProfessions is not used in classics
local GetNumSkillLines, GetSkillLineInfo = _G.GetNumSkillLines, _G.GetSkillLineInfo
local GetItemNameByID = _G.C_Item.GetItemNameByID
local date = _G.date
local GetMoney = _G.GetMoney

addon.professions = addon:NewModule("ProfessionsGuide", "AceEvent-3.0") --TODO: maybe change the name

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
            sb:append("\t\t\tpricePeritem = "):append(itemTable.pricePerItem):append(",\n")
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


addon.professions.profSession = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    segmentRange = 75, --TODO: maybe store in RXPData / RXPCData / addon.settings or somewhere better if user can chage it
    foundItems = {}, --pairs --table of 'rows' in AH per item --pairs of ipairs
    itemAveragePrice = {}, --pairs [itemName] = averagePrice

    currentPage = 0,
    currentItemName = "",

    materialsToScan = {}, --ipairs
    recipesToConsider = {}, --pairs [recipeName] = recipePrice
    materialIndex = 1,

    ahIsShowing = false,
    sentQuery = false,
    isScanning = false,
}

function addon.professions.profSession:Reset()
    self.foundItems = {}
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

--Sets RXPCData.professions.money
local function gatherPlayerMoneyInfo()
    RXPCData.professions.money = GetMoney()
end

--Removes grey recipes
local function removeGreyRecipes(professionName, professionSkillLevel)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if PROFESSIONS[professionName].RECIPES[recipe].grey <= professionSkillLevel then
            profSession.recipesToConsider[recipe] = nil --TODO: efficient, but test if safe!
        end
    end
end

--Removes non-trainable recipes
local function removeNonTrainable(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if not PROFESSIONS[professionName].RECIPES[recipe].trainable then
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
        if segmentLevel <= maxSegment then
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

--Calculate raw value of each recipe and sets it in profSession.recipesToConsider
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
local function calculateRecipeRawPrice(professionName)
    local totalPrice, remaining, i, materialNotFound, impossibleToCraft
    -- Check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, recipePrice in pairs(profSession.recipesToConsider) do
            --print("considering to calculate: ", recipe)
            --Evaluate only if its not already evaluted
            materialNotFound = false
            impossibleToCraft = false
            if recipePrice == huge then
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
                        elseif profSession.recipesToConsider[materialName] == huge then
                            totalPrice = huge
                        else
                            totalPrice = totalPrice + profSession.recipesToConsider[materialName]
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
                profSession.recipesToConsider[recipe] = totalPrice
                --Check if its evluated (= not huge) and if so mark it as evaluated
                if profSession.recipesToConsider[recipe] ~= huge then
                    recipeCount = recipeCount - 1
                else
                    --Check if there is no(t enough) material(s) in AH and remove it
                    if materialNotFound or impossibleToCraft then
                        --If so, remove it from the list
                        print("impossible")
                        profSession.recipesToConsider[recipe] = nil --We are still in the for loop, be mindful if this is correct
                        recipeCount = recipeCount - 1
                    end
                end
            end
        end
    end
end

--TODO: Finish
local function calculateRecipeRawPriceAveragePrice(professionName)
    calculateMaterialAveragePrice()
    local totalPrice, remaining, i, materialNotFound, impossibleToCraft
    -- Check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, recipePrice in pairs(profSession.recipesToConsider) do
            --print("considering to calculate: ", recipe)
            --Evaluate only if its not already evaluted
            materialNotFound = false
            impossibleToCraft = false
            if recipePrice == huge then
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
                        elseif profSession.recipesToConsider[materialName] == huge then
                            totalPrice = huge
                        else
                            totalPrice = totalPrice + profSession.recipesToConsider[materialName]
                        end
                    --If its from a vendor
                    elseif materialTable.fromVendor then
                        --Check if already impossible
                        if not totalPrice == huge then
                            totalPrice = totalPrice + (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100) * materialTable.count --Vendor prices are in silvers
                        end
                    else --If from AH
                        --If there isn't any in the AH
                        if not profSession.itemAveragePrice[materialName] or select(1, tcount(profSession.itemAveragePrice[materialName])) == 0 then
                            totalPrice = huge
                            materialNotFound = true
                        else
                            remaining = materialTable.count
                            i = 1
                            while profSession.itemAveragePrice[materialName] ~= nil and remaining > 0 and i <= #profSession.itemAveragePrice[materialName] and remaining <= #profSession.itemAveragePrice[materialName] do --TODO:remaining <= #profSession.itemAveragePrice[materialName] should not exist??? --TODO: better check for. maybe calculate how many in general there are materials of 'materialName'
                                totalPrice = totalPrice + profSession.itemAveragePrice[materialName][i].pricePerItem * materialTable.count --TODO: here
                                remaining = remaining - profSession.itemAveragePrice[materialName][i].count
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
                        print("impossible: ", recipe)
                        profSession.recipesToConsider[recipe] = nil --We are still in the for loop, be mindful if this is correct
                        recipeCount = recipeCount - 1
                    end
                end
            end
        end
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

--Calculates the value of each recipe considering all compound elements to be already crafted
local function calculateRecipeFreePrice(professionName)
    local totalPrice, remaining, i, materialNotFound, impossibleToCraft
    -- Check whether we evaluated all the recipes
    local recipeCount = tcount(profSession.recipesToConsider)
    while recipeCount > 0 do
        for recipe, _ in pairs(profSession.recipesToConsider) do
            --print("considering to calculate: ", recipe)
            --Evaluate only if its not already evaluted
            materialNotFound = false
            impossibleToCraft = false
            if profSession.recipesToConsider[recipe] == huge then
                --print("calculating: ", recipe)
                totalPrice = 0
                for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipe].materials) do
                    --If it is another recipe
                    if PROFESSIONS[professionName].RECIPES[materialName] then
                        --Calculate as free
                        totalPrice = totalPrice
                    --If its from a vendor
                    elseif materialTable.fromVendor then
                        totalPrice = totalPrice + (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100) * materialTable.count --Vendor prices are in silvers
                    else --If from AH
                        --If there isn't any in the AH
                        if not profSession.foundItems[materialName] or select(1, tcount(profSession.foundItems[materialName])) == 0 then
                            totalPrice = huge
                            materialNotFound = true
                        else
                            remaining = materialTable.count
                            i = 1
                            while profSession.foundItems[materialName] ~= nil and remaining > 0 and i <= #profSession.foundItems[materialName] and remaining <= #profSession.foundItems[materialName] do --TODO: better check for. maybe calculate how many in general there are materials of 'materialName'
                                totalPrice = totalPrice + profSession.foundItems[materialName][i].pricePerItem * profSession.foundItems[materialName][i].count
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
                profSession.recipesToConsider[recipe] = totalPrice
                --Check if its evluated (= not huge) and if so mark it as evaluated
                if profSession.recipesToConsider[recipe] ~= huge then
                    recipeCount = recipeCount - 1
                else
                    --Check if there is no(t enough) material(s) in AH and remove it
                    if materialNotFound or impossibleToCraft then
                        --If so, remove it from the list
                        print("impossible")
                        profSession.recipesToConsider[recipe] = nil
                        recipeCount = recipeCount - 1
                    end
                end
            end
        end
    end
end

--Calculates recipe craft chance percentage
local function calculatePercent(professionName, recipeName, skillLevel)
    local recipe = PROFESSIONS[professionName].RECIPES[recipeName]
    local grey = recipe.grey
    local yellow = recipe.yellow
    local percent = (1.0 * (grey - skillLevel) / (grey - yellow))
    return percent
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


--[[
General idea:
0) Create an empty set of actual recipes to craft
1) Calculate raw value of each recipe
2) Sort selected recipes by price
3) Add cheapest one in greedily
4) If added recipe is part of a recipe, recalculate considered recipes
TODO: move locals out from loop
]]
function addon.professions.gatherRecipesToBuyGreedyMoney(professionName, skillLevel, segmentMaxLevel, money)
    --Calcualte raw value of each considered recipes
    calculateRecipeRawPrice(professionName)
    local sortedRecipesByPrice = sortAssociativeArrayByValue(profSession.recipesToConsider) -- ipairs{"name", price}
    local haveMoney = true --If we do not have the money for the nth recipe, we do not have money for any subsequent one
    local materialsToBuyKnapsack = {} --pairs{[name] = count}
    local craftedRecipes = {} --pairs{[name] = count} --We take from this knapsack when we need it for another recipe
    local recipesToCraftKnapsack = {} --pairs{[name] = count} --This is the one that stores all necessary crafts
    local backpackKnapsack = {} --pairs{[name] = count} --Backpack containing items that we bought this session
    local skillLevelsToGain = segmentMaxLevel - skillLevel
    local skillLevelsGained = 0
    local moneySpent = money
    local howManyToMake = 0
    while #sortedRecipesByPrice > 0 and skillLevelsToGain > 0 and haveMoney do
        local canCreateIthRecipe = true
        local recipeCreated = false
        local recipeName = sortedRecipesByPrice[1][1]
        local recipePrice = sortedRecipesByPrice[1][2]
        local recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
        --Check if we have money
        if money >= recipePrice then
            --We have money 
            local percent = calculatePercent(professionName, recipeName, skillLevel + skillLevelsGained)
            howManyToMake = (percent > 0) and ceil(1 / percent) or 0
            if howManyToMake == 0 then
                canCreateIthRecipe = false
            end
            while howManyToMake > 0 and canCreateIthRecipe do --Add greedily
                local saveMoneyBeforeRecipe = money
                local tempMaterialsToBuy = {}
                local canCreateRecipe = true --wheter there are enough materials overall; We assume we can
                local saveCraftedRecipes = deepCopyTable(craftedRecipes) --We save this if we use something from it but they later find out it is impossible to craft
                local saveBackpackKnapsack = deepCopyTable(backpackKnapsack)
                for materialName, materialTable in pairs(recipeTable.materials) do
                    --Check if we can create the recipe
                    if canCreateRecipe then
                        --Check if material is another recipe
                        if PROFESSIONS[professionName].RECIPES[materialName] then --TODO check how much is needed
                            --It is
                            --Check if there is some in Knapsack
                            if craftedRecipes[materialName] and craftedRecipes[materialName] >= materialTable.count then --and recipesToCraftKnapsack[materialName] > 0 then --No need for this becuse the 2 row below
                                --Remove from knapsack
                                craftedRecipes[materialName] = craftedRecipes[materialName] - materialTable.count
                                if craftedRecipes[materialName] == 0 then
                                    craftedRecipes[materialName] = nil
                                end
                            else
                                canCreateRecipe = false
                            end
                        --Check if its a vendor item
                        elseif PROFESSIONS.VENDOR_ITEMS[materialName] then
                            local addedMaterials = 0
                            --Check if there is some in backpack
                            if backpackKnapsack[materialName] then
                                addedMaterials = min(backpackKnapsack[materialName], materialTable.count)
                                backpackKnapsack[materialName] = max(backpackKnapsack[materialName] - materialTable.count, 0)
                                if backpackKnapsack[materialName] <= 0 then -- <= 0 for safety; it should never be below 0
                                    backpackKnapsack[materialName] = nil
                                end
                            end
                            --Keep buying until enough
                            while addedMaterials < materialTable.count do
                                money = money - (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100)
                                addedMaterials = addedMaterials + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                backpackKnapsack[materialName] = (backpackKnapsack[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
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
                                addedMaterials = min(backpackKnapsack[materialName], materialTable.count)
                                backpackKnapsack[materialName] = backpackKnapsack[materialName] - addedMaterials
                                if backpackKnapsack[materialName] <= 0 then -- <= 0 for safety; should never be below 0
                                    backpackKnapsack[materialName] = nil
                                end
                            end
                            while addedMaterials < materialTable.count and #profSession.foundItems[materialName] > 0 and haveMoney do
                                local foundItemDetails = profSession.foundItems[materialName][1]
                                money = money - foundItemDetails.price
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + foundItemDetails.count
                                backpackKnapsack[materialName] = (backpackKnapsack[materialName] or 0) + foundItemDetails.count - materialTable.count
                                addedMaterials = addedMaterials + foundItemDetails.count
                                --Check if we actually have money for this
                                if money < 0 then --We cannot
                                    canCreateIthRecipe = false -- Probably not needed here
                                    canCreateRecipe = false
                                    haveMoney = false
                                else
                                    tremove(profSession.foundItems[materialName], 1)
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
                --Check finally if we can create the recipe
                if canCreateRecipe then
                    recipeCreated = true
                    howManyToMake = howManyToMake - 1
                    --add everything to knapsack and update accordingly
                    for materialName, materialCount in pairs(tempMaterialsToBuy) do
                        materialsToBuyKnapsack[materialName] = (materialsToBuyKnapsack[materialName] or 0) + materialCount
                    end
                    craftedRecipes[recipeName] = (craftedRecipes[recipeName] or 0) + 1
                    recipesToCraftKnapsack[recipeName] = (recipesToCraftKnapsack[recipeName] or 0) + 1
                else --We cannot craft the recipe
                    canCreateIthRecipe = false
                    money = saveMoneyBeforeRecipe --return all money we have "spent"
                    craftedRecipes = saveCraftedRecipes --return all materials we have "spent"
                    backpackKnapsack = saveBackpackKnapsack
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
            --i = i + 1
            --Remove from sorted
            tremove(sortedRecipesByPrice, 1)
            --Check if we created any and is part of another recipe
            if craftedRecipes[recipeName] and isPartOfAnyRecipe(professionName, recipeName) then
                --Remove from pool of considered recipes
                profSession.recipesToConsider[recipeName] = nil
                --Recalculate all other recipes counting this as free
                for rn, rp in pairs(profSession.recipesToConsider) do
                    if isPartOfTheRecipe(professionName, recipeName, rn) then
                        profSession.recipesToConsider[rn] = rp - recipePrice
                    end
                end
                --Sort the prices again --TODO:Check if this is safe
                sortedRecipesByPrice = sortAssociativeArrayByValue(profSession.recipesToConsider)
            end
        end
    end
    --Finish up
    RXPCData.professions.money = money --TODO: delete once we implement actual buying (and then move this logic to that function)
    moneySpent = moneySpent - money
    return recipesToCraftKnapsack, materialsToBuyKnapsack, backpackKnapsack, skillLevelsGained, moneySpent
end

--[[
General idea:
0) Create an empty set of actual recipes to craft
1) Calculate raw value of each recipe
2) Sort selected recipes by price
3) Add cheapest one in greedily, but only ones that are 100%
4) If added recipe is part of a recipe, recalculate considered recipes
TODO: move locals out from loop
]]
function addon.professions.gatherRecipesToBuyGreedyPercentage(professionName, skillLevel, segmentMaxLevel, money)
    --Calcualte raw value of each considered recipes
    calculateRecipeRawPrice(professionName)
    local sortedRecipesByPrice = sortAssociativeArrayByValue(profSession.recipesToConsider) -- ipairs{"name", price}
    local haveMoney = true --If we do not have the money for the nth recipe, we do not have money for any subsequent one
    local materialsToBuyKnapsack = {} --pairs{[name] = count}
    local craftedRecipes = {} --pairs{[name] = count} --We take from this knapsack when we need it for another recipe
    local recipesToCraftKnapsack = {} --pairs{[name] = count} --This is the one that stores all necessary crafts
    local backpackKnapsack = {} --pairs{[name] = count} --Backpack containing items that we bought this session
    local skillLevelsToGain = segmentMaxLevel - skillLevel
    local skillLevelsGained = 0
    local moneySpent = money
    local howManyToMake = 0
    while #sortedRecipesByPrice > 0 and skillLevelsToGain > 0 and haveMoney do
        local canCreateIthRecipe = true
        local recipeCreated = false
        local recipeName = sortedRecipesByPrice[1][1]
        local recipePrice = sortedRecipesByPrice[1][2]
        local recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
        --Check if we have money
        if money >= recipePrice then
            --We have money 
            local percent = calculatePercent(professionName, recipeName, skillLevel + skillLevelsGained)
            howManyToMake = (percent > 0) and ceil(1 / percent) or 0
            if howManyToMake == 0 then
                canCreateIthRecipe = false
            elseif howManyToMake > 1 then --Move to next 100%
                --While its not the last in the list remove and pass on to one that is 100%.
                --If no such exists go back to the current cheapest
                local isLast = false
                local isHunderdPercent = false
                local i = 2
                local newPercent
                while not isHunderdPercent and not isLast do
                    --Go to next recipe and recalculate if its 100%
                    if sortedRecipesByPrice[i] then
                        local newRecipeName = sortedRecipesByPrice[i][1]
                        newPercent = calculatePercent(professionName, newRecipeName, skillLevel + skillLevelsGained)
                        --Check if its 100%
                        if newPercent >= 1.0 then
                            isHunderdPercent = true
                        else -- It's not, continue on
                            i = i + 1
                        end
                    else --No more recipes
                        isLast = true
                    end
                end
                --Remove non 100% recepies
                for _ = 1, i - 1 do
                    print("removing: ", sortedRecipesByPrice[1][1])
                    tremove(sortedRecipesByPrice, 1)
                end
                --Update the new values
                recipeName = sortedRecipesByPrice[1][1]
                recipePrice = sortedRecipesByPrice[1][2]
                recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
                howManyToMake = (newPercent > 0) and ceil(1 / percent) or 0 -- We need to recalculate because if its the last one its not 100% guaranteed
            end
            while howManyToMake > 0 and canCreateIthRecipe do --Add greedily
                local saveMoneyBeforeRecipe = money
                local tempMaterialsToBuy = {}
                local canCreateRecipe = true --wheter there are enough materials overall; We assume we can
                local saveCraftedRecipes = deepCopyTable(craftedRecipes) --We save this if we use something from it but they later find out it is impossible to craft
                local saveBackpackKnapsack = deepCopyTable(backpackKnapsack)
                for materialName, materialTable in pairs(recipeTable.materials) do
                    --Check if we can create the recipe
                    if canCreateRecipe then
                        --Check if material is another recipe
                        if PROFESSIONS[professionName].RECIPES[materialName] then --TODO check how much is needed
                            --It is
                            --Check if there is some in Knapsack
                            if craftedRecipes[materialName] and craftedRecipes[materialName] >= materialTable.count then --and recipesToCraftKnapsack[materialName] > 0 then --No need for this becuse the 2 row below
                                --Remove from knapsack
                                craftedRecipes[materialName] = craftedRecipes[materialName] - materialTable.count
                                if craftedRecipes[materialName] == 0 then
                                    craftedRecipes[materialName] = nil
                                end
                            else
                                canCreateRecipe = false
                            end
                        --Check if its a vendor item
                        elseif PROFESSIONS.VENDOR_ITEMS[materialName] then
                            local addedMaterials = 0
                            --Check if there is some in backpack
                            if backpackKnapsack[materialName] then
                                addedMaterials = min(backpackKnapsack[materialName], materialTable.count)
                                backpackKnapsack[materialName] = max(backpackKnapsack[materialName] - materialTable.count, 0)
                                if backpackKnapsack[materialName] <= 0 then -- <= 0 for safety; it should never be below 0
                                    backpackKnapsack[materialName] = nil
                                end
                            end
                            --Keep buying until enough
                            while addedMaterials < materialTable.count do
                                money = money - (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100)
                                addedMaterials = addedMaterials + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                backpackKnapsack[materialName] = (backpackKnapsack[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
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
                                addedMaterials = min(backpackKnapsack[materialName], materialTable.count)
                                backpackKnapsack[materialName] = backpackKnapsack[materialName] - addedMaterials
                                if backpackKnapsack[materialName] <= 0 then -- <= 0 for safety; should never be below 0
                                    backpackKnapsack[materialName] = nil
                                end
                            end
                            while addedMaterials < materialTable.count and #profSession.foundItems[materialName] > 0 and haveMoney do
                                local foundItemDetails = profSession.foundItems[materialName][1]
                                money = money - foundItemDetails.price
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + foundItemDetails.count
                                backpackKnapsack[materialName] = (backpackKnapsack[materialName] or 0) + foundItemDetails.count - materialTable.count
                                addedMaterials = addedMaterials + foundItemDetails.count
                                --Check if we actually have money for this
                                if money < 0 then --We cannot
                                    canCreateIthRecipe = false -- Probably not needed here
                                    canCreateRecipe = false
                                    haveMoney = false
                                else
                                    tremove(profSession.foundItems[materialName], 1)
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
                --Check finally if we can create the recipe
                if canCreateRecipe then
                    recipeCreated = true
                    howManyToMake = howManyToMake - 1
                    --add everything to knapsack and update accordingly
                    for materialName, materialCount in pairs(tempMaterialsToBuy) do
                        materialsToBuyKnapsack[materialName] = (materialsToBuyKnapsack[materialName] or 0) + materialCount
                    end
                    craftedRecipes[recipeName] = (craftedRecipes[recipeName] or 0) + 1
                    recipesToCraftKnapsack[recipeName] = (recipesToCraftKnapsack[recipeName] or 0) + 1
                else --We cannot craft the recipe
                    canCreateIthRecipe = false
                    money = saveMoneyBeforeRecipe --return all money we have "spent"
                    craftedRecipes = saveCraftedRecipes --return all materials we have "spent"
                    backpackKnapsack = saveBackpackKnapsack
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
            --i = i + 1
            --Remove from sorted
            tremove(sortedRecipesByPrice, 1)
            --Check if we created any and is part of another recipe
            if craftedRecipes[recipeName] and isPartOfAnyRecipe(professionName, recipeName) then
                --Remove from pool of considered recipes
                profSession.recipesToConsider[recipeName] = nil
                --Recalculate all other recipes counting this as free
                for rn, rp in pairs(profSession.recipesToConsider) do
                    if isPartOfTheRecipe(professionName, recipeName, rn) then
                        profSession.recipesToConsider[rn] = rp - recipePrice
                    end
                end
                --Sort the prices again --TODO:Check if this is safe
                sortedRecipesByPrice = sortAssociativeArrayByValue(profSession.recipesToConsider)
            end
        end
    end
    --Finish up
    RXPCData.professions.money = money --TODO: delete once we implement actual buying (and then move this logic to that function)
    moneySpent = moneySpent - money
    return recipesToCraftKnapsack, materialsToBuyKnapsack, backpackKnapsack, skillLevelsGained, moneySpent
end

--TODO: Implement this
function addon.professions.gatherRecipesToBuyGreedyMoneyAndPercentage(professionName, skillLevel, segmentMaxLevel, money)
    --Calcualte raw value of each considered recipes
    calculateRecipeRawPrice(professionName)
    local sortedRecipesByPrice = sortAssociativeArrayByValue(profSession.recipesToConsider) -- ipairs{"name", price}
    local haveMoney = true --If we do not have the money for the nth recipe, we do not have money for any subsequent one
    local materialsToBuyKnapsack = {} --pairs{[name] = count}
    local craftedRecipes = {} --pairs{[name] = count} --We take from this knapsack when we need it for another recipe
    local recipesToCraftKnapsack = {} --pairs{[name] = count} --This is the one that stores all necessary crafts
    local backpackKnapsack = {} --pairs{[name] = count} --Backpack containing items that we bought this session
    local skillLevelsToGain = segmentMaxLevel - skillLevel
    local skillLevelsGained = 0
    local moneySpent = money
    local howManyToMake = 0
    while #sortedRecipesByPrice > 0 and skillLevelsToGain > 0 and haveMoney do
        local canCreateIthRecipe = true
        local recipeCreated = false
        local recipeName = sortedRecipesByPrice[1][1]
        local recipePrice = sortedRecipesByPrice[1][2]
        local recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
        --Check if we have money
        if money >= recipePrice then
            --We have money 
            local percent = calculatePercent(professionName, recipeName, skillLevel + skillLevelsGained)
            howManyToMake = (percent > 0) and ceil(1 / percent) or 0
            if howManyToMake == 0 then
                canCreateIthRecipe = false
            elseif howManyToMake > 1 then --Move to next 100%
                --While its not the last in the list remove and pass on to one that is 100%.
                --If no such exists go back to the current cheapest
                local isLast = false
                local isHunderedPercent = false
                local i = 2
                local newPercent
                while not isHunderedPercent and not isLast do
                    --Go to next recipe and recalculate if its 100%
                    if sortedRecipesByPrice[i] then
                        local newRecipeName = sortedRecipesByPrice[i][1]
                        newPercent = calculatePercent(professionName, newRecipeName, skillLevel + skillLevelsGained)
                        --Check if its 100%
                        if newPercent >= 1.0 then
                            isHunderedPercent = true
                        else -- It's not, continue on
                            i = i + 1
                        end
                    else --No more recipes
                        isLast = true
                    end
                end
                --Remove non 100% recepies
                for j = 1, i - 1 do
                    tremove(sortedRecipesByPrice, j)
                end
                --Update the new values
                recipeName = sortedRecipesByPrice[1][1]
                recipePrice = sortedRecipesByPrice[1][2]
                recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
                howManyToMake = (newPercent > 0) and ceil(1 / percent) or 0 -- We need to recalculate because if its the last one its not 100% guaranteed
            end
            while howManyToMake > 0 and canCreateIthRecipe do --Add greedily
                local saveMoneyBeforeRecipe = money
                local tempMaterialsToBuy = {}
                local canCreateRecipe = true --wheter there are enough materials overall; We assume we can
                local saveCraftedRecipes = deepCopyTable(craftedRecipes) --We save this if we use something from it but they later find out it is impossible to craft
                local saveBackpackKnapsack = deepCopyTable(backpackKnapsack)
                for materialName, materialTable in pairs(recipeTable.materials) do
                    --Check if we can create the recipe
                    if canCreateRecipe then
                        --Check if material is another recipe
                        if PROFESSIONS[professionName].RECIPES[materialName] then --TODO check how much is needed
                            --It is
                            --Check if there is some in Knapsack
                            if craftedRecipes[materialName] and craftedRecipes[materialName] >= materialTable.count then --and recipesToCraftKnapsack[materialName] > 0 then --No need for this becuse the 2 row below
                                --Remove from knapsack
                                craftedRecipes[materialName] = craftedRecipes[materialName] - materialTable.count
                                if craftedRecipes[materialName] == 0 then
                                    craftedRecipes[materialName] = nil
                                end
                            else
                                canCreateRecipe = false
                            end
                        --Check if its a vendor item
                        elseif PROFESSIONS.VENDOR_ITEMS[materialName] then
                            local addedMaterials = 0
                            --Check if there is some in backpack
                            if backpackKnapsack[materialName] then
                                addedMaterials = min(backpackKnapsack[materialName], materialTable.count)
                                backpackKnapsack[materialName] = max(backpackKnapsack[materialName] - materialTable.count, 0)
                                if backpackKnapsack[materialName] <= 0 then -- <= 0 for safety; it should never be below 0
                                    backpackKnapsack[materialName] = nil
                                end
                            end
                            --Keep buying until enough
                            while addedMaterials < materialTable.count do
                                money = money - (PROFESSIONS.VENDOR_ITEMS[materialName].price * 100)
                                addedMaterials = addedMaterials + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
                                backpackKnapsack[materialName] = (backpackKnapsack[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
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
                                addedMaterials = min(backpackKnapsack[materialName], materialTable.count)
                                backpackKnapsack[materialName] = backpackKnapsack[materialName] - addedMaterials
                                if backpackKnapsack[materialName] <= 0 then -- <= 0 for safety; should never be below 0
                                    backpackKnapsack[materialName] = nil
                                end
                            end
                            while addedMaterials < materialTable.count and #profSession.foundItems[materialName] > 0 and haveMoney do
                                local foundItemDetails = profSession.foundItems[materialName][1]
                                money = money - foundItemDetails.price
                                tempMaterialsToBuy[materialName] = (tempMaterialsToBuy[materialName] or 0) + foundItemDetails.count
                                backpackKnapsack[materialName] = (backpackKnapsack[materialName] or 0) + foundItemDetails.count - materialTable.count
                                addedMaterials = addedMaterials + foundItemDetails.count
                                --Check if we actually have money for this
                                if money < 0 then --We cannot
                                    canCreateIthRecipe = false -- Probably not needed here
                                    canCreateRecipe = false
                                    haveMoney = false
                                else
                                    tremove(profSession.foundItems[materialName], 1)
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
                --TODO: Check if next recipe is cheaper
                --Check finally if we can create the recipe
                if canCreateRecipe then
                    recipeCreated = true
                    howManyToMake = howManyToMake - 1
                    --add everything to knapsack and update accordingly
                    for materialName, materialCount in pairs(tempMaterialsToBuy) do
                        materialsToBuyKnapsack[materialName] = (materialsToBuyKnapsack[materialName] or 0) + materialCount
                    end
                    craftedRecipes[recipeName] = (craftedRecipes[recipeName] or 0) + 1
                    recipesToCraftKnapsack[recipeName] = (recipesToCraftKnapsack[recipeName] or 0) + 1
                else --We cannot craft the recipe
                    canCreateIthRecipe = false
                    money = saveMoneyBeforeRecipe --return all money we have "spent"
                    craftedRecipes = saveCraftedRecipes --return all materials we have "spent"
                    backpackKnapsack = saveBackpackKnapsack
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
            --i = i + 1
            --Remove from sorted
            tremove(sortedRecipesByPrice, 1)
            --Check if we created any and is part of another recipe
            if craftedRecipes[recipeName] and isPartOfAnyRecipe(professionName, recipeName) then
                --Remove from pool of considered recipes
                profSession.recipesToConsider[recipeName] = nil
                --Recalculate all other recipes counting this as free
                for rn, rp in pairs(profSession.recipesToConsider) do
                    if isPartOfTheRecipe(professionName, recipeName, rn) then
                        profSession.recipesToConsider[rn] = rp - recipePrice
                    end
                end
                --Sort the prices again --TODO:Check if this is safe
                sortedRecipesByPrice = sortAssociativeArrayByValue(profSession.recipesToConsider)
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


--Full scan function - For testing purposes only -- Scans first profession
function addon.professions:fullScan()
    profSession:Reset()
    local minSegment, maxSegment = self.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, profSession.segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    removeNonTrainable(RXPCData.professions.profession1.name)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end

--A scan function for 'test' profession
function addon.professions:testScan()
    profSession:Reset()
    local minSegment, maxSegment = self.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, profSession.segmentRange)
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
                        price = ahMaterialTable[i].buyoutPrice,
                        pricePerItem = ceil(ahMaterialTable[i].count / ahMaterialTable[i].buyoutPrice),
                    })
                end
            end
        end
    end
    print("Scan done")
end

--Stringifies results form Greedy algorthim - For testing purposes only
function addon.professions.greedyToString(recipesToCraft, materialsToBuy, backPack, skillLevelsGained, moneySpent)
    local str = ""
    str = "====Recipe costs====\n"
    local sorted = sortAssociativeArrayByValue(profSession.recipesToConsider)
    for i, v in ipairs(sorted) do
        str = str .. tostring(v[1]) .. ": " .. formatMoney(v[2]) .. "\n"
    end
    str = str .. "====To craft====\n" 
    for k, v in pairs(recipesToCraft) do
        str = str .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    str = str .. "====To buy====\n"
    for k, v in pairs(materialsToBuy) do
        str = str .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    str = str .. "====Leftovers====\n"
    for k, v in pairs(backPack) do
        str = str .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    str = str .. "===After calc===\n"
    str = str .. "Money: " .. formatMoney(RXPCData.professions.money) .. "\n"
    str = str .. "Money spent: " .. formatMoney(moneySpent) .. "\n"
    str = str .. "Skill level reached: " .. tostring((RXPCData.professions.profession1.skillLevel + skillLevelsGained)) .. "\n"

    return str
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

    --We need to "re-delcare" these things here in order to hook them properly. Last time was just for the 'linter'
    PROFESSIONS = addon.professions.PROFESSIONS
    profSession = addon.professions.profSession
    vah = addon.professions.vah
    GUI = addon.professions.GUI

    gatherPlayerProfessionInfo()
    GUI.createGUI()
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
    local minSegment, maxSegment = addon.professions.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, profSession.segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end


SLASH_pnt1 = '/pnt'
SlashCmdList['pnt'] = function()
    local minSegment, maxSegment = addon.professions.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, profSession.segmentRange)
    local recipesToCraft, materialsToBuy, backPack, skillLevelsGained, moneySpent = addon.professions.gatherRecipesToBuyGreedyMoney(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel, maxSegment, RXPCData.professions.money)
    print("====Recipe costs====")
    local sorted = sortAssociativeArrayByValue(profSession.recipesToConsider)
    for i, v in ipairs(sorted) do
        print(tostring(v[1]) .. ": " .. tostring(v[2]))
    end
    print("====To craft====")
    for k, v in pairs(recipesToCraft) do
        print(tostring(k) .. " -> " .. tostring(v))
    end
    print("====To buy====")
    for k, v in pairs(materialsToBuy) do
        print(tostring(k) .. " -> " .. tostring(v))
    end
    print("====Leftovers====")
    for k, v in pairs(backPack) do
        print(tostring(k) .. " -> " .. tostring(v))
    end
    print("===After calc===")
    print("Money: ", RXPCData.professions.money)
    print("Money spent: ", moneySpent)
    print("Skill level reached: ", (RXPCData.professions.profession1.skillLevel + skillLevelsGained))
end


SLASH_rst1 = '/rst'
SlashCmdList['rst'] = function()
    profSession:Reset()
end

SLASH_set1 = '/set'
SlashCmdList['set'] = function(args)
    profSession.segmentRange = tonumber(args)
end

--Testing
SLASH_tst1 = '/tst'
SlashCmdList['tst'] = function()
    --addon.professions:fullScan()

end

--Quick testing
SLASH_qtst1 = '/qtst'
SlashCmdList['qtst'] = function()
    calculateRecipeRawPrice(RXPCData.professions.profession1.name)
    --TODO:FINISH THIS
    calculateRecipeRawPriceAveragePrice()
    local sortedArr = sortAssociativeArrayByValue(profSession.recipesToConsider)
    print("Found items:")
    for name, price in pairs(profSession.recipesToConsider) do
        print(name, " -> ", price)
    end
    print("==========")
    for i, v in ipairs(sortedArr) do
        print(v[1], " -> ", v[2])
    end
end

--Export
SLASH_export1 = '/export'
SlashCmdList['export'] = function(option)
    if not option then option = 1 else option = tonumber(option) end

    GUI.guiFrame.printText:SetEnabled(true)
    GUI.guiFrame.printText:SetText(exportFoundItems(option))
    GUI.guiFrame.printText:SetFocus()
    GUI.guiFrame.printText:HighlightText()
end



print("done loading professions")

--[[ Notes
   
]]