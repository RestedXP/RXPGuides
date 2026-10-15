if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step
#include RestedXP Guía Forever (A)\1-6 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 Durotar
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
#include RestedXP Guía Forever (A)\6-10 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orco/Trol) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 Los Baldíos << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
#include RestedXP Guía Forever (A)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Tirisfal (Orco/Trol)
#version 11
#beta
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup (En progreso) Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Bosque de Argénteos << !Hunter !Shaman !Tauren !Skyborne !Undead

step
#include RestedXP Guía Forever (A)\10-12 Tirisfal (Orco/Trol)
]])
