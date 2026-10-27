if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Mulgore
#version 11
#group Guide de donjon Forever RestedXP (H)
#subgroup Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step
.enabledungeon RFC
#include Guide RestedXP Éternel (H)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Mulgore
#version 11
#group Guide de donjon Forever RestedXP (H)
#subgroup Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16 Les Tarides


step
.enabledungeon RFC
#include Guide RestedXP Éternel (H)\6-12 Mulgore
]])
