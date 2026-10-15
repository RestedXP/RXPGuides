if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 1-14 Isla de Zephras
#displayname 1-13 Cielonato << Alliance
#displayname 1-12 Cielonato << Horde
#group RestedXP Forever Guía de Mazmorras (A) << Alliance
#group RestedXP Forever Guía de Mazmorras (H) << Horde
#subgroup (En progreso) Guía de mazmorras 1-20 << Alliance
#subgroup (En progreso) Guía de mazmorras 1-22 << Horde
#defaultfor Skyborne
#next "guía correcta de páramos de poniente" << Alliance

step
#include RestedXP Guía Forever (A)\1-14 Isla de Zephras
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Cielonato: misiones de clase de cazador
#group RestedXP Forever Guía de Mazmorras (A) << Alliance
#group RestedXP Forever Guía de Mazmorras (H) << Horde
#internal

step
#include RestedXP Guía Forever (A)\Cielonato: misiones de clase de cazador
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Cielonato: misiones de clase de druida
#displayname Cielonato: misiones de clase de druida
#group RestedXP Forever Guía de Mazmorras (A) << Alliance
#group RestedXP Forever Guía de Mazmorras (H) << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
#include RestedXP Guía Forever (A)\Cielonato: misiones de clase de druida
]])
--Random Stuff
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Cosas Aleatorias
#group RestedXP Forever Guía de Mazmorras (A) << Alliance
#group RestedXP Forever Guía de Mazmorras (H) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP Guía Forever (A)\Cosas Aleatorias
]])
