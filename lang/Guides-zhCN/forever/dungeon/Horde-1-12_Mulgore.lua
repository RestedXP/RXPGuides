if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6级 莫高雷
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12级 莫高雷;6-13级 莫高雷

step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\1-6级 莫高雷
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12级 莫高雷
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-16 The Barrens


step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\6-12级 莫高雷
]])
