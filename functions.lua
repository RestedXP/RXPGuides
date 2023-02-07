local addonName, addon = ...

local faction = UnitFactionGroup("player")
local _, class = UnitClass("player")
local gameVersion = select(4, GetBuildInfo())
local RXPG = addon.RXPG
local L = addon.locale.Get
addon.functions.__index = addon.functions
local events = {}
addon.stepUpdateList = {}
addon.functions.events = events
events.collect = {"BAG_UPDATE", "QUEST_LOG_UPDATE","MERCHANT_SHOW"}
events.buy = events.collect
events.accept = {"QUEST_ACCEPTED", "QUEST_TURNED_IN", "QUEST_REMOVED"}
events.turnin = "QUEST_TURNED_IN"
events.complete = "QUEST_LOG_UPDATE"
events.fp = {"UI_INFO_MESSAGE", "TAXIMAP_OPENED", "GOSSIP_SHOW"}
events.hs = {"UNIT_SPELLCAST_SUCCEEDED"}
events.home = {"HEARTHSTONE_BOUND","CONFIRM_BINDER","GOSSIP_SHOW"}
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
events.zone = "ZONE_CHANGED_NEW_AREA"
events.bankdeposit = {"BANKFRAME_OPENED", "BAG_UPDATE"}
events.skipgossip = {"GOSSIP_SHOW", "GOSSIP_CLOSED", "GOSSIP_CONFIRM_CANCEL"}
events.gossipoption = {"GOSSIP_SHOW"}
events.skipgossipid = events.gossipoption
events.vehicle = {"UNIT_ENTERING_VEHICLE", "VEHICLE_UPDATE", "UNIT_EXITING_VEHICLE"}
events.skill = {"SKILL_LINES_CHANGED", "LEARNED_SPELL_IN_TAB"}
events.emote = "PLAYER_TARGET_CHANGED"
events.collectmount = {"COMPANION_LEARNED", "COMPANION_UNLEARNED", "COMPANION_UPDATE", "NEW_PET_ADDED"}
events.collecttoy = {"TOYS_UPDATED"}
events.collectpet = {"COMPANION_LEARNED", "COMPANION_UNLEARNED", "COMPANION_UPDATE", "NEW_PET_ADDED"}
events.tradeskill = events.train

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
}
if addon.gameVersion > 40000 then
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
addon.icons.groundgoto = addon.icons["goto"]
addon.icons.flygoto = addon.icons["goto"]

addon.icons.acceptmultiple = addon.icons.accept
addon.icons.turninmultiple = addon.icons.turnin
addon.icons.xpto60 = addon.icons.xp

function addon.error(msg) print(msg) end

local _G = _G

local GetNumQuests = C_QuestLog.GetNumQuestLogEntries or
                         _G.GetNumQuestLogEntries
local GetQuestLogTitle = _G.GetQuestLogTitle
local GetNumDayEvents = _G.C_Calendar.GetNumDayEvents
local GetDayEvent = _G.C_Calendar.GetDayEvent
local GetCurrentCalendarTime = _G.C_DateAndTime.GetCurrentCalendarTime
local OpenCalendar = _G.C_Calendar.OpenCalendar
local GossipSelectOption = _G.SelectGossipOption
local GossipGetOptions = C_GossipInfo.GetOptions or _G.GetGossipOptions
local PickupContainerItem = C_Container and C_Container.PickupContainerItem or _G.PickupContainerItem
local GetContainerNumFreeSlots =  C_Container and C_Container.GetContainerNumFreeSlots or _G.GetContainerNumFreeSlots
local GetContainerNumSlots =  C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID
local GetContainerItemInfo = C_Container and C_Container.GetContainerItemInfo or _G.GetContainerItemInfo
local GetItemCooldown = addon.GetItemCooldown

addon.recentTurnIn = {}

local IsTurnedIn = C_QuestLog.IsQuestFlaggedCompleted
if not IsTurnedIn then
    IsTurnedIn = _G.IsQuestFlaggedCompleted
    if not IsTurnedIn then
        IsTurnedIn = function(id) return _G.GetQuestsCompleted()[id] end
    end
end

local IsQuestTurnedIn = function(id)
    local recentTurnIn = addon.recentTurnIn[id]
    local isQuestTurnedIn = IsTurnedIn(id)
    if isQuestTurnedIn then addon.recentTurnIn[id] = nil end
    return isQuestTurnedIn or (recentTurnIn and GetTime() - recentTurnIn < 2)
end

function addon.IsQuestComplete(id)
    if not id then return end

    if C_QuestLog.IsComplete then
        return C_QuestLog.IsComplete(id)
    else
        for i = 1, GetNumQuests() do
            local questLogTitleText, level, questTag, isHeader, isCollapsed,
                  isComplete, frequency, questID = GetQuestLogTitle(i);
            if questID == id then
                return isComplete
            end
        end
    end
end
local IsQuestComplete = addon.IsQuestComplete

local function IsOnQuest(id) return C_QuestLog.IsOnQuest(id) end

local function GetLogIndexForQuestID(questID)
    if C_QuestLog.GetLogIndexForQuestID then
        return C_QuestLog.GetLogIndexForQuestID(questID),C_QuestLog.IsPushableQuest(questID)
    else
        for i = 1, GetNumQuests() do
            local _, _, _, _, _, _, _, id = GetQuestLogTitle(i);
            if questID == id then
                SelectQuestLogEntry(i)
                return i,GetQuestLogPushable()
            end
        end
    end
end

addon.IsOnQuest = IsOnQuest
addon.IsQuestTurnedIn = IsQuestTurnedIn
addon.IsQuestComplete = IsQuestComplete

local questConversion = addon.questConversion

local timer = GetTime()
local nrequests = 0
local requests = {}
addon.requestQuestInfo = requests
local questNameCache = {}
local questObjectivesCache = {}

local db
if _G.QuestieLoader then db = _G.QuestieLoader:ImportModule("QuestieDB") end
addon.questieDB = db

function addon.FormatNumber(number, precision)
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
    precision = precision and 10 ^ precision or 1
    local integer = math.floor(number)
    return integer + math.floor((number - integer) * precision + 0.5)/precision
end

function addon.GetQuestName(id)
    if type(id) ~= "number" then return end
    id = questConversion[id] or id
    local name
    if db and type(db.QueryQuest) == "function" and type(db.GetQuest) ==
        "function" then
        local quest = db:GetQuest(id)
        if quest and quest.name then return quest.name end
    end

    if IsOnQuest(id) then
        if GetQuestLogTitle then
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
        if ctime - timer > 1.5 then
            timer = ctime
            nrequests = 0
        end

        if nrequests < 3 or requests[id] == 0 then
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

