if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 幽影谷
#displayname 1-7级 幽影谷 << sod
#version 1
#beta
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 泰达希尔
step
#include RestedXP Forever Guide (A)\1-6 Shadowglen
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 泰达希尔
#displayname 7-13级 泰达希尔 << SoD
#version 1
#beta
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16级 黑海岸

step
#include RestedXP Forever Guide (A)\6-11 Teldrassil
]])
