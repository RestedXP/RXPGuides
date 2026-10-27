if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6 Comté-du-nord
#version 1
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Forêt d'Elwynn


step
#include RestedXP Guide Forever (A)\1-6 Comté-du-nord
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Forêt d'Elwynn
#next 11-13 Loch Modan
#defaultfor Human

step
#include RestedXP Guide Forever (A)\6-11 Forêt d'Elwynn
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#next 13-15 Marche de l’Ouest
#defaultfor Human

step
    #include RestedXP Guide Forever (A)\11-13 Loch Modan@NormalRouteStart-NormalRouteEnd
]])