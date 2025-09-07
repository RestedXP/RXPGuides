local addonName, addon = ...

local fmt, tinsert, tremove, mmax = string.format, table.insert, table.remove,
                                    math.max
local GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros =
    GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros
local TargetUnit, UnitName, next, IsInRaid, UnitIsDead, UnitIsGroupLeader,
      IsInGroup, UnitOnTaxi, UnitIsPlayer, UnitIsUnit = TargetUnit, UnitName,
                                                        next, IsInRaid,
                                                        UnitIsDead,
                                                        UnitIsGroupLeader,
                                                        IsInGroup, UnitOnTaxi,
                                                        UnitIsPlayer, UnitIsUnit
local GetRaidTargetIndex, SetRaidTarget = GetRaidTargetIndex, SetRaidTarget
local GetTime, FlashClientIcon, PlaySound = GetTime, FlashClientIcon, PlaySound
local wipe = wipe
local GetRealZoneText = GetRealZoneText
local GetNamePlates = C_NamePlate.GetNamePlates

local HBD = LibStub("HereBeDragons-2.0")

local GameTooltip = _G.GameTooltip

local L = addon.locale.Get

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"

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
local targetPlaceholder = 132150
local targetIcons = {
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_4.blp", -- Triangle
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_3.blp", -- Diamond
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_1.blp", -- Star
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_2.blp" -- Circle
}

local mobList = {}
local mobPlaceholder = 14144
local mobIcons = {
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_8.blp", -- Skull
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_7.blp", -- Cross
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_6.blp" -- Square
}

local unitscanList = {}
local unitscanPlaceholder = 132212
local unitscanIcons = {
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_5.blp" -- Moon
}

local rareTargets = {}

function addon.targeting:Setup()
    if not addon.settings.profile.enableTargetMacro then
        DeleteMacro(self.macroName)
    end

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

    if not addon.settings.profile.enableTargetAutomation then return end

    -- TODO toggle without reloads

    -- Only works when nameplates are enabled
    self:RegisterEvent("NAME_PLATE_UNIT_ADDED")

    -- Increase nameplate scanning distance to max allowed
    if addon.gameVersion > 40000 then
        SetCVar("nameplateMaxDistance", "100")
    else
        SetCVar("nameplateMaxDistance", "41")
    end

    if addon.settings.profile.showTargetingOnProximity then
        if addon.settings.profile and addon.settings.profile.updateFrequency then
            proxmityPolling.frequency = addon.settings.profile.updateFrequency / 2000
        end

        self.ticker = C_Timer.NewTicker(proxmityPolling.frequency, self.CheckTargetProximity)

        self:RegisterEvent("ADDON_ACTION_FORBIDDEN")

        -- Prevent default forbidden UI popup
        UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")
    end

    if addon.rares then
        self:LoadRares()
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    end
end

local function shouldTargetCheck()
    return not IsInRaid() and not UnitOnTaxi("player") and not addon.isCastingHS and
               (next(unitscanList) ~= nil or next(mobList) ~= nil or
                   next(targetList) ~= nil or next(rareTargets) ~= nil or
                   next(proxmityPolling.scannedTargets) ~= nil)

end


local currentTargets = ""
local function AnnounceTargets()
    if addon.settings.profile.notifyOnTargetUpdates then
        addon.comms.PrettyPrint(L("Targeting macro updated with:%s"),currentTargets)
    end
end

