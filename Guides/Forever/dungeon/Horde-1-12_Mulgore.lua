local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Mulgore
#version 11
#group RestedXP Forever Dungeon Guide (H)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step
.enabledungeon RFC
#include RestedXP Forever Guide (H)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Mulgore
#version 11
#group RestedXP Forever Dungeon Guide (H)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16 The Barrens


step
.enabledungeon RFC
#include RestedXP Forever Guide (H)\6-12 Mulgore
]])
