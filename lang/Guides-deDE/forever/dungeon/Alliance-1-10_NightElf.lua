if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Laubschattental
#version 1
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step
#include RestedXP Forever Dungeonführer (A)\1-6 Laubschattental
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#version 1
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 11-16 Dunkelküste/Loch Modan

step
#include RestedXP Forever Dungeonführer (A)\6-11 Teldrassil
]])
