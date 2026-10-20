if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Mulgore
#version 11
#group RestedXP Forever Dungeon Dungeonführer (H)
#subgroup Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step
.enabledungeon RFC
#include RestedXP Forever Dungeonführer (H)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Mulgore
#version 11
#group RestedXP Forever Dungeon Dungeonführer (H)
#subgroup Dungeon Dungeonführer 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16 Das Brachland


step
.enabledungeon RFC
#include RestedXP Forever Dungeonführer (H)\6-12 Mulgore
]])