function addon.GetQuestObjectives(id, step)
    id = questConversion[id] or id
    step = step or 0
    if not id then return end
    local err = false
    if IsOnQuest(id) then
        local questInfo = {}
        local qInfo = {}
        for i = 1, GetNumQuests() do
            local questLogTitleText, level, questTag, isHeader, isCollapsed,
                  isComplete, frequency, questID
            if GetQuestLogTitle then
                questLogTitleText, level, questTag, isHeader, isCollapsed, isComplete, frequency, questID =
                    GetQuestLogTitle(i);
            else
                qInfo = C_QuestLog.GetInfo(i)
                questID = qInfo.questID
                isHeader = qInfo.isHeader
                if questID then
                    isComplete = C_QuestLog.IsComplete(questID)
                end
            end
            local nObj = 0
            if questID == id then
                for j = 1, GetNumQuestLeaderBoards(i) do
                    local description, objectiveType, isCompleted =
                        GetQuestLogLeaderBoard(j, i)
                    if description then
                        nObj = nObj + 1
                        local fulfilled, required = description:match(
                                                        "(%d+)/(%d+)")
                        if required then
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
                    questObjectivesCache[id] = questInfo
                    return questInfo
                else
                    questObjectivesCache[id] = questInfo
                    return questInfo
                end
            end
        end
    elseif db and type(db.QueryQuest) == "function" and
        math.abs(RXPCData.currentStep - step) > 4 and type(db.GetQuest) ==
        "function" then
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

    if not IsOnQuest(id) or err then
        local ctime = GetTime()
        if ctime - timer > 1.5 then
            timer = ctime
            nrequests = 0
        end

        if nrequests < 3 or requests[id] == 0 then
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
end

function addon.GetItemName(id)
    id = id or false
    id = tonumber(id)
    if not id then return end
    local name = GetItemInfo(id)
    if not name then addon.itemQueryList[id] = true end
    return name
end

function addon.SetElementComplete(self, disable)
    if not self.element.completed then
        self.element.completed = true
        self.element.skip = true
        addon.updateSteps = true
        addon.updateMap = true
    end
    if self.button then
        -- print('----ok',disable)
        self.button:SetChecked(true)
        if disable then self.button:Disable() end
    end
end

function addon.SetElementIncomplete(self)
    if self.element.completed then
        self.element.completed = false
        addon.updateMap = true
    end
    if self.button then
        self.button:Enable()
        if not self.element.skip then self.button:SetChecked(false) end
    end
end