function addon.targeting:UpdateMacro(queuedTargets)
    -- TODO add rare targets
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

    for _, t in ipairs(unitscanList) do
        if not lowPrioTargets[t] then tinsert(targets, t) end
    end

    for _, t in ipairs(mobList) do
        if not lowPrioTargets[t] then tinsert(targets, t) end
    end

    for _, t in ipairs(targetList) do
        if not lowPrioTargets[t] then tinsert(targets, t) end
    end

    for t in pairs(lowPrioTargets) do tinsert(targets, t) end

    -- Removes duplicate entries:
    local npcNames = {}
    for i = #targets, 1, -1 do
        local t = targets[i]
        if npcNames[t] then
            targets[i] = false
        else
            npcNames[t] = true
        end
    end

    local content
    local targetText = ""
    for n = #targets,1,-1 do
        local t = targets[n]
        if t then
            if content then
                content = fmt('%s\n/targetexact %s', content, t)
            else
                content = fmt('/targetexact %s', t)
            end
            -- Prevent multiple spams
            if not (announcedTargets[t] or lowPrioTargets[t]) and
                addon.settings.profile.notifyOnTargetUpdates then
                targetText = fmt("%s %s,",targetText,t)
            end

            announcedTargets[t] = true

            if #content > 255 then
                content = content:gsub("^\n?[^\n]*[\n]*", "")
            end
        end
    end

    if #targetText > 0 then
        currentTargets = targetText:sub(1,-2)
        addon.ScheduleTask(1.5,AnnounceTargets)
    end

    if content then
        while #content > 230 do
            content = content:gsub("^\n?[^\n]*[\n]*", "")
        end
        content = content .. '\n/targetlasttarget [dead]'
    else
        content = fmt('//%s - %s', addon.title,
                      L("current step has no configured targets")) -- TODO locale
    end

    EditMacro(self.macroName, self.macroName, nil, content)

    if not addon.settings.profile.macroAnnounced and
        addon.settings.profile.notifyOnTargetUpdates and next(targets) ~= nil then
        C_Timer.After(1, function()
            addon.comms.PrettyPrint(L(
                                        "A macro has been automatically built to aid in leveling. Please move %s to your action bars."),
                                    self.macroName)

        end)
        addon.settings.profile.macroAnnounced = true
    end

    macroTargets = {}
end

function addon.targeting:PLAYER_REGEN_ENABLED()
    if macroTargets then
        C_Timer.After(0.5, function() self:UpdateMacro(macroTargets) end)
    end

    self:UpdateTargetFrame()
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

                if addon.settings.profile.enableMobMarking then
                    self:UpdateMarker("mob", nameplateID, i)
                end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.profile.enableTargetingFlash then
                    addon.tips:EnableDangerWarning(1)
                end

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

                if addon.settings.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.profile.enableTargetingFlash then
                    addon.tips:EnableDangerWarning(1)
                end

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

    for _, nameplate in ipairs(nameplatesArray) do
        self:CheckNameplate(nameplate.namePlateUnitToken)
    end
end

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

                if addon.settings.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", kind, i)
                end
            end
        end
    end

    if addon.settings.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableMobMarking then
                    self:UpdateMarker("mob", kind, i)
                end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.profile.enableTargetingFlash then
                    addon.tips:EnableDangerWarning(1)
                end

                if addon.settings.profile.enableEnemyMarking then
                    self:UpdateMarker("unitscan", kind, i)
                end
            end
        end
    end

    if addon.settings.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.profile.enableTargetingFlash then
                    addon.tips:EnableDangerWarning(1)
                end

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

                if addon.settings.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", kind, i)
                end
            end
        end
    end

    if addon.settings.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableMobMarking then
                    self:UpdateMarker("mob", kind, i)
                end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.enableEnemyMarking then
                    self:UpdateMarker("unitscan", kind, i)
                end
            end
        end
    end

    if addon.settings.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.profile.enableTargetingFlash then
                    addon.tips:EnableDangerWarning(1)
                end

                if addon.settings.profile.enableEnemyMarking then
                    -- Steal moon, lowest of enemies for mark
                    self:UpdateMarker("rare", kind, 4)
                end
            end
        end
    end
end

