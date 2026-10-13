if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
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
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
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
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Troll) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 Les Tarides << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
#include RestedXP Forever Guide (A)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Tirisfal (Orc/Troll)
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Forêt des Pins argentés << !Hunter !Shaman !Tauren !Skyborne !Undead

step
#include RestedXP Forever Guide (A)\10-12 Tirisfal (Orc/Troll)
]])
