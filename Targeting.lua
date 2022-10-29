local _, addon = ...

local fmt, tinsert, tremove, mmax = string.format, table.insert, table.remove,
                                    math.max
local GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros =
    GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros
local TargetUnit, UnitName, next, IsInRaid, UnitIsDead, UnitIsGroupAssistant,
      UnitIsGroupLeader, IsInGroup = TargetUnit, UnitName, next, IsInRaid,
                                     UnitIsDead, UnitIsGroupAssistant,
                                     UnitIsGroupLeader, IsInGroup
local GetRaidTargetIndex, SetRaidTarget = GetRaidTargetIndex, SetRaidTarget
local GetTime, FlashClientIcon = GetTime, FlashClientIcon
local GameTooltip = _G.GameTooltip

local L = addon.locale.Get

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"

local announcedTargets = {}
local macroTargets = {}
local pollingFrequency = 0.25
local lastPoll = GetTime()

local friendlyTargets = {}
local friendlyTargetPlaceholder = 132150
-- TODO add local-only markers and custom placeholders
local friendlyTargetIcons = {
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_1.blp",
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_2.blp",
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_3.blp",
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_4.blp"
}

local enemyTargets = {}
local enemyTargetPlaceholder = 132212
local enemyTargetIcons = {
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_8.blp",
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_7.blp",
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_6.blp",
    "Interface\\TargetingFrame\\UI-RaidTargetingIcon_5.blp"
}

function addon.targeting:Setup()
    if addon.settings.db.profile.enableTargetMacro then
        self:RegisterEvent("PLAYER_REGEN_ENABLED")
    else
        DeleteMacro(self.macroName)
    end

    self:CreateTargetFrame()

    if not addon.settings.db.profile.enableTargetAutomation then return end

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

    if addon.settings.db.profile.targetWithoutNameplates then
        if addon.settings.db.profile.hideGuideWindow then
            addon.arrowFrame:HookScript("OnUpdate", self.PollEnemyTargets)
        elseif addon.settings.db.profile.hideArrow then
            addon.RXPFrame:HookScript("OnUpdate", self.PollEnemyTargets)
        elseif addon.settings.db.profile.enableMinimapButton then
            addon.settings.minimapFrame:HookScript("OnUpdate",
                                                   self.PollEnemyTargets)
        else
            error("No enabled RXP frames to hook onto")
        end

        self:RegisterEvent("ADDON_ACTION_FORBIDDEN")

        -- Prevent forbidden UI popup
        UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")
    end
end

