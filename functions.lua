local addonName, addon = ...

local localizedClass, class = UnitClass("player")
local gameVersion = select(4, GetBuildInfo())
local fmt, tinsert = string.format,tinsert
local LoadAddOn = C_AddOns and C_AddOns.LoadAddOn or _G.LoadAddOn
local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or _G.IsAddOnLoaded
local GetItemInfo = C_Item and C_Item.GetItemInfo or _G.GetItemInfo
local GetSpellTexture = C_Spell and C_Spell.GetSpellTexture or _G.GetSpellTexture
local GetSpellSubtext = C_Spell and C_Spell.GetSpellSubtext or _G.GetSpellSubtext
local IsCurrentSpell = C_Spell and C_Spell.IsCurrentSpell or _G.IsCurrentSpell
local IsSpellKnown = C_Spell and C_Spell.IsSpellKnown or _G.IsSpellKnown
local IsPlayerSpell = C_Spell and C_Spell.IsPlayerSpell or _G.IsPlayerSpell
local GetSpellInfo = C_Spell and C_Spell.GetSpellInfo and addon.GetSpellInfo or _G.GetSpellInfo

-- start, duration, enabled, modRate = GetSpellCooldown(spell)
local GetSpellCooldown = _G.GetSpellCooldown or function(spellIdentifier)
    if C_Spell and C_Spell.GetSpellCooldown then
        local info = C_Spell.GetSpellCooldown(spellIdentifier)
        return info.startTime, info.start, info.duration, info.enabled, info.modRate
    end
end

addon.GetFactionInfoByID = _G.GetFactionInfoByID or function(factionID)
    local name, description, standingID, barMin, barMax, barValue

    local factionData = C_Reputation.GetFactionDataByID(factionID);
    name = factionData.name
    standingID = factionData.reaction
    barValue = factionData.currentStanding
    barMin = factionData.currentReactionThreshold
    barMax = factionData.nextReactionThreshold

    return name, description, standingID, barMin, barMax, barValue
end

if not (UnitAura and UnitBuff and UnitDebuff) then
    UnitAura = function(unitToken, index, filter)
        local auraData = C_UnitAuras.GetAuraDataByIndex(unitToken, index, filter);
        if not auraData then
            return nil;
        end

        return AuraUtil.UnpackAuraData(auraData);
    end
    UnitBuff = function(unitToken, index, filter)
        local auraData = C_UnitAuras.GetBuffDataByIndex(unitToken, index, filter);
        if not auraData then
            return nil;
        end

        return AuraUtil.UnpackAuraData(auraData);
    end
    UnitDebuff = function(unitToken, index, filter)
        local auraData = C_UnitAuras.GetDebuffDataByIndex(unitToken, index, filter);
        if not auraData then
            return nil;
        end

        return AuraUtil.UnpackAuraData(auraData);
    end
    addon.UnitBuff = UnitBuff
end

local GetItemCount = C_Item and C_Item.GetItemCount or _G.GetItemCount

local function LoremasterEnabled()
    local loremaster
    if addon.gameVersion < 50000 then
            loremaster = addon.game == "WOTLK" and addon.settings.profile.northrendLM or
                    addon.game == "CATA" and addon.settings.profile.loremasterMode
    elseif addon.gameVersion < 60000 then
        loremaster = addon.settings.profile.loremasterMode or UnitLevel('player') == addon.player.maxlevel
    elseif addon.gameVersion < 50000 then
        loremaster = addon.settings.profile.loremasterMode
    end
    return loremaster
end

--local RXPGuides = addon.RXPGuides
local L = addon.locale.Get
addon.functions.__index = addon.functions
addon.separators = {}
local events = {}
addon.stepUpdateList = {}
addon.functions.events = events
events.collect = {"BAG_UPDATE_DELAYED", "QUEST_LOG_UPDATE","MERCHANT_SHOW"}
events.destroy = events.collect
events.buy = events.collect
events.accept = {"QUEST_ACCEPTED", "QUEST_TURNED_IN", "QUEST_REMOVED"}
events.turnin = {"QUEST_TURNED_IN","QUEST_LOG_UPDATE"}
if C_EventUtils and C_EventUtils.IsEventValid("STOP_MOVIE") then
    events.complete = {"QUEST_LOG_UPDATE", "CINEMATIC_STOP", "STOP_MOVIE"}
else
    events.complete = {"QUEST_LOG_UPDATE", "CINEMATIC_STOP"}
end
events.fp = {"UI_INFO_MESSAGE", "UI_ERROR_MESSAGE", "TAXIMAP_OPENED", "GOSSIP_SHOW", "TAXIMAP_CLOSED"}
events.hs = "UNIT_SPELLCAST_SUCCEEDED"
events.home = {"HEARTHSTONE_BOUND","CONFIRM_BINDER","GOSSIP_SHOW"}
events.bindlocation = events.home
events.fly = {"PLAYER_CONTROL_LOST", "TAXIMAP_OPENED", "ZONE_CHANGED", "GOSSIP_SHOW"}
events.deathskip = {"CONFIRM_XP_LOSS","GOSSIP_SHOW"}
events.xp = {"PLAYER_XP_UPDATE", "PLAYER_LEVEL_UP"}
events.reputation = "UPDATE_FACTION"
events.vendor = {"MERCHANT_SHOW", "MERCHANT_CLOSED"}
events.trainer = {"TRAINER_SHOW", "TRAINER_CLOSED"}
events.stable = {"PET_STABLE_SHOW", "PET_STABLE_CLOSED"}
events.tame = {"UNIT_SPELLCAST_SUCCEEDED", "UNIT_SPELLCAST_START"}
events.money = "PLAYER_MONEY"
events.train = {
    "TRAINER_SHOW", "CHAT_MSG_SYSTEM", "SKILL_LINES_CHANGED", "TRAINER_UPDATE"
}
events.istrained = events.train
events.spellmissing = events.train
local zoneEvents = {"ZONE_CHANGED_NEW_AREA","ZONE_CHANGED","NEW_WMO_CHUNK","PLAYER_ENTERING_WORLD"}
events.zone = zoneEvents
events.zoneskip = zoneEvents
events.subzone = zoneEvents
events.subzoneskip = zoneEvents

if C_EventUtils and C_EventUtils.IsEventValid("ZONE_CHANGED_INDOORS") then
   tinsert(zoneEvents,"ZONE_CHANGED_INDOORS")
end
events.bankdeposit = {"BANKFRAME_OPENED", "BAG_UPDATE_DELAYED"}
events.skipgossip = {"GOSSIP_SHOW", "GOSSIP_CLOSED", "GOSSIP_CONFIRM_CANCEL", "GOSSIP_CONFIRM"}
events.gossip = {"GOSSIP_SHOW", "PLAYER_INTERACTION_MANAGER_FRAME_HIDE"}
events.isQuestOffered = events.gossip
events.gossipoption = events.skipgossip
events.skipgossipid = "GOSSIP_SHOW"
events.vehicle = {"UNIT_ENTERING_VEHICLE", "VEHICLE_UPDATE", "UNIT_EXITING_VEHICLE"}
events.exitvehicle = events.vehicle
events.skill = {"SKILL_LINES_CHANGED", "LEARNED_SPELL_IN_TAB"}
events.emote = "PLAYER_TARGET_CHANGED"
events.collectmount = {"COMPANION_LEARNED", "COMPANION_UNLEARNED", "COMPANION_UPDATE", "NEW_PET_ADDED"}
events.collecttoy = "TOYS_UPDATED"
events.collectpet = {"COMPANION_LEARNED", "COMPANION_UNLEARNED", "COMPANION_UPDATE", "NEW_PET_ADDED"}
events.tradeskill = events.train
events.cooldown = "SPELL_UPDATE_COOLDOWN"
events.mob = {"UNIT_TARGET","QUEST_TURNED_IN","QUEST_ACCEPTED"}
events.unitscan = events.mob
events.target = events.mob

events.bankwithdraw = events.bankdeposit
events.abandon = events.complete
--[[
events.isQuestComplete = events.complete
events.isOnQuest = events.complete
events.isQuestTurnedIn = events.complete
events.isQuestAvailable = events.isQuestTurnedIn
]]
events.cast = events.hs
events.blastedLands = events.collect
events.daily = events.accept
events.dailyturnin = events.turnin
events.acceptmultiple = events.accept
events.dailyturninmultiple = events.turnin

local function GetIcon(path,index,size)
    local coords = _G.GetPOITextureCoords or C_Minimap.GetPOITextureCoords
    local x1, x2, y1, y2 = coords(index)
    return format("|T%s:0:0:0:0:%d:%d:%d:%d:%d:%d|t", path, size, size, x1*size, x2*size, y1*size, y2*size)
end

addon.GetIcon = GetIcon

addon.icons = {
    accept = "|TInterface/GossipFrame/AvailableQuestIcon:0|t",
    daily = "|TInterface/GossipFrame/DailyQuestIcon:0|t",
    dailyturnin = "|TInterface/GossipFrame/DailyActiveQuestIcon:0|t",
    turnin = "|TInterface/GossipFrame/ActiveQuestIcon:0|t",
    collect = "|TInterface/GossipFrame/VendorGossipIcon:0|t",
    equip = "|TInterface/GossipFrame/VendorGossipIcon:0|t",
    combat = "|TInterface/GossipFrame/BattleMasterGossipIcon:0|t",
    complete = "|TInterface/GossipFrame/HealerGossipIcon:0|t",
    vendor = "|TInterface/GossipFrame/BankerGossipIcon:0|t",
    reputation = "|TInterface/GossipFrame/WorkOrderGossipIcon:0|t",
    fly = "|TInterface/GossipFrame/TaxiGossipIcon:0|t",
    fp = "|TInterface/AddOns/" .. addonName .. "/Textures/fp:0|t", --TODO themes, load issue
    gossip = "|TInterface/GossipFrame/GossipGossipIcon:0|t",
    hs = "|TInterface/MINIMAP/TRACKING/Innkeeper:0|t",
    trainer = "|TInterface/GossipFrame/TrainerGossipIcon:0|t",
    train = "|TInterface/GossipFrame/TrainerGossipIcon:0|t",
    arrow = "|TInterface/MINIMAP/MinimapArrow:0|t",
    marker = "|TInterface/WORLDSTATEFRAME/ColumnIcon-FlagCapture2:0|t",
    xp = "|TInterface/PETBATTLES/BattleBar-AbilityBadge-Strong-Small:0|t",
    stable = "|TInterface/MINIMAP/TRACKING/StableMaster:0|t",
    tame = "|TInterface/ICONS/Ability_Hunter_BeastTaming:0|t",
    abandon = "|TInterface/GossipFrame/IncompleteQuestIcon:0|t",
    link = "|TInterface/FriendsFrame/UI-FriendsFrame-Link:0|t",
    error = "|TInterface/Buttons/UI-GroupLoot-Pass-Up:0|t",
    clock = "|TInterface/ICONS/INV_Misc_PocketWatch_02:0|t",
    engrave = "|T134419:0|t",
}

