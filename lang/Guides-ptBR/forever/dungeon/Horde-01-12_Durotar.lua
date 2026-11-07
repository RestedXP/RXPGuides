if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#group Guia de Masmorras do RestedXP Forever (H)
#subgroup Guia de Masmorra 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step
.enabledungeon RFC
#include Guia de Progressão Rápida do RestedXP Forever (H)\1-6 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 Durotar
#version 11
#group Guia de Masmorras do RestedXP Forever (H)
#subgroup Guia de Masmorra 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
.enabledungeon RFC
#include Guia de Progressão Rápida do RestedXP Forever (H)\6-10 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#group Guia de Masmorras do RestedXP Forever (H)
#subgroup Guia de Masmorra 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Clareiras de Tirisfal (Orc/Trolls) << !Hunter !Shaman !Tauren !Skyborne
#next 12-16 Terras Devastadas << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
.enabledungeon ROL
.enabledungeon RFC
#include Guia de Progressão Rápida do RestedXP Forever (H)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Clareiras de Tirisfal (Orc/Trolls)
#version 11
#group Guia de Masmorras do RestedXP Forever (H)
#subgroup Guia de Masmorra 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Floresta de Pinhaprata << !Hunter !Shaman !Tauren !Skyborne !Undead

step
.enabledungeon RFC
#include Guia de Progressão Rápida do RestedXP Forever (H)\10-12 Clareiras de Tirisfal (Orc/Trolls)
]])
