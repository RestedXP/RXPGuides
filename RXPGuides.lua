local addonName, addon = ...

local _G = _G
local UnitInRaid = UnitInRaid
local fmt = string.format

addon = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0")

local RegisterMessage_OLD = addon.RegisterMessage
local rand, tinsert, select = math.random, table.insert, _G.select

local messageList = {}

local function MessageHandler(message,...)
    for func in pairs(messageList[message]) do
        func(message,...)
    end
end

addon.RegisterMessage = function(self,message,callback,...)
    if not messageList[message] then
        messageList[message] = {}
        RegisterMessage_OLD(self,message,MessageHandler)
    end
    messageList[message][callback] = true
end

function addon:UnregisterMessage(message,callback)
    if not messageList[message] then
        return
    elseif callback then
        messageList[message][callback] = nil
    else
        table.wipe(messageList[message])
    end
end

addon.HookMessage = function(self,message,callback,...)
    if not (messageList[message] and messageList[message][callback]) then
        addon.RegisterMessage(self,message,callback,...)
    else
        local callback_old = MessageHandler
        local callback_new
        if type(callback_old) == "function" then
            callback_new = function(...)
                callback_old(...)
                callback(...)
            end
        else
            callback_new = callback
        end
        RegisterMessage_OLD(self,message,callback_new,...)
    end
end

function addon.SendEvent(self,...)
    if _G.WeakAuras and _G.WeakAuras.ScanEvents then
        _G.WeakAuras.ScanEvents(...)
    end
    return addon.SendMessage(self,...)
end

local messageQueue = {}
function addon:QueueMessage(...)
    tinsert(messageQueue,{...})
end

function addon.ProcessMessageQueue()
    local processed
    local removedIndexes = {}
    for i = 1,#messageQueue do
        addon:SendEvent(unpack(messageQueue[i]))
        tinsert(removedIndexes,i)
        if i >= 10 then
            break
        end
    end
    for i = #removedIndexes,1,-1 do
        processed = true
        table.remove(messageQueue,removedIndexes[i])
    end
    return processed
end

local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or _G.GetAddOnMetadata
addon.release = GetAddOnMetadata(addonName, "Version")
addon.title = GetAddOnMetadata(addonName, "Title")
local L = addon.locale.Get

if string.match(addon.release, 'project') then
    addon.release = L('Development')
    addon.versionText = L('Development')
else
    addon.versionText = string.format("%s %s", _G.GAME_VERSION_LABEL,
                                      addon.release)
end

addon.version = 40000
local gameVersion = select(4, GetBuildInfo())
addon.gameVersion = gameVersion

if gameVersion > 40000 then
    addon.game = "DF"
elseif gameVersion > 30000 then
    addon.game = "WOTLK"
elseif gameVersion > 20000 then
    addon.game = "TBC"
else
    addon.game = "CLASSIC"
end

local RXPGuides = {}
addon.RXPGuides = RXPGuides
_G.RXPGuides = RXPGuides

addon.guideCache = {}
addon.questQueryList = {}
addon.itemQueryList = {}
addon.questAccept = {}
addon.questTurnIn = {}
addon.activeItems = {}
addon.activeSpells = {}
addon.functions = {}
addon.enabledFrames = {} -- Hold all enabled frame/features for Hide/Show
addon.player = {
    localeClass = select(1, UnitClass("player")),
    class = select(2, UnitClass("player")),
    race = select(2, UnitRace("player")),
    faction = select(1,UnitFactionGroup("player")),
    guid = UnitGUID("player"),
    name = UnitName("player"),
}
addon.player.neutral = addon.player.faction == "Neutral"

addon.generatedSteps = {}

--local class = addon.player.class
--local race = addon.player.race

BINDING_HEADER_RXPGuides = addon.title
BINDING_HEADER_RXPTargeting = addon.title

local errorTimer = 0
addon.errors = {}
function addon.Call(label,func,...)
    --if true then return true end
    label = label or ""
    addon.lastCall = label
    local pass, r1, r2, r3, r4 = pcall(func,...)
    if not pass then
        local msg = r1
        addon.errors[label] = addon.errors[label] or {}
        local count = addon.errors[label][msg] or 0
        addon.errors[label][msg] = count + 1
        if GetTime() - errorTimer > 30 then
            errorTimer = GetTime()
            error(msg)
        end
        return
    end
    return r1, r2, r3, r4
end

local questFrame = CreateFrame("Frame");

local startTime = GetTime()

function addon.QuestAutoAccept(titleOrId)
    if not titleOrId then return end

    -- questAccept contains quest and title lookups
    -- addon.questAccept[747] == addon.questAccept["The Hunt Begins"]

    local element = addon.questAccept[titleOrId]

    if not element then return end

    if element.step.active then
        addon:SendEvent("RXP_QUEST_ACCEPT",element.questId)
        return true
    end
end

function addon.GetStepQuestReward(titleOrId)
    -- enableQuestRewardAutomation is setting for hard-coded .turnin step data
    if not addon.settings.profile.enableQuestRewardAutomation then return 0 end
    if not titleOrId then return 0 end

    -- questTurnIn contains quest and title lookups
    -- addon.questTurnIn[747] == addon.questTurnIn["The Hunt Begins"]

    local element = addon.questTurnIn[titleOrId]

    if not element then return 0 end

    return element.reward >= 0 and element.reward or 0
end

local currrentSkillLevel = {}
local maxSkillLevel = {}
local professionNames

function addon.GetProfessionNames()
    if not professionNames then professionNames = {} end

    for profession, ids in pairs(addon.professionID) do
        for i, id in ipairs(ids) do
            if IsSpellKnown(id) then
                if id == 2656 then
                    professionNames[profession] = GetSpellInfo(2575)
                elseif id == 2383 then
                    professionNames[profession] = GetSpellInfo(9134)
                elseif id == 1804 then
                    professionNames[profession] = GetSpellInfo(1809)
                else
                    professionNames[profession] = GetSpellInfo(id)
                end
                break
            end
        end
    end
    professionNames.riding = GetSpellInfo(33388)
    return professionNames
end

function addon.GetProfessionLevel()
    local names
    if not (professionNames and professionNames.riding) then
        addon.GetProfessionNames()
    end
    names = professionNames

    if IsPlayerSpell(33388) then
        currrentSkillLevel["riding"] = 75
    elseif IsPlayerSpell(33391) then
        currrentSkillLevel["riding"] = 150
    elseif IsPlayerSpell(34090) then
        currrentSkillLevel["riding"] = 225
    elseif IsPlayerSpell(34091) then
        currrentSkillLevel["riding"] = 300
    elseif IsPlayerSpell(90265) then
        currrentSkillLevel["riding"] = 375
    end

    if IsPlayerSpell(54197) then currrentSkillLevel["coldweatherflying"] = 1 end

    if not _G.GetSkillLineInfo then return end
    if not names.riding then names.riding = GetSpellInfo(33388) end
    for i = 1, _G.GetNumSkillLines() do
        local skillName, _, _, skillRank, _, _, skillMaxRank =
            _G.GetSkillLineInfo(i)
        if skillRank then
            for profession, name in pairs(names) do
                -- print(name,skillName,name == skillName)
                if name == skillName then
                    currrentSkillLevel[profession] = skillRank
                    maxSkillLevel[profession] = skillMaxRank
                end
            end
        end
    end
