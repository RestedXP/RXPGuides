if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step
#include RestedXP Guía Forever (A)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 6-12 Mulgore
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 Los Baldíos


step
#include RestedXP Guía Forever (A)\6-12 Mulgore
]])
