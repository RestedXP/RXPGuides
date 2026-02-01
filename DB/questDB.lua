local _,addon = ...

local showAllQs = true
local GIC = C_Item and C_Item.GetItemCount or _G.GetItemCount
local QUEST_LOG_SIZE = 25
local reloadTimer = 0
local L = addon.locale.Get
local defaultTitle = L"Showing expected Quest Log, scroll down to view backup quests"
local panelTitle = defaultTitle
local QPRIO_HEADER = L"Quest Priority"
local TURNIN_ROUTE = L"Turn-in Route"
local PREPGUIDE_HEADER = L"Preparation Guide"
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local backlog = {}
local preReqCache = {}
local sortTable = {}
local questTurnIns = {}

addon.questsDone = {}
addon.questsAvailable = {}

addon.questsToPrepare = {}
addon.preparedQuests = {}

local GetItemCount = function(id,includeBank)
    local c = 0
    if _G.Syndicator then
        local s = Syndicator.API.GetInventoryInfoByItemID(id,true,true)
        if s then
            local chars = s.characters
            for i,char in pairs(chars) do
                --local char = t
                c = c + (char.bags or 0) + (char.mail or 0) + (char.bank or 0)
            end
        end
    end
    if c == 0 then
        c = GIC(id,includeBank)
    end
    return c
end

local function OpenSettings(panelName)
    local close
    if panelName == PREPGUIDE_HEADER then
        close = QPRIO_HEADER
    elseif panelName == QPRIO_HEADER then
        close = PREPGUIDE_HEADER
    end
    if close then
        local optionsName = format("%s/%s", addon.RXPOptions.name, close)
        local acdFrame = AceConfigDialog.OpenFrames and
        AceConfigDialog.OpenFrames[optionsName]
        if acdFrame then
            C_Timer.After(0.1,function() acdFrame:Hide() end)
        end
    end
    addon.settings.OpenSettings(panelName)
end

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

local function GetGroup()
    local group = addon.currentGuide.group or ""
    return group:gsub("^*","")
end

local function IsPreReqComplete(quest)
    local qid = quest.Id
    if preReqCache[qid] ~= nil then
        return preReqCache[qid]
    end
    local group = GetGroup()
    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
    local t = type(quest.previousQuest)
    local function IsPreReqFulfilled(id,isQLog)
        return not isQLog and addon.IsQuestComplete(id) or addon.questsDone[id] or addon.IsQuestTurnedIn(id)
    end
    local qLog = quest.questLog
    if t == "table" then
        local state = not quest.preQuestAny
        for _, id in ipairs(quest.previousQuest) do
            if quest.preQuestAny then
                state = state or IsPreReqFulfilled(id,qLog)
            else
                state = state and IsPreReqFulfilled(id,qLog)
            end
        end
        preReqCache[qid] = state
        return state
    elseif t == "number" then
        local preReqComplete
        if quest.uniqueWith then
            local prevQuest = QuestDB[quest.previousQuest]
            if prevQuest and prevQuest.uniqueWith then
                for _,uniqueId in pairs(prevQuest.uniqueWith) do
                    preReqComplete = preReqComplete or IsPreReqFulfilled(uniqueId,qLog)
                end
            end
        end
        local state = preReqComplete or IsPreReqFulfilled(quest.previousQuest,qLog)
        preReqCache[qid] = state
        return state
    else
        preReqCache[qid] = true
        return true
    end
end

