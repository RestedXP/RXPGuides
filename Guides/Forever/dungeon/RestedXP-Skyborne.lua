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
#next 12-17 The Barrens << Horde Hunter

step << Horde
#include RestedXP Forever Guide (H)\9-13 Zephras Isle
step << Alliance
#include RestedXP Forever Guide (A)\9-13 Zephras Isle
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Hunter Class Quests
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (H) << Horde
#internal

step
#include RestedXP Forever Guide (A)\Skyborne Hunter Class Quests
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Druid Class Quests
#displayname Skyborne Druid Class Quests
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (H) << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
#include RestedXP Forever Guide (A)\Skyborne Druid Class Quests
]])
--Random Stuff
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Random Stuff
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (H) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP Forever Guide (A)\Random Stuff
]])
