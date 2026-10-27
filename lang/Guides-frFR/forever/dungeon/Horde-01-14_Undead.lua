if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group Guide de donjon Forever RestedXP (H)
#subgroup Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clairières de Tirisfal
#next 6-12 Clairières de Tirisfal

step
.enabledungeon RFC
#include Guide RestedXP Éternel (H)\1-6 Clairières de Tirisfal
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Clairières de Tirisfal
#displayname 6-13 Clairières de Tirisfal << Paladin
#version 11
#group Guide de donjon Forever RestedXP (H)
#subgroup Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Forêt des Pins argentés; 12-17 Les Tarides

step
.enabledungeon RFC
#include Guide RestedXP Éternel (H)\6-12 Clairières de Tirisfal
]])


RXPGuides.RegisterGuide([[
#group Guide de donjon Forever RestedXP (H)
#subgroup Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#era/som--h
#name 12-14 Forêt des Pins argentés
#displayname 13-15 Forêt des Pins argentés << Paladin
#next 12-16 Les Tarides


step
.enabledungeon RFC
.enabledungeon ROL
#include Guide RestedXP Éternel (H)\12-14 Forêt des Pins argentés
]])
