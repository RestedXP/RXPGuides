local addonName, addon = ...

addon.GetUnitName = function(unit)
    local n = _G.UnitName(unit)
    if issecretvalue and issecretvalue(n) then
        return
    end
    return n
end

if not _G.securecallfunction then
    _G.securecallfunction = _G.securecall
end
