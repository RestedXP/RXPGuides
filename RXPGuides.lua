local addonName = ...

RXP_ = RXP_ or {}
RXPGuides = {}
RXP_.versionText = "Version 3.0.6"
local addonVersion = 30006
local version = select(4, GetBuildInfo())

if version < 20000 then
    RXP_.version = "CLASSIC"
elseif version > 20000 and version < 30000 then
    RXP_.version = "TBC"
else
    RXP_.version = "WOTLK"
end

RXP_.questQueryList = {}
RXP_.itemQueryList = {}
RXP_.questAccept = {}
RXP_.questTurnIn = {}
RXP_.activeItems = {}

local eventFrame = CreateFrame("Frame");
local questFrame = CreateFrame("Frame");

-- eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
eventFrame:RegisterEvent("PLAYER_LEVEL_UP")
eventFrame:RegisterEvent("TAXIMAP_OPENED")
eventFrame:RegisterUnitEvent("UNIT_AURA", "player")
eventFrame:RegisterUnitEvent("UNIT_PET", "player")
eventFrame:RegisterEvent("TRAINER_SHOW")
eventFrame:RegisterEvent("TRAINER_CLOSED")
eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
eventFrame:RegisterEvent("BAG_UPDATE_DELAYED")
-- eventFrame:RegisterEvent("SKILL_LINES_CHANGED")
if C_QuestLog.RequestLoadQuestByID then
    eventFrame:RegisterEvent("QUEST_DATA_LOAD_RESULT")
end
questFrame:RegisterEvent("QUEST_COMPLETE")
questFrame:RegisterEvent("QUEST_PROGRESS")
questFrame:RegisterEvent("QUEST_ACCEPT_CONFIRM")
questFrame:RegisterEvent("QUEST_GREETING")
questFrame:RegisterEvent("GOSSIP_SHOW")
questFrame:RegisterEvent("QUEST_DETAIL")
questFrame:RegisterEvent("QUEST_TURNED_IN")

local SoMtimer
local function SoMCheck()
    if version > 20000 then
        return
    elseif not SoMtimer then
        SoMtimer = GetTime()
    end

    local buffId = 362859
    if RXPCData and type(RXPCData.SoM) ~= "boolean" and GetTime() - SoMtimer <
        300 then
        local id = 0
        local n = 1
        while id do
            id = select(10, UnitBuff("player", n))
            n = n + 1
            if id == buffId then
                RXPCData.SoM = true
                if RXP_.currentGuide and RXP_.currentGuide.name then
                    RXP_:LoadGuide(RXP_.currentGuide)
                end
                RXPFrame.GenerateMenuTable()
                break
            end
        end
        if id ~= buffId and RXPCData.SoM then
            RXPCData.SoM = nil
            if RXP_.currentGuide and RXP_.currentGuide.name then
                RXP_:LoadGuide(RXP_.currentGuide)
            end
            RXPFrame.GenerateMenuTable()
        end
        if RXPOptionsSoM then RXPOptionsSoM:SetChecked(RXPCData.SoM) end
    end
end

