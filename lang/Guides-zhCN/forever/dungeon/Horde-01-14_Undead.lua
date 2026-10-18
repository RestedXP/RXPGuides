if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6级 提瑞斯法林地
#next 6-12级 提瑞斯法林地

step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\1-6级 提瑞斯法林地
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12级 提瑞斯法林地
#displayname 6-13级 提瑞斯法林地 << Paladin
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14级 银松森林; 12-17级 贫瘠之地

step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\6-12级 提瑞斯法林地
]])


RXPGuides.RegisterGuide([[
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#forever
#era/som--h
#name 12-14级 银松森林
#displayname 13-15级 银松森林 << Paladin
#next 12-16 The Barrens


step
.enabledungeon RFC
.enabledungeon ROL
#include RestedXP 无限指南 (部落)\12-14级 银松森林
]])
