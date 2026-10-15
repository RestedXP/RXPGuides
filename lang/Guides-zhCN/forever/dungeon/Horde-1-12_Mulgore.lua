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
#next 6-12级 莫高雷;6-13 Mulgore

step
#include RestedXP魔兽世界无限升级指南（联盟版）\1-6级 莫高雷
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
#include RestedXP魔兽世界无限升级指南（联盟版）\6-12级 莫高雷
]])