function addon.targeting:GOSSIP_SHOW()
    local targetUnit = UnitName("target")

    if not targetUnit then return end

    -- Return after first match, won't be an enemy and friendly target as the same step
    if addon.settings.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == targetUnit then
                tremove(targetList, i)
                self:UpdateTargetFrame("target")
                self:UpdateMacro()

                if GetRaidTargetIndex("target") ~= nil then
                    SetRaidTarget("target", 0)
                end
                return
            end
        end
    end
end

addon.targeting.MERCHANT_SHOW = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_PROGRESS = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_GREETING = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_COMPLETE = addon.targeting.GOSSIP_SHOW

function addon.targeting.CheckTargetProximity()
    if not shouldTargetCheck() or
        not addon.settings.profile.showTargetingOnProximity then return end

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
    if proxmityPolling.match and now - proxmityPolling.lastMatch >
        proxmityPolling.matchTimeout then

        if addon.settings.profile.debug then
            addon.comms.PrettyPrint("All match expired, resetting targets")
        end

        proxmityPolling.match = false
        wipe(proxmityPolling.rareAnnounced)
        wipe(proxmityPolling.scannedTargets)
        if not InCombatLockdown() then
            addon.targeting.activeTargetFrame:Hide()
        end

        -- Full reset, so don't handle per-mob checks below
        return
    end

    for name, data in pairs(proxmityPolling.scannedTargets) do
        if now - data.lastMatch > proxmityPolling.matchTimeout then
            if addon.settings.profile.debug then
                addon.comms.PrettyPrint("Individual match expired", name)
            end

            proxmityPolling.scannedTargets[name] = nil
        end
    end
end

-- Disables and mutes the annoying dialog that shows up
local actionForbiddenText = fmt(ADDON_ACTION_FORBIDDEN, addonName)

local TextBoxHook = function(self)
    local text = self.text or self.Text
    if text and text:GetText() == actionForbiddenText then
        if self:IsShown() then self:Hide() end
        local _, channel = PlaySound(SOUNDKIT.IG_MAINMENU_CLOSE)
        if channel then
            StopSound(channel)
            StopSound(channel - 1)
        end
        StaticPopupDialogs["ADDON_ACTION_FORBIDDEN"] = nil
    end
end

_G.StaticPopup1:HookScript("OnShow", TextBoxHook)
_G.StaticPopup1:HookScript("OnHide", TextBoxHook)
_G.StaticPopup2:HookScript("OnShow", TextBoxHook)
_G.StaticPopup2:HookScript("OnHide", TextBoxHook)

function addon.targeting:ADDON_ACTION_FORBIDDEN(_, forbiddenAddon, func)
    if func ~= "TargetUnit()" or forbiddenAddon ~= addonName then return end

    -- Unexpected call from (mistakenly) RXP
    if not proxmityPolling.scanData or not proxmityPolling.scanData.name then
        return
    end

    local scannedName = proxmityPolling.scanData.name
    local now = GetTime()

    proxmityPolling.scannedTargets[scannedName] = {
        kind = proxmityPolling.scanData.kind,
        lastMatch = now
    }
    proxmityPolling.lastMatch = now
    self:UpdateTargetFrame()

    if proxmityPolling.scanData.kind == 'rare' and
        addon.settings.profile.notifyOnRares and
        not proxmityPolling.rareAnnounced[scannedName] then

        proxmityPolling.rareAnnounced[scannedName] = true
        addon.comms.PrettyPrint(L("Rare Found! %s is nearby."), scannedName) -- TODO locale
    end

    -- Only notify sound once per step
    if proxmityPolling.match then return end

    proxmityPolling.match = true

    if addon.settings.profile.soundOnFind ~= "none" and
        (proxmityPolling.scanData.kind == 'rare' or
            proxmityPolling.scanData.kind == 'unitscan') then
        PlaySound(addon.settings.profile.soundOnFind,
                  addon.settings.profile.soundOnFindChannel)
    end
end

