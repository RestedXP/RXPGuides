local _,addon = ...

local showAllQs
local GetItemCount = C_Item and C_Item.GetItemCount or _G.GetItemCount
local QUEST_LOG_SIZE = 25
local reloadTimer = 0

--[[
if addon.gameVersion < 20000 then
    QUEST_LOG_SIZE = 20
end
]]

local function GetXPMods()
    if addon.player.season == 2 then
        return 1.5
    elseif addon.gameVersion < 40000 then
        return addon.GetXPBonuses(false,80)
    else
        return addon.GetXPBonuses(true,85)
    end
end

local function IsPreReqComplete(quest)
    local group = addon.currentGuide.group
    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
    local t = type(quest.previousQuest)
    if t == "table" then
        local state = not quest.preQuestAny
        for _, id in ipairs(quest.previousQuest) do
            if quest.preQuestAny then
                state = state or addon.IsQuestTurnedIn(id)
            else
                state = state and addon.IsQuestTurnedIn(id)
            end
        end
        return state
    elseif t == "number" then
        local preReqComplete
        if quest.uniqueWith then
            local prevQuest = QuestDB[quest.previousQuest]
            if prevQuest and prevQuest.uniqueWith then
                for _,uniqueId in pairs(prevQuest.uniqueWith) do
                    preReqComplete = preReqComplete or addon.IsQuestTurnedIn(uniqueId)
                end
            end
        end
        return preReqComplete or addon.IsQuestTurnedIn(quest.previousQuest)
    else
        return true
    end
end

local function IsQuestAvailable(quest,id,skipRepCheck,nested)
    if not quest then return end
    id = id or quest.Id

    local availableWith = quest.availableWith
    if availableWith and not nested then
        local group = addon.currentGuide.group
        local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
        if type(availableWith) ~= "table" then
            availableWith = {availableWith}
            quest.availableAfter = availableWith
        end
        for _,completeId in pairs(availableWith) do
            if IsQuestAvailable(QuestDB[completeId],completeId,skipRepCheck,true) then
                return true
            end
        end
    end

    local function ProcessRep(rep,faction)
        local _, _, standing,_,_,value = addon.GetFactionInfoByID(faction)
        local target
        local repname, bonus = rep:match("(%w+)%s*([%+%-]?%d*)")
        bonus = tonumber(bonus) or 0
        target = addon.repStandingID[strlower(repname)]
        target = addon.repStartValue[target] + bonus
        standing = value or -42000

        if skipRepCheck then
            if (skipRepCheck == 932 and faction == 934) or
                (skipRepCheck == 934 and faction == 932) then
                return false
            end
        elseif not (target and standing) or standing < target then
            return false
        end
        return true
    end

    local function ProcessTitle(titleId)
        if skipRepCheck then
            return true
        else
            return IsTitleKnown(titleId)
        end
    end

    local titleCheck = true
    if type(quest.title) == "number" then
        titleCheck = ProcessTitle(quest.title)
    elseif type(quest.title) == "table" then
        for _,title in pairs(quest.title) do
            titleCheck = titleCheck and ProcessTitle(title)
        end
    end


    local repCheck = true
    if type(quest.repfaction) == "number" then
        repCheck = ProcessRep(quest.reputation,quest.repfaction)
    elseif type(quest.reputation) == "table" then
        for i,rep in pairs(quest.reputation) do
            repCheck = repCheck and ProcessRep(rep,quest.repfaction[i])
        end
    end

    local uniqueWith = quest.uniqueWith
    if uniqueWith then
        if type(uniqueWith) ~= "table" then
            uniqueWith = {uniqueWith}
            quest.uniqueWith = uniqueWith
        end
        for _,uniqueId in pairs(uniqueWith) do
            if addon.IsQuestTurnedIn(uniqueId) then
                return false
            end
        end
    end

    if not quest["alwaysShow"] and addon.IsQuestTurnedIn(id) or not repCheck or not titleCheck
        or (quest.completewith and addon.IsQuestTurnedIn(quest.completewith)) then
        return false
    end

    local activeFor = quest.appliesTo
    if activeFor then
        activeFor = addon.applies(activeFor,nil,function(entry)
            return addon.GetSkillLevel(entry) > 0
        end)
    else
        activeFor = true
    end
    return activeFor