function RXPG_init()
    RXPData = RXPData or {}
    RXPCData = RXPCData or {}

    RXPCData.completedWaypoints = RXPCData.completedWaypoints or {}
    RXPCData.hardcore = (RXP_.version == "CLASSIC") and RXPCData.hardcore
    if not RXPData.addonVersion or RXPData.addonVersion < addonVersion then
        RXPData.addonVersion = addonVersion
        RXPCData.phase = 4
    end
    RXPCData.phase = RXPCData.phase or 4
    RXPCData.SoM = RXPCData.SoM or 1
    SoMCheck()
    RXP_.RenderFrame()
    RXPCData.stepSkip = RXPCData.stepSkip or {}
    RXPData.numMapPins = RXPData.numMapPins or 7
    RXPData.worldMapPinScale = RXPData.worldMapPinScale or 1
    RXPData.distanceBetweenPins = RXPData.distanceBetweenPins or 1
    RXPData.worldMapPinBackgroundOpacity =
        RXPData.worldMapPinBackgroundOpacity or 0.35
    RXPData.arrowSize = RXPData.arrowSize or 1
    RXPData.windowSize = RXPData.windowSize or 1
    RXPData.arrowText = RXPData.arrowText or 9
    RXPData.skipMissingPreReqs = false
    if RXPCData.flightPaths then
        if UnitLevel("player") <= 6 then
            for i in pairs(RXPCData.flightPaths) do
                RXPCData.flightPaths[i] = nil
            end
        end
    else
        RXPCData.flightPaths = {}
    end
    RXPData.batchSize = RXPData.batchSize or 5
    if RXPData.disableTrainerAutomation == nil then
        RXPData.disableTrainerAutomation = true
    end
    if RXPData.trainGenericSpells == nil then
        RXPData.trainGenericSpells = true
    end

    RXPData.anchorOrientation = RXPData.anchorOrientation or 1
    RXPFrame:SetShown(not RXPCData.hideWindow)
    C_Timer.After(0.5, function()
        if RXP_.errorCount == RXP_.guideErrorCount then
            RXP_.errorCount = -1
            ScriptErrorsFrame:Hide()
        end
    end)
end

RXP_.errorCount = 0
RXP_.guideErrorCount = 0

hooksecurefunc(ScriptErrorsFrame, "DisplayMessage",
               function(self, msg, warnType, keepHidden, messageType)
    if ScriptErrorsFrame:IsForbidden() then return end
    if RXP_.errorCount >= 0 then
        if warnType == 0 and keepHidden == false and messageType == 1 and
            type(msg) == "string" and msg:match(addonName .. "\\Guides") then
            RXP_.guideErrorCount = RXP_.guideErrorCount + 1
        end
        RXP_.errorCount = RXP_.errorCount + 1
    end
end)

local startTime = GetTime()

function RXP_.QuestAutoAccept(title)
    if title then
        local element = RXP_.questAccept[title]
        return element and element.step.active
    end
end

function RXP_.QuestAutoTurnIn(title)
    if title then
        local element = RXP_.questTurnIn[title]
        return (element and element.step.active) and element.reward
    end
end

local currrentSkillLevel = {}
local maxSkillLevel = {}
local professionNames

function RXP_.GetProfessionNames()
    if not professionNames then
        professionNames = {}
    end

    for profession, ids in pairs(RXP_.professionID) do
        for i, id in ipairs(ids) do
            if IsSpellKnown(id) then
                if id == 2656 then
                    professionNames[profession] = GetSpellInfo(2575)
                elseif id == 2383 then
                    professionNames[profession] = GetSpellInfo(9134)
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

function RXP_.GetProfessionLevel()
    local names
    if not (professionNames and professionNames.riding) then
        RXP_.GetProfessionNames()
    end
    names = professionNames

    if not GetSkillLineInfo then
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
        return
    end
    if not names.riding then names.riding = GetSpellInfo(33388) end
    for i = 1, GetNumSkillLines() do
        local skillName,_,_,skillRank,_,_,skillMaxRank = GetSkillLineInfo(i)
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

function RXP_.UpdateSkillData()
    RXP_.GetProfessionNames()
    RXP_.GetProfessionLevel()
end

function RXP_.GetSkillLevel(skill,useMaxValue)
    RXP_.UpdateSkillData()
    if skill then
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

RXP_.skillList = {}
local spellRequest = {}

local trainerUpdate = 0
local level = UnitLevel("player")