local function IsQuestAvailable(quest,id,skipRepCheck,nested)
    if not quest then return end
    id = id or quest.Id

    local availableWith = quest.availableWith
    if availableWith and not nested then
        local group = GetGroup()
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

    local req = quest.requires
    if req then
        local group = GetGroup()
        local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
        if QuestDB[req].questLog and not (QuestDB[req].isActive or addon.IsQuestTurnedIn(req)) then
            return false
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
function addon.GetBestQuests(refreshQuestDB,output,silent)
    output = output or 0
    local group = GetGroup()
    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
    if not QuestDB then return end
    preReqCache = {}
    if not addon.settings.profile.skipQuest then
        addon.settings.profile.skipQuest = {}
    end
    QuestDB[addon.player.faction] = QuestDB[addon.player.faction] or {}
    for quest,obj in pairs(QuestDB) do
        if obj.questLog then
            obj.itemAmount = nil
            obj.itemId = nil
            --obj.previousQuest = nil
        end
        if QuestDB[addon.player.faction] then
            local fquest = QuestDB[addon.player.faction][quest]
            if fquest then
                for k,v in pairs(fquest) do
                    obj[k] = v
                end
            end
        end

    end
    if not addon.settings.profile.questPrio then
        addon.settings.profile.questPrio = {}
        addon.settings.profile.questPrioIndex = {}
    end
    local qp = addon.settings.profile.questPrio
    local sortfunc = function(k1, k2)
        local xc1 = k1.xpcorrection or 0
        local xc2 = k2.xpcorrection or 0
        local x1 = (k1.xp or 0) + xc1
        local x2 = (k2.xp or 0) + xc2
        local qp1 = qp[k1.Id]
        local qp2 = qp[k2.Id]
        local q1 = addon.IsQuestTurnedIn(k1.Id)
        local q2 = addon.IsQuestTurnedIn(k2.Id)
        local prev1 = k1.previousQuest and not IsPreReqComplete(k1)
        local prev2 = k2.previousQuest and not IsPreReqComplete(k2)
        local prio1 = k1.priority or 1e3
        local prio2 = k2.priority or 1e3
        local xphr1 = k1["xp/hr"] or 0
        local xphr2 = k2["xp/hr"] or 0
        local isQuestLog = k1.questLog and k2.questLog
        local gc1,gc2
        local skip1 = addon.settings.profile.skipQuest[k1.Id]
        local skip2 = addon.settings.profile.skipQuest[k2.Id]

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
        elseif qp1 and qp2 and qp1 ~= qp2 and (qp1 <26 or qp2 <26) then
            return qp1 < qp2
        elseif skip1 and skip1 ~= skip2 then
            return false
        elseif skip2 and skip1 ~= skip2 then
            return true
        elseif xphr1 ~= xphr2 then
            return xphr1 > xphr2
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
                local preReq = true
                if v.forcePreReq then
                    preReq = IsPreReqComplete(v)
                    if not preReq then
                        addon.settings.profile.skipQuest[v.Id] = 1
                    end
                end

                if IsQuestAvailable(v,id) and not v.itemId and
                    v.questLog and preReq then
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
                --if not showAllQs then
                    --table.remove(qDB, i)
                --end
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
            local qname = addon.GetQuestName(id) or v.name
            if not qname then
                backlog[v.Id] = true
                requestFromServer = false
            end
            local xp = v.xp or 0
            xp = xp * xpmod
            if k == 26 then
                outputString = outputString .. L('\n\n--- Backup Quests ---')
            end
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

local function Get25Quests()
    if not addon.questLogQuests then
        addon.GetBestQuests(true)
        addon.CalculateTotalXP(0,true)
    end
    local qp = addon.settings.profile.questPrio
    local index = addon.settings.profile.questPrioIndex
    local t = {}
    table.wipe(sortTable)
    local setPrio
    if not next(qp) then
        setPrio = true
    end
    for i,v in ipairs(addon.questLogQuests) do
        local text = format("%s (%d)",addon.GetQuestName(v.Id) or v.name or "",v.Id)
        --print(v.Id,text)
        t[v.Id] = text
        table.insert(sortTable,v.Id)
        if setPrio then
            index[i] = v.Id
            qp[v.Id] = i
        end
    end
    return t
end

local CreatePanel
local requestText = true
local questText = ""
local requestTimer = 0
local mode
local missingQs
local textOverride
local currentText = ""
local debugText
local currentFlag = 0

local SetText = function(self,refresh)
    local ctime = GetTime()
    local delay = 0.85
    if currentFlag > 1 then
        delay = 2.0
    end
    local fps = _G.GetFramerate()
    if fps < 15 then
        delay = 10.0
    elseif fps < 30 then
        delay = 5.0
    end

    if next(backlog) and ctime - requestTimer > delay then
        requestTimer = ctime
        local d = {}
        local c = 0
        for quest in pairs(backlog) do
            local n = addon.GetQuestName(quest)
            c = c + 1
            if n then
                table.insert(d,quest)
            end
            if c > 3 then
                break
            end
        end
        local update
        for _,quest in pairs(d) do
            backlog[quest] = nil
            update = true
        end
        if update then
            if currentFlag > 1 then
                addon:ScheduleTask(addon.CalculateTotalXP,currentFlag,true)
                --_,requestText = addon.CalculateTotalXP(currentFlag,true)
                --print(requestText)
            else
                questText,requestText = addon.GetBestQuests(false,2)
                missingQs = addon.ShowMissingQuests()
            end
        end
    end

    local t
    if textOverride then
        t = textOverride
    elseif mode == "missing" then
        t = missingQs
    else
        t = questText
    end

    local isOpen

    if refresh and t ~= currentText and addon.settings.gui.quest then
            if _G.InterfaceOptionsFramePanelContainer and
                InterfaceOptionsFramePanelContainer.displayedPanel and
                InterfaceOptionsFramePanelContainer.displayedPanel.name == QPRIO_HEADER and
                InterfaceOptionsFramePanelContainer.displayedPanel:IsShown() then
                isOpen = true
            elseif SettingsPanel and SettingsPanel:IsShown() then
                local text = SettingsPanel.Container.SettingsList.Header.Title:GetText()
                if text == QPRIO_HEADER then isOpen = true end
            else
                local optionsName = format("%s/%s", addon.RXPOptions.name, QPRIO_HEADER)
                local acdFrame = AceConfigDialog.OpenFrames and
                                        AceConfigDialog.OpenFrames[optionsName]

                isOpen = acdFrame and acdFrame:IsShown()
            end
        if not isOpen then
            OpenSettings(PREPGUIDE_HEADER)
        end
    end
    currentText = t
    return t
end

