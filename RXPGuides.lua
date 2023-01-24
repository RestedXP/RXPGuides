local addonName, addon = ...

local _G = _G
local UnitInRaid = UnitInRaid

addon = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0")

addon.release = GetAddOnMetadata(addonName, "Version")
addon.title = GetAddOnMetadata(addonName, "Title")
local L = addon.locale.Get

if string.match(addon.release, 'project') then
    addon.release = L('Development')
    addon.versionText = L('Development')
else
    addon.versionText = string.format("%s %s", _G.GAME_VERSION_LABEL, addon.release)
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

addon.questQueryList = {}
addon.itemQueryList = {}
addon.questAccept = {}
addon.questTurnIn = {}
addon.activeItems = {}
addon.activeSpells = {}
addon.RXPG = {}
addon.functions = {}
addon.enabledFrames = {} -- Hold all enabled frame/features for Hide/Show
addon.player = {
    class = select(2, UnitClass("player"))
}

BINDING_HEADER_RXPGuides = addon.title
BINDING_HEADER_RXPTargeting = addon.title

local questFrame = CreateFrame("Frame");

local startTime = GetTime()

function addon.QuestAutoAccept(title)
    if title then
        local element
        for k, v in pairs(addon.questAccept) do
            if k == title or addon.GetQuestName(k) == title then
                element = v
            end
        end
        return element and element.step.active
    end
end

function addon.QuestAutoTurnIn(title)
    if title then
        local element
        for k, v in pairs(addon.questTurnIn) do
            if k == title or addon.GetQuestName(k) == title then
                element = v
            end
        end
        return (element and element.step.active) and element.reward >= 0 and element.reward
    end
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

    if IsPlayerSpell(54197) then
        currrentSkillLevel["coldweatherflying"] = 1
    end

    if not _G.GetSkillLineInfo then
        return
    end
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

function addon.GetSkillLevel(skill, useMaxValue)
    addon.UpdateSkillData()
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

addon.skillList = {}
local spellRequest = {}

local trainerUpdate = 0

local function ProcessSpells(names, rank)
    if gameVersion > 90000 then return end
    local _, class = UnitClass("player")
    local _, race = UnitRace("player")
    local level = UnitLevel("player")
    local entries = {race, class}
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
                            not (addon.settings.db.profile.hardcore and addon.HCSpellList and
                                addon.HCSpellList[spellId]) then
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
    if not addon.settings.db.profile.enableTrainerAutomation then return end

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

local GossipGetNumActiveQuests = C_GossipInfo.GetNumActiveQuests or
                                     _G.GetNumGossipActiveQuests
local GossipGetNumAvailableQuests = C_GossipInfo.GetNumAvailableQuests or
                                        _G.GetNumGossipAvailableQuests
local GossipGetNumOptions = C_GossipInfo.GetOptions and function() return #C_GossipInfo.GetOptions() end or _G.GetNumGossipOptions
local GossipSelectAvailableQuest = C_GossipInfo.SelectAvailableQuest or
                                       _G.SelectGossipAvailableQuest
local GossipGetActiveQuests = C_GossipInfo.GetActiveQuests or
                                  _G.GetGossipActiveQuests
local GossipSelectActiveQuest = C_GossipInfo.SelectActiveQuest or
                                    _G.SelectGossipActiveQuest
local GossipGetAvailableQuests = C_GossipInfo.GetAvailableQuests or
                                     _G.GetGossipAvailableQuests

