local _, addon = ...

local fmt = string.format
local GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros =
    GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros
local TargetUnit, UnitName, next, IsInRaid = TargetUnit, UnitName, next,
                                             IsInRaid
local GetRaidTargetIndex, SetRaidTarget = GetRaidTargetIndex, SetRaidTarget
local GetTime, FlashClientIcon = GetTime, FlashClientIcon
local GameTooltip = _G.GameTooltip

local L = addon.locale.Get

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"

local macroTargets
local announcedTargets = {}

local proximityTargets = {}
local pollingFrequency = 0.25
local lastPoll = GetTime()

local targetButtonPlaceholders = {132092, 132177, 132130, 132150}

function addon.targeting:Setup()
    if addon.settings.db.profile.enableTargetMacro then
        self:RegisterEvent("PLAYER_REGEN_ENABLED")
    else
        DeleteMacro(self.macroName)
    end

    self:CreateTargetFrame()

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

    -- TODO toggle without reloads
    if addon.settings.db.profile.enableTargetAutomation then
        -- Periodic polling
        self:RegisterEvent("ADDON_ACTION_FORBIDDEN")

        if addon.settings.db.profile.hideGuideWindow then
            addon.arrowFrame:HookScript("OnUpdate", self.PollTargets)
        elseif addon.settings.db.profile.hideArrow then
            addon.RXPFrame:HookScript("OnUpdate", self.PollTargets)
        elseif addon.settings.db.profile.enableMinimapButton then
            addon.settings.minimapFrame:HookScript("OnUpdate", self.PollTargets)
        else
            error("No enabled RXP frames to hook onto")
        end

        -- Prevent forbidden UI popup
        UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")
    end
end

