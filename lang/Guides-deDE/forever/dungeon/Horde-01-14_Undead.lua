if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#beta
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Tirisfal
#next 6-12 Tirisfal Wälder

step
#include RestedXP Forever Guide (A)\1-6 Tirisfal Wälder
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Tirisfal Wälder
#displayname 6-13 Tirisfal Wälder << Paladin
#version 11
#beta
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Silberwald; 12-17 das Brachland

step
#include RestedXP Forever Guide (A)\6-12 Tirisfal Wälder
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#beta
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14 Silberwald
#displayname 13-15 Silberwald << Paladin
#next 12-17 das Brachland


step
#include RestedXP Forever Guide (A)\12-14 Silberwald
]])
