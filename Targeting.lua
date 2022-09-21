local _, addon = ...

local fmt = string.format
local GetMacroInfo, CreateMacro, EditMacro, InCombatLockdown = GetMacroInfo,
                                                               CreateMacro,
                                                               EditMacro,
                                                               InCombatLockdown

addon.targeting = addon:NewModule("Targeting", "AceEvent-3.0")
addon.targeting.macroName = "RXPTargeting"

local newTargets

function addon.targeting:UpdateMacro(targets)
    if not addon.settings.db.profile.enableTargetMacro then return end

    if InCombatLockdown() then
        newTargets = targets
        return
    end

    if not GetMacroInfo(self.macroName) then
        CreateMacro(self.macroName, "Ability_eyeoftheowl", "")
    end

    targets = targets or {}

    local content
    for _, t in ipairs(targets) do
        content = fmt('/targetexact %s\n%s', t, content or "")
    end

    content = content or
                  fmt('//%s\n/run UIErrorsFrame:AddMessage("%s")', addon.title,
                      _G.ERR_GENERIC_NO_TARGET)
    EditMacro(self.macroName, self.macroName, nil, content)

    newTargets = nil
end

function addon.targeting:PLAYER_REGEN_ENABLED()
    if newTargets then self:UpdateMacro(newTargets) end
end

function addon.targeting:Setup()
    if not addon.settings.db.profile.enableTargetMacro then
        DeleteMacro(self.macroName)
        return
    end

    self:RegisterEvent("PLAYER_REGEN_ENABLED")
end

