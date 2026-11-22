local addonName, addon = ...

local fmt = _G.string.format
local tinsert, tremove, next, wipe = _G.table.insert, _G.table.remove, _G.next, _G.wipe
local mmax, mmin, mrand = _G.math.max, _G.math.min, _G.math.random

local GetMacroInfo, CreateMacro, EditMacro, GetNumMacros, DeleteMacro = _G.GetMacroInfo, _G.CreateMacro, _G.EditMacro,
                                                                        _G.GetNumMacros, _G.DeleteMacro
local TargetUnit, UnitIsDead, UnitIsPlayer, UnitIsUnit = _G.TargetUnit, _G.UnitIsDead, _G.UnitIsPlayer, _G.UnitIsUnit
local UnitIsGroupLeader, IsInGroup, IsInRaid, UnitOnTaxi, InCombatLockdown = _G.UnitIsGroupLeader, _G.IsInGroup,
                                                                             _G.IsInRaid, _G.UnitOnTaxi,
                                                                             _G.InCombatLockdown
local GetRaidTargetIndex, SetRaidTarget = _G.GetRaidTargetIndex, _G.SetRaidTarget
local GetTime, FlashClientIcon, PlaySound = _G.GetTime, _G.FlashClientIcon, _G.PlaySound
local GetRealZoneText, GetNamePlates = _G.GetRealZoneText, _G.C_NamePlate.GetNamePlates
local HBD = _G.LibStub("HereBeDragons-2.0")
local AceGUI = _G.LibStub("AceGUI-3.0")

local GameTooltip = _G.GameTooltip

local L = addon.locale.Get

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"
addon.targeting.followMacroName = "RXPFollow"

local announcedTargets = {}
local macroTargets = {}
local lowPrioTargets = {}

local proxmityPolling = {
    frequency = 0.25,
    match = false,
    lastMatch = 0,
    matchTimeout = 5,
    scanData = {},
    scannedTargets = {},
    rareAnnounced = {}
}

local targetList = {}
local targetPlaceholder = 2056011 -- Ui_chat

local mobList = {}
local mobPlaceholder = 135274 -- Inv_sword_04

local unitscanList = {}

local rareTargets = {}

local pendingLeaderUpdate

local UnitName = addon.GetUnitName

function addon.targeting:ConfigureTargetButton(button, targetName, kind, index, marking, targetMacro)
    local macrotext = targetMacro or ("/cleartarget\n/targetexact " .. targetName)

    -- Retail/Forever cannot SetRaidTarget automatically, leverage button
    if not targetMacro and (addon.game == "FOREVER" or addon.gameVersion >= 120000) and marking then
        local markerIndex = self:GetMarkerIndex(kind, index)
        if markerIndex then
            -- Toggle Friendly markers
            -- Keep Mob/Unitscan markers
            -- >= 120000 requires ~N to prevent toggling
            -- Forever requires ~N to prevent toggling
            local markerPrefix = kind == "friendly" and "" or (addon.game == "FOREVER" and "!" or "~")
            macrotext = macrotext .. "\n/tm " .. markerPrefix .. markerIndex
        end
    end

    button:SetAttribute("type", "macro")
    button:SetAttribute("macrotext", macrotext)
end

function addon.targeting:Setup()
    if not addon.settings.profile.enableTargetMacro then DeleteMacro(self.macroName) end
    if not addon.settings.profile.createFollowMacro then DeleteMacro(self.followMacroName) end

    self:CreateTargetFrame()

    self:RegisterEvent("PLAYER_REGEN_ENABLED")

    -- Remove interacted target
    self:RegisterEvent("GOSSIP_SHOW")
    self:RegisterEvent("MERCHANT_SHOW")
    self:RegisterEvent("QUEST_PROGRESS")
    self:RegisterEvent("QUEST_GREETING")
    self:RegisterEvent("QUEST_COMPLETE")

    self:RegisterEvent("PLAYER_TARGET_CHANGED")
    self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")

    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("GROUP_ROSTER_UPDATE")
    self:RegisterEvent("PARTY_LEADER_CHANGED")

    if not addon.settings.profile.enableTargetAutomation then return end

    -- TODO toggle without reloads

    -- Only works when nameplates are enabled
    self:RegisterEvent("NAME_PLATE_UNIT_ADDED")

    -- If enabled, increase nameplate scanning distance to max allowed
    if addon.settings.profile.enableMaxNameplateDistance then
        if addon.gameVersion > 40000 then
            SetCVar("nameplateMaxDistance", "100")
        else
            SetCVar("nameplateMaxDistance", "41")
        end
    end

    if addon.settings.profile.showTargetingOnProximity then
        if addon.settings.profile and addon.settings.profile.updateFrequency then
            proxmityPolling.frequency = addon.settings.profile.updateFrequency / 2000
        end

        self.ticker = C_Timer.NewTicker(proxmityPolling.frequency, self.CheckTargetProximity)

        if StaticPopupDialogs["ADDON_ACTION_FORBIDDEN"] then
            -- Disables and mutes the annoying dialog that shows up
            local actionForbiddenText = fmt(ADDON_ACTION_FORBIDDEN, addonName)

            local ForbiddenTextBoxHook = function(this)
                local text = this.text or this.Text
                if text and text:GetText() == actionForbiddenText then
                    if this:IsShown() then this:Hide() end

                    local _, channel = PlaySound(SOUNDKIT.IG_MAINMENU_CLOSE)

                    if channel then
                        StopSound(channel)
                        StopSound(channel - 1)
                    end

                    StaticPopupDialogs["ADDON_ACTION_FORBIDDEN"] = nil
                end
            end

            _G.StaticPopup1:HookScript("OnShow", ForbiddenTextBoxHook)
            _G.StaticPopup1:HookScript("OnHide", ForbiddenTextBoxHook)
            _G.StaticPopup2:HookScript("OnShow", ForbiddenTextBoxHook)
            _G.StaticPopup2:HookScript("OnHide", ForbiddenTextBoxHook)

            self:RegisterEvent("ADDON_ACTION_FORBIDDEN")

            -- Prevent default forbidden UI popup
            UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")
        end
    end

    if addon.rares then
        self:LoadRares()
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    end
end

