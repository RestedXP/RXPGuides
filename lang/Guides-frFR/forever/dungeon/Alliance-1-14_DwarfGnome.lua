if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Vallée des Frigères
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step
#include RestedXP Guide Forever (A)\1-5 Vallée des Frigères
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Nain/Gnome);11-12 Quête Marcheur du Vide;12-14 Loch Modan (Nain/Gnome);11-13 Loch Modan (Chasseur)
#defaultfor Dwarf/Gnome

step
#include RestedXP Guide Forever (A)\5-11 Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance !Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Nain/Gnome)
#version 1
#beta
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Nain/Gnome)

step
#include RestedXP Guide Forever (A)\11-12 Elwynn (Nain/Gnome)
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance !Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Nain/Gnome)
#next 13-15 Marche de l’Ouest
#defaultfor Gnome/Dwarf

step
#include RestedXP Guide Forever (A)\12-14 Loch Modan (Nain/Gnome)@LochStart-LochEnd

--Staying Ironforge if 15. Going Stormwind to Westfall if 14 or below.
step
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> |cRXP_BUY_Achetez-lui un|r |T133024:0|t[Tube en bronze] |cRXP_BUY_s'il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
    .xp >15,1
step
    #optional
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Stormwind City
    .xp >15,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins]|cRXP_WARN_ en attendant le Tram vers Hurlevent si nécessaire|r << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    .zone Stormwind City >> Prenez le Tram des profondeurs pour vous rendre à Hurlevent
    .xp >15,1
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r |T133024:0|t[Tube en bronze] |cRXP_BUY_s'il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .xp >15,1
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
    .xp <15,1
    .zoneskip Stormwind City,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre ou prenez une meilleure arme à l'Hôtel des ventes|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp >15,1
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
    .xp >15,1
step << Rogue
    #optional
    #completewith next
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_si vous pouvez vous la permettre|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
    .xp >15,1
step << Mage/Priest/Warlock
    #ah
    #optional
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .xp >15,1
step
    #label Fly2WF
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Chasseur)
#next 13-15 Marche de l’Ouest
#defaultfor Dwarf

step
#include RestedXP Guide Forever (A)\11-13 Loch Modan (Chasseur)@NormalRouteStart-NormalRouteEnd
]])