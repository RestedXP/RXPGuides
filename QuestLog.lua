local addonName, addon = ...

local _G = _G

local GetNumQuests = C_QuestLog.GetNumQuestLogEntries or
                         _G.GetNumQuestLogEntries
local GetQuestLogTitle = C_QuestLog.GetInfo or _G.GetQuestLogTitle

local L = addon.locale.Get
local maxQuests = 25
if addon.game == "CLASSIC" then
    maxQuests = 20
end

local lastIndex

function addon.UpdateQuestButton(index)
    if type(index) ~= 'number' or index > maxQuests then
        index = lastIndex or
            _G.GetQuestLogSelection and _G.GetQuestLogSelection()
    end
    --print(maxQuests)
    if not index then return end
    local button = addon.questLogButton
    local anchor = _G.QuestLogExDetailScrollChildFrame or
                       _G.QuestLogDetailScrollChildFrame
    if not anchor or anchor:IsForbidden() then return end
    if not button then
        button = CreateFrame("Button", "$parentRXP", anchor)
        button:SetWidth(32)
        button:SetHeight(32)
        button:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", 0, 0)
        button:SetNormalTexture(addon.GetTexture("rxp_logo-64"))
        addon.questLogButton = button

        local function tpOnEnter(self)
            if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
                return
            end
            _G.GameTooltip:SetOwner(self, "ANCHOR_BOTTOM", 0, -10)
            _G.GameTooltip:ClearLines()
            _G.GameTooltip:AddLine(self.tooltip)
            _G.GameTooltip:Show()
        end
        local function tpOnLeave(self)
            if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
                return
            end
            _G.GameTooltip:Hide()
        end
        button:SetScript("OnEnter", tpOnEnter)
        button:SetScript("OnLeave", tpOnLeave)

    end
    local questLogTitleText, level, questTag, isHeader, isCollapsed, isComplete,
          frequency, questID = _G.GetQuestLogTitle(index);
    local showButton
    local function GetGuideList(list,qid)
        -- local guides = {}
        local output = ""
        local groups = {}
        local guides = {}
        for _, entry in pairs(list) do
            local step = entry.step
            if not entry.guide.lowPrio and
                 addon.IsGuideActive(entry.guide) and
                  addon.IsStepShown(step,"GroupCheck") and
                  (step.group or addon.stepLogic.GroupCheck(step)) then
                    --print(entry.guide.name,entry.guide.lowPrio)
                if not guides[entry.group] then
                    guides[entry.group] = {}
                    table.insert(groups, entry.group)
                end
                local solo = step.solo or not step.group
                local grpTbl = guides[entry.group]
                grpTbl[entry.name] = grpTbl[entry.name] or solo
                --print(entry.name,entry.group,solo,qid)
            end
        end
        table.sort(groups)
        for _, group in ipairs(groups) do
            local guideList = {}
            for guide,solo in pairs(guides[group]) do
                local suffix = ""
                if not solo then
                    suffix = L" (Group)"
                end
                table.insert(guideList, guide .. suffix)
            end
            table.sort(guideList)
            output = output .. "\n   " .. group .. ":"
            for _, guide in ipairs(guideList) do
                output = output .. "\n     " .. guide
            end
        end
        return output
    end

    if questID then
        local tooltip = ""
        local separator = ""
        if addon.pickUpList[questID] then
            local pickUpList = GetGuideList(addon.pickUpList[questID],questID)
            if pickUpList ~= "" then
                tooltip = format("%s%s%s%s|r%s", tooltip, addon.icons.accept,
                                 addon.colors.tooltip,
                                 L("Quest is being picked up at"), pickUpList)
                showButton = true
                separator = "\n\n"
            end
        end
        if addon.turnInList[questID] then
            local turnInList = GetGuideList(addon.turnInList[questID],questID)
            if turnInList ~= "" then
                tooltip = format("%s%s%s%s%s|r%s", tooltip, separator,
                                 addon.icons.turnin, addon.colors.tooltip,
                                 L("Quest is being turned in at"), turnInList)
                showButton = true
            end
        end

        -- Only evaluates true on first load
        -- addon.orphanedList is updated when QuestLogFrame opens/closes
        if not addon.orphanedList then
            addon.GetOrphanedQuests()
        end

        -- If showButton, then it's a pickUp or turnIn, without the table lookup cost
        if not showButton and addon.orphanedList and addon.orphanedList[questID] then
            tooltip = format("%s%s%s%s%s|r", tooltip, separator,
                                addon.icons.error, addon.colors.tooltip,
                                L("Quest is not part of any guide"))

            button:SetNormalTexture("Interface/AddOns/" .. addonName ..
                                        "/Textures/orphaned_quest-64")
            showButton = true
        else
            -- Inefficient, but set back to default texture in case of orphans
            button:SetNormalTexture(addon.GetTexture("rxp_logo-64"))
        end
        button.tooltip = tooltip
    end

    if showButton then
        lastIndex = index
        button:Show()
    else
        button:Hide()
    end
