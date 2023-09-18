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
function addon.GetQuestLog(QL, LT)

    local guide = addon.currentGuide
    local name = RXPCData.currentGuideName
    local group = addon.functions
    QL = QL or {}
    LT = LT or {}
    local qError
    local eStep
    addon.next = group.next
    local stop
    local lastQuestAccepted
    if (addon.settings.profile.SoM and guide.era or
        not addon.settings.profile.SoM and guide.som or
        addon.settings.profile.SoM and addon.settings.profile.phase > 2 and
        guide["era/som"]) or not guide then return end
    for ns, step in ipairs(guide.steps) do
        local remove = tonumber(step.qremove)
        if remove then
            QL[remove] = nil
        end
        for en, element in pairs(step.elements) do
            if element.tag == "accept" then
                QL[element.questId] = element.text or tostring(element.questId)
                LT[element.questId] = false
                lastQuestAccepted = QL[element.questId]:gsub("^Accept ", "")
            elseif element.tag == "turnin" or element.tag == "abandon" then
                if LT[element.questId] == nil and not element.skipIfMissing then
                    local t = element.questId .. "/" ..
                                  (element.text or tostring(element.questId)) ..
                                  "/" .. guide.name
                    LT[element.questId] = t:gsub("^[Tt]urn in", "")
                end
                QL[element.questId] = nil
            end
        end
        local nQuests = 0
        for n in pairs(QL) do nQuests = nQuests + 1 end
        if nQuests > maxQuests or step.stop then
            qError = true
            eStep = step
            stop = step.stop
            break
        end
    end
    local n = 0
    print("\n\nGuide: " .. name)
    for i, v in pairs(QL) do
        print(format("%s (%d)", v:gsub("^Accept ", ""), i))
        n = n + 1
    end
    print("QuestLog length: " .. n)

    if qError then
        if stop then
            print(format("Stopped at step %d", eStep.index or 0))
        else
            print(format("Error at step %d: Quest log length greater than " ..
                            maxQuests, eStep.index or 0))
            print('Last Quest Accepted: ',lastQuestAccepted)
        end
    else
        if group.next() then
            return addon.GetQuestLog(QL, LT)
        elseif eStep then
            print(format("Error at step %d", eStep.index or 0))
        end
    end

    local prefix = "\n\nQuests missing an accept step:\n"
    for _, v in pairs(LT) do
        if type(v) == "string" and not v:find("A Donation of") then
            print(prefix .. v)
            prefix = ""
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

function addon.GetOrphanedQuests()
    local orphans = {}

    if not addon.currentGuide or not addon.currentGuide.key then
        return orphans
    end

    local greyBuffer = UnitLevel("player") - 7

    local questData, orphanData
    local isTooLow, isPartOfGuide
    local normalFrequency = C_QuestLog.GetInfo and 0 or 1

    for i = 1, GetNumQuests() do
        questData = getQuestData(i)

        if not questData.isHeader and questData.questID > 0 and
            questData.frequency == normalFrequency then -- Normal quest, not daily/weekly
            orphanData = {
                ["questLogTitleText"] = questData.questLogTitleText,
                ["level"] = questData.level,
                ["questID"] = questData.questID,
                ["questLogIndex"] = i
            }

            isTooLow = questData.level < greyBuffer
            isPartOfGuide = false

            for _, data in pairs(addon.turnInList[questData.questID] or {}) do
                if data.guide.key == addon.currentGuide.key then
                    isPartOfGuide = true
                    break
                end
            end

            for _, data in pairs(addon.pickUpList[questData.questID] or {}) do
                if data.guide.key == addon.currentGuide.key then
                    isPartOfGuide = true
                    break
                end
            end

            if (isTooLow or not isPartOfGuide) and not questData.isComplete then
                if addon.settings.profile.debug then
                    addon.comms.PrettyPrint("Orphaned quest found, %s",
                                            questData.questLogTitleText)
                end
                table.insert(orphans, 1, orphanData)
            end
        end

    end

    return orphans
end

local SetAbandonQuest = C_QuestLog.SetAbandonQuest or _G.SetAbandonQuest
local AbandonQuest = C_QuestLog.AbandonQuest or _G.AbandonQuest

function addon.AbandonOrphanedQuests(orphans)
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
