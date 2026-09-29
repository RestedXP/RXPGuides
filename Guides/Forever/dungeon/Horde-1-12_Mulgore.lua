local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#beta
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step
#include RestedXP Forever Guide (A)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 6-12 Mulgore
#version 11
#beta
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 The Barrens


step
#include RestedXP Forever Guide (A)\6-12 Mulgore
]])