end

function addon.UpdateSkillData()
    addon.GetProfessionNames()
    addon.GetProfessionLevel()
end

local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID
--local GetItemSpell = C_Container and C_Container.GetItemSpell or _G.GetItemSpell

function addon.GetSkillLevel(skill, useMaxValue)
    addon.UpdateSkillData()

    local function finditem(id)
        if type(id) == "number" then
            for level,t in pairs(addon.mountIDs) do
                if t[id] then
                    return level
                end
            end
        end
        return -1
    end

    if skill == "riding" and gameVersion < 20000 and addon.mountIDs then
        local level = -1

        for bag = BACKPACK_CONTAINER, NUM_BAG_FRAMES do
            for slot = 1,GetContainerNumSlots(bag) do
                local id = GetContainerItemID(bag, slot)
                local _,spellId = GetItemSpell(id)
                level = math.max(level,finditem(spellId))
            end
        end
        return level
    elseif skill then
        if useMaxValue then
            return maxSkillLevel[skill] or -1
        else
            return currrentSkillLevel[skill] or -1
        end
    else
        if useMaxValue then
            return maxSkillLevel
        else
            return currrentSkillLevel
        end
    end
end



local function ChangeStep(srcGuide,srcStep,destGuide,destStep,func)
    local function stepindex(guide,refresh)
        if type(guide) ~= "table" then
            return false
        elseif not guide.stepIds or refresh then
            guide.stepIds = {}
            for i,step in ipairs(guide.steps) do
                if step.stepId then
                    guide.stepIds[step.stepId] = i
                end
            end
        end
        return true
    end

    srcGuide = addon:FetchGuide(addon.guideIds[srcGuide])
    destGuide = addon:FetchGuide(addon.guideIds[destGuide])

    if not (stepindex(srcGuide) and (not destGuide or stepindex(destGuide))) then
        return
    end
    srcStep = srcGuide.stepIds[srcStep]
    destStep = srcGuide.stepIds[destStep]
    if srcStep and (not destGuide or destStep) then
        func(srcGuide,srcStep,destGuide,destStep)
        stepindex(srcGuide,true)
        stepindex(destGuide,true)
        addon:ScheduleTask(addon.ReloadGuide)
        --print(srcGuide.name,destGuide.name,srcStep,destStep)
        return true
    end
end

function addon.ReplaceStep(arg1,arg2,arg3,arg4)
    local function replace(srcGuide,srcStep,destGuide,destStep)
        --local oldStep = destGuide.steps[destStep]
        destGuide.steps[destStep] = srcGuide.steps[srcStep]
        --srcGuide.steps[srcStep] = oldStep
    end
    return ChangeStep(arg1,arg2,arg3,arg4,replace)
end

function addon.RemoveStep(arg1,arg2)
    local function remove(srcGuide,srcStep)
        --print('remove',srcGuide.name,srcStep)
        table.remove(srcGuide.steps,srcStep)
    end
    return ChangeStep(arg1,arg2,"","",remove)
end

function addon.InsertStep(arg1,arg2,arg3,arg4)
    local function insert(srcGuide,srcStep,destGuide,destStep)
        table.insert(destGuide.steps,destStep,srcGuide.steps[srcStep])
    end
    return ChangeStep(arg1,arg2,arg3,arg4,insert)

end

addon.skillList = {}
local spellRequest = {}

local trainerUpdate = 0

local function ProcessSpells(names, rank)
    if gameVersion > 90000 then return end
    local _, race = UnitRace("player")
    local level = UnitLevel("player")
    local entries = {race, addon.player.class}
    for _, entry in pairs(entries) do
        if addon.defaultSpellList[entry] then
            for spellLvl, spells in pairs(addon.defaultSpellList[entry]) do
                if spellLvl <= level then
                    for i, spellId in ipairs(spells) do
                        if not (spellRequest[spellId] or
                            C_Spell.IsSpellDataCached(spellId)) then
                            C_Spell.RequestLoadSpellData(spellId)
                            spellRequest[spellId] = true
                        end
                        if names and rank and
                            not (addon.settings.profile.hardcore and
                                addon.HCSpellList and addon.HCSpellList[spellId]) then
                            spellRequest[spellId] = nil
                            local sName = GetSpellInfo(spellId)
                            local sRank = GetSpellSubtext(spellId)
                            for id, name in pairs(names) do
                                if sName == name and sRank == rank[id] then
                                    BuyTrainerService(id)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

local function OnTrainer()
    if not addon.settings.profile.enableTrainerAutomation then return end

    local i = GetNumTrainerServices()

    if not i or i == 0 or GetTime() - trainerUpdate > 15 then return end

    local names = {}
    local rank = {}

    for id = 1, i do
        local n, r, cat = GetTrainerServiceInfo(id)
        if cat == "available" then
            names[id] = n
            rank[id] = r
        end
    end

    ProcessSpells(names, rank)

    for spellName, spellRank in pairs(addon.skillList) do
        for id, name in pairs(names) do
            if name == spellName then
                local r = rank[id]
                r = r and tonumber(r:match("(%d+)")) or 0
                if (r <= spellRank or spellRank == 0) then
                    BuyTrainerService(id)
                    return
                end
            end
        end
    end

end

local tTimer = 0
local function trainerFrameUpdate(self, t)
    tTimer = tTimer + t
    if tTimer >= 0.2 then
        tTimer = 0
        if GetTime() - trainerUpdate > 15 then
            self:SetScript("OnUpdate", nil)
        end
        OnTrainer()
    end
end

local function GossipGetNumOptions()
    if C_GossipInfo.GetNumOptions then
        return C_GossipInfo.GetNumOptions()
    elseif C_GossipInfo.GetOptions then
        return #C_GossipInfo.GetOptions()
    else
        return _G.GetNumGossipOptions()
    end
end

addon.GossipGetNumOptions = GossipGetNumOptions

local GossipGetNumActiveQuests = C_GossipInfo.GetNumActiveQuests or
                                     _G.GetNumGossipActiveQuests
local GossipGetNumAvailableQuests = C_GossipInfo.GetNumAvailableQuests or
                                        _G.GetNumGossipAvailableQuests
local GossipSelectAvailableQuest = C_GossipInfo.SelectAvailableQuest or
                                       _G.SelectGossipAvailableQuest
local GossipGetActiveQuests = C_GossipInfo.GetActiveQuests or
                                  _G.GetGossipActiveQuests
local GossipSelectActiveQuest = C_GossipInfo.SelectActiveQuest or
                                    _G.SelectGossipActiveQuest
local GossipGetAvailableQuests = C_GossipInfo.GetAvailableQuests or
                                     _G.GetGossipAvailableQuests

