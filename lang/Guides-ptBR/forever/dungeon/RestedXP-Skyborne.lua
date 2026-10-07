if GetLocale() ~= "ptBR" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 1-14 Zephras Isle
#displayname 1-13 Skyborne << Alliance
#displayname 1-12 Skyborne << Horde
#group RestedXP Forever Guia de Masmorra (A) << Alliance
#group Guia de Masmorras Forever da RestedXP (H) << Horde
#subgroup (WIP) Guia de Masmorra 1-20 << Alliance
#subgroup (WIP) Guia de Masmorras 1-22 << Horde
#defaultfor Skyborne
#next "guia correto de Westfall" << Alliance

step
#include RestedXP Forever Guide (A)\1-14 Zephras Isle
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Skyborne Missões da Classe Caçador
#group RestedXP Forever Guia de Masmorra (A) << Alliance
#group Guia de Masmorras Forever da RestedXP (H) << Horde
#internal

step
#include RestedXP Forever Guide (A)\Skyborne Hunter Class Quests
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Skyborne Missões da Classe Druida
#displayname Skyborne Missões da Classe Druida
#group RestedXP Forever Guia de Masmorra (A) << Alliance
#group Guia de Masmorras Forever da RestedXP (H) << Horde
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
#beta
#name Coisas Aleatórias
#group RestedXP Forever Guia de Masmorra (A) << Alliance
#group Guia de Masmorras Forever da RestedXP (H) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP Forever Guide (A)\Random Stuff
]])