function addon.targeting.GetCurrentTargets() return targetList, mobList, unitscanList, rareTargets end

local function shouldTargetCheck()
    return not IsInRaid() and not UnitOnTaxi("player") and not addon.isCastingHS and
               (next(unitscanList) ~= nil or next(mobList) ~= nil or next(targetList) ~= nil or next(rareTargets) ~= nil or
                   next(proxmityPolling.scannedTargets) ~= nil)

end

local currentTargets = ""
local function AnnounceTargets()
    if not addon.settings.profile.notifyOnTargetUpdates then return end

    addon.comms.PrettyPrint(L("Targeting macro updated with:%s"), currentTargets)
end

function addon.targeting:UpdateMacro(queuedTargets)
    if not addon.settings.profile.enableTargetMacro then return end
    if not shouldTargetCheck() then return end

    if InCombatLockdown() then
        macroTargets = queuedTargets or macroTargets
        return
    end

    local targets = queuedTargets or {}

    if not GetMacroInfo(self.macroName) then
        if not self:CanCreateMacro() then return end

        CreateMacro(self.macroName, "Ability_eyeoftheowl", "")
    end

    for _, t in ipairs(unitscanList) do if not lowPrioTargets[t] then tinsert(targets, t) end end

    for _, t in ipairs(mobList) do if not lowPrioTargets[t] then tinsert(targets, t) end end

    for _, t in ipairs(targetList) do if not lowPrioTargets[t] then tinsert(targets, t) end end

    for t in pairs(lowPrioTargets) do tinsert(targets, t) end

    -- Removes duplicate entries:
    local npcNames = {}
    local t
    for i = #targets, 1, -1 do
        t = targets[i]

        if npcNames[t] then
            targets[i] = false
        else
            npcNames[t] = true
        end
    end

    local content
    local targetText = ""
    for n = #targets, 1, -1 do
        t = targets[n]

        if t then
            if content then
                content = fmt('%s\n/targetexact %s', content, t)
            else
                content = fmt('/targetexact %s', t)
            end
            -- Prevent multiple spams
            if not (announcedTargets[t] or lowPrioTargets[t]) and addon.settings.profile.notifyOnTargetUpdates then
                targetText = fmt("%s %s,", targetText, t)
            end

            announcedTargets[t] = true

            if #content > 255 then content = content:gsub("^\n?[^\n]*[\n]*", "") end
        end
    end

    if #targetText > 0 then
        currentTargets = targetText:sub(1, -2)
        addon.ScheduleTask(1.5, AnnounceTargets)
    end

    local maxMacroSize = 230
    local targetMarker = ""
    if WOW_PROJECT_ID == WOW_PROJECT_CAMELOT or WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        targetMarker = "\n/tm !7"
        maxMacroSize = 223
    end

    if content then
        while #content > maxMacroSize do content = content:gsub("^\n?[^\n]*[\n]*", "") end
        content = content .. targetMarker .. '\n/targetlasttarget [dead]'
    else
        content = fmt('//%s - %s', addon.title, L("current step has no configured targets")) -- TODO locale
    end

    EditMacro(self.macroName, self.macroName, nil, content)

    if not addon.settings.profile.macroAnnounced and addon.settings.profile.notifyOnTargetUpdates and next(targets) ~=
        nil then
        C_Timer.After(1, function()
            addon.comms.PrettyPrint(L(
                                        "A macro has been automatically built to aid in leveling. Please move %s to your action bars."),
                                    self.macroName)

        end)

        addon.settings.profile.macroAnnounced = true
    end

    macroTargets = {}
end

