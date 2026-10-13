if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#beta
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
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
#group Guide de donjon Forever RestedXP (H)
#subgroup (En développement) Guide de donjon 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 Les Tarides


step
#include RestedXP Forever Guide (A)\6-12 Mulgore
]])
