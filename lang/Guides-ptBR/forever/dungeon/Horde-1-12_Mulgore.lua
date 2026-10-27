if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Mulgore
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step
.enabledungeon RFC
#include Guia RestedXP Forever (H)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12 Mulgore
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16 Terras Devastadas


step
.enabledungeon RFC
#include Guia RestedXP Forever (H)\6-12 Mulgore
]])
