if GetLocale() ~= "zhCN" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 1-14级 泽风岛
#displayname 1-13级 天裔 << Alliance
#displayname 1-12级 天裔 << Horde
#group RestedXP魔兽世界无限地下城指南（联盟版） << Alliance
#group RestedXP魔兽世界无限地下城指南（部落版） << Horde
#subgroup （制作中）地下城指南 1-20级 << Alliance
#subgroup （制作中）地下城指南 1-22级 << Horde
#defaultfor Skyborne
#next “正确的西部荒野指南” << Alliance

step
#include RestedXP魔兽世界无限升级指南（联盟版）\1-14 泽风岛
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 天裔猎人职业任务
#group RestedXP魔兽世界无限地下城指南（联盟版） << Alliance
#group RestedXP魔兽世界无限地下城指南（部落版） << Horde
#internal

step
#include RestedXP魔兽世界无限升级指南（联盟版）\天裔猎人职业任务
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 天裔德鲁伊职业任务
#displayname 天裔德鲁伊职业任务
#group RestedXP魔兽世界无限地下城指南（联盟版） << Alliance
#group RestedXP魔兽世界无限地下城指南（部落版） << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
#include RestedXP魔兽世界无限升级指南（联盟版）\天裔德鲁伊职业任务
]])
--Random Stuff
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 杂项
#group RestedXP魔兽世界无限地下城指南（联盟版） << Alliance
#group RestedXP魔兽世界无限地下城指南（部落版） << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP魔兽世界无限升级指南（联盟版）\杂项
]])
