local _, addon = ...

if addon.gameVersion > 60000 then return end

local GetItemInfo = C_Item and C_Item.GetItemInfo or _G.GetItemInfo
local GetSpellInfo = C_Spell and C_Spell.GetSpellInfo and addon.GetSpellInfo or _G.GetSpellInfo
local GetSpellTexture = C_Spell and C_Spell.GetSpellTexture or _G.GetSpellTexture
local GetSpellSubtext = C_Spell and C_Spell.GetSpellSubtext or _G.GetSpellSubtext
local IsCurrentSpell = C_Spell and C_Spell.IsCurrentSpell or _G.IsCurrentSpell
local IsSpellKnown = C_Spell and C_Spell.IsSpellKnown or _G.IsSpellKnown
local IsPlayerSpell = C_Spell and C_Spell.IsPlayerSpell or _G.IsPlayerSpell
local GetTime, GetMirrorTimerProgress = _G.GetTime, _G.GetMirrorTimerProgress
local UnitHealth, UnitHealthMax = UnitHealth, UnitHealthMax
local GetInventoryItemID, IsPlayerSpell = GetInventoryItemID, IsPlayerSpell
local HasAction, GetActionInfo, GetMacroSpell = HasAction, GetActionInfo, GetMacroSpell
local IsOnBarOrSpecialBar = C_ActionBar.IsOnBarOrSpecialBar
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or _G.GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or _G.GetContainerItemID
local tinsert, fmt = tinsert, string.format
local GetRealZoneText = GetRealZoneText
local UIErrorsFrame = _G.UIErrorsFrame
local STRING_ENVIRONMENTAL_DAMAGE_DROWNING = _G.STRING_ENVIRONMENTAL_DAMAGE_DROWNING

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
    actionBarMap = {},
    dangerousMobs = {}
}

function addon.tips:Setup()
    if not addon.settings.profile.enableTips then return end

    self:CreateTipsFrame()
    self:CreateDangerWarning()

    self:RegisterEvent("MIRROR_TIMER_START")
    self:RegisterEvent("MIRROR_TIMER_STOP")

    self:CatalogInventory()

    self:RegisterEvent("PLAYER_STARTED_MOVING")
    self:UpdateEmergencySpells()

    self:CatalogActionBars()
    self:RegisterEvent("ACTIONBAR_SLOT_CHANGED")

    WorldFrame:HookScript("OnUpdate", self.CheckEvents)

    if addon.dangerousMobs then
        self:LoadDangerousMobs()
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    end
end

function addon.tips:PLAYER_STARTED_MOVING()
    -- Spams at login, so delay until after player moves
    self:RegisterEvent("UNIT_INVENTORY_CHANGED")

    self:UnregisterEvent("PLAYER_STARTED_MOVING")
end

function addon.tips:CreateTipsFrame()
    if not addon.settings.profile.enableTipsFrame then return end
    -- TODO
end

function addon.tips:MIRROR_TIMER_START(_, timerName, value, maxValue, rate)
    if timerName ~= "BREATH" or not addon.settings.profile.enableDrowningWarning then return end

    -- Recovering breath
    if rate > 0 then
        session.breath = nil
        return
    end

    -- Draining down, event fires with 30 when regaining breath
    session.breath = {value = value, maxValue = maxValue}
end

function addon.tips:MIRROR_TIMER_STOP(_, timerName)
    if timerName ~= "BREATH" or not addon.settings.profile.enableDrowningWarning then return end

    session.breath = nil
end

function addon.tips.CheckEvents()
    if not addon.settings.profile.enableTips then return end

    if GetTime() - session.checkLast <= session.checkFrequency then return end

    if session.breath then
        session.breath.value = GetMirrorTimerProgress("BREATH")

        if session.breath.value == 0 or (session.breath.value / session.breath.maxValue) <
            addon.settings.profile.drowningThreshold then

            if GetTime() - session.lastAlert > session.alertFrequency then
                if addon.settings.profile.enableDrowningScreenFlash then
                    addon.tips:EnableDangerWarning(2)
                end
                FlashClientIcon()
                UIErrorsFrame:AddMessage(STRING_ENVIRONMENTAL_DAMAGE_DROWNING, 1.0, 0.1, 0.1, session.alertFrequency);

                if addon.settings.profile.enableDrowningWarningSound then
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
    if not addon.settings.profile.enableEmergencyActions then return end
    local maxHP = UnitHealthMax("player")
    if maxHP > 0 and UnitHealth("player") / maxHP < addon.settings.profile.emergencyThreshold then

        addon.tips:HighlightEmergencyItem()
        addon.tips:HighlightEmergencySpell()

        if addon.settings.profile.enableEmergencyScreenFlash then addon.tips:EnableDangerWarning(1) end
        return
    end

    for _, border in pairs(session.highlights) do if border:IsShown() then border:Hide() end end

end

