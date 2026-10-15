if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Cañada Umbría
#displayname 1-7 Cañada Umbría << sod
#version 1
#beta
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step
#include RestedXP Guía Forever (A)\1-6 Cañada Umbría
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#beta
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Costa Oscura

step
#include RestedXP Guía Forever (A)\6-11 Teldrassil
]])
