if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clareiras de Tirisfal
#next 6-12 Tirisfal Glades

step
.enabledungeon RFC
#include Guia RestedXP Forever (H)\1-6 Clareiras de Tirisfal
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Tirisfal Glades
#displayname 6-13 Tirisfal Glades << Paladin
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Floresta de Pinhaprata; 12-17 Sertões

step
.enabledungeon RFC
#include Guia RestedXP Forever (H)\6-12 Clareiras de Tirisfal
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#era/som--h
#name 12-14 Floresta de Pinhaprata
#displayname 13-15 Floresta de Pinhaprata << Paladin
#next 12-16 Terras Devastadas


step
.enabledungeon RFC
.enabledungeon ROL
#include Guia RestedXP Forever (H)\12-14 Floresta de Pinhaprata
]])
