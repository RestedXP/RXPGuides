if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#beta
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore; 6-13 Mulgore

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
#group Guia de Masmorras Forever da RestedXP (H)
#subgroup (WIP) Guia de Masmorras 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 Sertões


step
#include RestedXP Forever Guide (A)\6-12 Mulgore
]])
