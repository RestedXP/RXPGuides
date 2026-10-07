if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step
#include RestedXP Forever Guide (A)\1-6 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 Durotar
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
#include RestedXP Forever Guide (A)\6-10 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Trolls) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 Sertões << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
#include RestedXP Forever Guide (A)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Tirisfal (Orc/Trolls)
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Floresta de Pinhaprata << !Hunter !Shaman !Tauren !Skyborne !Undead

step
#include RestedXP Forever Guide (A)\10-12 Tirisfal (Orc/Troll)
]])
