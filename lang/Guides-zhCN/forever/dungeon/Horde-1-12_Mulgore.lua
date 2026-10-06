if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 莫高雷
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12级 莫高雷；6-13级 莫高雷

step
#include RestedXP Forever Guide (A)\1-6 Mulgore
]])


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 6-12级 莫高雷
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17级 贫瘠之地


step
#include RestedXP Forever Guide (A)\6-12 Mulgore
]])
