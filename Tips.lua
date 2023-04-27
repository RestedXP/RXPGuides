local _, addon = ...

if addon.gameVersion > 40000 then return end

local GetTime, GetMirrorTimerProgress = _G.GetTime, _G.GetMirrorTimerProgress
local UnitHealth, UnitHealthMax = UnitHealth, UnitHealthMax
local GetItemInfo, GetInventoryItemID, IsPlayerSpell = GetItemInfo,
                                                       GetInventoryItemID,
                                                       IsPlayerSpell
local HasAction, GetActionInfo, GetMacroSpell, GetSpellInfo = HasAction,
                                                              GetActionInfo,
                                                              GetMacroSpell,
                                                              GetSpellInfo
local IsOnBarOrSpecialBar = C_ActionBar.IsOnBarOrSpecialBar
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or
                                 _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or
                               _G.GetContainerItemID
local tinsert, fmt = tinsert, string.format
local UIErrorsFrame = _G.UIErrorsFrame
local STRING_ENVIRONMENTAL_DAMAGE_DROWNING =
    _G.STRING_ENVIRONMENTAL_DAMAGE_DROWNING

local L = addon.locale.Get

addon.tips = addon:NewModule("Tips", "AceEvent-3.0")

local session = {
    checkFrequency = 0.5,
    checkLast = GetTime(),
    lastAlert = 0,
    alertFrequency = 1,
    emergencyItems = {},
    emergencySpells = {},
    highlights = {},
    actionBarMap = {}
}

function addon.tips:Setup()
    if not addon.settings.db.profile.enableTips then return end

    addon.tips:CreateTipsFrame()

    self:RegisterEvent("MIRROR_TIMER_START")
    self:RegisterEvent("MIRROR_TIMER_STOP")

    self:CatalogInventory()

    self:RegisterEvent("PLAYER_STARTED_MOVING")
    self:UpdateEmergencySpells()

    self:CatalogActionBars()
    self:RegisterEvent("ACTIONBAR_SLOT_CHANGED")

    -- Prioritize minimap button, as main frame can be easily hidden
    if addon.settings.db.profile.enableMinimapButton then
        addon.settings.minimapFrame:HookScript("OnUpdate", self.CheckEvents)
    elseif not addon.settings.db.profile.hideGuideWindow then
        addon.RXPFrame:HookScript("OnUpdate", self.CheckEvents)
        -- elseif addon.tips.frame then
    else
        addon.comms.PrettyPrint(
            L("No enabled RXP frames for tips functionality")) -- TODO locale
    end
end

function addon.tips:PLAYER_STARTED_MOVING()
    -- Spams at login, so delay until after player moves
    self:RegisterEvent("UNIT_INVENTORY_CHANGED")

    self:UnregisterEvent("PLAYER_STARTED_MOVING")
end

function addon.tips:CreateTipsFrame()
    if not addon.settings.db.profile.enableTipsFrame then return end
    -- TODO
end

function addon.tips:MIRROR_TIMER_START(_, timerName, value, maxValue, rate)
    if timerName ~= "BREATH" or
        not addon.settings.db.profile.enableDrowningWarning then return end

    -- Recovering breath
    if rate > 0 then
        session.breath = nil
        return
    end

    -- Draining down, event fires with 30 when regaining breath
    session.breath = {value = value, maxValue = maxValue}
end

function addon.tips:MIRROR_TIMER_STOP(_, timerName)
    if timerName ~= "BREATH" or
        not addon.settings.db.profile.enableDrowningWarning then return end

    session.breath = nil
end