function addon:QuestAutomation(event, arg1, arg2, arg3)
    if not addon.settings.db.profile.enableQuestAutomation or IsControlKeyDown() then
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
        local id = GetQuestID()
        local reward = addon.QuestAutoTurnIn(id)
        local choices = GetNumQuestChoices()
        if reward then
            if choices <= 1 then
                GetQuestReward(1)
            elseif reward and reward > 0 then
                GetQuestReward(reward)
            end
        end

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

        for i = 1, nActive do
            local title, isComplete = GetActiveTitle(i)
            if addon.QuestAutoTurnIn(title) and isComplete then
                return SelectActiveQuest(i)
            end
        end

        if GossipGetNumOptions() == 0 and nAvailable == 1 and nActive == 0 then
            SelectAvailableQuest(1)
        else
            for i = 1, nAvailable do
                local title, isComplete = GetAvailableTitle(i)
                if addon.QuestAutoAccept(title) then
                    return SelectAvailableQuest(i)
                end
            end
        end
    elseif event == "GOSSIP_SHOW" then
        local nActive = GossipGetNumActiveQuests()
        local nAvailable = GossipGetNumAvailableQuests()
        local quests, selectAvailableByQuestID, selectActiveByQuestID, missingTurnIn
        if C_GossipInfo.GetActiveQuests then
            quests = C_GossipInfo.GetActiveQuests()
            selectActiveByQuestID = true
        end
        for i = 1, nActive do
            local title, isComplete
            if type(quests) == "table" then
                title = quests[i].questID
                isComplete = quests[i].isComplete
                if not (isComplete or missingTurnIn) and addon.QuestAutoTurnIn(title) then
                    local objectives = addon.GetQuestObjectives(title)
                    missingTurnIn = objectives and objectives[1].generated and (selectActiveByQuestID and title or i)
                end
            else
                title, _, _, isComplete = select(i * 6 - 5, GossipGetActiveQuests())
            end

            if isComplete and addon.QuestAutoTurnIn(title) then
                return GossipSelectActiveQuest(selectActiveByQuestID and title or i)
            end
        end

        local availableQuests
        if C_GossipInfo.GetAvailableQuests then
            availableQuests = C_GossipInfo.GetAvailableQuests()
            selectAvailableByQuestID = true
        end
        if GossipGetNumOptions() == 0 and nAvailable == 1 and nActive == 0 and not selectAvailableByQuestID then
            return GossipSelectAvailableQuest(selectAvailableByQuestID and availableQuests[1] and availableQuests[1].questID or 1)
        else
            for i = 1, nAvailable do
                local quest
                if type(availableQuests) == "table" then
                    quest = availableQuests[i].questID
                else
                    quest = select(i * 7 - 6, GossipGetAvailableQuests())
                end
                if addon.QuestAutoAccept(quest) then
                    return GossipSelectAvailableQuest(selectAvailableByQuestID and quest or i)
                end
            end
        end
        if missingTurnIn then
            return GossipSelectActiveQuest(missingTurnIn)
        end
    end
end

function addon:OnInitialize()
    local importGuidesDefault = {
        profile = {guides = {}, reports = {splits = {}}}
    }

    addon.db = LibStub("AceDB-3.0"):New("RXPDB", importGuidesDefault, 'global')
    RXPData = RXPData or {}
    RXPCData = RXPCData or {}

    if not RXPData.gameVersion then
        RXPData.gameVersion = gameVersion
    elseif math.floor(gameVersion/1e4) ~= math.floor(RXPData.gameVersion/1e4) then
        addon.db.profile.guides = {}
        RXPData.gameVersion = gameVersion
    end
    addon.settings:InitializeSettings()

    RXPCData.completedWaypoints = RXPCData.completedWaypoints or {}
    addon.settings.db.profile.hardcore = addon.game == "CLASSIC" and addon.settings.db.profile.hardcore
    RXPCData.stepSkip = RXPCData.stepSkip or {}
    if not RXPCData.flightPaths or UnitLevel("player") <= 6 then
        RXPCData.flightPaths = {}
    end
    if RXPData.trainGenericSpells == nil then
        RXPData.trainGenericSpells = true
    end

    addon:ImportCustomThemes()
    addon:LoadActiveTheme()
    addon.settings:UpdateMinimapButton()
    addon.SetupGuideWindow()
    addon.RenderFrame()
    addon.SetupArrow()
    addon:CreateActiveItemFrame()
    addon.comms:Setup()
    addon.targeting:Setup()
    if addon.settings.db.profile.enableTracker then addon.tracker:SetupTracker() end

    addon.RXPG.LoadCachedGuides()
    addon.RXPG.LoadEmbeddedGuides()
    addon.UpdateGuideFontSize()
    addon.isHidden = addon.settings.db.profile.hideGuideWindow
    addon.RXPFrame:SetShown(not addon.settings.db.profile.hideGuideWindow)
    addon.RXPFrame:SetScale(addon.settings.db.profile.windowScale)
    addon.arrowFrame:SetSize(32 * addon.settings.db.profile.arrowScale, 32 * addon.settings.db.profile.arrowScale)
    addon.arrowFrame.text:SetFont(addon.font, addon.settings.db.profile.arrowText, "OUTLINE")
    addon.activeItemFrame:SetScale(addon.settings.db.profile.activeItemsScale)