-- TODO handle Pawn compatibility
local questRewardChoiceIcons = {}
local questLogRewardChoiceIcons = {}
local function hideRewardChoiceIcons()
    for _, f in pairs(questRewardChoiceIcons) do
        if not f:IsForbidden() then f:Hide() end
    end

    for _, f in pairs(questLogRewardChoiceIcons) do
        if not f:IsForbidden() then f:Hide() end
    end
end

local function createRewardChoiceIcons()
    if not _G.QuestInfoRewardsFrame then return end

    if not questRewardChoiceIcons["ratio"] then
        questRewardChoiceIcons["ratio"] = _G.QuestInfoRewardsFrame:CreateTexture()
        questRewardChoiceIcons["ratio"]:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/rxp_logo-64")
        questRewardChoiceIcons["ratio"]:SetSize(20, 20)
    end

    if questRewardChoiceIcons["ratio"].isHooked then return end

    if not questRewardChoiceIcons["value"] then
        questRewardChoiceIcons["value"] = _G.QuestInfoRewardsFrame:CreateTexture()
        questRewardChoiceIcons["value"]:SetTexture("Interface/GossipFrame/VendorGossipIcon.blp")
        questRewardChoiceIcons["value"]:SetSize(20, 20)
    end

    _G.QuestInfoRewardsFrame:HookScript("OnHide", hideRewardChoiceIcons)

    -- "OnShow" equivalent is handled by QuestAutomation function

    questRewardChoiceIcons["ratio"].isHooked = true
end

local function createLogRewardChoiceIcons()
    if not _G.QuestLogDetailScrollFrame then return end

    if not questLogRewardChoiceIcons["ratio"] then
        questLogRewardChoiceIcons["ratio"] = _G.QuestLogDetailScrollFrame:CreateTexture()
        questLogRewardChoiceIcons["ratio"]:SetTexture("Interface/AddOns/" .. addonName .. "/Textures/rxp_logo-64")
        questLogRewardChoiceIcons["ratio"]:SetSize(20, 20)
    end

    if questLogRewardChoiceIcons["ratio"].isHooked then return end

    if not questLogRewardChoiceIcons["value"] then
        questLogRewardChoiceIcons["value"] = _G.QuestLogDetailScrollFrame:CreateTexture()
        questLogRewardChoiceIcons["value"]:SetTexture("Interface/GossipFrame/VendorGossipIcon.blp")
        questLogRewardChoiceIcons["value"]:SetSize(20, 20)
    end

    -- Triggers on open and selection in Classic
    -- Only triggers on selection in Wrath
    hooksecurefunc("SelectQuestLogEntry", function(questLogIndex)
        hideRewardChoiceIcons()
        addon.DisplayQuestLogRewards(questLogIndex)
    end)

    -- Hide icons on quest log close to avoid mislabeled rewards
    _G.QuestLogDetailScrollFrame:HookScript("OnHide", hideRewardChoiceIcons)

    if addon.gameVersion > 20000 then
        -- Inefficient, but bypasses load order issues between helper functions
        _G.QuestLogDetailScrollFrame:HookScript("OnShow", function ()
            addon.DisplayQuestLogRewards()
        end)
    end

    questLogRewardChoiceIcons["ratio"].isHooked = true
end

-- Retail has enough helpers and massive UI differences
if addon.gameVersion < 40000 then
    createRewardChoiceIcons()
    createLogRewardChoiceIcons()
end

local GetItemInfo = _G.GetItemInfo
local GetQuestLogSelection, GetNumQuestLogChoices = _G.GetQuestLogSelection,
                                                    _G.GetNumQuestLogChoices
local GetQuestLogChoiceInfo, GetQuestLogItemLink, GetQuestLogTitle =
    _G.GetQuestLogChoiceInfo, _G.GetQuestLogItemLink, _G.GetQuestLogTitle

-- bestSellOption, bestRatioOption, options
local function evaluateQuestChoices(questID, numChoices, GetQuestItemInfo, GetQuestItemLink, GetQuestLogChoiceInfo)
    local hardCodedReward = addon.GetStepQuestReward(questID)

    -- If explicitly hard-coded .turnin reward choice, use that and exit
    if addon.settings.profile.enableQuestRewardAutomation
        and hardCodedReward and hardCodedReward > 0 then -- Quest has an explicit reward ID for .turnin step

        return -1, hardCodedReward, {}
    end

    -- Only support hard-coded turnin values on Retail
    if addon.gameVersion > 40000 then return -1, -1, {} end

    local options = {}
    local itemLink, isUsable, itemData

    -- Load choices data
    -- TODO retry or handle query failures
    for i = 1, numChoices do
        if GetQuestItemInfo then
            isUsable = select(5, GetQuestItemInfo("choice", i))
        else
            isUsable = select(5, GetQuestLogChoiceInfo(i))
        end

        itemLink = GetQuestItemLink("choice", i)

        if addon.itemUpgrades then
            itemData = addon.itemUpgrades:GetItemData(itemLink)

            if itemData then
                -- Returns nil if item not applicable
                itemData.comparisons = addon.itemUpgrades:CompareItemWeight(itemLink) or {}
                itemData.isUsable = isUsable

                options[i] = itemData
            end
        else
            local _, _, _, _, itemMinLevel, _, _, _, itemEquipLoc, _, sellPrice, _,
                itemSubTypeID = GetItemInfo(itemLink)

            -- Build ItemUpgrades object without comparisons
            options[i] = {
                itemLink = itemLink,
                itemSubTypeID = itemSubTypeID,
                itemEquipLoc = itemEquipLoc,
                sellPrice = sellPrice,
                itemMinLevel = itemMinLevel,
                comparisons = {},
                isUsable = isUsable
            }
        end
    end

    local bestSellOption, bestSellValue = -1, -1
    local bestRatioOption, bestRatioValue = -1, -1
    for choice, data in ipairs(options) do
        if data.sellPrice > bestSellValue then
            bestSellValue = data.sellPrice
            bestSellOption = choice
        end

        -- Check for best compared upgrade
        for _, compareData in ipairs(data.comparisons) do
            if not compareData.Ratio then
                if compareData.debug == _G.EMPTY then
                     -- An item needs to be 10x better to beat an empty slot fill
                    bestRatioValue = 10.0
                    bestRatioOption = choice
                end
            elseif compareData.Ratio > bestRatioValue then
                bestRatioValue = compareData.Ratio
                bestRatioOption = choice
            end
        end
    end

    return bestSellOption, bestRatioOption, options
end

