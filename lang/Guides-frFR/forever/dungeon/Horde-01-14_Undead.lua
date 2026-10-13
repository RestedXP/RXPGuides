if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clairières de Tirisfal
#next 6-12 Clairières de Tirisfal

step
#include RestedXP Guide Forever (A)\1-6 Clairières de Tirisfal
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Clairières de Tirisfal
#displayname 6-13 Clairières de Tirisfal << Paladin
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Forêt des Pins argentés; 12-17 Les Tarides

step
#include RestedXP Guide Forever (A)\6-12 Clairières de Tirisfal
]])


RXPGuides.RegisterGuide([[
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#beta
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14 Forêt des Pins argentés
#displayname 13-15 Forêt des Pins argentés << Paladin
#next 12-17 Les Tarides


step
#include RestedXP Forever Guide (A)\12-14 Silverpine Forest
]])
