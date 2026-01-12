local addonName, addon = ...

-- Locale doesn't exist yet
-- AceAddon doesn't exist yet
local AceGUI = LibStub("AceGUI-3.0")

addon.ui = {
    v2 = {}
}

local L

function addon.ui.v2:Initialize()

    -- Locales.lua loads after this file is included
    L = addon.locale.Get
end
