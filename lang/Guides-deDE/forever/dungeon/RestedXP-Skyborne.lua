if GetLocale() ~= "deDE" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-9 Zephras Isle
#displayname 1-9 Skyborne << Alliance
#displayname 1-9 Skyborne << Horde
#group RestedXP Forever Dungeon Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#subgroup Dungeon Dungeonführer 1-20 << Alliance
#subgroup Dungeon Dungeonführer 1-22 << Horde
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
#group RestedXP Forever Dungeon Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#subgroup Dungeon Dungeonführer 1-20 << Alliance
#subgroup Dungeon Dungeonführer 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Westfall << Alliance
#next 12-14 Silberwald << Horde !Hunter
#next 12-16 Das Brachland << Horde Hunter

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
#name Himmelsgeborene-Jäger-Klassenquests
#group RestedXP Forever Dungeon Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#internal

step
#include RestedXP Forever Guide (A)\Himmelsgeborene Jäger Klassenquest
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Himmelsgeborene-Druiden-Klassenquests
#displayname Himmelsgeborene-Druiden-Klassenquests
#group RestedXP Forever Dungeon Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
#include RestedXP Forever Guide (A)Himmelsgeborene Druiden Klassenquest
]])
--Random Stuff
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Zufälliges Zeug
#group RestedXP Forever Dungeon Dungeonführer (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP Forever Guide (A)\Verschiedenes
]])
