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

local GameTooltip = _G.GameTooltip

local L = addon.locale.Get

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"

local announcedTargets = {}
local macroTargets = {}

local proxmityPolling = {
    frequency = 0.25,
    last = GetTime(),
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
    if not addon.settings.db.profile.enableTargetMacro then
        DeleteMacro(self.macroName)
    end

    self:CreateTargetFrame()

    if not addon.settings.db.profile.enableTargetAutomation then return end

    self:RegisterEvent("PLAYER_REGEN_ENABLED")

    -- TODO toggle without reloads

    -- Only works when nameplates are enabled
    self:RegisterEvent("NAME_PLATE_UNIT_ADDED")

    -- Increase nameplate scanning distance to max allowed
    if addon.gameVersion > 40000 then
        SetCVar("nameplateMaxDistance", "100")
    else
        SetCVar("nameplateMaxDistance", "41")
    end

    self:RegisterEvent("PLAYER_TARGET_CHANGED")
    self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")

    -- Remove interacted target
    self:RegisterEvent("GOSSIP_SHOW")
    self:RegisterEvent("MERCHANT_SHOW")
    self:RegisterEvent("QUEST_PROGRESS")
    self:RegisterEvent("QUEST_GREETING")
    self:RegisterEvent("QUEST_COMPLETE")

    if addon.settings.db.profile.showTargetingOnProximity then
        if addon.settings.db.profile.hideGuideWindow then
            addon.arrowFrame:HookScript("OnUpdate", self.CheckTargetProximity)
        elseif addon.settings.db.profile.hideArrow then
            addon.RXPFrame:HookScript("OnUpdate", self.CheckTargetProximity)
        elseif addon.settings.db.profile.enableMinimapButton then
            addon.settings.minimapFrame:HookScript("OnUpdate",
                                                   self.CheckTargetProximity)
        else
            addon.comms.PrettyPrint(L(
                                        "No enabled RXP frames for targeting functionality"))
        end

        self:RegisterEvent("ADDON_ACTION_FORBIDDEN")

        -- Prevent forbidden UI popup
        UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")
    end

    if addon.rares then
        self:LoadRares()
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    end
end

local function shouldTargetCheck()
    return not addon.isHidden and
               addon.settings.db.profile.enableTargetAutomation and
               not IsInRaid() and not UnitOnTaxi("player") and
               (next(unitscanList) ~= nil or next(mobList) ~= nil or
                   next(targetList) ~= nil or next(rareTargets) ~= nil or
                   next(proxmityPolling.scannedTargets) ~= nil)

end

function addon.targeting:UpdateMacro(queuedTargets)
    -- TODO add rare targets
    if not addon.settings.db.profile.enableTargetMacro and shouldTargetCheck() then
        return
    end

    if InCombatLockdown() then
        macroTargets = queuedTargets
        return
    end

    local targets = queuedTargets or {}

    if not GetMacroInfo(self.macroName) then
        if not self:CanCreateMacro() then return end
        CreateMacro(self.macroName, "Ability_eyeoftheowl", "")
    end

    for _, t in ipairs(targetList) do tinsert(targets, t) end

    for _, t in ipairs(mobList) do tinsert(targets, t) end

    for _, t in ipairs(unitscanList) do tinsert(targets, t) end

    local content
    for _, t in ipairs(targets) do
        content = fmt('/targetexact %s\n%s', t, content or "")

        -- Prevent multiple spams
        if not announcedTargets[t] and
            addon.settings.db.profile.notifyOnTargetUpdates then
            -- Only notify if Active Targets frame is disabled
            addon.comms.PrettyPrint(L("Targeting macro updated with (%s)"), t) -- TODO locale
        end

        announcedTargets[t] = true
    end

    if content then
        -- Newline already appended from list above
        content = fmt('%s%s', content, '/cleartarget [dead]')
    else
        content = fmt('//%s - %s', addon.title,
                      L("current step has no configured targets")) -- TODO locale
    end

    EditMacro(self.macroName, self.macroName, nil, content)

    if not addon.settings.db.profile.macroAnnounced and
        addon.settings.db.profile.notifyOnTargetUpdates and next(targets) ~= nil then
        C_Timer.After(1, function()
            addon.comms.PrettyPrint(L(
                                        "A macro has been automatically built to aid in leveling. Please move %s to your action bars."),
                                    self.macroName)

        end)
        addon.settings.db.profile.macroAnnounced = true
    end

    macroTargets = {}
end

function addon.targeting:PLAYER_REGEN_ENABLED()
    if macroTargets then
        C_Timer.After(1, function() self:UpdateMacro(macroTargets) end)
    end

    self:UpdateTargetFrame()
end

function addon.targeting:CheckNameplate(nameplateID)
    if not nameplateID then return end

    local unitName = UnitName(nameplateID)

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", nameplateID, i)
                end
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.db.profile.enableMobMarking then
                    self:UpdateMarker("mob", nameplateID, i)
                end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
                    self:UpdateMarker("unitscan", nameplateID, i)
                end
            end
        end
    end

    if addon.settings.db.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
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

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", kind, i)
                end
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableMobMarking then
                    self:UpdateMarker("mob", kind, i)
                end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
                    self:UpdateMarker("unitscan", kind, i)
                end
            end
        end
    end

    if addon.settings.db.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
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

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(targetList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", kind, i)
                end
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(mobList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableMobMarking then
                    self:UpdateMarker("mob", kind, i)
                end
            end
        end

        for i, name in ipairs(unitscanList) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableEnemyMarking then
                    self:UpdateMarker("unitscan", kind, i)
                end
            end
        end
    end

    if addon.settings.db.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
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
    if addon.settings.db.profile.enableFriendlyTargeting then
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
        not addon.settings.db.profile.showTargetingOnProximity then return end

    if GetTime() - proxmityPolling.last <= proxmityPolling.frequency then
        return
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for _, name in pairs(unitscanList) do
            proxmityPolling.scanData = {name = name, kind = 'unitscan'}
            TargetUnit(name, true)
        end

        for _, name in pairs(mobList) do
            proxmityPolling.scanData = {name = name, kind = 'mob'}
            TargetUnit(name, true)
        end
    end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for _, name in pairs(targetList) do
            proxmityPolling.scanData = {name = name, kind = 'friendly'}
            TargetUnit(name, true)
        end
    end

    if addon.settings.db.profile.scanForRares then
        for _, name in ipairs(rareTargets) do
            proxmityPolling.scanData = {name = name, kind = 'rare'}
            TargetUnit(name, true)
        end
    end

    proxmityPolling.last = GetTime()

    -- Unset match if >5s without a ADDON_ACTION_FORBIDDEN
    if proxmityPolling.match and GetTime() - proxmityPolling.lastMatch >
        proxmityPolling.matchTimeout then

        if addon.settings.db.profile.debug then
            addon.comms.PrettyPrint("Match expired, hiding")
        end

        proxmityPolling.match = false
        wipe(proxmityPolling.rareAnnounced)
        wipe(proxmityPolling.scannedTargets)
        if not InCombatLockdown() then
            addon.targeting.activeTargetFrame:Hide()
        end

        if IsInGroup() and not UnitIsGroupLeader('player') then return end
    end
end

function addon.targeting:ADDON_ACTION_FORBIDDEN(_, forbiddenAddon, func)
    if func ~= "TargetUnit()" or forbiddenAddon ~= addonName then return end

    if not proxmityPolling.scanData or not proxmityPolling.scanData.name then
        return
    end

    local scannedName = proxmityPolling.scanData.name

    proxmityPolling.scannedTargets[scannedName] = proxmityPolling.scanData.kind
    proxmityPolling.lastMatch = GetTime()
    self:UpdateTargetFrame()

    if proxmityPolling.scanData.kind == 'rare' and
        addon.settings.db.profile.notifyOnRares and
        not proxmityPolling.rareAnnounced[scannedName] then

        proxmityPolling.rareAnnounced[scannedName] = true
        addon.comms.PrettyPrint(L("Rare Found! %s is nearby."), scannedName) -- TODO locale
    end

    -- Only notify sound once per step
    if proxmityPolling.match then return end

    proxmityPolling.match = true

    if addon.settings.db.profile.soundOnFind ~= "none" and
        proxmityPolling.scanData.kind ~= 'friendly' then
        PlaySound(addon.settings.db.profile.soundOnFind,
                  addon.settings.db.profile.soundOnFindChannel)
    end
end

function addon.targeting:UpdateTargetList(targets)
    proxmityPolling.match = false
    proxmityPolling.lastMatch = 0
    if addon.settings.db.profile.showTargetingOnProximity then
        for name, kind in pairs(proxmityPolling.scannedTargets) do
            if kind == 'friendly' then
                proxmityPolling.scannedTargets[name] = nil
            end
        end
    end

    if #targetList == 0 and #targets == 0 then return end

    targetList = targets

    self:UpdateMacro()
    self:UpdateTargetFrame()
end

function addon.targeting:UpdateEnemyList(unitscan, mobs)
    proxmityPolling.match = false
    proxmityPolling.lastMatch = 0
    if addon.settings.db.profile.showTargetingOnProximity then
        for name, kind in pairs(proxmityPolling.scannedTargets) do
            if kind == 'unitscan' or kind == 'mob' then
                proxmityPolling.scannedTargets[name] = nil
            end
        end
    end

    -- if #unitscanList == 0 and #unitscan == 0 and #mobList == 0 then return end

    unitscanList = unitscan
    mobList = mobs

    self:UpdateMacro()
    self:UpdateTargetFrame()
end

function addon.targeting:CanCreateMacro() return GetNumMacros() < 119 end

function addon.targeting:CreateTargetFrame()
    if self.activeTargetFrame then return end

    self.activeTargetFrame = CreateFrame("Frame", "RXPTargetFrame", UIParent,
                                         BackdropTemplateMixin and
                                             "BackdropTemplate" or nil)
    local f = self.activeTargetFrame

    f:SetClampedToScreen(true)
    f:EnableMouse(true)
    f:SetMovable(true)

    addon.enabledFrames["activeTargetFrame"] = f
    f.IsFeatureEnabled = function()
        if addon.settings.db.profile.showTargetingOnProximity then
            return proxmityPolling.match and shouldTargetCheck()
        end

        return shouldTargetCheck()
    end

    self:RenderTargetFrameBackground()

    f.onMouseDown = function()
        if addon.settings.db.profile.lockFrames and not IsAltKeyDown() then
            return
        end
        f:StartMoving()
    end
    function f.onMouseUp() f:StopMovingOrSizing() end
    f:SetScript("OnMouseDown", f.onMouseDown)
    f:SetScript("OnMouseUp", f.onMouseUp)
    f.friendlyTargetButtons = {}
    f.enemyTargetButtons = {}
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)

    f.title = CreateFrame("Frame", "$parent_title", f,
                          BackdropTemplateMixin and "BackdropTemplate" or nil)
    f.title:SetPoint("TOPLEFT", f, 5, 5)
    f.title:ClearBackdrop()
    f.title:SetBackdrop(addon.RXPFrame.backdropEdge)
    f.title:SetBackdropColor(unpack(addon.colors.background))
    f.title.text = f.title:CreateFontString(nil, "OVERLAY")
    f.title.text:ClearAllPoints()
    f.title.text:SetPoint("CENTER", f.title, 0, 2)
    f.title.text:SetJustifyH("CENTER")
    f.title.text:SetJustifyV("MIDDLE")
    f.title.text:SetTextColor(unpack(addon.activeTheme.textColor))
    f.title.text:SetFont(addon.font, 9, "")
    f.title.text:SetText("Active Targets")
    f.title:SetSize(f.title.text:GetStringWidth() + 14, 19)

    f.title:EnableMouse(true)
    f.title:SetScript("OnMouseDown", f.onMouseDown)
    f.title:SetScript("OnMouseUp", f.onMouseUp)

    f:SetHeight(40)
    f:SetScale(addon.settings.db.profile.activeTargetScale)
end

function addon.targeting:RenderTargetFrameBackground()
    if not self.activeTargetFrame then return end

    local f = self.activeTargetFrame

    if addon.settings.db.profile.hideActiveTargetsBackground then
        f:ClearBackdrop()
    else
        f:ClearBackdrop()
        f:SetBackdrop(addon.RXPFrame.backdropEdge)
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
    if UnitIsDead(unitId) or UnitIsPlayer(unitId) or UnitIsUnit(unitId, "pet") then
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

function addon.targeting:UpdateTargetFrame(selector)
    local targetFrame = self.activeTargetFrame

    if InCombatLockdown() then return end

    local enemyTargetButtons = targetFrame.enemyTargetButtons
    local j = 0
    local enemiesList = {}

    if not addon.settings.db.profile.showTargetingOnProximity then
        -- If proximity disabled, show all
        for _, n in ipairs(unitscanList) do enemiesList[n] = 'unitscan' end

        for _, n in ipairs(mobList) do enemiesList[n] = 'mob' end
    end

    if addon.settings.db.profile.showTargetingOnProximity then
        for name, targetKind in pairs(proxmityPolling.scannedTargets) do
            if targetKind ~= 'friendly' then
                -- enemies row contains, unitscan, mob, and rare
                enemiesList[name] = targetKind
            end
        end
    end

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
            if k == 'unitscan' or k == 'rare' then
                btn.icon:SetTexture(unitscanIcons[j] or unitscanPlaceholder)
            else -- mob
                btn.icon:SetTexture(mobIcons[j] or mobPlaceholder)
            end
            btn.icon.isDefault = true
        end

        btn.targetData = {name = targetName, kind = k}
        -- If target or mouseover, set portrait
        -- TODO cache icons, relies on button order, resets otherwise
        -- SetPortraitTexture and SetPortraitToTexture?
        if selector and UnitName(selector) == targetName and btn.icon.isDefault then
            SetPortraitTexture(btn.icon, selector)
            btn.icon.isDefault = false
        end
        btn:Show()
    end

    local friendlyTargetButtons = targetFrame.friendlyTargetButtons
    local i = 0
    -- If proximity disabled, show all
    local friendlyList = addon.settings.db.profile.showTargetingOnProximity and
                             {} or targetList

    if addon.settings.db.profile.showTargetingOnProximity then
        for name, targetkind in pairs(proxmityPolling.scannedTargets) do
            if targetkind == 'friendly' then
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
            icon.isDefault = true
            icon:SetAllPoints(true)
            icon:SetTexture(targetIcons[i] or targetPlaceholder)

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
            btn.icon:SetTexture(targetIcons[i] or targetPlaceholder)
            btn.icon.isDefault = true
        end

        btn.targetData = {name = targetName, kind = "friendly"}
        -- If target or mouseover, set portrait
        if selector and UnitName(selector) == targetName and btn.icon.isDefault then
            SetPortraitTexture(btn.icon, selector)
            btn.icon.isDefault = false
        end
        btn:Show()
    end

    if i > 0 or j > 0 then targetFrame:SetAlpha(1) end

    for n = i + 1, #friendlyTargetButtons do
        friendlyTargetButtons[n]:Hide()
        friendlyTargetButtons[n].icon:SetTexture(targetIcons[n] or
                                                     targetPlaceholder)
        friendlyTargetButtons[n].icon.isDefault = true
    end

    for n = j + 1, #enemyTargetButtons do
        enemyTargetButtons[n]:Hide()
        enemyTargetButtons[n].icon:SetTexture(unitscanIcons[n] or
                                                  unitscanPlaceholder)
        enemyTargetButtons[n].icon.isDefault = true
    end

    if (i == 0 and j == 0) or not addon.settings.db.profile.showEnabled then
        targetFrame:Hide()
    elseif addon.settings.db.profile.showTargetingOnProximity then
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
    if not addon.settings.db.profile.scanForRares or
        not addon.settings.db.profile.showTargetingOnProximity or
        not addon.settings.db.profile.enableTargetAutomation or not addon.rares then
        return
    end

    -- Reset found rares
    for name, kind in pairs(proxmityPolling.scannedTargets) do
        if kind == 'rare' then proxmityPolling.scannedTargets[name] = nil end
    end

    local zone = GetRealZoneText()

    if not zone then return end

    rareTargets = addon.rares[zone] or {}
    self:UpdateTargetFrame()
end
