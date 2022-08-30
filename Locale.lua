local addonName, addon = ...

addon.locale = {}

local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

function addon.locale.Get(key)
    -- Lookup language locale, falls back to enUS
    if L[key] then return L[key] end

    -- Direct key doesn't match, so iterate over phrase and lazy translate
    if L.words then end
end