function addon.targeting:UpdateUnitList()
    local stepUnitscan = {}
    local stepMobs = {}
    local stepTargets = {}

    local function AddUnits(element,stepUnitscan,stepMobs,stepTargets)
        if element.unitscan then
            for _, t in ipairs(element.unitscan) do
                tinsert(stepUnitscan, addon.GetCreatureName(t))
            end
        end
        if element.mobs then
            for _, t in ipairs(element.mobs) do
                tinsert(stepMobs, addon.GetCreatureName(t))
            end
        end
        if element.targets then
            for _, t in ipairs(element.targets) do
                tinsert(stepTargets, addon.GetCreatureName(t))
            end
        end
    end

    for _,step in pairs(addon.RXPFrame.activeSteps) do
        for _,element in pairs(step.elements) do
            AddUnits(element,stepUnitscan,stepMobs,stepTargets)
        end
    end

    local unitscanGenerated = {}
    local mobsGenerated = {}
    local targetsGenerated = {}
    for _,context in pairs(addon.generatedSteps) do
        for _,step in ipairs(context) do
            for _,element in ipairs(step.elements or {}) do
                AddUnits(element,unitscanGenerated,mobsGenerated,targetsGenerated)
            end
        end
    end

    -- Update targets for macro
    addon.targeting:UpdateEnemyList(stepUnitscan, stepMobs)
    addon.targeting:UpdateTargetList(stepTargets)

    addon.targeting:UpdateEnemyList(unitscanGenerated, mobsGenerated, true)
    addon.targeting:UpdateTargetList(targetsGenerated, true)

    -- Don't process new targets if targeting disabled
    if addon.settings.profile.enableTargetAutomation then
        addon.targeting:CheckNameplates()
    end
end

local function FilterList(list)
    local u = {}
    for i,unit in pairs(list) do
        if unit:sub(1,1) == "*" then
            local name = unit:sub(2,-1)
            u[i] = name
        end
    end
    local size = #list
    for n = size,1,-1 do
        if u[n] then
            table.remove(list,n)
        end
    end
    for n = 1,size do
        local name = u[n]
        if name then
            table.insert(list,name)
        end
    end
end

function addon.targeting:UpdateTargetList(targets, addEntries)
    FilterList(targets)
    if addEntries then
        local update
        for _, unit in ipairs(targets) do
            local found
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

    if not addon.settings.profile.enableTargetAutomation then return end

    proxmityPolling.match = false
    proxmityPolling.lastMatch = 0
    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind == 'friendly' then
                proxmityPolling.scannedTargets[name] = nil
            end
        end
    end

    self:UpdateTargetFrame()
end

function addon.targeting:UpdateEnemyList(unitscan, mobs, addEntries)
    FilterList(unitscan)
    FilterList(mobs)

    if addEntries then
        local update
        for _, unit in ipairs(unitscan) do
            local found
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
            local found
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

    if not addon.settings.profile.enableTargetAutomation then return end

    proxmityPolling.match = false
    proxmityPolling.lastMatch = 0
    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind == 'unitscan' or data.kind == 'mob' then
                proxmityPolling.scannedTargets[name] = nil
            end
        end
    end

    self:UpdateTargetFrame()
end

function addon.targeting:CanCreateMacro() return GetNumMacros() < 119 end

local function UpdateIconFrameVisuals(self, updateFrame)
    self:SetScale(addon.settings.profile.activeTargetScale or 1)
    addon.targeting:RenderTargetFrameBackground()
    self.title:ClearBackdrop()
    self.title:SetBackdrop(addon.RXPFrame.backdrop.edge)
    self.title:SetBackdropColor(unpack(addon.colors.background))
    self.title.text:SetFont(addon.font, 9, "")
    self.title.text:SetTextColor(unpack(addon.activeTheme.textColor))
    self.title:SetSize(self.title.text:GetStringWidth() + 14, 19)
end