end

if _G.QuestLog_SetSelection then
    hooksecurefunc("QuestLog_SetSelection", addon.UpdateQuestButton)
end

-- Debug function, helps finding out quest log problems on a given guide
--Returns the expected quest log and a list of quest that will be turend in later
--This will run from the 1st guide to the point where you are now, counting the accept/turn in steps in order to determine the quest log state
--After determining the expected quest log, it will run from the current step forward, counting existing turn in steps for the quests in your quest log currently

--Guides have a lot of optional steps of the like: Turn in this quest if you have completed it, otherwise do it later

local stepIndex = 0
local guideKey,qLogCache,futureTurnInsCache
function addon.GetExpectedQuestLog()
    local guide = addon.currentGuide
    local startGuide
    local currentStep = RXPCData.currentStep
    local scanQuests
    if guideKey ~= guide.key or stepIndex ~= currentStep or not qLogCache then
        scanQuests = true
    end
    guideKey = guide.key
    stepIndex = currentStep

    local function scanGuides()
        if guide.standalone then
            startGuide = guide
        else
            local group = guide.group
            local name = addon.guideList[group].defaultGuide_
            startGuide = addon:FetchGuide(group,name)
        end
        startGuide = addon.ProcessGuideTable(startGuide)
        if not (startGuide and startGuide.steps) then return {},{} end
        --print(group,name)
        local qLog = addon.GetQuestLog(nil,nil,startGuide,true,guide.key,currentStep)
        if not qLog or not next(qLog) then
            return {},{}
        end
        local futureTurnIns = {}

        local function ProcessStep(step,guide)
            for _,element in ipairs(step.elements) do
                if element.tag and (element.tag:find("turnin")) then
                    local ids = element.ids or {element.questId}
                    for _,id in pairs(ids) do
                        if addon.IsOnQuest(id) then
                            futureTurnIns[id] = guide.key
                        end
                    end
                end
            end
        end
        for i = currentStep,#guide.steps do
            local step = guide.steps[i]
            if step then
                ProcessStep(step,guide)
            end
        end

        local nextGroup,nextName,nextGuide

        repeat
            nextGroup,nextName = addon.functions.next(false,guide)
            nextGuide = addon:FetchGuide(nextGroup,nextName)
            if nextGuide and nextGuide.steps then
                if guide.key ~= nextGuide.key then
                    nextGuide = addon.ProcessGuideTable(nextGuide)
                    guide = nextGuide
                    for _,step in ipairs(guide.steps) do
                        ProcessStep(step,guide)
                    end
                else
                    nextGuide = nil
                end
            end
        until not nextGuide

        return qLog,futureTurnIns
    end
    if scanQuests then
        qLogCache,futureTurnInsCache = scanGuides()
    end
    return qLogCache,futureTurnInsCache
