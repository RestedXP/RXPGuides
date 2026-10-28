if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6级 莫高雷
#version 11
#group RestedXP无限服地下城指南（部落）
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12级 莫高雷;6-13级 莫高雷

step
.enabledungeon RFC
#include RestedXP无限服指南（部落）\1-6级 莫高雷
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12级 莫高雷
#version 11
#group RestedXP无限服地下城指南（部落）
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16级 贫瘠之地


step
.enabledungeon RFC
#include RestedXP无限服指南（部落）\6-12级 莫高雷
]])
