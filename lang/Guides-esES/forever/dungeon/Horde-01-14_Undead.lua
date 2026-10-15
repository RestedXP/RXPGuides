if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Claros de Tirisfal
#next 6-12 Claros de Tirisfal

step
#include RestedXP Guía Forever (A)\1-6 Claros de Tirisfal
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Claros de Tirisfal
#displayname 6-13 Claros de Tirisfal << Paladin
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Bosque de Argénteos; 12-17 Los Baldíos

step
#include RestedXP Guía Forever (A)\6-12 Claros de Tirisfal
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#beta
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14 Bosque de Argénteos
#displayname 13-15 Bosque de Argénteos << Paladin
#next 12-17 Los Baldíos


step
#include RestedXP Guía Forever (A)\12-14 Bosque de Argénteos
]])