local function handleQuestComplete()
    local id = GetQuestID()
    if not id or id < 0 then return end

    local numChoices = GetNumQuestChoices()

    -- Automatically complete quests with no user choice
    if numChoices <= 1 then
        GetQuestReward(1)
        addon:SendEvent("RXP_QUEST_TURNIN", id, numChoices, 1)
        return
    end

    local bestSellOption, bestRatioOption, options = evaluateQuestChoices(id, numChoices, GetQuestItemInfo, GetQuestItemLink)

    if addon.gameVersion < 40000 and addon.settings.profile.enableQuestChoiceRecommendation then
        if bestRatioOption > 0 then
            local bestRatioFrame = QuestInfo_GetRewardButton(QuestInfoFrame.rewardsFrame, bestRatioOption)

            if bestRatioFrame then
                questRewardChoiceIcons["ratio"]:SetPoint("TOPRIGHT", bestRatioFrame , -1, 1)
                questRewardChoiceIcons["ratio"]:SetParent(bestRatioFrame)
                questRewardChoiceIcons["ratio"]:Show()
            end
        end
    end

    if addon.gameVersion < 40000 and addon.settings.profile.enableQuestChoiceGoldRecommendation then
        local bestSellFrame = QuestInfo_GetRewardButton(QuestInfoFrame.rewardsFrame, bestSellOption)

        if bestSellFrame then
            if bestSellOption > 0 then
                questRewardChoiceIcons["value"]:SetPoint("BOTTOMRIGHT", bestSellFrame , -1, 1)
                questRewardChoiceIcons["value"]:SetParent(bestSellFrame)
                questRewardChoiceIcons["value"]:Show()
            end

            -- No calculated best upgrade, so add recommendation to value as well, only if weights added
            if addon.itemUpgrades and bestRatioOption < 1 then
                questRewardChoiceIcons["ratio"]:SetPoint("TOPRIGHT", bestSellFrame , -1, 1)
                questRewardChoiceIcons["ratio"]:SetParent(bestSellFrame)
                questRewardChoiceIcons["ratio"]:Show()
            end
        end
    end

    -- If auto rewards disabled, abort because not doing anything further
    if not addon.settings.profile.enableQuestChoiceAutomation then return end

    -- upgrade is more useful than selling
    if bestRatioOption > 0 then
        -- if isUsable, then automatically pick
        -- If not usable but recommended then leave the window open for user decision
        if options and options[bestRatioOption].isUsable then
            GetQuestReward(bestRatioOption)
            addon:SendEvent("RXP_QUEST_TURNIN", id, numChoices, bestRatioOption)
        end
    elseif bestSellOption > 0 then
        GetQuestReward(bestSellOption)
        addon:SendEvent("RXP_QUEST_TURNIN", id, numChoices, bestSellOption)
    end
end

-- Not hooked by createLogRewardChoiceIcons so never called on Retail
function addon.DisplayQuestLogRewards(questLogIndex)
    if not questLogIndex or type(questLogIndex) == "table" then
        questLogIndex = GetQuestLogSelection()
    end
    if questLogIndex < 1 then return end

    local numChoices = GetNumQuestLogChoices()

    if numChoices <= 1 then
        return
    end

    local questID = select(8, GetQuestLogTitle(questLogIndex))

    -- options third return only used for handleQuestComplete
    local bestSellOption, bestRatioOption, _ = evaluateQuestChoices(questID, numChoices, nil, GetQuestLogItemLink, GetQuestLogChoiceInfo)

    if addon.settings.profile.enableQuestChoiceRecommendation then
        -- Classic is QuestLogItem, Wrath+ is QuestInfoRewardsFrameQuestInfoItem
        local bestRatioFrame = _G['QuestLogItem' .. bestRatioOption] or
            QuestInfo_GetRewardButton(QuestInfoFrame.rewardsFrame, bestRatioOption)

        if bestRatioFrame then
            questLogRewardChoiceIcons["ratio"]:SetPoint("TOPRIGHT", bestRatioFrame , -1, 1)
            questLogRewardChoiceIcons["ratio"]:SetParent(bestRatioFrame)
            questLogRewardChoiceIcons["ratio"]:Show()
        end
    end

    if addon.settings.profile.enableQuestChoiceGoldRecommendation then
        local bestSellFrame = _G['QuestLogItem' .. bestRatioOption] or
            QuestInfo_GetRewardButton(QuestInfoFrame.rewardsFrame, bestSellOption)

        if bestSellFrame then
            questLogRewardChoiceIcons["value"]:SetPoint("BOTTOMRIGHT", bestSellFrame , -1, 1)
            questLogRewardChoiceIcons["value"]:SetParent(bestSellFrame)
            questLogRewardChoiceIcons["value"]:Show()

            -- No calculated best upgrade, so add recommendation to value as well, only if weights added
            if addon.itemUpgrades and bestRatioOption < 1 then
                questLogRewardChoiceIcons["ratio"]:SetParent(bestSellFrame)
                questLogRewardChoiceIcons["ratio"]:SetPoint("TOPRIGHT", bestSellFrame , -1, 1)
                questLogRewardChoiceIcons["ratio"]:Show()
            end
        end
    end
end

function addon:QuestAutomation(event, arg1, arg2, arg3)
    if not addon.settings.profile.enableQuestAutomation or IsControlKeyDown() then
        return
    end

    if not event then
        if _G.GossipFrame and _G.GossipFrame:IsShown() then
            event = "GOSSIP_SHOW"
        elseif _G.QuestFrameGreetingPanel and
            _G.QuestFrameGreetingPanel:IsShown() then
            event = "QUEST_GREETING"
        elseif _G.QuestFrameProgressPanel and
            _G.QuestFrameProgressPanel:IsShown() then
            event = "QUEST_PROGRESS"
        elseif _G.QuestFrameDetailPanel and _G.QuestFrameDetailPanel:IsShown() then
            event = "QUEST_DETAIL"
        elseif _G.QuestFrameRewardPanel and _G.QuestFrameRewardPanel:IsShown() or
            _G.QuestFrameCompleteButton and
            _G.QuestFrameCompleteButton:IsShown() then
            event = "QUEST_COMPLETE"
        else
            return
        end
    end

    if event == "QUEST_ACCEPT_CONFIRM" and addon.QuestAutoAccept(arg2) then
        ConfirmAcceptQuest()
    elseif event == "QUEST_COMPLETE" then
        handleQuestComplete()

    elseif event == "QUEST_PROGRESS" and IsQuestCompletable() then
        CompleteQuest()
        -- questProgressTimer = GetTime()

    elseif event == "QUEST_DETAIL" then
        local id = GetQuestID()
        if addon.QuestAutoAccept(id) then
            AcceptQuest()
            HideUIPanel(_G.QuestFrame)
        end

    elseif event == "QUEST_GREETING" then
        local nActive = GetNumActiveQuests()
        local nAvailable = GetNumAvailableQuests()

        local title, isComplete
        for i = 1, nActive do
            title, isComplete = GetActiveTitle(i)
            if addon.GetStepQuestReward(title) and isComplete then
                return SelectActiveQuest(i)
            end
        end

        if GossipGetNumOptions() == 0 and nAvailable == 1 and nActive == 0 then
            SelectAvailableQuest(1)
        else
            for i = 1, nAvailable do
                title, isComplete = GetAvailableTitle(i)
                if addon.QuestAutoAccept(title) then
                    return SelectAvailableQuest(i)
                end
            end
        end
    elseif event == "GOSSIP_SHOW" then
        local nActive = GossipGetNumActiveQuests()
        local nAvailable = GossipGetNumAvailableQuests()
        local quests, selectAvailableByQuestID, selectActiveByQuestID,
              missingTurnIn
        if C_GossipInfo.GetActiveQuests then
            quests = C_GossipInfo.GetActiveQuests()
            selectActiveByQuestID = true
        end
        for i = 1, nActive do
            local title, isComplete
            if type(quests) == "table" then
                title = quests[i].questID
                isComplete = quests[i].isComplete
                if not (isComplete or missingTurnIn) and
                    addon.GetStepQuestReward(title) then
                    local objectives = addon.GetQuestObjectives(title)
                    missingTurnIn = objectives and objectives[1].generated and
                                        (selectActiveByQuestID and title or i)
                end
            else
                title, _, _, isComplete = select(i * 6 - 5,
                                                 GossipGetActiveQuests())
            end

            if isComplete and addon.GetStepQuestReward(title) then
                return GossipSelectActiveQuest(
                           selectActiveByQuestID and title or i)
            end
        end

        local availableQuests
        if C_GossipInfo.GetAvailableQuests then
            availableQuests = C_GossipInfo.GetAvailableQuests()
            selectAvailableByQuestID = true
        end
        if GossipGetNumOptions() == 0 and nAvailable == 1 and nActive == 0 and
            not selectAvailableByQuestID then
            return GossipSelectAvailableQuest(
                       selectAvailableByQuestID and availableQuests[1] and
                           availableQuests[1].questID or 1)
        else
            for i = 1, nAvailable do
                local quest
                if type(availableQuests) == "table" then
                    quest = availableQuests[i].questID
                else
                    quest = select(i * 7 - 6, GossipGetAvailableQuests())
                end
                if addon.QuestAutoAccept(quest) then
                    return GossipSelectAvailableQuest(
                               selectAvailableByQuestID and quest or i)
                end
            end
        end
        if missingTurnIn then
            return GossipSelectActiveQuest(missingTurnIn)
        end
    end
