if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6 Villanorte
#version 1
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Bosque de Elwynn


step
#include RestedXP Guía Forever (A)\1-6 Villanorte
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Bosque de Elwynn
#next 11-13 Loch Modan
#defaultfor Human

step
#include RestedXP Guía Forever (A)\6-11 Bosque de Elwynn
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#next 13-15 Páramos de Poniente
#defaultfor Human

step
    #include RestedXP Guía Forever (A)\11-13 Loch Modan@NormalRouteStart-NormalRouteEnd
]])