function addon.targeting:UpdateMacro(targets)
    if not addon.settings.db.profile.enableTargetMacro or _G.unitscan_targets then
        return
    end

    if InCombatLockdown() then
        macroTargets = targets
        return
    end

    if not GetMacroInfo(self.macroName) then
        if not self:CanCreateMacro() then return end
        CreateMacro(self.macroName, "Ability_eyeoftheowl", "")
    end

    targets = targets or {}

    local content
    for _, t in ipairs(targets) do
        content = fmt('/targetexact %s\n%s', t, content or "")

        -- Prevent multiple spams
        if not announcedTargets[t] and
            addon.settings.db.profile.notifyOnTargetUpdates then
            C_Timer.After(2, function()
                addon.comms.PrettyPrint(L(
                                            "You have a new target (%s) for step %d"),
                                        t, RXPCData.currentStep) -- TODO locale
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
    macroTargets = nil
end

function addon.targeting:PLAYER_REGEN_ENABLED()
    if macroTargets then
        C_Timer.After(2, function() self:UpdateMacro(macroTargets) end)
    end

    if IsInRaid() or next(proximityTargets) == nil then return end

    self:UpdateTargetFrame()
end

function addon.targeting:NAME_PLATE_UNIT_ADDED(_, nameplateID)
    if not nameplateID or next(proximityTargets) == nil or IsInRaid() then
        return
    end

    local unitName = UnitName(nameplateID)

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(proximityTargets) do
            if name == unitName then
                self:UpdateTargetFrame(nameplateID)
                -- TODO use array to track already found targets, remove after interation MERCHANT_SHOW or GOSSIP_SHOW
                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("target", nameplateID, i)
                end
            end
        end
    end
end

function addon.targeting:UPDATE_MOUSEOVER_UNIT()
    if next(proximityTargets) == nil or IsInRaid() then return end

    local unitName = UnitName("mouseover")

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(proximityTargets) do
            if name == unitName then
                self:UpdateTargetFrame("mouseover")

                if addon.settings.db.profile.flashOnFind then
                    FlashClientIcon()
                end

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("target", "mouseover", i)
                end
            end
        end
    end
end

function addon.targeting:PLAYER_TARGET_CHANGED()
    if next(proximityTargets) == nil or IsInRaid() then return end

    local unitName = UnitName("target")

    if not unitName then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        for i, name in ipairs(proximityTargets) do
            if name == unitName then
                self:UpdateTargetFrame("target")

                if addon.settings.db.profile.enableTargetMarking then
                    self:UpdateMarker("target", "target", i)
                end
            end
        end
    end
end

function addon.targeting:PollTargets()
    if next(proximityTargets) == nil or IsInRaid() then return end

    if addon.settings.db.profile.enableFriendlyTargeting then
        if GetTime() - lastPoll > pollingFrequency then
            for _, name in pairs(proximityTargets) do
                TargetUnit(name, true)
            end
        end
    end

    lastPoll = GetTime()
end

function addon.targeting:UpdateTargets(targets)
    proximityTargets = targets or {}

    if InCombatLockdown() then return end
    self:UpdateTargetFrame()
end

function addon.targeting:ADDON_ACTION_FORBIDDEN(_, _, c)
    -- TODO flash buttons that something is near?
    print("ADDON_ACTION_FORBIDDEN = " .. c)
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
                   next(proximityTargets) ~= nil
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
    f.buttonList = {}
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
    if self:IsForbidden() or GameTooltip:IsForbidden() then return end

    GameTooltip:ClearLines()
    -- TODO set tooltip to unit
    GameTooltip:SetOwner(self, "ANCHOR_BOTTOM", 0, 0)
    GameTooltip:AddLine(self.targetData.name, 1, 1, 1)
    GameTooltip:Show()
end

local fOnLeave = function(self)
    if self:IsForbidden() or _G.GameTooltip:IsForbidden() then return end

    GameTooltip:Hide()
end

function addon.targeting:UpdateMarker(kind, unitId, index)
    -- Only mark 4/8 targets, ignore later marks
    if index > 4 then return end

    local markerId
    if kind == "target" then
        -- Use star, circle, diamond, and triangle
        markerId = 1 + index
    elseif kind == "unitscan" then
        -- use skull, cross, square, and moon
        markerId = 8 - index
    end

    if GetRaidTargetIndex(unitId) == nil and GetRaidTargetIndex(unitId) ~=
        markerId then SetRaidTarget(unitId, markerId) end
end

function addon.targeting:UpdateTargetFrame(kind)
    local targetFrame = self.activeTargetFrame

    -- TOOD queue up for out-of-combat refresh
    if InCombatLockdown() then return end
    local buttonList = targetFrame.buttonList

    targetFrame.title:SetSize(targetFrame.title.text:GetStringWidth() + 10, 17)

    local i = 0

    for _, targetName in ipairs(proximityTargets) do
        i = i + 1
        local btn = buttonList[i]

        if not btn then
            btn = CreateFrame("Button", "$parentButton" .. i, targetFrame,
                              "SecureActionButtonTemplate")
            btn:SetAttribute("type", "macro")
            btn:SetSize(25, 25)
            table.insert(buttonList, btn)
            local n = #buttonList

            btn:ClearAllPoints()
            if n == 1 then
                btn:SetPoint("BOTTOMLEFT", targetFrame, "BOTTOMLEFT", 6, 6)
            else
                btn:SetPoint("CENTER", buttonList[n - 1], "CENTER", 27, 0)
            end
            btn.icon = btn:CreateTexture(nil, "BACKGROUND")

            local icon = btn.icon
            icon:SetAllPoints(true)
            icon:SetTexture(targetButtonPlaceholders[i] or
                                "Interface\\Icons\\INV_Misc_QuestionMark")

            btn:SetScript("OnEnter", fOnEnter)
            btn:SetScript("OnLeave", fOnLeave)

            local ht = btn:CreateTexture(nil, "HIGHLIGHT")
            ht:SetAllPoints(true)
            ht:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
            ht:SetBlendMode("ADD")
        end

        btn:SetAttribute('macrotext',
                         '/cleartarget\n/targetexact ' .. targetName)
        btn.targetData = {name = targetName}
        -- If target or mouseover, set portrait
        if kind and UnitName(kind) == targetName then
            SetPortraitTexture(btn.icon, kind)
        end
        btn:Show()
    end

    if i > 0 then targetFrame:SetAlpha(1) end

    if i == 0 or addon.settings.db.profile.disableItemWindow or
        not addon.settings.db.profile.showEnabled then
        targetFrame:Hide()
    else
        targetFrame:Show()
    end

    for n = i + 1, #buttonList do
        buttonList[n]:Hide()
        buttonList[n].icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
    end
    local width = math.max(targetFrame.title:GetWidth() + 10, i * 27 + 8)
    targetFrame:SetWidth(width)

end