end

function addon:CreateMetaDataTable(wipe)
    if wipe or addon.release ~= RXPData.release then
        RXPData.guideMetaData = nil
    end
    local guideMetaData = RXPData.guideMetaData or {}
    RXPData.guideMetaData = guideMetaData
    guideMetaData.dungeonGuides = guideMetaData.dungeonGuides or {}
    guideMetaData.enabledDungeons = guideMetaData.enabledDungeons or {}
    guideMetaData.enabledDungeons.Horde = guideMetaData.enabledDungeons.Horde or {}
    guideMetaData.enabledDungeons.Alliance = guideMetaData.enabledDungeons.Alliance or {}
    guideMetaData.enableGroupQuests = guideMetaData.enableGroupQuests or {}
end

function addon:OnInitialize()
    local importGuidesDefault = {
        profile = {guides = {}, reports = {splits = {}}}
    }

    addon.db = LibStub("AceDB-3.0"):New("RXPDB", importGuidesDefault, 'global')
    RXPData = RXPData or {}
    RXPCData = RXPCData or {}

    RXPCData.questNameCache = RXPCData.questNameCache or {}
    RXPCData.questObjectivesCache = RXPCData.questObjectivesCache or {}
    RXPCData.questObjectivesCache[0] = RXPCData.questObjectivesCache[0] or 0
    addon.CreateMetaDataTable()

    if not RXPData.gameVersion then
        RXPData.gameVersion = gameVersion
    elseif math.floor(gameVersion / 1e4) ~=
        math.floor(RXPData.gameVersion / 1e4) then
        addon.db.profile.guides = {}
        RXPData.gameVersion = gameVersion
    end
    addon.settings:InitializeSettings()

    RXPCData.completedWaypoints = RXPCData.completedWaypoints or {}
    addon.settings.profile.hardcore =
        addon.game == "CLASSIC" and addon.settings.profile.hardcore
    RXPCData.stepSkip = RXPCData.stepSkip or {}
    if not RXPCData.flightPaths or UnitLevel("player") <= 6 then
        RXPCData.flightPaths = {}
    end
    if RXPData.trainGenericSpells == nil then
        RXPData.trainGenericSpells = true
    end

    if _G.RXPOnInitialize then --Used for debugging purposes
        pcall(_G.RXPOnInitialize)
    end

    addon:ImportCustomThemes()
    addon:LoadActiveTheme()
    addon.settings:UpdateMinimapButton()
    addon.settings:SetupMapButton()
    addon.SetupGuideWindow()
    addon.RenderFrame()
    addon.SetupArrow()
    addon:CreateActiveItemFrame()
    addon.comms:Setup()
    addon.targeting:Setup()
    if addon.talents then addon.talents:Setup() end
    if addon.settings.profile.enableTracker then
        addon.tracker:SetupTracker()
    end
    if addon.tips then addon.tips:Setup() end
    if addon.VendorTreasures then addon.VendorTreasures:Setup() end
    if addon.itemUpgrades then
        addon.itemUpgrades:Setup()
    end

    addon.LoadCachedGuides()
    addon.LoadEmbeddedGuides()
    addon.UpdateGuideFontSize()
    addon.isHidden = not addon.settings.profile.showEnabled or addon.settings.profile.hideGuideWindow
    addon.RXPFrame:SetShown(not addon.isHidden)
    addon.RXPFrame:SetScale(addon.settings.profile.windowScale)
    addon.arrowFrame:SetSize(32 * addon.settings.profile.arrowScale,
                             32 * addon.settings.profile.arrowScale)
    addon.arrowFrame.text:SetFont(addon.font,
                                  addon.settings.profile.arrowText, "OUTLINE")
    addon.activeItemFrame:SetScale(addon.settings.profile.activeItemsScale)
end

