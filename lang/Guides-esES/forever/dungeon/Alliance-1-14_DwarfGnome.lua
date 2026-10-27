if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Valle de Crestanevada
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Guía Forever (A)\1-5 Valle de Crestanevada
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Enano/Gnomo);11-12 Misión del Abisario;12-14 Loch Modan (Enano/Gnomo);11-13 Loch Modan (Cazador)
#defaultfor Dwarf/Gnome

step
#include RestedXP Guía Forever (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Enano/Gnomo)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Enano/Gnomo)

step
#include RestedXP Guía Forever (A)\11-12 Elwynn (Enano/Gnomo)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Enano/Gnomo)
#next 13-15 Páramos de Poniente
#defaultfor Gnome/Dwarf

step
#include RestedXP Guía Forever (A)\12-14 Loch Modan (Enano/Gnomo)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Cazador)
#next 13-15 Páramos de Poniente
#defaultfor Dwarf

step
#include RestedXP Guía Forever (A)\11-13 Loch Modan (Cazador)@NormalRouteStart-NormalRouteEnd
]])