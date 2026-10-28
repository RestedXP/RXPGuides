if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Das Eisklammtal
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Dungeonführer (A)\1-5 Das Eisklammtal
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Zwerge/Gnome);11-12 Leerwandler-Quest;12-14 Loch Modan (Zwerg/Gnom);11-13 Loch Modan (Jäger)
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Dungeonführer (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Zwerge/Gnome)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Zwerg/Gnom)

step
#include RestedXP Forever Dungeonführer (A)\11-12 Elwynn (Zwerge/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Zwerg/Gnom)
#next 13-15 Westfall
#defaultfor Gnome/Dwarf

step
#include RestedXP Forever Dungeonführer (A)\12-14 Loch Modan (Zwerge/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Jäger)
#next 13-15 Westfall
#defaultfor Dwarf

step
#include RestedXP Forever Dungeonführer (A)\11-13 Loch Modan (Jäger)@NormalRouteStart-NormalRouteEnd
]])