end

function addon:OnEnable()
    ProcessSpells()
    addon.GetProfessionLevel()
    local guide = addon.GetGuideTable(RXPCData.currentGuideGroup,
                                      RXPCData.currentGuideName)
    if not guide and addon.settings.db.profile.autoLoadStartingGuides then
        if addon.defaultGuideList then
            local currentMap = C_Map.GetBestMapForUnit("player")
            for zone,guideName in pairs(addon.defaultGuideList) do
                if currentMap == zone or currentMap == addon.mapId[zone] then
                    local group,name = string.match(guideName,"([^\\]+)%s*\\%s*([^\\]+)")
                    guide = addon.GetGuideTable(group,name)
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
    self:RegisterEvent("BAG_UPDATE")
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

    self:RegisterEvent("CALENDAR_UPDATE_EVENT_LIST")

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

    for _, frame in pairs(addon.enabledFrames) do
        if frame.IsFeatureEnabled() then
            frame:SetShown(addon.settings.db.profile.showEnabled)
        end
    end

    if addon.settings.db.profile.hideInRaid then
        self:RegisterEvent("GROUP_JOINED", addon.HideInRaid)
        self:RegisterEvent("GROUP_FORMED", addon.HideInRaid)
        self:RegisterEvent("GROUP_LEFT")

        -- Check if reloading in raid
        addon.HideInRaid()
    end

    if addon.game == "WOTLK" then
        local detectXPRateQueued = false
        self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED", function (_, slot)
            if detectXPRateQueued then return end

            -- Abort if not chest/shoulders
            if slot ~= 3 and slot ~= 5 then return end

            detectXPRateQueued = true
            C_Timer.After(3, function ()
                addon.settings:DetectXPRate()
                detectXPRateQueued = false
            end)
        end)
    end

    --Only start update loop after everything initializes and enables
    local updateFrame = CreateFrame("Frame")
    updateFrame:SetScript("OnUpdate", addon.UpdateLoop)
end


--Tracks if a player is on a loading screen and pauses the main update loop
--Some information is not available during zone transitions
function addon:PLAYER_ENTERING_WORLD(_, isInitialLogin)
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE and RXPCData then
        RXPCData.GA = false
    end
    addon.hideArrow = false
    addon.updateMap = true
    addon.isHidden = addon.settings and addon.settings.db.profile.hideGuideWindow or
                                         not (addon.RXPFrame and addon.RXPFrame:IsShown())

    if isInitialLogin then
        C_Timer.After(5, function ()
            addon.settings:DetectXPRate()
            addon.settings:CheckAddonCompatibility()
        end)
    end
end

function addon:PLAYER_LEAVING_WORLD()
    addon.isHidden = true
end

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

function addon:BAG_UPDATE(...) addon.UpdateItemFrame() end

function addon:PLAYER_REGEN_ENABLED(...) addon.UpdateItemFrame() end