if addon.gameVersion > 50000 then
    addon.icons["goto"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:63:72:0:4|t"
    addon.icons["home"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:45:54:0:4|t"
    addon.icons["deathskip"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:72:81:0:4|t"
elseif addon.gameVersion > 30000 then
    addon.icons["goto"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:63:72:0:9|t"
    addon.icons["home"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:45:54:0:9|t"
    addon.icons["deathskip"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:72:81:0:9|t"
else
    addon.icons["goto"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:96:112:0:16|t"
    addon.icons["home"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:64:80:0:16|t"
    addon.icons["deathskip"] = "|TInterface/MINIMAP/POIICONS:0:0:0:0:128:128:112:128:0:16|t"
end

--GetIcon("Interface/MINIMAP/POIICONS",5,128)

addon.icons.groundgoto = addon.icons["goto"]
addon.icons.flygoto = addon.icons["goto"]

addon.icons.acceptmultiple = addon.icons.accept
addon.icons.turninmultiple = addon.icons.turnin
addon.icons.xpto60 = addon.icons.xp

function addon.error(text,arg1)
    if type(text) ~= "string" then
        text = ""
    end
    if not arg1 then
        print(text)--ok
    else
        print(fmt(L("Error parsing guide") .. " %s: %s\n%s" ,addon.currentGuideName,arg1,text))
    end
end

local _G = _G

local GetNumQuests = C_QuestLog.GetNumQuestLogEntries or
                         _G.GetNumQuestLogEntries
local GetQuestLogTitle = _G.GetQuestLogTitle
local GetNumDayEvents = _G.C_Calendar and _G.C_Calendar.GetNumDayEvents
local GetDayEvent = _G.C_Calendar and _G.C_Calendar.GetDayEvent
local GetCurrentCalendarTime = _G.C_DateAndTime.GetCurrentCalendarTime
--local OpenCalendar = _G.C_Calendar and _G.C_Calendar.OpenCalendar
local GossipSelectOption = _G.SelectGossipOption
local GossipGetOptions = C_GossipInfo and C_GossipInfo.GetOptions or _G.GetGossipOptions
local PickupContainerItem = C_Container and C_Container.PickupContainerItem or _G.PickupContainerItem
local GetContainerNumFreeSlots =  C_Container and C_Container.GetContainerNumFreeSlots or _G.GetContainerNumFreeSlots
local GetContainerNumSlots =  C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID
local GetContainerItemInfo = C_Container and C_Container.GetContainerItemInfo or _G.GetContainerItemInfo
local GetItemCooldown = addon.GetItemCooldown

addon.recentTurnIn = {}
addon.recentAccept = {}

function addon.ExpandQuestHeaders()
    for i = 1, GetNumQuests() do
        local isCollapsed
        if GetQuestLogTitle then
            _, _, _, _, isCollapsed = GetQuestLogTitle(i)
        else
            local qInfo = C_QuestLog.GetInfo(i)
            isCollapsed = qInfo and qInfo.isCollapsed
        end
        if isCollapsed then
            _G.ExpandQuestHeader(0)
            return
        end
    end
end

if C_GossipInfo and C_GossipInfo.SelectOptionByIndex then
    GossipSelectOption = function(index)
        local gossipOptions = C_GossipInfo.GetOptions()

        if not gossipOptions or not gossipOptions[index] then
            return
        end

        local gossipOptionID = gossipOptions[index].gossipOptionID
        if gossipOptionID then
            C_GossipInfo.SelectOption(gossipOptionID,"",true)
            return
        end

        local orderIndex = gossipOptions[index].orderIndex
        if orderIndex then
            C_GossipInfo.SelectOptionByIndex(orderIndex,"",true)
        end
    end
end

local IsTurnedIn = C_QuestLog.IsQuestFlaggedCompleted or
                    _G.IsQuestFlaggedCompleted or
                        function(id) return _G.GetQuestsCompleted()[id] end

local IsQuestTurnedIn = function(id,accountWide)
    if not id then return end

    local recentTurnIn = addon.recentTurnIn[id]
    local isQuestTurnedIn
    if accountWide and C_QuestLog.IsQuestFlaggedCompletedOnAccount then
        isQuestTurnedIn = C_QuestLog.IsQuestFlaggedCompletedOnAccount(id)
    else
        isQuestTurnedIn = IsTurnedIn(id)
    end
    if isQuestTurnedIn then
        addon.recentTurnIn[id] = nil
        return true
    elseif recentTurnIn and GetTime() - recentTurnIn < 2 then
        return true
    end
    --if recent then print(7,recent,id) end
end
--QT = IsQuestTurnedIn

function addon.IsQuestComplete(id)
    if not id then return end

    if C_QuestLog.IsComplete then
        return C_QuestLog.IsComplete(id)
    else
        addon.ExpandQuestHeaders()
        for i = 1, GetNumQuests() do
            local _, _, _, _, _,
                  isComplete, _, questID = GetQuestLogTitle(i);
            if questID == id then
                return isComplete
            end
        end
    end
end
local IsQuestComplete = addon.IsQuestComplete

local function IsOnQuest(id)
    local quest = C_QuestLog.IsOnQuest(id)
    local recent = addon.recentAccept[id]
    if quest then
        addon.recentAccept[id] = nil
    elseif recent and GetTime()-recent < 2 then
        return true
    end
    return quest
end

local function GetLogIndexForQuestID(questID)
    if C_QuestLog.GetLogIndexForQuestID then
        return C_QuestLog.GetLogIndexForQuestID(questID),C_QuestLog.IsPushableQuest(questID)
    else
        addon.ExpandQuestHeaders()
        for i = 1, GetNumQuests() do
            local _, _, _, _, _, _, _, id = GetQuestLogTitle(i);
            if questID == id then
                _G.SelectQuestLogEntry(i)
                return i,_G.GetQuestLogPushable()
            end
        end
    end
end

addon.IsOnQuest = IsOnQuest
addon.IsQuestTurnedIn = IsQuestTurnedIn
addon.IsQuestComplete = IsQuestComplete

local function GetQuestId(src,guide)
    if type(guide) ~= "table" then
        guide = addon.currentGuide or addon.guide
    end
    if not (src and guide) then
        return src
    end
    guide = guide.questConversion
    if guide and guide[src] then
        --print(1,src,guide[src])
        return guide[src]
    elseif addon.questConversion[src] then
        --print(1,src,addon.questConversion[src])
        return addon.questConversion[src]
    else
        return src
    end
end
addon.GetQuestId = GetQuestId


local timer = GetTime()
local nrequests = 0
local requests = {}
addon.requestQuestInfo = requests

local db
if _G.QuestieLoader then db = _G.QuestieLoader:ImportModule("QuestieDB") end
addon.questieDB = db

function addon.FormatNumber(number, precision)
    if type(number) ~= "number" then
        return "-1"
    end
    precision = precision or 0
    local integer = math.floor(number)
    local decimal = math.floor((number - integer) * 10 ^ precision + 0.5)
    if decimal > 0 then
        decimal = '.' .. tostring(decimal)
    else
        decimal = ""
    end
    integer = tostring(integer)
    local i = #integer % 3
    if i == 0 then i = 3 end

    local suffix = string.sub(integer, i + 1)
    integer = string.sub(integer, 1, i)

    for n in string.gmatch(suffix, "%d%d%d") do integer = integer .. "," .. n end
    return integer .. decimal
end

function addon.Round(number, precision)
    if not number then return end

    precision = precision and 10 ^ precision or 1
    local integer = math.floor(number)
    return integer + math.floor((number - integer) * precision + 0.5)/precision
end

function addon.ClearQuestCache()
    local questObjectivesCache = RXPCData.questObjectivesCache
    if not addon.currentGuide or questObjectivesCache[0] < 100 then
        return
    end
    local questNameCache = RXPCData.questNameCache
    local guideQuests = {}
    for i,step in pairs(addon.currentGuide.steps) do
        for j,element in pairs(step.elements or {}) do
            if element.tag == "complete" then
                local id = element.questId
                guideQuests[id] = bit.bor(guideQuests[id] or 0,0x1)
            elseif element.tag == "accept" then
                local id = element.questId
                guideQuests[id] = bit.bor(guideQuests[id] or 0,0x2)
            end
        end
    end

    for id in pairs(questObjectivesCache) do
        if not (guideQuests[id] and guideQuests[id] % 2 == 1 or id == 0) then
            questObjectivesCache[id] = nil
            questObjectivesCache[0] = questObjectivesCache[0] - 1
        end
    end
    for id in pairs(questNameCache) do
        if not (guideQuests[id] and guideQuests[id] > 1) then
            questNameCache[id] = nil
        end
    end
    return true
end

local function CacheQuest(id,data,remove)
    local questObjectivesCache = RXPCData.questObjectivesCache
    if not id or id == 0 then
        return
    elseif data and not (remove or questObjectivesCache[id]) then
        data.finished = false
        questObjectivesCache[0] = questObjectivesCache[0] + 1
        questObjectivesCache[id] = data
    elseif remove and questObjectivesCache[id] then
        questObjectivesCache[0] = questObjectivesCache[0] - 1
        questObjectivesCache[id] = nil
    end
end
local REQUEST_TIMER = 1.5
local N_REQUESTS = 3

local function RequestQuestData(id)
    local questObjectivesCache = RXPCData.questObjectivesCache
    local ctime = GetTime()
    if ctime - timer > REQUEST_TIMER then
        timer = ctime
        nrequests = 0
    end

    if nrequests < N_REQUESTS or requests[id] == 0 then
        local isLoaded

        --[[if C_QuestLog.RequestLoadQuestByID and not requests[id] then
            C_QuestLog.RequestLoadQuestByID(id)
            requests[id] = GetTime()
        end]]

        if (not requests[id] or ctime - requests[id] > 3) then
            isLoaded = HaveQuestData(id)
        end

        if isLoaded then
            requests[id] = 0
            -- print(id,GetTime()-base)
            local questInfo = C_QuestLog.GetQuestObjectives(id)
            local incomplete
            if (#questInfo == 1 and
                (questInfo[1].type == "" or not questInfo[1].type)) or
                #questInfo == 0 then
                questInfo[1] = {
                    text = L("Objective Complete"),
                    type = "event",
                    numRequired = 1,
                    numFulfilled = 0,
                    finished = false,
                    generated = true,
                }
            else
                for _,obj in pairs(questInfo) do
                    if obj.type == "progressbar" and not obj.finished then
                        obj.numFulfilled = 0
                        obj.numRequired = 100
                    end
                    if not obj.text or obj.text:sub(1,1) == " " then
                        incomplete = true
                        --print(id,_)
                    end
                end
            end
            if incomplete then
                CacheQuest(id,questInfo,true)
            else
                CacheQuest(id,questInfo)
            end
            return questInfo
        elseif not requests[id] then
            requests[id] = GetTime()
        elseif ctime - requests[id] <= 3 then
            return questObjectivesCache[id]
        else
            requests[id] = GetTime()
        end
        -- print(id,GetTime()-base)
        nrequests = nrequests + 1
    end
    return questObjectivesCache[id]
end

function addon.GetQuestName(id)
    local questNameCache = RXPCData.questNameCache
    if type(id) ~= "number" then return end
    id = GetQuestId(id)
    local name
    if db and type(db.QueryQuest) == "function" and type(db.GetQuest) ==
        "function" then
        local quest = db:GetQuest(id)
        if quest and quest.name then return quest.name end
    end

    if IsOnQuest(id) then
        if GetQuestLogTitle then
            addon.ExpandQuestHeaders()
            for i = 1, GetNumQuests() do
                local questLogTitleText, _, _, _, _, _, _, questID =
                    GetQuestLogTitle(i);
                if questID == id then
                    name = questLogTitleText
                    if name then questNameCache[id] = name end
                    return name
                end
            end
        else
            local name = C_QuestLog.GetTitleForQuestID(id)
            if name then questNameCache[id] = name end
            return name
        end
    else
        local ctime = GetTime()
        if ctime - timer > REQUEST_TIMER then
            timer = ctime
            nrequests = 0
        end

        if nrequests < N_REQUESTS or requests[id] == 0 then
            local isLoaded

            --[[if C_QuestLog.RequestLoadQuestByID and not requests[id] then
                C_QuestLog.RequestLoadQuestByID(id)
                requests[id] = GetTime()
            end]]

            if (not requests[id] or ctime - requests[id] > 3) then
                isLoaded = HaveQuestData(id)
            end

            if isLoaded then
                requests[id] = 0
                if C_QuestLog.GetQuestInfo then
                    name = C_QuestLog.GetQuestInfo(id)
                    if name then questNameCache[id] = name end
                    return questNameCache[id]
                else
                    name = C_QuestLog.GetTitleForQuestID(id)
                    if name then questNameCache[id] = name end
                    return questNameCache[id]
                end
            elseif not requests[id] then
                requests[id] = GetTime()
            elseif ctime - requests[id] <= 3 then
                return questNameCache[id]
            else
                requests[id] = GetTime()
            end
            nrequests = nrequests + 1

        end
        return questNameCache[id]
    end
end

function addon.GetQuestObjectives(id, step, useCache)
    id = GetQuestId(id)
    if not id then return end
    local stepdiff = step and math.abs(RXPCData.currentStep - step) or 0

    local questObjectivesCache = RXPCData.questObjectivesCache
    local err = false
    if IsOnQuest(id) then
        local questInfo = {}
        local questFound
        addon.ExpandQuestHeaders()
        for i = 1, GetNumQuests() do
            local isComplete, questID
            if GetQuestLogTitle then
                _, _, _, _, _, isComplete, _, questID = GetQuestLogTitle(i);
            else
                local qInfo = C_QuestLog.GetInfo(i) or {}
                questID = qInfo.questID
                if questID then
                    isComplete = C_QuestLog.IsComplete(questID)
                end
            end
            local nObj = 0
            if questID == id then
                questFound = true
                for j = 1, GetNumQuestLeaderBoards(i) do
                    local description, objectiveType, isCompleted =
                        GetQuestLogLeaderBoard(j, i)
                    if description then
                        nObj = nObj + 1
                        local fulfilled, required
                        if objectiveType == "progressbar" then
                            fulfilled = GetQuestProgressBarPercent(id) or 0
                            required = 100
                        else
                            fulfilled, required = description:match(
                                                        "(%d+)/(%d+)")
                            if fulfilled then
                                required = tonumber(required)
                                fulfilled = tonumber(fulfilled)
                            else
                                required = 1
                                if isCompleted then
                                    fulfilled = 1
                                else
                                    fulfilled = 0
                                end
                            end
                        end
                        questInfo[j] = {
                            text = description,
                            type = objectiveType,
                            numRequired = required,
                            numFulfilled = fulfilled,
                            finished = isCompleted
                        }
                    else
                        err = true
                        break
                    end
                end
                if (err or nObj == 0) and GetNumQuestLeaderBoards(i) <= 1 then
                    local fulfilled = 0
                    if isComplete then fulfilled = 1 end
                    questInfo[1] = {
                        text = L("Objective Complete"),
                        type = "event",
                        numRequired = 1,
                        numFulfilled = fulfilled,
                        finished = isComplete,
                        generated = true,
                    }
                    CacheQuest(id,questInfo)
                    return questInfo
                else
                    CacheQuest(id,questInfo)
                    return questInfo
                end
            end
        end
        if not questFound then
            addon.ExpandQuestHeaders()
        end
    elseif (stepdiff > 4 or useCache) and questObjectivesCache[id] then
        return questObjectivesCache[id]
    elseif db and type(db.QueryQuest) == "function" and
            (stepdiff > 4 or useCache) and type(db.GetQuest) == "function" then
        local qInfo = {}
        local q = db:GetQuest(id)
        -- print(type(q))
        local objectives
        if q and q.ObjectiveData then
            objectives = q.ObjectiveData
        else
            err = true
        end
        local nObj
        if objectives then
            nObj = 0
            for i, quest in pairs(objectives) do
                nObj = nObj + 1
                local qType = quest.Type
                local objId = quest.Id
                qInfo[i] = {type = qType, finished = false, questie = true}
                if qType == "monster" then
                    local npc = db:GetNPC(objId)
                    if npc and npc.name then
                        qInfo[i].text = npc.name
                    else
                        qInfo[i].text = ""
                    end
                elseif qType == "item" then
                    qInfo[i].text = db:GetItem(objId).name
                elseif quest.Text then
                    qInfo[i].text = quest.Text
                else
                    err = true
                    break
                end
            end
        end
        if not err then
            if nObj == 0 then
                qInfo[1] = {
                    text = L("Objective Complete"),
                    type = "event",
                    numRequired = 1,
                    numFulfilled = 0,
                    finished = false,
                    generated = true,
                }
            end
            return qInfo
        end
    end

    if (not IsOnQuest(id) or err) and not useCache then
        return RequestQuestData(id)
    end
end

local NPCNames = {}
function addon.GetNpcName(id)
    local npc = NPCNames[id]

    if type(id) ~= "number" then
        return
    elseif type(npc) == "string" then
        return npc
    elseif not npc or GetTime()-npc > 1.5  then
        GameTooltip:SetOwner(WorldFrame, "ANCHOR_BOTTOMRIGHT")
        GameTooltip:ClearLines()
        GameTooltip:SetHyperlink(string.format("unit:Creature-0-0-0-0-%d",id))
        local name
        if GameTooltip:IsShown() then
            name = GameTooltipTextLeft1:GetText()
            --DevTools_Dump(name)
            name = name:match("^|c%x%x%x%x%x%x%x%x(.*)|") or name
            NPCNames[id] = name
        end
        GameTooltip:Hide()
        if name then
            return name
        else
            NPCNames[id] = GetTime()
            return
        end
    else
        return
    end
end

function addon.ReplaceNpcIds(textLine,element)
    textLine = textLine:gsub("npc:(.-):(%d+)",function(name,id)
        if not element or element.step.active then
            return addon.GetNpcName(tonumber(id)) or name
        else
            return id
        end
    end)
    if element and not element.step.active then
        return textLine:gsub("::%d+","")
    end
    for name,npcId in string.gmatch(textLine, "|c%x%x%x%x%x%x%x%x([^|:]+)::(%d+)|r") do
        --local newName
        --if addon.player.lang ~= "en" then
            local newName = addon.GetNpcName(tonumber(npcId))
        --end
        newName = newName or name
        textLine = textLine:gsub(name.."::%d+",newName)
    end

    return textLine
end

function addon.GetItemName(id)
    id = id or false
    id = tonumber(id)
    if not id then return end
    local name = GetItemInfo(id)
    if not name then addon.itemQueryList[id] = true end
    return name
end

function addon.SetElementComplete(self, disable, skipIfInactive)
    local element
    if not self.element and self.tag then
        element = self
    else
        element = self.element
    end
    if not element then return end
    local active = element.step.active
    if skipIfInactive and not active then
        return
    end
    element.completed = true
    element.skip = true
    addon.updateSteps = true
    addon.UpdateMap()
    if active and GetTime() - addon.lastStepUpdate > 1 then
        addon:QueueMessage("RXP_OBJECTIVE_COMPLETE",element,addon.currentGuide)
    end

    if self.button then
        -- print('----ok',disable)
        self.button:SetChecked(true)
        if disable then self.button:Disable() end
    end
end

function addon.SetElementIncomplete(self)
    if self.element.completed and not self.element.textOnly then
        self.element.completed = false
        addon.UpdateMap()
    end
    if self.button then
        self.button:Enable()
        if not self.element.skip then self.button:SetChecked(false) end
    end
end

function addon.UpdateStepText(self)
    local index
    if not self.step then
        return
    elseif self.step.tip then
        addon.updateTipWindow = true
        addon.updateStepText = true
        return
    elseif not self.step.index then
        return
    elseif type(self) == "number" then
        index = self
    else
        index = self.step.index
    end
    addon.updateStepText = true
    if index then
        addon.stepUpdateList[index] = true
    else
        addon.updateTipWindow = true
    end
end

function addon.GetNpcId(unit, isGuid)
    if not unit then
        if isGuid then
            return
        else
            unit = "target"
        end
    end
    local guid
    if isGuid then
        guid = unit
    else
        guid = UnitGUID(unit) or ''
    end
    local _, _, _, _, _, npcId = strsplit('-', guid)
    return tonumber(npcId)
end

local HBD = LibStub("HereBeDragons-2.0")
--local HBDPins = LibStub("HereBeDragons-Pins-2.0")

local function GetRequiredQuests(quest)
    local requiredQuests = {}
    if quest.preQuestSingle then
        local preQuestSingle = -1
        for _, qID in pairs(quest.preQuestSingle) do
            if (addon.questTurnIn[qID] and
                (IsOnQuest(qID) or addon.questAccept[qID] or
                    not addon.pickUpList[qID])) or IsQuestTurnedIn(qID) then
                preQuestSingle = 0
            elseif preQuestSingle < 0 then
                preQuestSingle = qID
            end
        end
        if preQuestSingle > 0 then
            tinsert(requiredQuests, preQuestSingle)
        end
    end
    if quest.preQuestGroup then
        for _, qID in pairs(quest.preQuestGroup) do
            if not ((addon.questTurnIn[qID] and
                (IsOnQuest(qID) or addon.questAccept[qID] or
                    not addon.pickUpList[qID])) or IsQuestTurnedIn(qID)) then
                tinsert(requiredQuests, qID)
            end
        end
    end
    return requiredQuests
end

local function ProcessItems(value, step, questId, isTurnIn)
    local ref
    if isTurnIn then
        ref = addon.questTurnInItems
    else
        ref = addon.questAcceptItems
    end
    local qItem = ref[questId]
    if not qItem then return end
    if not step.activeItems then step.activeItems = {} end
    if type(qItem) == "table" then
        for _, item in pairs(qItem) do step.activeItems[item] = value end
    else
        step.activeItems[qItem] = value
    end
end

function addon.InsertQuestGuide(id,tbl)
    tbl[id] = tbl[id] or {}
    local entry = {}

    entry.step = addon.step
    entry.name = addon.currentGuideName
    entry.group = addon.currentGuideGroup
    entry.guide = addon.guide

    tinsert(tbl[id],entry)
end

function addon.IsOnTurnInGuide(self)
    if UnitLevel("player") >= 70 or not RXPData.skipTurnInGuideQuests then
        return
    end
    if type(self) == "table" then
        local element = self.element
        local id = element.questId
        if id and addon.turnInList[id] then
            for i,v in pairs(addon.turnInList[id]) do
                if v.name == "Launch Turn in Guide" then
                    addon.SetElementComplete(self, true)
                    --print(addon.GetQuestName(id),v.name,id)
                    return
                end
            end
        end
    elseif type(self) == "number" then
        local id = self
        if id and addon.turnInList[id] then
            for i,v in pairs(addon.turnInList[id]) do
                if v.name == "Launch Turn in Guide" then
                    return true
                end
            end
        end
    end
end

addon.pickUpList = {}
function addon.functions.accept(self, ...)
    if type(self) == "string" then -- on parse
        local text, id, flags, arg1 = ...
        id = tonumber(id)
        flags = tonumber(flags) or 0
        if not id then
            return addon.error(
                L("Error parsing guide") .. " " .. addon.currentGuideName ..
                ": Invalid quest ID\n" .. self)
        end
        local element = {title = "", flags = flags}
        element.questId = GetQuestId(id)
        -- element.title = addon.GetQuestName(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = _G.ACCEPT .. " *quest*"
            element.requestFromServer = true
        end
        if element.text:find("%*quest%*") then
            element.retrieveText = true
        end
        --element.tooltipText = addon.icons.accept .. element.text

        --[[
        flags:
            1 - disable auto accept
            2 - mark element as complete if quest Id defined by arg1 is not turned in
        ]]
        if bit.band(flags,0x2) == 0x2 then
            element.requiredTurnIn = tonumber(arg1)
        end
        addon.InsertQuestGuide(id,addon.pickUpList)
        return element
    else
        local element = self.element
        local step = element.step
        local event, arg1, questId = ...
        local id = element.questId
        local isCompleted = element.completed
        local index = step.index
        local isQuestAccepted

        if event == "QUEST_ACCEPTED" then
            questId = questId or arg1
            isQuestAccepted = questId == id or IsQuestTurnedIn(id) or IsOnQuest(id)
            if questId == id then
                addon.recentAccept[id] = GetTime()
            end
        else
            isQuestAccepted = IsQuestTurnedIn(id) or IsOnQuest(id)
        end

        if step.active or element.retrieveText or
            (index and index > 1 and
                addon.currentGuide.steps[index - 1].active) then
            local autoAccept = bit.band(element.flags,0x1) ~= 0x1 and not addon.disabledQuests[id]
            if autoAccept then addon.questAccept[id] = element end
            local quest = addon.GetQuestName(id, element)
            if quest then
                element.title = quest
                if autoAccept then
                    addon.questAccept[id] = element
                    addon.questAccept[quest] = addon.questAccept[id]
                end
                element.text = element.text:gsub("%*quest%*", quest)
                if element.requestFromServer then
                    element.requestFromServer = nil
                    addon.UpdateStepText(self)
                end
            else
                element.title = ""
                element.requestFromServer = true
            end
        end

        local icon = addon.icons[element.tag]
        -- local skip
        if step.active and db and type(db.QueryQuest) == "function" and
            not isQuestAccepted and not addon.skipPreReq[id] and not element.multiple then
            local quest = db:GetQuest(id)
            if quest then
                local doable = db:IsDoable(id)
                local requiredQuests

                if not doable then
                    requiredQuests = GetRequiredQuests(quest)
                end
                if requiredQuests and #requiredQuests > 0 then
                    local tooltip = addon.colors.tooltip ..
                                        L("Missing pre-requisites") .. ":|r\n"
                    for i, qid in ipairs(requiredQuests) do
                        tooltip = format("%s\n%s%s (%d)", tooltip,
                                         addon.icons.turnin,
                                         db:GetQuest(qid).name, qid)
                    end
                    element.tooltip = tooltip
                    element.icon = addon.icons.error
                    -- skip = RXPData.skipMissingPreReqs
                elseif not doable then
                    local tooltip = addon.colors.tooltip ..
                                        L("Missing pre-requisites") .. "|r"
                    element.tooltip = tooltip
                    element.icon = addon.icons.error
                    -- skip = RXPData.skipMissingPreReqs
                else
                    element.icon = icon
                    element.tooltip = nil
                end
            end
        elseif element.icon then
            element.icon = icon
            element.tooltip = nil
        end

        if addon.settings.profile.debug then
            element.tooltip = element.questId
        end

        element.tooltipText = addon.icons.accept .. element.text
        local completed = element.completed

        if isQuestAccepted then
            addon.SetElementComplete(self, true)
            -- elseif skip then
            --    addon.SetElementComplete(self)
        elseif event == "QUEST_REMOVED" and arg1 == id and not element.skip then
            addon.SetElementIncomplete(self)
        end

        if step.active then
            if element.requiredTurnIn and not IsQuestTurnedIn(element.requiredTurnIn) then
                addon.SetElementComplete(self, true)
            elseif not event then
                ProcessItems(true, step, id)
            elseif completed ~= element.completed then
                ProcessItems(not element.completed, step, id)
                addon.UpdateItemFrame()
            end
            if element.completed and not isCompleted then
                if element.timer then
                    addon.StartTimer(element.timer,element.timerText)
                end

                if addon.settings.profile.shareQuests then
                    local questLogIndex,isPushable = GetLogIndexForQuestID(id);
                    if questLogIndex and isPushable then
                        if _G.SelectQuestLogEntry then
                            _G.SelectQuestLogEntry(questLogIndex)
                        end
                        _G.QuestLogPushQuest(questLogIndex)
                    end
                end
            end
        end

    end
    addon.IsOnTurnInGuide(self)
end

function addon.functions.daily(self, text, ...)
    if type(self) == "string" then -- on parse
        local element = {}

        local ids = {...}
        local err = #ids == 0
        for i, v in pairs(ids) do
            local questId = tonumber(v)
            if questId then
                ids[i] = GetQuestId(questId)
                addon.InsertQuestGuide(ids[i],addon.pickUpList)
            else
                err = true
                break
            end
        end

        if err then
            return addon.error(
                       L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.multiple = #ids > 1
        element.flags = 0
        element.title = ""
        -- element.title = addon.GetQuestName(id)
        element.text = text or ""
        --element.tooltipText = addon.icons.daily .. element.text
        element.ids = ids

        return element
    else
        local element = self.element
        if RXPCData.skipDailies and element.tag == "daily" then
            addon.SetElementComplete(self, true)
            return
        end

        for _, id in pairs(element.ids) do
            element.questId = id
            addon.functions.accept(self, text, ...)
        end
    end

end

function addon.functions.disablequestautomation(self,text,...)
    if type(self) == "string" then -- on parse
        local guide = addon.guide
        local ids = {...}
        local disabledQuests = guide.disabledQuests or {}
        for i,v in pairs(ids) do
            local id = tonumber(v)
            if id then
                disabledQuests[id] = true
            end
        end
        guide.disabledQuests = disabledQuests
        return
    end
end

addon.turnInList = {}
function addon.functions.turnin(self, ...)

    if type(self) == "string" then -- on parse
        local text, id, reward, flags = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        reward = tonumber(reward) or 0
        local element = {title = "", questId = GetQuestId(id)}
        element.flags = tonumber(flags) or 0
        --setting the lsb to 1 disables auto turn in
        if id < 0 then
            id = math.abs(id)
            element.skipIfMissing = true
            element.questId = GetQuestId(id)
            if reward > 0 then
                element.skipIfIncomplete = true
            end
            reward = nil
        end
        element.reward = reward
        -- element.title = addon.GetQuestName(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = _G.TURN_IN_QUEST .. " *quest*"
            element.requestFromServer = true
        end
        if element.text:find("%*quest%*") then
            element.retrieveText = true
        end
        --element.tooltipText = addon.icons.turnin .. element.text
        addon.InsertQuestGuide(id,addon.turnInList)

        return element
    else
        local element = self.element
        local step = element.step
        local event, questId = ...
        local id = element.questId
        local isComplete = IsQuestTurnedIn(id)
        if addon.settings.profile.debug then
            element.tooltip = id
        end
        if step.active or element.retrieveText then
            local autoTurnIn = (not element.flags or element.flags % 2 == 0) and element
            addon.questTurnIn[id] = autoTurnIn
            -- addon.questAccept[id] = addon.questAccept[id] or element
            local quest = addon.GetQuestName(id)
            if quest then
                element.title = quest
                addon.questTurnIn[quest] = autoTurnIn
                -- addon.questAccept[quest] = addon.questAccept[quest] or element
                element.text = element.text:gsub("%*quest%*", quest)
                if element.requestFromServer then
                    element.requestFromServer = nil
                    addon.UpdateStepText(self)
                end
            else
                element.title = ""
                element.requestFromServer = true
            end
        end

        local icon = addon.icons[element.tag]
        -- local skip
        if step.active and db and type(db.QueryQuest) == "function" and
            addon.pickUpList[id] and not addon.questAccept[id] and
            not addon.skipPreReq[id] and not element.multiple and not isComplete then
            local quest = db:GetQuest(id)
            if not IsOnQuest(id) and quest and not quest.IsRepeatable then
                local requiredQuests
                local doable = db:IsDoable(id)

                if not doable then
                    requiredQuests = GetRequiredQuests(quest)
                    tinsert(requiredQuests, id)
                else
                    requiredQuests = {id}
                end

                local tooltip = addon.colors.tooltip ..
                                    L("Missing pre-requisites") .. ":|r\n"
                for i, qid in ipairs(requiredQuests) do
                    if i < #requiredQuests then
                        tooltip = format("%s\n%s%s (%d)", tooltip,
                                         addon.icons.turnin,
                                         db:GetQuest(qid).name, qid)
                    else
                        tooltip = format("%s\n%s%s (%d)", tooltip,
                                         addon.icons.accept,
                                         db:GetQuest(qid).name, qid)
                    end
                end
                element.tooltip = tooltip
                element.icon = addon.icons.error
                -- skip = RXPData.skipMissingPreReqs
            elseif element.icon then
                element.icon = icon
                element.tooltip = nil
            end
        else
            element.icon = icon
            element.tooltip = nil
        end

        --element.tooltipText = element.icon .. element.text
        addon.UpdateStepText(self)
        local completed = element.completed

        if questId == id then -- repeatable quests
            if element.timer then
                addon.StartTimer(element.timer,element.timerText)
            end

            --Scryer/Aldor quests
            if id == 10551 or id == 10552 then
                return addon.ReloadGuide()
            end
            addon.recentTurnIn[id] = GetTime()
            addon.SetElementComplete(self)
        elseif isComplete and event ~= "WindowUpdate" and step.active then
            addon.recentTurnIn[id] = GetTime()
            addon.SetElementComplete(self, true)
        end

        if step.active then
            if (element.skipIfMissing and not IsOnQuest(id)) or (element.skipIfIncomplete and not IsQuestComplete(id)) then
                addon.SetElementComplete(self, true)
                ProcessItems(false, step, id, true)
                addon.UpdateItemFrame()
            elseif not event then
                ProcessItems(true, step, id, true)
                if C_SuperTrack and not step.track and not element.completed then
                    C_SuperTrack.SetSuperTrackedQuestID(id)
                end
            elseif completed ~= element.completed then
                ProcessItems(not element.completed, step, id, true)
                addon.UpdateItemFrame()
            end
        end

    end
    addon.IsOnTurnInGuide(self)
end

function addon.functions.dailyturnin(self, text, ...)

    if type(self) == "string" then -- on parse
        local element = {}

        local ids = {...}
        local err = #ids == 0
        for i, v in pairs(ids) do
            local questId = tonumber(v)
            if questId then
                ids[i] = GetQuestId(questId)
                addon.InsertQuestGuide(ids[i],addon.pickUpList)
            else
                err = true
                break
            end
        end

        if err then
            return addon.error(
                        L("Error parsing guide") .. " "   .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.multiple = #ids > 1
        element.title = ""
        element.reward = 0
        -- element.title = addon.GetQuestName(id)
        element.text = text or ""
        element.ids = ids

        return element
    end

    local element = self.element
    if RXPCData.skipDailies and element.tag == "dailyturnin" then
        addon.SetElementComplete(self, true)
        return
    end

    for _, id in pairs(element.ids) do
        element.questId = id
        addon.functions.turnin(self, text, ...)
    end

end

addon.functions.acceptmultiple = addon.functions.daily
addon.functions.turninmultiple = addon.functions.dailyturnin

local questMonster = string.gsub(_G.QUEST_MONSTERS_KILLED, "%d+%$", "")
questMonster = questMonster:gsub("%%s", "%.%*"):gsub("%%d", "%%d%+")
local questItem = string.gsub(_G.QUEST_ITEMS_NEEDED, "%%s", "%(%.%*%)"):gsub(
                      "%%d", "%%d%+")
local retrievingQuestData = L("Retrieving quest data") .. "..."

function addon.UpdateQuestCompletionData(self)
    -- addon.activeObjectives[self] = addon.UpdateQuestCompletionData
    local element = self.element
    if not element then return end

    local step = element.step
    local icon = addon.icons.complete
    local id = element.questId

    if not element.tag or element.tag ~= "complete" then
        return
    end

    if type(id) ~= "number" then
        print('Error (.' .. element.tag .. '): Invalid quest ID at step ' .. (element.step.index  or "*"))
        return
    end

    -- local skip
    local objectives = addon.GetQuestObjectives(id, element.step.index)
    local useCache

    if not (objectives and #objectives > 0) then
        objectives = addon.GetQuestObjectives(id, element.step.index, true)
        useCache = true

        element.requestFromServer = true
        element.text = retrievingQuestData
        element.tooltipText = nil

        addon.UpdateStepText(self)

        return
    end

    local isQuestComplete = IsQuestTurnedIn(id) or IsQuestComplete(id)
    local objtext = " "
    local completed

    if element.obj and element.obj <= #objectives then
        local obj = objectives[element.obj]

        obj.numFulfilled = obj.numFulfilled or 0
        obj.numRequired = obj.numRequired or 0xff
        if element.objMax then
            obj.numRequired = math.min(element.objMax, obj.numRequired)
            --[[if obj.numFulfilled > obj.numRequired then
                obj.numFulfilled = obj.numRequired
            end]]
        end

        local t = obj.text or " "

        if t:find("[%a\194-\234]") then
            element.requestFromServer = false
        else
            element.requestFromServer = true
        end

        if obj.type == "item" then
            icon = addon.icons.collect
        elseif obj.type == "monster" and (t:find(questMonster) or obj.questie) then
            icon = addon.icons.combat
        end

        if not obj.questie then
            if obj.type == "event" then
                if isQuestComplete then
                    t = fmt(t .. ": %d/%d", obj.numRequired,
                                        obj.numRequired)
                else
                    t = fmt(t .. ": %d/%d", obj.numFulfilled,
                                        obj.numRequired)
                end
            elseif isQuestComplete then
                t = t:gsub(": %d+/(%d+)", ": %1/%1")
            end
        end

        completed = obj.finished or
                        (element.objMax and obj.numFulfilled >=
                            obj.numRequired)
        objtext = t
    end


    if step.active and db and type(db.QueryQuest) == "function" and element.obj and
        not isQuestComplete and not addon.skipPreReq[id] then

        local quest = db:GetQuest(id)

        if quest and quest.ObjectiveData and quest.ObjectiveData[element.obj] then
            local itemId = quest.ObjectiveData[element.obj].Id
            local questType = quest.ObjectiveData[element.obj].Type
            local validQuest = true

            if questType == "item" then
                addon.GetItemName(itemId)
                validQuest = select(12, GetItemInfo(itemId)) == 12 and
                                 select(11, GetItemInfo(itemId)) == 0
            end

            if not IsOnQuest(id) and validQuest then
                local requiredQuests
                local doable = db:IsDoable(id)
                if not doable then
                    requiredQuests = GetRequiredQuests(quest)
                    tinsert(requiredQuests, id)
                else
                    requiredQuests = {id}
                end

                local tooltip = addon.colors.tooltip ..
                                    L("Missing pre-requisites") .. ":|r\n"

                for i, qid in ipairs(requiredQuests) do
                    if i < #requiredQuests then
                        tooltip = format("%s\n%s%s (%d)", tooltip,
                                         addon.icons.turnin,
                                         db:GetQuest(qid).name, qid)
                    else
                        tooltip = format("%s\n%s%s (%d)", tooltip,
                                         addon.icons.accept,
                                         db:GetQuest(qid).name, qid)
                    end
                end

                element.tooltip = tooltip
                element.icon = addon.icons.error
                -- skip = RXPData.skipMissingPreReqs
            else
                element.icon = icon
                element.tooltip = nil
            end
        end
    else
        element.icon = icon
        element.tooltip = nil
    end

    if addon.settings.profile.debug then
        element.tooltip = id
    end

    local quest

    if objectives then quest = addon.GetQuestName(id, element) end

    if quest then
        element.title = quest
    else
        element.title = ""
    end

    local prefix = " "

    if objtext and #objtext > 0 then
        prefix = objtext:sub(1, 1)
    end

    if not quest or prefix == " " or prefix == ":" or useCache then
        element.requestFromServer = true
    elseif quest then
        element.requestFromServer = nil
    end

    completed = completed or isQuestComplete

    if element.flags % 2 == 0 then
        element.tooltipText = icon .. objtext:gsub("\n", "\n   " .. icon)
        element.text = objtext
    end

    addon.UpdateStepText(self)

    if not completed then
        addon.SetElementIncomplete(self)
        return
    end

    if not element.completed and step.active == true and element.flags % 2 == 0 then
        addon.comms:AnnounceStepEvent('.complete', {
            title = element.title,
            completionText = element.text,
            step = RXPCData.currentStep,
            guideName = RXPCData.currentGuideName
        })

        if element.timer then
            addon.StartTimer(element.timer,element.timerText)
        end
    end

    if element.flags % 2 == 1 and step.active then
        addon.updateSteps = true
        step.completed = true

        if element.textOnly == true then
            element.tooltipText = L"Step skipped: This step requires a quest available that is already complete"
        end
    end

    addon.SetElementComplete(self, true)
    -- elseif skip then
    --    addon.SetElementComplete(self)
end

function addon.functions.complete(self, ...)
    if type(self) == "string" then -- on parse

        local text, id, obj, objMax, flags = ...

        flags = tonumber(flags) or 0
        id = GetQuestId(tonumber(id))
        obj = tonumber(obj)
        if not (id and obj) then
            addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid objective or quest ID\n" .. self)
            return
        end
        objMax = tonumber(objMax)
        if objMax and objMax <= 0 then
            objMax = nil
        end
        id = id and GetQuestId(id)
        local element = {questId = id, dynamicText = true, obj = obj,
                         objMax = objMax, requestFromServer = true,
                         text = " ", flags = flags, textOnly = (flags % 2) == 1
                        }
        if id and id < 0 then
            id = math.abs(id)
            element.skipIfMissing = true
            element.questId = id
        end

        -- element.title = addon.GetQuestName(id)
        -- local objectives = addon.GetQuestObjectives(id)--queries the server for items/creature names associated with the quest
        return element
    end
    local event = ...
    local element = self.element
    local step = element.step
    local id = self.element.questId

    if IsQuestTurnedIn(id) then
        addon.SetElementComplete(self,true)
    end
    if not event then
        if step.active and addon.questCompleteItems[id] then
            local qItem = addon.questCompleteItems[id]
            if not step.activeItems then step.activeItems = {} end
            if type(qItem) == "table" then
                for _, item in pairs(qItem) do
                    step.activeItems[item] = true
                end
            else
                step.activeItems[qItem] = true
            end
        end
        addon.UpdateQuestCompletionData(self)
        if step.active and element.skipIfMissing and not IsOnQuest(element.questId) then
            addon.SetElementComplete(self,true)
        end
        if step.active and C_SuperTrack and not step.track and not element.completed then
            C_SuperTrack.SetSuperTrackedQuestID(id)
        end
    else
        if not step.active and step.index then
            if math.abs(RXPCData.currentStep - step.index) > 2 then
                local update = true
                for _,v in pairs(addon.updateInactiveQuest) do
                    if v == self then
                        update = false
                        break
                    end
                end
                if update and element.requestFromServer then
                    tinsert(addon.updateInactiveQuest,self)
                end
            else
                addon.updateActiveQuest[self] = addon.UpdateQuestCompletionData
            end
        elseif step.active and event ~= "WindowUpdate" then
            if element.skipIfMissing and not IsOnQuest(element.questId) then
                addon.SetElementComplete(self,true)
            else
                addon.updateActiveQuest[self] = addon.UpdateQuestCompletionData
            end
        elseif element.requestFromServer and step.active then
            addon.updateActiveQuest[self] = addon.UpdateQuestCompletionData
        end
    end
    addon.IsOnTurnInGuide(self)
end

local lastZone
addon.functions["goto"] = function(self, ...)
    if type(self) == "string" then -- on parse
        --element.tag = "goto"
        local text, zone, x, y, radius, optional = ...
        local element = {arrow = true, parent = true, textOnly = true}
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        --print(zone)
        local subzone,continent = zone:match("(.-)/(%d+)")
        if subzone then
            zone = addon.GetMapId(subzone) or tonumber(subzone)
            if addon.mapConversion[zone] then
                zone = addon.mapConversion[zone]
            end
            x = tonumber(x)
            y = tonumber(y)
            local zx,zy = HBD:GetZoneCoordinatesFromWorld(x, y, zone)
            if zx and zy then
                element.wx = x
                element.wy = y
                element.x = zx*100
                element.y = zy*100
                element.zone = zone
                element.instance = tonumber(continent)
            end
        else
            element.zone, element.x , element.y = addon.GetMapInfo(zone,x,y)
        end
        if not (element.x and element.y and element.zone) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
        end

        element.radius = tonumber(radius)
        radius = element.radius
        if not subzone then
            element.wx, element.wy, element.instance =
              HBD:GetWorldCoordinatesFromZone(element.x / 100, element.y / 100,
                                            element.zone)

            if addon.mapConversion[element.zone] then
                zone = addon.mapConversion[element.zone]
                local zx,zy = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, zone)
                if not (zx and zy) then
                    local info = C_Map.GetMapInfo(zone)
                    zone = info.parentMapID
                    zx,zy = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, zone)
                end
                if not (zx and zy) then
                    return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
                end
                element.x = zx * 100
                element.y = zy * 100
                element.zone = zone
            end
        end
        element.text = text

        if radius then
            if optional then
                if radius == 0 then
                    element.lowPrio = true
                    element.radius = nil
                elseif radius > 0 then
                    element.hidePin = true
                    element.parent = true
                end
            elseif radius > 0 then
                if not text or text == "" then
                    element.text = fmt(L("Go to") .. " %.1f,%.1f (%s)",
                                                 element.x, element.y, zone)
                end
                element.parent = nil
                element.textOnly = nil
                element.tooltipText = addon.icons["goto"] .. element.text
            elseif radius == 0 then
                element.arrow = nil
                element.radius = nil
            end
            if radius < 0 then
                element.radius = nil
                element.dynamic = true
            end
        end
        return element
    end
end

events.flygoto = "ZONE_CHANGED"
events.groundgoto = "ZONE_CHANGED"

local function DetectFlying(self,mode)
    if type(self) == "table" and self.element and self.element.step.active then
        local element = self.element
        local canPlayerFly = addon.CanPlayerFly(element.zone)
        if not element.skip and canPlayerFly then
            element.skip = mode
            addon.UpdateMap()
        elseif element.skip and not canPlayerFly then
            element.skip = not mode
            addon.UpdateMap()
        end
        if element.skip and not element.textOnly then
            element.completed = true
        end
    end
end

addon.functions.groundgoto = function(self, ...)
    DetectFlying(self,true)
    return addon.functions["goto"](self, ...)
end

addon.functions.flygoto = function(self, ...)
    DetectFlying(self,false)
    return addon.functions["goto"](self, ...)
end

local function QuestWP(element)
    if element.currentObjective then
        local id = element.questId
        local objIndex = element.objIndex
        local step = element.step
        if not addon.IsOnQuest(id) then
            element.currentObjective = 0
        else
            local quest = addon.GetQuestObjectives(id,element.step.index)
            local obj = quest and quest[objIndex]
            element.currentObjective = obj and obj.numFulfilled or 0
            if element.objMax and element.objMax > 0 and element.currentObjective >= element.objMax then
                local enabled = not element.skip
                element.skip = true
                local wpList = RXPCData.completedWaypoints[step.index or "tip"]
                if wpList and element.wpHash then wpList[element.wpHash] = true end
                if enabled then
                    addon.UpdateMap()
                end
            end
        end
    end
end
events.questwaypoint = "QUEST_LOG_UPDATE"
function addon.functions.questwaypoint(self, text, zone, x, y, radius, questId, objIndex, objMax, lowPrio)
    if type(self) == "string" then
        questId = tonumber(questId)
        objIndex = tonumber(objIndex)
        radius = tonumber(radius)
        if not (questId and radius and objIndex) then
            return
        end
        local element = addon.functions.waypoint(self,text,zone,x,y,radius,lowPrio)
        element.objMax = tonumber(objMax)
        element.questId = questId
        element.objIndex = objIndex
        element.currentObjective = 0
        element.previousObjective = 0
        return element
    end
    QuestWP(self.element)
end

events.questgoto = "QUEST_LOG_UPDATE"
function addon.functions.questgoto(self, text, zone, x, y, radius, questId, objIndex, objMax, optional)
    if type(self) == "string" then
        questId = tonumber(questId)
        objIndex = tonumber(objIndex)
        radius = tonumber(radius)
        if not (questId and radius and objIndex) then
            return
        end
        local element = addon.functions['goto'](self,text,zone,x,y,radius,"0",optional)
        element.objMax = tonumber(objMax)
        element.questId = questId
        element.objIndex = objIndex
        element.currentObjective = 0
        element.previousObjective = 0
        return element
    end
    QuestWP(self.element)
end

function addon.functions.waypoint(self, text, zone, x, y, radius, lowPrio, ...)
    -- creates an waypoint arrow without a map pin
    if type(self) == "string" then
        local element = {}
        --element.tag = "goto"
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        local subzone,continent = zone:match("(.-)/(%d+)")
        if subzone then
            zone = addon.GetMapId(subzone) or tonumber(subzone)
            if addon.mapConversion[element.zone] then
                zone = addon.mapConversion[element.zone]
            end
            x = tonumber(x)
            y = tonumber(y)
            local zx,zy = HBD:GetZoneCoordinatesFromWorld(x, y, zone)
            if zx and zy then
                element.wx = x
                element.wy = y
                element.x = zx*100
                element.y = zy*100
                element.zone = zone
                element.instance = tonumber(continent)
            end
        else
            element.zone, element.x , element.y = addon.GetMapInfo(zone,x,y)
        end
        if not (element.x and element.y and element.zone) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
        end

        radius = tonumber(radius)
        element.lowPrio = lowPrio
        if lowPrio and not tonumber(lowPrio) then
            element.args = radius
            element.event = {...}
            element.callback = lowPrio
            radius = nil
        end
        element.radius = radius
        if element.radius == 0 then
            element.radius = nil
            if not lowPrio then element.lowPrio = true end
        elseif element.radius and element.radius < 0 then
            element.persistent = true
            element.dynamic = true
            element.radius = math.abs(element.radius)
        end
        if not subzone then
        element.wx, element.wy, element.instance =
            HBD:GetWorldCoordinatesFromZone(element.x / 100, element.y / 100,
                                            element.zone)

            if addon.mapConversion[element.zone] then
                zone = addon.mapConversion[element.zone]
                local zx,zy = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, zone)
                if not (zx and zy) then
                    local info = C_Map.GetMapInfo(zone)
                    zone = info.parentMapID
                    zx,zy = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, zone)
                end
                if zx and zy then
                    element.x = zx * 100
                    element.y = zy * 100
                    element.zone = zone
                else
                    return addon.error(
                        '2-'..L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
                end
            end
        end
        element.arrow = true
        element.parent = true
        element.hidePin = true
        element.title = text
        element.textOnly = true

        return element
    end

    local element = self.element
    local group = addon.currentGuide.group
    local callback = addon.functions[element.callback]
    if type(callback) == "function" then
        local lowPrio = callback(self, text, zone, x, y, radius, lowPrio, ...)
        if element.lowPrio ~= lowPrio then addon.UpdateMap() end
        element.lowPrio = lowPrio
    end
end

function addon.functions.wpradius(self,_,zone,x,y,radius)
    local element = addon.lastElement
    if element and element.wx then

        local subzone = zone:find(".-/%d+")
        if subzone then
            x = tonumber(x)
            y = tonumber(y)
        else
            zone, x , y = addon.GetMapInfo(zone,x,y)
            x, y, zone =
            HBD:GetWorldCoordinatesFromZone(x / 100, y / 100,
                                            zone)
        end
        radius = tonumber(radius)
        if (x and y and radius) then
            element.xref, element.yref = x,y
            element.persistent = true
            element.activationRadius = radius
        else
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
        end
    end
end

function addon.functions.pin(self, ...)
    -- creates a map pin without an waypoint arrow
    if type(self) == "string" then
        local element = {}
        --element.tag = "goto"
        local text, zone, x, y, tooltip = ...
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        local subzone,continent = zone:match("(.-)/(%d+)")
        if subzone then
            zone = addon.GetMapId(subzone) or tonumber(subzone)
            if addon.mapConversion[element.zone] then
                zone = addon.mapConversion[element.zone]
            end
            x = tonumber(x)
            y = tonumber(y)
            local zx,zy = HBD:GetZoneCoordinatesFromWorld(x, y, zone)
            if zx and zy then
                element.wx = x
                element.wy = y
                element.x = zx*100
                element.y = zy*100
                element.zone = zone
                element.instance = tonumber(continent)
            end
        else
            element.zone, element.x , element.y = addon.GetMapInfo(zone,x,y)
        end
        if not (element.x and element.y and element.zone) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
        end
        if not subzone then
        element.wx, element.wy, element.instance =
            HBD:GetWorldCoordinatesFromZone(element.x / 100, element.y / 100,
                                            element.zone)

            if addon.mapConversion[element.zone] then
                zone = addon.mapConversion[element.zone]
                local zx,zy = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, zone)
                if not (zx and zy) then
                    local info = C_Map.GetMapInfo(zone)
                    zone = info.parentMapID
                    zx,zy = HBD:GetZoneCoordinatesFromWorld(element.wx, element.wy, zone)
                end
                element.x = zx * 100
                element.y = zy * 100
                element.zone = zone
            end
        end
        element.mapTooltip = tooltip
        element.parent = true
        element.text = text
        element.textOnly = true

        return element
    end
end

events.treasure = "QUEST_LOG_UPDATE"
function addon.functions.treasure(self, text, zone, x, y, id)
    if type(self) == "string" then
        local element = addon.functions.pin(self, text, zone, x, y)
        element.questId = tonumber(id)
        --element.ignoreGrouping = true
        if element.questId and IsQuestTurnedIn(element.questId) then
            return
        else
            return element
        end
    end
    local element = self.element
    local qid = element.questId
    element.step.treasure = true
    if not (element.skip or addon.settings.profile.showTreasures) then
        addon.SetElementComplete(self)
        return
    elseif element.skip and addon.settings.profile.showTreasures then
        addon.SetElementIncomplete(self)
    end
    if qid and not element.skip and IsQuestTurnedIn(qid) then
        element.completed = true
        element.skip = true
        addon.UpdateMap()
    end
end

addon.rares = {}
local rareAchievements = {7439,8103,8714}
events.rare = "CRITERIA_UPDATE"
function addon.functions.rare(self, text, zone, x, y, nameOrId)
    if type(self) == "string" then
        local element = addon.functions.pin(self, text, zone, x, y)
        local z = element.zone
        local zoneTable = addon.rares[z] or {}
        addon.rares[z] = zoneTable
        element.id = tonumber(nameOrId:match("(%d+)"))
        local index = fmt("%.2f,%.2f",element.x,element.y)
        zoneTable[index] = nameOrId
        return element
    end
    local element = self.element
    local step = element.step
    step.rare = true
    if not (element.skip or addon.settings.profile.showRares) then
        addon.SetElementComplete(self)
        return
    elseif element.skip and addon.settings.profile.showRares then
        addon.SetElementIncomplete(self)
    end
    if not addon.settings.profile.ignoreDuplicateRares then
        addon.SetElementIncomplete(self)
        return
    end
    if step.active and element.id and not element.name then
        element.name = addon.GetNpcName(element.id)
    end
    if not element.achievement and type(element.name) == "string" then
        for _,id in ipairs(rareAchievements) do
            local n = GetAchievementNumCriteria(id)
            for i = 1,n do
                local displayText = GetAchievementCriteriaInfo(id,i)
                if displayText == element.name then
                    element.achievement = id
                    element.criteria = i
                    break
                end
            end
            if element.achievement then break end
        end
    end
    if element.achievement and not element.skip then
        local displayText,_,completed = GetAchievementCriteriaInfo(element.achievement,element.criteria)
        if completed then
            --print(displayText,'ok1')
            addon.SetElementComplete(self)
        end
    end
end

function addon.functions.line(self, text, zone, ...)
    if type(self) == "string" then
        local element = {}
        local segments = {...}
        for i, v in ipairs(segments) do segments[i] = tonumber(v) end
        element.segments = segments
        if zone and zone:sub(1,1) == "+" then
            element.drawCenterPoint = true
            zone = zone:sub(2-1)
            element.thickness = 1
        end

        local z,continent = zone:match("(%d+)/(%d+)")
        if continent then
            zone = z
            for x = 1, #segments, 2 do
                local y = x+1
                local wx,wy = segments[x],segments[y]
                local xc,yc = HBD:GetZoneCoordinatesFromWorld(wx, wy, tonumber(zone))
                segments[x] = xc*100
                segments[y] = yc*100
                --print('v',x,xc,y,wx,wy)
            end
        end

        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        local mapID = addon.GetMapId(zone) or tonumber(zone)
        if not (segments and #segments > 0 and zone and mapID) then
            return addon.error(
                        L("Error parsing guide") .. " " .. (addon.currentGuideName or _G.NONE) ..
                           ": Invalid coordinates or map name\n" .. self)
        end
        element.zone = mapID
        -- element.hidePin = true
        element.parent = true
        -- element.hidePin = true

        element.text = text
        element.textOnly = true

        return element
    end
end

function addon.functions.loop(self, text, range, zone, ...)
    if type(self) == "string" then
        local element = {}
        local segments = {...}
        for i, v in ipairs(segments) do segments[i] = tonumber(v) end
        element.segments = segments
        local prefix
        if range then
            prefix = range:sub(1,1)
            element.pointCount = 0
            if prefix == "+" then
                element.drawCenterPoint = true
                element.thickness = 1
                range = range:sub(2,-1)
            elseif prefix == "*" then
                element.lineAlpha = 0
                range = range:sub(2,-1)
            elseif prefix == "@" then
                element.pointCount = nil
                range = range:sub(2,-1)
            else
                prefix = false
            end
            --print('ok2')
        end
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        local mapID = addon.GetMapId(zone) or tonumber(zone)
        if not (segments and #segments > 0 and zone and mapID) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. (addon.currentGuideName or _G.NONE) ..
                           ": Invalid coordinates or map name\n" .. self)
        end
        element.zone = mapID
        -- element.hidePin = true
        element.parent = true
        -- element.hidePin = true

        element.text = text
        element.textOnly = true

        element.range = tonumber(range)
        element.showArrow = true

        return element
    end
end

function addon.functions.hs(self, ...)
    if type(self) == "string" then -- on parse
        local text = ...
        if not text then
            return addon.error(
                        L("Error parsing guide") .. " "  .. (addon.currentGuideName or _G.NONE) ..
                           ": Invalid syntax\n" .. self)
        end

        return {text = text}
    end
    local event, unit, _, id = ...
    local element = self.element
    local step = element.step
    if not element.disableItemWindow then
        if class == "SHAMAN" then
            step.activeSpells = step.activeSpells or {}
            step.activeSpells[556] = true
        end

        step.activeItems = step.activeItems or {}
        step.activeItems[6948] = true
        step.activeItems[184871] = true
    end
    if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == "player" then
        if (id == 8690 or id == 556 or id == 348699 or id == 184871) then
            addon.SetElementComplete(self)
        elseif WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
            for _,v in pairs(addon.hearthstoneSpellIds) do
                if v == id then
                    addon.SetElementComplete(self)
                    return
                end
            end
        end
    end
end

events.hsbatching = events.hs
function addon.functions.hsbatching(self,...)
    local element = addon.functions.hs(self, ...)
    if element then
        element.disableItemWindow  = true
    end
    return element
end


local homeText = strupper(_G.HOME or "%")
function addon.SelectGossipType(gossipType,noOp)
    if C_GossipInfo.GetOptions then
        local options = GossipGetOptions()
        for i,option in ipairs(options) do
            --print(option.type,option.icon)
            if option.type == gossipType then
                noOp = noOp or GossipSelectOption(i)
                return i,option.name
            elseif not option.type and not IsModifierKeyDown() then
                if gossipType == "binder" then
                    local text = strupper(option.name or "")
                    --print(option.name,option.icon)
                    if (option.icon == 132052 or option.icon == 136458) and text:find(homeText) then
                        noOp = noOp or GossipSelectOption(i)
                        return i,option.name
                    end
                elseif gossipType == "taxi" and option.icon == 132057 or
                gossipType == "trainer" and option.icon == 132058 or
                gossipType == "healer" and UnitIsDeadOrGhost('player') and option.icon == 132054 and #options == 1
                 then
                    noOp = noOp or GossipSelectOption(i)
                    return i,option.name
                end
            end
        end
    else
        local options = {GossipGetOptions()}
        for i,gossipText in ipairs(options) do
            if i % 2 == 0 and gossipType == gossipText then
                noOp = noOp or GossipSelectOption(i/2)
                return i,options[i-1]
            end
        end
    end
end

function addon.functions.home(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, location = ...
        element.tag = "home"
        location = tonumber(location)
        element.location = location and C_Map.GetAreaInfo(location)
        if text and text ~= "" then
            element.text = text
        elseif element.location then
            element.text = fmt("%s %s", L("Set your Hearthstone to "), element.location)
        end
        element.tooltipText = addon.icons.home .. element.text
        return element
    end

    if not addon.settings.profile.enableBindAutomation or IsShiftKeyDown() then return end

    local element = self.element
    if not element.step.active or element.completed or element.skip then
        element.confirm = false
        return
    end
    local event = ...
    if (event == nil and element.step.active) then
        local g = GossipGetOptions()
        if type(g) == "table" and #g > 0 then
            event = "GOSSIP_SHOW"
        end
    end
    if event == "HEARTHSTONE_BOUND" or element.location and element.location == GetBindLocation() then
        addon.SetElementComplete(self)
        element.confirm = false
    elseif event == "CONFIRM_BINDER" then
        if C_PlayerInteractionManager and C_PlayerInteractionManager.ConfirmationInteraction then
            self:SetScript("OnUpdate", function()
                C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)
                C_PlayerInteractionManager.ClearInteraction(Enum.PlayerInteractionType.Binder)
                self:SetScript("OnUpdate",nil)
            end)
        elseif _G.ConfirmBinder then
            _G.ConfirmBinder()
        end
        element.confirm = true
        _G.StaticPopup1:Hide()
    elseif not element.confirm and event == "GOSSIP_SHOW" then
        addon.SelectGossipType("binder")
    end
end

function addon.functions.bindlocation(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, location, flags = ...
        element.tag = "home"
        location = tonumber(location)
        element.flags = tonumber(flags) or 0
        element.location = location and C_Map.GetAreaInfo(location)
        element.text = text
        element.textOnly = true
        return element
    end
    local element = self.element
    local step = element.step
    local reverse = element.flags % 2 == 1

    if step.active and element.location and (element.location == GetBindLocation()) == not reverse then
        step.completed = true
        addon.updateSteps = true
    end
end

function addon.GetNearestFp()
    if not addon.taxiPos then return end
    local factionid = 0
    local faction = addon.player.faction
    if faction == "Alliance" then
        factionid = 1
    elseif faction == "Horde" then
        factionid = 2
    end
    local x,y,_,map = UnitPosition('player')
    local mindist = math.huge
    local closestFP
    for node,t in pairs(addon.taxiPos[map]) do
        if bit.band(t.flag,factionid) == factionid then
            local dist = (x-t.wx)^2 + (y-t.wy)^2
            if mindist > dist then
                mindist = dist
                closestFP = node
            end
        end
    end
    --print(closestFP,mindist,addon.FPDB[faction][closestFP].name)
    return closestFP
end

function addon.functions.fp(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, location, skipStep = ...
        element.tag = "fp"
        element.confirm = 0
        if skipStep then
            element.text = text
            element.textOnly = true
        elseif text and text ~= "" then
            element.text = text
        else
            element.text = fmt(L("Get the %s flight path"), location)
        end

        if location and location ~= "" and location:find("%w+") then
            local l = location:gsub("%-","%%-")
            for id, fp in pairs(addon.FPDB[addon.player.faction] or {}) do
                if strupper(fp.name):find(strupper(l)) then
                    element.fpId = id
                    break
                end
            end
        end

        element.tooltipText = addon.icons.fp .. element.text
        return element
    end
    local event, arg1, arg2 = ...
    local element = self.element
    local fpId = element.fpId
    if (event == nil and element.step.active) then
        local g = GossipGetOptions()
        if type(g) == "table" and #g > 0 then
            event = "GOSSIP_SHOW"
        end
    end
    --print('v',element.fpId,RXPCData.flightPaths[element.fpId])
    if self.element.step.active then
        --print(element.fpId,'-',RXPCData.flightPaths[element.fpId])
        local fpDiscovered = fpId and RXPCData.flightPaths[fpId]
        if element.textOnly and fpDiscovered and not element.text then
            element.step.completed = true
            addon.updateSteps = true
        elseif fpDiscovered or fpId and (addon.flightInfo.lastFlightSrc == fpId or
                                  addon.flightInfo.lastFlightDest == fpId) then
            addon.SetElementComplete(self)
        elseif event == "UI_INFO_MESSAGE" and (arg2 == _G.ERR_NEWTAXIPATH or arg2 == _G.ERR_TAXINOPATHS) then
            local currentMap = C_Map.GetBestMapForUnit("player")
            local validFP = false
            if addon.FPbyZone then
                for mapId,flightId in pairs(addon.FPbyZone[addon.player.faction] or {}) do
                    if currentMap == mapId then
                        validFP = true
                        if not RXPCData.flightPaths[flightId] then
                            RXPCData.flightPaths[flightId] = addon.FPDB[addon.player.faction][flightId] and addon.FPDB[addon.player.faction][flightId].name
                        end
                    end
                end
                if not validFP or fpId and RXPCData.flightPaths[fpId] then
                    addon.SetElementComplete(self)
                end
            else
                local nearestFP = addon.GetNearestFp()
                if nearestFP then
                    RXPCData.flightPaths[nearestFP] = addon.FPDB[addon.player.faction][nearestFP] and addon.FPDB[addon.player.faction][nearestFP].name
                end
                addon.SetElementComplete(self)
            end
        elseif (GetTime() - element.confirm) > 10 and event == "GOSSIP_SHOW" and addon.SelectGossipType("taxi") then
            element.confirm = GetTime()
        end
    end
end

function addon.functions.fly(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, location = ...
        element.tag = "fly"

        if text and text ~= "" then
            element.text = text
        elseif not location then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid text/location\n" .. self)
        else
            element.text = L("Fly to") .. " " .. location
        end
        if location and location ~= "" and location:find("%w") then
            element.location = strupper(location)
        else
            element.location = nil
        end
        element.tooltipText = addon.icons.fly .. element.text
        return element
    end

    if not addon.settings.profile.enableFPAutomation or IsShiftKeyDown() then return end

    local element = self.element
    if not element.step.active then return end
    local event = ...
    if not element.confirm and event == "GOSSIP_SHOW" and addon.SelectGossipType("taxi") then
        element.confirm = true
    elseif event == "TAXIMAP_OPENED" and addon.settings.profile.enableFPAutomation and
        element.location then
        addon:TAXIMAP_OPENED()
        local loc = element.location:gsub("%-","%%-")
        local x,y,_,map = UnitPosition('player')
        for i = 1, NumTaxiNodes() do
            local id = addon.flightInfo[i]
            local name = id and addon.FPDB[addon.player.faction] and addon.FPDB[addon.player.faction][id] and addon.FPDB[addon.player.faction][id].name
            if not name and addon.taxiPos then
                local data = addon.taxiPos[map][id]
                name = data and data.name
            end
            if name and strupper(name):find(loc) then
                local button = getglobal("TaxiButton" .. i)
                if button then
                    _G.TaxiNodeOnButtonEnter(button)
                end
                TakeTaxiNode(i)
                return not _G.GameTooltip:IsForbidden() and _G.GameTooltip:Hide()
            end
        end
    elseif (event and UnitOnTaxi("player")) or
        (event == "PLAYER_CONTROL_LOST" and GetTime() - addon.flightInfo.startFlight < 1.5) then
        addon.SetElementComplete(self)

        -- Only send flight announcements on initial loss
        if event == "PLAYER_CONTROL_LOST" then
            addon.comms:AnnounceStepEvent('.fly', {
                destination = addon.flightInfo.dest,
                duration = addon.flightInfo.timer,
                guideName = RXPCData.currentGuideName
            })
        end

        if element.timer then
            addon.StartTimer(element.timer,element.timerText)
        end
    end
end

--

-- "CONFIRM_XP_LOSS,PLAYER_UNGHOST"
function addon.functions.deathskip(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text = ...
        if text and text ~= "" then
            element.text = text
        else
            element.text = L("Die and respawn at the graveyard")
        end
        element.tooltipText = addon.icons.deathskip .. element.text
        addon.step.softcore = true
        element.targets = {L"Spirit Healer","Alithea","Anara","Koiter"}
        return element
    end
    if not self.element.step.active then return end
    local event = ...
    if event == "CONFIRM_XP_LOSS" then
        addon.SetElementComplete(self)
        if C_PlayerInteractionManager then
            self:SetScript("OnUpdate", function()
                C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.SpiritHealer)
                C_PlayerInteractionManager.ClearInteraction(Enum.PlayerInteractionType.SpiritHealer)
                self:SetScript("OnUpdate",nil)
            end)
        elseif _G.AcceptXPLoss then
            _G.AcceptXPLoss()
            _G.StaticPopup1:Hide()
            _G.StaticPopup2:Hide()
        end
    elseif event == "GOSSIP_SHOW" then
        addon.SelectGossipType("healer")
    end
end

function addon.functions.addquestitem(self, text, id, questId)
    if type(self) == "string" then -- on parse
        addon.questItemList[tonumber(id) or ""] = tonumber(questId)
    end
end

addon.questItemList = {}
function addon.functions.collect(self, ...)
    if type(self) == "string" then -- on parse
        local text, id, qty, questId, objFlags, flags, arg1, arg2, arg3, arg4 = ...
        local element = {ids = id}
        element.dynamicText = true
        id = tonumber(id:match('^%d+'))
        objFlags = tonumber(objFlags) or 0
        flags = tonumber(flags) or 0
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': Invalid item ID provided\n' .. self)
        end
        element.objFlags = objFlags
        element.questId = tonumber(questId)
        element.id = id
        qty = tonumber(qty)
        element.qty = qty or 1
        element.multiplier = 1
        element.itemName = addon.GetItemName(id)
        --[[
.collect itemId,quantity,questId,objFlags,flags

flags:
1   (0x1): Disables the checkBox
2   (0x2): Subtract from the given quest objective (given by the objective bitmask from objFlags)
4   (0x4): Element completes itself if all of the flagged objectives are complete (see objFlags again)
8   (0x8): Includes items in your bank into the item count
16 (0x10): Element doesn't complete itself if the quest is turned in
32 (0x20): Subtracts from the given skill or profession given by arg1
negative sign: same as 3 (0x2+0x1), -5 subtracts 5 units for each quest item

By default, the element will complete itself if the quest ID provided is turned in

objFlags:
Each power of 2 corresponds to an objective, as an example:
Set objN to 1 if you want ot track obj1, 0 otherwise for each quest objective
obJflag = obj1*2^0 + obj2*2^1 + obj3*2^2 + ... + objN*2^(N-1)

if objFlags is omitted or set to 0, element will complete if you have the quest in your quest log
]]
        if flags < 0 then
            element.multiplier = -flags;
            element.profession = arg1
            flags = 3
        end
        element.textOnly = bit.band(flags, 0x1) == 0x1
        element.subtract = bit.band(flags, 0x2) == 0x2
        element.checkObjectives = bit.band(flags, 0x4) == 0x4
        element.includeBank = bit.band(flags, 0x8) == 0x8
        element.ignoreTurnIn = bit.band(flags, 0x10) == 0x10
        if arg1 and element.subtract and element.multiplier == 1 then
            element.multiplier = tonumber(arg1) or 1
        end
        element.totalMinimum = 0
        if bit.band(flags, 0x20) == 0x20 then
            element.profession = arg1
            element.multiplier = tonumber(arg2) or 1
            element.professionStart = tonumber(arg3) or 0
            element.totalMinimum = tonumber(arg4) or 0
        end

        element.flags = flags
        if text and text ~= "" then
            element.rawtext = text
            element.tooltipText = addon.icons.collect .. element.rawtext
        else
            element.requestFromServer = true
            element.text = " "
        end
        if objFlags ~= 0 and element.questId and element.questId > 0 then
            addon.questItemList[id] = element.questId
        end
        return element
    end

    local element = self.element
    local questId = element.questId
    local id = element.id
    local name = addon.GetItemName(id)
    local step = element.step
    local numRequired = element.qty
    local event = ...
    local isComplete
    if name then
        element.requestFromServer = nil
    else
        name = ""
        element.requestFromServer = true
    end
    element.itemName = name

    if step.active and questId then
        if element.objFlags == 0 and questId then
            -- adds the item to the active item list, in case it's an item that starts a quest

            step.activeItems = step.activeItems or {}
            if not event then
                step.activeItems[id] = true
            elseif event ~= "BAG_UPDATE_DELAYED" and event ~= "WindowUpdate" and addon.activeItems then
                local isItemActive = not IsOnQuest(questId)
                step.activeItems[id] = isItemActive
                addon.activeItems[id] = isItemActive
                addon.UpdateItemFrame()
            end
        elseif element.profession then
            local skill = addon.GetSkillLevel(element.profession)
            if skill >= 0 then
                skill = math.max(0,skill-element.professionStart)
                numRequired = numRequired - skill * element.multiplier
                if numRequired < 0 then numRequired = 0 end
            end
        elseif element.subtract or element.checkObjectives then
            local bitMask = element.objFlags
            local objIndex = {}
            for i = 0, 7 do
                if bit.band(bit.rshift(bitMask, i), 0x1) == 0x1 then
                    tinsert(objIndex, i + 1)
                end
            end
            local objectives = addon.GetQuestObjectives(questId,element.step.index)
            if objectives then
                if element.subtract then
                    for _, n in ipairs(objIndex) do
                        local obj = objectives[n]
                        if obj then
                            obj.numFulfilled = obj.numFulfilled or 0
                            numRequired = numRequired - obj.numFulfilled*element.multiplier
                        end
                    end
                    if numRequired < 0 then numRequired = 0 end
                elseif element.checkObjectives then
                    isComplete = #objIndex > 0
                    for _, obj in ipairs(objIndex) do
                        isComplete = isComplete and objectives[obj] and
                                         objectives[obj].finished
                    end
                end
            end
        end
    end

    numRequired = math.max(math.ceil(numRequired),element.totalMinimum)
    --
    local function GetCount(itemId)
        local count = GetItemCount(itemId,element.includeBank)

        if count == 0 then
            if C_ToyBox and PlayerHasToy(itemId) and C_ToyBox.IsToyUsable(itemId) then
                count = count + 1
            end

            for i = 1, _G.INVSLOT_LAST_EQUIPPED do
                if GetInventoryItemID("player", i) == itemId then
                    count = count + 1
                    break
                end
            end
        end
        return count
    end

    local count = 0
    for itemId in string.gmatch(element.ids,"%d+") do
        count = count + GetCount(tonumber(itemId))
    end

    if (numRequired > 0 and count > numRequired) or
        (questId and
            ((element.objFlags == 0 and IsOnQuest(questId)) or (not element.ignoreTurnIn and
                (isComplete or IsQuestTurnedIn(questId) or IsQuestComplete(questId))))) then
        count = numRequired
    end

    if numRequired <= 0 then
        element.textOnly = true
        if element.text then
            element.text = nil
            addon.UpdateStepText(self)
        end
    elseif gameVersion and gameVersion > 90000 then
        if element.rawtext then
            element.tooltipText = addon.icons.collect .. element.rawtext
            element.text = fmt("%s\n%d/%d %s", element.rawtext, count,
                                         numRequired, element.itemName)
        else
            element.text = fmt("%d/%d %s", count, numRequired,
                                         element.itemName)
            element.tooltipText = addon.icons.collect .. element.text
        end
    else
        if element.rawtext then
            element.tooltipText = addon.icons.collect .. element.rawtext
            element.text = fmt("%s\n%s: %d/%d", element.rawtext,
                                         element.itemName, count, numRequired)
        else
            element.text = fmt("%s: %d/%d", element.itemName, count,
                                         numRequired)
            element.tooltipText = addon.icons.collect .. element.text
        end
    end

    if element.lastCount ~= count then addon.UpdateStepText(self) end
    element.lastCount = count

    if numRequired > 0 and count >= numRequired then
        if not element.completed and step.active == true then
            addon.comms:AnnounceStepEvent('.collect', {
                title = element.text,
                completionText = element.text,
                step = RXPCData.currentStep,
                guideName = RXPCData.currentGuideName
            })
        end
        addon.SetElementComplete(self, true, true)
    elseif numRequired == count then
        addon.SetElementComplete(self, true, true)
    elseif not element.textOnly then
        addon.SetElementIncomplete(self)
    end
    addon.IsOnTurnInGuide(self)
end

function addon.functions.destroy(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No item ID provided\n' .. self)
        end

        element.id = id

        element.itemName = addon.GetItemName(id)

        if text and text ~= "" then
            element.rawtext = text
            element.tooltipText = addon.icons.collect .. element.rawtext
        else
            element.requestFromServer = true
            element.text = " "
        end
        return element
    end

    local element = self.element
    local step = element and element.step
    if step and step.active then
        local name = addon.GetItemName(element.id)

        if name then
            element.requestFromServer = nil
        else
            name = ""
            element.requestFromServer = true
        end
        element.itemName = name

        local count = GetItemCount(element.id)

        if element.rawtext then
            element.tooltipText = addon.icons.collect .. element.rawtext
            element.text = element.rawtext
        else
            element.text = fmt(L("Throw away %s%s from your bags"),
                                         addon.icons.collect, element.itemName)
            element.tooltipText = element.text
        end
        addon.UpdateStepText(self)

        if count == 0 then
            addon.SetElementComplete(self)
        else
            addon.SetElementIncomplete(self)
        end
    end
end

function addon.functions.xp(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, str, skipstep, arg1 = ...
        skipstep = tonumber(skipstep)
        local operator, level, xp
        if str then
            str = str:gsub(" ", "")
            operator, level, xp = str:match("(<?)%s*(%d+)([%+%.%-]?%d*)")
        end
        element.ref = arg1
        element.xp = tonumber(xp)
        element.level = tonumber(level)
        if not level then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': Invalid syntax\n' .. self)
        end
        if operator == "<" then element.reverseLogic = true end

        if text and text ~= "" then
            element.text = text
        elseif not skipstep then
            if element.xp and element.xp ~= 0 then
                if element.xp < 0 then
                    element.text = fmt(
                                       L("Grind until you are %d xp away from level %s"),
                                       -1 * element.xp, level)
                    element.rawtext = element.text
                elseif element.xp >= 1 then
                    element.text = fmt(
                                       L("Grind until you are %s xp into level %s"),
                                       xp, level)
                else
                    element.text = fmt(
                                       L("Grind until you are %.0f%% into level %s"),
                                       element.xp * 100, level)
                    element.rawtext = element.text
                end
            else
                element.text = "Grind to level " .. tostring(level)
            end
        end
        element.skipstep = skipstep
        if skipstep then element.textOnly = true end
        if not element.xp then element.xp = 0 end
        return element
    end

    local element = self.element
    local step = element.step
    local reverseLogic = element.reverseLogic
    local xpskip = addon.settings.profile.enableXpStepSkipping or element.reverseLogic
    if addon.isHidden or
             (not xpskip and
                 element.textOnly == true and not element.reverseLogic) then
        return
    end

    local currentXP = UnitXP("player")
    local maxXP = UnitXPMax("player")
    local level = UnitLevel("player")
    local xp = element.xp

    local ref = element.ref
    local guide = addon.currentGuide

    if ref and not guide.labels[ref] then
        return
    end

    if element.rawtext then
        local reqlevel = element.level
        if xp < 0 then
            reqlevel = element.level - 1
        end
        if level == reqlevel then
            local minXP = 0
            if xp < 0 then
                minXP = maxXP + xp
            elseif xp >= 1 then
                minXP = xp
            else
                minXP = maxXP * xp
            end
            element.text = fmt("%s (%d/%d)",element.rawtext,minXP,maxXP)
            element.rawtext = nil
        end
    end

    --print('ok',...)
    if element.skipstep and element.skipstep < 0 then reverseLogic = true end
    if ((xp < 0 and (level >= element.level or
        (level == element.level - 1 and currentXP >= maxXP + xp))) or
        (xp >= 1 and
            ((level > element.level) or
                (element.level == level and currentXP >= xp))) or
        (xp >= 0 and xp < 1 and ((level > element.level) or
            (element.level == level and currentXP >= maxXP * xp)))) ==
        not reverseLogic then
        if element.skipstep then
            if step.active and not step.completed and not(LoremasterEnabled() and not reverseLogic) then
                local n = ref and guide.labels[ref]
                if n then
                    element.tooltipText = fmt(
                                    L("Level requirements not met - Skip to step %d"),
                                    n)
                    addon.nextStep = guide.labels[ref]
                    return
                elseif element.textOnly == true then
                    element.tooltipText = L"Step skipped: XP requirements are not met"
                end
                addon.updateSteps = true
                step.completed = true
            elseif step.active and not step.completed then
                element.tooltipText = nil
            end
        else
            addon.SetElementComplete(self, true)
        end
    end

end

function addon.functions.skill(self, text, skillName, str, skipstep, useMaxValue)
    if type(self) == "string" then -- on parse
        local element = {}
        local operator, level
        skipstep = tonumber(skipstep)
        if str then
            str = str:gsub(" ", "")
            operator, level = str:match("(<?)%s*(%d+)")
        end

        level = tonumber(level)
        if not (level and skillName) then
            addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid skill name or point threshold\n" .. self)
            return
        end
        element.level = level
        element.skill = skillName
        if operator == "<" then element.reverseLogic = true end

        if text ~= "" then element.text = text end
        element.skipstep = skipstep
        element.useMaxValue = useMaxValue
        if skipstep then element.textOnly = true end
        return element
    end

    local element = self.element
    local step = element.step
    if not step.active then return end
    local level = addon.GetSkillLevel(element.skill, element.useMaxValue)
    if not level then return end
    local reverseLogic = element.reverseLogic
    -- print(level,element.level,(level >= element.level) == not reverseLogic)

    local skillLevelCheck = level >= element.level
    if element.skill == "riding" and gameVersion >= 30000 and addon.mountIDs and not element.mountTrained and skillLevelCheck and not (reverseLogic and element.skipstep) then
        local skillLevel = element.level
        local function MountCheck(range)
            --print('g',range)
            for _,id in pairs(addon.mountIDs[range]) do
                if addon.IsPlayerSpell(id) then
                    element.mountTrained = true
                    return true
                end
            end
            return false
        end

        if (skillLevel >= 75 and skillLevel < 150 and level < 150 and not MountCheck(75)) or
        (skillLevel >= 150 and skillLevel < 225 and level < 225 and not MountCheck(150)) or
        (skillLevel >= 225 and skillLevel < 300 and level < 300 and not MountCheck(225)) or
        (skillLevel >= 300 and not (MountCheck(300) or MountCheck(375))) then
            skillLevelCheck = false
        end
    end

    if skillLevelCheck == not reverseLogic then
        if element.skipstep then
            if step.active and not step.completed and not addon.isHidden then
                addon.updateSteps = true
                step.completed = true
            end
        else
            addon.SetElementComplete(self, true)
        end
    end

end

function addon.functions.mountcount(self, ...)
    if gameVersion < 30000 or not addon.mountIDs then
        return
    elseif type(self) == "string" then -- on parse
        local element = {}
        local text, skill, str = ...
        local operator, eq, total, minskill, maxskill

        if str then
            str = str:gsub(" ", "")
            operator, eq, total = str:match("([<>]?)(=?)%s*(%d+)")
        end
        if skill then
            minskill,maxskill = skill:match("(%d+)%-(%d+)")
        end
        skill = tonumber(skill)
        maxskill = tonumber(maxskill) or skill
        minskill = tonumber(minskill) or skill
        --flags = tonumber(flags) or 0
        --element.enableBank = bit.band(flags, 0x1) == 0x1

        element.minskill = minskill
        element.maxskill = maxskill
        element.total = tonumber(total)
        if not (element.total and minskill and maxskill) then
            return addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid skill/count\n" .. self)
        end
        if operator == "<" then
            element.operator = -1
        elseif operator == ">" then
            element.operator = 1
        else
            element.operator = 0
        end
        if eq == "=" then element.eq = true end

        if text ~= "" then element.text = text end

        element.textOnly = true

        return element
    end

    local element = self.element
    local step = element.step
    if not step.active or addon.isHidden then return end
    local operator = element.operator
    local eq = element.eq
    local total = element.total
    local count = 0

    for i = 75,375,75 do
        if i > element.maxskill then
            break
        end

        if i >= element.minskill then
            for _,id in pairs(addon.mountIDs[i]) do
                if addon.IsPlayerSpell(id) then
                    count = count + 1
                end
            end
        end
    end
    --print('-',count,element.minskill,element.maxskill)
    if not ((eq and count == total) or (count * operator > total * operator) or
        (not eq and operator == 0 and count >= total)) then
        if step.active and not step.completed then
            addon.updateSteps = true
            step.completed = true
            if operator < 0 then
                element.tooltipText = "Step skipped: You already have the required item for this step"
            else
                element.tooltipText = "Step skipped: You don't have the required item for this step"
            end
        end
    elseif step.active then
        element.tooltipText = nil
    end

end

function addon.functions.maxskill(self, text, skillName, str, skipstep)
    return addon.functions.skill(self, text, skillName, str, skipstep, true)
end

function addon.functions.reputation(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, faction, str, value, skipStep = ...
        local operator, standing, rep
        if str then
            str = str:gsub(" ", "")
            operator, standing, rep =
                str:match("(<?)%s*([%d%w]+)([%+%.%-]?%d*)")
        end

        faction = tonumber(faction)

        if value then
            operator, rep = value:match("(<?)%s*(%-?%d+%.?%d*)")
        end
        element.repValue = tonumber(value) or tonumber(rep) or 0

        if standing then
            standing = addon.repStandingID[strlower(standing)]
            standing = standing or tonumber(standing)
        end

        if not (faction and standing) then
            addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid faction/standing\n" .. self)
            return
        end

        element.faction = faction
        element.standing = standing

        if operator == "<" then
            element.operator = false
        else
            element.operator = true
        end

        element.skipStep = skipStep
        if skipStep then element.textOnly = true end

        if text and text ~= "" then
            element.text = text
        elseif not skipStep then
            local standinglabel = getglobal(
                                      "FACTION_STANDING_LABEL" ..
                                          element.standing)
            local factionname = addon.GetFactionInfoByID(element.faction) or ""
            if element.repValue and element.repValue ~= 0 then
                if element.repValue < 0 then
                    element.text = fmt(
                                       L("Grind until you are %d away from %s with %s"),
                                       -1 * element.repValue, standinglabel,
                                       factionname)
                elseif element.repValue >= 1 then
                    element.text = fmt(
                                       L("Grind until you are %s into %s with %s"),
                                       rep, standinglabel, factionname)
                else
                    element.text = fmt(
                                       L("Grind until you are %.0f%% into %s with %s"),
                                       element.repValue * 100, standinglabel,
                                       factionname)
                end
            else
                element.text = fmt("Grind to %s with %s",
                                             standinglabel, factionname)
            end
        end

        return element
    end

    local element = self.element
    local step = element.step
    local _, _, standing, bottomValue, topValue, earnedValue =
        addon.GetFactionInfoByID(element.faction)
    local relativeValue = earnedValue
    local replength = topValue - bottomValue
    if relativeValue < 0 then
        relativeValue = replength + earnedValue
    else
        relativeValue = earnedValue - bottomValue
    end
    --print('r:',standing,bottomValue,topValue,earnedValue,topValue-bottomValue,relativeValue)

    if ((element.repValue < 0 and (standing >= element.standing or
        (standing == element.standing - 1 and earnedValue >= topValue +
            element.repValue))) or
        (element.repValue >= 1 and ((standing > element.standing) or
            (element.standing == standing and earnedValue >= bottomValue +
                element.repValue))) or
        (element.repValue >= 0 and element.repValue < 1 and
            ((standing > element.standing) or
                (element.standing == standing and relativeValue >=
                    replength * element.repValue)))) ==
        element.operator then
        if not element.skipStep then
            addon.SetElementComplete(self, true)
        elseif step.active and not addon.isHidden then
            addon.updateSteps = true
            step.completed = true
             self.element.tooltipText = "Step skipped: Reputation condition not met"
        end
    end
end

function addon.functions.vendor(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.id = tonumber(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = L("Sell junk/resupply")
        end
        element.tooltipText = addon.icons.vendor .. element.text
        return element
    end

    local event = ...
    local id = self.element.id

    if event == "MERCHANT_SHOW" then
        self.element.activity = addon.GetNpcId()
    elseif event == "MERCHANT_CLOSED" and
        (self.element.activity == id or not id) then
        self.element.activity = nil
        addon.SetElementComplete(self)
    end
end

function addon.functions.trainer(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.id = tonumber(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = L("Train skills")
        end
        element.tooltipText = addon.icons.trainer .. element.text
        return element
    end

    local event = ...
    local id = self.element.id

    if event == "TRAINER_SHOW" then
        self.element.activity = addon.GetNpcId()
    elseif event == "TRAINER_CLOSED" and (self.element.activity == id or not id) then
        self.element.activity = nil
        addon.SetElementComplete(self)
    end
end

function addon.functions.stable(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.id = tonumber(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = L("Stable your pet")
        end
        element.tooltipText = addon.icons.stable .. element.text
        return element
    end

    local event = ...
    local id = self.element.id

    if event == "PET_STABLE_SHOW" then
        self.element.activity = addon.GetNpcId()
    elseif event == "PET_STABLE_CLOSED" and
        (self.element.activity == id or not id) then
        self.element.activity = nil
        addon.SetElementComplete(self)
    end
end

function addon.functions.tame(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.id = tonumber(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = "-"
        end
        element.tooltipText = addon.icons.tame .. element.text
        return element
    end

    local event, unit, guid, spellId = ...
    local id = self.element.id

    if spellId == 1515 and unit == "player" then
        if event == "UNIT_SPELLCAST_START" then
            self.element.petId = id
        elseif id and event == "UNIT_SPELLCAST_SUCCEEDED" and id ==
            self.element.petId then
            self.element.petId = nil
            addon.SetElementComplete(self)
            return
        end
    end
end

function addon.functions.money(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, money = ...
        local prefix = money:sub(1, 1)
        if prefix == "<" then
            element.greaterThan = false
        elseif prefix == ">" then
            element.greaterThan = true
        else
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid arguments\n" .. self)
        end
        element.money = tonumber(money:match("(%d+%.?%d*)"))
        if element.money then
            element.money = element.money * 1e4
        else
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid arguments\n" .. self)
        end
        element.textOnly = true
        if text and text ~= "" then element.text = text end
        return element
    end
    if not self.element.step.active then return end
    if GetMoney() >= self.element.money then
        self.element.step.completed = self.element.greaterThan
    else
        self.element.step.completed = not (self.element.greaterThan)
    end
    if self.element.step.completed then addon.updateSteps = true end
end

function addon.functions.next(skip, guide)
    if type(skip) == "string" then
        local element = {}
        element.textOnly = true
        return element
    elseif skip and
        (type(skip) == "number" or (skip.step and (not skip.step.active and not skip.step.completed))) then
        return
    end

    local next
    if type(guide) == "table" then
        next = guide.next
    elseif type(guide) == "string" then
        next = guide
        guide = addon.currentGuide
    else
        guide = addon.currentGuide
        next = guide.next
    end

    if next then
        local group = guide.group
        local guideSkip
        local nextGuide
        --Different guides can be separated by a semicolon when using #next
        for guideName in string.gmatch(guide.next,"%s*([^;]+)%s*") do
            next = guideName:gsub("^%s*(.+)\\%s*", function(grp)
                group = grp
                return ""
            end)
            next = next:gsub("^(%d)-(%d%d?)", addon.affix)
            --print(1,next,guideSkip)
            guideSkip = addon.GetGuideTable(group, next)
            --Iterates through every guide until it finds a valid one
            --It uses the last one listed in case none of them are valid
            if guideSkip and addon.IsGuideActive(guideSkip) then
                nextGuide = guideSkip
                break
            end
        end
        --print(guideSkip)
        if addon.game ~= "CLASSIC" then
            local faction = next:match("Aldor") or next:match("Scryer")
            if not addon.stepLogic.AldorScryerCheck(faction) then
                if faction == "Aldor" then
                    next = next:gsub("Scryer", "Aldor")
                elseif faction == "Scryer" then
                    next = next:gsub("Aldor", "Scryer")
                end
            end
        else
            local era = "(Era)"
            local som = "(SoM)"

            if addon.settings.profile.season == 1 then
                next = next:gsub(era, som)
            else
                next = next:gsub(som, era)
            end
        end

        nextGuide = nextGuide or addon.GetGuideTable(group, next)
        if nextGuide then
            if (not addon.stepLogic.SeasonCheck(nextGuide)) or
                (nextGuide.hardcore and not (addon.settings.profile.hardcore) or
                    nextGuide.softcore and addon.settings.profile.hardcore) then
                return addon.functions.next(nil, nextGuide)
            else
                if skip ~= false then
                    addon:LoadGuide(nextGuide)
                    return true
                else
                    return group,next
                end
            end
        elseif guideSkip then
            --Used in case it doesn't find a valid guide after the name substition
            --Name substitution is deprecated, list multiple guides instead
            return addon.functions.next(nil, guideSkip)
        end
    end
end

function addon.functions.train(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id, flags = ...
        local spellId = tonumber(id)

        if spellId then
            element.id = spellId
        else
            element.id = select(7, GetSpellInfo(id))
        end

        if type(spellId) ~= "number" then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid spell name/id\n" .. self)
        end
        element.flags = tonumber(flags) or 0
        if bit.band(element.flags,0x1) == 0x1 then
            element.textOnly = true
        end
        if element.id and not C_Spell.IsSpellDataCached(element.id) then
            C_Spell.RequestLoadSpellData(element.id)
        end

        element.text = text

        element.requestFromServer = true
        element.reverse = bit.band(element.flags,0x2) == 0x2
        return element
    end
    local element = self.element
    local event = ...
    local rank = element.rank or 0
    local step = element.step
    if not element.rank and C_Spell.IsSpellDataCached(element.id) then
        rank = GetSpellSubtext(element.id) or ""
        rank = tonumber(rank:match("(%d+)")) or 0
        element.rank = rank
        element.requestFromServer = nil
    end
    if not element.title then element.title = GetSpellInfo(element.id) end

    if step.active and (addon.IsPlayerSpell(element.id) ~= element.reverse) then
        if element.textOnly then
            self.element.step.completed = true
            addon.updateSteps = true
            if not element.text then
                if element.reverse then
                    element.tooltipText = fmt("Step skipped: You don't have the required spell or ability (%s)",element.title or "")
                else
                    element.tooltipText = fmt("Step skipped: You already have the required spell or ability (%s)",element.title or "")
                end
            end
        else
            addon.SetElementComplete(self, true)
        end
    end

    if element.title and not element.reverse then
        if element.completed or element.step.completed or
            not element.step.active then
            addon.skillList[element.title] = nil
        else
            addon.skillList[element.title] = element.rank
        end
    else
        element.requestFromServer = true
    end
end

function addon.functions.hastyhearth(self,...)
    if type(self) == "string" then
        local text,flag = ...
        if flag then
            flag = 1
        else
            flag = 3
        end
        return addon.functions.train(self, text, 83944, flag)
    end
    return addon.functions.train(self,...)
end

function addon.functions.istrained(self, text, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local args = {...}
        element.id = args
        for i, id in pairs(args) do
            id = tonumber(id)
            args[i] = id
            if id and not C_Spell.IsSpellDataCached(id) then
                C_Spell.RequestLoadSpellData(id)
            end
        end
        element.textOnly = true
        return element
    end
    if addon.isHidden then return end
    for _, id in pairs(self.element.id) do
        if addon.IsPlayerSpell(id) then
            self.element.step.completed = true
            addon.updateSteps = true
            return
        end
    end
end

function addon.functions.abandon(self, text, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        -- element.tag = "abandon"
        local ids = {...}
        element.ids = {}
        for n,id in ipairs(ids) do
            element.ids[n] = GetQuestId(tonumber(id))
        end
        if not element.ids[1] then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.title = ""
        --element.questId = id
        -- element.title = addon.GetQuestName(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = _G.ABANDON_QUEST_ABBREV .. " *quest*"
            element.requestFromServer = true
        end
        if element.text:match("%*quest%*") then
            element.retrieveText = true
        end
        -- print("Q1",element.text)
        element.tooltipText = addon.icons.abandon .. element.text
        -- print(element.rawtext)
        return element
    else
        local element = self.element

        local id = element.ids[1]
        if element.retrieveText then
            local quest = addon.GetQuestName(id, element)
            if quest then
                element.title = quest
                element.text = element.text:gsub("%*quest%*", quest)
                if element.requestFromServer then
                    element.requestFromServer = nil
                    addon.UpdateStepText(self)
                end
            else
                element.title = ""
                element.requestFromServer = true
            end
        end
        if not element.step.active then return end
        element.tooltipText = addon.icons.abandon .. element.text

        local match = true
        for _,qid in pairs(element.ids) do
            if IsOnQuest(qid) then
                match = false
                break
            end
        end

        if match then
            addon.SetElementComplete(self, true)
        else
            addon.SetElementIncomplete(self)
        end

    end

end

addon.petFamilyLookup = {
    owl = 132192,
    cat = 132185,
    ravager = 132194,
    scorpid = 132195,
    dragonhawk = 132188,
    wolf = 132203,
}

function addon.functions.petfamily(self, text, ...)
    if type(self) == "string" then
        local element = {}
        local ids = {...}
        for i = #ids, 1, -1 do
            local id = ids[i]
            local multiplier = 1
            if id:sub(1,1) == "!" then
                multiplier = -1
                id = id:sub(2,-1)
            end
            id = addon.petFamilyLookup[id] or tonumber(id)
            if id then
                id = id*multiplier
            end
            ids[i] = id
        end
        if not next(ids) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid icon ID\n" .. self)
        end
        element.ids = ids
        if text and text ~= "" then element.text = text end
        element.textOnly = true

        return element
    end
    local pass
    for i,id in pairs(self.element.ids) do
        if addon.petFamily == id then
            pass = true
            break
        elseif addon.petFamily == -id then
            pass = false
            break
        end
    end

    if self.element.step.active and not pass then
        self.element.step.completed = true
        addon.updateSteps = true
        self.element.tooltipText = "Step skipped: Your pet family can't learn this spell"
    end
end

function addon.functions.areapoiexists(self, text, zone, ...)
    if type(self) == "string" then
        local element = {}
        element.zone = addon.GetMapId(zone) or tonumber(zone)
        local ids = {...}
        for i,v in pairs(ids) do
            ids[i] = tonumber(v)
        end
        if not (ids[1] and element.zone) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid PoI ID or map ID\n" .. self)
        end
        element.ids = ids
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local element = self.element
    local exists = false
    local zoneId = element.zone
    for _,id in pairs(element.ids) do
        if zoneId and id and C_AreaPoiInfo.GetAreaPOIInfo(zoneId, id) then
            exists = true
        end
    end

    local event = text
    local step = element.step
    if event ~= "WindowUpdate" and step.active and not addon.settings.profile.debug and (not exists) == not element.reverse and not addon.isHidden then
        element.tooltipText = "Step skipped: Quest unavailable today"
        step.completed = true
        addon.updateSteps = true
    elseif step.active and not step.completed then
        element.tooltipText = nil
    end
end

events.questcount = events.complete
function addon.functions.questcount(self, text, count, ...)
    if type(self) == "string" then
        local element = {}
        local operator, n, flag = string.match(count, "([<>]?)%s*(%d+)([%*]*)")
        if operator == "<" then
            element.reverse = true
        end
        if flag == "*" then
            element.ignoreTurnedInQuests = true
        end
        n = tonumber(n)
        element.total = n
        local ids = {...}
        for i,v in ipairs(ids) do
            ids[i] = tonumber(v)
        end
        if not (n) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid argument\n" .. self)
        end
        element.ids = ids
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local element = self.element
    local step = element.step
    local event = text
    if not step.active then return end
    count = 0
    if element.ids[1] then
        for _,quest in pairs(element.ids) do
            local id = GetQuestId(quest)
            addon.questAccept[id] = element
            if IsOnQuest(id) or not element.ignoreTurnedInQuests and IsQuestTurnedIn(id) then
                count = count + 1
            end
        end
    else
        _,count = GetNumQuests()
    end

    local step = element.step
    if event ~= "WindowUpdate" and step.active and not addon.settings.profile.debug and (count < element.total) == not element.reverse and not addon.isHidden then
        --element.tooltipText = "Step skipped: Missing pre-requisites"
        step.completed = true
        addon.updateSteps = true
    elseif step.active and not step.completed then
        element.tooltipText = nil
    end
end

function addon.functions.isQuestComplete(self, ...)
    if type(self) == "string" then
        local element = {}
        local text, id, args, reverse = ...
        id = GetQuestId(tonumber(id))
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        if reverse then
            element.reverse = true
        end
        if args == "account" then
            element.account = true
        end
        element.questId = id
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local element = self.element
    local step = element.step
    if not step.active then return end
    local id = element.questId
    local event = ...
    local isCompleted = not(IsOnQuest(id) and IsQuestComplete(id)) == not(element.reverse)
    if event ~= "WindowUpdate" and isCompleted and not addon.settings.profile.debug and not addon.isHidden then
        step.completed = true
        addon.updateSteps = true
        element.tooltipText = "Step skipped: Missing pre-requisites"
    elseif not step.completed then
        element.tooltipText = nil
    end
end

function addon.functions.isQuestNotComplete(self, text, id, args, ...)
    if type(self) == "string" then
        return addon.functions.isQuestComplete(self,text,id,args,true)
    end
    return addon.functions.isQuestComplete(self,text,id,args,...)
end

function addon.functions.isOnQuest(self, text, ...)
    if type(self) == "string" then
        local element = {}
        local ids = {...}
        for i,v in pairs(ids) do
            ids[i] = GetQuestId(tonumber(v))
        end
        if not ids[1] then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.questIds = ids
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local element = self.element
    local onQuest = false
    local event = text
    local step = element.step

    if not step.active then return end

    for _,id in pairs(element.questIds) do
        if IsOnQuest(id) then
            onQuest = true
        end
    end


    if event ~= "WindowUpdate" and not addon.settings.profile.debug and (not onQuest) == not element.reverse and not addon.isHidden then
        element.tooltipText = "Step skipped: Missing pre-requisites"
        step.completed = true
        addon.updateSteps = true
    elseif not step.completed then
        element.tooltipText = nil
    end
end

function addon.functions.isNotOnQuest(...)
    local element = addon.functions.isOnQuest(...)
    if type(element) == "table" then
        element.reverse = true
        return element
    end
end

function addon.functions.isQuestTurnedIn(self, text, ...)
    if type(self) == "string" then
        local element = {}
        local args = {...}
        local ids = {}
        local arg
        for _, v in pairs(args) do
            local id = tonumber(v)
            if id then
                table.insert(ids,GetQuestId(v))
            elseif not arg then
                arg = v
            end
        end
        if not ids[1] then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        if arg == "account" then element.account = true end
        element.questIds = ids
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local element = self.element
    local step = element.step
    if not step.active then return end
    local ids = element.questIds
    local questTurnedIn = false
    local event = text
    local accountWide = element.account

    if element.reverse then
        for _, id in pairs(ids) do
            questTurnedIn = questTurnedIn or not IsQuestTurnedIn(id,accountWide)
        end
    else
        for _, id in pairs(ids) do
            questTurnedIn = questTurnedIn or IsQuestTurnedIn(id,accountWide)
        end
    end
    if event ~= "WindowUpdate" and not questTurnedIn and not addon.settings.profile.debug and not addon.isHidden then
        step.completed = true
        addon.updateSteps = true
        element.tooltipText = "Step skipped: Missing pre-requisites"
    elseif not step.completed then
        element.tooltipText = nil
    end
end

function addon.functions.isQuestAvailable(self, ...)
    if type(self) == "table" and self.element then
        self.element.reverse = true
    end
    return addon.functions.isQuestTurnedIn(self, ...)
end

function addon.functions.hideifcomplete(self)
    if type(self) == "string" then
        return {textOnly = true, keepUpdating = true}
    end
    local step = self.element.step
    if step.active then
        step.hidewindow = step.completed
    else
        step.hidewindow = step.hidewindow or step.completed
    end
end

function addon.functions.spellmissing(self, text, id)
    if type(self) == "string" then -- on parse
        id = tonumber(id)
        if not id then return end
        return {id = id, textOnly = true}
    end
    local element = self.element
    local step = element.step
    if not addon.IsPlayerSpell(element.id) and step.active and not addon.isHidden then
        addon.SetElementComplete(self)
        step.completed = true
        addon.updateSteps = true
        element.tooltipText = L"Step skipped: missing required spell"
    elseif step.active and not step.completed then
        element.tooltipText = nil
    end

end

function addon.GetSubZoneId(zone,x,y)
    local subzonemax = 1e6
    if gameVersion < 50000 then
        subzonemax = 15325
    end
    local subzone = ""
    local zoneText = ""
    if zone and x and y then
       zoneText = GetZoneText() or 2
       zone = addon.GetMapId(zone) or zone
       x = x / 100
       y = y / 100
       subzone = MapUtil.FindBestAreaNameAtMouse(zone,x,y)
    elseif zone then
       subzone = zone
    else
        subzone = GetSubZoneText() or 1
        zoneText = GetZoneText() or 2
    end

    if subzone or zoneText then
        local bestMatchId,bestMatchText
        for i = 1,subzonemax do
            local zoneName = C_Map.GetAreaInfo(i) or 3
            if zoneName and zoneName == subzone then
                print(zoneName .. ' Subzone ID: ' .. i)
                return i
            elseif zoneText == zoneName then
                bestMatchId = i
                bestMatchText = zoneName
            end
        end
        if bestMatchId and bestMatchText then
            print(bestMatchText .. ' Subzone ID: ' .. bestMatchId)
            return bestMatchId
        end
    end
    print('ERROR: Subzone not found')
 end

 function addon.functions.subzone(self, text, subZone, flags)
    if type(self) == "string" then -- on parse
        local element = {}
        local mapID = C_Map.GetAreaInfo(tonumber(subZone) or -1)
        if not (mapID and text) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid zone ID\n" .. self)
        end
        element.map = mapID
        element.icon = addon.icons["goto"]
        element.flags = tonumber(flags) or 0
        if text and text ~= "" then
            element.text = text
        else
            element.text = "Go to " .. subZone
        end

        return element
    end
    --setting flags to 1 will reverse the normal operation and only complete if you're not in that subzone
    --setting flags to 2 only works if the map is unavailable (dungeons)
    local isMapValid = true
    local element = self.element
    local step = element.step
    if bit.band(element.flags,0x2) == 0x2 then
        isMapValid = not C_Map.GetBestMapForUnit('player')
    end

    local subzone = GetSubZoneText()
    local currentMap = GetZoneText()
    if not step.active or addon.isHidden or type(currentMap) ~= "string" then return end
    local zone = element.map
    if ((zone == currentMap or zone == subzone) and isMapValid)
        == (element.flags % 2 == 0) then
        addon.SetElementComplete(self)
        --step.completed = true
        --addon.updateSteps = true
    end
end

function addon.functions.subzoneskip(self, text, subZone, flags)
    if type(self) == "string" then -- on parse
        local element = {}
        local mapID = C_Map.GetAreaInfo(tonumber(subZone) or -1)
        if not mapID then
            return addon.error(
                L("Error parsing guide") .. " " .. addon.currentGuideName ..
                ": Invalid zone ID\n" .. self)
        end
        flags = tonumber(flags) or 0
        if bit.band(flags,0x1) == 0x1 then
            element.reverse = true
        end
        element.flags = flags
        element.map = mapID
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end

    --setting flags to 1 will reverse the normal operation and only complete if you're not in that subzone
    --setting flags to 2 only works if the map is unavailable (dungeons)

    local element = self.element
    local step = element.step
    if not step.active or addon.isHidden then return end
    local isMapValid = true
    if bit.band(element.flags,0x2) == 0x2 then
        isMapValid = not C_Map.GetBestMapForUnit('player')
    end
    local subzone = GetSubZoneText()
    local currentMap = GetZoneText()
    local zone = element.map
    if ((zone == currentMap or zone == subzone) and isMapValid) == not element.reverse then
        step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.zone(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, zone = ...
        local mapID = addon.GetMapId(zone) or tonumber(zone)
        mapID = addon.mapConversion[mapID] or mapID
        if not (mapID and text) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid text/map name\n" .. self)
        end
        element.map = mapID
        element.icon = addon.icons["goto"]
        if text and text ~= "" then
            element.text = text
        else
            element.text = "Go to " .. zone
        end
        element.tooltipText = element.icon .. text
        return element
    end
    local currentMap = C_Map.GetBestMapForUnit("player")
    if not self.element.step.active or addon.isHidden or type(currentMap) ~= "number" then return end
    local zone = self.element.map
    if zone == currentMap then
        addon.SetElementComplete(self)
        self.element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.zoneskip(self, text, zone, flags)
    if type(self) == "string" then -- on parse
        local element = {}
        local mapID = addon.GetMapId(zone) or tonumber(zone)
        mapID = addon.mapConversion[mapID] or mapID
        if not mapID then
            return addon.error(
                L("Error parsing guide") .. " " .. addon.currentGuideName ..
                ": map name/ID\n" .. self)
        end
        flags = tonumber(flags) or 0
        if bit.band(flags,0x1) == 0x1 then
            element.reverse = true
        end
        element.map = mapID
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end

    local element = self.element
    local step = element.step
    local currentMap = C_Map.GetBestMapForUnit("player")
    if not step.active or addon.isHidden or (type(currentMap) ~= "number" and not text) then return end
    local zone = element.map
    if (zone == currentMap) == not element.reverse then
        step.completed = true
        addon.updateSteps = true
    end
end

addon.separators.link = function(t,args)
    local link = args:gsub("%s+$", "")
    tinsert(t, link)
end

local function LinkOnClick(self)

    addon.url = self.element.url
    _G.StaticPopup_Show("RXP_Link")
    addon.url = nil
end

function addon.functions.link(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, url = ...
        if not (url and text) then
            return addon.error(
                    L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid text/url\n" .. self)
        end
        element.textOnly = true
        element.url = url:gsub("\\?\\%-","-")
        element.hideTooltip = true
        element.tooltip = L("Click to view the link")
        element.text = text
        return element
    end
    if self and self.highlight then
        self.highlight:Show()
        self:SetScript("OnMouseDown", LinkOnClick)
    end
end

_G.StaticPopupDialogs["RXP_Link"] = {
    text = "Press Ctrl+C to copy the URL to your clipboard",
    hasEditBox = 1,
    button1 = _G.OKAY,
    OnShow = function(self)
        if addon.url then
            local box = getglobal(self:GetName() .. "EditBox")
            if box then
                box:SetWidth(275)
                box:SetText(addon.url)
                box:HighlightText()
                box:SetFocus()
            end
        end
    end,

    EditBoxOnEscapePressed = function(self) self:GetParent():Hide() end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
}

function addon.functions.cast(self, text, ...)
    if type(self) == "string" then -- on parse
        local element = {unit = "player"}
        local ids = {...}
        for i,v in ipairs(ids) do
            local newValue = tonumber(v)
            if i == 1 and not newValue then
                element.unit = v
                ids[1] = -1
            else
                ids[i] = newValue or -1
            end
        end
        element.ids = ids
        element.text = text or ""
        local icon
        if #ids == 1 then
            icon = GetSpellTexture(ids[1])
        end
        if not text or text == "" then
            element.textOnly = true
            element.dynamicText = true
            element.text = nil
        elseif icon then
            element.icon = "|T" .. icon .. ":0|t"
            element.tooltipText = element.icon .. element.text
        end

        return element
    end
    local event = text
    local unit, _, id = ...
    local element = self.element
    if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == element.unit then
        for _,spellId in pairs(element.ids) do
            if id == spellId then
                local icon = GetSpellTexture(id)
                if not element.icon and not element.textOnly and icon then
                    element.icon = "|T" .. icon .. ":0|t"
                    element.tooltipText = element.icon .. element.text
                end
                addon.SetElementComplete(self)
                if element.timer then
                    addon.StartTimer(element.timer,element.timerText)
                end
                break
            end
        end
    end
end

local function UpdateTargets(element,context)
    if not element.parent then return end
    if element.parent.completed or element.parent.skip then
        if element.step.active and element[context] then
            addon:ScheduleTask(addon.targeting.UpdateUnitList)
        end
        element[context] = nil
    else
        if element.step.active and not element[context] then
            addon:ScheduleTask(addon.targeting.UpdateUnitList)
        end
        element[context] = element.unitlist
    end
end

local semicolonsep = function(t,args)
    args = args:gsub("%s*;%s*", ";")
    for arg in string.gmatch(args, "[^;]+") do
        tinsert(t, arg)
    end
end

addon.separators.unitscan = semicolonsep
addon.separators.target = semicolonsep
addon.separators.mob = semicolonsep

local function CheckNpcIds(element,t)
    for i,v in ipairs(t) do
        local name,id = v:match("(.+)::(%d+)$")
        id = tonumber(id) or tonumber(v)
        if name and addon.player.lang == "en" then
            t[i] = name
        elseif id then
            local name --= addon.GetNpcName(id)
            if name then
                t[i] = name
            else
                t[i] = tostring(id)
                element.update = true
            end
        end
    end
end

local function UpdateNpcNames(element)
    local t = element.unitlist
    if element.update then
        local update = false
        local reload

        local i = element.step.index or 0
        if not element.step.active and math.abs(i-RXPCData.currentStep) > 2 or GetTime() - addon.lastStepUpdate < 1 then
            return
        end

        for i,id in ipairs(t) do
            local id = tonumber(id)
            if id then
                local name = addon.GetNpcName(id,element)
                if name then
                    t[i] = name
                    reload = true
                else
                    update = true
                end
            end
        end
        element.update = update
        if reload and element.step.active then
             addon.ScheduleTask(0.75,addon.ReloadStep)
        end
    end
end

function addon.functions.unitscan(self, text, ...)
    if type(self) == "string" then
        local element = {}

        if text and text ~= "" then element.text = text end
        element.textOnly = true
        local t = {...}
        element.unitscan = t
        local prefix = t[1]
        if prefix and prefix:sub(1,1) == "+" then
            t[1] = prefix:sub(2,-1)
            element.parent = true
        end
        element.unitlist = t
        CheckNpcIds(element,t)
        return element
    end

    UpdateNpcNames(self.element)
    UpdateTargets(self.element,"unitscan")
end

function addon.functions.target(self, text, ...)
    if type(self) == "string" then
        local element = {}

        if text and text ~= "" then element.text = text end
        element.textOnly = true
        local t = {...}
        element.targets = t
        local prefix = t[1]
        if prefix and prefix:sub(1,1) == "+" then
            t[1] = prefix:sub(2,-1)
            element.parent = true
        end
        element.unitlist = t
        CheckNpcIds(element,t)
        return element
    end

    UpdateNpcNames(self.element)
    UpdateTargets(self.element,"targets")
end

function addon.functions.mob(self, text, ...)
    if type(self) == "string" then
        local element = {}

        if text and text ~= "" then element.text = text end
        element.textOnly = true
        local t = {...}
        element.mobs = t
        local prefix = t[1]
        if prefix and prefix:sub(1,1) == "+" then
            t[1] = prefix:sub(2,-1)
            element.parent = true
        end
        element.unitlist = t
        CheckNpcIds(element,t)
        return element
    end

    UpdateNpcNames(self.element)
    UpdateTargets(self.element,"mobs")
end

local BLquests = {
    [2583] = {
        0, -- gizzard
        1, -- brain
        3, -- lung
        2, -- pincer
        0 -- jowl
    },
    [2601] = {2, 10, 0, 0, 0},
    [2585] = {2, 0, 1, 3, 0},
    [2581] = {0, 0, 2, 1, 3},
    [2603] = {10, 0, 0, 0, 2}
}

function addon.functions.blastedLands(self)

    if type(self) == "string" then -- on parse
        local element = {}
        element.text =
            "Collect the following items:\n14 Vulture Gizzard\n11 Basilisk Brain\n6 Scorpok Pincer\n6 Blasted Boar Lung\n5 Snickerfang Jowl"
        element.icon = addon.icons.collect
        element.dynamicText = true
        return element
    end
    --

    local element = self.element
    local step = self.element.step

    local id = {8396, 8394, 8392, 8393, 8391}
    local name = {
        "Vulture Gizzard", "Basilisk Brain", "Blasted Boar Lung",
        "Scorpok Pincer", "Snickerfang Jowl"
    }

    for n, item in pairs(id) do
        local iName = addon.GetItemName(item)
        if iName then name[n] = iName end
    end

    local total = {0, 0, 0, 0, 0}

    for quest, items in pairs(BLquests) do
        if not IsQuestTurnedIn(quest) then
            for item, v in pairs(items) do
                total[item] = total[item] + v
            end
        end
    end

    local skip = true
    -- element.textInactive = ""
    element.text = L("Collect the following items:")

    for item, goal in pairs(total) do
        local itemCount = GetItemCount(id[item])
        if goal > 0 then
            if itemCount > goal then itemCount = goal end
            element.text = fmt("%s\n- %s: %d/%d", element.text,
                                         name[item], itemCount, goal)
        end
        if itemCount < goal then skip = false end
    end

    if skip then
        element.text = L("Do the Blasted Lands collection quests")
        addon.SetElementComplete(self)
    else
        addon.SetElementIncomplete(self)
    end

    addon.UpdateStepText(self)
end

events.questitemcount = events.collect
function addon.functions.questitemcount(self,text,itemId,qty,...)

    if type(self) == "string" then -- on parse
        local element = {}
        element.text = text or "  "
        element.icon = addon.icons.collect
        itemId = tonumber(itemId)
        if not itemId then return end
        element.id = itemId
        element.itemName = addon.GetItemName(itemId)
        element.qty = tonumber(qty)
        local quests = {...}
        for i,v in ipairs(quests) do
            quests[i] = tonumber(v) or 0
        end
        element.quests = quests
        return element
    end
    local element = self.element
    local id = element.id
    local name = addon.GetItemName(id)
    if name then
        element.requestFromServer = nil
    else
        name = ""
        element.requestFromServer = true
    end
    element.itemName = name

    local count = GetItemCount(id)
    if count == 0 then
        if C_ToyBox and PlayerHasToy(id) and C_ToyBox.IsToyUsable(id) then
            count = count + 1
        end

        for i = 1, _G.INVSLOT_LAST_EQUIPPED do
            if GetInventoryItemID("player", i) == id then
                count = count + 1
                break
            end
        end
    end
    local nQuests = 0
    for _,questId in ipairs(element.quests) do
        if questId ~= 0 then
            if not IsQuestTurnedIn(questId) then
                nQuests = nQuests + 1
            end
        end
    end
    local numRequired = nQuests * element.qty

    if (numRequired > 0 and count > numRequired) then
        count = numRequired
    end

    element.text = fmt("%s: %d/%d", element.itemName, count,
                                numRequired)
    element.tooltipText = addon.icons.collect .. element.text

    if numRequired > 0 and count >= numRequired then
        addon.SetElementComplete(self, true)
    elseif numRequired == count then
        addon.SetElementComplete(self, true)
    elseif not element.textOnly then
        addon.SetElementIncomplete(self)
    end
end

function addon.PutItemInBank(bagContents)
    local _, isBankOpened = GetContainerNumFreeSlots(_G.BANK_CONTAINER);
    if CursorHasItem() and isBankOpened then
        local bank = {_G.BANK_CONTAINER}
        for i = _G.NUM_BAG_SLOTS + 1, _G.NUM_BAG_SLOTS + _G.NUM_BANKBAGSLOTS do
            tinsert(bank, i)
        end

        if not bagContents then bagContents = {} end
        for _, bag in ipairs(bank) do
            if not bagContents[bag] then bagContents[bag] = {} end
            local slots, bagtype = GetContainerNumFreeSlots(bag)
            if bagtype == 0 and slots > 0 then
                for slot = 1, GetContainerNumSlots(bag) do
                    if not (GetContainerItemInfo(bag, slot) or
                        bagContents[bag][slot]) then
                        PickupContainerItem(bag, slot)
                        bagContents[bag][slot] = true
                        return
                    end
                end
            end
        end
        ClearCursor()
    end

end

function addon.PutItemInBags(bagContents)
    if CursorHasItem() then
        if not bagContents then bagContents = {} end
        for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
            if not bagContents[bag] then bagContents[bag] = {} end
            local slots, bagtype = GetContainerNumFreeSlots(bag)
            if bagtype == 0 and slots > 0 then
                for slot = 1, GetContainerNumSlots(bag) do
                    if not (GetContainerItemInfo(bag, slot) or
                        bagContents[bag][slot]) then
                        PickupContainerItem(bag, slot)
                        bagContents[bag][slot] = true
                        return
                    end
                end
            end
        end
        ClearCursor()
    end
end

function addon.PutItemInQuiver(bagContents)
    if CursorHasItem() then
        if not bagContents then bagContents = {} end
        for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
            if not bagContents[bag] then bagContents[bag] = {} end
            local slots, bagtype = GetContainerNumFreeSlots(bag)
            if (bagtype == 1 or bagtype == 2) and slots > 0 then
                for slot = 1, GetContainerNumSlots(bag) do
                    if not (GetContainerItemInfo(bag, slot) or
                        bagContents[bag][slot]) then
                        PickupContainerItem(bag, slot)
                        bagContents[bag][slot] = true
                        return
                    end
                end
            end
        end
        ClearCursor()
    end
end

function addon.GoThroughBags(itemList, func)
    local bagContents = {}
    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        for slot = 1, GetContainerNumSlots(bag) do
            local id = GetContainerItemID(bag, slot)
            if id then
                local name = GetItemInfo(id)
                for _, item in ipairs(itemList) do
                    if item == name or item == id then
                        func(bag, slot, bagContents)
                    end
                end
            end
        end
    end

end

function addon.DepositItems(itemList)
    local _, isBankOpened = GetContainerNumFreeSlots(_G.BANK_CONTAINER);
    if itemList and isBankOpened then
        if type(itemList) ~= "table" then itemList = {itemList} end
    else
        return
    end

    local text = ""
    for _, item in ipairs(itemList) do
        local id = tonumber(item) or item
        local name = GetItemInfo(id) or id
        if name then
            if text == "" then
                text = L("Attempting to deposit") .. ": " .. name
            else
                text = text .. ", " .. name
            end
        end
    end
    print(text) -- ok

    addon.GoThroughBags(itemList, function(bag, slot, bagContents)
        PickupContainerItem(bag, slot)
        addon.PutItemInBank(bagContents)
    end)
end

function addon.IsItemInBags(itemList, reverseLogic)
    local _, isBankOpened = GetContainerNumFreeSlots(_G.BANK_CONTAINER);
    if itemList and isBankOpened then
        if type(itemList) ~= "table" then itemList = {itemList} end
    else
        return
    end
    for _, item in ipairs(itemList) do
        local itemCount = 0
        addon.GoThroughBags({item}, function() itemCount = itemCount + 1 end)
        if reverseLogic then
            if itemCount >= 1 then return false end
        else
            if itemCount < 1 then return false end
        end
    end
    return true
end

function addon.IsItemNotInBags(itemList)
    return addon.IsItemInBags(itemList, true)
end

function addon.GoThroughBank(itemList, func)

    local bank = {_G.BANK_CONTAINER}
    for i = _G.NUM_BAG_SLOTS + 1, _G.NUM_BAG_SLOTS + _G.NUM_BANKBAGSLOTS do
        tinsert(bank, i)
    end

    local bagContents = {}

    for _, bag in pairs(bank) do
        for slot = 1, GetContainerNumSlots(bag) do
            local id = GetContainerItemID(bag, slot)
            if id then
                local name = GetItemInfo(id)
                for _, item in ipairs(itemList) do
                    if item == name or item == id then
                        func(bag, slot, bagContents)
                    end
                end
            end
        end
    end

end

function addon.WithdrawItems(itemList)
    local _, isBankOpened = GetContainerNumFreeSlots(_G.BANK_CONTAINER);
    if itemList and isBankOpened then
        if type(itemList) ~= "table" then itemList = {itemList} end
    else
        return
    end

    local text = ""
    for _, item in ipairs(itemList) do
        local id = tonumber(item) or item
        local name = GetItemInfo(id) or id
        if name then
            if text == "" then
                text = L("Attempting to withdraw") .. ": " .. name
            else
                text = text .. ", " .. name
            end
        end
    end
    print(text) -- ok

    addon.GoThroughBank(itemList, function(bag, slot, bagContents)
        PickupContainerItem(bag, slot)
        addon.PutItemInBags(bagContents)
    end)
end

function addon.IsItemInBank(itemList, reverseLogic)
    local _, isBankOpened = GetContainerNumFreeSlots(_G.BANK_CONTAINER);
    if itemList and isBankOpened then
        if type(itemList) ~= "table" then itemList = {itemList} end
    else
        return
    end

    for _, item in ipairs(itemList) do
        local itemCount = 0
        addon.GoThroughBank({item}, function() itemCount = itemCount + 1 end)
        if reverseLogic then
            if itemCount >= 1 then return false end
        else
            if itemCount < 1 then return false end
        end
    end
    return true
end

function addon.IsItemNotInBank(itemList)
    return addon.IsItemInBank(itemList, true)
end

function addon.functions.bankdeposit(self, text, ...)

    if type(self) == "string" then
        local element = {}
        local items = {...}
        for n, item in pairs(items) do items[n] = tonumber(item) or item end

        element.items = items
        element.text = text
        element.icon = addon.icons.vendor
        return element
    end

    local element = self.element
    if element.step.active then
        if addon.IsItemNotInBags(element.items) then
            addon.SetElementComplete(self)
            return
        end
        addon.DepositItems(element.items)
    end

end

function addon.functions.bankwithdraw(self, text, ...)

    if type(self) == "string" then
        local element = {}
        local items = {...}
        for n, item in pairs(items) do items[n] = tonumber(item) or item end

        element.items = items
        element.text = text
        element.icon = addon.icons.vendor
        return element
    end

    local element = self.element

    if element.step.active then
        if addon.IsItemNotInBank(element.items) then
            addon.SetElementComplete(self)
            return
        end
        addon.WithdrawItems(element.items)
    end
end

function addon.functions.bronzetube(self, text, rev)
    if type(self) == "string" then -- on parse
        local element = {}
        element.textOnly = true
        element.rev = rev

        if text and text ~= "" then element.text = text end
        return element
    end

    local element = self.element

    local count = GetItemCount(4371)
    local total = 0

    if not (IsQuestTurnedIn(174)) then total = total + 1 end
    --[[    if class == "ROGUE" and not(IsQuestTurnedIn(2609)) then
        total = total + 1
    end]]

    if count >= total == not element.rev and not addon.isHidden then
        self.element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.buy(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id, qty, questId, objIndex = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ': No item ID provided\n' .. self)
        end
        element.questId = tonumber(questId)
        element.objIndex = tonumber(objIndex)
        element.id = id
        qty = tonumber(qty)
        element.qty = qty or 1
        element.textOnly = true
        element.text = text
        return element
    end

    local event = ...
    local element = self.element
    local step = element.step
    if not (step.active and event and event ~= "WindowUpdate") then return end

    local id = element.id
    local count = GetItemCount(id)
    local total = element.qty - count
    local objIndex = element.objIndex
    local questId = element.questId

    if event ~= "BAG_UPDATE_DELAYED" and event ~= "WindowUpdate" then
        if addon.IsQuestComplete(questId) or addon.IsQuestTurnedIn(questId) then
            element.isQuestComplete = true
        elseif objIndex and event then
            local quest = addon.GetQuestObjectives(element.questId, step.index)
            element.isQuestComplete = quest and quest[objIndex].finished
        end
    end
    if event == "MERCHANT_SHOW" and total > 0 and not element.isQuestComplete then
        element.closeWindow = false
        for i = 1, GetMerchantNumItems() do
            local link = GetMerchantItemLink(i)
            local itemID = link and tonumber(link:match("item:(%d+)"))
            if itemID then
                local name, _, _, quantity = GetMerchantItemInfo(i)

                if itemID == id or name == id then
                    print("Buying " .. name .. " x" .. total) -- ok
                    if quantity and quantity > 1 then
                        for n = 1, math.ceil(total / quantity) do
                            BuyMerchantItem(i, quantity)
                            element.closeWindow = true
                        end
                    elseif quantity == 1 then
                        local stack = select(8, GetItemInfo(id))
                        while total > 0 do
                            local purchase = math.min(stack, total)
                            total = total - purchase
                            BuyMerchantItem(i, purchase)
                            element.closeWindow = true
                        end
                    end
                    return
                end
            end
        end
    elseif event == "BAG_UPDATE_DELAYED" and element.closeWindow then
        HideUIPanel(_G.MerchantFrame)
        element.closeWindow = false
    end
end

local GossipGetNumActiveQuests = C_GossipInfo.GetNumActiveQuests or
                                 _G.GetNumGossipActiveQuests
local GossipGetNumAvailableQuests = C_GossipInfo.GetNumAvailableQuests or
                                    _G.GetNumGossipAvailableQuests
--local GossipSelectOption = _G.SelectGossipOption
local GossipGetNumOptions = addon.GossipGetNumOptions

function addon.functions.skipgossip(self, text, ...)
    if type(self) == "string" then
        local element = {dynamicText = true, textOnly = true, text = text}
        local args =  {...}
        element.args = #args > 0 and args
        return element
    end

    if not addon.settings.profile.enableGossipAutomation or IsShiftKeyDown() then return end

    local element = self.element
    local args = element.args or {}
    local nArgs = #args
    local event = text
    local id = tonumber(args[1])
    if (event == nil and element.step.active) then
        local g = GossipGetOptions()
        if type(g) == "table" and #g > 0 then
            event = "GOSSIP_SHOW"
        end
    end

    if event == "GOSSIP_SHOW" then
        -- print(id,'GS',nArgs)
        local trainerId,name = addon.SelectGossipType("trainer",true)
        local npcId = addon.GetNpcId()

        if id ~= npcId and trainerId and (GossipGetNumOptions() >= 2 and name and strupper(name):find(strupper(localizedClass))) then
            --Ignores respec/dualspec prompt
            return
        elseif nArgs == 0 or not id then
            if GossipGetNumAvailableQuests() == 0 and GossipGetNumActiveQuests() == 0 then
                GossipSelectOption(1)
            end
            return
        end
        element.npcId = npcId
        if nArgs == 1 then
            if npcId == id then
                id = 1
            elseif id > 9 then
                return
            end
            if GossipGetNumAvailableQuests() == 0 and
                             GossipGetNumActiveQuests() == 0 then
                GossipSelectOption(id)
            end
        elseif id == npcId or id == 0 then
            if not element.index then
                element.index = 2
            else
                element.index = ((element.index - 1) % (nArgs - 1)) + 2
            end
            local option = tonumber(args[element.index])
            if option then GossipSelectOption(option) end
        end
    elseif event == "GOSSIP_CLOSED" and nArgs > 1 then
        element.index = false
    elseif element.timer and event == "GOSSIP_CONFIRM_CANCEL" and
                             (not id or id < 10 or element.npcId == id) then
        addon.StartTimer(element.timer,element.timerText)
    end

end

function addon.functions.gossip(self, text, npc, length, flags)
    if type(self) == "string" then
        npc = tonumber(npc)
        if not npc then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ': No npc ID provided\n' .. self)
        end
        local element = {text = text, npc = npc, level = -1, length = tonumber(length) or 0, flags = tonumber(flags) or 0}
        return element
    end
    local element = self.element
    local step = element.step
    if not step.active then
        element.level = -1
        element.completed = false
        return
    end
    local event = text
    local frame = _G.GossipFrame
    if (event == nil and element.step.active) then
        local g = GossipGetOptions()
        if type(g) == "table" and #g > 0 then
            event = "GOSSIP_SHOW"
        end
    end
    if event == "GOSSIP_SHOW" then
        if UnitExists('target') and not UnitIsPlayer('target') and not element.name then
            local name = UnitName('target')
            element.currentNPC = addon.GetNpcId()
            element.name = name
            --element.level = 0
            --print(name,element.currentNPC)
        end
        local title
        if not frame then
            return
        elseif frame.NineSlice then
            title = frame:IsShown() and frame:GetTitleText():GetText()
        else
            title = frame:IsShown() and frame.TitleContainer.TitleText:GetText()
        end
        if element.currentNPC == element.npc and title == element.name then
            element.level = element.level + 1
            --print('ok',element.level)
        end
        if element.flags % 2 == 1 and element.level >= element.length then
            event = "PLAYER_INTERACTION_MANAGER_FRAME_HIDE"
        end
    end
    if event == "PLAYER_INTERACTION_MANAGER_FRAME_HIDE" then
        element.name = nil
        element.currentNPC = nil
        --print(element.level, element.length)
        if element.level >= element.length then
            addon.SetElementComplete(self)
            if element.timer then
                addon.StartTimer(element.timer, element.timerText)
            end
        end
        element.level = -1
        _G.GossipFrame:Hide()
    end
end

function addon.functions.skipgossipid(self, text, ...)
    if not (C_GossipInfo and C_GossipInfo.GetOptions) then
        return
    elseif type(self) == "string" then
        local element = {textOnly = true, text = text}
        local args =  {...}
        if #args == 0 then
            return addon.error(
                L("Error parsing guide") .. " " .. addon.currentGuideName ..
                   ': No gossip ID provided\n' .. self)
        end
        local prefix = args[1]
        if prefix and prefix:sub(1,1) == "+" then
            args[1] = prefix:sub(2,-1)
            element.parent = true
        end
        for i,v in pairs(args) do
            args[i] = tonumber(v)
        end
        element.args = args
        return element
    end

    local element = self.element
    if not element or not element.step.active or not next(element.args) or
        addon.isHidden or
        not addon.settings.profile.enableGossipAutomation or IsShiftKeyDown() then
            return
    end
    --print('ok1')
    local event = text
    if (event == nil and element.step.active) then
        local g = GossipGetOptions()
        if type(g) == "table" and #g > 0 then
            event = "GOSSIP_SHOW"
        end
    end
    if event == "GOSSIP_SHOW" then
        local args = element.args or {}
        local gossipOptions = GossipGetOptions()
        local _,option = next(gossipOptions)
        if type(option) ~= "table" then
            return
        end
        for _,gossipId in ipairs(args) do
            for _, v in pairs(gossipOptions) do
                --print(v.gossipOptionID, gossipId)
                if v.gossipOptionID == gossipId then
                    C_GossipInfo.SelectOption(v.gossipOptionID,"",true)
                    element.select = true
                    return
                end
            end
        end
    elseif element.select and event == "GOSSIP_CONFIRM_CANCEL" or event == "PLAYER_INTERACTION_MANAGER_FRAME_HIDE" then
        if element.timer then
            addon.StartTimer(element.timer, element.timerText)
        end
        element.select = false
    elseif not event then
        element.select = false
    end

end

function addon.functions.gossipoption(self, ...)
    if not (C_GossipInfo and C_GossipInfo.GetOptions) then
        return
    elseif type(self) == "string" then
        local element = {icon = addon.icons.gossip}
        local text, gossipId = ...
        gossipId = tonumber(gossipId)

        if not gossipId then
            return addon.error(L("Error parsing guide") .. " " ..
                                    addon.currentGuideName ..
                                    ": Invalid gossipoption ID\n" .. self)
        end

        if text and text ~= "" then
            element.text = text
            element.tooltipText = addon.icons.gossip .. text
        else
            element.textOnly = true
        end

        element.gossipId = gossipId

        return element
    end
    local element = self.element

    if not element or not element.step.active or not element.gossipId or
        element.completed or addon.isHidden then
             return
    end

    local matched = false
    local options = GossipGetOptions()
    if not options then return end
    --print('1??')
    for _, v in pairs(options) do
        if v.gossipOptionID == element.gossipId then
            if addon.settings.profile.enableGossipAutomation and not IsShiftKeyDown() then
                C_GossipInfo.SelectOption(v.gossipOptionID,"",true)
                --print('??')
            end
            --GossipSelectOption(i)
            addon.SetElementComplete(self)
            matched = true
            break
        end
    end

    if matched and element.timer then
        addon.StartTimer(element.timer, element.timerText)
    end
end

function addon.functions.maxlevel(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, str, ref = ...
        element.ref = ref
        local level, xp

        if str then
            str = str:gsub(" ", "")
            level, xp = str:match("(%d+)([%+%.%-]?%d*)")
        end

        if not level then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid syntax\n" .. self)
        end

        element.xp = tonumber(xp)
        element.level = tonumber(level)
        element.event = "PLAYER_XP_UPDATE"
        if text then
            element.rawtext = text
        else
            element.rawtext = ""
        end
        if not element.xp then element.xp = 0 end
        element.textOnly = true
        return element
    end
    local level = UnitLevel("player")
    local element = self.element
    local step = element.step
    local ref = element.ref
    local guide = addon.currentGuide
    local playerLevelMax = GetEffectivePlayerMaxLevel and GetEffectivePlayerMaxLevel() or 90

    if addon.isHidden or (ref and not guide.labels[ref]) then
        return
    elseif level > element.level and addon.settings.profile.enableXpStepSkipping then
        if step.active and not step.completed and (not LoremasterEnabled() or element.level == playerLevelMax - 1) then
            addon.updateSteps = true
            step.completed = true
            if step.textOnly then
                step.tooltipText = L"Step skipped: XP requirements are not met"
            end
        elseif step.active and not step.completed then
            element.tooltipText = nil
        end

        if ref and guide.labels[ref] then
            local n = guide.labels[ref]
            element.text = fmt(
                               L("Skip to step %d if you are level %d or above"),
                               n, element.level + 1)
            if step.active then
                addon.nextStep = guide.labels[ref]
                return
            end
        end
        element.text = fmt(
                           L("(Skip this step if you are level %d or above)"),
                           element.level + 1)
    else
        element.text = nil
    end

end

function addon.functions.use(self, text, ...)
    if type(self) == "string" then
        local element = {}
        local items = {...}

        if text and text ~= "" then element.text = text end
        element.activeItems = {}
        for i, v in ipairs(items) do
            local id, arg = v:match("(%d+):?(%S*)")
            id = tonumber(id)
            if id then
                element.activeItems[id] = arg
            else
                return addon.error(L("Error parsing guide") .. " " ..
                                       addon.currentGuideName ..
                                       ": Invalid item ID\n" .. self)
            end
        end
        element.textOnly = true
        return element
    end
    local element = self.element
    local step = element.step
    local itemTable
    if element.tag == "usespell" then
        itemTable = step.activeSpells or {}
        step.activeSpells = itemTable
    else
        itemTable = step.activeItems or {}
        step.activeItems = itemTable
    end
    -- if not text and step.active then
    for item,arg in pairs(element.activeItems) do itemTable[item] = arg end
    -- end
end

function addon.functions.usespell(...)
    return addon.functions.use(...)
end

function addon.functions.vehicle(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.icon = addon.icons.complete
        element.id = tonumber(id)
        if text and text ~= "" then
            element.text = text
        else
            element.text = "-"
        end

        return element
    end

    local element = self.element

    if not (UnitInVehicle and element.step and element.step.active) then
        return
    elseif not element or (element.tag ~= "vehicle" and element.tag ~= "exitvehicle") then
        return UnitInVehicle("player")
    end
    local event, unit, showVehicleFrame, isControlSeat, vehicleUIIndicatorID,
          guid = ...
    local id = element.id
    local vehicle = addon.GetNpcId("vehicle") or addon.GetNpcId(guid, true) or UnitInVehicle("player")
    -- print('>',vehicle,vehicle == id)
    local entering = ((event == "UNIT_ENTERING_VEHICLE" and unit == "player") or vehicle) and
        ((id and vehicle == id) or (not id and vehicle))
    local exiting = not entering or (event == "UNIT_EXITING_VEHICLE" and unit == "player")
    if not element.exit and entering and not exiting or element.exit and exiting then
        addon.SetElementComplete(self)
        if element.timer and entering then
            addon.StartTimer(element.timer,element.timerText)
        end
    end
end

function addon.functions.exitvehicle(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.icon = addon.icons.complete
        element.id = tonumber(id)
        element.exit = true
        if text and text ~= "" then
            element.text = text
        else
            element.text = "-"
        end

        return element
    end
    return addon.functions.vehicle(self, ...)
end

function addon.functions.itemcount(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id, str, flags = ...
        local operator, eq, total

        if str then
            str = str:gsub(" ", "")
            operator, eq, total = str:match("([<>]?)(=?)%s*(%d+)")
        end
        --flags = tonumber(flags) or 0
        --element.enableBank = bit.band(flags, 0x1) == 0x1
        element.enableBank = flags
        element.id = tonumber(id)
        element.total = tonumber(total)
        if not (element.total and element.id) then
            return addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid item ID/count\n" .. self)
        end
        if operator == "<" then
            element.operator = -1
        elseif operator == ">" then
            element.operator = 1
        else
            element.operator = 0
        end
        if eq == "=" then element.eq = true end

        if text ~= "" then element.text = text end

        element.textOnly = true

        return element
    end

    local element = self.element
    local step = element.step
    if not step.active or addon.isHidden then return end
    local operator = element.operator
    local eq = element.eq
    local total = element.total
    local id = element.id
    local count = GetItemCount(id,element.enableBank)
    if count == 0 then
        if C_ToyBox and PlayerHasToy(id) and C_ToyBox.IsToyUsable(id) then
            count = count + 1
        end

        for i = 1, _G.INVSLOT_LAST_EQUIPPED do
            if GetInventoryItemID("player", i) == id then
                count = count + 1
                break
            end
        end
    end

    if not ((eq and count == total) or (count * operator > total * operator) or
        (not eq and operator == 0 and count >= total)) then
        if step.active and not step.completed then
            addon.updateSteps = true
            step.completed = true
            if operator < 0 then
                element.tooltipText = "Step skipped: You already have the required item for this step"
            else
                element.tooltipText = "Step skipped: You don't have the required item for this step"
            end
        end
    elseif step.active then
        element.tooltipText = nil
    end

end

function addon.functions.emote(self, text, token, unitId, callback, ...)
    if type(self) == "string" then
        local element = {}

        if callback then
            local events = {...}
            element.callback = callback
            element.event = events
        end
        element.text = text
        element.textOnly = true

        element.id = tonumber(unitId)
        element.emote = strupper(token)
        return element
    end

    local element = self.element
    local step = element.step
    local id = element.id

    -- print('g:',addon.GetNpcId(),addon.GetNpcId() == element.id)
    if not step.active then return end
    --local group = addon.currentGuide.group
    local emote = element.emote
    if element.callback then
        addon.lastCall = element.tag
        if addon.functions[element.callback](self, text, token, unitId, callback,
                                         ...) then DoEmote(emote) end
    elseif addon.GetNpcId() == element.id or not id then
        -- print('ok')
        DoEmote(emote)
    end

end

function addon.functions.openmap(self, text, map, callback, ...)
    if type(self) == "string" then
        local element = {}

        local events = {...}
        if callback then
            element.callback = callback
            element.event = events
        end
        element.text = text
        element.textOnly = true

        element.mapId = addon.GetMapId(map) or tonumber(map)
        return element
    end

    local element = self.element
    local step = element.step

    if not step.active then
        element.mapOpened = false
        return
    elseif not addon.addonLoaded then
        element.mapOpened = true
        return
    end

    --local group = addon.currentGuide.group
    local mapId = element.mapId

    if element.callback then
        addon.lastCall = element.tag
        if addon.functions[element.callback](self, text, map, callback, ...) then
            _G.WorldMapFrame:Show()
            _G.WorldMapFrame:SetMapID(mapId)
        end
    elseif not element.mapOpened then
        element.mapOpened = true
        _G.WorldMapFrame:Show()
        _G.WorldMapFrame:SetMapID(mapId)
    end

end

function addon.functions.cooldown(self, text, cooldownType, id, remaining,
                                  updateOnce, ...)
    if type(self) == "string" then
        local element = {}
        id = tonumber(id)
        local operator, cd, suffix = string.match(remaining,
                                                  "([<>]?)%s*(%d+%p?%d*)%s*([ms]?)")
        cd = tonumber(cd) or 0
        if not (cd and id) then
            addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid arguments\n" .. self)
        end
        if operator == "<" then
            element.operator = -1
        else
            element.operator = 1
        end
        if suffix == "m" then cd = cd * 60 end
        if cd < 2 then
            cd = 2
        end
        element.updateOnce = updateOnce
        element.id = id
        element.remaining = cd
        element.cooldownType = cooldownType
        element.text = text
        element.textOnly = true
        return element
    end

    local element = self.element or self
    local step = element.step
    if not step.active or step.completed or addon.isHidden then
        element.isActive = false
        return
    elseif not element.isActive then
        element.isActive = true
    elseif element.updateOnce and element.isActive then
        return
    end

    local operator = element.operator
    id = element.id
    cooldownType = element.cooldownType
    remaining = element.remaining

    local start, duration = 0, 0
    if cooldownType == "spell" then
        start, duration = GetSpellCooldown(id)
    elseif cooldownType == "item" then
        start, duration = GetItemCooldown(id)
    elseif cooldownType == "action" then
        start, duration = GetActionCooldown(id)
    elseif cooldownType == "pet" then
        start, duration = GetPetActionCooldown(id)
    elseif cooldownType == "inventory" then
        start, duration = GetInventoryItemCooldown("player", id)
    end
    local endTime = start + duration

    -- Astral recall:
    if class == "SHAMAN" and IsPlayerSpell(556) and id == 6948 and cooldownType ==
        "item" then
        local arStart, arDuration = GetSpellCooldown(556)
        endTime = math.min(endTime, arStart + arDuration)
    end

    local target = endTime - remaining

    if GetTime() * operator < target * operator then
        addon.updateSteps = true
        step.completed = true
        element.isActive = false
    elseif target > 0 and not element.updateOnce then
        addon.ScheduleTask(target + 0.5, element)
    end
end

events.logout = "PLAYER_CAMPING"
function addon.functions.logout(self, text, duration)
    if type(self) == "string" then
        return {duration = tonumber(duration) or 0, text = text, textOnly = not text}
    end

    local element = self.element or self
    local step = element.step
    local event = text
    if not step.active or step.completed or addon.isHidden or
                     (not element.textOnly and element.completed) then
        element.isActive = false
        return
    elseif not element.isActive then
        element.isActive = true
    end

    if event == "PLAYER_CAMPING" then
        local t = GetTime()
        element.startTime = t
        addon.ScheduleTask(t + element.duration, element)
        if element.timer then
            addon.StartTimer(element.timer,element.timerText)
        end
        element.frame = self
    end

    if element.startTime and
            (GetTime() - element.startTime >= element.duration) then

        element.startTime = false
        addon.SetElementComplete(element.frame)
        element.frame = nil
        if element.textOnly then
            addon.updateSteps = true
            step.completed = true
            element.isActive = false
        end
    end
end

function addon.functions.countdown(self, text, duration)
    if type(self) == "string" then
        return {duration = tonumber(duration) or 0, text = text, textOnly = not text}
    end

    local element = self.element or self
    local step = element.step
    local event = text
    if not step.active or step.completed or addon.isHidden or
                     (not element.textOnly and element.completed) then
        element.isActive = false
        element.completed = false
        element.skip = false
        element.startTime = false
        return
    elseif not element.isActive then
        element.isActive = true
    end

    if element.isActive and not element.startTime then
        local t = GetTime()
        element.startTime = t
        addon.ScheduleTask(t + element.duration, element)
        if element.timer then
            addon.StartTimer(element.timer,element.timerText)
        end
        element.frame = self
    end

    if element.startTime and element.startTime > 0 and
            (GetTime() - element.startTime >= element.duration) then

        element.startTime = -1
        addon.SetElementComplete(element.frame)
        element.frame = nil
        if element.textOnly then
            addon.updateSteps = true
            step.completed = true
            element.isActive = false
        end
    end
end

if addon.gameVersion >= 110000 then
    events.scenario = {"CRITERIA_UPDATE", "SCENARIO_CRITERIA_UPDATE"}
    addon.icons.scenario = addon.icons.complete

    function addon.GetCurrentStageId()
        local stepInfo = C_ScenarioInfo.GetScenarioStepInfo()
        if stepInfo then
            return stepInfo.stepID
        end
    end

    function addon.functions.scenario(self, ...)
        if type(self) == "string" then -- on parse
            local element = {}
            local text, stage, criteriaIndex, objMax = ...
            stage = tonumber(stage)
            criteriaIndex = tonumber(criteriaIndex)
            if not (stage and criteriaIndex) then
                addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                                ": Invalid arguments\n" .. self)
                return
            end

            element.objMax = tonumber(objMax)
            element.dynamicText = true

            element.stage = stage
            element.criteriaIndex = criteriaIndex
            element.rawtext = text or ""
            element.text = text or ""
            element.requestFromServer = true
            element.criteria = ""
            return element
        end

        local element = self.element
        local step = element.step
        local criteriaIndex = element.criteriaIndex
        local criteriaInfoByStep = C_ScenarioInfo.GetCriteriaInfoByStep(element.stage, criteriaIndex)
        if not criteriaInfoByStep then return end
        local criteriaString = criteriaInfoByStep.description
        local required = element.objMax or criteriaInfoByStep.totalQuantity
        local quantity = criteriaInfoByStep.quantity
        local completed = criteriaInfoByStep.completed
        local scenario = C_ScenarioInfo.GetScenarioInfo()
        local currentStage = scenario and scenario.currentStage
        local scenarioStepInfo = C_ScenarioInfo.GetScenarioStepInfo()
        local currentStep = scenarioStepInfo and scenarioStepInfo.stepID
        local currentInfo = C_ScenarioInfo.GetCriteriaInfo(criteriaIndex)
        local criteriaID = currentInfo and currentInfo.criteriaID
        if currentStep and currentStep == element.stage then
            element.stagePos = currentStage
        end

        -- print(required,quantity)
        if not (required and quantity) then
            if completed then
                required = 1
                quantity = 1
            else
                required = 1
                quantity = 0
            end
        end
        if not criteriaString then return end
        local fulfilled = math.min(required, quantity)
        element.criteria = fmt("%s: %d/%d", criteriaString, fulfilled,
                                        required)
        if element.rawtext ~= "" then element.criteria = "\n" .. element.criteria end
        if completed or quantity >= required or (element.stagePos and currentStage and currentStage > element.stagePos) then
            addon.SetElementComplete(self)
        end

        element.text = element.rawtext .. element.criteria
    end

else
    function addon.GetCurrentStageId()
        local criteriaId = select(9, C_Scenario.GetCriteriaInfo(1))
        for i = 1, 1e6 do
            local criteria = select(9, C_Scenario.GetCriteriaInfoByStep(i, 1))
            if criteria == criteriaId then
                print("Current Scenario Stage ID: " .. i) --ok
            end
        end
    end

    events.scenario = "CRITERIA_UPDATE"
    addon.icons.scenario = addon.icons.complete

    function addon.functions.scenario(self, ...)
        if type(self) == "string" then -- on parse
            local element = {}
            local text, stage, criteriaIndex, objMax = ...
            stage = tonumber(stage)
            criteriaIndex = tonumber(criteriaIndex)
            if not (stage and criteriaIndex) then
                addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                                ": Invalid arguments\n" .. self)
                return
            end

            element.objMax = tonumber(objMax)
            element.dynamicText = true

            element.stage = stage
            element.criteriaIndex = criteriaIndex
            element.rawtext = text or ""
            element.text = text or ""
            element.requestFromServer = true
            element.criteria = ""
            return element
        end
        local event = ...

        local element = self.element
        local step = element.step
        local criteriaIndex = element.criteriaIndex
        local criteriaString, criteriaType, completed, quantity, totalQuantity,
            flags, assetID, quantityString, criteriaID, duration, elapsed, _,
            isWeightedProgress = C_Scenario.GetCriteriaInfoByStep(element.stage,
                                                                    criteriaIndex)
        local required = element.objMax or totalQuantity
        local scenario = C_ScenarioInfo.GetScenarioInfo()
        local currentStage = scenario and scenario.currentStage
        local currentObj = select(9, C_Scenario.GetCriteriaInfo(criteriaIndex))
        if criteriaID == currentObj then element.stagePos = currentStage end

        -- print(required,quantity)
        if not (required and quantity) then
            if completed then
                required = 1
                quantity = 1
            else
                required = 1
                quantity = 0
            end
        end
        if not criteriaString then return end
        local fulfilled = math.min(required, quantity)
        element.criteria = fmt("%s: %d/%d", criteriaString, fulfilled,
                                        required)
        if element.rawtext ~= "" then element.criteria = "\n" .. element.criteria end

        if completed or quantity >= required or (element.stagePos and currentStage and currentStage > element.stagePos) then
            addon.SetElementComplete(self)
        end

        element.text = element.rawtext .. element.criteria
    end
end

function addon.functions.timer(self,text,duration,timerText,callback,...)
    if type(self) == "string" then
        local eventList = callback and {...}
        return {textOnly = true, timer = tonumber(duration), events = eventList,
                callback = callback, timerText = timerText, parent = true, text = text}
    end
    local element = self.element
    local parent = element.parent
    if parent and not element.callback then
        parent.timer = element.timer
        parent.timerText = element.timerText
        return
    end

    local f = addon.functions[element.callback]
    if type(f) == "function" and f(self,text,duration,timerText,callback,...) then
        addon.StartTimer(element.timer,element.timerText)
    end
end
--Waypoint functions:

--Waypoints will turn into low prio WPs whenever it returns true
--Usage: .waypoint zone,xx.xx,yy.yy,args,callback,event1,event2,...,eventN
--args is a string that can be referenced by self.args


function addon.functions.ironchain()
    local id
    local UnitAura = _G.UnitAura
    if not UnitAura then
        UnitAura = function(unitToken, index, filter)
            local auraData = C_UnitAuras.GetAuraDataByIndex(unitToken, index, filter);
            if not auraData then
                return nil;
            end

            return AuraUtil.UnpackAuraData(auraData);
	    end
    end
    for i = 1, 5 do
        _, id = UnitAura("vehicle", i)
        if id == 133273 then return true end
    end
end

function addon.functions.bombdispenser() return GetItemCount(40686) > 0 end

function addon.functions.rescue()
    local _,seat
    if UnitVehicleSeatInfo then
        _, seat = UnitVehicleSeatInfo("vehicle", 2)
    end
    return seat
end

function addon.functions.niffelen()
    local seatCount = 0
    if UnitVehicleSeatInfo then
        for i = 2, UnitVehicleSeatCount("vehicle") do
            local _, seat = UnitVehicleSeatInfo("vehicle", i)
            if seat then seatCount = seatCount + 1 end
            -- print(seat)
        end
        -- print(seatCount)
    end
    if seatCount < 3 then return true end
end

function addon.functions.wptimer(self)
    local element = self.element
    local step = element.step
    if not self.time then
        self.time = tonumber(self.args) or 0
        self.state = self.time >= 0
        self.time = math.abs(self.time)
        return not self.state
    elseif not step.active or step.completed then
        self.timerstart = false
        return not self.state
    end

    if not self.timerstart then
        self.timerstart = GetTime()
    elseif GetTime() - self.timerstart >= self.time then
        return self.state
    end
    return not self.state
end

function addon.functions.wpbuff(self)
    if self.buff == nil then
        self.buff = tonumber(self.args)
        self.state = self.buff and self.buff > 0
        self.buff = self.buff and math.abs(self.buff)
    end
    for i = 1, 32 do
        local _, _, _, _, _, _, _, _, _, id = UnitAura("player", i)
        if id == self.buff then return self.state end
    end
    return not self.state
end

function addon.functions.dmf(self, ...)
    if type(self) == "string" then
        local element = {}
        local text = ...
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.eventName = _G.CALENDAR_FILTER_DARKMOON
        return element
    end
    return addon.functions.holiday(self, ...)
end

function addon.functions.nodmf(self, ...)
    if type(self) == "string" then
        local element = {}
        local text = ...
        element.reverse = true
        element.eventName = _G.CALENDAR_FILTER_DARKMOON
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    return addon.functions.holiday(self, ...)
end

function addon.functions.holiday(self, text, eventId, reverse)
    if type(self) == "string" then
        local element = {}
        if text and text ~= "" then element.text = text end
        element.eventId = tonumber(eventId)
        if not eventId then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': Invalid event ID\n' .. self)
        end
        element.reverse = reverse
        element.textOnly = true
        return element
    end

    local element = self.element
    local eventFound = false
    local step = element.step

    local event
    local monthDay = GetCurrentCalendarTime().monthDay

    -- Async relies on CALENDAR_UPDATE_EVENT_LIST
    -- Currently results in one false negative if on a DMF step at login
    -- If called during the loading process, (even at PLAYER_ENTERING_WORLD) the query will not return
    if not IsAddOnLoaded('Blizzard_Calendar') then
        LoadAddOn("Blizzard_Calendar")
        addon.calendarLoaded = true
    end

    if not step.active then return end

    for i = 1, GetNumDayEvents(0, monthDay) do
        event = GetDayEvent(0, monthDay, i)

        if event and (element.eventId and element.eventId == event.eventID or (event.title == element.eventName)) then
            eventFound = true
            break
        end
    end
    --print('dmf',isDmfInTown,element.reverse)
    if (not eventFound == not element.reverse) and not addon.isHidden then
        step.completed = true
        addon.updateSteps = true
    end
end


events.pvp = "WAR_MODE_STATUS_UPDATE"
events.pve = events.pvp
function addon.functions.pvp(self, ...)
    if type(self) == "string" then
        local element = {}
        local text = ...
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end

    local element = self.element
    local isPvPEnabled = C_PvP and (C_PvP.IsWarModeDesired() or C_PvP.IsWarModeActive())

    if element.step.active and not addon.settings.profile.debug and (not isPvPEnabled) == not element.reverse and not addon.isHidden then
        element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.pve(self, ...)
    if type(self) == "string" then
        local element = {}
        local text = ...
        element.reverse = true
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    return addon.functions.pvp(self, ...)
end

function addon.CanPlayerFly(zoneOrContinent)
    local region = zoneOrContinent or C_Map.GetBestMapForUnit("player")
    if type(region) ~= "number" then
        return
    end

    local mapInfo = C_Map.GetMapInfo(region)
    local continentId = region
    local flags = mapInfo.flags
    local mapType = mapInfo.mapType
    while mapInfo and mapInfo.parentMapID and (mapType and mapType > 2 or flags and flags ~= 0) do
        continentId = mapInfo.parentMapID
        mapInfo = C_Map.GetMapInfo(continentId)
        flags = mapInfo.flags
        mapType = mapInfo.mapType
    end

    local ridingSkill = addon.GetSkillLevel("riding")

    if not continentId then
        return
    elseif WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        local shFlying = C_QuestLog.IsQuestFlaggedCompleted(63893)
        --local _, _, _, bfaFlying = GetAchievementInfo(13250)
        local dragonRiding = C_MountJournal.GetCollectedDragonridingMounts and C_MountJournal.GetCollectedDragonridingMounts()
        dragonRiding = type(dragonRiding) == "table" and #dragonRiding > 0
        --12 = kalimdor, 18 = eastern kingdoms, 101 = outland,113 = northrend, 127 = dalaran(weird), 424 = Pandaria, 572 = Draenor, 588 = ashran, 1165 = dazar alor, 895 = boralus, 876 = kul'tiras
        -- 619 = Broken Isles, Zuldazar 862, Shadowlands = 1550, 1978=dragonflight
        if (ridingSkill > 224 and
            (continentId == 12 or continentId == 18 or continentId == 13 or continentId == 101 or continentId == 113  or continentId == 127 or continentId == 424 or continentId == 572 or continentId == 588 or continentId == 619 or continentId == 862) or
            (continentId == 876 or continentId == 895 or continentId == 1165) or --bfa
            shFlying and continentId == 1550
         ) or dragonRiding and continentId == 1978 then
            return true
        end
    else
        local cwf = addon.IsPlayerSpell(54197)--Cold weather flying
        local fml = addon.IsPlayerSpell(90267)--Flight Master's license
        local wfw = addon.IsPlayerSpell(115913)--Wisdom of the Four Winds
        --1945 = outland,113 = northrend
        --
        if ((continentId == addon.GetMapId("Outland") or (wfw and continentId == RXP.GetMapId("Pandaria")) or
            (cwf and continentId == addon.GetMapId("Northrend")) or
            (fml and (continentId == addon.GetMapId("Kalimdor") or continentId == addon.GetMapId("Eastern Kingdoms"))))
                and ridingSkill > 224) then
            return true
        end
    end
end

AA = addon.CanPlayerFly
events.noflyable = "ZONE_CHANGED"
function addon.functions.noflyable(self, text, zone, skill)
    if type(self) == "string" then
        local element = {}
        element.zone = tonumber(zone) or addon.GetMapId(zone)
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.reverse = true
        element.skill = tonumber(skill) or -4
        return element
    end
    return addon.functions.flyable(self, text, zone, skill)
end

events.flyable = "ZONE_CHANGED"
function addon.functions.flyable(self, text, zone, skill)
    if type(self) == "string" then
        local element = {}
        element.zone = tonumber(zone) or addon.GetMapId(zone)
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.skill = tonumber(skill) or -4
        return element
    end
    local ridingSkill = addon.GetSkillLevel("riding") or -4
    local element = self.element
    local canPlayerFly = (addon.CanPlayerFly(element.zone) and ridingSkill >= element.skill)
    if element.reverse then
        canPlayerFly = not canPlayerFly
    end
    --print(canPlayerFly,'t')
    if element.step.active and not addon.settings.profile.debug and (not canPlayerFly) and not addon.isHidden then
        element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.collectmount(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No mount ID provided\n' .. self)
        end
        element.id = id
        if text and text ~= "" then
            element.rawtext = text
            element.tooltipText = element.rawtext
        else
            element.text = " "
        end
        return element
    end

    local element = self.element
    local name, _, _, _, _, _, _, _, _, _, isCollected = C_MountJournal.GetMountInfoByID(element.id)
    element.itemName = name
    if element.rawtext then
        element.tooltipText = element.rawtext
        element.text = fmt("%s\n%s", element.rawtext, element.itemName)
    else
        element.text = fmt("%s", element.itemName)
        element.tooltipText = element.text
    end
    if isCollected then
        addon.SetElementComplete(self)
    end
end

function addon.functions.collecttoy(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No toy ID provided\n' .. self)
        end
        element.id = id
        if text and text ~= "" then
            element.rawtext = text
            element.tooltipText = element.rawtext
        else
            element.text = " "
        end
        return element
    end

    local element = self.element

    local itemID, toyName, icon, isFavorite, hasFanfare = C_ToyBox.GetToyInfo(element.id)
    local isCollected = PlayerHasToy(element.id) and C_ToyBox.IsToyUsable(element.id)

    element.itemName = toyName
    if element.rawtext then
        element.tooltipText = element.rawtext
        element.text = fmt("%s\n%s", element.rawtext, element.itemName)
    else
        element.text = fmt("%s", element.itemName)
        element.tooltipText = element.text
    end
    if isCollected then
        addon.SetElementComplete(self)
    end
end

function addon.functions.collectpet(self, text, id, total, flags)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No pet npc ID provided\n' .. self)
        end
        if flags then
            element.skpStep = true
        end
        element.total = tonumber(total) or 1
        element.id = id
        element.rawtext = text
        element.text = text or " "
        return element
    end

    local element = self.element
    local step = element.step

    -- we need to reset petjournal search, as owned parameter could be received only from journal by index
    C_PetJournal.SetSearchFilter("")
    C_PetJournal.SetFilterChecked(LE_PET_JOURNAL_FILTER_COLLECTED, true)
    C_PetJournal.SetFilterChecked(LE_PET_JOURNAL_FILTER_NOT_COLLECTED, true)
    C_PetJournal.SetAllPetTypesChecked(true)
    C_PetJournal.SetAllPetSourcesChecked(true)

    local count = 0
    element.itemName = ""

    for index = 1, C_PetJournal.GetNumPets() do
        local petID, speciesID, owned, cutomName, _, _, _, speciesName, _, _, companionID = C_PetJournal.GetPetInfoByIndex(index);
        if (companionID == element.id) then -- we found it
            element.itemName = speciesName
            if owned then
                count = count + 1
            end
        end
    end

    if not element.rawtext then
        element.text = fmt("%s: %d/%d", element.itemName,count,element.total)
        element.tooltipText = element.text
    end
    if step.active and count >= element.total then
        if element.skipStep then
            element.step.completed = true
            addon.updateSteps = true
        else
            addon.SetElementComplete(self)
        end
    end
end

function addon.functions.tradeskill(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id, index = ...
        id = tonumber(id)
        index = tonumber(index)
        if not id or not index then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No npc ID or skill index provided provided\n' .. self)
        end
        element.id = id
        element.index = index
        if text and text ~= "" then
            element.text = text
        else
            element.text = "-"
        end
        element.requestFromServer = true
        element.tooltipText = addon.icons.trainer .. element.text
        return element
    end

    local element = self.element

    --print (IsTradeskillTrainer())
    local _, _, _, _, _, npcId = strsplit('-', UnitGUID("npc") or "");
    local isCollected = false
    npcId = tonumber(npcId)
    if npcId == element.id and IsTradeskillTrainer() then -- npc number check and tradeskill trainer
        if (not GetTrainerServiceTypeFilter("available")) then
            SetTrainerServiceTypeFilter("available", 1)
        end
        if (not GetTrainerServiceTypeFilter("unavailable")) then
            SetTrainerServiceTypeFilter("unavailable", 1)
        end
        if (not GetTrainerServiceTypeFilter("used")) then
            SetTrainerServiceTypeFilter("used", 1)
        end
        local _, used = GetTrainerServiceInfo(element.index)
        --print (used)
        if used == "used" then
            isCollected = true
        else
            if used == "available" then
                BuyTrainerService(element.index)
                isCollected = true
            end
        end
    end

    if isCollected then
        addon.SetElementComplete(self, true)
    end
end

events.achievement = {"CRITERIA_UPDATE","ACHIEVEMENT_EARNED"}
events.achievementComplete = events.achievement
events.achievementIncomplete = events.achievement
function addon.functions.achievement(self, ...)
    if not GetAchievementInfo then
        return
    elseif type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id, criteria, numReq = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': Invalid ID\n' .. self)
        end
        element.numReq = tonumber(numReq)
        element.id = id
        element.criteria = tonumber(criteria) or 0
        if text and text ~= "" then
            element.rawtext = text
            element.tooltipText = element.rawtext
        end
        return element
    end

    local element = self.element
    local id, displayText, points, completed = GetAchievementInfo(element.id)
    local quantity, reqQuantity = completed and 1 or 0,1

    if element.criteria > GetAchievementNumCriteria(element.id) then
        element.criteria = 0
    end

    if element.criteria > 0 then
        displayText, _, completed, quantity, reqQuantity = GetAchievementCriteriaInfo(element.id,element.criteria)
    end

    if element.numReq and element.numReq < reqQuantity then
        reqQuantity = reqQuantity
    end

    if not element.textOnly then
        displayText = element.rawtext or displayText
        element.text = fmt("%s: %d/%d",displayText,quantity,reqQuantity)
        element.tooltipText = element.text
    end

    if (completed or quantity >= reqQuantity) == not element.reverse then
        if element.skipStep then
            element.step.completed = true
            addon.updateSteps = true
        else
            addon.SetElementComplete(self)
        end
    end
end

function addon.functions.achievementComplete(self, ...)
    local element = addon.functions.achievement(self, ...)
    if type(element) == "table" then
        element.skipStep = true
        element.textOnly = true
        element.reverse = true
        return element
    end
end

function addon.functions.achievementIncomplete(self, ...)
    local element = addon.functions.achievement(self, ...)
    if type(element) == "table" then
        element.skipStep = true
        element.textOnly = true
        return element
    end
end

function addon.functions.isWorldQuestAvailable(self, ...)
    if not C_TaskQuest then
        return
    elseif type(self) == "string" then -- on parse
        local text, mapId, questId, remaining = ...
        mapId = addon.GetMapId(mapId) or tonumber(mapId)
        questId = tonumber(questId)
        if not (questId and mapId) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': Invalid ID\n' .. self)
        end
        local element = {textOnly = true, mapId = mapId, questId = questId, duration = tonumber(remaining) or -1, reverse = false}
        if text and text ~= "" then
            element.text = text
        end
        return element
    end

    local element = self.element
    local taskInfo = C_TaskQuest.GetQuestsForPlayerByMapID(element.mapId)

    local available = false

    for i=1, #taskInfo do
        local questId = taskInfo[i].questId
        if questId == element.questId and QuestUtils_IsQuestWorldQuest(questId) then
            local timeLeft = C_TaskQuest.GetQuestTimeLeftMinutes(questId)
            if (element.duration < 0 or timeLeft >= element.duration) then
                available = true
            end
            break
        end
    end

    if available == element.reverse then
        element.step.completed = true
        addon.updateSteps = true
    end

end

function addon.functions.isWorldQuestUnavailable(self, ...)
    local element = addon.functions.isWorldQuestAvailable(self, ...)
    if type(element) == "table" then
        element.reverse = true
        return element
    end
end

events.itemStat = "PLAYER_EQUIPMENT_CHANGED"
function addon.functions.itemStat(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, slot, stat, value = ...
        slot = tonumber(slot)
        if value then
            value = value:gsub(" ", "")
            local operator, total = value:match("([<>]?)(.+)")
            element.operator = operator
            element.total = total
        end
        if not (slot and stat and element.total) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': Invalid arguments\n' .. self)
        end
        element.slot = slot
        element.stat = stat
        element.textOnly = true
        element.text = text
        return element
    else
        local element = self.element
        local step = element.step
        if step.active then
            local completed
            local stats = GetItemStats(GetInventoryItemLink("player", element.slot) or "") or {}
            local stat
            if element.stat == "QUALITY" then
                stat = GetInventoryItemQuality("player", element.slot)
            elseif element.stat == "LEVEL" then
                local itemID = GetInventoryItemID("player", element.slot)
                if itemID then
                    _, _, _, stat = GetItemInfo(itemID)
                end
            else
                stat = stats[element.stat]
            end

            if not stat then
                return
            elseif type(stat) == "number" then
                stat = addon.Round(stat,1)
                --print(stat)
                element.total = tonumber(element.total) or 0
                --print('+',stat,element.total, element.operator)
                if (element.operator == ">" and element.total < stat) or (element.operator == "<" and element.total > stat) then
                    completed = true
                elseif element.operator == "" and element.total == stat then
                    completed = true
                end
            else
                completed = element.total == stat
            end

            if not completed then
                element.step.completed = true
                addon.updateSteps = true
            end
        end
    end
end

function addon.GetCurrencyName(id)
    id = id or false
    id = tonumber(id)
    if not id then return end
    local basicCurrencyInfo = C_CurrencyInfo.GetBasicCurrencyInfo(id)
    local name = basicCurrencyInfo and basicCurrencyInfo.name
    return name
end

function addon.functions.collectcurrency(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id, qty = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No currency ID provided\n' .. self)
        end
        element.id = id
        qty = tonumber(qty)
        element.qty = qty or 1
        element.currencyName = addon.GetCurrencyName(element.id)

        if text and text ~= "" then
            element.rawtext = text
            element.tooltipText = addon.icons.collect .. element.rawtext
        else
            element.requestFromServer = true
            element.text = " "
        end
        return element
    end

    local element = self.element
    local name = addon.GetCurrencyName(element.id)
    local numRequired = element.qty
    element.currencyName = name

    local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(element.id)
    local count = currencyInfo and currencyInfo.quantity or 0

    element.text = fmt("%d/%d %s", count, numRequired, element.currencyName)
    element.tooltipText = addon.icons.collect .. element.text

    if element.lastCount ~= count then addon.UpdateStepText(self) end
    element.lastCount = count

    if numRequired > 0 and count >= numRequired then
        addon.SetElementComplete(self, true)
    elseif numRequired == 0 and count == 0 then
        addon.SetElementComplete(self)
    elseif not element.textOnly then
        addon.SetElementIncomplete(self)
    end
end

addon.dungeons = {}
function addon.functions.dungeon(self, text, instance)
    if type(self) == "string" and addon.GetDungeonName then -- on parse
        local skip
        if instance and instance:sub(1,1) == "!" then
            instance = instance:sub(2,-1)
            skip = true
        end
        local name, tag = addon.GetDungeonName(instance)
        if tag and not skip then
            if RXPCData.guideMetaData.enabledDungeons[addon.player.faction] then
                RXPCData.guideMetaData.enabledDungeons[addon.player.faction][tag] = name
            end
            addon.dungeons[tag] = name
            addon.step.dungeon = tag
            --print(tag,name)
            RXPCData.guideMetaData.dungeonGuides[addon.currentGuideGroup] = true
        elseif tag and skip then
            addon.step.dungeonskip = tag
        else
            return addon.error(
                L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                   ': Invalid dungeon name\n' .. self)
        end

        if text and text ~= "" then
            return {textOnly = true, text = text}
        end

    end
end

addon.professions = {}
function addon.functions.profession(self, text, instance)
    if type(self) == "string" then -- on parse
        local skip
        if instance and instance:sub(1,1) == "!" then
            instance = instance:sub(2,-1)
            skip = true
        end
        if not addon.GetProfessionId then return end
        local tag = addon.GetProfessionId(instance)

        if tag and not skip then
            if RXPCData.guideMetaData.professionGuides[addon.player.faction] then
                RXPCData.guideMetaData.professionGuides[addon.player.faction][tag] = true
            end
            addon.professions[tag] = true
            addon.step.profession = tag
            --print(tag,name)
            RXPCData.guideMetaData.professionGuides[addon.currentGuideGroup] = true
        elseif tag and skip then
            addon.step.professionskip = tag
        else
            return addon.error(
                L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                   ': Invalid profession name\n' .. self)
        end

        if text and text ~= "" then
            return {textOnly = true, text = text}
        end

    end
end

function addon.functions.group(self, ...)
    if type(self) == "string" then -- on parse
        local text, number = ...
        local generateText
        if not number then generateText = true end
        number = tonumber(number)
        text = text or (number and number > 0) and
            fmt(L"Do NOT attempt this quest unless you are in a group of at least %d",number)

        addon.step.group = true
        addon.step.solo = false
        RXPCData.guideMetaData.enableGroupQuests[addon.currentGuideGroup] = true
        return {hideTooltip = true,textOnly = true, text = text, generateText = generateText}
    end

    local element = self.element
    if element.generateText then
        for _,e in pairs(element.step.elements) do
            if e.tag == "complete" or e.tag == "collect" then
                element.text = L"This step is meant to be completed as a group, be careful"
                element.generateText = nil
                return
            end
        end
    end
end

function addon.functions.solo(self, text)
    if type(self) == "string" then -- on parse
        addon.step.group = false
        addon.step.solo = true
        if text and text ~= "" then
            return {text = text, textOnly = true}
        end
    end
end

function addon.functions.disablecheckbox(self, text)
    if type(self) == "string" then -- on parse
        return {text = text, textOnly = true, parent = true}
    end
    local element = self.element
    if element.parent and not element.parent.textOnly then
        element.parent.textOnly = true
        if element.step.active then
            addon.SetElementComplete(element.parent)
            addon.RXPFrame.CurrentStepFrame.UpdateText()
        end
    end
end

addon.QuestDB = addon.QuestDB or {}
function addon.functions.addtoquestdb(self,text,index,...)
    if type(self) == "string" then
        local group = addon.guide.group
        local questDB
        index = tonumber(index)
        if not group then
            return
        elseif addon.QuestDB[group] then
            questDB = addon.QuestDB[group]
            if questDB[index] then
                return
            end
        else
            questDB = {}
            addon.QuestDB[group] = questDB
        end
        if not index then return end
        local tindex = {}
        questDB[index] = tindex

        for _,arg in ipairs({...}) do
            local k,v = arg:match("(.+):(.*)")
            k = tonumber(k) or k
            if k then
                v = v == "true" or tonumber(v) or v
                if type(v) == "string" and v:find(";") then
                    local t = {}
                    for entry in v:gmatch("[^;]+") do
                        tinsert(t,entry)
                    end
                    v = t
                end
                tindex[k] = v
            end
            --print(k,v)
        end

    end
end

addon.separators.setquestdb = function(t,args)
    table.insert(t,args)
end

function addon.functions.setquestdb(self,text,str)
    if type(self) == "string" then
        local group = addon.guide.group
        if not group or addon.QuestDB[group] then
            return
        end
        local t = assert(loadstring("return " .. str))
        setfenv(t, {})
        addon.QuestDB[group] = t()
    end
end

function addon.functions.convertquest(self, text, src, dst)
    if type(self) == "string" then -- on parse
        src = tonumber(src)
        dst = tonumber(dst)
        if not (src and dst) then
            return addon.error(self,"Invalid IDs")
        end
        local guide = addon.guide
        if guide.questConversion then
            guide.questConversion[src] = dst
        else
            guide.questConversion = {[src] = dst}
        end
        return {text = text, textOnly = true, src = src, dst = dst}
    end
    local element = self.element
    local guide = addon.currentGuide
    if guide.questConversion then
        guide.questConversion[element.src] = element.dst
    else
        guide.questConversion = {[element.src] = element.dst}
    end
end

events.aura = "UNIT_AURA"
function addon.functions.aura(self, ...)
    if type(self) == "string" then
        local text, id, duration, target = ...
        id = tonumber(id)
        if not id then
            return addon.error(self,"Invalid aura ID")
        end
        local element = {text = text, textOnly = not text, unit = target or "player"}
        if duration then
            local operator, elapsed, stack = duration:match("(<?)%s*(%d+)([%-%+]?)")
            if operator == "<" or stack == "-" then
                element.reverse = true
            end

            if stack == "+" or stack == "-" then
                element.duration = 0
                element.stacks = tonumber(elapsed)
            else
                element.duration = tonumber(elapsed) or 0
            end
        else
            element.duration = 0
        end

        if id < 0 then
            id = -id
            element.reverse = not element.reverse
        end
        element.id = id
        return element
    end
    local element = self.element
    local step = element.step
    local event, target = ...
    if (target == "player" or event ~= "UNIT_AURA") and step.active then
        local buffFound = false

        local function CheckBuffs(func)
            for i = 1, 32 do
                local name, icon, count, _, duration, expirationTime, _, _, _, spellId = func(element.unit, i)
                if spellId == element.id then
                    local remaining = expirationTime - GetTime()
                    --print(remaining,duration,expirationTime)
                    if (not element.stacks or count >= element.stacks) and (remaining > element.duration or (duration == expirationTime and duration == 0)) then
                        element.icon = "|T" .. icon .. ":0|t"
                        buffFound = true
                        break
                    end
                end
            end
        end
        CheckBuffs(UnitDebuff)
        CheckBuffs(UnitBuff)
        if buffFound == not element.reverse then
            if element.text then
                addon.SetElementComplete(self)
            else
                step.completed = true
                addon.updateSteps = true
            end
        elseif not element.textOnly then
            addon.SetElementIncomplete(self)
        end
    end
end

events.equip = "PLAYER_EQUIPMENT_CHANGED"
function addon.functions.equip(self, ...)
    if type(self) == "string" then
        local text, slot, id = ...
        slot = tonumber(slot)
        local element = {text = text, textOnly = not text }
        if not slot then
            return addon.error(self,"Invalid slot Id")
        end

        if slot < 0 then
            slot = -slot
            element.reverse = not element.reverse
        end
        id = tonumber(id)
        element.slot = slot
        element.id = id
        return element
    end
    local element = self.element
    local step = element.step
    local event, target = ...
    if (target == element.slot or event ~= "PLAYER_EQUIPMENT_CHANGED") and step.active then

        local currentItem = GetInventoryItemID('player', element.slot) or false
        local isEquipped = currentItem and (not element.id or element.id == currentItem)
        --print(element.slot,element.id,isEquipped)
        if isEquipped == not element.reverse then
            if element.text then
                addon.SetElementComplete(self,true)
            else
                step.completed = true
                addon.updateSteps = true
            end
        elseif not element.textOnly then
            addon.SetElementIncomplete(self)
        end
    end
end


events.engrave = {"PLAYER_EQUIPMENT_CHANGED","RUNE_UPDATED"}
function addon.functions.engrave(self, ...)
    if addon.player.season ~= 2 then return end
    if type(self) == "string" then
        local text, slot, id = ...
        slot = tonumber(slot)
        id = tonumber(id)
        if not slot then
            return addon.error(self,"Invalid slot ID")
        end
        local element = {text = text, textOnly = not text }

        if slot < 0 then
            slot = -slot
            element.reverse = not element.reverse
        end
        element.id = id
        element.slot = slot
        return element
    end
    local element = self.element
    local step = element.step
    local event, target = ...
    if (target == element.slot or event ~= "PLAYER_EQUIPMENT_CHANGED") and step.active then

        local currentItem = C_Engraving and C_Engraving.GetRuneForEquipmentSlot(element.slot)
        local isEquipped = false
        if element.id and currentItem then
            local spells = currentItem and currentItem.learnedAbilitySpellIDs
            if element.id == currentItem.skillLineAbilityID then
                isEquipped = true
            elseif type(spells) == "table" then
                for _,id in pairs(spells) do
                    if id == element.id then
                        isEquipped = true
                        break
                    end
                end
            end
        elseif currentItem then
            isEquipped = true
        end
        if isEquipped == not element.reverse then
            if element.text then
                addon.SetElementComplete(self,true)
            else
                step.completed = true
                addon.updateSteps = true
            end
        elseif not element.textOnly then
            addon.SetElementIncomplete(self)
        end
    end
end

function addon.functions.openitem(self,text,id)
    if type(self) == "string" then
        return {id = tonumber(id), text = text, textOnly = true}
    end
    local element = self.element
    if element.step.active then
        addon.inventoryManager.itemsToOpen[element.id] = true
    end
end

events.isInScenario = {"SCENARIO_UPDATE"}
function addon.functions.isInScenario(self, ...)
    if type(self) == "string" then
        local element = {}
        local text, scenario = ...
        element.scenario = tonumber(scenario)
        element.textOnly = true
        return element
    end

    local event, newStep = ...
    local element = self.element
    local step = element.step

    if event ~= "WindowUpdate" then
        local scenarioInfo = C_ScenarioInfo.GetScenarioInfo()
        if step.active and not addon.settings.profile.debug and not addon.isHidden and scenarioInfo and scenarioInfo.scenarioID ~= element.scenario then
            element.tooltipText = "Step skipped: Wrong scenario"
            step.completed = true
            addon.updateSteps = true
        elseif step.active and not step.completed then
            element.tooltipText = nil
        end
        if addon.settings.profile.debug then
            print(scenarioInfo and scenarioInfo.scenarioID)
        end
    end
end

function addon.functions.neutralzonefinished(self, event)
    if event == "WindowUpdate" then
        return
    elseif type(self) == "string" then
        return {}
    end
    local step = self.element and self.element.step
    --print(3,self,event,step.active)
    if step and step.active then
        local faction = UnitFactionGroup("player")
        addon.player.faction = faction
        addon:ScheduleTask(addon.RXPFrame.GenerateMenuTable)
    end

end

function addon.functions.beta(self, text)
    if type(self) == "string" and addon.player.beta then
        return {text = text, textOnly = true}
    end
end

function addon.functions.klaxxi(self,text,poi,arg1)
    return addon.functions.dailyhub(self,text,"klaxxi",poi,arg1)
end

function addon.functions.celestial(self,text,poi,arg1)
    return addon.functions.dailyhub(self,text,"celestial",poi,arg1)
end

function addon.functions.dailyhub(self, text, hub, poi, arg1)
    if type(self) == "string" then
        return {text = text,textOnly = true, poi = poi, arg1 = arg1, hub = hub}
    end

    local element = self.element
    local event = hub
    local step = element.step
    local t = time()
    local dr = addon.realmData.dailyReset or 0
    hub = element.hub
    if dr < t then
        addon.realmData.dailyReset = time() + C_DateAndTime.GetSecondsUntilDailyReset()
        addon.realmData[hub] = nil
    end

    if not step.active or event == "WindowUpdate" then return end

    poi = addon.realmData[hub]
    local match
    if poi == element.poi or (element.poi == 'unknown' and not poi) then
        match = true
    end

    if element.arg1 then match = not match end

    if not addon.settings.profile.debug and not addon.isHidden and not match then
        --element.tooltipText = "Step skipped: Missing pre-requisites"
        step.completed = true
        addon.updateSteps = true
    elseif not step.completed then
        element.tooltipText = nil
    end
end

function addon.functions.vale(self, text, poi, arg1)
    if type(self) == "string" then
        return {text = text, textOnly = true, poi = poi, arg1 = arg1}
    end

    local element = self.element
    local event = text
    local step = element.step
    local t = time()
    local dr = addon.realmData.dailyReset or 0
    addon.realmData.voteb = nil
    if dr < t or not addon.realmData.voeb then
        addon.realmData.dailyReset = t + C_DateAndTime.GetSecondsUntilDailyReset()
        addon.realmData.voeb = {}
    end

    if not step.active or event == "WindowUpdate" then return end

    poi = addon.realmData.voeb
    local match
    if poi[element.poi] or (element.poi == 'unknown' and not next(poi)) then
        match = true
    end

    if element.arg1 then match = not match end

    if not addon.settings.profile.debug and not addon.isHidden and not match then
        --element.tooltipText = "Step skipped: Missing pre-requisites"
        step.completed = true
        addon.updateSteps = true
    elseif not step.completed then
        element.tooltipText = nil
    end
end

function addon.functions.isQuestOffered(self, text, npc, ...)
    if type(self) == "string" then
        npc = tonumber(npc)
        if not npc then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ': Invalid npc ID provided\n' .. self)
        end
        local element = {textOnly = true, text = text, npc = npc, ids = {...}}
        local ids = {}
        for _,q in pairs({...}) do
            local id = tonumber(q)
            if id then
                ids[id] = true
            end
        end
        element.ids = ids
        return element
    end
    local element = self.element
    local step = element.step
    if not step.active then
        return
    end
    local event = text
    local frame = _G.GossipFrame
    if not event and frame:IsShown() then
        event = "GOSSIP_SHOW"
    end
    if event == "GOSSIP_SHOW" then
        if UnitExists('target') and not UnitIsPlayer('target') and not element.name then
            local name = UnitName('target')
            element.currentNPC = addon.GetNpcId()
            element.name = name
            --element.level = 0
            --print(name,element.currentNPC)
        end
        local title
        if not frame then
            return
        elseif frame.NineSlice then
            title = frame:IsShown() and frame:GetTitleText():GetText()
        else
            title = frame:IsShown() and frame.TitleContainer.TitleText:GetText()
        end
        if element.currentNPC == element.npc and title == element.name then
            local quests = C_GossipInfo.GetAvailableQuests()
            local match
            for _,q in pairs(quests) do
                if element.ids[q.questID] then
                    match = true
                    element.found = true
                    break
                end
            end
            if not match then
                element.tooltipText = not element.found and "Step skipped: Quest is not being offered"
                step.completed = true
                addon.updateSteps = true
            end
        end
    end
    if event == "PLAYER_INTERACTION_MANAGER_FRAME_HIDE" then
        element.name = nil
        element.currentNPC = nil
        _G.GossipFrame:Hide()
    end
end

function addon.functions.dailyreset(self, text, hub, arg1)
    if not addon.dailyDB then
        return
    elseif type(self) == "string" then
        return {text = text,textOnly = true, arg1 = arg1, hub = hub}
    end
    local element = self.element
    if not element.step.active then
        element.check = false
        return
    elseif not element.check then
        element.check = true
        addon.dailyDB.ResetQuests(element.hub)
    end
end

events.skipOnQuest = {"QUEST_ACCEPTED","QUEST_LOG_UPDATE"}
function addon.functions.skipOnQuest(self, text, id, label)
    if type(self) == "string" then
        id = tonumber(id)
        if not (id and label) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end

        return {textOnly = true, id = id, label = label}
    end
    local element = self.element
    local step = element.step

    if not step.active then return end
    local event = text
    local guide = addon.currentGuide
    local onQuest = addon.IsOnQuest(element.id)

    if not step.completed and (onQuest or label == element.id) then
        addon.updateSteps = true
        step.completed = true
        local ref = element.label
        if ref and guide.labels[ref] then
            local n = guide.labels[ref]
            addon.nextStep = guide.labels[ref]
            return
        end
    end

end

function addon.GetChoiceId()
    if not C_PlayerChoice then return end
    local choices = C_PlayerChoice.GetCurrentPlayerChoiceInfo()
    if choices and choices.options then
        for _,t in pairs(choices.options) do
            print(t.header..":",t.choiceArtID)
        end
        return
    end
    print('-- Chromie Time --')
    for _,t in pairs(C_ChromieTime.GetChromieTimeExpansionOptions()) do
        print(t.name..':',t.id)
    end
end

events.choose = "PLAYER_CHOICE_UPDATE"
function addon.functions.choose(self,text,id,button)
    if not C_PlayerChoice then
        return
    elseif type(self) == "string" then
        return {text = text, id = tonumber(id), textOnly = true, button = tonumber(button) or 1}
    end
    --addon.GetChoiceId()
    local element = self.element
    if not element.step.active then return end
    local choices = C_PlayerChoice.GetCurrentPlayerChoiceInfo()
    if choices and choices.options then
        for _,t in pairs(choices.options) do
            if t.choiceArtID == element.id or t.id == element.id then
                local b = t.buttons[element.button].id
                C_PlayerChoice.SendPlayerChoiceResponse(b)
                addon:ScheduleTask(C_PlayerChoice.OnUIClosed)
            end
        end
    end

end

events.chromietime = "PLAYER_INTERACTION_MANAGER_FRAME_SHOW"
function addon.functions.chromietime(self,text,id)
    if not C_ChromieTime then
        return
    elseif type(self) == "string" then
        return {text = text, id = id, textOnly = true}
    end
    local element = self.element
    if id ~= Enum.PlayerInteractionType.ChromieTime or not element.step.active then
        return
    end
    id = element.id
    for _,t in pairs(C_ChromieTime.GetChromieTimeExpansionOptions()) do
        if t.id == tonumber(id) or id == t.previewAtlas or id == t.mapAtlas then
            C_ChromieTime.SelectChromieTimeOption(t.id)
            return
        end
    end
end
