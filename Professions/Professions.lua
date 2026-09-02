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
local GetMoney, CopyTable = _G.GetMoney, _G.CopyTable


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
    "ITEM_LOCK_CHANGED", --Changing the item status in bagSlot
    "ITEM_UNLOCKED",

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
    if money >= 10000 then
        return fmt("%dg %ds %dc", money / 10000, (money % 10000) / 100, money % 100)
    elseif money >= 100 then
        return fmt("%ds %dc", money / 100, money % 100)
    end
    return fmt("%dc", money)
end

--Formats time to xm ys.z
local function formatTime(time)
    local mins = floor(time / 60)
    local secs = time % 60
    return fmt("%dm %.2fs", mins, secs)
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


addon.professions.profSession = {
    isInitialized = false,
    auctionFilterButtons = {"Trade Goods"},
    foundItems = {}, --pairs --table of 'rows' in AH per item --pairs of ipairs
    foundItemsKeys = {}, --pairs --[foundItemName] = countWhere we stopped in foundItems
    itemAveragePrice = {}, --pairs [itemName] = averagePrice

    currentPage = 0,
    currentItemName = "",

    materialsToScan = {}, --ipairs
    recipesToConsider = {}, --pairs [recipeName] = {recipeMinimumPrice, recipeAveragePrice}
    materialIndex = 1,

    recipesToCraft = {}, --pairs [recipeName] = craftCount
    itemsToBuy = {}, --pairs [itemName] = buyCount
    backpack = {}, --pairs [itemName] = itemCount

    recipeUsage = {}, --pairs [recipeName] = {firstTimeUsed, lastTimeUsed}
    recipeConsideration = {}, --pairs [recipeName] = {firstTimeConsidered, lastTimeConsidered}

    ahIsShowing = false,
    sentQuery = false,
    isScanning = false,
}

function addon.professions.profSession:Reset()
    self.foundItems = {}
    self.foundItemsKeys = {}
    self.itemAveragePrice = {}
    self.currentPage = 0
    self.sentQuery = false
    self.isScanning = false
    self.currentItemName = ""
    self.materialIndex = 1
    self.recipesToConsider = {}
    self.materialsToScan = {}
    self.recipesToCraft = {}
    self.itemsToBuy = {}
    self.backpack = {}
end

--local renaming
--we do this as to not have addon.professions.etc every time
local profSession = addon.professions.profSession
local PROFESSIONS = addon.professions.PROFESSIONS
local vah = addon.professions.vah
local GUI = addon.professions.GUI
local locale = addon.professions.locale

--local functions