local function ProcessSpells(names, rank)
    local _, class = UnitClass("player")
    local _, race = UnitRace("player")
    local level = UnitLevel("player")
    local entries = {race, class}
    for _, entry in pairs(entries) do
        if RXP_.defaultSpellList[entry] then
            for spellLvl, spells in pairs(RXP_.defaultSpellList[entry]) do
                if spellLvl <= level then
                    for i, spellId in ipairs(spells) do
                        if not (spellRequest[spellId] or
                            C_Spell.IsSpellDataCached(spellId)) then
                            C_Spell.RequestLoadSpellData(spellId)
                            spellRequest[spellId] = true
                        end
                        if names and rank and
                            not (RXPCData.hardcore and RXP_.HCSpellList and
                                RXP_.HCSpellList[spellId]) then
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

    if not RXPData.disableTrainerAutomation then
        local level = UnitLevel("player")
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

        for spellName, spellRank in pairs(RXP_.skillList) do
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

local G_GetNumActiveQuests = C_GossipInfo.GetNumActiveQuests or
                                 GetNumGossipActiveQuests
local G_GetNumAvailableQuests = C_GossipInfo.GetNumAvailableQuests or
                                    GetNumGossipAvailableQuests
local G_GetNumOptions = C_GossipInfo.GetNumOptions or GetNumGossipOptions
local G_SelectAvailableQuest = C_GossipInfo.SelectAvailableQuest or
                                   SelectGossipAvailableQuest
local G_GetActiveQuests = C_GossipInfo.GetActiveQuests or GetGossipActiveQuests
local G_SelectActiveQuest = C_GossipInfo.SelectActiveQuest or
                                SelectGossipActiveQuest
local G_GetAvailableQuests = C_GossipInfo.GetAvailableQuests or
                                 GetGossipAvailableQuests

function RXP_:QuestAutomation(event, arg1, arg2, arg3)
    if IsControlKeyDown() == not (RXPData and RXPData.disableQuestAutomation) then
        return
    end

    if not event then
        if GossipFrame and GossipFrame:IsShown() then
            event = "GOSSIP_SHOW"
        elseif QuestFrameGreetingPanel and QuestFrameGreetingPanel:IsShown() then
            event = "QUEST_GREETING"
        elseif QuestFrameProgressPanel and QuestFrameProgressPanel:IsShown() then
            event = "QUEST_PROGRESS"
        elseif QuestFrameRewardPanel and QuestFrameRewardPanel:IsShown() or
            QuestFrameCompleteButton and QuestFrameCompleteButton:IsShown() then
            event = "QUEST_COMPLETE"
        else
            return
        end
    end

    if event == "QUEST_ACCEPT_CONFIRM" and RXP_.QuestAutoAccept(arg2) then
        ConfirmAcceptQuest()
    elseif event == "QUEST_COMPLETE" then
        local id = GetQuestID()
        local reward = RXP_.QuestAutoTurnIn(id)
        local choices = GetNumQuestChoices()
        if reward then
            if choices <= 1 then
                GetQuestReward(choices)
            elseif reward > 0 then
                GetQuestReward(reward)
            end
        end

    elseif event == "QUEST_PROGRESS" and IsQuestCompletable() then
        CompleteQuest()
        -- questProgressTimer = GetTime()

    elseif event == "QUEST_DETAIL" then
        local id = GetQuestID()
        if RXP_.QuestAutoAccept(id) then
            AcceptQuest()
            HideUIPanel(QuestFrame)
        end

    elseif event == "QUEST_GREETING" then
        local nActive = GetNumActiveQuests()
        local nAvailable = GetNumAvailableQuests()

        for i = 1, nActive do
            local title, isComplete = GetActiveTitle(i)
            if RXP_.QuestAutoTurnIn(title) and isComplete then
                return SelectActiveQuest(i)
            end
        end

        if GetNumOptions() == 0 and nAvailable == 1 and nActive == 0 then
            SelectAvailableQuest(1)
        else
            for i = 1, nAvailable do
                local title, isComplete = GetAvailableTitle(i)
                if RXP_.QuestAutoAccept(title) then
                    return SelectAvailableQuest(i)
                end
            end
        end
    elseif event == "GOSSIP_SHOW" then
        local nActive = G_GetNumActiveQuests()
        local nAvailable = G_GetNumAvailableQuests()
        local quests
        if C_GossipInfo.GetActiveQuests then
            quests = C_GossipInfo.GetActiveQuests()
        end
        for i = 1, nActive do
            local title, level, isTrivial, isComplete
            if type(quests) == "table" then
                title = quests[i].questID
                isComplete = quests[i].isComplete
            else
                title, level, isTrivial, isComplete = select(i * 6 - 5,
                                                             G_GetActiveQuests())
            end
            -- print(title)
            -- print(quests[i])
            if RXP_.QuestAutoTurnIn(title) and isComplete then
                return G_SelectActiveQuest(i)
            end
        end

        if G_GetNumOptions() == 0 and nAvailable == 1 and nActive == 0 then
            G_SelectAvailableQuest(1)
        else
            local availableQuests
            if C_GossipInfo.GetAvailableQuests then
                availableQuests = C_GossipInfo.GetAvailableQuests()
            end
            for i = 1, nAvailable do
                local quest
                if type(availableQuests) == "table" then
                    quest = availableQuests[i].questID
                else
                    quest = select(i * 7 - 6, G_GetAvailableQuests())
                end
                if RXP_.QuestAutoAccept(quest) then
                    return G_SelectAvailableQuest(i)
                end
            end
        end
    end