end

local groupCount
local questQueryTimer = 0
function addon.GetBestQuests(refreshQuestDB,output)
    output = output or 0
    local group = addon.currentGuide.group
    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
    if not QuestDB then return end
    for quest,obj in pairs(QuestDB) do
        if obj.questLog then
            obj.itemAmount = nil
            obj.itemId = nil
            obj.previousQuest = nil
        end
    end
    local sortfunc = function(k1, k2)
        local xc1 = k1.xpcorrection or 0
        local xc2 = k2.xpcorrection or 0
        local x1 = (k1.xp or 0) + xc1
        local x2 = (k2.xp or 0) + xc2
        local q1 = addon.IsQuestTurnedIn(k1.Id)
        local q2 = addon.IsQuestTurnedIn(k2.Id)
        local prev1 = k1.previousQuest and not IsPreReqComplete(k1)
        local prev2 = k2.previousQuest and not IsPreReqComplete(k2)
        local prio1 = k1.priority or 1e3
        local prio2 = k2.priority or 1e3
        local isQuestLog = k1.questLog and k2.questLog
        local gc1,gc2
        if QuestDB["groups"] then
            local g1 = QuestDB["groups"][k1.Id]
            local g2 = QuestDB["groups"][k2.Id]
            if g1 then
                gc1 = (QuestDB["groups"][g1] or 0) <= groupCount[g1]
            end
            if g2 then
                gc2 = (QuestDB["groups"][g2] or 0) <= groupCount[g2]
                --print(123,gc1,gc2,groupCount[g2])
            end
        end


        if q1 and not q2 then
            return false
        elseif q2 and not q1 then
            return true
        elseif gc1 == false and gc2 ~= gc1 then
            return false
        elseif gc2 == false and gc2 ~= gc1 then
            return true
        elseif x1 ~= x2 then
            return x1 > x2
        elseif prev1 and not prev2 then
            return false
        elseif prev2 and not prev1 then
            return true
        elseif prio1 < prio2 then
            return true
        elseif prio2 < prio1 then
            return false
        elseif isQuestLog and addon.IsQuestComplete(k1.Id) and not addon.IsQuestComplete(k2.Id) then
            return true
        elseif isQuestLog and addon.IsQuestComplete(k2.Id) and not addon.IsQuestComplete(k1.Id) then
            return false
        else
            return k1.Id < k2.Id
        end
    end
    if not addon.questLogQuests or refreshQuestDB then
        addon.questLogQuests = {}
        groupCount = {}
        local groups = {}
        for id, v in pairs(QuestDB) do
            if type(id) == "number" then
                v.Id = id
                local grp = v.group
                if grp and not groups[grp] then
                    groups[grp] = {}
                end
                if IsQuestAvailable(v,id) and not v.itemId and
                    v.questLog and (not v.forcePreReq or IsPreReqComplete(v)) then
                    if QuestDB["groups"] and QuestDB["groups"][id] then
                        local questGroup = QuestDB["groups"][id]
                        if groupCount[questGroup] then
                            groupCount[questGroup] = groupCount[questGroup] + 1
                        else
                            groupCount[questGroup] = 1
                        end
                    end
                    if grp then
                        table.insert(groups[grp],v)
                    else
                        table.insert(addon.questLogQuests, v)
                        v.isActive = true
                    end
                elseif v.questLog then
                    v.isActive = false
                end
            end
        end
        for _,v in pairs(groups) do
            table.sort(v, sortfunc)
            local pick
            for _,q in ipairs(v) do
                if q.questLog then
                    if pick then
                        q.isActive = false
                    else
                        q.isActive = true
                        table.insert(addon.questLogQuests, q)
                        pick = true
                    end
                end
            end
        end
    end
    local qDB = addon.questLogQuests
    if GetTime() - questQueryTimer > 1 or refreshQuestDB then

        questQueryTimer = GetTime()
        table.sort(qDB, sortfunc)

        for i = #qDB, 1, -1 do
            local xp = qDB[i].xp or 0
            local id = qDB[i].Id
            if i > QUEST_LOG_SIZE and xp < (qDB[QUEST_LOG_SIZE].xp or 1) or addon.IsQuestTurnedIn(id) then
                QuestDB[id].isActive = false
                if not showAllQs then
                    table.remove(qDB, i)
                end
            end
        end
    end
    local xpmod = GetXPMods()
    --print(xpmod)
    local outputString = ""
    local requestFromServer = true

    if output ~= 0 then
        for k, v in ipairs(qDB) do
            local id = v.Id
            local qname = addon.GetQuestName(id)
            requestFromServer = qname and requestFromServer
            local xp = v.xp or 0
            xp = xp * xpmod
            outputString = string.format("%s\n%d: %dxp %s (%d)",outputString, k, xp,
                                             qname or "", id)
        end
        outputString = outputString:gsub("^\n","")
        if bit.band(output,0x1) == 0x1 then
            addon.comms.PrettyPrint(outputString)
        end
    end

    for i = #qDB, 1, -1 do
        if i > QUEST_LOG_SIZE then
            qDB[i].isActive = false
        else
            break
        end
    end

    return outputString,not requestFromServer