function addon.targeting:UpdateFollowMacro()
    if InCombatLockdown() then
        pendingLeaderUpdate = true

        return
    end

    pendingLeaderUpdate = nil

    if not addon.settings.profile.createFollowMacro then
        DeleteMacro(self.followMacroName)

        return
    end

    if IsInRaid() then
        if GetMacroInfo(self.followMacroName) then
            EditMacro(self.followMacroName, self.followMacroName, nil, "//" .. _G.ERR_QUEST_PUSH_NOT_IN_PARTY_S)
        end

        return
    end

    local partyLeaderId
    if IsInGroup() then _, partyLeaderId = addon.comms.grouping:GetPartyLeader() end

    if not GetMacroInfo(self.followMacroName) then
        if not self:CanCreateMacro() then return end

        CreateMacro(self.followMacroName, "Inv_boots_02", "")
    end

    if not IsInGroup() then
        EditMacro(self.followMacroName, self.followMacroName, nil, "//" .. _G.ERR_QUEST_PUSH_NOT_IN_PARTY_S)

        return
    end

    if not partyLeaderId or partyLeaderId == "player" then
        EditMacro(self.followMacroName, self.followMacroName, nil, "//" .. _G.PARTY_LEADER)

        return
    end

    EditMacro(self.followMacroName, self.followMacroName, nil,
              fmt('/target [@%s]\n/follow %s', partyLeaderId, partyLeaderId))
end

function addon.targeting:PLAYER_REGEN_ENABLED()
    if macroTargets then C_Timer.After(0.5, function() self:UpdateMacro(macroTargets) end) end

    self:UpdateTargetFrame()

    if pendingLeaderUpdate then self:UpdateFollowMacro() end
end

function addon.targeting:CheckNameplate(nameplateID)
    if not nameplateID then return end

    local unitName = UnitName(nameplateID)

    if not unitName then return end

    if addon.settings.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", nameplateID, i)
                end
            end
        end
    end

    if addon.settings.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.profile.enableMobMarking then self:UpdateMarker("mob", nameplateID, i) end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.profile.flashOnFind then FlashClientIcon() end

                if addon.settings.profile.enableTargetingFlash then addon.tips:EnableDangerWarning(1) end

                if addon.settings.profile.enableEnemyMarking then
                    self:UpdateMarker("unitscan", nameplateID, i)
                end
            end
        end
    end

    if addon.settings.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.profile.flashOnFind then FlashClientIcon() end

                if addon.settings.profile.enableTargetingFlash then addon.tips:EnableDangerWarning(1) end

                if addon.settings.profile.enableEnemyMarking then
                    -- Steal moon, lowest of enemies for mark
                    self:UpdateMarker("rare", nameplateID, 4)
                end
            end
        end
    end
end

function addon.targeting:CheckNameplates()
    local nameplatesArray = GetNamePlates()

    if not nameplatesArray then return end

    for _, nameplate in ipairs(nameplatesArray) do self:CheckNameplate(nameplate.namePlateUnitToken) end
end

function addon.targeting:UpdateFollowTarget()
    if addon.settings.profile.createFollowMacro then self:UpdateFollowMacro() end
    if addon.settings.profile.createFollowTarget then self:UpdateTargetFrame() end
end

function addon.targeting:PLAYER_ENTERING_WORLD()
    C_Timer.After(mrand(3), function() addon.targeting:UpdateFollowTarget() end)
end

function addon.targeting:GROUP_ROSTER_UPDATE() self:UpdateFollowTarget() end

function addon.targeting:PARTY_LEADER_CHANGED() self:UpdateFollowTarget() end

function addon.targeting:NAME_PLATE_UNIT_ADDED(_, nameplateID)
    if not nameplateID or not shouldTargetCheck() then return end

    self:CheckNameplate(nameplateID)
end

function addon.targeting:UPDATE_MOUSEOVER_UNIT()
    if not shouldTargetCheck() then return end

    local kind = "mouseover"
    local unitName = UnitName(kind)

    if not unitName then return end

    if addon.settings.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableTargetMarking then self:UpdateMarker("friendly", kind, i) end
            end
        end
    end

    if addon.settings.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableMobMarking then self:UpdateMarker("mob", kind, i) end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.flashOnFind then FlashClientIcon() end

                if addon.settings.profile.enableTargetingFlash then addon.tips:EnableDangerWarning(1) end

                if addon.settings.profile.enableEnemyMarking then self:UpdateMarker("unitscan", kind, i) end
            end
        end
    end

    if addon.settings.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.flashOnFind then FlashClientIcon() end

                if addon.settings.profile.enableTargetingFlash then addon.tips:EnableDangerWarning(1) end

                if addon.settings.profile.enableEnemyMarking then
                    -- Steal moon, lowest of enemies for mark
                    self:UpdateMarker("rare", kind, 4)
                end
            end
        end
    end
end

function addon.targeting:PLAYER_TARGET_CHANGED()
    if not shouldTargetCheck() then return end

    local kind = "target"
    local unitName = UnitName(kind)

    if not unitName then return end

    if addon.settings.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableTargetMarking then self:UpdateMarker("friendly", kind, i) end
            end
        end
    end

    if addon.settings.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableMobMarking then self:UpdateMarker("mob", kind, i) end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableEnemyMarking then self:UpdateMarker("unitscan", kind, i) end
            end
        end
    end

    if addon.settings.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.flashOnFind then FlashClientIcon() end

                if addon.settings.profile.enableTargetingFlash then addon.tips:EnableDangerWarning(1) end

                if addon.settings.profile.enableEnemyMarking then
                    -- Steal moon, lowest of enemies for mark
                    self:UpdateMarker("rare", kind, 4)
                end
            end
        end
    end