end
local maxQLogSize = 0
local maxIndex = 0
function addon.GetQuestLog(QL, LT, guide, silent, stopGuide, stopStep)
    if not (QL and LT) then
        QL = {}
        LT = {}
        guide = guide or addon.currentGuide
    end
    local name = guide.name
    local group = addon.functions
    local qError
    local eStep
    local stop
    local lastQuestAccepted
    if not (guide and addon.stepLogic.SeasonCheck(guide)) then return end
    for _, step in ipairs(guide.steps) do
        local remove = tonumber(step.qremove)
        if remove then
            QL[remove] = nil
        end
        for en, element in pairs(step.elements) do
            local ids
            if element.tag == "accept" or element.tag == "daily" then
                local id = element.questId or element.ids[1]
                id = addon.GetQuestId(id,guide)
                local qname = element.text or tostring(id)
                LT[id] = false
                qname = qname:gsub("^Accept ", "")
                lastQuestAccepted = qname
                QL[id] = qname
            elseif element.tag and (element.tag:find("turnin") or element.tag == "abandon") then
                ids = element.ids or {element.questId}
                for _,id in pairs(ids) do
                    id = addon.GetQuestId(id,guide)
                    if LT[id] == nil and not element.skipIfMissing then
                        local t = id .. "/" ..
                                    (element.text or tostring(id)) ..
                                    "/" .. guide.name
                        LT[id] = t:gsub("^[Tt]urn in", "")
                    end
                    QL[id] = nil
                end
            end
        end
        local nQuests = 0
        for n in pairs(QL) do nQuests = nQuests + 1 end
        if nQuests > maxQLogSize then
            maxIndex = step.index
            maxQLogSize = nQuests
        end
        if (not silent and (nQuests > maxQuests or step.stop)) or (stopGuide == guide.key and stopStep == step.index) then
            qError = true
            eStep = step
            stop = step.stop
            break
        end
    end

    if not silent then
        local n = 0
        print("\n\nGuide: " .. name)
        for i, v in pairs(QL) do
            print(format("%s (%d)", v:gsub("^Accept ", ""), i))
            n = n + 1
        end
        print("QuestLog length: " .. n)
        print(format("QuestLog maximum size: %d - step %d",maxQLogSize,maxIndex))
        maxQLogSize = 0
        maxIndex = 0
    end
    if qError then
        if not silent then
            if stop then
                print(format("Stopped at step %d", eStep.index or 0))
            else
                print(format("Error at step %d: Quest log length greater than " ..
                                maxQuests, eStep.index or 0))
                print('Last Quest Accepted: ',lastQuestAccepted)
            end
        end
    else
        local nextGroup,nextName = group.next(false,guide)
        local nextGuide = addon:FetchGuide(nextGroup,nextName)
        if nextGuide and nextGuide.steps then
            nextGuide = addon.ProcessGuideTable(nextGuide)
            if guide.key ~= nextGuide.key then
                return addon.GetQuestLog(QL, LT, nextGuide, silent, stopGuide, stopStep)
            end
        elseif eStep and not silent then
            print(format("Error at step %d (%s)", eStep.index or 0,guide.name))
        end
    end

    if not silent then
        local prefix = "\n\nQuests missing an accept step:\n"
        for _, v in pairs(LT) do
            if type(v) == "string" and not v:find("A Donation of") then
                print(prefix .. v)
                prefix = ""
            end
        end
    end
    return QL
end

local function SetItemTooltip(tooltip, tooltipInfo)
    if tooltip:IsForbidden() or _G.GameTooltip:IsForbidden() then return end

    local id
    if tooltipInfo then
        id = tooltipInfo.id
    else
        local _, link = tooltip:GetItem()
        id = type(link) == "string" and tonumber(link:match("item:(%d+)"))
    end

    local questId = id and addon.questItemList[id]
    local guideList = questId and addon.turnInList[questId]

    if guideList and #guideList > 0 then
        local activeGuides = {}
        local prefix = L"Item used in guide:\n"
        for _, entry in ipairs(guideList) do
            local step = entry.step
            local guide = entry.guide
            if addon.IsGuideActive(guide) and not guide.lowPrio and
                addon.IsStepShown(step,"GroupCheck") then
                    local groupText = ""
                    if step.group then
                        groupText = L" (Group)"
                    end
                local guideName = prefix .. addon.icons.turnin .. entry.name .. groupText
                if not activeGuides[guideName] then
                    activeGuides[guideName] = true
                    tooltip:AddLine(guideName)
                    prefix = ""
                end
            end
        end
    end
end

if _G.TooltipDataProcessor then
    _G.TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item,
                                               SetItemTooltip)
else
    _G.GameTooltip:HookScript("OnTooltipSetItem", SetItemTooltip)
end