end

questFrame:SetScript("OnEvent", RXP_.QuestAutomation)

eventFrame:SetScript("OnEvent", function(self, event, arg1, arg2, arg3, arg4)

    if event == "GET_ITEM_INFO_RECEIVED" and arg2 then
        if RXP_.itemQueryList[arg1] then
            RXP_.itemQueryList[arg1] = nil
            RXP_.updateStepText = true
        elseif GetTime() - startTime < 15 then
            RXP_.updateStepText = true
        end
        return
    elseif (event == "BAG_UPDATE_DELAYED" or event == "PLAYER_REGEN_ENABLED") then
        RXP_.UpdateItemFrame()
    elseif event == "QUEST_TURNED_IN" and (arg1 == 10551 or arg1 == 10552) then
        C_Timer.After(1, function() RXP_.ReloadGuide() end) -- scryer/aldor quest
    elseif event == "SKILL_LINES_CHANGED" then
        RXP_.UpdateSkillData()
    elseif event == "TRAINER_SHOW" then
        trainerUpdate = GetTime()
        OnTrainer()
        self:SetScript("OnUpdate", trainerFrameUpdate)
        return
    elseif event == "TRAINER_CLOSED" then
        self:SetScript("OnUpdate", nil)
        return
    elseif event == "PLAYER_LOGIN" then
        RXPG_init()
        local importGuidesDefault = {profile = {guides = {}}}
        -- TODO add menu option to reset cached guides
        RXPGuides.db = LibStub("AceDB-3.0"):New("RXPDB", importGuidesDefault,
                                                'global')
        RXPGuides.LoadFileGuides()
        RXPGuides.LoadCachedGuides()
        RXPFrame.GenerateMenuTable()
        RXP_.CreateOptionsPanel()
        loadtime = GetTime()
        ProcessSpells()
        RXP_.GetProfessionLevel()
        local guide = RXP_.GetGuideTable(RXPCData.currentGuideGroup,
                                         RXPCData.currentGuideName)
        if not guide and RXPData.autoLoadGuides then
            guide = RXP_.defaultGuide
            if RXP_.version == "TBC" and
                (UnitLevel("player") == 58 and not guide.boost58) then
                guide = nil
            end
        end
        RXP_:LoadGuide(guide, true)
        if not RXP_.currentGuide then
            RXPFrame:SetHeight(20)
            RXPFrame.BottomFrame.UpdateFrame()
            RXP_.noGuide = true
        end
        RXP_.addonLoaded = true
        return
    elseif event == "TAXIMAP_OPENED" then
        local FPlist = C_TaxiMap.GetAllTaxiNodes(
                           C_Map.GetBestMapForUnit("player"))
        for k, v in pairs(FPlist) do
            if v.nodeID then RXPCData.flightPaths[v.nodeID] = true end
        end
    elseif event == "PLAYER_LEVEL_UP" and RXP_.currentGuide then
        level = UnitLevel("player")
        local stepn = RXPCData.currentStep
        ProcessSpells()
        -- RXP_:LoadGuide(RXP_.currentGuide)
        RXP_.SetStep(1)
        RXP_.SetStep(stepn)
    elseif event == "UNIT_AURA" then
        SoMCheck()
    elseif event == "UNIT_PET" then
        RXP_.petFamily = GetPetIcon() or RXP_.petFamily
    elseif event == "QUEST_DATA_LOAD_RESULT" and arg2 then
        RXP_.requestQuestInfo[arg1] = 0
        RXP_.updateStepText = true
    end

end)