end

function addon.targeting:GOSSIP_SHOW()
    if not addon.settings.profile.enableFriendlyTargeting then return end
    local targetUnit = UnitName("target")
    if not targetUnit then return end

    local targetIndex
    for i, name in ipairs(targetList) do
        if name == targetUnit then
            targetIndex = i
            break
        end
    end

    if not targetIndex then return end

    tremove(targetList, targetIndex)
    self:UpdateTargetFrame("target")
    self:UpdateMacro()

    if addon.game == "FOREVER" or addon.gameVersion >= 120000 then return end
    local marker = GetRaidTargetIndex("target")
    if not marker or addon.IsSecretValue(marker) then return end
    SetRaidTarget("target", 0)
end

addon.targeting.MERCHANT_SHOW = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_PROGRESS = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_GREETING = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_COMPLETE = addon.targeting.GOSSIP_SHOW

function addon.targeting.CheckTargetProximity()
    if not shouldTargetCheck() or not addon.settings.profile.showTargetingOnProximity or not addon.unitscanEnabled then
        return
    end

    if addon.settings.profile.enableEnemyTargeting then
        for _, name in pairs(unitscanList) do
            proxmityPolling.scanData = {name = name, kind = 'unitscan'}
            TargetUnit(name, true)
        end

        for _, name in pairs(mobList) do
            proxmityPolling.scanData = {name = name, kind = 'mob'}
            TargetUnit(name, true)
        end
    end

    if addon.settings.profile.enableFriendlyTargeting then
        for _, name in pairs(targetList) do
            proxmityPolling.scanData = {name = name, kind = 'friendly'}
            TargetUnit(name, true)
        end
    end

    if addon.settings.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            proxmityPolling.scanData = {name = name, kind = 'rare'}
            TargetUnit(name, true)
        end
    end

    local now = GetTime()

    -- Unset match if >5s without a ADDON_ACTION_FORBIDDEN
    -- No hits, reset everything
    if proxmityPolling.match and now - proxmityPolling.lastMatch > proxmityPolling.matchTimeout then

        addon.comms.PrettyDebug("All match expired, resetting targets")

        proxmityPolling.match = false
        wipe(proxmityPolling.rareAnnounced)
        wipe(proxmityPolling.scannedTargets)
        if not InCombatLockdown() then addon.targeting.activeTargetWindow:Hide() end

        -- Full reset, so don't handle per-mob checks below
        return
    end

    for name, data in pairs(proxmityPolling.scannedTargets) do
        if now - data.lastMatch > proxmityPolling.matchTimeout then
            addon.comms.PrettyDebug("Individual match expired", name)

            proxmityPolling.scannedTargets[name] = nil
        end
    end
end

function addon.targeting:ADDON_ACTION_FORBIDDEN(_, forbiddenAddon, func)
    if func ~= "TargetUnit()" or forbiddenAddon ~= addonName then return end

    -- Unexpected call from (mistakenly) RXP
    if not proxmityPolling.scanData or not proxmityPolling.scanData.name then return end

    local scannedName = proxmityPolling.scanData.name
    local now = GetTime()

    proxmityPolling.scannedTargets[scannedName] = {kind = proxmityPolling.scanData.kind, lastMatch = now}
    proxmityPolling.lastMatch = now
    self:UpdateTargetFrame()

    if proxmityPolling.scanData.kind == 'rare' and addon.settings.profile.notifyOnRares and
        not proxmityPolling.rareAnnounced[scannedName] then

        proxmityPolling.rareAnnounced[scannedName] = true
        addon.comms.PrettyPrint(L("Rare Found! %s is nearby."), scannedName) -- TODO locale
    end

    -- Only notify sound once per step
    if proxmityPolling.match then return end

    proxmityPolling.match = true

    if addon.settings.profile.soundOnFind ~= "none" and
        (proxmityPolling.scanData.kind == 'rare' or proxmityPolling.scanData.kind == 'unitscan') then
        PlaySound(addon.settings.profile.soundOnFind, addon.settings.profile.soundOnFindChannel)
    end
end

function addon.targeting:UpdateUnitList()
    local stepUnitscan = {}
    local stepMobs = {}
    local stepTargets = {}

    local function AddUnits(element, stepU, stepM, stepT)
        if element.unitscan then
            for _, t in ipairs(element.unitscan) do tinsert(stepU, addon.GetCreatureName(t)) end
        end

        if element.mobs then for _, t in ipairs(element.mobs) do tinsert(stepM, addon.GetCreatureName(t)) end end

        if element.targets then
            for _, t in ipairs(element.targets) do tinsert(stepT, addon.GetCreatureName(t)) end
        end
    end

    for _, step in pairs(addon.RXPFrame.activeSteps) do
        for _, element in pairs(step.elements or {}) do AddUnits(element, stepUnitscan, stepMobs, stepTargets) end
    end

    local unitscanGenerated = {}
    local mobsGenerated = {}
    local targetsGenerated = {}
    for generatedKind, context in pairs(addon.generatedSteps) do
        -- Only include dangerousMobs in targeting if showTargetingOnProximity
        if generatedKind ~= "dangerousMobs" or addon.settings.profile.showTargetingOnProximity then
            for _, step in ipairs(context) do
                for _, element in ipairs(step.elements or {}) do
                    AddUnits(element, unitscanGenerated, mobsGenerated, targetsGenerated)
                end
            end
        end
    end

    -- Update targets for macro
    addon.targeting:UpdateEnemyList(stepUnitscan, stepMobs)
    addon.targeting:UpdateTargetList(stepTargets)

    addon.targeting:UpdateEnemyList(unitscanGenerated, mobsGenerated, true)
    addon.targeting:UpdateTargetList(targetsGenerated, true)

    -- Don't process new targets if targeting disabled
    if addon.settings.profile.enableTargetAutomation then addon.targeting:CheckNameplates() end
