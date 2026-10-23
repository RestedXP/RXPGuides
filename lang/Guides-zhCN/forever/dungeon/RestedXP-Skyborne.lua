if GetLocale() ~= "zhCN" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9级 泽风岛
#displayname 1-9级 天裔 << Alliance
#displayname 1-9级 天裔 << Horde
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#subgroup 地下城指南 1-20级 << Alliance
#subgroup 地下城指南 1-22级 << Horde
#defaultfor Skyborne
#next 9-13级 泽风岛

step << Horde
    .enabledungeon RFC
    #include RestedXP无限服指南（部落）\1-9级 泽风岛
step << Alliance
    #include RestedXP无限服指南（联盟）\1-9级 泽风岛
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13级 泽风岛
#displayname 9-13级 天裔 << Alliance
#displayname 9-12级 天裔 << Horde
#group RestedXP 无限 地下城指南 (联盟) << Alliance
#group RestedXP 无限 地下城指南 (部落) << Horde
#subgroup 地下城指南 1-20级 << Alliance
#subgroup 地下城指南 1-22级 << Horde
#defaultfor Skyborne
#next 13-15级 西部荒野 << Alliance
#next 12-14级 银松森林 << Horde !Hunter
#next 12-16级 贫瘠之地 << Horde Hunter

step << Horde
    .enabledungeon RFC
    #include RestedXP无限服指南（部落）\9-13级 泽风岛
step << Alliance
    #include RestedXP无限服指南（联盟）\9-13级 泽风岛
]])

