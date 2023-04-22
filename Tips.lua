local _, addon = ...

if addon.gameVersion > 40000 then return end

local GetTime, GetMirrorTimerProgress = _G.GetTime, _G.GetMirrorTimerProgress
local UnitHealth, UnitHealthMax = UnitHealth, UnitHealthMax
local GetItemInfo, GetInventoryItemID, IsPlayerSpell = GetItemInfo,
                                                       GetInventoryItemID,
                                                       IsPlayerSpell
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
    highlights = {}
}

function addon.tips:Setup()
    if not addon.settings.db.profile.enableTips then return end

    addon.tips:CreateTipsFrame()

    self:RegisterEvent("MIRROR_TIMER_START")
    self:RegisterEvent("MIRROR_TIMER_STOP")

    self:RegisterEvent("UNIT_INVENTORY_CHANGED")

    self:CatalogInventory()
    self:UpdateEmergencySpells()

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
        return
    end

    for _, border in pairs(session.highlights) do
        if border:IsShown() then border:Hide() end
    end

end

function addon.tips:CatalogInventory()
    local itemList = {}

    local itemName, itemTexture, id

    -- Maybe just check trinkets?
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
                    slotFrameId = bagSlots + 1 - slot
                })
            end
        end
    end

    session.emergencyItems = itemList
end

function addon.tips:UpdateEmergencySpells()
    local spellList = {}

    for spellId in pairs(addon.emergencySpells.professions) do
        if IsPlayerSpell(spellId) then
            local name, _, icon = GetSpellInfo(spellId)
            tinsert(spellList,
                    {name = name, texture = icon, spell = true, id = spellId})
        end
    end

    if addon.emergencySpells[addon.player.race] then
        for spellId in pairs(addon.emergencySpells[addon.player.race]) do
            if IsPlayerSpell(spellId) then
                local name, _, icon = GetSpellInfo(spellId)
                tinsert(spellList, {
                    name = name,
                    texture = icon,
                    spell = true,
                    id = spellId
                })

                -- TODO action bar
            end
        end
    end

    if addon.emergencySpells[addon.player.class] then
        for spellId in pairs(addon.emergencySpells[addon.player.class]) do
            if IsPlayerSpell(spellId) then
                local name, _, icon = GetSpellInfo(spellId)
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

function addon.tips:GetItemBorder(name)
    if not name then return end

    if session.highlights[name] then return session.highlights[name] end

    local parent = _G[name]

    -- print("GetItemBorder", name)
    local border = parent:CreateTexture(name .. 'Emergency', 'OVERLAY')

    -- TODO spinning animation
    border:SetTexture("Interface/Buttons/UI-ActionButton-Border")
    border:SetBlendMode('ADD')
    border:SetAlpha(1)
    border:SetSize(68, 68)
    border:SetPoint('CENTER', parent, 'CENTER', 0, 1)
    border:Hide()

    session.highlights[name] = border

    return border
end

function addon.tips:HighlightEmergencyItem()
    local border

    for _, item in ipairs(session.emergencyItems) do
        border = addon.tips:GetItemBorder(
                     fmt('ContainerFrame%sItem%s', item.bag + 1,
                         item.slotFrameId))

        if border then
            if _G.IsBagOpen(item.bag) then
                print("border:Show()", item.name)
                border:Show()
            else
                border:Hide()
            end
        end
    end

end

function addon.tips:UNIT_INVENTORY_CHANGED(_, target)
    if target ~= "player" then return end

    -- Blasts at login
    -- TODO throttle
    print("UNIT_INVENTORY_CHANGED", target)
    self:CatalogInventory()
end

function addon.tips:BAG_NEW_ITEMS_UPDATED()
    print("BAG_NEW_ITEMS_UPDATED")
    self:CatalogInventory()
end