function addon.targeting:CreateTargetFrame()
    -- Still create frame even if targeting disabled, for frame location preservation
    if self.activeTargetFrame then return end

    self.activeTargetFrame = CreateFrame("Frame", "RXPTargetFrame", UIParent,
                                         BackdropTemplateMixin and
                                             "BackdropTemplate" or nil)
    local f = self.activeTargetFrame

    f:SetClampedToScreen(true)
    f:EnableMouse(true)
    f:SetMovable(true)
    f:Hide()

    addon.enabledFrames["activeTargetFrame"] = f
    f.IsFeatureEnabled = function()
        if not addon.settings.profile.enableTargetAutomation then return nil,true end

        if addon.settings.profile.showTargetingOnProximity then
            return proxmityPolling.match and shouldTargetCheck(),true
        end

        return shouldTargetCheck()
    end

    self:RenderTargetFrameBackground()

    f.onMouseDown = function()
        if addon.settings.profile.lockFrames and not IsAltKeyDown() then
            return
        end
        f:StartMoving()
    end
    function f.onMouseUp()
        f:StopMovingOrSizing()
        addon.settings:SaveFramePositions()
    end
    f:SetScript("OnMouseDown", f.onMouseDown)
    f:SetScript("OnMouseUp", f.onMouseUp)
    f.friendlyTargetButtons = {}
    f.enemyTargetButtons = {}
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)

    f.title = CreateFrame("Frame", "$parent_title", f,
                          BackdropTemplateMixin and "BackdropTemplate" or nil)
    f.title:SetPoint("TOPLEFT", f, 5, 5)
    f.title:ClearBackdrop()
    f.title:SetBackdrop(addon.RXPFrame.backdrop.edge)
    f.title:SetBackdropColor(unpack(addon.colors.background))
    f.title.text = f.title:CreateFontString(nil, "OVERLAY")
    f.title.text:ClearAllPoints()
    f.title.text:SetPoint("CENTER", f.title, 0, 2)
    f.title.text:SetJustifyH("CENTER")
    f.title.text:SetJustifyV("MIDDLE")
    f.title.text:SetTextColor(unpack(addon.activeTheme.textColor))
    f.title.text:SetFont(addon.font, 9, "")
    f.title.text:SetText(L "Active Targets")
    f.title:SetSize(f.title.text:GetStringWidth() + 14, 19)

    f.title:EnableMouse(true)
    f.title:SetScript("OnMouseDown", f.onMouseDown)
    f.title:SetScript("OnMouseUp", f.onMouseUp)

    f.UpdateVisuals = UpdateIconFrameVisuals
    f:SetHeight(40)
    f:SetScale(addon.settings.profile.activeTargetScale)
end

function addon.targeting:RenderTargetFrameBackground()
    if not self.activeTargetFrame then return end

    local f = self.activeTargetFrame
    -- print(RXP.activeTheme.texturePath)
    if addon.settings.profile.hideActiveTargetsBackground then
        f:ClearBackdrop()
    else
        f:ClearBackdrop()
        f:SetBackdrop(addon.RXPFrame.backdrop.edge)
        f:SetBackdropColor(unpack(addon.colors.background))
    end
end

local fOnEnter = function(self)
    if self:IsForbidden() or GameTooltip:IsForbidden() or not self.targetData then
        return
    end

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

function addon.targeting:UpdateMarker(kind, unitId, index)
    if (UnitIsDead(unitId) and kind ~= 'friendly') or UnitIsPlayer(unitId) or UnitIsUnit(unitId, "pet") then
        return
    end

    if IsInGroup() and not UnitIsGroupLeader('player') then return end
    -- Only mark 4/8 targets, ignore later marks
    if index > 4 then return end

    local markerId
    if kind == 'friendly' then
        -- Use star, circle, diamond, and triangle
        markerId = index
    elseif kind == 'unitscan' or kind == 'rare' then
        markerId = 5 -- moon
    elseif kind == 'mob' then
        -- use skull, cross, square
        markerId = 9 - index
    end

    if not markerId then return end

    if GetRaidTargetIndex(unitId) == nil and GetRaidTargetIndex(unitId) ~=
        markerId then SetRaidTarget(unitId, markerId) end
