if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6级 北郡
#version 1
#group Forever 地下城 向导 A
#subgroup 地下城指南 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11级 艾尔文森林


step
#include RestedXP Forever 指南 A\1-6级 北郡
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Forever 地下城 向导 A
#subgroup 地下城指南 1-20
--#groupid RXP-SRGCE-A1
#name 6-11级 艾尔文森林
#next 11-13级 洛克莫丹
#defaultfor Human

step
#include RestedXP Forever 指南 A\6-11级 艾尔文森林
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Forever 地下城 向导 A
#subgroup 地下城指南 1-20
--#groupid RXP-SRGCE-A1
#name 11-13级 洛克莫丹
#next 13-15级 西部荒野
#defaultfor Human

step
    #include RestedXP Forever 指南 A\11-13级 洛克莫丹@NormalRouteStart-NormalRouteEnd
]])