end


local CreatePanel
local requestText = true
local questText = ""
local requestTimer = 0
local mode
local missingQs
local textOverride
local currentText = ""

local SetText = function(self,refresh)
    local ctime = GetTime()
    if requestText and ctime - requestTimer > 0.2 then
        requestTimer = ctime
        questText,requestText = addon.GetBestQuests(false,2)
        missingQs = addon.ShowMissingQuests()
    end

    local t
    if textOverride then
        t = textOverride
    elseif mode == "missing" then
        t = missingQs
    else
        t = questText
    end
    if refresh and t ~= currentText and addon.settings.gui.quest then
        addon.settings.OpenSettings('Quest Data')
    end
    currentText = t
    return t
end

local function OnClick(self)
    if not addon.settings.gui.quest then
        CreatePanel()
    end
    textOverride = nil
    addon.settings.OpenSettings('Quest Data')
end

function addon.functions.show25quests(self,text,flags)
    if type(self) == "string" then
        return { text = text, event = "OnUpdate", hideTooltip = true, tooltip = format("Click to view the %d best quests",QUEST_LOG_SIZE), icon = addon.icons.link, textOnly = true}
    end
    if self and self.highlight and not self.highlight:IsShown() then
        self.highlight:Show()
        self:SetScript("OnMouseDown", OnClick)
    end

    SetText(self,true)

end


function CreatePanel()

    local questDataTable = {
        type = "group",
        name = "RestedXP Quest Data",
        args = {
            importBox = {
                order = 10,
                type = 'input',
                name = format('List of %d best quests',QUEST_LOG_SIZE),
                width = "full",
                multiline = QUEST_LOG_SIZE,
                confirmText = "Refresh",
                -- usage = "Usage string",
                get = SetText,
                set = SetText,
                --validate = function() return true,SetText() end,
            },

            showAvailable = {
                order = 14,
                name = format("Show %d Best Quests",QUEST_LOG_SIZE),
                type = 'execute',
                func = function()
                    mode = "quests"
                    textOverride = nil
                    if showAllQs then
                        showAllQs = false
                        questText,requestText = addon.GetBestQuests(true,2)
                    end
                    addon.settings.OpenSettings('Quest Data')
                end,
            },
            showMissing = {
                order = 15,
                name = "Show Missing Quests",
                type = 'execute',
                func = function()
                    mode = "missing"
                    textOverride = nil
                    addon.settings.OpenSettings('Quest Data')
                end,
            },
            showAllQs = {
                order = 16,
                name = "Show All Available",
                type = 'execute',
                func = function()
                    mode = "quests"
                    textOverride = nil
                    if not showAllQs then
                        showAllQs = true
                        questText,requestText = addon.GetBestQuests(true,2)
                    end
                    addon.settings.OpenSettings('Quest Data')
                end,
            },
        }

    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.title .. "/Quest Data", questDataTable)

    addon.settings.gui.quest = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    addon.title .. "/Quest Data", "Quest Data", addon.title)