function RXP_.GetGuideTable(guideGroup, guideName)
    if guideGroup and RXP_.guideList[guideGroup] and guideName and
        RXP_.guideList[guideGroup][guideName] then
        return RXP_.guides[RXP_.guideList[guideGroup][guideName]]
    end
end

function RXP_.UnitScanUpdate()
    local unitscanList = RXP_.currentGuide.unitscan
    if unitscan_targets and unitscanList and not RXPData.disableUnitscan then
        for unit, elements in pairs(unitscanList) do
            local enabled
            for _, element in pairs(elements) do
                if element.step.active then
                    enabled = true
                    break
                end
            end

            if enabled then
                if not unitscan_targets[unit] then
                    DEFAULT_CHAT_FRAME:AddMessage(
                        LIGHTYELLOW_FONT_COLOR_CODE .. '<unitscan> +' .. unit)
                end
                unitscan_targets[unit] = true
            else
                if unitscan_targets[unit] then
                    DEFAULT_CHAT_FRAME:AddMessage(
                        LIGHTYELLOW_FONT_COLOR_CODE .. '<unitscan> -' .. unit)
                end
                unitscan_targets[unit] = nil
            end

        end
    end
end

RXP_.scheduledTasks = {}

function RXP_.UpdateScheduledTasks()
    local cTime = GetTime()
    for ref, time in pairs(RXP_.scheduledTasks) do
        if cTime > time then
            local group = RXP_.currentGuide.group
            local element = ref.element or ref
            RXPGuides[group][element.tag](ref)
            RXP_.scheduledTasks[ref] = nil
            return
        end
    end
end

function RXP_.ScheduleTask(ref, time)
    if type(ref) == "table" and type(time) == "number" then
        RXP_.scheduledTasks[ref] = time
    end
end

RXP_.updateActiveQuest = {}
RXP_.updateInactiveQuest = {}

RXP_.tickTimer = 0

local updateFrame = CreateFrame("Frame")

local eventType
local updateTick = 0
local updateStart = 0

