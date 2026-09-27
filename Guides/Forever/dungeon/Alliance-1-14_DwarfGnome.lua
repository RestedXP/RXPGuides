local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Coldridge Valley
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guide (A)\1-5 Coldridge Valley
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Dwarf/Gnome);11-12 Voidwalker Quest;12-14 Loch Modan (Dwarf/Gnome);11-13 Loch Modan (Hunter)
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guide (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#forever
#season 0,1
<< Alliance !Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Dwarf/Gnome)
#version 1
#beta
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Dwarf/Gnome)
--#era << !Warlock

step
#include RestedXP Forever Guide (A)\11-12 Elwynn (Dwarf/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance !Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Dwarf/Gnome)
#next 13-15 Westfall;14-16 Darkshore
#defaultfor Gnome/Dwarf

step
#include RestedXP Forever Guide (A)\12-14 Loch Modan (Dwarf/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#era/som--h
#version 1
#beta
<< Alliance Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Hunter)
#next 14-16 Darkshore
#defaultfor Dwarf

step
#include RestedXP Forever Guide (A)\11-13 Loch Modan (Hunter)
]])