function addon:QUEST_TURNED_IN(_, questId, xpReward)
    if questId == 10551 or questId == 10552 then
        C_Timer.After(1, function() addon.ReloadGuide() end) -- scryer/aldor quest
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
    if not addon.settings.db.profile.hideInRaid or (RXPCData and RXPCData.GA) or (addon.guide and addon.guide.farm) then return end

    if not addon.settings.db.profile.showEnabled then return end

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
    if not addon.settings.db.profile.hideInRaid or (RXPCData and RXPCData.GA) or (addon.guide and addon.guide.farm) then return end

    if not UnitInRaid("player") then return end

    for _, frame in pairs(addon.enabledFrames) do
        if not frame:IsForbidden() then frame:Hide() end
    end
end

questFrame:SetScript("OnEvent", addon.QuestAutomation)

function addon.GetGuideTable(guideGroup, guideName)
    if guideGroup and addon.guideList[guideGroup] and guideName and
        addon.guideList[guideGroup][guideName] then
        return addon.guides[addon.guideList[guideGroup][guideName]]
    end
end

addon.scheduledTasks = {}

function addon.UpdateScheduledTasks()
    local cTime = GetTime()
    for ref, time in pairs(addon.scheduledTasks) do
        if cTime > time then
            local group = addon.currentGuide.group
            local element = ref.element or ref
            if group and RXPGuides[group] and element and RXPGuides[group][element.tag] then
                RXPGuides[group][element.tag](ref)
                addon.scheduledTasks[ref] = nil
            end
            return
        end
    end
end

function addon.ScheduleTask(ref, time)
    if type(ref) == "table" and type(time) == "number" then
        addon.scheduledTasks[ref] = time
    end
end

addon.updateActiveQuest = {}
addon.updateInactiveQuest = {}

addon.tickTimer = 0

local updateTick = 0
local skip = 0

function addon:UpdateLoop(diff)
    updateTick = updateTick + diff
    --TODO
    if addon.isHidden then
        return
    elseif updateTick > (0.05+math.random()/128) then
        local currentTime = GetTime()
        updateTick = 0
        local activeQuestUpdate = 0
        skip = skip + 1
        local event = ""

        if not addon.loadNextStep then
            for ref, func in pairs(addon.updateActiveQuest) do
                func(ref)
                activeQuestUpdate = activeQuestUpdate + 1
                addon.updateActiveQuest[ref] = nil
                --print('f',ref.element.step.index,math.random())
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
            addon.loadNextStep = false
            addon.SetStep(RXPCData.currentStep + 1)
            addon.questAutoAccept = true
            skip = 1
            addon.updateBottomFrame = true
            event = event .. "/loadNext"
        elseif activeQuestUpdate == 0 then
            if addon.updateSteps then
                addon.UpdateStepCompletion()
                event = event .. "/stepComplete"
            elseif addon.updateStepText and addon.currentGuide and skip % 2 == 1 then
                addon.updateStepText = false
                local updateText
                local steps = addon.currentGuide.steps
                for n in pairs(addon.stepUpdateList) do
                    if steps[n] then
                        if not updateText and steps[n].active then
                            updateText = true
                        end
                        addon.RXPFrame.BottomFrame.UpdateFrame(nil, nil, n)
                        if not addon.updateStepText then
                            addon.stepUpdateList[n] = nil
                        end
                    end
                end
                if updateText then
                    addon.RXPFrame.CurrentStepFrame.UpdateText()
                end
                event = event .. "/updateText"
            elseif addon.updateBottomFrame or currentTime - addon.tickTimer > 5 then
                addon.RXPFrame.BottomFrame.UpdateFrame()
                addon.RXPFrame.CurrentStepFrame.UpdateText()
                addon.RXPFrame.SetStepFrameAnchor()
                addon.tickTimer = currentTime
                event = event .. "/bottomFrame"
                skip = 1
            end
        end

        if skip % 4 == 2 then
            if addon.questAutoAccept then
                addon.questAutoAccept = false
                addon.QuestAutomation()
            end
            if addon.updateMap then
                addon.UpdateMap()
                event = event .. "/map"
            end
        elseif skip % 4 == 0 then
            addon.UpdateGotoSteps()
            --event = event .. "/updateGoto"
        elseif skip % 4 == 3 then
            addon.UpdateScheduledTasks()
        elseif skip % 16 == 1 then
            activeQuestUpdate = 0
            local deletedIndexes = {}
            for i,ref in ipairs(addon.updateInactiveQuest) do
                activeQuestUpdate = activeQuestUpdate + 1
                if activeQuestUpdate > 3 then
                    break
                else
                    --print('ok',ref.element.step.index,ref.element.requestFromServer)
                    addon.UpdateQuestCompletionData(ref)
                    table.insert(deletedIndexes,i)
                end
            end
            for i = #deletedIndexes,1,-1 do
                local element = deletedIndexes[i]
                table.remove(addon.updateInactiveQuest,element)
                --print('r'..element)
            end
            if activeQuestUpdate > 0 then
                event = event .. "/inactiveQ"
            end
        end
    end