end

addon.targeting.portraitCache = {}
addon.targeting.activeIcons = {}
local iconCounter = 0

local function GetIcon(unit)
    local texture = addon.targeting.portraitCache[unit]
    local time = GetTime()
    if not texture then
        if iconCounter < 30 then
            texture = addon.targeting.activeTargetFrame:CreateTexture()
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

function addon.targeting:UpdateTargetFrame(selector)
    if not addon.settings.profile.enableTargetAutomation then return end

    local targetFrame = self.activeTargetFrame

    if InCombatLockdown() then return end

    local enemyTargetButtons = targetFrame.enemyTargetButtons
    local j = 0
    local enemiesList = {}

    if not addon.settings.profile.showTargetingOnProximity then
        -- If proximity disabled, show all
        for _, n in ipairs(unitscanList) do enemiesList[n] = 'unitscan' end

        for _, n in ipairs(mobList) do enemiesList[n] = 'mob' end
    end

    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind ~= 'friendly' then
                -- enemies row contains, unitscan, mob, and rare
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

    for targetName, k in pairs(enemiesList) do
        j = j + 1
        local btn = enemyTargetButtons[j]

        if not btn then
            btn = CreateFrame("Button", "RXPTargetFrame_EnemyButton" .. j,
                              targetFrame, "SecureActionButtonTemplate")
            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)
            if btn.RegisterForClicks then
                btn:RegisterForClicks("AnyUp", "AnyDown")
            end
            tinsert(enemyTargetButtons, btn)
            local n = #enemyTargetButtons

            btn:ClearAllPoints()
            if n == 1 then
                btn:SetPoint("TOPLEFT", targetFrame, "TOPLEFT", 6, -10)
            else
                btn:SetPoint("CENTER", enemyTargetButtons[n - 1], "CENTER", 27,
                             0)
            end
            btn.icon = btn:CreateTexture(nil, "BACKGROUND")
            btn.placeholder = btn.icon
            btn.placeholder.isDefault = true
            btn.GetUnitTexture = GetUnitTexture
            local icon = btn.icon
            icon.isDefault = true
            icon:SetAllPoints(true)
            icon:SetTexture(unitscanIcons[j] or unitscanPlaceholder)

            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            local ht = btn:CreateTexture(nil, "HIGHLIGHT")
            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        btn:SetAttribute('macrotext',
                         '/cleartarget\n/targetexact ' .. targetName)

        if btn.targetData and btn.targetData.name ~= targetName then
            local fallbackTexture
            if k == 'unitscan' or k == 'rare' then
                fallbackTexture = unitscanIcons[j] or unitscanPlaceholder
            else -- mob
                fallbackTexture = mobIcons[j] or mobPlaceholder
            end
            btn.placeholder:SetTexture(fallbackTexture)
            btn.placeholder.isDefault = true
        end

        btn:GetUnitTexture(targetName, selector)
        btn.targetData = {name = targetName, kind = k}
        -- If target or mouseover, set portrait
        -- TODO cache icons, relies on button order, resets otherwise
        -- SetPortraitTexture and SetPortraitToTexture?
        if selector and UnitName(selector) == targetName and btn.icon.isDefault then
            SetPortraitTexture(btn.placeholder, selector)
            btn.placeholder.isDefault = false
        end
        btn:Show()
    end

    local friendlyTargetButtons = targetFrame.friendlyTargetButtons
    local i = 0
    -- If proximity disabled, show all
    local friendlyList =
        addon.settings.profile.showTargetingOnProximity and {} or targetList

    if addon.settings.profile.showTargetingOnProximity then
        for name, data in pairs(proxmityPolling.scannedTargets) do
            if data.kind == 'friendly' then
                tinsert(friendlyList, name)
            end
        end
    end

    for _, targetName in ipairs(friendlyList) do
        i = i + 1
        local btn = friendlyTargetButtons[i]

        if not btn then
            btn = CreateFrame("Button", "RXPTargetFrame_FriendlyButton" .. i,
                              targetFrame, "SecureActionButtonTemplate")
            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)
            if btn.RegisterForClicks then
                btn:RegisterForClicks("AnyUp", "AnyDown")
            end
            tinsert(friendlyTargetButtons, btn)
            local n = #friendlyTargetButtons

            btn:ClearAllPoints()
            if n == 1 then
                btn:SetPoint("BOTTOMLEFT", targetFrame, "BOTTOMLEFT", 6, 6)
            else
                btn:SetPoint("CENTER", friendlyTargetButtons[n - 1], "CENTER",
                             27, 0)
            end
            btn.icon = btn:CreateTexture(nil, "BACKGROUND")

            local icon = btn.icon
            btn.placeholder = icon
            icon.isDefault = true
            icon:SetAllPoints(true)
            icon:SetTexture(targetIcons[i] or targetPlaceholder)
            btn.GetUnitTexture = GetUnitTexture
            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            local ht = btn:CreateTexture(nil, "HIGHLIGHT")
            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        btn:SetAttribute('macrotext',
                         '/cleartarget\n/targetexact ' .. targetName)

        local fallbackTexture = targetIcons[i] or targetPlaceholder
        if btn.targetData and btn.targetData.name ~= targetName then
            btn.placeholder:SetTexture(fallbackTexture)
            btn.placeholder.isDefault = true
        end

        btn:GetUnitTexture(targetName, selector)

        btn.targetData = {name = targetName, kind = "friendly"}
        -- If target or mouseover, set portrait
        if selector and btn.placeholder.isDefault and UnitName(selector) ==
            targetName then
            SetPortraitTexture(btn.placeholder, selector)
            btn.placeholder.isDefault = false
        end
        btn:Show()
    end

    if i > 0 or j > 0 then targetFrame:SetAlpha(1) end

    for n = i + 1, #friendlyTargetButtons do
        friendlyTargetButtons[n]:Hide()
        friendlyTargetButtons[n].placeholder:SetTexture(targetIcons[n] or
                                                            targetPlaceholder)
        friendlyTargetButtons[n].icon.isDefault = true
    end

    for n = j + 1, #enemyTargetButtons do
        enemyTargetButtons[n]:Hide()
        enemyTargetButtons[n].placeholder:SetTexture(unitscanIcons[n] or
                                                         unitscanPlaceholder)
        enemyTargetButtons[n].icon.isDefault = true
    end

    if (i == 0 and j == 0) or not addon.settings.profile.showEnabled then
        targetFrame:Hide()
    elseif addon.settings.profile.showTargetingOnProximity then
        if proxmityPolling.match then
            targetFrame:Show()
        else
            targetFrame:Hide()
        end
    else
        targetFrame:Show()
    end

    local width =
        mmax(targetFrame.title:GetWidth() + 10, i * 27 + 8, j * 27 + 8)
    targetFrame:SetWidth(width)

    if (i > 0 and j == 0) or (j > 0 and i == 0) then
        targetFrame:SetHeight(40)
    else
        targetFrame:SetHeight(68)
    end
end

function addon.targeting:ZONE_CHANGED_NEW_AREA() self:LoadRares() end

function addon.targeting:LoadRares()
    if not addon.settings.profile.scanForRares or
        not addon.settings.profile.showTargetingOnProximity or
        not addon.settings.profile.enableTargetAutomation or not addon.rares then
        return
    end

    -- Reset found rares
    for name, data in pairs(proxmityPolling.scannedTargets) do
        if data.kind == 'rare' then
            proxmityPolling.scannedTargets[name] = nil
        end
    end

    local zoneID = HBD:GetPlayerZone()
    local zoneName = ""
    for name,id in pairs(addon.mapId) do
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

