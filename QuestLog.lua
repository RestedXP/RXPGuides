local addonName, addon = ...

local _G = _G

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
        if RXPData and RXPCData.hardcore then
            list = list:gsub("\n#.*", "")
        else
            list = list:gsub("\n!.*", "")
        end
        if RXPCData and RXPCData.SoM then
            list = list:gsub("\n[!#]?%-.*", "")
        else
            list = list:gsub("\n[!#]?%+.*", "")
        end

        list = list:gsub("(\n?)([#!%-%+]*)%[?(%S*)%]? (.*)",
                         function(newline, prefix, phase, suffix)
            if phase ~= "" and not addon.PhaseCheck(phase) then
                return ""
            end
            return newline .. suffix
        end)
        list = list:gsub("\n\n", "\n")
        return list
    end

    if questID then
        local tooltip = ""
        local separator = ""
        if addon.pickUpList[questID] then
            local pickUpList = GetGuideList(addon.pickUpList[questID])
            if pickUpList ~= "" then
                tooltip = format("%s%s%sQuest is being picked up at:|r%s",
                                 tooltip, addon.icons.accept,
                                 addon.colors.tooltip, pickUpList)
                showButton = true
                separator = "\n\n"
            end
        end
        if addon.turnInList[questID] then
            local turnInList = GetGuideList(addon.turnInList[questID])
            if turnInList ~= "" then
                tooltip = format("%s%s%s%sQuest is being turned in at:|r%s",
                                 tooltip, separator, addon.icons.turnin,
                                 addon.colors.tooltip, turnInList)
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
function addon.GetQuestLog(QL)

    local guide = addon.currentGuide
    local name = RXPCData.currentGuideName
    local group = addon.RXPG[RXPCData.currentGuideGroup]
    QL = QL or {}
    local qError
    local eStep
    local maxQuests
    if addon.version == "CLASSIC" then
        maxQuests = 20
    else
        maxQuests = 25
    end
    addon.next = group.next

    if (RXPCData.SoM and guide.era or not RXPCData.SoM and guide.som or
        RXPCData.SoM and RXPCData.phase > 2 and guide["era/som"]) or not guide then
        return
    end
    for ns, step in ipairs(guide.steps) do
        for en, element in pairs(step.elements) do
            if element.tag == "accept" then
                QL[element.questId] = element.text or tostring(element.questId)
            elseif element.tag == "turnin" or element.tag == "abandon" then
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
        print(format("Error at step %d: Quest log length greater than 20",
                     eStep.index))
    else
        if group.next() then
            return addon.GetQuestLog(QL)
        else
            print(format("Error at step %d", eStep.index))
        end
    end
    return QL
end
