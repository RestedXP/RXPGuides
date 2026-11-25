-- Traductions des modules ajoutes (Groupe, Prerequis, Trajets) : le texte est ecrit en anglais dans le code
-- (addon.groupL["English text"]) et traduit dans la langue du jeu ; sans traduction : l'anglais.
-- (noms a part : RXP utilise deja addon.locale, et QuestLog.lua lit addon.L)
local addonName, addon = ...

local loc = GetLocale and GetLocale() or "enUS"
if loc == "esMX" then loc = "esES" elseif loc == "enGB" then loc = "enUS" end

addon.groupL = setmetatable({}, { __index = function(_, k) return k end })
addon.groupLocale = loc

-- t = { frFR = { ["English"] = "Français", ... }, deDE = { ... }, ... }
function addon.AddGroupTranslations(t)
    local m = type(t) == "table" and t[loc]
    if type(m) ~= "table" then return end
    for k, v in pairs(m) do
        if type(v) == "string" and v ~= "" then rawset(addon.groupL, k, v) end
    end
end
