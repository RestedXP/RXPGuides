if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Coldridge Valley
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guia (A)\1-5 Coldridge Valley
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Anão/Gnomo);11-12 Missão do Emissário do Caos;12-14 Loch Modan (Anão/Gnomo);11-13 Loch Modan (Caçador)
#defaultfor Dwarf/Gnome

step
#include RestedXP Forever Guia (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Anão/Gnomo)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Anão/Gnomo)

step
#include RestedXP Forever Guia (A)\11-12 Elwynn (Anão/Gnomo)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Anão/Gnomo)
#next 13-15 Cerro Oeste
#defaultfor Gnome/Dwarf

step
#include RestedXP Forever Guia (A)\12-14 Loch Modan (Anão/Gnomo)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group RestedXP Guia de Masmorra Eterna (A)
#subgroup Guia da Masmorra 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Caçador)
#next 13-15 Cerro Oeste
#defaultfor Dwarf

step
#include RestedXP Forever Guia (A)\11-13 Loch Modan (Caçador)@NormalRouteStart-NormalRouteEnd
]])