function addon:OnEnable()
    addon.LoadEmbeddedGuides()
    addon.addonLoaded = true
    ProcessSpells()
    addon.GetProfessionLevel()
    local guide = addon.GetGuideTable(RXPCData.currentGuideGroup,
                                      RXPCData.currentGuideName)
    if not guide and RXPData.autoLoadStartingGuides then
        if addon.defaultGuideList then
            local currentMap = C_Map.GetBestMapForUnit("player")
            for zone, guideName in pairs(addon.defaultGuideList) do
                if currentMap and (currentMap == zone or currentMap == addon.mapId[zone]) then
                    local group, name = string.match(guideName,
                                                     "([^\\]+)%s*\\%s*([^\\]+)")
                    guide = addon.GetGuideTable(group, name)
                end
            end
        end
        guide = guide or addon.defaultGuide
        if addon.game == "TBC" and
            (UnitLevel("player") == 58 and not guide.boost58) then
            guide = nil
        end
    end
    addon:LoadGuide(guide, true)
    if not addon.currentGuide then
        addon.RXPFrame:SetHeight(20)
        addon.RXPFrame.BottomFrame.UpdateFrame()
        addon.noGuide = true
    end
    addon.RXPFrame.GenerateMenuTable()

    self:RegisterEvent("GET_ITEM_INFO_RECEIVED")
    self:RegisterEvent("BAG_UPDATE_DELAYED")
    self:RegisterEvent("PLAYER_REGEN_ENABLED")
    self:RegisterEvent("QUEST_TURNED_IN")
    -- self:RegisterEvent("SKILL_LINES_CHANGED")
    self:RegisterEvent("TRAINER_CLOSED")
    self:RegisterEvent("TAXIMAP_OPENED")
    self:RegisterEvent("PLAYER_LEVEL_UP")
    self:RegisterEvent("TRAINER_SHOW")
    self:RegisterEvent("UNIT_PET")
    self:RegisterEvent("PLAYER_CONTROL_LOST")
    self:RegisterEvent("PLAYER_CONTROL_GAINED")

    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_LEAVING_WORLD")
    self:RegisterEvent("PLAYER_LOGOUT")

    self:RegisterEvent("CALENDAR_UPDATE_EVENT_LIST")
    self:RegisterEvent("ZONE_CHANGED")

    if addon.gameVersion > 90000 then
        self:RegisterEvent("COMPANION_LEARNED")
        self:RegisterEvent("COMPANION_UNLEARNED")
        self:RegisterEvent("COMPANION_UPDATE")
        self:RegisterEvent("NEW_PET_ADDED")
        self:RegisterEvent("TOYS_UPDATED")
    end

    -- self:RegisterEvent("QUEST_LOG_UPDATE")

    questFrame:RegisterEvent("QUEST_COMPLETE")
    questFrame:RegisterEvent("QUEST_PROGRESS")
    questFrame:RegisterEvent("QUEST_ACCEPT_CONFIRM")
    questFrame:RegisterEvent("QUEST_GREETING")
    questFrame:RegisterEvent("GOSSIP_SHOW")
    questFrame:RegisterEvent("QUEST_DETAIL")
    questFrame:RegisterEvent("QUEST_TURNED_IN")

    if C_QuestLog.RequestLoadQuestByID then
        self:RegisterEvent("QUEST_DATA_LOAD_RESULT")
    end

    addon.settings:LoadFramePositions()

    if addon.settings.profile.hideInRaid then
        self:RegisterEvent("GROUP_JOINED", addon.HideInRaid)
        self:RegisterEvent("GROUP_FORMED", addon.HideInRaid)
        self:RegisterEvent("GROUP_LEFT")

        -- Check if reloading in raid
        addon.HideInRaid()
    end

    if addon.game == "WOTLK" then
        local detectXPRateQueued = false
        self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED", function(_, slot)
            if detectXPRateQueued then return end

            -- Abort if not chest/shoulders
            if slot ~= 3 and slot ~= 5 then return end

            detectXPRateQueued = true
            C_Timer.After(3, function()
                addon.settings:DetectXPRate()
                detectXPRateQueued = false
            end)
        end)
    end

    -- Only start update loop after everything initializes and enables
    local updateFrame = CreateFrame("Frame")
    updateFrame:SetScript("OnUpdate", addon.UpdateLoop)
    RXPData.release = addon.release
end

-- Tracks if a player is on a loading screen and pauses the main update loop
-- Some information is not available during zone transitions
function addon:PLAYER_ENTERING_WORLD(_, isInitialLogin)
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE and RXPCData then
        RXPCData.GA = false
    end
    addon.hideArrow = false
    addon.UpdateMap()
    addon.isHidden = addon.settings and
                         addon.settings.profile.hideGuideWindow or
                         not (addon.RXPFrame and addon.RXPFrame:IsShown())

    if isInitialLogin then
        C_Timer.After(4, function()
            addon.settings:DetectXPRate()
            addon.settings:CheckAddonCompatibility()
        end)
    end
    if addon.RXPFrame:IsShown() and WOW_PROJECT_ID == WOW_PROJECT_CLASSIC and
                UnitLevel("player") == 1 and
                (not addon.currentGuide or addon.currentGuide.empty) then
        addon.startHardcoreIntroUI()
    end
end
--addon:LoadGuideTable(addon.defaultGroupHC, addon.defaultGuideHC)
function addon:PLAYER_LEAVING_WORLD() addon.isHidden = true end

-- Sent when the player logs out or the UI is reloaded, just before SavedVariables are saved
-- Note, this is only for profile sharing, frames are preserved normally with layout.xml
function addon:PLAYER_LOGOUT() addon.settings:SaveFramePositions() end

function addon:CALENDAR_UPDATE_EVENT_LIST()
    -- Required by .dmf
    addon.calendarLoaded = true
end

function addon:GET_ITEM_INFO_RECEIVED(_, itemNumber, success)
    if not success then return end

    if addon.itemQueryList[itemNumber] then
        addon.itemQueryList[itemNumber] = nil
        addon.updateStepText = true
    elseif GetTime() - startTime < 15 then
        addon.updateStepText = true
    end
end

function addon:ZONE_CHANGED() addon.UpdateMap() end

function addon:BAG_UPDATE_DELAYED(...) addon.UpdateItemFrame() end

function addon:PLAYER_REGEN_ENABLED(...) addon.UpdateItemFrame() end

function addon:QUEST_TURNED_IN(_, questId, xpReward)
    -- scryer/aldor quest
    if questId == 10551 or questId == 10552 then
        local mapId = addon.mapId['Shattrath City']
        for _, point in pairs(addon.activeWaypoints) do
            if point.zone == mapId then
                return C_Timer.After(1, function()
                    addon.ReloadGuide()
                end)
            end
        end
    end
end

function addon:SKILL_LINES_CHANGED(...) addon.UpdateSkillData() end

function addon:TRAINER_SHOW(...)
    trainerUpdate = GetTime()
    OnTrainer()
    if not addon.trainerFrame then
        addon.trainerFrame = CreateFrame("Frame", "RXPGuidesTrainerFrame",
                                         UIParent)
    end

    addon.trainerFrame:SetScript("OnUpdate", trainerFrameUpdate)
end

function addon:TRAINER_CLOSED(...) addon.trainerFrame:SetScript("OnUpdate", nil) end

function addon:PLAYER_LEVEL_UP(_, level)
    if not addon.currentGuide then return end

    level = level
    local stepn = RXPCData.currentStep
    ProcessSpells()
    -- addon:LoadGuide(addon.currentGuide)
    addon.SetStep(1)
    addon.SetStep(stepn)
end

function addon:UNIT_PET(_, unit)
    if unit ~= "player" then return end
    addon.petFamily = GetPetIcon() or addon.petFamily
end

function addon:QUEST_DATA_LOAD_RESULT(_, questId, success)
    if not success then return end

    addon.requestQuestInfo[questId] = 0
    addon.updateStepText = true
end

function addon:GROUP_LEFT()
    if not addon.settings.profile.hideInRaid then return end

    if not addon.settings.profile.showEnabled then return end

    for _, frame in pairs(addon.enabledFrames) do
        frame:SetShown(frame.IsFeatureEnabled())
    end
end

function addon:COMPANION_LEARNED(...) addon.UpdateItemFrame() end