function addon.tips.CheckEvents()
    if not addon.settings.db.profile.enableTips then return end

    if GetTime() - session.checkLast <= session.checkFrequency then return end

    if session.breath then
        session.breath.value = GetMirrorTimerProgress("BREATH")

        if session.breath.value == 0 or
            (session.breath.value / session.breath.maxValue) <
            addon.settings.db.profile.drowningThreshold then

            if GetTime() - session.lastAlert > session.alertFrequency then
                -- TODO flash screen edges?
                FlashClientIcon()
                UIErrorsFrame:AddMessage(STRING_ENVIRONMENTAL_DAMAGE_DROWNING,
                                         1.0, 0.1, 0.1, session.alertFrequency);

                if addon.settings.db.profile.enableDrowningWarningSound then
                    PlaySound(_G.SOUNDKIT.RAID_WARNING, "Master")
                end
                session.lastAlert = GetTime()
            end

        end
    end

    addon.tips:CheckEmergencyActions()

    session.checkLast = GetTime()
end

function addon.tips:CheckEmergencyActions()
    if not addon.settings.db.profile.enableEmergencyActions then return end

    if UnitHealth("player") / UnitHealthMax("player") <
        addon.settings.db.profile.emergencyThreshold then

        addon.tips:HighlightEmergencyItem()
        addon.tips:HighlightEmergencySpell()
        return
    end

    for _, border in pairs(session.highlights) do
        if border:IsShown() then border:Hide() end
    end

end

function addon.tips:CatalogInventory()
    if not addon.emergencyItems then return end
    local itemList = {}

    local itemName, itemTexture, id

    for i = 1, _G.INVSLOT_LAST_EQUIPPED do
        id = GetInventoryItemID("player", i)
        if id and addon.emergencyItems[id] then
            itemName, _, _, _, _, _, _, _, _, itemTexture, _, _ =
                GetItemInfo(id)
            tinsert(itemList, {
                name = itemName,
                texture = itemTexture,
                invSlot = i,
                id = id
            })
        end
    end

    local bagSlots
    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        bagSlots = GetContainerNumSlots(bag)
        for slot = 1, bagSlots do
            id = GetContainerItemID(bag, slot)
            if id and addon.emergencyItems[id] then
                itemName, _, _, _, _, _, _, _, _, itemTexture, _, _ =
                    GetItemInfo(id)

                tinsert(itemList, {
                    name = itemName,
                    texture = itemTexture,
                    bag = bag,
                    slot = slot,
                    id = id,
                    bagSlotFrameId = bagSlots + 1 - slot
                })
            end
        end
    end

    session.emergencyItems = itemList
end

function addon.tips:UpdateEmergencySpells()
    if not addon.emergencySpells then return end

    local spellList = {}

    local name, icon

    for spellId in pairs(addon.emergencySpells.professions or {}) do
        -- Only add spells on action bars
        if IsPlayerSpell(spellId) and IsOnBarOrSpecialBar(spellId) then
            name, _, icon = GetSpellInfo(spellId)
            tinsert(spellList,
                    {name = name, texture = icon, spell = true, id = spellId})
        end
    end

    if addon.emergencySpells[addon.player.race] then
        for spellId in pairs(addon.emergencySpells[addon.player.race]) do
            -- Only add spells on action bars
            if IsPlayerSpell(spellId) and IsOnBarOrSpecialBar(spellId) then
                name, _, icon = GetSpellInfo(spellId)
                tinsert(spellList, {
                    name = name,
                    texture = icon,
                    spell = true,
                    id = spellId
                })
            end
        end
    end

    if addon.emergencySpells[addon.player.class] then
        for spellId in pairs(addon.emergencySpells[addon.player.class]) do
            -- Only add spells on action bars
            if IsPlayerSpell(spellId) and IsOnBarOrSpecialBar(spellId) then
                name, _, icon = GetSpellInfo(spellId)
                tinsert(spellList, {
                    name = name,
                    texture = icon,
                    spell = true,
                    id = spellId
                })
            end
        end
    end

    session.emergencySpells = spellList
end

