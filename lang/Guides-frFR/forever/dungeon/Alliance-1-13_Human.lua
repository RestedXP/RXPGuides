if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 1-6 Comté-du-nord
#version 1
#beta
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Forêt d'Elwynn


step
#include RestedXP Guide Forever (A)\1-6 Comté-du-nord
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Forêt d'Elwynn
#next 11-13 Loch Modan
#defaultfor Human

step
#include RestedXP Guide Forever (A)\6-11 Forêt d'Elwynn
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#next 13-15 Marche de l’Ouest;15-16 Salle des Thanes
#defaultfor Human

step
    #include RestedXP Guide Forever (A)\11-13 Loch Modan@NormalRouteStart-NormalRouteEnd

--If they are 15 they will fly straight to IF and skip all of Westfall. If 14 or below Hearth to SW and then continue to Westfall
--Most likely won't be 15 yet
step
    #optional
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
    .xp <15,1
step << Priest/Paladin/Mage
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
    .xp <15,1
step << Warlock/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .xp <15,1
step << Warrior/Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
    .xp <15,1

step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Hurlevent
    .zoneskip Stormwind City
    .zoneskip Westfall
    .xp >15,1
]])