function addon.tips:CatalogInventory()
    if not addon.emergencyItems or not addon.settings.profile.enableEmergencyActions then return end
    local itemList = {}

    local itemName, itemTexture, id

    for i = 1, _G.INVSLOT_LAST_EQUIPPED do
        id = GetInventoryItemID("player", i)
        if id and addon.emergencyItems[id] then
            itemName, _, _, _, _, _, _, _, _, itemTexture, _, _ = GetItemInfo(id)
            tinsert(itemList, {name = itemName, texture = itemTexture, invSlot = i, id = id})
        end
    end

    local bagSlots
    for bag = _G.BACKPACK_CONTAINER, _G.NUM_BAG_FRAMES do
        bagSlots = GetContainerNumSlots(bag)
        for slot = 1, bagSlots do
            id = GetContainerItemID(bag, slot)
            if id and addon.emergencyItems[id] then
                itemName, _, _, _, _, _, _, _, _, itemTexture, _, _ = GetItemInfo(id)

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
    if not addon.emergencySpells or not addon.settings.profile.enableEmergencyActions then return end

    local spellList = {}

    local name, icon

    for spellId in pairs(addon.emergencySpells.professions or {}) do
        -- Only add spells on action bars
        if IsPlayerSpell(spellId) and IsOnBarOrSpecialBar(spellId) then
            name, _, icon = GetSpellInfo(spellId)
            tinsert(spellList, {name = name, texture = icon, spell = true, id = spellId})
        end
    end

    if addon.emergencySpells[addon.player.race] then
        for spellId in pairs(addon.emergencySpells[addon.player.race]) do
            -- Only add spells on action bars
            if IsPlayerSpell(spellId) and IsOnBarOrSpecialBar(spellId) then
                name, _, icon = GetSpellInfo(spellId)
                tinsert(spellList, {name = name, texture = icon, spell = true, id = spellId})
            end
        end
    end

    if addon.emergencySpells[addon.player.class] then
        for spellId in pairs(addon.emergencySpells[addon.player.class]) do
            -- Only add spells on action bars
            if IsPlayerSpell(spellId) and IsOnBarOrSpecialBar(spellId) then
                name, _, icon = GetSpellInfo(spellId)
                tinsert(spellList, {name = name, texture = icon, spell = true, id = spellId})
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
        bagBorder = item.bag and item.bagSlotFrameId and
                        addon.tips:GetHighlight(fmt('ContainerFrame%sItem%s', item.bag + 1, item.bagSlotFrameId))

        if bagBorder then
            if _G.IsBagOpen(item.bag) then
                bagBorder:Show()
                if addon.settings.profile.enableEmergencyIconAnimations and not bagBorder.animation:IsPlaying() then
                    bagBorder.animation:Play()
                end
            else
                bagBorder:Hide()
            end
        end

        actionBarLookup = item.id and session.actionBarMap['item:' .. item.id]
        if actionBarLookup then
            actionBarBorder = addon.tips:GetHighlight(actionBarLookup.button)

            if actionBarBorder then
                actionBarBorder:Show()
                if addon.settings.profile.enableEmergencyIconAnimations and not actionBarBorder.animation:IsPlaying() then
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
                if addon.settings.profile.enableEmergencyIconAnimations and not actionBarBorder.animation:IsPlaying() then
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
local ActionBars = {'Action', 'MultiBarBottomLeft', 'MultiBarBottomRight', 'MultiBarRight', 'MultiBarLeft'}

function addon.tips:CatalogActionBars()
    session.actionBarMap = {}

    local button, slot, actionType, id, key

    for _, barName in pairs(ActionBars) do
        for i = 1, 12 do
            button = _G[barName .. 'Button' .. i]
            slot = _G.ActionButton_GetPagedID(button) or _G.ActionButton_CalculateAction(button) or
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
                    session.actionBarMap[key] = {button = barName .. 'Button' .. i, slot = slot}
                end
            end
        end
    end
end

function addon.tips:ACTIONBAR_SLOT_CHANGED() self:CatalogActionBars() end

