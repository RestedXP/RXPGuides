if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6级 幽影谷
#version 1
#group RestedXP 无限 地下城指南 (联盟)
#subgroup Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11级 泰达希尔
step
#include RestedXP 无限指南 (联盟)\1-6级 幽影谷
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11级 泰达希尔
#version 1
#group RestedXP 无限 地下城指南 (联盟)
#subgroup Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 11-16 Darkshore/Loch Modan

step
#include RestedXP 无限指南 (联盟)\6-11级 泰达希尔
]])
