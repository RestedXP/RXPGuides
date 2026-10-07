if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clareiras de Tirisfal
#next 6-12 Tirisfal Glades

step
#include RestedXP Forever Guide (A)\1-6 Tirisfal Glades
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Tirisfal Glades
#displayname 6-13 Tirisfal Glades << Paladin
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Floresta de Pinhaprata; 12-17 Sertões

step
#include RestedXP Forever Guide (A)\6-12 Tirisfal Glades
]])


RXPGuides.RegisterGuide([[
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#beta
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14 Floresta de Pinhaprata
#displayname 13-15 Floresta de Pinhaprata << Paladin
#next 12-17 Sertões


step
#include RestedXP Forever Guide (A)\12-14 Silverpine Forest
]])