end

local function FilterList(list)
    local u = {}
    local name

    for i, unit in pairs(list) do
        if unit:sub(1, 1) == "*" then
            name = unit:sub(2, -1)
            u[i] = name
        end
    end

    local size = #list

    for n = size, 1, -1 do if u[n] then table.remove(list, n) end end

    for n = 1, size do
        name = u[n]
        if name then table.insert(list, name) end
    end
end

function addon.targeting:UpdateTargetList(targets, addEntries)
    FilterList(targets)

    if addEntries then
        local update, found

        for _, unit in ipairs(targets) do
            found = false

            for _, src in ipairs(targetList) do
                if src == unit then
                    found = true
                    break
                end
            end

            if not found then
                update = true
                lowPrioTargets[unit] = true

                tinsert(targetList, unit)
            end
        end

        if not update then return end
    elseif addEntries == false then
        table.wipe(lowPrioTargets)
        targetList = targets
    else
        targetList = targets
    end

    self:UpdateMacro()

    if not addon.settings.profile.enableTargetFrame then return end

    proxmityPolling.match = false
    proxmityPolling.lastMatch = 0
    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind == 'friendly' then proxmityPolling.scannedTargets[name] = nil end
        end
    end

    self:UpdateTargetFrame()
end

function addon.targeting:UpdateEnemyList(unitscan, mobs, addEntries)
    FilterList(unitscan)
    FilterList(mobs)

    if addEntries then
        local update, found

        for _, unit in ipairs(unitscan) do
            found = false

            for _, src in ipairs(unitscanList) do
                if src == unit then
                    found = true
                    break
                end
            end

            if not found then
                update = true
                tinsert(unitscanList, unit)
                lowPrioTargets[unit] = true
            end
        end

        for _, unit in ipairs(mobs) do
            found = false
            for _, src in ipairs(mobList) do
                if src == unit then
                    found = true
                    break
                end
            end
            if not found then
                tinsert(mobList, unit)
                update = true
                lowPrioTargets[unit] = true
            end
        end
        if not update then return end
    elseif addEntries == false then
        table.wipe(lowPrioTargets)
        unitscanList = unitscan
        mobList = mobs
    else
        unitscanList = unitscan
        mobList = mobs
    end

    self:UpdateMacro()

    if not addon.settings.profile.enableTargetFrame then return end

    proxmityPolling.match = false
    proxmityPolling.lastMatch = 0
    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind == 'unitscan' or data.kind == 'mob' then proxmityPolling.scannedTargets[name] = nil end
        end
    end

    self:UpdateTargetFrame()
end

function addon.targeting:CanCreateMacro(name)
    if name and GetMacroInfo(name) then return true end
    return GetNumMacros() < 119
end

function addon.targeting:CreateTargetFrame()
    -- Still create frame even if targeting disabled, for frame location preservation
    if self.activeTargetWindow then return end

    local window = AceGUI:Create("RXPV2MiniFrame")
    window.hideBackgroundSetting = "hideActiveTargetsBackground"
    self.activeTargetWindow = window
    _G.RXPTargetFrame = window.frame

    window:Hide()

    addon.enabledFrames["activeTargetFrame"] = window.frame
    window.frame.IsFeatureEnabled = function()
        if not addon.settings.profile.enableTargetFrame then return nil, true end
        if (self.activeTargetCount or 0) == 0 then return nil, true end
        if window.hasFollowTarget and addon.settings.profile.showEnabled then return true, true end

        if addon.settings.profile.showTargetingOnProximity then
            return proxmityPolling.match and shouldTargetCheck(), true
        end

        return shouldTargetCheck(), true
    end

    local function onMouseDown()
        if InCombatLockdown() then return end
        if addon.settings.profile.lockFrames and not IsAltKeyDown() then return end
        window:StartMoving()
    end

    local function onMouseUp()
        if InCombatLockdown() then return end
        window:StopMovingOrSizing()
        addon.settings:SaveFramePositions()
    end

    window.frame:SetScript("OnMouseDown", onMouseDown)
    window.frame:SetScript("OnMouseUp", onMouseUp)
    window.friendlyTargetButtons = {}
    window.enemyTargetButtons = {}

    window:SetPoint("CENTER", UIParent, "CENTER", 0, 0)

    window:UpdateTheme()
    window:SetTitle(L("Active Targets"))
    window.title:SetScript("OnMouseDown", onMouseDown)
    window.title:SetScript("OnMouseUp", onMouseUp)

    window:SetScale(addon.settings.profile.activeTargetScale or 1)
    window:SetHeight(40)