end

function addon.HardcoreToggle()
    if addon.game == "CLASSIC" then
        addon.settings.db.profile.hardcore = not addon.settings.db.profile.hardcore
        addon.RenderFrame()
    end
end

function addon.GAToggle()
    if RXPCData and addon.farmGuides > 0 then
        RXPCData.GA = not RXPCData.GA
        addon.RenderFrame()
    end
end

function addon.AldorScryerCheck(faction)
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

function addon.PhaseCheck(phase)

    if type(phase) == "table" then
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

function addon.IsStepShown(step)
    return not(step.daily and RXPCData.skipDailies) and
            (addon.settings.db.profile.northrendLM or not step.questguide) and
             addon.AldorScryerCheck(step) and
             addon.PhaseCheck(step) and addon.HardcoreCheck(step) and
             addon.SeasonCheck(step) and addon.XpRateCheck(step) and addon.FreshAccountCheck(step)
end

function addon.SeasonCheck(step)
    if addon.settings.db.profile.SoM and step.era or step.som and not addon.settings.db.profile.SoM or
    addon.settings.db.profile.SoM and addon.settings.db.profile.phase > 2 and step["era/som"] then
        return false
    end
    return true
end

function addon.HardcoreCheck(step)
    local hc = addon.settings.db.profile.hardcore
    if step.softcore and hc or step.hardcore and not hc then return false end
    return true
end

function addon.XpRateCheck(step)
    if step.xprate and addon.settings.db.profile.enableXpStepSkipping then
        local xpmin,xpmax = 1,0xfff

        step.xprate:gsub("^([<>]?)%s*(%d+%.?%d*)%-?(%d*%.?%d*)",function(op,arg1,arg2)
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

        if addon.settings.db.profile.xprate < xpmin or addon.settings.db.profile.xprate > xpmax then
            return false
        end
    end

    return true
end

function addon.IsFreshAccount()
    if C_PlayerInfo and C_PlayerInfo.CanPlayerEnterChromieTime then
        local manualOverride = addon.settings.db.profile.chromieTime
        if not manualOverride or manualOverride == "auto" then
            return not C_PlayerInfo.CanPlayerEnterChromieTime()
        elseif manualOverride == "disabled" then
            return true
        end
    end
end

function addon.FreshAccountCheck(step)
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

function addon.LevelCheck(step)
    if not addon.settings.db.profile.enableXpStepSkipping then
        return true
    end

    local level = UnitLevel("player")
    local maxLevel = tonumber(step.maxlevel) or 1000
    if level <= maxLevel then
        return true
    end
end


RXP = addon --debug purposes
