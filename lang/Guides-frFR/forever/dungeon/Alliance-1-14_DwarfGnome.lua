if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Vallée des Frigères
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Guide Forever (A)\1-5 Vallée des Frigères
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Nain/Gnome);11-12 Quête Marcheur du Vide;12-14 Loch Modan (Nain/Gnome);11-13 Loch Modan (Chasseur)
#defaultfor Dwarf/Gnome

step
#include RestedXP Guide Forever (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Nain/Gnome)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Nain/Gnome)

step
#include RestedXP Guide Forever (A)\11-12 Elwynn (Nain/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Nain/Gnome)
#next 13-15 Marche de l’Ouest
#defaultfor Gnome/Dwarf

step
#include RestedXP Guide Forever (A)\12-14 Loch Modan (Nain/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Chasseur)
#next 13-15 Marche de l’Ouest
#defaultfor Dwarf

step
#include RestedXP Guide Forever (A)\11-13 Loch Modan (Chasseur)@NormalRouteStart-NormalRouteEnd
]])