function addon:COMPANION_UNLEARNED(...) addon.UpdateItemFrame() end

function addon:COMPANION_UPDATE(...) addon.UpdateItemFrame() end

function addon:NEW_PET_ADDED(...) addon.UpdateItemFrame() end

function addon:TOYS_UPDATED(...) addon.UpdateItemFrame() end

function addon.HideInRaid()
    if not addon.settings.profile.hideInRaid then return end

    if not UnitInRaid("player") then return end

    for _, frame in pairs(addon.enabledFrames) do
        if not frame:IsForbidden() then frame:Hide() end
    end
end

questFrame:SetScript("OnEvent", addon.QuestAutomation)

function addon.GetGuideTable(guideGroup, guideName)
    local index = guideGroup and guideName and
        fmt("%s||%s",guideGroup,guideName) or guideGroup or 0
    return addon.guides[index]
end

addon.scheduledTasks = {}

function addon.UpdateScheduledTasks()
    local cTime = GetTime()
    local processTable = {}
    for ref, args in pairs(addon.scheduledTasks) do
        processTable[ref] = args
    end
    for ref, args in pairs(processTable) do
        --print(unpack(args))
        --print(type(ref))
        if type(ref) == "function" then
            if cTime > args[1] then
                local t = args
                --print('u',ref,cTime-0.125,unpack(args))
                addon.scheduledTasks[ref] = nil
                ref(unpack(t))
                return
            end
        elseif type(ref) == "table" then
            if cTime > args then
                addon.scheduledTasks[ref] = nil
                local element = ref.element or ref
                if element and addon.functions[element.tag] then
                    addon.Call(element.tag,addon.functions[element.tag],ref)
                end
                return
            end
        end
    end
end

local tickRate = 0.05

function addon.ScheduleTask(self, ref, ...)
--    print('w',ref)
    local time = type(self) == "number" and self or GetTime() + tickRate * 3
    --print(type(ref))
    if type(ref) == "table" then
        addon.scheduledTasks[ref] = time
    elseif type(ref) == "function" then
        local args = addon.scheduledTasks[ref]
        if args then
            args[1] = time
        elseif not args then
            addon.scheduledTasks[ref] = {time, ...}
        end
    end
end

addon.updateActiveQuest = {}
addon.updateInactiveQuest = {}

local stepCounter = 1
local batchSize = 5
local updateTimer = GetTime()

local updateTick = 0
local skip = 0
local updateError
local errorCount = 0
local event = ""

function addon:UpdateLoop(diff)
    updateTick = updateTick + diff
    if updateError then
        errorCount = errorCount + 1
    end
    if addon.isHidden then
        updateError = false
        --print('hidden')
        return
    elseif errorCount >= 10 then
        addon.lastEvent = event
        tickRate = 10
        errorCount = 0
        updateTick = 0
        updateError = false
        return
    elseif updateTick > (tickRate + rand() / 128) then
        updateError = true
        local guideLoaded
        updateTick = 0
        local activeQuestUpdate = 0
        skip = skip + 1
        event = ""
        tickRate = math.min(0.1,4*GetTickTime())

        if not addon.loadNextStep then
            for ref, func in pairs(addon.updateActiveQuest) do
                addon.Call("updateQuest",func,ref)
                activeQuestUpdate = activeQuestUpdate + 1
                addon.updateActiveQuest[ref] = nil
                -- print('f',ref.element.step.index,math.random())
            end
            if activeQuestUpdate > 0 then event = event .. "/activeQ" end
        end
        if addon.nextStep then
            skip = 1
            addon.SetStep(addon.nextStep)
            addon.questAutoAccept = true
            addon.updateBottomFrame = true
            addon.nextStep = false
        elseif addon.loadNextStep then
            event = event .. "/loadNext"
            addon.loadNextStep = false
            addon.SetStep(RXPCData.currentStep + 1)
            addon.questAutoAccept = true
            skip = 1
            addon.updateBottomFrame = true
        elseif activeQuestUpdate == 0 then
            if addon.updateSteps then
                event = event .. "/stepComplete"
                addon.UpdateStepCompletion()
            elseif addon.updateStepText and addon.currentGuide and skip % 2 == 0 then
                event = event .. "/textsingle"
                addon.updateStepText = false
                local updateText
                local steps = addon.currentGuide.steps
                local update = {}
                for n in pairs(addon.stepUpdateList) do
                    tinsert(update,n)
                end
                for _,n in pairs(update) do
                    if steps[n] then
                        if not updateText and steps[n].active then
                            updateText = true
                        end
                        addon.RXPFrame.BottomFrame.UpdateFrame(nil, n)
                        if not addon.updateStepText then
                            addon.stepUpdateList[n] = nil
                        end
                    end
                end
                if updateText or addon.updateTipWindow then
                    addon.updateTipWindow = false
                    addon.RXPFrame.CurrentStepFrame.UpdateText()
                end
            elseif addon.updateBottomFrame then
                event = event .. "/bottomFrame"
                errorCount = 0
                addon.RXPFrame.BottomFrame.UpdateFrame()
                addon.RXPFrame.SetStepFrameAnchor()
                updateError = false
                skip = 1
                return
            elseif skip % 2 == 1 and next(addon.guideCache) then
                event = event .. "/cache"
                local length = 0
                for _,guide in pairs(addon.guides) do
                    if not guide.steps then
                        addon:FetchGuide(guide)
                        guideLoaded = true
                        length = length + (tonumber(guide.length) or 0)
                        --print('f',not guide.steps and guide.name)
                        if length > 45000 or GetFramerate() < 60 then
                            break
                        end
                    end
                end
                if not next(addon.guideCache) and RXPData.guideMetaData.enabledDungeons then
                    RXPData.guideMetaData.enabledDungeons[addon.player.faction] =
                        addon.dungeons or
                        RXPData.guideMetaData.enabledDungeons[addon.player.faction]
                end
            end
        end

        if skip % 4 == 2 then
            if addon.questAutoAccept then
                addon.questAutoAccept = false
                event = event .. "/auto"
                addon.QuestAutomation()
            end
            if addon.updateMap then
                event = event .. "/map"
                addon.UpdateMap(true)
            end
        elseif skip % 4 == 0 then
            event = event .. "/goto"
            addon.UpdateGotoSteps()
            -- event = event .. "/updateGoto"
        elseif skip % 4 == 3 and not addon.ProcessMessageQueue() then
            event = event .. "/task"
            addon.UpdateScheduledTasks()
            addon.ClearQuestCache()
        elseif skip % 32 == 29 then
            event = event .. "/toptext"
            addon.RXPFrame.CurrentStepFrame.UpdateText()
        elseif skip % 16 == 1 then
            event = event .. "/inactiveQ"
            activeQuestUpdate = 0
            local deletedIndexes = {}
            for i, ref in ipairs(addon.updateInactiveQuest) do
                activeQuestUpdate = activeQuestUpdate + 1
                if activeQuestUpdate > 3 then
                    break
                else
                    -- print('ok',ref.element.step.index,ref.element.requestFromServer)
                    addon.UpdateQuestCompletionData(ref)
                    tinsert(deletedIndexes, i)
                end
            end
            for i = #deletedIndexes, 1, -1 do
                local element = deletedIndexes[i]
                table.remove(addon.updateInactiveQuest, element)
                -- print('r'..element)
            end
        elseif not guideLoaded and addon.currentGuide then
            event = event .. "/istep"
            local max = #addon.currentGuide.steps
            local offset = RXPCData.currentStep + 1
            if stepCounter == offset then
                stepCounter = stepCounter + 8
            end

            addon.RXPFrame.BottomFrame.UpdateFrame(nil,offset + stepCounter % 8)

            for n = stepCounter,stepCounter + batchSize - 1 do
                addon.RXPFrame.BottomFrame.UpdateFrame(nil,n)
            end
            stepCounter = stepCounter + batchSize
            if stepCounter > max then
                local time = GetTime()
                local tdiff = time - updateTimer
                stepCounter = 1
                --print(tdiff,batchSize)
                if tdiff > 10 then
                    batchSize = math.min(batchSize + 1*(math.ceil(tdiff/8)),10)
                elseif batchSize > 2 then
                    batchSize = batchSize - 1
                end
                updateTimer = time
                skip = skip % 4096
            end
        end
        updateError = false
    end