local function getQuestData(questLogIndex)
    local data
    local questInfo, questLogTitleText, level, isHeader, isComplete, frequency,
          questID

    if C_QuestLog.GetInfo then
        questInfo = C_QuestLog.GetInfo(questLogIndex) or {}

        data = {
            ["questLogTitleText"] = questInfo.title,
            ["level"] = questInfo.level,
            ["isHeader"] = questInfo.isHeader,
            ["questID"] = questInfo.questID,
            ["frequency"] = questInfo.frequency,

            ["isComplete"] = questID and C_QuestLog.IsComplete(questID)
        }
    else
        questLogTitleText, level, _, isHeader, _, isComplete, frequency, questID =
            GetQuestLogTitle(questLogIndex)

        data = {
            ["questLogTitleText"] = questLogTitleText,
            ["level"] = level,
            ["isHeader"] = isHeader,
            ["questID"] = questID,
            ["frequency"] = frequency,

            ["isComplete"] = questID and isComplete
        }
    end

    return data
end

-- Set on first GetOrphanedQuests run, likely by UpdateQuestButton call
addon.orphanedList = nil -- {}
function addon.GetOrphanedQuests()
    if addon.isHidden or not addon.currentGuide or not addon.currentGuide.key then
        return {}, {}
    end
    local invertedList, orphanedList = {}, {}

    local guideQuests, futureTurnIns = addon.GetExpectedQuestLog()

    local questData, orphanData
    local isPartOfGuide

    for i = 1, GetNumQuests() do
        questData = getQuestData(i)

        if not questData.isHeader and questData.questID > 0 then
            orphanData = {
                ["questLogTitleText"] = questData.questLogTitleText,
                ["level"] = questData.level,
                ["questID"] = questData.questID,
                ["questLogIndex"] = i
            }

            isPartOfGuide = guideQuests[questData.questID] or futureTurnIns[questData.questID]

            if not isPartOfGuide and not questData.isComplete then
                table.insert(invertedList, 1, orphanData)

                orphanedList[questData.questID] = orphanData
            end
        end

    end

    -- orphanedList for quest log parsing similar to addon.turnInList
    addon.orphanedList = orphanedList

    -- invertedList to abandon from questlog bottom, no required refresh on bulk abandon
    return invertedList
end


local SetAbandonQuest = C_QuestLog.SetAbandonQuest or _G.SetAbandonQuest
local AbandonQuest = C_QuestLog.AbandonQuest or _G.AbandonQuest

function addon.AbandonOrphanedQuests(orphans)
    -- Likely addon.orphanedList but re-create if empty
    orphans = orphans or addon.GetOrphanedQuests()

    local function abandonQuest(questInfo)
        addon.comms.PrettyPrint("Abandoning %s", questInfo.questLogTitleText)

        if C_QuestLog.SetSelectedQuest then
            C_QuestLog.SetSelectedQuest(questInfo.questID)
        else
            _G.SelectQuestLogEntry(questInfo.questLogIndex)
        end

        SetAbandonQuest()

        AbandonQuest()
    end

    local id, questData

    -- Reverse process list, to avoid searching, abandon from bottom
    for i = #orphans, 1, -1 do
        questData = orphans[i]

        if C_QuestLog.SetSelectedQuest then
            abandonQuest(questData)
        else
            id = select(8, GetQuestLogTitle(questData.questLogIndex))

            if id == questData.questID then
                abandonQuest(questData)
            else
                for j = 1, GetNumQuests() do
                    id = select(8, GetQuestLogTitle(j))

                    if id == questData.questID then
                        abandonQuest(questData)

                        break
                    end
                end
            end
        end
    end

    -- Workaround async UI draws, abandon won't have completed before next name func called
    C_Timer.After(2, function()
        LibStub("AceConfigRegistry-3.0"):NotifyChange(addon.title)
    end)
end

--[[ no longer necessary
-- Classic / Cata
if _G.ToggleQuestLog and _G.QuestLogFrame then
    hooksecurefunc("ToggleQuestLog", function()
        if _G.QuestLogFrame:IsShown() then
            -- Update before UpdateQuestButton fires
            addon.GetOrphanedQuests()
        else
            -- Inventory orphaned quests on close
            addon:ScheduleTask(addon.GetOrphanedQuests)
        end
    end)
-- else
--     addon.game == 'RETAIL'
end
]]