function addon.UpdateStepText(self)
    addon.updateStepText = true
    local index
    if type(self) == "number" then
        index = self
    else
        index = self.step.index
    end
    addon.stepUpdateList[index] = true
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
local HBDPins = LibStub("HereBeDragons-Pins-2.0")

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
            table.insert(requiredQuests, preQuestSingle)
        end
    end
    if quest.preQuestGroup then
        for _, qID in pairs(quest.preQuestGroup) do
            if not ((addon.questTurnIn[qID] and
                (IsOnQuest(qID) or addon.questAccept[qID] or
                    not addon.pickUpList[qID])) or IsQuestTurnedIn(qID)) then
                table.insert(requiredQuests, qID)
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

    table.insert(tbl[id],entry)
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
        local element = {}
        element.tag = "accept"
        local text, id, flags, arg1 = ...
        id = tonumber(id)
        flags = tonumber(flags) or 0
        if not id then
            return addon.error(
                       L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.title = ""
        element.questId = questConversion[id] or id
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
        element.tooltipText = addon.icons.accept .. element.text

        element.flags = flags
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
        local isQuestAccepted = IsQuestTurnedIn(id) or IsOnQuest(id)

        if (event == "QUEST_ACCEPTED" and questId == id) then
            isQuestAccepted = true
        end

        if element.step.active or element.retrieveText or
            (element.step.index > 1 and
                addon.currentGuide.steps[element.step.index - 1].active) then
            local autoAccept = bit.band(element.flags,0x1) ~= 0x1
            if autoAccept then addon.questAccept[id] = element end
            local quest = addon.GetQuestName(id, element)
            if quest then
                element.title = quest
                if autoAccept then
                    addon.questAccept[id] = element
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

                if addon.settings.db.profile.shareQuests then
                    local questLogIndex,isPushable = GetLogIndexForQuestID(id);
                    if questLogIndex and isPushable then
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
                ids[i] = questConversion[questId] or questId
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

addon.turnInList = {}
function addon.functions.turnin(self, ...)

    if type(self) == "string" then -- on parse
        local element = {}
        local text, id, reward = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        if id < 0 then
            id = -id
            element.skipIfMissing = true
        end
        element.questId = questConversion[id] or id
        if addon.settings.db.profile.enableQuestRewardAutomation then
            element.reward = tonumber(reward) or 0
        else
            element.reward = 0
        end
        element.title = ""
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

        if step.active or element.retrieveText then
            addon.questTurnIn[id] = element
            -- addon.questAccept[id] = addon.questAccept[id] or element
            local quest = addon.GetQuestName(id)
            if quest then
                element.title = quest
                addon.questTurnIn[quest] = element
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
                    table.insert(requiredQuests, id)
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
            addon.SetElementComplete(self)
            addon.recentTurnIn[id] = GetTime()
        elseif isComplete then
            addon.SetElementComplete(self, true)
            addon.recentTurnIn[id] = GetTime()
        end

        if step.active then
            if element.skipIfMissing and not IsOnQuest(id) then
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
                ids[i] = questConversion[questId] or questId
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

function addon.UpdateQuestCompletionData(self)

    local element = self.element
    if not element then return end
    local step = element.step
    local icon = addon.icons.complete
    local id = element.questId

    if not element.tag or element.tag ~= "complete" then
        return
    elseif type(id) ~= "number" then
        print('Error (.' .. element.tag .. '): Invalid quest ID at step ' .. element.step.index)
        return
    end
    -- local skip
    local objectives = addon.GetQuestObjectives(id, element.step.index)
    local isQuestComplete = IsQuestTurnedIn(id) or IsQuestComplete(id)

    local objtext = " "
    local completed

    if objectives and #objectives > 0 then
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
            elseif obj.type == "monster" and
                (t:find(questMonster) or obj.questie) then
                icon = addon.icons.combat
            end

            if not obj.questie then
                if obj.type == "event" then
                    if isQuestComplete then
                        t = string.format(t .. ": %d/%d", obj.numRequired,
                                          obj.numRequired)
                    else
                        t = string.format(t .. ": %d/%d", obj.numFulfilled,
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
    else
        element.requestFromServer = true
        element.text = L("Retrieving quest data") .. "..."
        element.tooltipText = nil

        addon.UpdateStepText(self)
        return
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
                    table.insert(requiredQuests, id)
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
    if not quest or prefix == " " or prefix == ":" then
        element.requestFromServer = true
    elseif quest then
        element.requestFromServer = nil
    end

    completed = completed or isQuestComplete

    element.tooltipText = icon .. objtext:gsub("\n", "\n   " .. icon)
    local text = objtext
    element.text = text

    addon.UpdateStepText(self)

    if completed then
        if not element.completed and step.active == true then
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

        addon.SetElementComplete(self, true)
        -- elseif skip then
        --    addon.SetElementComplete(self)
    else
        addon.SetElementIncomplete(self)
    end

end

function addon.functions.complete(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id, obj, objMax = ...
        id = tonumber(id)
        if id and id < 0 then
            id = math.abs(id)
            element.skipIfMissing = true
        end
        id = id and questConversion[id] or id
        obj = tonumber(obj)
        if not (id and obj) then
            addon.error(L("Error parsing guide") .. " " .. addon.currentGuideName ..
                            ": Invalid objective or quest ID\n" .. self)
            return
        end
        element.obj = obj
        element.objMax = tonumber(objMax)
        element.dynamicText = true
        -- element.title = addon.GetQuestName(id)
        -- local objectives = addon.GetQuestObjectives(id)--queries the server for items/creature names associated with the quest

        element.questId = id

        element.text = ""
        element.requestFromServer = true

        return element
    end
    local event = ...
    local element = self.element
    local step = element.step
    local id = self.element.questId

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
        if not step.active then
            if math.abs(RXPCData.currentStep - step.index) > 2 then
                local update = true
                for _,v in pairs(addon.updateInactiveQuest) do
                    if v == self then
                        update = false
                        break
                    end
                end
                if update and element.requestFromServer then
                    table.insert(addon.updateInactiveQuest,self)
                end
            else
                addon.updateActiveQuest[self] = addon.UpdateQuestCompletionData
            end
        elseif event ~= "WindowUpdate" then
            if element.skipIfMissing and not IsOnQuest(element.questId) then
                addon.SetElementComplete(self,true)
            else
                addon.updateActiveQuest[self] = addon.UpdateQuestCompletionData
            end
        end
    end
    addon.IsOnTurnInGuide(self)
end

local lastZone
addon.functions["goto"] = function(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        --element.tag = "goto"
        local text, zone, x, y, radius, optional = ...
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        element.zone, element.x , element.y = addon.GetMapInfo(zone,x,y)
        if not (element.x and element.y and element.zone) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
        end

        element.radius = tonumber(radius)
        radius = element.radius
        element.wx, element.wy, element.instance =
            HBD:GetWorldCoordinatesFromZone(element.x / 100, element.y / 100,
                                            element.zone)

        element.arrow = true
        element.parent = true

        element.text = text
        element.textOnly = true

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
                    element.text = string.format(L("Go to") .. " %.1f,%.1f (%s)",
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
            addon.updateMap = true
        elseif element.skip and not canPlayerFly then
            element.skip = not mode
            addon.updateMap = true
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

function addon.functions.waypoint(self, text, zone, x, y, radius, lowPrio, ...)
    -- creates an waypoint arrow without a map pin
    if type(self) == "string" then
        local element = {}
        element.tag = "goto"
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        element.zone, element.x , element.y = addon.GetMapInfo(zone,x,y)
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
        element.wx, element.wy, element.instance =
            HBD:GetWorldCoordinatesFromZone(element.x / 100, element.y / 100,
                                            element.zone)

        element.arrow = true
        element.parent = true
        element.hidePin = true
        element.text = text
        element.textOnly = true

        return element
    end

    local element = self.element
    local group = addon.currentGuide.group
    local callback = RXPG[group][element.callback]
    if type(callback) == "function" then
        local lowPrio = callback(self, text, zone, x, y, radius, lowPrio, ...)
        if element.lowPrio ~= lowPrio then addon.updateMap = true end
        element.lowPrio = lowPrio
    end
end

function addon.functions.pin(self, ...)
    -- creates a map pin without an waypoint arrow
    if type(self) == "string" then
        local element = {}
        element.tag = "goto"
        local text, zone, x, y, tooltip = ...
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        element.zone, element.x , element.y = addon.GetMapInfo(zone,x,y)
        if not (element.x and element.y and element.zone) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid coordinates or map name\n" .. self)
        end

        element.wx, element.wy, element.instance =
            HBD:GetWorldCoordinatesFromZone(element.x / 100, element.y / 100,
                                            element.zone)

        element.mapTooltip = tooltip
        element.parent = true
        element.text = text
        element.textOnly = true

        return element
    end
end

function addon.functions.line(self, text, zone, ...)
    if type(self) == "string" then
        local element = {}
        local segments = {...}
        for i, v in ipairs(segments) do segments[i] = tonumber(v) end
        element.segments = segments
        if zone and zone:sub(1,1) == "*" then
            element.drawCenterPoint = true
            zone = zone:sub(2,#zone)
            element.thickness = 1
        end
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        local mapID = addon.mapId[zone] or tonumber(zone)
        if not (segments and #segments > 0 and zone and mapID) then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
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
        if range and range:sub(1,1) == "*" then
            element.drawCenterPoint = true
            element.thickness = 1
            range = range:sub(2,#zone)
            --print('ok2')
        end
        if zone then
            lastZone = zone
        else
            zone = lastZone
        end
        local mapID = addon.mapId[zone] or tonumber(zone)
        if not (segments and #segments > 0 and zone and mapID) then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
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
        local element = {}
        element.tag = "hs"
        local text, location = ...
        if text and text ~= "" then
            element.text = text
        else
            element.textOnly = true
            element.text = string.format("%s %s", L("Set your Hearthstone to"), location)
        end
        element.tooltipText = addon.icons.hs .. element.text
        return element
    end
    local event, unit, _, id = ...
    local step = self.element.step
    if class == "SHAMAN" then
        step.activeSpells = step.activeSpells or {}
        step.activeSpells[556] = true
    end

    step.activeItems = step.activeItems or {}
    step.activeItems[6948] = true
    step.activeItems[184871] = true

    if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == "player" then
        if (id == 8690 or id == 556 or id == 348699 or id == 184871) then
            addon.SetElementComplete(self)
        elseif WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
            for _,v in pairs(addon.hearthstoneSpellIds) do
                if v == id then
                    return addon.SetElementComplete(self)
                end
            end
        end
    end
end

local homeText = strupper(_G.HOME or "%")
function addon.SelectGossipType(gossipType)
    if C_GossipInfo.GetOptions then

        for i,option in ipairs(GossipGetOptions()) do
            if option.type == gossipType then
                GossipSelectOption(i)
                return true
            elseif not option.type and not IsModifierKeyDown() then
                if gossipType == "binder" then
                    local text = strupper(option.name or "")
                    --print(option.name,option.icon)
                    if option.icon == 132052 and text:find(homeText) then
                        GossipSelectOption(i)
                        return true
                    end
                elseif gossipType == "taxi" and option.icon == 132057 then
                    GossipSelectOption(i)
                    return true
                end
            end
        end
    else
        for i,gossipText in ipairs({GossipGetOptions()}) do
            if i % 2 == 0 and gossipType == gossipText then
                GossipSelectOption(i/2)
                return true
            end
        end
    end
end

function addon.functions.home(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, location = ...
        element.tag = "home"
        if text and text ~= "" then
            element.text = text
        else
            element.textOnly = true
            element.text = string.format("%s %s", L("Set your Hearthstone to", location))
        end
        element.tooltipText = addon.icons.home .. element.text
        return element
    end

    if not addon.settings.db.profile.enableBindAutomation or IsShiftKeyDown() then return end

    local element = self.element
    if not element.step.active or element.completed or element.skip then
        element.confirm = false
        return
    end
    local event = ...
    if event == "HEARTHSTONE_BOUND" then
        addon.SetElementComplete(self)
        element.confirm = false
    elseif event == "CONFIRM_BINDER" then

        if C_PlayerInteractionManager and C_PlayerInteractionManager.ConfirmationInteraction then
            self:SetScript("OnUpdate", function()
                C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)
                C_PlayerInteractionManager.ClearInteraction(Enum.PlayerInteractionType.Binder)
                self:SetScript("OnUpdate",nil)
            end)
        elseif ConfirmBinder then
            ConfirmBinder()
        end
        element.confirm = true
        _G.StaticPopup1:Hide()
    elseif not element.confirm and event == "GOSSIP_SHOW" then
        addon.SelectGossipType("binder")
    end
end

function addon.functions.fp(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, location, skipStep = ...
        element.tag = "fp"
        if skipStep then
            element.text = text
            element.textOnly = true
        elseif text and text ~= "" then
            element.text = text
        else
            element.text = string.format(L("Get the %s flight path"), location)
        end

        if location and location ~= "" and location:find("%w+") then
            for id, fp in pairs(addon.FPDB[faction]) do
                if strupper(fp.name):find(strupper(location)) then
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
    if self.element.step.active then
        --print(element.fpId,'-',RXPCData.flightPaths[element.fpId])
        local fpDiscovered = element.fpId and RXPCData.flightPaths[element.fpId]
        if element.textOnly and fpDiscovered then
            element.step.completed = true
            addon.updateSteps = true
        elseif fpDiscovered or (event == "UI_INFO_MESSAGE" and arg2 == _G.ERR_NEWTAXIPATH) then
            addon.SetElementComplete(self)
        elseif not element.confirm and event == "GOSSIP_SHOW" and addon.SelectGossipType("taxi") then
            element.confirm = true
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

    if not addon.settings.db.profile.enableFPAutomation or IsShiftKeyDown() then return end

    local element = self.element
    if not element.step.active then return end
    local event = ...
    if not element.confirm and event == "GOSSIP_SHOW" and addon.SelectGossipType("taxi") then
        element.confirm = true
    elseif event == "TAXIMAP_OPENED" and addon.settings.db.profile.enableFPAutomation and
        element.location then
        addon:TAXIMAP_OPENED()
        for i = 1, NumTaxiNodes() do
            local id = addon.flightInfo[i]
            local name = id and addon.FPDB[faction][id] and addon.FPDB[faction][id].name
            if name and strupper(name):find(element.location) then
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
        element.tag = "deathskip"
        if text and text ~= "" then
            element.text = text
        else
            element.text = L("Die and respawn at the graveyard")
        end
        element.tooltipText = addon.icons.deathskip .. element.text
        addon.step.softcore = true
        return element
    end
    if not self.element.step.active then return end
    local event = ...
    if event == "CONFIRM_XP_LOSS" then
        addon.SetElementComplete(self)
        if _G.AcceptXPLoss then
            AcceptXPLoss()
        elseif C_PlayerInteractionManager then
            C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.SpiritHealer)
        end
    elseif event == "GOSSIP_SHOW" then
        addon.SelectGossipType("healer")
    end
end

addon.questItemList = {}
function addon.functions.collect(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id, qty, questId, objFlags, flags = ...
        id = tonumber(id)
        objFlags = tonumber(objFlags) or 0
        flags = tonumber(flags) or 0
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No item ID provided\n' .. self)
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
4   (0x4): Element completes itself if the flagged objectives are complete (see objFlags again)
8   (0x8): Includes items in your bank into the item count
16 (0x10): Element doesn't complete itself if the quest is turned in
negative sign: same as 3 (0x2+0x1), -5 subtracts 5 units for each quest item

By default, the element will complete itself if the quest ID provided is turned in

objFlags:
Each power of 2 corresponds to an objective, as an example:
Set objN to 1 if you want ot track obj1, 0 otherwise for each quest objective
obJflag = obj1*2^0 + obj2*2^1 + obj3*2^2 + ... + objN*2^(N-1)

if objFlags is omitted or set to 0, element will complete if you have the quest in your quest log
]]
        if flags < 0 then element.multiplier = -flags; flags = 3 end
        element.textOnly = bit.band(flags, 0x1) == 0x1
        element.subtract = bit.band(flags, 0x2) == 0x2
        element.checkObjectives = bit.band(flags, 0x4) == 0x4
        element.includeBank = bit.band(flags, 0x8) == 0x8
        element.ignoreTurnIn = bit.band(flags, 0x10) == 0x10

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
    local name = addon.GetItemName(element.id)
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
        if step.objFlags == 0 then
            -- adds the item to the active item list, in case it's an item that starts a quest

            step.activeItems = step.activeItems or {}
            if not event then
                step.activeItems[element.id] = true
            elseif event ~= "BAG_UPDATE" and event ~= "WindowUpdate" and addon.activeItems then
                local isItemActive = not IsOnQuest(questId)
                step.activeItems[element.id] = isItemActive
                addon.activeItems[element.id] = isItemActive
                addon.UpdateItemFrame()
            end
        elseif element.subtract or element.checkObjectives then
            local bitMask = element.objFlags
            local objIndex = {}
            for i = 0, 7 do
                if bit.band(bit.rshift(bitMask, i), 0x1) == 0x1 then
                    table.insert(objIndex, i + 1)
                end
            end
            local objectives = addon.GetQuestObjectives(questId)
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

    local count = GetItemCount(element.id,element.includeBank)
    for i = 1, _G.INVSLOT_LAST_EQUIPPED do
        if GetInventoryItemID("player", i) == element.id then
            count = count + 1
            break
        end
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
            element.text = string.format("%s\n%d/%d %s", element.rawtext, count,
                                         numRequired, element.itemName)
        else
            element.text = string.format("%d/%d %s", count, numRequired,
                                         element.itemName)
            element.tooltipText = addon.icons.collect .. element.text
        end
    else
        if element.rawtext then
            element.tooltipText = addon.icons.collect .. element.rawtext
            element.text = string.format("%s\n%s: %d/%d", element.rawtext,
                                         element.itemName, count, numRequired)
        else
            element.text = string.format("%s: %d/%d", element.itemName, count,
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
        addon.SetElementComplete(self, true)
    elseif numRequired == count then
        addon.SetElementComplete(self, true)
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
            element.text = string.format(L("Throw away %s%s from your bags"),
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
        local text, str, skipstep = ...
        skipstep = tonumber(skipstep)
        local operator, level, xp
        if str then
            str = str:gsub(" ", "")
            operator, level, xp = str:match("(<?)%s*(%d+)([%+%.%-]?%d*)")
        end
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
                    element.text = string.format(
                                       L("Grind until you are %d xp away from level %s"),
                                       -1 * element.xp, level)
                elseif element.xp >= 1 then
                    element.text = string.format(
                                       L("Grind until you are %s xp into level %s"),
                                       xp, level)
                else
                    element.text = string.format(
                                       L("Grind until you are %.0f%% into level %s"),
                                       element.xp * 100, level)
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

    if addon.isHidden or not addon.settings.db.profile.enableXpStepSkipping then return end

    local currentXP = UnitXP("player")
    local maxXP = UnitXPMax("player")
    local level = UnitLevel("player")
    local element = self.element
    local step = element.step
    local reverseLogic = element.reverseLogic
    if element.skipstep and element.skipstep < 0 then reverseLogic = true end
    if ((element.xp < 0 and (level >= element.level or
        (level == element.level - 1 and currentXP >= maxXP + element.xp))) or
        (element.xp >= 1 and
            ((level > element.level) or
                (element.level == level and currentXP >= element.xp))) or
        (element.xp >= 0 and element.xp < 1 and ((level > element.level) or
            (element.level == level and currentXP >= maxXP * element.xp)))) ==
        not reverseLogic then
        if element.skipstep then
            if step.active and not step.completed and not(addon.settings.db.profile.northrendLM and not reverseLogic) then
                addon.updateSteps = true
                step.completed = true
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
    if element.skill == "riding" and addon.mountIDs and not element.mountTrained and skillLevelCheck and not (reverseLogic and element.skipstep) then
        local skillLevel = element.level
        local function MountCheck(range)
            --print('g',range)
            for _,id in pairs(addon.mountIDs[range]) do
                if IsPlayerSpell(id) or IsSpellKnown(id, true) or IsSpellKnown(id) then
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
            local factionname = GetFactionInfoByID(element.faction)
            if element.repValue and element.repValue ~= 0 then
                if element.repValue < 0 then
                    element.text = string.format(
                                       L("Grind until you are %d away from %s with %s"),
                                       -1 * element.repValue, standinglabel,
                                       factionname)
                elseif element.repValue >= 1 then
                    element.text = string.format(
                                       L("Grind until you are %s into %s with %s"),
                                       rep, standinglabel, factionname)
                else
                    element.text = string.format(
                                       L("Grind until you are %.0f%% into %s with %s"),
                                       element.repValue * 100, standinglabel,
                                       factionname)
                end
            else
                element.text = string.format("Grind to %s with %s",
                                             standinglabel, factionname)
            end
        end

        return element
    end

    local element = self.element
    local step = element.step
    local _, _, standing, bottomValue, topValue, earnedValue =
        GetFactionInfoByID(element.faction)
    if ((element.repValue < 0 and (standing >= element.standing or
        (standing == element.standing - 1 and earnedValue >= topValue +
            element.repValue))) or
        (element.repValue >= 1 and ((standing > element.standing) or
            (element.standing == standing and earnedValue >= bottomValue +
                element.repValue))) or
        (element.repValue >= 0 and element.repValue < 1 and
            ((standing > element.standing) or
                (element.standing == standing and earnedValue >=
                    (topValue - bottomValue) * element.repValue)))) ==
        element.operator then
        if not element.skipStep then
            addon.SetElementComplete(self, true)
        elseif step.active and not addon.isHidden then
            addon.updateSteps = true
            step.completed = true
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
        (type(skip) == "number" or (skip.step and not skip.step.active)) then
        return
    end
    guide = guide or addon.currentGuide
    if guide.next then
        local group = guide.group
        local next = guide.next
        local guideSkip
        --Different guides can be separated by a semicolon when using #next
        for guideName in string.gmatch(guide.next,"%s*([^;]+)%s*") do
            next = guideName:gsub("^%s*(.+)\\%s*", function(grp)
                group = grp
                return ""
            end)
            --print(next,guideSkip)
            guideSkip = addon.GetGuideTable(group, next)
            --Iterates through every guide until it finds a valid one
            --It uses the last one listed in case none of them are valid
            if guideSkip and addon.IsGuideActive(guideSkip) then
                break
            end
        end
        local nextGuide
        --print(guideSkip)
        if addon.game ~= "CLASSIC" then
            local faction = next:match("Aldor") or next:match("Scryer")
            if not addon.AldorScryerCheck(faction) then
                if faction == "Aldor" then
                    next = next:gsub("Scryer", "Aldor")
                elseif faction == "Scryer" then
                    next = next:gsub("Aldor", "Scryer")
                end
            end
        else
            local era = "(Era)"
            local som = "(SoM)"

            if addon.settings.db.profile.SoM then
                next = next:gsub(era, som)
            else
                next = next:gsub(som, era)
            end
        end

        nextGuide = addon.GetGuideTable(group, next)

        if nextGuide then
            if (nextGuide.era and addon.settings.db.profile.SoM or nextGuide.som and
                not addon.settings.db.profile.SoM or addon.settings.db.profile.SoM and addon.settings.db.profile.phase > 2 and
                nextGuide["era/som"]) or
                (nextGuide.hardcore and not (addon.settings.db.profile.hardcore) or
                    nextGuide.softcore and addon.settings.db.profile.hardcore) then
                return addon.functions.next(nil, nextGuide)
            else
                addon:LoadGuide(nextGuide)
                return true
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
        rank = GetSpellSubtext(element.id)
        rank = tonumber(rank:match("(%d+)")) or 0
        element.rank = rank
        element.requestFromServer = nil
    end
    if not element.title then element.title = GetSpellInfo(element.id) end

    if step.active and ((IsPlayerSpell(element.id) or IsSpellKnown(element.id, true) or
        IsSpellKnown(element.id)) ~= element.reverse) then
        if element.textOnly then
            self.element.step.completed = true
            addon.updateSteps = true
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
        if IsPlayerSpell(id) or IsSpellKnown(id, true) or
        IsSpellKnown(id) then
            self.element.step.completed = true
            addon.updateSteps = true
            return
        end
    end
end

function addon.functions.abandon(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        -- element.tag = "abandon"
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.title = ""
        element.questId = id
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
        if not element.step.active then return end
        local event, _, questId = ...
        local id = element.questId
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
        element.tooltipText = addon.icons.abandon .. element.text

        if self.element.step.active and not IsOnQuest(id) then
            addon.SetElementComplete(self, true)
        else
            addon.SetElementIncomplete(self)
        end

    end

end

--[[
owl: 132192
cat: 132185
ravager: 132194
scorpid: 132195
dragonhawk: 132188
]]
function addon.functions.petFamily(self, ...)
    if type(self) == "string" then
        local element = {}
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid icon ID\n" .. self)
        end
        element.id = id
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local id = self.element.id

    if addon.petFamily ~= id then
        self.element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.isQuestComplete(self, ...)
    if type(self) == "string" then
        local element = {}
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " " .. addon.currentGuideName ..
                           ": Invalid quest ID\n" .. self)
        end
        element.questId = id
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    local id = self.element.questId
    local event = ...
    if event ~= "WindowUpdate" and self.element.step.active and not (IsOnQuest(id) and IsQuestComplete(id)) and not addon.settings.db.profile.debug and not addon.isHidden then
        self.element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.isOnQuest(self, text, ...)
    if type(self) == "string" then
        local element = {}
        local ids = {...}
        for i,v in pairs(ids) do
            ids[i] = tonumber(v)
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
    for _,id in pairs(element.questIds) do
        if IsOnQuest(id) then
            onQuest = true
        end
    end


    local event = ...
    if event ~= "WindowUpdate" and element.step.active and not addon.settings.db.profile.debug and (not onQuest) == not element.reverse and not addon.isHidden then
        element.step.completed = true
        addon.updateSteps = true
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
        local ids = {...}
        for k, v in pairs(ids) do ids[k] = tonumber(v) end
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
    local step = element.step
    local ids = element.questIds
    local questTurnedIn = false
    local event = ...

    if element.reverse then
        for _, id in pairs(ids) do
            questTurnedIn = questTurnedIn or not IsQuestTurnedIn(id)
        end
    else
        for _, id in pairs(ids) do
            questTurnedIn = questTurnedIn or IsQuestTurnedIn(id)
        end
    end
    if event ~= "WindowUpdate" and step.active and not questTurnedIn and not addon.settings.db.profile.debug and not addon.isHidden then
        step.completed = true
        addon.updateSteps = true
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
    if not IsPlayerSpell(self.element.id) and self.element.step.active and not addon.isHidden then
        addon.SetElementComplete(self)
        self.element.step.completed = true
        addon.updateSteps = true
    end

end

function addon.functions.zone(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, zone = ...
        local mapID = addon.mapId[zone] or tonumber(zone)
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
        local mapID = addon.mapId[zone] or tonumber(zone)
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
    if not step.active or addon.isHidden or type(currentMap) ~= "number" then return end
    local zone = element.map
    if (zone == currentMap) == not element.reverse then
        step.completed = true
        addon.updateSteps = true
    end
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
        element.url = url
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
            box:SetWidth(275)
            box:SetText(addon.url)
            box:HighlightText()
            box:SetFocus()
        end
    end,

    EditBoxOnEscapePressed = function(self) self:GetParent():Hide() end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
}

function addon.functions.cast(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id = ...
        element.id = tonumber(id)
        element.text = text or ""
        local icon = GetSpellTexture(id)

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
    local event, unit, _, id = ...
    local element = self.element
    local icon = GetSpellTexture(id)
    if not element.icon and not element.textOnly and icon then
        element.icon = "|T" .. icon .. ":0|t"
        element.tooltipText = element.icon .. element.text
    end
    if event == "UNIT_SPELLCAST_SUCCEEDED" and unit == "player" and id ==
        element.id then

        addon.SetElementComplete(self)
        if element.timer then
            addon.StartTimer(element.timer,element.timerText)
        end
    end
end

function addon.functions.unitscan(self, text, ...)
    if type(self) == "string" then
        local element = {}

        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.unitscan = {...}
        return element
    end

end

function addon.functions.target(self, text, ...)
    if type(self) == "string" then
        local element = {}

        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.targets = {...}
        return element
    end
end

function addon.functions.mob(self, text, ...)
    if type(self) == "string" then
        local element = {}

        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.mobs = {...}
        return element
    end
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
        local iName = GetItemInfo(item)
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
            element.text = string.format("%s\n- %s: %d/%d", element.text,
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

function addon.PutItemInBank(bagContents)
    local _, isBankOpened = GetContainerNumFreeSlots(_G.BANK_CONTAINER);
    if CursorHasItem() and isBankOpened then
        local bank = {_G.BANK_CONTAINER}
        for i = _G.NUM_BAG_SLOTS + 1, _G.NUM_BAG_SLOTS + _G.NUM_BANKBAGSLOTS do
            table.insert(bank, i)
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
        table.insert(bank, i)
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

    if addon.IsItemNotInBags(element.items) then
        addon.SetElementComplete(self)
        return
    end
    addon.DepositItems(element.items)
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

    local event = ...
    local element = self.element

    if addon.IsItemNotInBank(element.items) then
        addon.SetElementComplete(self)
        return
    end
    addon.WithdrawItems(element.items)
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

    if event ~= "BAG_UPDATE" and event ~= "WindowUpdate" then
        if addon.IsQuestComplete(questId) or addon.IsQuestTurnedIn(questId) then
            element.isQuestComplete = true
        elseif objIndex and event then
            local quest = addon.GetQuestObjectives(element.questId, step.index)
            element.isQuestComplete = quest[objIndex].finished
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
    elseif event == "BAG_UPDATE" and element.closeWindow then
        HideUIPanel(_G.MerchantFrame)
        element.closeWindow = false
    end
end

local GossipGetNumActiveQuests = C_GossipInfo.GetNumActiveQuests or
                                 _G.GetNumGossipActiveQuests
local GossipGetNumAvailableQuests = C_GossipInfo.GetNumAvailableQuests or
                                    _G.GetNumGossipAvailableQuests
local GossipSelectOption = _G.SelectGossipOption
--local GossipGetNumOptions = C_GossipInfo.GetNumOptions or GetNumGossipOptions

function addon.functions.skipgossip(self, text, ...)
    if type(self) == "string" then
        local element = {dynamicText = true, textOnly = true, text = text}
        local args =  {...}
        element.args = #args > 0 and args
        return element
    end

    if not addon.settings.db.profile.enableGossipAutomation or IsShiftKeyDown() then return end

    local element = self.element
    local args = element.args or {}
    local nArgs = #args
    local event = text
    local id = tonumber(args[1])

    if event == "GOSSIP_SHOW" then
        -- print(id,'GS',nArgs)
        if nArgs == 0 or not id then
            if GossipGetNumAvailableQuests() == 0 and GossipGetNumActiveQuests() == 0 then
                GossipSelectOption(1)
            end
            return
        end
        local npcId = addon.GetNpcId()
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
        elseif id == npcId then
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

function addon.functions.skipgossipid(self, text, ...)
    if not (C_GossipInfo or C_GossipInfo.GetOptions) then
        return
    elseif type(self) == "string" then
        local element = {textOnly = true, text = text}
        local args =  {...}
        if #args == 0 then
            return addon.error(
                L("Error parsing guide") .. " " .. addon.currentGuideName ..
                   ': No gossip ID provided\n' .. self)
        end
        for i,v in pairs(args) do
            args[i] = tonumber(v)
        end
        element.args = args
        return element
    end

    local element = self.element
    if not element or not element.step.active or not element.gossipId or
        element.completed or addon.isHidden or
        not addon.settings.db.profile.enableGossipAutomation or IsShiftKeyDown() then
            return
    end

    local args = element.args or {}
    local event = text
    if event == "GOSSIP_SHOW" then
        local gossipOptions = GossipGetOptions()
        for _,gossipId in ipairs(args) do
            for _, v in pairs(gossipOptions) do
                if v.gossipOptionID == gossipId then
                    C_GossipInfo.SelectOption(v.gossipOptionID)
                    return
                end
            end
        end
    end

end

function addon.functions.gossipoption(self, ...)
    if not (C_GossipInfo or C_GossipInfo.GetOptions) then
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
        element.completed or addon.isHidden or
        not addon.settings.db.profile.enableGossipAutomation or IsShiftKeyDown() then
             return
    end

    local matched = false
    for _, v in pairs(GossipGetOptions()) do
        if v.gossipOptionID == element.gossipId then
            C_GossipInfo.SelectOption(v.gossipOptionID)
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

    if addon.isHidden then
        return
    elseif level > element.level and addon.settings.db.profile.enableXpStepSkipping then
        if step.active and not step.completed and not addon.settings.db.profile.northrendLM then
            addon.updateSteps = true
            step.completed = true
        end
        local guide = addon.currentGuide
        if ref and guide.labels[ref] then
            local n = guide.labels[ref]
            element.text = string.format(
                               L("Skip to step %d if you are level %d or above"),
                               n, element.level + 1)
            if step.active then
                addon.nextStep = guide.labels[ref]
                return
            end
        end
        element.text = string.format(
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
            local id = tonumber(v)
            if id then
                element.activeItems[id] = true
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
    for item in pairs(element.activeItems) do itemTable[item] = true end
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
    elseif not element or element.tag ~= "vehicle" then
        return UnitInVehicle("player")
    end
    local event, unit, showVehicleFrame, isControlSeat, vehicleUIIndicatorID,
          guid = ...
    local id = element.id
    local vehicle = addon.GetNpcId("vehicle") or addon.GetNpcId(guid, true) or UnitInVehicle("player")
    -- print('>',vehicle,vehicle == id)
    local entering = (event == "UNIT_ENTERING_VEHICLE" and unit == "player")
    if (entering or vehicle) and
        ((id and vehicle == id) or (not id and vehicle)) then
        addon.SetElementComplete(self)
        if element.timer and entering then
            addon.StartTimer(element.timer,element.timerText)
        end
    end
end

function addon.functions.itemcount(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        local text, id, str = ...
        local operator, eq, total

        if str then
            str = str:gsub(" ", "")
            operator, eq, total = str:match("([<>]?)(=?)%s*(%d+)")
        end
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
    local count = GetItemCount(element.id)

    if not ((eq and count == total) or (count * operator > total * operator) or
        (not eq and operator == 0 and count >= total)) then
        if step.active and not step.completed then
            addon.updateSteps = true
            step.completed = true
        end
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
    local group = addon.currentGuide.group
    local emote = element.emote
    if element.callback then
        if RXPG[group][element.callback](self, text, token, unitId, callback,
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

        element.mapId = addon.mapId[map] or tonumber(map)
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

    local group = addon.currentGuide.group
    local mapId = element.mapId

    if element.callback then
        if RXPG[group][element.callback](self, text, map, callback, ...) then
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
                                                  "([<>]?)%s*(%d+%p?%d*)%s*(m?)")
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
        if suffix then cd = cd * 60 end
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
        addon.ScheduleTask(element, target + 1)
    end
end


function addon.GetCurrentStageId()
    local criteriaId = select(9, C_Scenario.GetCriteriaInfo(1))
    for i = 1, 1e6 do
        local criteria = select(9, C_Scenario.GetCriteriaInfoByStep(i, 1))
        if criteria == criteriaId then
            print("Current Scenario Stage ID: " .. i)
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
    element.criteria = string.format("%s: %d/%d", criteriaString, fulfilled,
                                     required)
    if element.rawtext ~= "" then element.criteria = "\n" .. element.criteria end

    if completed or (element.stagePos and currentStage > element.stagePos) then
        addon.SetElementComplete(self)
    end

    element.text = element.rawtext .. element.criteria
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

    local f = RXPG[addon.currentGuide.group][element.callback]
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
        return element
    end

    local element = self.element
    local isDmfInTown = false

    local event
    local monthDay = GetCurrentCalendarTime().monthDay

    -- Async relies on CALENDAR_UPDATE_EVENT_LIST
    -- Currently results in one false negative if on a DMF step at login
    -- If called during the loading process, (even at PLAYER_ENTERING_WORLD) the query will not return
    if not addon.calendarLoaded then
        OpenCalendar()
        return
    end

    for i = 1, GetNumDayEvents(0, monthDay) do
        event = GetDayEvent(0, monthDay, i)

        if event and event.title == _G.CALENDAR_FILTER_DARKMOON then
            isDmfInTown = true
            break
        end
    end

    if element.step.active and not addon.settings.db.profile.debug and (not isDmfInTown) == not element.reverse and not addon.isHidden then
        element.step.completed = true
        addon.updateSteps = true
    end
end

function addon.functions.nodmf(self, ...)
    if type(self) == "string" then
        local element = {}
        local text = ...
        element.reverse = true
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        return element
    end
    return addon.functions.dmf(self, ...)
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

    if element.step.active and not addon.settings.db.profile.debug and (not isPvPEnabled) == not element.reverse and not addon.isHidden then
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
    local continentId = mapInfo and mapInfo.parentMapID

    local ridingSkill = RXP.GetSkillLevel("riding")

    if not continentId then
        return
    elseif WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        local shFlying = C_QuestLog.IsQuestFlaggedCompleted(63893)
        local _, _, _, bfaFlying = GetAchievementInfo(13250)
        --12 = kalimdor, 18 = eastern kingdoms, 101 = outland,113 = northrend, 127 = dalaran(weird), 424 = Pandaria, 572 = Draenor, 588 = ashran, 1165 = dazar alor, 895 = boralus, 876 = kul'tiras
        -- 619 = Broken Isles, Zuldazar 862, Shadowlands = 1550, 1978=dragonflight
        if (ridingSkill > 224 and
            (continentId == 12 or continentId == 18 or continentId == 101 or continentId == 113  or continentId == 127 or continentId == 424 or continentId == 572 or continentId == 588 or continentId == 619 or continentId == 862) or
            bfaFlying and (continentId == 876 or continentId == 895 or continentId == 1165) or
            shFlying and continentId == 1550
         ) then
            return true
        end
    else
        local cwf = IsPlayerSpell(54197)

        --1945 = outland,113 = northrend
        if ((continentId == addon.mapId["Outland"] or (cwf and continentId == addon.mapId["Northrend"])) and ridingSkill > 224) then
            return true
        end
    end
end

events.noflyable = "ZONE_CHANGED"
function addon.functions.noflyable(self, text, zone, skill)
    if type(self) == "string" then
        local element = {}
        element.zone = tonumber(zone) or addon.mapId[zone]
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
        element.zone = tonumber(zone) or addon.mapId[zone]
        if text and text ~= "" then element.text = text end
        element.textOnly = true
        element.skill = tonumber(skill) or -4
        return element
    end
    local ridingSkill = RXP.GetSkillLevel("riding") or -4
    local element = self.element
    local canPlayerFly = (addon.CanPlayerFly(element.zone) and ridingSkill >= element.skill)
    if element.reverse then
        canPlayerFly = not canPlayerFly
    end
    --print(canPlayerFly,'t')
    if element.step.active and not addon.settings.db.profile.debug and (not canPlayerFly) and not addon.isHidden then
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
        element.text = string.format("%s\n%s", element.rawtext, element.itemName)
    else
        element.text = string.format("%s", element.itemName)
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
    local isCollected = PlayerHasToy(element.id)

    element.itemName = toyName
    if element.rawtext then
        element.tooltipText = element.rawtext
        element.text = string.format("%s\n%s", element.rawtext, element.itemName)
    else
        element.text = string.format("%s", element.itemName)
        element.tooltipText = element.text
    end
    if isCollected then
        addon.SetElementComplete(self)
    end
end

function addon.functions.collectpet(self, ...)
    if type(self) == "string" then -- on parse
        local element = {}
        element.dynamicText = true
        local text, id = ...
        id = tonumber(id)
        if not id then
            return addon.error(
                        L("Error parsing guide") .. " "  .. addon.currentGuideName ..
                           ': No pet npc ID provided\n' .. self)
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

    -- we need to reset petjournal search, as owned parameter could be received only from journal by index
    C_PetJournal.SetSearchFilter("")
    C_PetJournal.SetFilterChecked(LE_PET_JOURNAL_FILTER_COLLECTED, true)
    C_PetJournal.SetFilterChecked(LE_PET_JOURNAL_FILTER_NOT_COLLECTED, true)
    C_PetJournal.SetAllPetTypesChecked(true)
    C_PetJournal.SetAllPetSourcesChecked(true)

    local isCollected = false -- default values so it doesn't break
    element.itemName = ""

    for index = 1, C_PetJournal.GetNumPets() do
        local petID, speciesID, owned, cutomName, _, _, _, speciesName, _, _, companionID = C_PetJournal.GetPetInfoByIndex(index);
        if (companionID == element.id) then -- we found it
            element.itemName = speciesName
            isCollected = owned
            break
        end
    end

    if element.rawtext then
        element.tooltipText = element.rawtext
        element.text = string.format("%s\n%s", element.rawtext, element.itemName)
    else
        element.text = string.format("%s", element.itemName)
        element.tooltipText = element.text
    end
    if isCollected then
        addon.SetElementComplete(self)
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
        displayText, criteriaType, completed, quantity, reqQuantity = GetAchievementCriteriaInfo(element.id,element.criteria)
    end

    if element.numReq and element.numReq < reqQuantity then
        reqQuantity = reqQuantity
    end

    if not element.textOnly then
        displayText = element.rawtext or displayText
        element.text = string.format("%s: %d/%d",displayText,quantity,reqQuantity)
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
        mapId = addon.mapId[mapId] or tonumber(mapId)
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
                _, _, _, stat = GetItemInfo(GetInventoryItemID("player", element.slot))
            else
                stat = stats[element.stat]
            end

            if not stat then
                return
            elseif type(stat) == "number" then
                stat = addon.Round(stat,1)
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
