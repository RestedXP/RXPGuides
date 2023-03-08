local addonName, addon = ...

if addon.gameVersion > 40000 then return end

local L = addon.locale.Get

addon.talents = addon:NewModule("Talents", "AceEvent-3.0")

function addon.talents:LoadTalents() end

function addon.talents.RegisterGuide(displayName, class, minLevel)
    if class ~= addon.player.class then return end

    -- #displayName, #class, #minLevel
end