--[[
Sorts collected recipies by options and order
Options:
1  - Orange (default)
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
local function sortSelectedRecipesBy(professionName, selectedRecipesNames, option, order)
    local sorted = {}
    for _, recipeName in ipairs(selectedRecipesNames) do
        local recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
        if option == 1 then
            sorted[#sorted+1] = {recipeName, recipeTable.orange}
        elseif option == 2 then
           sorted[#sorted+1] = {recipeName, recipeTable.yellow}
        elseif option == 3 then
            sorted[#sorted+1] = {recipeName, recipeTable.grey}
        elseif option == 4 then
            sorted[#sorted+1] = {recipeName, recipeTable.trainingCost}
        elseif option == 5 then
            sorted[#sorted+1] = {recipeName, recipeTable.recipeCost}
        elseif option == 6 then
            sorted[#sorted+1] = {recipeName, recipeTable.castTime}
        elseif option == 7 then
            sorted[#sorted+1] = {recipeName, recipeTable.sellPrice}
        else
            sorted[#sorted+1] = {recipeName, recipeTable.orange}
        end
    end
    tsort(sorted, function (a, b)
        if order == 1 then
            return a[2] < b[2]
        else
            return b[2] < a[2]
        end
    end)
    return sorted
end

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

--Removes non-trainable soulbound recipes
local function removeNonTrainable(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if not PROFESSIONS[professionName].RECIPES[recipe].trainable and PROFESSIONS[professionName].RECIPES[recipe].soulbound then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Removes quest soulbound recipes
local function removeQuestRecipes(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if PROFESSIONS[professionName].RECIPES[recipe].location == "quest" and PROFESSIONS[professionName].RECIPES[recipe].soulbound then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Removes vendor soulbound recipes
local function removeVendorRecipes(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if match(PROFESSIONS[professionName].RECIPES[recipe].location, "vendor") ~= nil and PROFESSIONS[professionName].RECIPES[recipe].soulbound then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Removes drop soulbound recipes
local function removeDropRecipes(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if match(PROFESSIONS[professionName].RECIPES[recipe].location, "drop") ~= nil and PROFESSIONS[professionName].RECIPES[recipe].soulbound then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Removes trainer soulbound recipes 
local function removeTrainerRecipes(professionName)
    for recipe, _ in pairs(profSession.recipesToConsider) do
        if PROFESSIONS[professionName].RECIPE[recipe].location == "trainer" and PROFESSIONS[professionName].RECIPES[recipe].soulbound then
            profSession.recipesToConsider[recipe] = nil
        end
    end
end

--Removes non-faction soulbound recipes
local function removeNonFactionRecipes(professionName)
    --validatePlayerFaction(2)

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
function addon.professions:calculateRecipeMinimumPrice(professionName)
    --Sort recipes by composite last
    local sorted = {}
    for k, _ in pairs(profSession.recipesToConsider) do
        sorted[#sorted+1] = k
    end
    tsort(sorted, function (a, b)
        --return addon.professions:compositeRecipeDepth(professionName, a) <= addon.professions.compositeRecipeDepth(professionName, b)
        local aq = addon.professions:compositeRecipeDepth(professionName, a)
        local bq = addon.professions:compositeRecipeDepth(professionName, b)
        return aq < bq
    end)

    local recipeMinimumPrice
    local materialNotFound, impossibleToCraft
    local totalPrice
    local remaining, i
    for _, recipeName in ipairs(sorted) do
        recipeMinimumPrice = profSession.recipesToConsider[recipeName][1]
        materialNotFound, impossibleToCraft = false, false
        if recipeMinimumPrice == huge then
            totalPrice = 0
            for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
                if PROFESSIONS[professionName].RECIPES[materialName] then
                    if not profSession.recipesToConsider[materialName] then
                        totalPrice = huge
                        impossibleToCraft = true
                        break
                    elseif profSession.recipesToConsider[materialName][1] == huge then
                        totalPrice = huge
                        impossibleToCraft = true
                        break
                    else
                        totalPrice = totalPrice + profSession.recipesToConsider[materialName][1] * materialTable.count                    
                    end
                elseif materialTable.fromVendor then
                    if not PROFESSIONS[professionName].VENDOR_ITEMS[materialName] then
                        totalPrice = huge
                        materialNotFound = true
                        break
                    end
                    if totalPrice ~= huge then
                        totalPrice = totalPrice + PROFESSIONS[professionName].VENDOR_ITEMS[materialName].price * 100 * materialTable.count
                    end
                else
                    if not profSession.foundItems[materialName] or profSession.foundItems[materialName] == {} then
                        totalPrice = huge
                        materialNotFound = true
                        break
                    else
                        remaining = materialTable.count
                        i = 1
                        while profSession.foundItems[materialName] and remaining > 0 and i <= #profSession.foundItems[materialName] do
                            totalPrice = totalPrice + profSession.foundItems[materialName][i].pricePerItem * materialTable.count
                            remaining = remaining - profSession.foundItems[materialName][i].count
                            i = i + 1
                        end
                        if remaining > 0 then
                            totalPrice = huge
                            materialNotFound = true
                            break
                        end
                    end
                end
            end
            profSession.foundItems[recipeName][1] = totalPrice
            if profSession.foundItems[recipeName][1] == huge or materialNotFound or impossibleToCraft then
                profSession.foundItems[recipeName] = nil
            end
        end
    end
end

-- Calulcates the average price of each recipe and sets it in profSession.recipesToConsider
function addon.professions:calculateRecipeAveragePrice(professionName)
    calculateMaterialAveragePrice()
    local totalPrice
    for recipeName, minAvgPrice in pairs(profSession.recipesToConsider) do
        if minAvgPrice[2] == huge then
            totalPrice = 0.0
            for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
                if PROFESSIONS[professionName].RECIPES[materialName] then
                    if not profSession.recipesToConsider[materialName] then
                        totalPrice = huge
                        break
                    elseif profSession.recipesToConsider[materialName][2] == huge then
                        totalPrice = huge
                        break
                    else
                        totalPrice = totalPrice + profSession.recipesToConsider[materialName][2] * materialTable.count
                    end
                elseif materialTable.fromVendor then
                    if totalPrice ~= huge then
                        totalPrice = totalPrice + PROFESSIONS[professionName].VENDOR_ITEMS[materialName].price * 100 * materialTable.count
                    end
                else
                    if not profSession.itemAveragePrice[materialName] then
                        totalPrice = huge
                        break
                    else
                        totalPrice = totalPrice + profSession.itemAveragePrice[materialName] * materialTable.coutn
                    end
                end
            end
            profSession.recipesToConsider[recipeName][2] = ceil(totalPrice)
        end
    end
end

function addon.professions:calculateRecipesMinAvgPrice(professionName)
    addon.professions:calculateRecipeMinimumPrice(professionName)
    addon.professions:calculateRecipeAveragePrice(professionName)
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
        addon.professions:calculateRecipeMinimumPrice(professionName)
    elseif option == 2 then
        addon.professions:calculateRecipeAveragePrice(professionName)
    end
end


--Checks if a given item is a recipe
--professionName is an optional argument
local function isRecipe(itemName, professionName)
    if itemName == nil or type(itemName) ~= "string" then
        return false
    end
    if professionName == nil then
        for profession, _ in pairs(PROFESSIONS) do
            if profession ~= "VENDOR_ITEMS" then
                for recipeName, _ in pairs(profession) do
                    if itemName == recipeName then
                        return true
                    end
                end
            end
        end
    else
        for recipeName, _ in pairs(PROFESSIONS[professionName]) do
            if itemName == recipeName then
                return true
            end
        end
    end
    return false
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


--Checks if the given material is composite
function addon.professions:isCompositeMaterial(professionName, materialName)
    return PROFESSIONS[professionName].RECIPES[materialName] ~= nil
end

--Checks if the given recipe is a compound recipe
function addon.professions:isCompositeRecipe(professionName, recipeName)
    if not PROFESSIONS[professionName].RECIPES[recipeName] then return false end --TODO: this solves the problem but shouldn't really be here at all
    for materialName, _ in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
       if PROFESSIONS[professionName].RECIPES[materialName] then return true end
    end
    return false
end

--Calculates the depth of the composite recipe
function addon.professions:compositeRecipeDepth(professionName, recipeName)
    if not addon.professions:isCompositeRecipe(professionName, recipeName) then return 0 end

    local maxDepth, currentDept = 0, 0
    for materialName, _ in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
        currentDept = 0
        if addon.professions:isCompositeMaterial(professionName, materialName) then
            currentDept = 1 + addon.professions:compositeRecipeDepth(professionName, materialName)
        end
        maxDepth = (maxDepth < currentDept and currentDept) or maxDepth
    end
    return maxDepth
end

--Calculates how many composite materials the recipe contains, recursively
function addon.professions:compositeRecipeCount(professionName, recipeName)
    local compositeCount = 0
    for materialName, _ in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
        if addon.professions:isCompositeMaterial(professionName, materialName) then
            compositeCount = compositeCount + 1 + addon.professions:compositeRecipeCount(professionName, materialName)
        end
    end
    return compositeCount
end

--Checks if a given material(or reipce) is a part of the given recipe
local function isPartOfTheRecipe(professionName, targetMaterialName, targetRecipe)
    for materialName, _ in pairs(PROFESSIONS[professionName].RECIPES[targetRecipe].materials) do
        if materialName == targetMaterialName then
            return true
        end
    end
    return false
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
    if grey - skillLevel < 0 then return 0.0 end
    local percent = (1.0 * (grey - skillLevel) / (grey - yellow))
    if percent > 1.0 then percent = 1.0 end
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
    return (percentage + bonus > 1.0 and 1.0 or max(percentage + bonus, 0.0))
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

--Calculate how many more of the recipe we can create
local function calculateHowManyMoreAbleToMake(professionName, recipeName, leftovers)
    local howManyMoreCanWeMake = 0
    local tempToRemove = {}
    local isDone = false
    while not isDone do
        for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
            if not leftovers[materialName] then
                isDone = false
                break
            end
            if leftovers[materialName] - (tempToRemove[materialName] or 0) < materialTable.count then
                isDone = true
                break
            end
            tempToRemove[materialName] = (tempToRemove[materialName] or 0) + materialTable.count
        end
        if not isDone then
            howManyMoreCanWeMake = howManyMoreCanWeMake + 1
        end
    end
    return howManyMoreCanWeMake
end

--Calculates how many copies of the compound material should be bought vs crafted
--returns price, howManyToBuy, howManyToCraft, isPossible
function addon.professions:buyOrCraftPrice(professionName, recipeName, materialName, removedTable)
    local price = 0
    local materialTable = PROFESSIONS[professionName].RECIPES[recipeName].materials
    local howManyNeeded = materialTable.count - (profSession.backpack[materialName] or 0) + (removedTable[materialName] or 0)
    if howManyNeeded <= 0 then
        return 0, 0, 0
    end
    local buyAllPrice, craftAllPrice = -1, -1
    local leftovers = {-1, -1}
    local saveFoundItemsKeys = CopyTable(profSession.foundItemsKeys, false)
    local canBuy, canCraft = true, true
    --Buy method
    local saveHowManyNeeded = howManyNeeded
    local buyCount = 0
    local pricesPerBuy = {}
    local foundItemTable = {}
    while howManyNeeded > 0 do
        if not profSession.foundItems[materialName] or tcount(profSession.foundItems[materialName]) < profSession.foundItemsKeys[materialName] then
            canBuy = false
            break
        end
        foundItemTable = profSession.foundItems[materialName][profSession.foundItemsKeys[materialName]]
        if buyAllPrice == -1 then buyAllPrice = 0 end
        buyAllPrice = buyAllPrice + foundItemTable.price
        for i = 1, foundItemTable.count do
            tinsert(pricesPerBuy, {foundItemTable.price, foundItemTable.count})
        end
        howManyNeeded = howManyNeeded - foundItemTable.count
        buyCount = buyCount + foundItemTable.count
        profSession.foundItemsKeys[materialName] = profSession.foundItemsKeys[materialName] + 1
    end
    if canBuy then
        leftovers[1] = -howManyNeeded
    end
    --Revert and try the other method
    howManyNeeded = saveHowManyNeeded
    profSession.foundItemsKeys = saveFoundItemsKeys
    --Craft method
    --Save everything before
    saveFoundItemsKeys = CopyTable(profSession.foundItemsKeys, false)
    local saveBackpack = CopyTable(profSession.backpack, false)
    local saveItemsToBuy = CopyTable(profSession.itemsToBuy, false)
    local saveRecipesToCraft = CopyTable(profSession.recipesToCraft, false)
    local pricesPerCraft = {}
    local craftCount = 0
    local pricePerCraft, isPossible, howManyMoreMade
    while howManyNeeded > 0 do
        pricePerCraft, isPossible = addon.professions:calculateRecipeCurrentPrice()
        if craftAllPrice == - 1 then craftAllPrice = 0 end
        craftAllPrice = craftAllPrice + pricePerCraft
        tinsert(pricesPerCraft, pricePerCraft)
        if isPossible then
            howManyNeeded = howManyNeeded - 1
            craftCount = craftCount + 1
            if howManyNeeded > 0 then
                howManyMoreMade = calculateHowManyMoreAbleToMake(professionName, materialName, profSession.backpack)
                howManyNeeded = howManyNeeded - howManyMoreMade
                craftCount = craftCount + howManyMoreMade
            end
        else
            canCraft = false
            break
        end
    end
    if canCraft then
        leftovers[2] = -howManyNeeded
    end
    --Revert crafting back
    profSession.foundItemsKeys = saveFoundItemsKeys
    profSession.backpack = saveBackpack
    profSession.itemsToBuy = saveItemsToBuy
    profSession.recipesToCraft = saveRecipesToCraft
    --Compare which is cheaper
    if not canCraft then
        if canBuy then
            return (price + buyAllPrice), saveHowManyNeeded, 0, true
        else --cant craft and cant buy
            howManyNeeded = saveHowManyNeeded
            if buyCount + craftCount < howManyNeeded then
                return -1, -1, -1, false
            end
            local i = 1
            local pricesPerBuyIndex, pricesPerCraftIndex = 1, 1
            local howManyToBuy, howManyToCraft = 0, 0
            while i <= howManyNeeded do
                if 1.0 * pricesPerBuy[pricesPerBuyIndex][1] / pricesPerBuy[pricesPerBuyIndex][2] <= pricesPerCraft[pricesPerCraftIndex] then
                    price = price + pricesPerBuy[pricesPerBuyIndex][1]
                    i = i + pricesPerBuy[pricesPerBuyIndex][2]
                    howManyToBuy = howManyToBuy + pricesPerBuy[pricesPerBuyIndex][2]
                    pricesPerBuyIndex = pricesPerBuyIndex + 1
                else
                    price = price + pricesPerCraft[pricesPerCraftIndex]
                    i = i + 1
                    howManyToCraft = howManyToCraft + 1
                    pricesPerCraftIndex = pricesPerCraftIndex + 1
                end
            end
            return price, howManyToBuy, howManyToCraft, true
        end
    else --Can craft
        if not canBuy then
            return (price + craftAllPrice), 0, saveHowManyNeeded, true
        else --Can craft and can buy
            if buyAllPrice <= craftAllPrice then
                --revert crafting
                profSession.foundItemsKeys = saveFoundItemsKeys
                profSession.backpack = saveBackpack
                profSession.itemsToBuy = saveItemsToBuy
                profSession.recipesToCraft = saveRecipesToCraft
                return (price + buyAllPrice), saveHowManyNeeded, 0, true
            else
                return (price + craftAllPrice), 0, saveHowManyNeeded, true
            end
        end
    end
end

--Calulate the price for 1 craft
--Returns price, howManyAbleToCraft, isPossible
function addon.professions:calculateRecipeCurrentPrice(professionName, recipeName, currentSkillLevel, recipeUsage, removedTable, tempItemsToBuy, newBackpack)
    local price, howManyAbleToCraft = 0, 0
    local isPossible = true

    local retPrice, retHowManyToBuy, retHowManyToCraft, retIsPossible
    local saveRemovedTable

    local addedMaterials, leftovers
    local foundItemsTable = {}
    for materialName, materialTable in pairs(PROFESSIONS[professionName].RECIPES[recipeName].materials) do
        if PROFESSIONS[professionName].RECIPES[materialName] then
            if profSession.backpack[materialName] and profSession.backpack[materialName] - (removedTable[materialName] or 0) >= materialTable.count then
                removedTable[materialName] = (removedTable[materialName] or 0) + materialTable.count
            else
                retPrice, retHowManyToBuy, retHowManyToCraft, retIsPossible = addon.professions:buyOrCraftPrice(professionName, recipeName, materialName, removedTable)
                print("ret", retPrice, retHowManyToBuy, retHowManyToCraft, retIsPossible)
                --Buy needed
                tempItemsToBuy[materialName] = (tempItemsToBuy[materialName] or 0) + retHowManyToBuy
                if tempItemsToBuy[materialName] == 0 then tempItemsToBuy[materialName] = nil end
                --Craft needed
                if retHowManyToCraft > 0 then
                    addon.professions:buyCheapestAndUpdateTables()
                    addon.professions:updateRecipeUsage()
                    profSession.backpack[materialName] = (profSession.backpack[materialName] or 0) - retHowManyToCraft
                    if profSession.backpack[materialName] <= 0 then profSession.backpack[materialName] = nil end
                end
            end
        elseif PROFESSIONS.VENDOR_ITEMS[materialName] then
            addedMaterials = 0
            if profSession.backpack[materialName] then
                addedMaterials = min(profSession.backpack[materialName] - (removedTable[materialName] or 0), materialTable.count)
                removedTable[materialName] = (removedTable[materialName] or 0) + addedMaterials
            end
            while addedMaterials < materialTable.count do
                price = price + PROFESSIONS.VENDOR_ITEMS[materialName].price * 100
                addedMaterials = addedMaterials + PROFESSIONS.VENDOR_ITEMS[materialName].count
                tempItemsToBuy[materialName] = (tempItemsToBuy[materialName] or 0) + PROFESSIONS.VENDOR_ITEMS[materialName].count
            end
            leftovers = addedMaterials - materialTable.count
            if leftovers > 0 then
                newBackpack[materialName] = (newBackpack[materialName] or 0) + leftovers
            end
        else
            addedMaterials = 0
            if profSession.backpack[materialName] then
                addedMaterials = min(profSession.backpack[materialName] - (removedTable[materialName] or 0), materialTable.count)
                addedMaterials = max(0, addedMaterials)
                removedTable[materialName] = (removedTable[materialName] or 0) + addedMaterials
            end
            while addedMaterials < materialTable.count and profSession.foundItems[materialName] and profSession.foundItems[materialName] ~= {} and profSession.foundItemsKeys[materialName] <= #profSession.foundItems[materialName] do
                foundItemsTable = profSession.foundItems[materialName][profSession.foundItemsKeys[materialName]]
                price = price + foundItemsTable.price
                tempItemsToBuy[materialName] = (tempItemsToBuy[materialName] or 0) + foundItemsTable.count
                addedMaterials = addedMaterials + foundItemsTable.count
                profSession.foundItemsKeys[materialName] = profSession.foundItemsKeys[materialName] + 1
            end
            if addedMaterials < materialTable.count then
                isPossible = false
                break
            end
            leftovers = addedMaterials - materialTable.count
            if leftovers > 0 then
                newBackpack[materialName] = (newBackpack[materialName] or 0) + leftovers
            end
        end
    end
    if isPossible then
        return price, 1, true--TODO: not sure what to do with how many able to craft
    end
    return -1, 0, false --TODO: not sure what to do with how many able to craft
end

--Calculates the price for full skill Up
--Returns pricesPerCraft, isPossible, howManyMoreMade
function addon.professions:calculateRecipeCurrentPriceForSkillUp(professionName, recipeName, currentSkillLevel, recipeUsage)
    local price = 0
    --Sort materials by composite first
    local materialsTable = PROFESSIONS[professionName].RECIPES[recipeName].materials
    local sorted = {}
    for materialName, _ in pairs(materialsTable) do
        sorted[#sorted+1] = {materialName, addon.professions:compositeRecipeDepth(professionName, materialName)}
    end
    tsort(sorted, function (a, b)
        return a[2] < b[2]
    end)
    --Calculate how many to make
    local percentage = calculatePercent(professionName, recipeName, currentSkillLevel)
    local howManyToMake = calculateAttemptCount(percentage, RXPCData.professions.percentageThreshold)
    if howManyToMake == 0 or howManyToMake == huge then
        return {}
    end
    --Virtual create if possible
    local isPossible
    local pricesPerCraft = {}
    for _ = 1, howManyToMake do
        tinsert(pricesPerCraft, -1)
    end
    local pricesPerCraftIndex = 1
    local removedTable, newTable = {}, {}
    local howManyMoreMade = 0
    while howManyToMake > 0 do
        price, _, isPossible = addon.professions:calculateRecipeCurrentPrice(professionName, recipeName, currentSkillLevel, recipeUsage, removedTable, {}, newTable)
        print(price, isPossible)
        if isPossible then
            pricesPerCraft[pricesPerCraftIndex] = price
            howManyToMake = howManyToMake - 1
            howManyMoreMade = calculateHowManyMoreAbleToMake(professionName, recipeName, newTable)
            howManyToMake = howManyToMake - howManyMoreMade
        else
            break
        end
        pricesPerCraftIndex = pricesPerCraftIndex + 1
        local i = 1
        while i <= howManyMoreMade and pricesPerCraftIndex <= #pricesPerCraft do
            pricesPerCraft[pricesPerCraftIndex] = 0
            pricesPerCraftIndex = pricesPerCraftIndex + 1
        end
    end
    --Check if possible after all
    isPossible = false
    for _, p in ipairs(pricesPerCraft) do
        if p > - 1 then
            isPossible = true
            break
        end
    end
    if isPossible then
        return pricesPerCraft, true, howManyMoreMade
    else
        return nil, false, 0
    end
end

--Finds the cheapest recipe from the provided table
--Returns cheapestRecipeName, cheapestRecipePrice, cheapestRecipePrices
function addon.professions:findCheapest(professionName, recipesAndPrices, currentSKillLevel)
    local cheapestRecipeName = ""
    local cheapestRecipePrice = 0
    local isFirst = true

    local currentPrice, candidatePercentage, cheapestPercentage, candidateDepth, cheapestDepth, candidateCompositeCount, cheapestCompositeCount
    for recipeName, recipePrices in pairs(recipesAndPrices) do
        if isFirst and recipePrices ~= {} then
            cheapestRecipeName = recipeName
            for _, price in ipairs(recipePrices) do
                cheapestRecipePrice = cheapestRecipePrice + price
            end
            isFirst = false
        elseif recipePrices ~= {} then
            currentPrice = 0
            for _, price in ipairs(recipePrices) do
                currentPrice = currentPrice + price
            end
            if currentPrice < cheapestRecipePrice then
                cheapestRecipeName = recipeName
                cheapestRecipePrice = currentPrice
            elseif currentPrice == cheapestRecipePrice then
                candidatePercentage = calculatePercent(professionName, recipeName, currentSKillLevel)
                cheapestPercentage = calculatePercent(professionName, cheapestRecipeName, currentSKillLevel)
                if candidatePercentage < cheapestPercentage then
                    cheapestRecipeName = recipeName
                    cheapestRecipePrice = currentPrice
                elseif candidatePercentage == cheapestPercentage then
                    candidateDepth = addon.professions:compositeRecipeDepth(professionName, recipeName)
                    cheapestDepth = addon.professions:compositeRecipeDepth(professionName, cheapestRecipeName)
                    if candidateDepth < cheapestDepth then
                        cheapestRecipeName = recipeName
                        cheapestRecipePrice = currentPrice
                    elseif candidateDepth == cheapestDepth then
                        candidateCompositeCount = addon.professions:compositeRecipeCount(professionName, recipeName)
                        cheapestCompositeCount = addon.professions:compositeRecipeCount(professionName, cheapestRecipeName)
                        if candidateCompositeCount < cheapestCompositeCount then
                            cheapestRecipeName = recipeName
                            cheapestRecipePrice = currentPrice
                        end
                    end
                end
            end
        end
    end
    return cheapestRecipeName, cheapestRecipePrice, recipesAndPrices[cheapestRecipeName]
end

--Repopulates profSession tables with new values
local function repopulateTables(recipeName, howManyToMake, itemsToBuy, itemsToRemove)
    for itemName, itemCount in pairs(itemsToBuy) do
        profSession.itemsToBuy[itemName] = (profSession.itemsToBuy[itemName] or 0) + itemCount
        profSession.backpack[itemName] = (profSession.backpack[itemName] or 0) + itemCount
    end
    profSession.recipesToCraft[recipeName] = (profSession.recipesToCraft[recipeName] or 0) + howManyToMake
    for itemName, itemCount in pairs(itemsToRemove) do
        profSession.backpack[itemName] = (profSession.backpack[itemName] or 0) - itemCount
        if profSession.backpack[itemName] <= 0 then
            profSession.backpack[itemName] = nil
        end
    end
end

function addon.professions:updateRecipeUsage(recipeName, currentSkillLevel, recipeUsage)
    if not recipeUsage[recipeName] then
        recipeUsage[recipeName] = {currentSkillLevel, currentSkillLevel}
    else
        recipeUsage[recipeName][2] = currentSkillLevel
    end
end

function addon.professions:updateRecipeConsideration(currentSkillLevel, recipes, recipeConsideration)
    for recipeName, _ in pairs(recipes) do
        if not recipeConsideration[recipeName] then
            recipeConsideration[recipeName] = {currentSkillLevel, currentSkillLevel}
        else
            recipeConsideration[recipeName][2] = currentSkillLevel
        end
    end
end

--Buys cheapest recipe and updates the necessary tables accordingly
function addon.professions:buyCheapestAndUpdateTables(professionName, recipeName, currentSkillLevel, howManyToMake, recipeUsage)
    local saveHowManyToMake = howManyToMake
    if howManyToMake == 0 or howManyToMake == huge then
        return false
    end

    --Virtual create if possible
    local pricesPerCraft = {}
    for _ = 1, howManyToMake do
        tinsert(pricesPerCraft, -1)
    end
    local pricesCraftIndex = 1

    local tempItemsToBuy = {}
    local removedTable = {}
    local newBackpack = {}

    local price, howManyAbleToMake, isPossible
    local howManyMoreMade
    local i
    while howManyToMake > 0 do
        price, howManyAbleToMake, isPossible = addon.professions:calculateRecipeCurrentPrice(professionName, recipeName, currentSkillLevel, recipeUsage, removedTable, tempItemsToBuy, newBackpack)
        if not isPossible then
            break
        end
        tinsert(pricesPerCraft, pricesCraftIndex, price)
        howManyToMake = howManyToMake - 1
        howManyMoreMade = calculateHowManyMoreAbleToMake(profSession, recipeName, newBackpack)
        howManyToMake = howManyToMake - howManyMoreMade
        pricesCraftIndex = pricesCraftIndex + 1
        --The rest we can make for free
        i = 1
        while i <= howManyMoreMade and pricesCraftIndex <= #pricesPerCraft do
            tinsert(pricesPerCraft, pricesCraftIndex, 0)
            pricesCraftIndex = pricesCraftIndex + 1
            i = i + 1
        end
    end
    --Check if possible at all once again
    isPossible = false
    for _, price in ipairs(pricesPerCraft) do
        if price > -1 then
            isPossible = true
            break
        end
    end
    if isPossible then
        repopulateTables(recipeName, saveHowManyToMake, tempItemsToBuy, removedTable)
        return true
    else
        return false
    end
end

--Calulcates the sell value of all the items in the backpack
local function calculateSellValue(professionName)
    local sellValue = 0.0
    for itemName, itemCount in pairs(profSession.backpack) do
        if PROFESSIONS[professionName].RECIPES[itemName] then
            sellValue = sellValue + itemCount * PROFESSIONS[profSession].RECIPES[itemName].sellPrice
        else
            if not PROFESSIONS.VENDOR_ITEMS[itemName] then
                sellValue = sellValue + itemCount * (profSession.itemAveragePrice[itemName] or 0)
            end
        end
    end
    return sellValue
end

--Gathers recipes to consider on the current skill level
local function gatherRecipesToConsider(professionName, sortedRecipesKeysOrange, currentSkillLevel, impossibleRecipes)
    local recipesToConsider = {} --ipairs
    for _, recipeName in ipairs(sortedRecipesKeysOrange) do
        if PROFESSIONS[professionName].RECIPES[recipeName].orange > currentSkillLevel then
            break
        end
        if not impossibleRecipes[recipeName] then
            tinsert(recipesToConsider, recipeName)
        end
    end
    for i = #recipesToConsider, 1, -1 do
        if PROFESSIONS[professionName].RECIPES[recipesToConsider[i]].grey <= currentSkillLevel then
            tremove(recipesToConsider, i)
        end
    end
    return recipesToConsider
end

--Removes impossible recipes and stores them in impossibleRecipes
local function removeImpossibleRecipes(recipesAndPrices, impossibleRecipes)
    local totalPrice, isHuge
    for recipeName, recipePrices in pairs(recipesAndPrices) do
        totalPrice = 0
        isHuge = false
        for _, price in ipairs(recipePrices) do
            if price == huge then
                isHuge = true
                break
            end
            totalPrice = totalPrice + price
        end
        if isHuge then
            impossibleRecipes[recipeName] = true
        end
    end
    for impossibleRecipeName, isImpossible in pairs(impossibleRecipes) do
        if isImpossible then
            recipesAndPrices[impossibleRecipeName] = nil
        end
    end
end

--[[
Option:
1 - orange (default)
2 - grey
]]

local function sortKeysBy(professionName, option)
    local sortedPrep = {}
    local recipeTable
    for recipeName, _ in pairs(profSession.recipesToConsider) do
        recipeTable = PROFESSIONS[professionName].RECIPES[recipeName]
        if option == 2 then
           sortedPrep[#sortedPrep+1] = {recipeName, recipeTable.grey}
        else
            sortedPrep[#sortedPrep+1] = {recipeName, recipeTable.orange}
        end
    end
    tsort(sortedPrep, function (a, b)
        return a[2] < b[2]
    end)
    local sorted = {}
    for _, nameValuePair in ipairs(sortedPrep) do
        sorted[#sorted+1] = nameValuePair[1]
    end
    return sorted
end

--Generate path
function addon.professions:generatePath(professionName, skillLevel, segmentMaxLevel, money)
    professionName = "tailoring"
    skillLevel = 1
    money = 1000000
    --Note to self:
    --we don't need this, we will call it from profSession.recipesToConsider by searching from sortedRecipesKeysOrange
    --which we will sort first
    --local sortedRecipesByOrange = sortSelectedRecipesBy(profSession.recipesToConsider, 1, 1) --ipairs {recipeName, orangeValue}
    --local sortedRecipesByGrey = sortSelectedRecipesBy(profSession.recipesToConsider, 3, 1) --ipairs {recipeName, greyValue}
    local sortedRecipesKeysOrange = sortKeysBy(professionName, 1)
    local sortedRecipesKeysGrey = sortKeysBy(professionName, 2)
    local foundItems = CopyTable(profSession.foundItems, true)
    local impossibleRecipes = {}
    --Sort by price per item
    for _, foundItem in pairs(foundItems) do
        tsort(foundItem, function (a, b)
            return a.pricePerItem < b.pricePerItem
        end)
    end
    --local foundItemsKeys = {} --pairs [itemName] = counter
    for itemName, foundItem in pairs(foundItems) do
        profSession.foundItemsKeys[itemName] = 1
    end

    --local recipeUsage, recipeConsideration = {}, {} --we use the ones from profSession
    local timeNeeded = 0.0
    local currentSkillLevel = skillLevel
    local moneySpent = 0

    while currentSkillLevel < segmentMaxLevel do
        --[[
            Gather all possible recipes.
            Calculate cost for each for 1 skillUp
            Choose the cheapest
            Repeat until done or impossible to continue
        ]]

        --Select recipes to consider
        local recipesToConsider = gatherRecipesToConsider(professionName, sortedRecipesKeysOrange, currentSkillLevel, impossibleRecipes)

        --Calculate how much it costs
        local recipesAndPrices = {}
        local toRemove = 0
        for _, recipeName in ipairs(recipesToConsider) do
            local saveFoundItemsKeys = CopyTable(profSession.foundItemsKeys, true)
            local saveBackpack = CopyTable(profSession.backpack)
            local saveRecipeUsage = CopyTable(profSession.recipeUsage)
            recipesAndPrices[recipeName] = addon.professions:calculateRecipeCurrentPriceForSkillUp(professionName, recipeName, currentSkillLevel, profSession.rrecipeUsage)
            if recipesAndPrices[recipeName] == {} then
                toRemove = toRemove + 1
                recipesAndPrices[recipeName] = {huge}
            end
            --Revert all bought stuff back
            profSession.foundItemsKeys = CopyTable(saveFoundItemsKeys)
            profSession.backpack = CopyTable(saveBackpack)
            profSession.recipeUsage = CopyTable(saveRecipeUsage)
        end

        --Debugging print:
        --TODO: make into a function
        if true then
            local str = "Considering " .. tostring(tcount(recipesAndPrices)) .. " recipes:"
            print(str)
            local sum
            for recipeName, recipePrices in pairs(recipesAndPrices) do
                sum = 0
                str = recipeName
                for _, price in ipairs(recipePrices) do
                    sum = sum + price
                end
                if sum ~= huge then
                    str = str .. " -> " .. formatMoney(sum)
                else
                    str = str .. " -> impossible"
                end
                print(str)
                print("==========")
            end
        end

        --Remove impossible
        removeImpossibleRecipes(recipesAndPrices, impossibleRecipes)
        if tcount(recipesAndPrices) == 0 then --No more recipes - break
            break
        end

        addon.professions:updateRecipeConsideration(currentSkillLevel, recipesAndPrices, profSession.recipeConsideration)

        --Find cheapest
        --Returns cheapestRecipeName, cheapestRecipePrice, cheapestRecipePrices
        local cheapestRecipeName, cheapestRecipePrice, cheapestRecipePrices = addon.professions:findCheapest(professionName, recipesAndPrices, currentSkillLevel)
        print(cheapestRecipeName, cheapestRecipePrice)
        for i, v in ipairs(cheapestRecipePrices) do
            print(i, ": ", tostring(v))
        end
        print("==========")
        if cheapestRecipeName == "" then
            break
        end
        if toRemove == tcount(recipesAndPrices) then
            break -- We can't make anything anymore - break
        end
        if money < cheapestRecipePrice then
            break -- We don't have enought money anymore - break
        end
        print(cheapestRecipeName, cheapestRecipePrice)

        --TODO: add a failsafe system against bloated recipe prices
        --Buy cheapest
        local percent = calculatePercent(professionName, cheapestRecipeName, currentSkillLevel)
        local howManyToMake = calculateAttemptCount(percent, RXPCData.professions.percentageThreshold)
        local isPossible = addon.professions:buyCheapestAndUpdateTables(professionName, cheapestRecipeName, currentSkillLevel, howManyToMake, profSession.recipeUsage)
        if not isPossible then
            break
        end



        --Update recipe usage
        addon.professions:updateRecipeUsage(cheapestRecipeName, currentSkillLevel, profSession.recipeUsage)
        --Update time needed and money
        timeNeeded = timeNeeded + howManyToMake * PROFESSIONS[professionName].RECIPES[cheapestRecipeName].castTime
        money = money - cheapestRecipePrice
        moneySpent = moneySpent + cheapestRecipePrice
        --Update skill levels gained
        currentSkillLevel = currentSkillLevel + 1
         --Log buying
        if true then
            local str = "Crafted: " .. tostring(howManyToMake) .. "x " .. cheapestRecipeName .. " for " .. formatMoney(cheapestRecipePrice) .. "\n"
            str = str .. "Level reached: " .. tostring(currentSkillLevel) .. "\n"
            str = str .. "Current money spent: " .. formatMoney(moneySpent)
            print(str)
            print("==========")
        end
    end

    --Calulcate expected sell value
    --For now very simple
    local sellValue = calculateSellValue(professionName)

    --Return info
    return profSession.recipesToCraft, profSession.itemsToBuy, profSession.backpack,
        currentSkillLevel, (currentSkillLevel - skillLevel),
        moneySpent, timeNeeded, sellValue,
        profSession.recipeUsage, profSession.recipeConsideration
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
--@deprecated
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
    local timeNeeded = 0.0 --Time needed to craft every recipe in the list in seconds with decimals
    local skillLevelsToGain = segmentMaxLevel - skillLevel
    local skillLevelsGained = 0
    local moneySpent = money
    local howManyToMake, howManyLeftToMake = 0, 0
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
            howManyToMake = calculateAttemptCount(percent, RXPCData.professions.percentageThreshold)
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
                        local nextHowManyToMake = calculateAttemptCount(nextPrecent, RXPCData.professions.percentageThreshold)
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
            howManyLeftToMake = howManyToMake
            while howManyLeftToMake > 0 and canCreateIthRecipe do --Add greedily
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
                                haveMoney = false
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
                                moneyPerItem = moneyPerItem + (foundItemDetails.price * 1.0 * min(foundItemDetails.count, materialTable.count) / foundItemDetails.count) --min, because we want to check if we need more then the current stack has to offer
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
                    local nextHowManyToMake = calculateAttemptCount(nextPrecent, RXPCData.professions.percentageThreshold)
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
                    howManyLeftToMake = howManyLeftToMake - 1
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
            --Update needed time
            timeNeeded = timeNeeded + howManyToMake * recipeTable.castTime
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
    return recipesToCraftKnapsack, materialsToBuyKnapsack, backpackKnapsack, skillLevelsGained, moneySpent, timeNeeded
end


--Adds item to RXPCData.craftedItems
--itemCount defaults to 1
local function addToCraftedItems(itemID, itemCount)
    if not itemID then return end
    itemCount = itemCount or 1

    if not RXPCData.craftedItems then
        RXPCData.craftedItems = {}
    end

    RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + itemCount
end

--Removes item from RXPCData.craftedItems
--itemCount defaults to RXPCData.craftedImtes[itemID] count
local function removeFromCraftedItems(itemID, itemCount)
    if not itemID then return end
    if not RXPCData.craftedItems or not RXPCData.craftedItems[itemID] then return end
    itemCount = itemCount or RXPCData.craftedItems[itemID]

    RXPCData.craftedItems[itemID] = max(0, RXPCData.craftedItems[itemID] - itemCount)
    if RXPCData.craftedItems[itemID] <= 0 then -- <= for safety only, should never be below 0
        RXPCData.craftedItems[itemID] = nil
    end
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

function addon.professions:ITEM_PUSH(_, bagSlot, iconFileID)
    print("ITEM_PUSH")
    print(bagSlot, iconFileID)
    --TODO: get info by iconFileID
end

local tstFrame = {}

function addon.professions:ITEM_LOCK_CHANGED(_, bagIndex, slotIndex)
end

--Updates craftedItems when an item is removed from inventory
function addon.professions:ITEM_LOCKED(_, bagIndex, slotIndex)
    if bagIndex < 0 or bagIndex > 4 then return end

    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    if RXPCData.craftedItems[itemID] then
        RXPCData.craftedItems[itemID] = max(0, RXPCData.craftedItems[itemID] - stackCount)
        if RXPCData.craftedItems[itemID] == 0 then
            RXPCData.craftedItems[itemID] = nil
        end
    end

    --TODO: debbuging screen -delete this when ready
    local text = ""
    for k, v in pairs(RXPCData.craftedItems) do
        text = text .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    tstFrame.text:SetText(text)
end

--Updates craftedItems when an item is stored to inventory
function addon.professions:ITEM_UNLOCKED(_, bagIndex, slotIndex)
    if bagIndex < 0 or bagIndex > 4 then return end

    local containerInfo = GetContainerItemInfo(bagIndex, slotIndex)
    local itemID = containerInfo.itemID
    local stackCount = containerInfo.stackCount
    --Check if its a recipe
    local debug = true
    if debug or isRecipe(containerInfo.itemName) then
        RXPCData.craftedItems[itemID] = (RXPCData.craftedItems[itemID] or 0) + stackCount
    end

    --TODO: debbuging screen -delete this when ready
    local text = ""
    for k, v in pairs(RXPCData.craftedItems) do
        text = text .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    tstFrame.text:SetText(text)
end

function addon.professions:BAG_NEW_ITEMS_UPDATED(_)
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
    removeNonFactionRecipes(RXPCData.professions.profession1.name)
    gatherMaterialsToScan(RXPCData.professions.profession1.name)
    profSession.materialIndex = 1
    addon.professions.AH:Scan(profSession.materialsToScan[profSession.materialIndex])
end

--A scan function for 'test' profession
function addon.professions:testScan()
    profSession:Reset()
    local minSegment, maxSegment = self.calculateSegmentRange(RXPCData.professions.profession1.skillLevel, RXPCData.professions.segmentRange)
    gatherRecipesBySegment(RXPCData.professions.profession1.name, minSegment, maxSegment)
    --removeGreyRecipes(RXPCData.professions.profession1.name, RXPCData.professions.profession1.skillLevel)
    removeNonTrainable(RXPCData.professions.profession1.name)
    removeNonFactionRecipes(RXPCData.professions.profession1.name);
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

--Stringifies results from path algorith
function addon.professions.pathToString(professionName, skillLevelReached, skillLevelsGained, moneySpent, timeNeeded, sellValue)
    local sb = stringBuilder("==========Final results==========\n")
    sb:append("\n"):append("====Recipe costs====\n")
    --TODO: maybe make more pretty
    for recipeName, minAvgPricePair in pairs(profSession.recipesToConsider) do
        sb:append(recipeName):append(": "):append(formatMoney(minAvgPricePair[1] or -1)):append(" | "):append(formatMoney(minAvgPricePair[2] or -1)):append("\n")
    end
    sb:append("\n\n====To craft====\n")
    --TODO: create aux functions for this
    local sortedByOrangeKeys = {}
    for recipeName, _ in pairs(profSession.recipesToCraft) do
        sortedByOrangeKeys[#sortedByOrangeKeys+1] = recipeName
    end
    tsort(sortedByOrangeKeys, function (a, b)
        return PROFESSIONS[professionName].RECIPES[a].orange < PROFESSIONS[professionName].RECIPES[b].orange
    end)
    local firstUse, lastUse, firstConsideration, lastConsideration
    for _, recipeName in ipairs(sortedByOrangeKeys) do
        firstUse = profSession.recipeUsage[recipeName][1]
        lastUse = profSession.recipeUsage[recipeName][2]
        firstConsideration = (profSession.recipeConsideration[recipeName] and profSession.recipeConsideration[recipeName][1]) or -1
        lastConsideration = (profSession.recipeConsideration[recipeName] and profSession.recipeConsideration[recipeName][2]) or -1
        sb:append(recipeName):append(" -> "):append(profSession.recipesToCraft[recipeName]):append(" | ("):append(firstUse):append(", "):append(lastUse):append(") | ("):append(firstConsideration):append(", "):append(lastConsideration):append(")\n")
    end
    sb:append("\n\n====To buy====\n")
    local sortByName = {}
    for itemName, _ in pairs(profSession.itemsToBuy) do
        sortByName[#sortByName+1] = itemName
    end
    tsort(sortByName, function (a, b)
        return a < b
    end)
    for _, itemName in ipairs(sortByName) do
        sb:append(itemName):append(" -> "):append(profSession.itemsToBuy[itemName]):append("\n")
    end
    sb:append("\n\n====Leftovers====\n")
    sortByName = {}
    for itemName, _ in pairs(profSession.backpack) do
        sortByName[#sortByName+1] = itemName
    end
    tsort(sortByName, function (a, b)
        return a < b
    end)
    for _, itemName in ipairs(sortByName) do
        sb:append(itemName):append(" -> "):append(profSession.backpack[itemName]):append("\n")
    end
    sb:append("\n\n====After calc====\n")
    sb:append("Money: "):append(formatMoney(RXPCData.professions.money - moneySpent)):append("\n")
    sb:append("Money spent: "):append(formatMoney(moneySpent)):append("\n")
    sb:append("Approximate sell value: "):append(formatMoney(sellValue)):append("\n")
    sb:append("Skill level reached: "):append(skillLevelReached):append("\n")
    sb:append("Skill levels gained: "):append(skillLevelsGained):append("\n")
    sb:append("Time needed: "):append(formatTime(timeNeeded)):append("\n")

    return sb:build()
end

--Stringifies results form Greedy algorthim - For testing purposes only
function addon.professions.greedyToString(recipesToCraft, materialsToBuy, backPack, skillLevelsGained, moneySpent, timeNeeded)
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
    sb:append("Time needed: "):append(formatTime(timeNeeded)):append("\n")

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
    RXPCData.professions.percentageThreshold = RXPCData.professions.percentageThreshold or 0.8
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

    --TODO: debbuging frame for item tracking, delte when done
    tstFrame = CreateFrame('Frame', 'frameName', UIParent, "BasicFrameTemplateWithInset")
    tstFrame:SetSize(300, 300)
    tstFrame:SetPoint("BOTTOMLEFT", UIParent, "CENTER")
    tstFrame:EnableMouse(true)
    tstFrame:SetMovable(true)
    tstFrame:RegisterForDrag("LeftButton")
    tstFrame:SetScript("OnDragStart", function (self)
        self:StartMoving()
    end)
    tstFrame:SetScript("OnDragStop", function (self)
        self:StopMovingOrSizing()
    end)
    tstFrame.text = tstFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    tstFrame.text:SetPoint("TOPLEFT", tstFrame, "TOPLEFT", 0, -50)
    tstFrame.text:SetWidth(200)
    tstFrame.text:SetNonSpaceWrap(true)
    tstFrame.text:SetText("")
end


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

SLASH_resetInitScan1 = '/rstInitScan'
SlashCmdList['resetInitScan'] = function()
    if not RXPCData.professions.isInitialScanned then RXPCData.professions.isInitialScanned = false end
    RXPCData.professions.isInitialScanned = false
    print("Reseted RXPCData.professions.isInitialScanned")
end


SLASH_c1 = '/c'
SlashCmdList['c'] = function()
    RXPCData.craftedItems = {}
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
    local text = ""
    for k, v in pairs(RXPCData.craftedItems) do
        text = text .. tostring(k) .. " -> " .. tostring(v) .. "\n"
    end
    tstFrame.text:SetText(text)
end

--Export
--[[SLASH_export1 = '/export'
SlashCmdList['export'] = function(option)
    if not option then option = 1 else option = tonumber(option) end
    calculateMaterialAveragePrice()

    GUI.guiFrame.printText:SetEnabled(true)
    GUI.guiFrame.printText:SetText(exportFoundItems(option))
    GUI.guiFrame.printText:SetFocus()
    GUI.guiFrame.printText:HighlightText()
end
--]]



print("done loading professions")

--[[ Notes
   
]]