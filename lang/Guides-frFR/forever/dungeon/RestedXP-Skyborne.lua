if GetLocale() ~= "frFR" then return end
-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name 1-14 Île de Zéphras
#displayname 1-13 Éolide << Alliance
#displayname 1-12 Éolide << Horde
#group Guide de donjon Forever RestedXP (A) << Alliance
#group Guide de donjon Forever RestedXP (H) << Horde
#subgroup (En développement) Guide de donjon 1-20 << Alliance
#subgroup (En développement) Guide de donjon 1-22 << Horde
#defaultfor Skyborne
#next "guide correct de la Marche de l'Ouest" << Alliance

step
#include RestedXP Guide Forever (A)\1-14 Île de Zéphras
]])


--Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Quêtes de classe de Chasseur Éolide
#group Guide de donjon Forever RestedXP (A) << Alliance
#group Guide de donjon Forever RestedXP (H) << Horde
#internal

step
#include RestedXP Guide Forever (A)\Quêtes de classe de Chasseur Éolide
]])
--Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Quêtes de classe de Druide Éolide
#displayname Quêtes de classe de Druide Éolide
#group Guide de donjon Forever RestedXP (A) << Alliance
#group Guide de donjon Forever RestedXP (H) << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
#include RestedXP Guide Forever (A)\Quêtes de classe de Druide Éolide
]])
--Random Stuff
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
#name Divers
#group Guide de donjon Forever RestedXP (A) << Alliance
#group Guide de donjon Forever RestedXP (H) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
#include RestedXP Guide Forever (A)\Divers
]])