end


function addon.IsGuideQuestActive(id)
    local group = addon.currentGuide.group
    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
    if not (QuestDB and QuestDB[id]) then
        return false
    elseif not addon.questLogQuests or addon.IsQuestTurnedIn(id) and QuestDB[id].isActive then
        addon.GetBestQuests(true)
    end
    return not addon.IsQuestTurnedIn(id) and QuestDB[id].isActive
end

function addon.functions.requires(self,text,mode,...)
    if type(self) == "string" then
        local args = {...}
        local element = {textOnly = true,text = text, args = args, mode = mode, requestFromServer = true}
        if mode == "quest" then
            element.event = "QUEST_LOG_UPDATE"
        elseif mode == "!quest" then
            element.event = "QUEST_LOG_UPDATE"
            element.reverse = true
            element.mode = "quest"
        end
        return element
    end

    local element = self.element
    local args = element.args
    local step = element.step
    if element.mode == "quest" then
        --local id = tonumber(args[1])
        local optional = step.optional
        local pass = false
        for _,v in pairs(args) do
            local id = tonumber(v)
            id = addon.GetQuestId(id)
            if id then
                pass = pass or addon.IsGuideQuestActive(id)
            end
        end
        if element.reverse then
            pass = not pass
        end

        if not pass then
            if not (optional and step.completed) then
                step.completed = true
                --step.hidewindow = true
                step.optional = true
                addon.updateSteps = true
                element.text = "Step skipped: This is part of a quest you don't have"
            end
        elseif optional then
            --step.hidewindow = false
            addon.updateSteps = true
            step.optional = nil
        end
        if addon.settings.profile.disableAutoSkip then
            step.optional = nil
        elseif optional ~= step.optional and GetTime() - reloadTimer > 60 then
            addon:ScheduleTask(addon.ReloadGuide,true)
            reloadTimer = GetTime()
        end
    end
    element.requestFromServer = false
end

function addon.functions.showtotalxp(self,text,flags)
    if type(self) == "string" then
        return {textOnly = true,rawtext = text or "", text = text, flags = tonumber(flags) or 0, event = "QUEST_LOG_UPDATE"}
    end

    local element = self.element

    local xp = addon.CalculateTotalXP(element.flags)
    text = format("%s %s",element.rawtext,addon.FormatNumber(xp))
    if text ~= element.text then
        element.text = text
        addon.UpdateStepText(element)
    end

end

addon.questsDone = {}
addon.questsAvailable = {}

