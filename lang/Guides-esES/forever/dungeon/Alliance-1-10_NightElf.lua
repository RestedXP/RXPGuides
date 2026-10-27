if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Cañada Umbría
#version 1
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
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
#version 1
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 11-16 Costa Oscura/Loch Modan

step
#include RestedXP Guía Forever (A)\6-11 Teldrassil
]])