function addon.tips:CreateDangerWarning()
    if self.dangerWarning then return end

    local f = CreateFrame("Frame", "RXPDangerFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
    f:SetFrameStrata("FULLSCREEN_DIALOG")

    f:SetPoint('CENTER', UIParent, 'CENTER', 0, 1)
    f:SetAllPoints(nil)
    f.bg = f:CreateTexture(nil, 'BACKGROUND')
    f.bg:SetTexture("Interface\\FullScreenTextures\\LowHealth")
    f.bg:SetBlendMode('ADD')
    f.bg:SetAllPoints(nil)

    f.animation = f:CreateAnimationGroup()
    f.animation:SetLooping("BOUNCE")
    f.animation.pulse = f.animation:CreateAnimation("Alpha")
    f.animation.pulse:SetDuration(0.5236)
    f.animation.pulse:SetFromAlpha(0.75)
    f.animation.pulse:SetToAlpha(0.2)

    f:Hide()

    f.animation:HookScript("OnLoop", function()
        if f.doLoops < 0 then
            f:Hide()
            f.animation:Stop()
        end

        f.doLoops = f.doLoops - 1
    end)

    self.dangerWarning = f
end

function addon.tips:EnableDangerWarning(loops)
    if not self.dangerWarning or tonumber(loops) == nil then return end

    if loops > 0 then
        self.dangerWarning.doLoops = loops
        if not self.dangerWarning.animation:IsPlaying() then self.dangerWarning.animation:Play() end
        self.dangerWarning:Show()
    end
end

local function IsStepActive(self)
    local levelBuffer = 1000
    local profile = addon.settings.profile
    local active
    if addon.gameVersion < 20000 then
        active = profile.showDangerousMobsMap
    else
        active = profile.showRares and self.rare or profile.showTreasures and self.treasure
    end
    if (not active and self.mapTooltip) or (self.isUnitscan and not profile.showDangerousUnitscan) then
        -- DevTools_Dump(self.elements[1].unitscan)
        -- DevTools_Dump(self.elements[1].targets)
        return false
    elseif not profile.debug and self.levelBuffer then
        levelBuffer = self.levelBuffer or 0
    end
    if not self.MaxLevel or self.MaxLevel >= UnitLevel("player") - levelBuffer then return true end
end

function addon.tips:LoadDangerousMobs(reloadData)
    if not (addon.dangerousMobs) then return end

    local mapId = C_Map.GetBestMapForUnit("player") or 0
    local zone = addon.mapIdToName and addon.mapIdToName[mapId] or GetRealZoneText()
    local zoneList
    addon.UpdateMap()
    if not zone or not addon.dangerousMobs[zone] then zone = mapId end
    -- print(zone,addon.dangerousMobs[zone])
    if not addon.dangerousMobs[zone] and not addon.settings.profile.debug then
        addon.tips.dangerousMobs = nil
        addon.generatedSteps["dangerousMobs"] = nil
        return
    end
    local dangerousMobs = session.dangerousMobs[zone] or {}
    session.dangerousMobs[zone] = dangerousMobs
    zoneList = zoneList or {addon.dangerousMobs[zone]}

    -- dangerousMobs DB has nested objects, flatten and fake step data
    if not dangerousMobs.processed or reloadData == true then
        addon.currentGuideName = "Addon Tips"
        local steps = {}
        for _, zoneData in pairs(zoneList) do
            for name, list in pairs(zoneData) do
                for _, mobData in ipairs(list) do
                    if not mobData.applies or addon.applies(mobData.applies) then
                        if type(name) == "number" then
                            name = fmt("npc:%s:%d", mobData.Name or "", name)
                        end
                        -- added a semicolon separator in case the database entry has multiple coords
                        for line in mobData.Location:gmatch("[^\r\n;]+") do
                            line:gsub("^%s+", "")
                            line:gsub("%s+$", "")
                            local element = addon.ParseLine(line)
                            local skip
                            if element then
                                local step = {}
                                if element.tag == "rare" then step.rare = true end
                                if element.tag == "treasure" then step.treasure = true end
                                element.step = step
                                -- element.drawCenterPoint = true--Adds an icon at the center of the lines
                                step.isActive = IsStepActive
                                step.levelBuffer = mobData.Classification == "Normal" and 1 or 3
                                if element.wx or element.segments then
                                    -- step.linethickness = 2
                                    step.showTooltip = true -- Shows tooltip when hovering over a line
                                    step.icon = mobData.Icon or "|TInterface/GossipFrame/BattleMasterGossipIcon:0|t" -- texture used for the icon
                                    step.alternateIcon = mobData.AltIcon
                                    local prefix = ""

                                    if addon.gameVersion < 20000 then
                                        prefix = _G.VOICEMACRO_1_Sc_0
                                        step.mapTooltip = fmt("%s %s (%d)", prefix, name, mobData.MaxLevel) -- Tooltip title
                                    else
                                        step.mapTooltip = name -- Tooltip title
                                    end

                                    -- Tooltip description:
                                    if mobData.Movement then
                                        element.mapTooltip =
                                            fmt("%s - %s\n%s", mobData.Classification or "", mobData.Movement or "",
                                                mobData.Notes or "")
                                    else
                                        element.mapTooltip =
                                            fmt("%s\n%s", mobData.Classification or "", mobData.Notes or "")
                                    end
                                elseif element.targets or element.unitscan or element.mobs then
                                    if not addon.settings.profile.showDangerousUnitscan then
                                        skip = true
                                        -- DevTools_Dump(self.elements[1].mobs)
                                    end
                                    step.isUnitscan = true
                                end
                                if not skip then
                                    step.hideMinimap = true
                                    step.elements = {element}
                                    tinsert(steps, step)
                                end
                            end
                        end
                    end
                end
            end
        end
        addon.currentGuideName = nil
        dangerousMobs.steps = steps
        addon:ScheduleTask(addon.RegisterGeneratedSteps)
    end

    addon.generatedSteps["dangerousMobs"] = dangerousMobs.steps
    dangerousMobs.processed = true
    addon.tips.dangerousMobs = dangerousMobs
end

addon.tips.ZONE_CHANGED_NEW_AREA = addon.tips.LoadDangerousMobs
