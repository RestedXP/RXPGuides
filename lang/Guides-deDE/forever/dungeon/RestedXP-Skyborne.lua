if GetLocale() ~= "deDE" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9 Insel Zephras
#displayname 1-9 Himmelsgeborene << Alliance
#displayname 1-9 Skyborne << Horde
#group RestedXP Forever Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeonführer (H) << Horde
#subgroup Dungeonführer 1-20 << Alliance
#subgroup Dungeonführer 1-22 << Horde
#defaultfor Skyborne
#next 9-13 Zephras Isle

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Route (H)\1-9 Zephras Isle
step << Alliance
    #include RestedXP Forever Route (A)\1-9 Zephras Isle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13 Zephras Isle
#displayname 9-13 Skyborne << Alliance
#displayname 9-12 Skyborne << Horde
#group RestedXP Forever Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeonführer (H) << Horde
#subgroup Dungeonführer 1-20 << Alliance
#subgroup Dungeonführer 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Westfall << Alliance
#next 12-14 Silberwald << Horde !Hunter
#next 14-18 Das Brachland << Horde Hunter

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Route (H)\9-13 Zephras Isle
step << Alliance
    #include RestedXP Forever Route (A)\9-13 Zephras Isle
]])

