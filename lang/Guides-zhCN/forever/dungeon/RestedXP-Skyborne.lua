if GetLocale() ~= "zhCN" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9级 Zephras Isle
#displayname 1-9级 Skyborne << Alliance
#displayname 1-9级 Skyborne << Horde
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#subgroup 地下城指南 1-20 << Alliance
#subgroup 地下城指南 1-22级 << Horde
#defaultfor Skyborne
#next 9-13级 Zephras Isle

step << Horde
.enabledungeon RFC
#include RestedXP Forever Guide (H)\1-9 Zephras Isle
step << Alliance
#include RestedXP Forever Guide (A)\1-9 Zephras Isle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13级 Zephras Isle
#displayname 9-13级 Skyborne << Alliance
#displayname 9-12级 Skyborne << Horde
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#subgroup 地下城指南 1-20 << Alliance
#subgroup 地下城指南 1-22级 << Horde
#defaultfor Skyborne
#next 13-15级 西部荒野 << Alliance
#next 12-14级 银松森林 << Horde !Hunter
#next 12-16级 荒芜之地 << Horde Hunter

step << Horde
.enabledungeon RFC
#include RestedXP Forever Guide (H)\9-13 Zephras Isle
step << Alliance
#include RestedXP Forever Guide (A)\9-13 Zephras Isle
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 天裔猎人职业任务
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#internal

step
#include RestedXP 无限指南 (联盟)\天裔猎人职业任务
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 天裔德鲁伊职业任务
#displayname 天裔德鲁伊职业任务
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
#include RestedXP 无限指南 (联盟)\天裔德鲁伊职业任务
]])
--Random Stuff
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 杂项
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP 无限指南 (联盟)\杂项
]])