function addon.tips:GetHighlight(name)
    if not name then return end

    if session.highlights[name] then return session.highlights[name] end

    local parent = _G[name]
    local border = parent:CreateTexture(name .. 'Emergency', 'ARTWORK')

    border.animation = border:CreateAnimationGroup()
    local animOut = border.animation:CreateAnimation("Alpha")
    animOut:SetOrder(1)
    animOut:SetDuration(0.2)
    animOut:SetFromAlpha(1)
    animOut:SetToAlpha(1)
    animOut:SetStartDelay(0.2)

    -- local animOut = border.animation:CreateAnimation("Rotation")
    -- animOut:SetDegrees(-360)
    -- animOut:SetDuration(1)
    -- animOut:SetSmoothing("OUT")

    border:SetTexture("Interface/Buttons/UI-ActionButton-Border")
    border:SetBlendMode('ADD')
    border:SetAlpha(0.5)
    border:SetSize(68, 68)
    border:SetPoint('CENTER', parent, 'CENTER', 0, 1)
    border:Hide()

    session.highlights[name] = border

    return border
end

function addon.tips:HighlightEmergencyItem()
    local bagBorder, actionBarLookup, actionBarBorder

    for _, item in ipairs(session.emergencyItems) do
        bagBorder = addon.tips:GetHighlight(
                        fmt('ContainerFrame%sItem%s', item.bag + 1,
                            item.bagSlotFrameId))

        if bagBorder then
            if _G.IsBagOpen(item.bag) then
                bagBorder:Show()
                if addon.settings.db.profile.enableEmergencyIconAnimations and
                    not bagBorder.animation:IsPlaying() then
                    bagBorder.animation:Play()
                end
            else
                bagBorder:Hide()
            end
        end

        actionBarLookup = session.actionBarMap['item:' .. item.id]
        if actionBarLookup then
            actionBarBorder = addon.tips:GetHighlight(actionBarLookup.button)

            if actionBarBorder then
                actionBarBorder:Show()
                if addon.settings.db.profile.enableEmergencyIconAnimations and
                    not actionBarBorder.animation:IsPlaying() then
                    actionBarBorder.animation:Play()
                end
            end

        end
    end

end

function addon.tips:HighlightEmergencySpell()
    local actionBarLookup, actionBarBorder

    for _, item in ipairs(session.emergencySpells) do

        actionBarLookup = session.actionBarMap['spell:' .. item.id]
        if actionBarLookup then
            actionBarBorder = addon.tips:GetHighlight(actionBarLookup.button)

            if actionBarBorder then
                actionBarBorder:Show()
                if addon.settings.db.profile.enableEmergencyIconAnimations and
                    not actionBarBorder.animation:IsPlaying() then
                    actionBarBorder.animation:Play()
                end
            end

        end
    end

end

function addon.tips:UNIT_INVENTORY_CHANGED(_, target)
    if target ~= "player" then return end

    self:CatalogInventory()
end

function addon.tips:BAG_NEW_ITEMS_UPDATED() self:CatalogInventory() end

-- Can be overriden by ElvUI, Bartender, Domino, etc
local ActionBars = {
    'Action', 'MultiBarBottomLeft', 'MultiBarBottomRight', 'MultiBarRight',
    'MultiBarLeft'
}

function addon.tips:CatalogActionBars()
    session.actionBarMap = {}

    local button, slot, actionType, id, key

    for _, barName in pairs(ActionBars) do
        for i = 1, 12 do
            button = _G[barName .. 'Button' .. i]
            slot = _G.ActionButton_GetPagedID(button) or
                       _G.ActionButton_CalculateAction(button) or
                       button:GetAttribute('action')

            if button and slot and HasAction(slot) then
                actionType, id = GetActionInfo(slot)

                if actionType == 'macro' then
                    _, _, id = GetMacroSpell(id)
                    if id then key = 'spell:' .. id end
                elseif actionType == 'item' and id then
                    key = 'item:' .. id
                elseif actionType == 'spell' and id then
                    key = 'spell:' .. id
                else
                    key = nil
                    id = nil
                end

                if id and key then
                    session.actionBarMap[key] = {
                        button = barName .. 'Button' .. i,
                        slot = slot
                    }
                end
            end
        end
    end
end

function addon.tips:ACTIONBAR_SLOT_CHANGED() self:CatalogActionBars() end
