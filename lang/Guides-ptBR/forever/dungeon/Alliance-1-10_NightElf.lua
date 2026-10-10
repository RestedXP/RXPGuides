if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Shadowglen
#displayname 1-7 Shadowglen << sod
#version 1
#beta
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step
#include RestedXP Forever Guide (A)\1-6 Shadowglen
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#beta
#group RestedXP Forever Guia de Masmorra (A)
#subgroup (WIP) Guia de Masmorra 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Costa Negra

step
#include RestedXP Forever Guide (A)\6-11 Teldrassil
]])
