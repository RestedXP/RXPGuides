if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Shadowglen
#version 1
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step
#include RestedXP Forever Guia (A)\1-6 Shadowglen
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#version 1
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 11-16 Costa Negra/Loch Modan

step
#include RestedXP Forever Guia (A)\6-11 Teldrassil
]])