local function OnClick(self)
    if not addon.settings.gui.quest then
        CreatePanel()
    end
    for _,element in pairs(self.step.elements) do
        if element.tag == "showtotalxp" then
            element.update = true
        end
    end
    textOverride = nil
    mode = "quests"
    textOverride = nil
    currentFlag = 0
    questText,requestText = addon.GetBestQuests(true,2)

    OpenSettings(PREPGUIDE_HEADER)
end

function addon.functions.show25quests(self,text,flags)
    if type(self) == "string" then
        return { text = text, event = "OnUpdate", hideTooltip = true, tooltip = format(L"Click to view the %d best quests",QUEST_LOG_SIZE), icon = addon.icons.link, textOnly = true, updateTimer = 0}
    end
    local element = self.element
    if self.SetScript then
        self:SetScript("OnMouseDown", OnClick)
    end
    if element and GetTime() - element.updateTimer < 0.5 then
        return
    end
    element.updateTimer = GetTime()
    if not element.hook and self.highlight and not self.highlight:IsShown() then
        element.hook = true
        self.highlight:Show()
    end

    SetText(self,true)

end

local currentGuide
function addon.functions.turninconfig(self)
    if type(self) == "table" and self.name and self.group then
        currentGuide = self
        if not addon.settings.gui.quest then
            CreatePanel()
        end
       OpenSettings(TURNIN_ROUTE)
    end
end

local locations = {
	[1] = {name = L'Southshore', z = '.goto Hillsbrad Foothills,51.0,58.8', sz = 271 },
	[2] = {name = L'Darnassus', z = '.goto Darnassus,67.2,15.8', sz = 1657 },
	[3] = {name = L'Cenarion Hold', z = '.goto Silithus,51.893,39.163', sz = 3425 },
	[4] = {name = L'Everlook', z = '.goto Winterspring,61.358,38.837', sz = 2255},
	[5] = {name = L"Grom'gol Base Camp", z = '.goto Stranglethorn Vale,31.49,29.75', sz = 117},
	[6] = {name = L'Orgrimmar', z = '.goto Orgrimmar,54.10,68.42', sz = 1637},
}

local HSloc = {
[0] = 1,
[1] = 2,
[2] = 1,
[3] = 1,
[4] = 1,
[5] = 2,
[6] = 1,
[7] = 1,
[8] = 1,
[9] = 2,
[10] = 1,
[11] = 1,
[16] = 3,
[17] = 3,
[18] = 3,
[19] = 3,
[20] = 1,
[21] = 2,
[22] = 1,
[23] = 1,
[24] = 3,
[25] = 3,
[26] = 3,
[27] = 3,
[48] = 3,
[49] = 3,
[50] = 3,
[51] = 3,
[52] = 4,
[53] = 6,
[54] = 5,
[55] = 5,
[56] = 3,
[57] = 3,
[58] = 3,
[59] = 3,
[80] = 3,
[84] = 1,
[81] = 3,
[112] = 3,
[116] = 5,
[113] = 3,
}

local function GetHSLoc()
    local index = 0

    if addon.settings.profile.tbcWBF then
        index = index + 1
    end

    if addon.settings.profile.portalTele then
        index = index + 2
    end

    if addon.settings.profile.gnomeTele then
        index = index + 4
    end

    if addon.settings.profile.goblinTele then
        index = index + 8
    end

    if addon.settings.profile.tbcStart == 2 then
        index = index + 16
    end

    if addon.player.faction == "Horde" then
        index = index + 32
    end

    if addon.player.class == "Druid" then
        index = index + 64
    end
    local hsLoc = HSloc[index] or HSloc[bit.band(index,63)] or HSloc[bit.band(index,51)] or HSloc[bit.band(index,49)] or 3

    return locations[hsLoc]
end

function addon.functions.setturninhs(self)
    if type(self) == "string" then
        local loc = GetHSLoc()
        local step = addon.step
        local wp = addon.ParseLine(loc.z)
        local home = addon.ParseLine(format(".home >>"..L"Set your Hearthstone to |cRXP_WARN_%s|r",loc.name))
        local hloc = addon.ParseLine(".bindlocation "..loc.sz)
        wp.step = step
        home.step = step
        hloc.step = step
        if type(wp) == "table" then
            table.insert(step.elements,wp)
        end
        if type(home) == "table" then
            table.insert(step.elements,home)
        end
        if type(hloc) == "table" then
            table.insert(step.elements,hloc)
        end
    end
end

function addon:GetQuestDBDefaults(wipe)
    if wipe then
        addon.settings.profile.gnomeTele = nil
        addon.settings.profile.goblinTele = nil
        addon.settings.profile.portalTele = nil
        addon.settings.profile.tbcWBF = nil
        addon.settings.profile.tbcStart = nil
    end
    if addon.settings.profile.gnomeTele == nil then
        addon.settings.profile.gnomeTele = addon.IsPlayerSpell(20219)
    end
    if addon.settings.profile.portalTele == nil then
        addon.settings.profile.portalTele = addon.player.class == "Mage"
    end
    if addon.settings.profile.goblinTele == nil then
        addon.settings.profile.goblinTele = addon.IsPlayerSpell(20222)
    end
    if addon.settings.profile.tbcWBF == nil then
        addon.settings.profile.tbcWBF = not addon.IsQuestTurnedIn(5162)
    end
    if addon.settings.profile.tbcStart == nil then
        addon.settings.profile.tbcStart = ((addon.IsOnQuest(8310) or addon.IsOnQuest(8309)) and 1) or 2
    end