function addon.CalculateTotalXP(flags)
    local grp = addon.currentGuide.group
    local QuestDB = addon.QuestDB[grp] or addon.QuestDBLegacy or {}
    local totalXp = 0
    flags = flags or 0
    local output = bit.band(flags,0x2) == 0x2
    local ignorePreReqs
    local outputString = {}
    if bit.band(flags,0x1) == 0x1 then
        local aldor = addon.stepLogic.AldorScryerCheck("Aldor") and 932
        local scryer = addon.stepLogic.AldorScryerCheck("Scryer") and 934
        ignorePreReqs = aldor or scryer or 932
    else
        addon.questsDone = {}
    end
    local xpmod = GetXPMods()
    --print(xpmod)
    local groups = {}
    local function ProcessQuest(quest,qid,skipgrpcheck)
        qid = qid or quest.Id
        local group = quest.group or ""
        local isAvailable = IsQuestAvailable(quest,qid,ignorePreReqs)
        if (group == "" or skipgrpcheck or not groups[group]) and isAvailable and (ignorePreReqs or (IsPreReqComplete(quest))) then
            groups[group] = true
            local xp = quest.xp or 0
            xp = xp * xpmod
            totalXp = totalXp + xp
            if output then
                    local s = string.format("%dxp %s (%d)", xp,
                                    addon.GetQuestName(qid) or "", qid)
                    table.insert(outputString,s)
                    addon.comms.PrettyPrint(s)--ok
            end
        end
        return isAvailable
    end
    if not addon.questLogQuests then addon.GetBestQuests(true) end
    if ignorePreReqs then
        for i = 1, QUEST_LOG_SIZE do
            local quest = addon.questLogQuests[i]
            if quest then
                ProcessQuest(quest)
                addon.questsAvailable[quest.Id] = true
            end
        end
    end
    for id, quest in pairs(QuestDB) do
        if type(id) == "number" then
            if not ignorePreReqs and quest.questLog and addon.IsQuestComplete(id) then
                if ProcessQuest(quest,id) then
                    addon.questsDone[id] = true
                end
            elseif not (quest.questLog or addon.IsQuestTurnedIn(id)) then
                local item = quest.itemId
                if ignorePreReqs and item then
                    if ProcessQuest(quest,id) then
                        addon.questsDone[id] = true
                    end
                elseif type(item) == "table" then
                    local state = true
                    for n, itemId in pairs(item) do
                        state = state and GetItemCount(itemId, true) >=
                                    quest.itemAmount[n]
                    end
                    if state then
                        if ProcessQuest(quest,id) then
                            addon.questsDone[id] = true
                        end
                    end
                elseif type(item) == "number" and GetItemCount(item, true) >=
                    quest.itemAmount then
                    if ProcessQuest(quest,id) then
                        addon.questsDone[id] = true
                    end
                elseif not item then
                    if ProcessQuest(quest,id) then
                        addon.questsDone[id] = true
                    end
                end
            end
        end
    end
    if output then
        textOverride = format("Total XP: %d\n%s",totalXp,table.concat(outputString,'\n'))
        if not addon.settings.gui.quest then
            CreatePanel()
        end
        addon.settings.OpenSettings('Quest Data')
    end
    return math.floor(totalXp)
end

function addon.ShowMissingQuests(output)
    addon.CalculateTotalXP(1)
    addon.CalculateTotalXP(0)
    local t = ""
    for qid,v in pairs(addon.questsAvailable) do
        if not addon.questsDone[qid] and qid > 0 then
            t = string.format("%s\n%s (%d)", t,
                addon.GetQuestName(qid) or "", qid)
        end
    end
    if output then
        addon.comms.PrettyPrint(t)--ok
    end
    return t
end

local SendChatMessage = C_ChatInfo and C_ChatInfo.SendChatMessage or _G.SendChatMessage
function addon.ForceNextStep()
    if _G.Settings and _G.Settings.GetCategory then
        return
    end
    for i,step in pairs(addon.RXPFrame.activeSteps) do
        for _,element in pairs(step.elements) do
            if element.tag == "collect" then
                local x = element.qty
                local id = element.id
                SendChatMessage(format(".additem %d %d",id,x), "SAY", nil)
            elseif element.tag == "reputation" then
                SendChatMessage(format(".mod rep %d exalted",element.faction), "SAY", nil)
            elseif element.tag == "complete" then
                SendChatMessage(format(".q c %d",element.questId), "SAY", nil)
            elseif element.tag == "accept" then
                SendChatMessage(format(".q a %d",element.questId), "SAY", nil)
            end
        end
    end
end
