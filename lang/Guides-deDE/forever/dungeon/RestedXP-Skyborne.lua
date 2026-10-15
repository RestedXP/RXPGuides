if GetLocale() ~= "deDE" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 1-14 Die Insel Zephras
#displayname 1-13 Himmelsgeborene << Alliance
#displayname 1-12Himmelsgeborene << Horde
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#subgroup (WIP) Dungeon Guide 1-20 << Alliance
#subgroup (WIP) Dungeon Guide 1-22 << Horde
#defaultfor Skyborne
#next "Korrekter Westfall-Guide" << Alliance

step
#include RestedXP Forever Guide (A)\1-14 Die Insel Zephras
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Himmelsgeborene-Jäger-Klassenquests
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#internal

step
#include RestedXP Forever Guide (A)\Himmelsgeborene Jäger Klassenquest
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Himmelsgeborene-Druiden-Klassenquests
#displayname Himmelsgeborene-Druiden-Klassenquests
#group RestedXP Forever Dungeon Guide (A) << Alliance
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
#beta
#name Zufälliges Zeug
#group RestedXP Forever Dungeon Guide (A) << Alliance
#group RestedXP Forever Dungeon Guide (A) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP Forever Guide (A)\Verschiedenes
]])
