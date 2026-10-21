local L = GetLocale() if L and RXP.enabledLocale[L] then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9 Zephras Isle
#displayname 1-9 Skyborne << Alliance
#displayname 1-9 Skyborne << Horde
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (H) << Horde
#subgroup Dungeon Guide 1-20 << Alliance
#subgroup Dungeon Guide 1-22 << Horde
#defaultfor Skyborne
#next 9-13 Zephras Isle

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guide (H)\1-9 Zephras Isle
step << Alliance
    #include RestedXP Forever Guide (A)\1-9 Zephras Isle
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 9-13 Zephras Isle
#displayname 9-13 Skyborne << Alliance
#displayname 9-12 Skyborne << Horde
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (H) << Horde
#subgroup Dungeon Guide 1-20 << Alliance
#subgroup Dungeon Guide 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Westfall << Alliance
#next 12-14 Silverpine Forest << Horde !Hunter
#next 12-16 The Barrens << Horde Hunter

step << Horde
    .enabledungeon RFC
    #include RestedXP Forever Guide (H)\9-13 Zephras Isle
step << Alliance
    #include RestedXP Forever Guide (A)\9-13 Zephras Isle
]])

