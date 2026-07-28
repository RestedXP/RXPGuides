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

--C_SettingsUtil
if not C_SettingsUtil then
    Settings = {}
    function Settings.RegisterCanvasLayoutSubcategory(category, groupframe, categoryName)
        C_Timer.After(0, function() InterfaceOptions_AddCategory(groupframe) end)
        return {ID = categoryName}
    end
    function Settings.RegisterCanvasLayoutCategory(groupframe, categoryName)
        C_Timer.After(0, function() InterfaceOptions_AddCategory(groupframe) end)
        return {ID = categoryName}
    end
    function Settings.GetCategory(parentID)
        return {ID = parentID}
    end
    Settings.RegisterAddOnCategory = function() end
end
