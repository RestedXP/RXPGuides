local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#beta
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Tirisfal Glades
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
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Silverpine Forest; 12-17 The Barrens

step
#include RestedXP Forever Guide (A)\6-12 Tirisfal Glades
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#beta
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14 Silverpine Forest
#displayname 13-15 Silverpine Forest << Paladin
#next 12-17 The Barrens


step
#include RestedXP Forever Guide (A)\12-14 Silverpine Forest
]])