updateFrame:SetScript("OnUpdate", function(self, diff)

    updateTick = updateTick + diff
    if updateTick > 0.15 then
        local currentTime = GetTime()
        updateTick = 0
        updateStart = currentTime
        local activeQuestUpdate = 0
        local skip
        local event = ""

        if not RXP_.loadNextStep then
            for ref, func in pairs(RXP_.updateActiveQuest) do
                func(ref)
                RXP_.updateActiveQuest[ref] = nil
                activeQuestUpdate = activeQuestUpdate + 1
            end
            if activeQuestUpdate > 0 then event = event .. "/activeQ" end
        end
        if RXP_.nextStep then
            skip = true
            RXP_.SetStep(RXP_.nextStep)
            RXP_.questAutoAccept = true
            RXP_.updateBottomFrame = true
            RXP_.nextStep = false
        elseif RXP_.loadNextStep then
            RXP_.loadNextStep = false
            RXP_.SetStep(RXPCData.currentStep + 1)
            RXP_.questAutoAccept = true
            skip = true
            RXP_.updateBottomFrame = true
            event = event .. "/loadNext"
        elseif activeQuestUpdate == 0 then
            if RXP_.updateSteps then
                RXP_.UpdateStepCompletion()
                event = event .. "/stepComplete"
            elseif RXP_.updateStepText then
                RXP_.updateStepText = false
                local updateText
                -- TODO handle error if active guide no longer exists
                local steps = RXP_.currentGuide.steps
                for n in pairs(RXP_.stepUpdateList) do
                    if steps[n] then
                        if not updateText and steps[n].active then
                            updateText = true
                        end
                        RXPFrame.BottomFrame.UpdateFrame(nil, nil, n)
                        if not RXP_.updateStepText then
                            RXP_.stepUpdateList[n] = nil
                        end
                    end
                end
                if updateText then
                    RXPFrame.CurrentStepFrame.UpdateText()
                end
                event = event .. "/updateText"
                skip = true
            elseif RXP_.updateBottomFrame or currentTime - RXP_.tickTimer > 5 then
                RXPFrame.BottomFrame.UpdateFrame()
                RXPFrame.CurrentStepFrame.UpdateText()
                RXPFrame.SetStepFrameAnchor()
                RXP_.tickTimer = currentTime
                event = event .. "/bottomFrame"
                skip = true
            else
                inactiveQuestUpdate = true
            end
        end

        if not skip then
            if RXP_.questAutoAccept then
                RXP_.questAutoAccept = false
                RXP_.QuestAutomation()
            end
            if RXP_.updateMap then
                RXP_.UpdateMap()
                event = event .. "/map"
            elseif activeQuestUpdate == 0 then
                for ref, func in pairs(RXP_.updateInactiveQuest) do
                    activeQuestUpdate = activeQuestUpdate + 1
                    if activeQuestUpdate > 4 then
                        break
                    else
                        func(ref)
                        RXP_.updateInactiveQuest[ref] = nil
                    end
                end
                if activeQuestUpdate > 0 then
                    event = event .. "/inactiveQ"
                end
            end
            RXP_.UpdateGotoSteps()
            RXP_.UpdateItemCooldown()
            RXP_.UpdateScheduledTasks()
        end

        if event ~= "" then
            eventType = event
            -- print(event)
        end
    end
end)

function RXP_.HardcoreToggle()
    if RXPCData and RXP_.version == "CLASSIC" then
        RXPCData.hardcore = not RXPCData.hardcore
        RXP_.RenderFrame()
        if RXP_.hardcoreButton then
            RXP_.hardcoreButton:SetChecked(RXPCData.hardcore)
        end
    end
end

function RXP_.GAToggle()
    if RXPCData and RXP_.farmGuides > 0 then
        RXPCData.GA = not RXPCData.GA
        RXP_.RenderFrame()
    end
end

function RXP_.AldorScryerCheck(faction)
    if RXP_.version == "CLASSIC" then return true end
    local name, description, standingID, barMin, barMax, aldorRep =
        GetFactionInfoByID(932)
    local name, description, standingID, barMin, barMax, scryerRep =
        GetFactionInfoByID(934)

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

function RXP_.PhaseCheck(phase)
    local guide
    if type(phase) == "table" then
        guide = phase
        phase = phase.phase
    end

    if phase and RXPCData and RXPCData.phase then
        local pmin, pmax
        pmin, pmax = phase:match("(%d+)%-(%d+)")
        if pmax then
            pmin = tonumber(pmin)
            pmax = tonumber(pmax)
        else
            pmin = tonumber(phase)
            pmax = 0xffff
        end
        if pmin and RXPCData.phase >= pmin and RXPCData.phase <= pmax then
            return true
        else
            return false
        end
    end

    return true
end

function RXP_.IsStepShown(step)
    if (step.daily and RXPCData.skipDailies) then return false end
    return true
end

function RXP_.SeasonCheck(step)
    if RXPCData.SoM and step.era or step.som and not RXPCData.SoM or
        RXPCData.SoM and RXPCData.phase > 2 and step["era/som"] then
        return false
    end
    return true
end

function RXP_.HardcoreCheck(step)
    local hc = RXPCData.hardcore
    if step.softcore and hc or step.hardcore and not hc then return false end
    return true
end
