if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group RestedXP Forever Dungeon Dungeonführer (H)
#subgroup Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Tirisfal
#next 6-12 Tirisfal Wälder

step
.enabledungeon RFC
#include RestedXP Forever Dungeonführer (H)\1-6 Tirisfal
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Tirisfal Wälder
#displayname 6-13 Tirisfal Wälder << Paladin
#version 11
#group RestedXP Forever Dungeon Dungeonführer (H)
#subgroup Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Silberwald; 12-17 das Brachland

step
.enabledungeon RFC
#include RestedXP Forever Dungeonführer (H)\6-12 Tirisfal
]])


RXPGuides.RegisterGuide([[
#group RestedXP Forever Dungeon Dungeonführer (H)
#subgroup Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#era/som--h
#name 12-14 Silberwald
#displayname 13-15 Silberwald << Paladin
#next 12-16 Das Brachland


step
.enabledungeon RFC
.enabledungeon ROL
#include RestedXP Forever Dungeonführer (H)\12-14 Silberwald
]])
