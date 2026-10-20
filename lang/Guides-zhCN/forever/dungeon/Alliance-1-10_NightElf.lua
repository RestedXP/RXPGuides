if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6级 幽影谷
#version 1
#group Forever 地下城 向导 A
#subgroup 地下城指南 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11级 泰达希尔
step
#include RestedXP Forever 指南 A\1-6级 幽影谷
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11级 泰达希尔
#version 1
#group Forever 地下城 向导 A
#subgroup 地下城指南 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 11-16 黑海岸/洛克莫丹

step
#include RestedXP Forever 指南 A\6-11级 泰达希尔
]])
