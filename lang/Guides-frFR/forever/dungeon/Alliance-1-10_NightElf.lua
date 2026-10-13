if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Sombrevallon
#displayname 1-7 Sombrevallon << sod
#version 1
#beta
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step
#include RestedXP Guide Forever (A)\1-6 Sombrevallon
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#beta
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Sombrivage

step
#include RestedXP Guide Forever (A)\6-11 Teldrassil
]])
