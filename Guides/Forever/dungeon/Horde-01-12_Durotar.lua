local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#beta
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
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
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
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
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Troll) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 The Barrens << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
#include RestedXP Forever Guide (A)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Tirisfal (Orc/Troll)
#version 11
#beta
#group RestedXP Forever Dungeon Guide (H)
#subgroup (WIP) Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Silverpine Forest << !Hunter !Shaman !Tauren !Skyborne !Undead

step
#include RestedXP Forever Guide (A)\10-12 Tirisfal (Orc/Troll)
]])
