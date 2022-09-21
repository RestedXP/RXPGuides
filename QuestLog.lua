local addonName, addon = ...

local _G = _G
local L = addon.locale.Get

function addon.UpdateQuestButton(index)
    local button = addon.questLogButton
    local anchor = _G.QuestLogExDetailScrollChildFrame or
                       _G.QuestLogDetailScrollChildFrame
    if not anchor or anchor:IsForbidden() then return end
    if not button then
        button = CreateFrame("Button", "$parentRXP", anchor)
        button:SetWidth(32)
        button:SetHeight(32)
        button:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", 0, 0)
        button:SetNormalTexture("Interface/AddOns/" .. addonName ..
                                    "/Textures/rxp_logo-64")
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
    local function GetGuideList(list)
        --local guides = {}
        local output = ""
        local groups = {}
        local guides = {}
        for _,entry in pairs(list) do
            if addon.IsGuideActive(entry.guide) and addon.IsStepShown(entry.step) then
                if not guides[entry.group] then
                    guides[entry.group] = {}
                    table.insert(groups,entry.group)
                end
                guides[entry.group][entry.name] = true

            end
        end
        table.sort(groups)
        for _,group in ipairs(groups) do
            local guideList = {}
            for guide in pairs(guides[group]) do
                table.insert(guideList,guide)
            end
            table.sort(guideList)
            output = output .. "\n   " .. group .. ":"
            for _,guide in ipairs(guideList) do
                output = output .. "\n     " .. guide
            end
        end
        return output
    end

    if questID then
        local tooltip = ""
        local separator = ""
        if addon.pickUpList[questID] then
            local pickUpList = GetGuideList(addon.pickUpList[questID])
            if pickUpList ~= "" then
                tooltip = format("%s%s%s%s|r%s",
                                 tooltip, addon.icons.accept,
                                 addon.colors.tooltip, L("Quest is being picked up at"), pickUpList)
                showButton = true
                separator = "\n\n"
            end
        end
        if addon.turnInList[questID] then
            local turnInList = GetGuideList(addon.turnInList[questID])
            if turnInList ~= "" then
                tooltip = format("%s%s%s%s%s|r%s",
                                 tooltip, separator, addon.icons.turnin,
                                 addon.colors.tooltip, L("Quest is being turned in at"), turnInList)
                showButton = true
            end
        end
        button.tooltip = tooltip
    end

    if showButton then
        button:Show()
    else
        button:Hide()
    end
end

if _G.QuestLog_SetSelection then
    hooksecurefunc("QuestLog_SetSelection", addon.UpdateQuestButton)
end

-- Debug function, helps finding out quest log problems on a given guide
function addon.GetQuestLog(QL,LT)

    local guide = addon.currentGuide
    local name = RXPCData.currentGuideName
    local group = addon.RXPG[RXPCData.currentGuideGroup]
    QL = QL or {}
    LT = LT or {}
    local qError
    local eStep
    local maxQuests
    if addon.game == "CLASSIC" then
        maxQuests = 20
    else
        maxQuests = 25
    end
    addon.next = group.next

    if (addon.settings.db.profile.SoM and guide.era or not addon.settings.db.profile.SoM and guide.som or
    addon.settings.db.profile.SoM and addon.settings.db.profile.phase > 2 and guide["era/som"]) or not guide then
        return
    end
    for ns, step in ipairs(guide.steps) do
        for en, element in pairs(step.elements) do
            if element.tag == "accept" then
                QL[element.questId] = element.text or tostring(element.questId)
                LT[element.questId] = false
            elseif element.tag == "turnin" or element.tag == "abandon" then
                if LT[element.questId] == nil and not element.skipIfMissing then
                    local t = element.questId .. "/" .. (element.text or tostring(element.questId)) .. "/" ..  guide.name
                    LT[element.questId] = t:gsub("^[Tt]urn in","")
                end
                QL[element.questId] = nil
            end
        end
        local nQuests = 0
        for n in pairs(QL) do nQuests = nQuests + 1 end
        if nQuests > maxQuests then
            qError = true
            eStep = step
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
        print(format("Error at step %d: Quest log length greater than " .. maxQuests,
                     eStep.index))
    else
        if group.next() then
            return addon.GetQuestLog(QL,LT)
        elseif eStep then
            print(format("Error at step %d", eStep.index))
        end
    end

    local prefix = "\n\nQuests missing an accept step:\n"
    for _,v in pairs(LT) do
        if type(v) == "string" and not v:find("A Donation of") then
            print(prefix..v)
            prefix = ""
        end
    end
    return QL
end

_G.GameTooltip:HookScript("OnTooltipSetItem", function(self)
    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then
        return
    end
    local _,link = _G.GameTooltip:GetItem()
    local id = type(link) == "string" and tonumber(link:match("item:(%d+)"))
    local questId = id and addon.questItemList[id]
    local guideList = questId and addon.turnInList[questId]

    if guideList and #guideList > 0 then
        local prefix = "Item used in guide:\n"
        for _,entry in ipairs(guideList) do
            if addon.IsGuideActive(entry.guide) and addon.IsStepShown(entry.step) then
                _G.GameTooltip:AddLine(prefix..addon.icons.turnin..entry.name)
                prefix = ""
            end
        end
    end
end)
