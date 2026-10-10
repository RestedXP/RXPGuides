if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 提瑞斯法林地
#next 6-12级 提瑞斯法林地

step
#include RestedXP Forever Guide (A)\1-6 Tirisfal Glades
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12级 提瑞斯法林地
#displayname 6-13级 提瑞斯法林地 << Paladin
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 银松森林；12-17 贫瘠之地

step
#include RestedXP Forever Guide (A)\6-12 Tirisfal Glades
]])


RXPGuides.RegisterGuide([[
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#beta
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14级 银松森林
#displayname 13-15级 银松森林 << Paladin
#next 12-17级 贫瘠之地


step
#include RestedXP Forever Guide (A)\12-14 Silverpine Forest
]])
