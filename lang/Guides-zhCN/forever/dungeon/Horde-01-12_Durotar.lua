if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 杜隆塔尔
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 杜隆塔尔


step
#include RestedXP Forever Guide (A)\1-6 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 杜隆塔尔
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12级 杜隆塔尔

step
#include RestedXP Forever Guide (A)\6-10 Durotar
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12级 杜隆塔尔
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12级 提瑞斯法 （兽人/巨魔） << !Hunter !Shaman !Tauren !Skyborne
#next 12-17级 贫瘠之地 << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
#include RestedXP Forever Guide (A)\10-12 Durotar
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12级 提瑞斯法 （兽人/巨魔）
#version 11
#beta
#group RestedXP魔兽世界无限地下城指南（部落版）
#subgroup （制作中）地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14级 银松森林 << !Hunter !Shaman !Tauren !Skyborne !Undead

step
#include RestedXP Forever Guide (A)\10-12 Tirisfal (Orc/Troll)
]])