end

function addon.targeting:SetScale(scale)
    if self.activeTargetWindow then self.activeTargetWindow:SetScale(scale) end
end

local fOnEnter = function(self)
    if self:IsForbidden() or GameTooltip:IsForbidden() or not self.targetData then return end

    GameTooltip:ClearLines()
    GameTooltip:SetOwner(self, "ANCHOR_BOTTOM", 0, 0)

    if self.targetData.kind == "friendly" then
        GameTooltip:AddLine(self.targetData.name, 0, 1, 0)
    else
        GameTooltip:AddLine(self.targetData.name, 1, 0, 0)
    end

    GameTooltip:Show()
end

local fOnLeave = function(self)
    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then return end

    GameTooltip:Hide()
end

function addon.targeting:GetMarkerIndex(kind, kindIndex)
    local raidTargetIndex

    if IsInGroup() and addon.settings.profile.enableNonLeadMarking and addon.comms.state.group.hasRXP then
        -- Overwrite kindIndex if party, works best for 1-3 RXP members
        --- player: star and skull
        --- party1: circle and cross
        --- party2: diamond and square
        --- party3: triangle and skull
        --- party4: star and cross
        kindIndex = addon.comms.state.group.members[addon.player.name].markerIndex
    end

    -- kindIndex is always >= 1, but to preserve modulus do -1
    kindIndex = kindIndex - 1

    if kind == 'friendly' then
        -- Use star 1, circle 2, diamond 3, and triangle 4
        -- 0 % 4 = 0 + 1, 3 % 4 = 3 + 1, 4 % 4 = 0 + 1, 5 % 4 = 1 + 1
        raidTargetIndex = (kindIndex % 4) + 1
    elseif kind == 'unitscan' or kind == 'rare' then
        -- Use moon 5
        -- Use Moon for all party members
        raidTargetIndex = 5
    elseif kind == 'mob' then
        -- Use skull 8, cross 7, square 6
        -- 0 % 3 = 8 - 0, 2 % 3 = 8 - 2
        raidTargetIndex = 8 - (kindIndex % 3)
    end

    return raidTargetIndex
end

function addon.targeting:UpdateMarker(kind, unitId, index)
    if (UnitIsDead(unitId) and kind ~= 'friendly') or UnitIsPlayer(unitId) or UnitIsUnit(unitId, "pet") then return end

    if IsInGroup() and not UnitIsGroupLeader('player') then
        if not addon.settings.profile.enableNonLeadMarking then return end
    end
    if addon.game == "FOREVER" or addon.gameVersion >= 120000 then return end
    local markerId = self:GetMarkerIndex(kind, index)

    local currentMarker = GetRaidTargetIndex(unitId)
    if not addon.IsSecretValue(currentMarker) and currentMarker == nil and markerId then
        SetRaidTarget(unitId, markerId)
    end
end

addon.targeting.portraitCache = {}
addon.targeting.activeIcons = {}
local iconCounter = 0

local function GetIcon(unit)
    local texture = addon.targeting.portraitCache[unit]
    local time = GetTime()

    if not texture then
        if iconCounter < 30 then
            texture = addon.targeting.activeTargetWindow.frame:CreateTexture()
            iconCounter = iconCounter + 1
        else
            local lastActive = time
            local oldest
            local name

            for u, f in pairs(addon.targeting.portraitCache) do
                if f.lastActive < lastActive then
                    lastActive = f.lastActive
                    oldest = f
                    name = u
                end
            end

            addon.targeting.portraitCache[name] = nil
            texture = oldest
        end
    end

    addon.targeting.portraitCache[unit] = texture

    texture.unit = unit
    texture.lastActive = time

    return texture
end

local function GetUnitTexture(self, name, unit)
    local f = addon.targeting.portraitCache[name]

    if f and f.anchor then f.anchor:Show() end

    -- unit = unit or 'target'

    if unit and name and UnitName(unit) == name then
        f = GetIcon(name)

        SetPortraitTexture(f, unit)
    end

    if f then
        -- self.placeholder:Hide()
        f.anchor = self.placeholder

        addon.targeting.activeIcons[f] = true

        f:SetParent(self)
        f:SetAllPoints(self)
        f:Show()

        self.placeholder:Hide()
        self.icon = f

        return f
    else
        self.placeholder:Show()

        self.icon = self.placeholder

        return self.placeholder
    end
end

local buttonsPerRow = 4
local function GetTargetGridMetrics(count)
    return count > 0 and mmin(count, buttonsPerRow) * 27 + 10 or 0, ceil(count / buttonsPerRow)
end