function addon.targeting:UpdateMacro(queuedTargets)
    if not addon.settings.db.profile.enableTargetMacro then return end

    if InCombatLockdown() then
        macroTargets = queuedTargets
        return
    end

    local targets = queuedTargets or {}

    if not GetMacroInfo(self.macroName) then
        if not self:CanCreateMacro() then return end
        CreateMacro(self.macroName, "Ability_eyeoftheowl", "")
    end

    for _, t in ipairs(friendlyTargets) do tinsert(targets, t) end

    for _, t in ipairs(enemyTargets) do tinsert(targets, t) end

    local content
    for _, t in ipairs(targets) do
        content = fmt('/targetexact %s\n%s', t, content or "")

        -- Prevent multiple spams
        if not announcedTargets[t] and
            addon.settings.db.profile.notifyOnTargetUpdates and
            not addon.settings.db.profile.enableTargetAutomation then
            -- Only notify if Active Targets frame is disabled
            C_Timer.After(2, function()
                addon.comms
                    .PrettyPrint(L("Targeting macro updated with (%s)"), t) -- TODO locale
            end)
        end

        announcedTargets[t] = true
    end

    content = content or
                  fmt('//%s - %s', addon.title,
                      L("current step has no configured targets")) -- TODO locale
    EditMacro(self.macroName, self.macroName, nil, content)

    if not addon.settings.db.profile.macroAnnounced and
        addon.settings.db.profile.notifyOnTargetUpdates and next(targets) ~= nil then
        C_Timer.After(5, function()
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
        C_Timer.After(2, function() self:UpdateMacro(macroTargets) end)
    end

    if IsInRaid() or next(friendlyTargets) == nil then return end

    self:UpdateTargetFrame()
end

function addon.targeting:NAME_PLATE_UNIT_ADDED(_, nameplateID)
    if not nameplateID or IsInRaid() or
        (next(enemyTargets) == nil and next(friendlyTargets) == nil) then
        return
    end

    local unitName = UnitName(nameplateID)

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(friendlyTargets) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", nameplateID, i)
                end
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(enemyTargets) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
                    self:UpdateMarker("enemy", nameplateID, i)
                end
            end
        end
    end
end

function addon.targeting:UPDATE_MOUSEOVER_UNIT()
    if IsInRaid() or
        (next(enemyTargets) == nil and next(friendlyTargets) == nil) then
        return
    end

    local kind = "mouseover"
    local unitName = UnitName(kind)

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(friendlyTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", kind, i)
                end
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(enemyTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableEnemyMarking then
                    self:UpdateMarker("enemy", kind, i)
                end
            end
        end
    end
end

function addon.targeting:PLAYER_TARGET_CHANGED()
    if IsInRaid() or
        (next(enemyTargets) == nil and next(friendlyTargets) == nil) then
        return
    end
    local kind = "target"
    local unitName = UnitName(kind)

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(friendlyTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("friendly", kind, i)
                end
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(enemyTargets) do
            if name == unitName then
                self:UpdateTargetFrame(kind)

                if addon.settings.db.profile.enableEnemyMarking then
                    self:UpdateMarker("enemy", kind, i)
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
        for i, name in ipairs(friendlyTargets) do
            if name == targetUnit then
                tremove(friendlyTargets, i)
                self:UpdateTargetFrame()
                self:UpdateMacro()
                return
            end
        end
    end

    if addon.settings.db.profile.enableEnemyTargeting then
        for i, name in ipairs(enemyTargets) do
            if name == targetUnit then
                tremove(enemyTargets, i)
                self:UpdateTargetFrame()
                self:UpdateMacro()
                return
            end
        end
    end
end

addon.targeting.MERCHANT_SHOW = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_PROGRESS = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_GREETING = addon.targeting.GOSSIP_SHOW
addon.targeting.QUEST_COMPLETE = addon.targeting.GOSSIP_SHOW

function addon.targeting:PollEnemyTargets()
    -- TODO add friendly too
    if IsInRaid() or next(enemyTargets) == nil or
        not addon.settings.db.profile.targetWithoutNameplates or
        addon.settings.db.profile.enableEnemyTargeting then return end

    if GetTime() - lastPoll > pollingFrequency then
        for _, name in pairs(enemyTargets) do TargetUnit(name, true) end
    end

    lastPoll = GetTime()
end

function addon.targeting:UpdateFriendlyTargets(targets)
    friendlyTargets = targets or {}

    if InCombatLockdown() then return end

    self:UpdateMacro()
    self:UpdateTargetFrame()
end

function addon.targeting:UpdateEnemyTargets(targets)
    enemyTargets = targets or {}

    if InCombatLockdown() then return end

    self:UpdateMacro()
    self:UpdateTargetFrame()
end

function addon.targeting:ADDON_ACTION_FORBIDDEN(_, _, c)
    -- TODO flash buttons that something is near?
    -- print("ADDON_ACTION_FORBIDDEN = " .. c)
    -- TODO pop up window if target detected
    -- TODO hide if targets out of range
end

function addon.targeting:CanCreateMacro() return GetNumMacros() < 119 end

function addon.targeting:CreateTargetFrame()
    if self.activeTargetFrame then return end

    -- TOOD add scale setting
    self.activeTargetFrame = CreateFrame("Frame", "RXPTargetFrame", UIParent,
                                         BackdropTemplateMixin and
                                             "BackdropTemplate" or nil)
    local f = self.activeTargetFrame
    f:SetClampedToScreen(true)
    f:EnableMouse(true)
    f:SetMovable(true)

    addon.enabledFrames["activeTargetFrame"] = f
    f.IsFeatureEnabled = function()
        return not addon.settings.db.profile.disableItemWindow and
                   (next(friendlyTargets) ~= nil or next(enemyTargets) ~= nil)
    end

    f:ClearBackdrop()
    f:SetBackdrop(addon.RXPFrame.backdropEdge)
    f:SetBackdropColor(unpack(addon.colors.background))
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
    f.title.text:SetPoint("CENTER", f.title, 2, 1)
    f.title.text:SetJustifyH("CENTER")
    f.title.text:SetJustifyV("CENTER")
    f.title.text:SetTextColor(1, 1, 1)
    f.title.text:SetFont(addon.font, 9, "")
    f.title.text:SetText("Active Targets")
    f.title:EnableMouse(true)
    f.title:SetScript("OnMouseDown", f.onMouseDown)
    f.title:SetScript("OnMouseUp", f.onMouseUp)

    f:SetHeight(40)
end

local fOnEnter = function(self)
    if self:IsForbidden() or GameTooltip:IsForbidden() or not self.targetData then
        return
    end

    GameTooltip:ClearLines()
    -- TODO set tooltip to unit
    GameTooltip:SetOwner(self, "ANCHOR_BOTTOM", 0, 0)
    if self.targetData.kind == "friendly" then
        GameTooltip:AddLine(self.targetData.name, 0, 1, 0)
    elseif self.targetData.kind == "enemy" then
        GameTooltip:AddLine(self.targetData.name, 1, 0, 0)
    end

    GameTooltip:Show()
end

local fOnLeave = function(self)
    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then return end

    GameTooltip:Hide()
end

function addon.targeting:UpdateMarker(kind, unitId, index)
    if UnitIsDead(unitId) then return end

    if IsInGroup() and
        not (UnitIsGroupAssistant('player') or UnitIsGroupLeader('player')) then
        return
    end
    -- Only mark 4/8 targets, ignore later marks
    if index > 4 then return end

    local markerId
    if kind == "friendly" then
        -- Use star, circle, diamond, and triangle
        markerId = 0 + index
    elseif kind == "enemy" then
        -- use skull, cross, square, and moon
        markerId = 9 - index
    end

    if not markerId then return end

    if GetRaidTargetIndex(unitId) == nil and GetRaidTargetIndex(unitId) ~=
        markerId then SetRaidTarget(unitId, markerId) end
end

function addon.targeting:UpdateTargetFrame(kind)
    local targetFrame = self.activeTargetFrame

    if InCombatLockdown() then return end

    targetFrame.title:SetSize(targetFrame.title.text:GetStringWidth() + 10, 17)

    local enemyTargetButtons = targetFrame.enemyTargetButtons
    local j = 0
    for _, targetName in ipairs(enemyTargets) do
        j = j + 1
        local btn = enemyTargetButtons[j]

        if not btn then
            btn = CreateFrame("Button", "RXPTargetFrame_EnemyButton" .. j,
                              targetFrame, "SecureActionButtonTemplate")
            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)
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
            icon:SetAllPoints(true)
            icon:SetTexture(enemyTargetIcons[j] or enemyTargetPlaceholder)

            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            local ht = btn:CreateTexture(nil, "HIGHLIGHT")
            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        btn:SetAttribute('macrotext',
                         '/cleartarget\n/targetexact ' .. targetName)
        btn.targetData = {name = targetName, kind = "enemy"}
        -- If target or mouseover, set portrait
        if kind and UnitName(kind) == targetName then
            -- TODO fix stale icons on new step
            SetPortraitTexture(btn.icon, kind)
        end
        btn:Show()
    end

    local friendlyTargetButtons = targetFrame.friendlyTargetButtons
    local i = 0

    for _, targetName in ipairs(friendlyTargets) do
        i = i + 1
        local btn = friendlyTargetButtons[i]

        if not btn then
            btn = CreateFrame("Button", "RXPTargetFrame_FriendlyButton" .. i,
                              targetFrame, "SecureActionButtonTemplate")
            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)
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
            icon:SetAllPoints(true)
            icon:SetTexture(friendlyTargetIcons[i] or friendlyTargetPlaceholder)

            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            local ht = btn:CreateTexture(nil, "HIGHLIGHT")
            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        btn:SetAttribute('macrotext',
                         '/cleartarget\n/targetexact ' .. targetName)
        btn.targetData = {name = targetName, kind = "friendly"}
        -- If target or mouseover, set portrait
        if kind and UnitName(kind) == targetName then
            SetPortraitTexture(btn.icon, kind)
        end
        btn:Show()
    end

    if i > 0 or j > 0 then targetFrame:SetAlpha(1) end

    for n = i + 1, #friendlyTargetButtons do
        friendlyTargetButtons[n]:Hide()
        friendlyTargetButtons[n].icon:SetTexture(
            friendlyTargetIcons[n] or friendlyTargetPlaceholder)
    end

    for n = j + 1, #enemyTargetButtons do
        enemyTargetButtons[n]:Hide()
        enemyTargetButtons[n].icon:SetTexture(
            enemyTargetIcons[n] or enemyTargetPlaceholder)
    end

    if (i == 0 and j == 0) or
        not addon.settings.db.profile.enableTargetAutomation or
        not addon.settings.db.profile.showEnabled then
        targetFrame:Hide()
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