end

function addon.HardcoreToggle()
    local guide = addon.currentGuide
    local hc = addon.settings.profile.hardcore

    if addon.game == "CLASSIC" then
        if not (guide and
                (guide.hardcore and hc or guide.softcore and not hc)) then
            addon.settings.profile.hardcore = not hc
        end
        if hc ~= addon.settings.profile.hardcore then
            addon.RenderFrame()
        end
    end
end

function addon.GAToggle()
    if RXPCData and addon.farmGuides > 0 then
        RXPCData.GA = not RXPCData.GA
        addon.RenderFrame()
    end
end

addon.stepLogic = {}

function addon.stepLogic.AldorScryerCheck(faction)
    if addon.game == "CLASSIC" then return true end
    local _, _, _, _, _, aldorRep = GetFactionInfoByID(932)
    local _, _, _, _, _, scryerRep = GetFactionInfoByID(934)

    if aldorRep and scryerRep then
        if type(faction) == "table" then
            if faction.aldor then
                faction = "Aldor"
            elseif faction.scryer then
                faction = "Scryer"
            end
        end
        if faction == "Aldor" then
            return (aldorRep > scryerRep)
        elseif faction == "Scryer" then
            return (aldorRep < scryerRep)
        end
    end
    return true
end

function addon.stepLogic.PhaseCheck(phase)

    if type(phase) == "table" then phase = phase.phase end

    local currentPhase = addon.settings.profile.phase or 6

    if phase and currentPhase then
        local pmin, pmax
        pmin, pmax = phase:match("(%d+)%-(%d+)")
        if pmax then
            pmin = tonumber(pmin)
            pmax = tonumber(pmax)
        else
            pmin = tonumber(phase)
            pmax = 0xffff
        end
        if pmin and currentPhase >= pmin and currentPhase <= pmax then
            return true
        else
            return false
        end
    end

    return true
end

function addon.stepLogic.DailyCheck(step)
    return not (step.daily and RXPCData.skipDailies)
end

function addon.IsStepShown(step,...)
    local isShown = true
    local ignoreEntry = {}
    for _,entry in pairs({...}) do
        ignoreEntry[entry] = true
    end
    for name,check in pairs(addon.stepLogic) do
        if not ignoreEntry[name] then
            isShown = isShown and check(step)
        end
    end
    return isShown
end

function addon.stepLogic.GroupCheck(step)
    if (not addon.settings.profile.enableGroupQuests and step.group) or
        (addon.settings.profile.enableGroupQuests and step.solo) then
        return false
    end
    return true
end

function addon.stepLogic.AHCheck(step)
    if (not addon.settings.profile.soloSelfFound and step.ssf) or
        (addon.settings.profile.soloSelfFound and step.ah) then
        return false
    end
    return true
end

function addon.stepLogic.SeasonCheck(step)
    if addon.settings.profile.SoM and step.era or step.som and
        not addon.settings.profile.SoM or addon.settings.profile.SoM and
        addon.settings.profile.phase > 2 and step["era/som"] then
        return false
    end
    return true
end

function addon.stepLogic.HardcoreCheck(step)
    local hc = addon.settings.profile.hardcore
    local hcserver = C_GameRules and C_GameRules.IsHardcoreActive()
    if step.softcoreserver and hcserver or step.hardcoreserver and not hcserver then return false end
    if step.softcore and hc or step.hardcore and not hc then return false end
    return true
end

function addon.stepLogic.XpRateCheck(step)
    if step.xprate then
        local xpmin, xpmax = 1, 0xfff

        step.xprate:gsub("^([<>]?)%s*(%d+%.?%d*)%-?(%d*%.?%d*)",
                         function(op, arg1, arg2)
            if op == "<" then
                xpmin = 0
                xpmax = tonumber(arg1) - 1e-4
            elseif op == ">" then
                xpmin = tonumber(arg1) + 1e-4
                xpmax = 0xfff
            else
                xpmin = tonumber(arg1) or xpmin
                xpmax = tonumber(arg2) or 0xfff
            end
        end)

        if addon.settings.profile.xprate < xpmin or
            addon.settings.profile.xprate > xpmax then return false end
    end

    return true
end

function addon.IsFreshAccount()
    if C_PlayerInfo and C_PlayerInfo.CanPlayerEnterChromieTime then
        local manualOverride = addon.settings.profile.chromieTime
        if not manualOverride or manualOverride == "auto" then
            return not C_PlayerInfo.CanPlayerEnterChromieTime()
        elseif manualOverride == "disabled" then
            return true
        end
    end
end

function addon.stepLogic.FreshAccountCheck(step)
    local level = UnitLevel("player")
    local maxLevelFresh = step.fresh and tonumber(step.fresh) or 1000
    local maxLevelVeteran = step.veteran and tonumber(step.veteran) or 1000
    local fresh = addon.IsFreshAccount()

    if not (step.fresh or step.veteran) then
        return true
    elseif (step.fresh and level <= maxLevelFresh) and fresh then
        return true
    elseif (step.veteran and level <= maxLevelVeteran) and not fresh then
        return true
    end

    return false
end

function addon.stepLogic.LevelCheck(step)
    if not addon.settings.profile.enableXpStepSkipping then return true end

    local level = UnitLevel("player")
    local maxLevel = tonumber(step.maxlevel) or 1000
    if level <= maxLevel then return true end
end

function addon.stepLogic.DungeonCheck(step)
    local dungeon = step.dungeon
    local dskip = step.dungeonskip
    --print(dungeon,dskip)
    if dskip and addon.settings.profile.dungeons[dskip] then
        return false
    elseif dungeon and dungeon ~= dskip and addon.settings.profile.dungeons[dungeon] then
        return true
    elseif not dungeon then
        return true
    end
end

RXP = addon -- debug purposes