local function RowifyTargets(btn, buttons, isEnemy)
    local count = #buttons
    if count == 1 then return end -- ResizeTargetsFrame anchors the first button.

    if (count - 1) % buttonsPerRow ~= 0 then
        btn:SetPoint("CENTER", buttons[count - 1], "CENTER", 27, 0)
    elseif isEnemy then
        btn:SetPoint("TOP", buttons[count - buttonsPerRow], "BOTTOM", 0, 0)
    else
        btn:SetPoint("BOTTOM", buttons[count - buttonsPerRow], "TOP", 0, 0)
    end
end

local function ResizeTargetsFrame(window, friendlyCount, enemyCount)
    local enemyWidth, enemyRows = GetTargetGridMetrics(enemyCount)
    local friendlyWidth, friendlyRows = GetTargetGridMetrics(friendlyCount)
    local soloFriendlyRow = enemyRows == 0 and friendlyRows == 1

    window:SetWidth(mmax(window.title:GetWidth() + 10, friendlyWidth, enemyWidth))
    window:SetHeight(18 + (enemyRows + friendlyRows) * 25 + (enemyRows > 0 and friendlyRows > 0 and 5 or 0))

    if enemyRows > 0 then
        local firstEnemyButton = window.enemyTargetButtons[1]
        firstEnemyButton:ClearAllPoints()
        firstEnemyButton:SetPoint("TOPLEFT", window.frame, "TOPLEFT", 6, -15)
    end

    if friendlyRows > 0 then
        local firstFriendlyButton = window.friendlyTargetButtons[1]
        firstFriendlyButton:ClearAllPoints()
        firstFriendlyButton:SetPoint("BOTTOMLEFT", window.frame, "BOTTOMLEFT", 6, soloFriendlyRow and 4 or 6)
    end
end