end

local questPrioChanged
function CreatePanel()

    local questDataTable = {
        type = "group",
        name = L"RestedXP Preparation Guide: Quest Database",
        args = {
            importBox = {
                order = 10,
                type = 'input',
                name = function() return panelTitle end,
                width = "full",
                multiline = QUEST_LOG_SIZE + 1,
                confirmText = L"Refresh",
                -- usage = "Usage string",
                get = SetText,
                set = SetText,
                --validate = function() return true,SetText() end,
            },

            showAvailable = {
                order = 14,
                name = _G.QUEST_LOG,
                type = 'execute',
                func = function()
                    panelTitle = defaultTitle
                    mode = "quests"
                    textOverride = nil
                    currentFlag = 0
                    if showAllQs then
                        showAllQs = false
                        questText,requestText = addon.GetBestQuests(true,2)
                    end
                    OpenSettings(PREPGUIDE_HEADER)
                end,
            },
            editPrio = {
                order = 16,
                name = _G.EDIT,
                type = 'execute',
                func = function()
                    OpenSettings(QPRIO_HEADER)
                end,
            },
            misingQLog = {
                order = 15.5,
                name = L"Missing",
                type = 'execute',
                func = function()
                    RXP.CalculateTotalXP(15)
                end,
            },
            Qheader = {
                name = QUEST_LOG,
                type = "header",
                width = "full",
                order = 13
            },
            showPrep = {
                order = 11,
                name = L"Prepared Quests",
                type = 'execute',
                func = function()
                    panelTitle = 'Prepared Quests'
                    textOverride = nil
                    currentFlag = 2
                    _,requestText = addon.CalculateTotalXP(2)

                    OpenSettings("Preparation Guide")
                end,
            },
            notPrep = {
                order = 11.5,
                name = L"Not Prepared",
                type = 'execute',
                func = function()
                    RXP.CalculateTotalXP(7)
                end,
            },
            showTotal = {
                order = 12,
                name = L"All Quests",
                type = 'execute',
                func = function()
                    panelTitle = L"All Quests"
                    textOverride = nil
                    currentFlag = 3
                    _,requestText = addon.CalculateTotalXP(3)

                    OpenSettings("Preparation Guide")
                end,
            },
            debugBox = {
                order = 99,
                type = 'input',
                name = "Debug",
                width = "full",
                multiline = 6,
                hidden = function()
                    return not addon.settings.profile.debug
                end,
                confirmText = L"Refresh",
                -- usage = "Usage string",
                get = function() return debugText end,
                set = function(self,text)
                    local group = GetGroup()
                    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
                    local p = "([\r\n]%s*%[)(%d+)(%] = {)"
                    local db
                    if _G.QuestieLoader then
                        db = _G.QuestieLoader:ImportModule("QuestieDB")
                    end
                    debugText = text:gsub(p,function(prefix,ids,suffix)
                        local id = tonumber(ids)
                        local q = QuestDB[id]
                        local zone
                        local qdb = db and db:GetQuest(id)
                        local name = addon.GetQuestName(id)
                        if q and q.zone then
                            zone = q.zone
                        elseif db then
                            zone = qdb and qdb.Zone or 0
                        end
                        --print(zone,id,ids,qdb and qdb.Zone)
                        if q and zone and zone ~= 0 then
                            --return format('%s%s%s\n    ["zone"] = %d,',prefix,ids,suffix,zone)
                        end
                        local separator = "'"
                        if name:find("'") then
                            separator = '"'
                        end
                        return format('%s%s%s\n    ["name"] = %s%s%s,',prefix,ids,suffix,separator,name,separator)
                    end)
                end,
                --validate = function() return true,SetText() end,
            },
        }

    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.title .. "/".. PREPGUIDE_HEADER, questDataTable)

    addon.settings.gui.quest = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    addon.title .. "/" .. PREPGUIDE_HEADER, PREPGUIDE_HEADER, addon.title)


    local questPrioTable = {
        type = "group",
        name = L"RestedXP Preparation Guide: Quest Priority",
        args = {
            spacer = {
                order = 99,
                name = ' ',
                type = 'description',
                width = 0.2,
            },
            defaultValues = {
                order = 99.1,
                name = L"Use Recommended",
                type = 'execute',
                func = function()
                    table.wipe(addon.settings.profile.skipQuest)
                    table.wipe(addon.settings.profile.questPrio)
                    table.wipe(addon.settings.profile.questPrioIndex)
                    questText,requestText = addon.GetBestQuests(true,2)
                    panelTitle = defaultTitle
                    questPrioChanged = true
                end,
            },
            spacer2 = {
                order = 99.2,
                name = ' ',
                type = 'description',
                width = 0.2,
            },
            apply = {
                order = 99.3,
                name = L"Apply Changes",
                desc = L"This will reload the UI to apply changes",
                type = 'execute',
                disabled = function()
                    return not questPrioChanged
                end,
                func = _G.ReloadUI,
            }
        }
    }

    for i = 1,QUEST_LOG_SIZE do
        local d = {
                order = 10+i,
                type = 'select',
                style = 'dropdown',
                sorting = sortTable,
                name = "  " .. i,
                width = 1.3,
                values = Get25Quests,
                get = function(self)
                    return addon.questLogQuests[i].Id
                end,
                set = function(self, newQ)
                    questPrioChanged = true
                    local qp = addon.settings.profile.questPrio
                    local index = addon.settings.profile.questPrioIndex
                    local oldQ = index[i]
                    local prevIndex = qp[newQ]
                    qp[oldQ] = prevIndex
                    qp[newQ] = i
                    index[i] = newQ
                    index[prevIndex] = oldQ
                    questText,requestText = addon.GetBestQuests(true,2)
                    panelTitle = defaultTitle
                end,
            }
        questPrioTable.args["d"..i] = d
    end
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.title .. "/".. QPRIO_HEADER, questPrioTable)

    addon.settings.gui.quest = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    addon.title .. "/" .. QPRIO_HEADER, QPRIO_HEADER, addon.title)

    local turninSettings = {
        type = "group",
        name = L"RestedXP Preparation Guide: Turn in route",
        args = {
            spacer = {
                order = 99,
                name = ' ',
                type = 'description',
                width = 0.2,
            },
            defaultValues = {
                order = 99.1,
                name = L"Use Recommended",
                type = 'execute',
                func = function()
                    local group = currentGuide and currentGuide.group or addon.currentGuide.group or ""
                    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
                    questPrioChanged = true
                    if QuestDB["TBC"] then
                        addon:GetQuestDBDefaults(true)
                    end
                end,
            },
            spacer2 = {
                order = 99.2,
                name = ' ',
                type = 'description',
                width = 1,
            },
            apply = {
                order = 99.3,
                name = L"Apply Changes",
                desc = L"This will reload the UI to apply changes",
                type = 'execute',
                disabled = function()
                    return not questPrioChanged
                end,
                func = function()
                    for _,group in pairs(addon.QuestDB) do
                        addon.functions.setturninroute(nil,addon.FetchGuide(group,L"Turn in Route"))
                    end
                    _G.ReloadUI()
                end,
            },
            gnomeTele = {
                name = L("Gnomish Engineering"),
                type = "toggle",
                width = 1,
                order = 4.1,
                get = function (info)
                    --print(addon.settings.profile[info[#info]],info[#info])
                    return addon.settings.profile.gnomeTele
                end,
                set = function(info, value)
                    addon.settings.profile[info[#info]] = value
                    questPrioChanged = true
                    if value then
                        addon.settings.profile.goblinTele = false
                        --print("Value set to ",value)
                    end
                end
            },
            goblinTele = {
                name = L("Goblin Engineering"),
                type = "toggle",
                width = 1,
                order = 4.2,
                get = function (info)
                    --print(addon.settings.profile[info[#info]],info[#info])
                    return addon.settings.profile.goblinTele
                end,
                set = function(info, value)
                    addon.settings.profile[info[#info]] = value
                    questPrioChanged = true
                    if value then
                        addon.settings.profile.gnomeTele = false
                        --print("Value set to ",value)
                    end
                end
            },
            portalTele = {
                name = L("Mage Portals"),
                type = "toggle",
                width = 1,
                order = 4.3,
                get = function(info)
                    --print(addon.settings.profile[info[#info]],info[#info])
                    return addon.settings.profile[info[#info]]
                end,
                set = function(info, value)
                    addon.settings.profile[info[#info]] = value
                    questPrioChanged = true
                    --print("Value set to ",value)
                end
            },
            tbcWBF = {
                name = L("Wrath of the Blue Flight Teleport"),
                desc = L("If you have this quest available you get a free teleport from Winterspring to Western Plaguelands"),
                type = "toggle",
                width = 1.3,
                order = 4.4,
                get = function (info)
                    --print(addon.settings.profile[info[#info]],info[#info])
                    if addon.IsQuestTurnedIn(5162) then
                        addon.settings.profile.tbcWBF = false
                    end
                    return addon.settings.profile.tbcWBF
                end,
                set = function(info, value)
                    addon.settings.profile[info[#info]] = value
                    questPrioChanged = true
                    --print("Value set to ",value)
                end,
                disabled = function()
                    return addon.IsQuestTurnedIn(5162)
                end,
                hidden = function()
                    local group = currentGuide and currentGuide.group or addon.currentGuide.group or ""
                    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
                    --print(QuestDB["TBC"])
                    return not QuestDB["TBC"]
                end,
            },
            tbcStart = {
                order = 1,
                type = 'select',
                style = 'dropdown',
                --sorting = sortTable,
                name = "Start Area",
                width = 1,
                values = {
                    [1] = L"Silithus Start",
                    [2] = L"Burning Steppes Start",
                },
                get = function(info)
                    return addon.settings.profile[info[#info]]
                end,
                set = function(info, value)
                    addon.settings.profile[info[#info]] = value
                    questPrioChanged = true
                end,
                hidden = function()
                    local group = currentGuide and currentGuide.group or addon.currentGuide.group or ""
                    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
                    return not QuestDB["TBC"] or addon.player.faction == "Horde" end,
            }
        }
    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.title .. "/".. TURNIN_ROUTE, turninSettings)

    addon.settings.gui.quest = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(
                                    addon.title .. "/" .. TURNIN_ROUTE, TURNIN_ROUTE, addon.title)


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
        addon:FetchGuide(group,L"Turn in Route")
    end
end

function addon.functions.setturninroute(self,guide)
    if type(self) ~= "string" and type(guide) ~= "table" then
        return
    end
    guide = guide or addon.guide
    local group = guide.group or ""
    local QuestDB = addon.QuestDB[group] or addon.QuestDBLegacy or {}
    local chapters = ""
if QuestDB["TBC"] then
    local n = 0
    local suffix = ""
    local lastchapter
    local function AddChapter(name,suffix)
        if not suffix then suffix = "" end
        if n > 0 then
            chapters = format("%s;%s%s", chapters, name,suffix)
        else
            chapters = name .. suffix
        end
        local m = RXPCData.guideMetaData
        local g = addon:FetchGuide(group,name..suffix)
        local new = g and format("%d - %s",n,g.title or g.name)
        if g then
            for _,step in pairs(g.steps) do
                for _,element in pairs(step.elements) do
                    if element.tag == "turnin" then
                        questTurnIns[element.questId] = true
                    end
                end
            end
            g.displayname = new

            local lg = lastchapter
            if lg then
                lg.next = g.name
                local cg = addon.currentGuide
                if cg and cg.name == lg.name and cg.group == lg.group then
                    cg.next = g.name
                end
            end
            lastchapter = g

            g = m[g.group.."||"..g.name]
        end

        if g then
            g.displayname = new
        end

        n = n + 1
    end
    if addon.settings.profile.portalTele then
        if addon.player.faction == "Horde" then
            AddChapter("Prep-Burning Steppes Start")
            AddChapter("Burning Steppes Start (P)")
            if addon.settings.profile.gnomeTele then
                AddChapter("Tanaris to Un'Goro (P)")
                AddChapter("Silithus CH Start (P)")
                AddChapter("Felwood to Winterspring (P)")
                if addon.settings.profile.tbcWBF then
                    AddChapter("Plaguelands (P)")
                else
                    AddChapter("Silvermoon to EPL (P)")
                end
            else--no gadget portal
                AddChapter("Silithus CH Start (P)")
                AddChapter("Un'Goro to Tanaris (P)")
                if addon.settings.profile.tbcWBF then
                    AddChapter("Felwood to Winterspring (P)")
                    AddChapter("Plaguelands (P)")
                else
                    if addon.settings.profile.goblinTele then
                        AddChapter("Winterspring to Felwood (P)")
                    else
                        AddChapter("Felwood to Winterspring (P)")
                    end
                    AddChapter("Silvermoon to EPL (P)")
                end
            end
        else--Alliance Portals
            if addon.settings.profile.tbcStart == 1 then
                AddChapter("Prep-Silithus Start")
                AddChapter("Silithus Start (P)")
                AddChapter("Un'Goro to Tanaris (P)")
            else
                AddChapter("Prep-Burning Steppes Start")
                AddChapter("Burning Steppes Start (P)")
                if addon.settings.profile.gnomeTele then
                    AddChapter("Tanaris to Un'Goro (P)")
                    AddChapter("Silithus CH Start (P)")
                else
                    AddChapter("Silithus CH Start (P)")
                    AddChapter("Un'Goro to Tanaris (P)")
                end
            end
            if addon.settings.profile.tbcWBF or not addon.settings.profile.goblinTele then
                AddChapter("Felwood to Winterspring (P)")
            else
                AddChapter("Winterspring to Felwood (P)")
            end
            AddChapter("Plaguelands (P)")
        end
        AddChapter("STV to Blasted Lands (P)")
    else--Solo route
        if addon.player.faction == "Horde" then
            AddChapter("Prep-Burning Steppes Start")
            AddChapter("Burning Steppes Start")
            if addon.settings.profile.gnomeTele then
                AddChapter("Tanaris to Un'Goro")
                AddChapter("Silithus CH Start")
            else
                AddChapter("Silithus CH Start")
                AddChapter("Un'Goro to Tanaris")
            end
            if addon.player.class == "Druid" then
                if addon.settings.profile.tbcWBF then
                    AddChapter("Felwood to Winterspring")
                else
                    AddChapter("Winterspring to Felwood")
                end
            elseif addon.settings.profile.goblinTele then
                AddChapter("Winterspring to Felwood")
            elseif addon.settings.profile.tbcWBF then
                AddChapter("Felwood to Winterspring")
            else
                AddChapter("Winterspring to Felwood")
            end
            if addon.settings.profile.tbcWBF then
                AddChapter("Plaguelands")
            else
                AddChapter("Tirisfal to Plaguelands")
            end
        else
            if addon.settings.profile.tbcStart == 1 then
                AddChapter("Prep-Silithus Start")
                AddChapter("Silithus Start")
                AddChapter("Un'Goro to Tanaris")
                if addon.settings.profile.tbcWBF then
                    AddChapter("Felwood to Winterspring")
                else
                    AddChapter("Winterspring to Felwood")
                end
            else
                AddChapter("Prep-Burning Steppes Start")
                AddChapter("Burning Steppes Start")
                if addon.settings.profile.gnomeTele then
                    AddChapter("Tanaris to Un'Goro")
                    AddChapter("Silithus CH Start")
                else
                    AddChapter("Silithus CH Start")
                    AddChapter("Un'Goro to Tanaris")
                end
                if addon.settings.profile.tbcWBF then
                    AddChapter("Felwood to Winterspring")
                else
                    AddChapter("Winterspring to Felwood")
                end
            end
            AddChapter("Plaguelands")
        end
        AddChapter("STV to Blasted Lands")
    end

    guide.chapters = chapters
    --print(chapters)
end
addon:ScheduleTask(addon.RXPFrame.GenerateMenuTable)
end

function addon.IsGuideQuestActive(id)
    local group = GetGroup()
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
        element.optional = addon.step.optional
        return element
    end

    local element = self.element
    local args = element.args
    local step = element.step
    local guide = addon.currentGuide
    if element.mode == "quest" then
        --local id = tonumber(args[1])
        if not (addon.settings.profile.questPrio and next(addon.settings.profile.questPrio)) then
            Get25Quests()
        end
        local optional = step.optional
        local pass = false
        for _,v in pairs(args) do
            local id = tonumber(v)
            id = addon.GetQuestId(id)
            local isActive = addon.IsGuideQuestActive(id)
            if id then
                if element.reverse then
                    addon.disabledQuests[id] = isActive
                else
                    addon.disabledQuests[id] = not isActive
                end
                pass = pass or isActive
            end
        end
        if element.reverse then
            pass = not pass
        end
--addon.disabledQuests[id]
        if not pass then
            if not step.completed then
                step.completed = true
                --step.hidewindow = true
                step.optional = true
                addon.updateSteps = true
                element.text = L"Step skipped: This is part of a quest you don't have"
            end
        elseif optional and not element.optional then
            --step.hidewindow = false
            addon.updateSteps = true
            step.optional = nil
        end
        if addon.settings.profile.disableAutoSkip and not element.optional then
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
        return {textOnly = true,rawtext = text or "", text = text, flags = tonumber(flags) or 0, event = "QUEST_LOG_UPDATE", update = true}
    end
    local element = self.element
    if not element.loadQuestList then
        element.loadQuestList = true
        addon.GetBestQuests(true)
        return
    end

    if element.update then
        element.xp = addon.CalculateTotalXP(element.flags,true)
        element.update = false
    end
    local xp = element.xp
    text = format("%s %s",element.rawtext,addon.FormatNumber(xp))

    if text ~= element.text then
        element.text = text
        addon.UpdateStepText(element)
    end

end


function addon.CalculateTotalXP(flags,refresh)
    preReqCache = {}
    if not refresh then
        addon.GetBestQuests(true)
    end

    local grp = GetGroup()
    local QuestDB = addon.QuestDB[grp] or addon.QuestDBLegacy or {}
    local totalXp = 0
    local requestFromServer = true
    flags = flags or 0
    local output = bit.band(flags,0x2) == 0x2
    local missing = bit.band(flags,0x4) == 0x4
    local qLogOnly = bit.band(flags,0x8) == 0x8
    if missing and not next(addon.preparedQuests) then
        addon.CalculateTotalXP(0,true)
    end
    local ignorePreReqs
    local outputString = {}
    if bit.band(flags,0x1) == 0x1 then
        local aldor = addon.stepLogic.AldorScryerCheck("Aldor") and 932
        local scryer = addon.stepLogic.AldorScryerCheck("Scryer") and 934
        ignorePreReqs = aldor or scryer or 932
    else
        addon.questsDone = {}
        addon.preparedQuests = {}
    end
    addon.questsToPrepare = {}
    local xpmod = GetXPMods()
    --print(xpmod)
    local groups = {}
    local QList = {}
    local function ProcessQuest(quest,qid,skipgrpcheck)
        qid = qid or quest.Id
        local group = quest.group or ""
        local isAvailable = IsQuestAvailable(quest,qid,ignorePreReqs)
        local preReqCheck = IsPreReqComplete(quest)
        --if reverse then preReqCheck = not preReqCheck end
        preReqCheck = preReqCheck or ignorePreReqs
        if (group == "" or skipgrpcheck or not groups[group]) and isAvailable and preReqCheck and (not qLogOnly or quest.questLog) then
            groups[group] = true
            local xp = quest.xp or 0
            xp = xp * xpmod
            totalXp = totalXp + xp
            if ignorePreReqs then
                addon.questsToPrepare[qid] = totalXp
            else
                addon.preparedQuests[qid] = totalXp
            end
            if output then
                    local qname = ""
                    if not quest.zone or C_Map.GetAreaInfo(quest.zone) then
                        qname = addon.GetQuestName(qid) or quest.name
                    else
                        qname = quest.name or ""
                    end
                    if not qname then
                        requestFromServer = false
                        backlog[qid] = true
                        qname = ""
                    end
                    local prefix = ""
                    if not questTurnIns[qid] then
                        prefix = "*"
                    end
                    local s = string.format(L"%dxp %s (%d)", xp,
                                    prefix..qname, qid)
                    --table.insert(outputString,s)
                    if not (missing and addon.preparedQuests[qid]) then
                        table.insert(QList,{text = s, id = qid, obj = quest})
                    end
                    --addon.comms.PrettyPrint(s)--ok
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
            if not ignorePreReqs and quest.questLog and (addon.IsQuestComplete(id) or quest.completed and addon.IsOnQuest(id)) then
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
        local db
        if _G.QuestieLoader then
            db = _G.QuestieLoader:ImportModule("QuestieDB")
        end

        local zoneList = {}
        for _,q in ipairs(QList) do
            local zone = zoneList[q.id] or 0
            if zone == 0 then
                if q.obj.zone then
                    zone = q.obj.zone
                elseif db then
                    local qdb = db:GetQuest(q.id)
                    zone = qdb and qdb.Zone or 0
                    q.obj.zone = zone
                end
            end
            local l = zoneList[zone] or {}
            zoneList[zone] = l
            table.insert(l, q)
        end
        local zNotFound = ""
        if addon.game == "CLASSIC" then
            zNotFound = L"TBC"
        end
        for zone,t in pairs(zoneList) do
            if zone and zone ~= 0 then
                local zt = C_Map.GetAreaInfo(zone) or zNotFound
                table.insert(outputString,"\n-- "..zt.." --")
            else
                table.insert(outputString,"\n--")
            end
            for _,q in ipairs(t) do
                table.insert(outputString,q.text)
            end
        end
        if missing then
            if qLogOnly then
                panelTitle = L"Quest Log Quests not yet prepared"
            else
                panelTitle = L"Quests not yet prepared"
            end
            textOverride = table.concat(outputString,'\n')
        else
            textOverride = format(L"Total XP: %s\n%s",addon.FormatNumber(totalXp),table.concat(outputString,'\n'))
        end
        if not addon.settings.gui.quest then
            CreatePanel()
        end
        if not refresh then
            OpenSettings(PREPGUIDE_HEADER)
            currentFlag = flags
        end
    end
    return math.floor(totalXp), not requestFromServer
end

function addon.ShowMissingQuests(output)
    addon.CalculateTotalXP(1)
    addon.CalculateTotalXP(0)

    local grp = GetGroup()
    local QuestDB = addon.QuestDB[grp] or addon.QuestDBLegacy or {}
    local t = ""
    for qid,v in pairs(addon.questsAvailable) do
        if not addon.questsDone[qid] and qid > 0 then
            local entry = QuestDB[qid].name
            t = string.format("%s\n%s (%d)", t,
                addon.GetQuestName(qid) or entry or "", qid)
        end
    end
    if output then
        addon.comms.PrettyPrint(t)--ok
    end
    return t
end

local SendChatMessage = C_ChatInfo and C_ChatInfo.SendChatMessage or _G.SendChatMessage
function addon.CompleteStep()
    if _G.Settings and _G.Settings.GetCategory then
        return
    end
    for i,step in pairs(addon.RXPFrame.activeSteps) do
        for _,element in pairs(step.elements) do
            if element.tag == "collect" then
                local x = element.qty
                local id = element.id
                SendChatMessage(format(".additem %d %d",id,x), "WHISPER", nil, addon.player.name)
            elseif element.tag == "reputation" then
                SendChatMessage(format(".mod rep %d exalted",element.faction), "WHISPER", nil, addon.player.name)
            elseif element.tag == "complete" then
                SendChatMessage(format(".q c %d",element.questId), "WHISPER", nil, addon.player.name)
            elseif element.tag == "accept" then
                SendChatMessage(format(".q a %d",element.questId), "WHISPER", nil, addon.player.name)
            end
        end
    end
end


local cs
local mobData = {}
function addon.Goto()
    if _G.Settings and _G.Settings.GetCategory then
        return
    end
    if cs ~= RXPCData.currentStep then
        cs = RXPCData.currentStep
        table.wipe(mobData)
    end
    local t1,t2,t3 = addon.targeting.GetCurrentTargets()
    local targetList = {}
    for _,t in ipairs({t1,t2,t3}) do
        for _,name in ipairs(t) do
            table.insert(targetList,name)
        end
    end

    for index,name in ipairs(targetList) do
        if not mobData[name] then
            local p = '.go c "%s"'
            if name:find("\"") then
                p = ".go c '%s'"
            end
            mobData[name] = true
            SendChatMessage(format(p,name), "WHISPER", nil, addon.player.name)
            print(name)
            return
        end
    end

    local element = addon.arrowFrame.element
    if element then
        SendChatMessage(format(".go xy %.3f %.3f %d",element.wy,element.wx,element.instance), "WHISPER", nil, addon.player.name)
        return
    end

end
