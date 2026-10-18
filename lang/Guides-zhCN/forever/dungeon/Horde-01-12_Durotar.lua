if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6级 杜隆塔尔
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10级 杜隆塔尔


step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\1-6级 杜隆塔尔
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10级 杜隆塔尔
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12级 杜隆塔尔

step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\6-10级 杜隆塔尔
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12级 杜隆塔尔
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12级 提瑞斯法 （兽人/巨魔） << !Hunter !Shaman !Tauren !Skyborne
#next 12-16 The Barrens << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\10-12级 杜隆塔尔
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12级 提瑞斯法 （兽人/巨魔）
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup Dungeon Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14级 银松森林 << !Hunter !Shaman !Tauren !Skyborne !Undead

step
.enabledungeon RFC
#include RestedXP 无限指南 (部落)\10-12级 提瑞斯法 （兽人/巨魔）
]])
