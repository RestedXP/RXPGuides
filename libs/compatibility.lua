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

if not _G.strsplittable then
    _G.strsplittable = function(delimiter, text)
        return {strsplit(delimiter, text)}
    end
end

if not string.join then
    string.join = strjoin
end
