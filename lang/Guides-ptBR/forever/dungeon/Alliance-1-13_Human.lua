if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6 Northshire
#version 1
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Elwynn Forest


step
#include RestedXP Forever Guia (A)\1-6 Northshire
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Elwynn Forest
#next 11-13 Loch Modan
#defaultfor Human

step
#include RestedXP Forever Guia (A)\6-11 Elwynn Forest
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#next 13-15 Cerro Oeste
#defaultfor Human

step
    #include RestedXP Forever Guia (A)\11-13 Loch Modan@NormalRouteStart-NormalRouteEnd
]])