local _, addon = ...

local fmt = string.format
local GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros =
    GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown, GetNumMacros

local L = addon.locale.Get

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"

local newTargets
local announcedTargets = {}

function addon.targeting:UpdateMacro(targets)
    if not addon.settings.db.profile.enableTargetMacro or _G.unitscan_targets then
        return
    end

    if InCombatLockdown() then
        newTargets = targets
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
    newTargets = nil
end

function addon.targeting:PLAYER_REGEN_ENABLED()
    if newTargets then
        C_Timer.After(2, function() self:UpdateMacro(newTargets) end)
    end
end

function addon.targeting:Setup()
    if not addon.settings.db.profile.enableTargetMacro or _G.unitscan_targets then
        DeleteMacro(self.macroName)
        return
    end

    self:RegisterEvent("PLAYER_REGEN_ENABLED")
end

function addon.targeting:CanCreateMacro() return GetNumMacros() < 119 end