function addon.targeting:UpdateTargetFrame(selector)
    if not self.activeTargetWindow then return end

    if not addon.settings.profile.enableTargetFrame then
        if not InCombatLockdown() then self.activeTargetWindow:Hide() end

        return
    end

    if InCombatLockdown() then return end

    local partyLeader, partyLeaderId
    if addon.settings.profile.createFollowTarget then
        partyLeader, partyLeaderId = addon.comms.grouping:GetPartyLeader()
        if partyLeaderId == "player" then partyLeader, partyLeaderId = nil, nil end
    end
    local followMacro = partyLeader and fmt("/cleartarget\n/target [@%s]\n/follow %s", partyLeaderId, partyLeaderId)
    self.activeTargetWindow.hasFollowTarget = partyLeader ~= nil

    local enemyTargetButtonIndex = 0
    local enemiesList = {}

    if not addon.settings.profile.showTargetingOnProximity then
        -- If proximity disabled, show all
        for _, n in ipairs(unitscanList) do enemiesList[n] = 'unitscan' end

        for _, n in ipairs(mobList) do enemiesList[n] = 'mob' end
    end

    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind ~= 'friendly' then
                -- enemies row contains: unitscan, mob, and rare
                enemiesList[name] = data.kind
            end
        end
    end

    for frame in pairs(addon.targeting.activeIcons) do
        frame:Hide()

        if frame.anchor then
            frame.anchor:Show()
            frame.anchor = nil
        end
    end

    table.wipe(addon.targeting.activeIcons)

    local btn, icon, ht
    for targetName, enemyKind in pairs(enemiesList) do

        enemyTargetButtonIndex = enemyTargetButtonIndex + 1
        btn = self.activeTargetWindow.enemyTargetButtons[enemyTargetButtonIndex]

        if not btn then
            btn = CreateFrame("Button", "RXPTargetFrame_EnemyButton" .. enemyTargetButtonIndex, self.activeTargetWindow.frame,
                              "SecureActionButtonTemplate")

            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)

            if btn.RegisterForClicks then btn:RegisterForClicks("AnyUp", "AnyDown") end

            tinsert(self.activeTargetWindow.enemyTargetButtons, btn)

            RowifyTargets(btn, self.activeTargetWindow.enemyTargetButtons, true)

            btn.icon = btn:CreateTexture(nil, "BACKGROUND")
            btn.placeholder = btn.icon
            btn.placeholder.isDefault = true
            btn.GetUnitTexture = GetUnitTexture

            icon = btn.icon

            icon.isDefault = true
            icon:SetAllPoints(true)
            icon:SetTexture(mobPlaceholder)

            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            ht = btn:CreateTexture(nil, "HIGHLIGHT")

            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        self:ConfigureTargetButton(btn, targetName, enemyKind, enemyTargetButtonIndex,
                                   addon.settings.profile.enableEnemyMarking)

        if btn.targetData and btn.targetData.name ~= targetName then
            btn.placeholder:SetTexture(mobPlaceholder)
            btn.placeholder.isDefault = true
        end

        btn:GetUnitTexture(targetName, selector)
        btn.targetData = {name = targetName, kind = enemyKind}

        -- If target or mouseover, set portrait
        if selector and UnitName(selector) == targetName and btn.icon.isDefault then
            SetPortraitTexture(btn.placeholder, selector)
            btn.placeholder.isDefault = false
        end

        btn:Show()
    end

    local friendlyTargetButtonIndex = 0
    local friendlyList = addon.settings.profile.showTargetingOnProximity and {} or targetList

    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind == 'friendly' then tinsert(friendlyList, name) end
        end
    elseif partyLeader then
        friendlyList = {}
        for _, name in ipairs(targetList) do tinsert(friendlyList, name) end
    end

    if partyLeader then
        for index, name in ipairs(friendlyList) do
            if name == partyLeader then
                tremove(friendlyList, index)
                break
            end
        end
        tinsert(friendlyList, 1, partyLeader)
    end

    local isLeaderTarget
    for _, targetName in ipairs(friendlyList) do
        friendlyTargetButtonIndex = friendlyTargetButtonIndex + 1
        btn = self.activeTargetWindow.friendlyTargetButtons[friendlyTargetButtonIndex]

        if not btn then
            btn = CreateFrame("Button", "RXPTargetFrame_FriendlyButton" .. friendlyTargetButtonIndex, self.activeTargetWindow.frame,
                              "SecureActionButtonTemplate")
            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)

            if btn.RegisterForClicks then btn:RegisterForClicks("AnyUp", "AnyDown") end

            tinsert(self.activeTargetWindow.friendlyTargetButtons, btn)

            RowifyTargets(btn, self.activeTargetWindow.friendlyTargetButtons, false)

            btn.icon = btn:CreateTexture(nil, "BACKGROUND")

            icon = btn.icon

            btn.placeholder = icon

            icon.isDefault = true
            icon:SetAllPoints(true)
            icon:SetTexture(targetPlaceholder)

            btn.GetUnitTexture = GetUnitTexture
            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            ht = btn:CreateTexture(nil, "HIGHLIGHT")

            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        isLeaderTarget = partyLeader and targetName == partyLeader
        self:ConfigureTargetButton(btn, targetName, "friendly", friendlyTargetButtonIndex,
                                   addon.settings.profile.enableTargetMarking and not isLeaderTarget,
                                   isLeaderTarget and followMacro)

        if btn.targetData and btn.targetData.name ~= targetName then
            btn.placeholder:SetTexture(targetPlaceholder)
            btn.placeholder.isDefault = true
        end

        btn:GetUnitTexture(targetName, isLeaderTarget and partyLeaderId or selector)

        btn.targetData = {name = targetName, kind = "friendly"}

        -- If target or mouseover, set portrait
        if selector and btn.placeholder.isDefault and UnitName(selector) == targetName then
            SetPortraitTexture(btn.placeholder, selector)
            btn.placeholder.isDefault = false
        end

        btn:Show()
    end

    if friendlyTargetButtonIndex > 0 or enemyTargetButtonIndex > 0 then self.activeTargetWindow:SetAlpha(1) end

    for f = friendlyTargetButtonIndex + 1, #self.activeTargetWindow.friendlyTargetButtons do
        self.activeTargetWindow.friendlyTargetButtons[f]:Hide()
        self.activeTargetWindow.friendlyTargetButtons[f].placeholder:SetTexture(targetPlaceholder)
        self.activeTargetWindow.friendlyTargetButtons[f].icon.isDefault = true
    end

    for e = enemyTargetButtonIndex + 1, #self.activeTargetWindow.enemyTargetButtons do
        self.activeTargetWindow.enemyTargetButtons[e]:Hide()
        self.activeTargetWindow.enemyTargetButtons[e].placeholder:SetTexture(mobPlaceholder)
        self.activeTargetWindow.enemyTargetButtons[e].icon.isDefault = true
    end

    self.activeTargetCount = friendlyTargetButtonIndex + enemyTargetButtonIndex

    ResizeTargetsFrame(self.activeTargetWindow, friendlyTargetButtonIndex, enemyTargetButtonIndex)

    if (friendlyTargetButtonIndex == 0 and enemyTargetButtonIndex == 0) or not addon.settings.profile.showEnabled then
        self.activeTargetWindow:Hide()
    elseif addon.settings.profile.showTargetingOnProximity then
        if proxmityPolling.match or self.activeTargetWindow.hasFollowTarget then
            self.activeTargetWindow:Show()
        else
            self.activeTargetWindow:Hide()
        end
    else
        self.activeTargetWindow:Show()
    end
end

function addon.targeting:ZONE_CHANGED_NEW_AREA() self:LoadRares() end

function addon.targeting:LoadRares()
    if not addon.settings.profile.scanForRares or not addon.settings.profile.showTargetingOnProximity or
        not addon.settings.profile.enableTargetFrame or not addon.rares then return end

    -- Reset found rares
    for name, data in pairs(proxmityPolling.scannedTargets) do
        if data.kind == 'rare' then proxmityPolling.scannedTargets[name] = nil end
    end

    local zoneID = HBD:GetPlayerZone()
    local zoneName = ""

    for name, id in pairs(addon.mapId) do
        if id == zoneID then
            zoneName = name
            break
        end
    end

    local zone = GetRealZoneText()
    local subzone = GetSubZoneText()

    if not zoneID then return end
    rareTargets = addon.rares[subzone] or addon.rares[zone] or addon.rares[zoneID] or addon.rares[zoneName] or {}

    self:UpdateTargetFrame()
end

function addon.ResetTargetPosition()
    local f = _G.RXPTargetFrame

    f:ClearAllPoints()
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
end
