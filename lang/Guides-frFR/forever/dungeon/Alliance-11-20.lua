if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance NightElf
#name 11-16 Sombrivage/Loch Modan
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Salle des Thanes

step
    #include RestedXP Guide Forever (A)\14-16 Sombrivage@WashedA-IFExit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    >>|cRXP_WARN_Si vous avez un Mage dans votre groupe, liez plutôt votre Pierre de foyer à Comté-du-Lac|r
    .goto Ironforge,18.10,51.60
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
step
    #completewith next
    .zone Dun Morogh >> Voyagez vers Dun Morogh
step
    .goto Dun Morogh,59.9,49.5,30,0
    .goto Dun Morogh,61.2,47.2,15,0
    .goto Dun Morogh,62.1,47.3,20 >>Montez la rampe vers |cRXP_ENEMY_Vagash|r
step
    #completewith next
    +Emmenez (kite) |cRXP_ENEMY_Vagash|r vers |cRXP_FRIENDLY_Rudra Amberstill|r
    >>|cRXP_WARN_Ne vous approchez pas de lui ou il lancera|r |T135848:16|t[Rugissement glacial] |cRXP_WARN_qui vous étourdira pendant 3 secondes|r
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh,63.1,49.8
    .target Rudra Amberstill
    .accept 314 >>Acceptez la quête Protection du troupeau
step
    >>Emmenez (kite) |cRXP_ENEMY_Vagash|r vers le |cRXP_FRIENDLY_Montagnard de Dun Morogh|r
    >>|cRXP_WARN_Infligez au moins 50% des dégâts|r
    .goto Dun Morogh,62.8,54.6,10,0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Rendez la quête Protection du troupeau
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .accept 96392 >> Acceptez la quête Le guet de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Parlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r pour voir sa double vie
    >>|cRXP_WARN_Vous pouvez sortir de sa Double vue dès que l'objectif se complète|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Appuyez sur Echap pour sortir de la Double vue|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    >>|cRXP_WARN_Vous pouvez sortir de sa Double vue dès que l'objectif se complète|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    >>|cRXP_WARN_Appuyez sur Echap pour sortir de la Double vue|r
    .turnin 96392 >> Rendez la quête Le guet de Farsen
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tuez les |cRXP_ENEMY_Espions Sombrefers|r. Dépouillez-les pour la |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r]
    .use 274268 >>|cRXP_WARN_Utilisez la|r |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r] |cRXP_WARN_pour lancer une quête|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acceptez la quête La carte souterraine
    .mob Dark Iron Spy
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .turnin 96391 >> Rendez la quête La carte souterraine
    .accept 96393 >> Acceptez la quête Incursion dans le Vieux Forgefer
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .turnin 96390 >> Rendez la quête Étouffer le mal dans l’œuf
    .target Earthseer Farsen
step
    #include RestedXP Guide Forever (A)\14-16 Sombrivage@LochEnter-LochEnd
step << NightElf Druid
    #completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
	.goto Moonglade,44.2,45.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva|r
	.fly Teldrassil >>Volez jusqu'au village de Rut'theran
	.target Silva
step << Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
	.goto Darnassus,35.375,8.405
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
	.accept 26 >>Acceptez la quête Une leçon à apprendre
	.trainer >> Apprenez vos sorts de classe
	.target Mathrengyl Bearwalker
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >> Rendez la quête Une leçon à apprendre
    .accept 29 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Nagez au lac Élune’ara
    >>Ouvrez le |cRXP_PICK_Conteneur de babioles|r. Récupérez le |T134125:0|t[Colifichet du sanctuaire]
    >>|cRXP_WARN_Il peut apparaître à différents endroits sous l'eau|r.
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>Utilisez le [Colifichet du sanctuaire] à l'arbre de l'Autel de Remulos
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Rendez la quête L'épreuve du lac
    .accept 272 >> Acceptez la quête L'épreuve du lion de mer
    .target Tajarri
step << NightElf
    .hs >>Utilisez votre Pierre de foyer pour revenir à Ironforge
    .zoneskip Ironforge
step << NightElf Priest/NightElf Druid
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Achetez les objets suivants si vous pouvez vous les permettre :|r
    >>|T134711:0|t[Huile de sorcier mineure] |cRXP_WARN_et|r |T133906:0|t[Sagerelle fumée]
    >>|cRXP_WARN_Regardez aussi si vous pouvez trouver une|r |T132317:0|t[Baguette] |cRXP_WARN_avec un DPS important que vous pouvez équiper maintenant/bientôt|r << Priest
    >>|cRXP_WARN_Elles vous procureront une grande augmentation de vos dégâts dans les premiers niveaux. Si vous ne désirez pas le faire ou ne pouvez pas le faire, passez cette étape.|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << NightElf Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite
step << NightElf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grandprêtre Rohan|r  
    .trainer >> Apprenez vos sorts de classe
    .target High Priest Rohan
step << NightElf Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
step << NightElf Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step << NightElf
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike










-- step
--     .goto 1453/0,673.58,-8867.76
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
--     .home >> Set your Hearthstone to Stormwind City
--     .target Innkeeper Allison
--     .bindlocation 16509
-- step
--     #ah
--     .goto 1453/0,660.28,-8814.55
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
--     >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall shortly:|r
--     >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
--     >>|T133972:0|t[Stringy Vulture Meat]
--     >>|T133884:0|t[Murloc Eye]
--     >>|T135997:0|t[Goretusk Snout]
--     >>|T134185:0|t[Okra]
--     >>|T134341:0|t[Goretusk Liver]
--     >>|T4548890:0|t[Golem Isospring]
--     >>|T132995:0|t[Harvester Gyrostabilizer]
--     .collect 729,3,38,1 -- Stringy Vulture Meat (3)
--     .collect 730,3,38,1 -- Murloc Eye (3)
--     .collect 731,3,38,1 -- Goretusk Snout (3)
--     .collect 732,3,38,1 -- Okra (3)
--     .collect 723,8,22,1 -- Goretusk Liver (8)
--     .collect 255007,14,92909,1 -- Golem Isospring (14)
--     .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
--     .target Auctioneer Jaxon
-- step
--     .goto 1453/0,490.03,-8835.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
--     .fp Stormwind >> Get the Stormwind Flight Path
--     .target Dungar Longdrink
-- step
--     #completewith SaldeanVendor
--     #optional
--     .goto 1429/0,875.96,-9814.400
--     .zone Westfall >> Travel to Westfall
-- step
--     .goto 1436/0,918.42,-9851.50
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
--     .accept 64 >> Accept The Forgotten Heirloom
--     .target Farmer Furlbrow
-- step
--     .goto 1436/0,919.47,-9853.13
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
--     .accept 36 >> Accept Westfall Stew
--     .accept 151 >> Accept Poor Old Blanchy
--     .target Verna Furlbrow
-- step
--     #completewith SalmaS
--     .goto 1436/0,1055.27,-10128.70,65 >> Travel to Saldean's Farm
-- step
--     .goto 1436/0,1055.27,-10128.70
--     .target Farmer Saldean
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
--     .accept 109 >>Accept Report to Gryan Stoutmantle
-- step
--     #label SalmaS
--     .goto 1436/0,1042.67,-10111.670
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .turnin 36 >> Turn in Westfall Stew
--     .target Salma Saldean
--     .accept 38 >> Accept Westfall Stew
-- step << Gnome/Dwarf/NightElf
--     #completewith next
--     .goto 1436/0,1045.12,-10508.80
--     .target Gryan Stoutmantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
--     .turnin 109 >> Turn in Report to Gryan Stoutmantle
--     .isOnQuest 109
-- step
--     .goto 1436/0,1045.12,-10508.80
--     .target Gryan Stoutmantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
--     .accept 12 >> Accept The People's Militia
-- step
--     .goto 1436/0,1041.97,-10511.13
--     .target Captain Danuvin
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
--     .accept 102 >> Accept Patrolling Westfall
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
--     .target Scout Galiaan
--     .goto 1436/0,1126.67,-10636.670
--     .accept 153 >> Accept Red Leather Bandanas
-- step
--     .goto 1436/0,1166.57,-10653.23
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
--     .vendor >>|cRXP_BUY_Buy food/water if needed|r
-- 	.target Innkeeper Heather
-- step
--     .goto 1436/0,1179.800,-10635.601
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
--     .target Alba Fairmoon::253092
--     .accept 92742 >>Accept Testing the Wells
--     .accept 92744 >>Accept Murloc Gills
-- step
-- 	#completewith GnollPaws
--     >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
--     >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
--     .complete 151,1 --Handful of Oats (8)
-- step
--     #completewith TravelCompass
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #completewith TravelCompass
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     #label TravelCompass
--     .isOnQuest 399
--     .goto 1436/0,1602.67,-10629.67,75 >> Travel to the Alexston's Farmstead
--     >>|cRXP_WARN_Work on completing the other quest objectives as you move there|r
-- step
--     #sticky
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r located on any of the fields as you run by them
--     >>Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
--     .mob Harvest Watcher
--     .collect 732,3,38,1 --Okra (3)
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     .goto 1436/0,1748.27,-10672.13
--     >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
--     .complete 399,1 --A Simple Compass (1)
--     .isOnQuest 399
-- step
--     .goto 1436/0,1404.200,-10290.900
--     .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Molsen Farm well|r
--     .complete 92742,2 --|1/1 Molsen Farm Water Sample
-- step
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     .goto 1436/0,1266.67,-9927.33,75 >> Travel to the Jansen Stead, |cRXP_WARN_work on the other quest objectives as you move there|r
-- step
-- 	#label bennytime
--     .goto 1436/0,1289.77,-9849.63
--     >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
--     >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
-- 	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
--     .complete 64,1 --Furlbrow's Pocket Watch
-- step
--     .goto 1436/0,1192.12,-9641.73,60,0
--     .goto 1436/0,1042.67,-9619.33,60,0
--     .goto 1436/0,1192.12,-9641.73,60,0
--     .goto 1436/0,1042.67,-9619.33,60,0
--     .goto 1436/0,1192.12,-9641.73
--     .goto 1436/0,1042.67,-9619.33,0
--     >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r and |cRXP_LOOT_Gills|r
--     .collect 730,3,38,1 --Murloc Eye (3)
--     .complete 92744,1 -- Longshore Murloc Gills 7/7
--     .mob Murloc Raider
--     .mob Murloc Coastrunner
-- step
--     .goto 1436/0,1035.300,-9835.101
--     .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Jansen Stead well|r
--     .complete 92742,1 --|1/1 Jansen Stead Water Sample
-- step
--     .goto 1436/0,1004.87,-9716.87,60,0
--     .goto 1436/0,1013.62,-9861.53,60,0
--     .goto 1436/0,1192.12,-10175.13,60,0
--     .goto 1436/0,1019.57,-10204.30,60,0
--     .goto 1436/0,1013.62,-9861.53
--     >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
-- 	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
-- 	.complete 151,1 --Handful of Oats (8)
-- step
--     #label FurlbrowFarm
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
--     .turnin 64 >> Turn in The Forgotten Heirloom
--     .target +Farmer Furlbrow
--     .goto 1436/0,918.42,-9851.50
--     .turnin 151 >> Turn in Poor Old Blanchy
--     .target +Verna Furlbrow
--     .goto 1436/0,919.47,-9853.13
-- step
--     #completewith SaldeanVendor
-- 	.goto 1436/0,1055.27,-10128.70
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
--     .vendor >> |cRXP_BUY_Vendor trash|r
--     >>|cRXP_WARN_Do NOT sell|r |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] |cRXP_WARN_or|r |T133972:0|t[Stringy Vulture Meat]
-- 	.target Farmer Saldean
-- step
--     #optional
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
--     .isQuestComplete 38
--     .target Salma Saldean
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     #optional
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
--     .isQuestComplete 38
--     .target Salma Saldean
-- step
--     .isQuestAvailable 38
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,80,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1460.22,-10224.83,60,0
--     .goto 1436/0,1238.67,-9907.73
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
--     .collect 732,3,38,1 --Okra (3)
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     .isQuestTurnedIn 38
--     #label HarvestW
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,80,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1460.22,-10224.83,60,0
--     .goto 1436/0,1238.67,-9907.73
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     .goto 1436/0,1179.52,-10382.57,75,0
--     .goto 1436/0,1138.22,-10474.97,75,0
--     .goto 1436/0,860.67,-10462.83,75,0
--     .goto 1436/0,904.07,-10038.87,75,0
--     .goto 1436/0,1104.62,-9848.000,75,0
--     .goto 1436/0,1298.52,-10028.13,75,0
--     .goto 1436/0,1340.52,-10401.93,75,0
--     .goto 1436/0,1111.97,-10342.20
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
--     .collect 723,8,22,1 --Goretusk Liver (8)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #label SaldeanVendor
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
-- 	.target Salma Saldean
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     #completewith next
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     .goto 1436/0,1324.200,-10490.400
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
-- 	.target Gryan Stoutmantle
--     .goto 1436/0,1045.12,-10508.80
--     .turnin 12 >> Turn in The People's Militia
-- step
-- 	.xp <14,1
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
-- 	.target Gryan Stoutmantle
--     .goto 1436/0,1045.12,-10508.80
--     .accept 65 >> Accept The Defias Brotherhood
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
-- 	.target Scout Galiaan
--     .goto 1436/0,1126.67,-10636.670
--     .turnin 153 >> Turn in Red Leather Bandanas
-- step
--     .goto 1436/0,1179.800,-10635.601
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
--     .target Alba Fairmoon::253092
--     .turnin 92742 >>Turn in Testing the Wells
--     .turnin 92744 >>Turn in Murloc Gills
-- step
--     .hs >> Hearth to Stormwind
--     .bindlocation 16509,1
--     .cooldown item,6948,>2,1
--     .zoneskip Stormwind City
--     .zoneskip Darkshore
-- step
--     #completewith DeeprunEnter
--     .goto 1436/0,1037.42,-10628.27
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
--     .fly Stormwind >> Fly to Stormwind
--     .target Thor
--     .zoneskip Stormwind City
--     .zoneskip Darkshore

-- step << Rogue
--     #ah
--     .goto 1453/0,609.63,-8787.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
--     .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her or something better from the Auction House and equip it your off-hand|r
--     .money <0.3815
--     .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
--     .target Marda Weller
-- step << Rogue
--     #ssf
--     .goto 1453/0,609.63,-8787.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
--     .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her|r
--     .money <0.3815
--     .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
--     .target Marda Weller
-- step << Rogue
--     .goto 1453/0,377.47,-8752.39
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
--     .train 1758,1
--     .trainer >> Train your class spells
--     .target Osborne the Night Man
--     .xp <16,1
-- step << Warrior
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
--     .goto 1453/0,358.25,-8728.28,15,0
--     .goto 1453/0,302.6,-8685.53,15,0
-- 	.goto 1453/0,323.3,-8689.29
--     .train 1160,1
--     .trainer >> Train your class spells
--     .target Wu Shen
--     .target Ilsa Corbin
--     .xp <16,1
-- step << Hunter
--     .goto 1453/0,552.78,-8415.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
--     .trainer >> Train your class spells
--     .target Einris Brightspear
--     .xp <16,1
-- step << Druid
--     .goto 1453/0,1347.6192,-8591.2168
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theridran|r
--     .trainer >>Train your class spells
-- 	.target Theridran
--     .xp <16,1
-- step
--     .goto 1453/0,719.67,-8550.30
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
--     .turnin 399 >> Turn in Humble Beginnings
--     .target Baros Alexston
--     .isQuestComplete 399
-- step << Priest
--     #optional
--     #completewith next
--     .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
-- step << Priest
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
--     .goto 1453/0,862.89,-8519.61
--     .trainer >> Train your class spells
--     .train 8122,1
--     .target Brother Joshua
--     .xp <16,1
-- step
--     #optional
--     #label endOfTheGuide
-- step
--     #label DeeprunEnter
--     #completewith next
--     .goto 1453/0,562.300,-8385.300,20,0
--     .goto 1453/0,522.000,-8352.101
--     .subzone 2257 >>Enter the Deeprun Tram
--     .zoneskip Ironforge
--     .zoneskip Loch Modan
--     .zoneskip Dun Morogh
-- step
--     .zone Ironforge >> Take the tram to Ironforge
--     .zoneskip Loch Modan
--     .zoneskip Dun Morogh


]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !NightElf
#name 13-15 Marche de l’Ouest 
#displayname 14-15 Marche de l’Ouest << Gnome/Dwarf !Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#next 15-17 Sombrivage

step
    #optional
    .maxlevel 14,endOfTheGuide

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre très bientôt des quêtes plus rapidement à la Marche de l'Ouest:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    -->>|T4548890:0|t[Golem Isospring]
    -->>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    --.collect 255007,14,92909,1 -- Golem Isospring (14)
    --.collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon

step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >> Rendez la quête Dungar Grangodet
    .accept 6285 >> Acceptez la quête Aller voir Lewis
    .target Dungar Longdrink

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest << !NightElf
    .fp Stormwind >> Apprenez le chemin de vol de Stormwind << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Voyagez à la Ferme des Saldean
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .accept 9 >> Acceptez la quête Les champs de mort
    .accept 109 >>Acceptez la quête Aller voir Gryan Roidemantel << !Human
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .target Salma Saldean
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >> Rendez la quête Aller voir Lewis
step << !Human
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Acceptez la quête La milice du peuple
step << skip
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Heather|r
    .vendor >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alba Lunepâle::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Acceptez la quête Tester les puits
    .accept 92744 >>Acceptez la quête Des branchies de Murloc
step
    #optional
    .abandon 102 >> Abandonnez la quête Patrouilles dans la marche de l'Ouest
    >>|cRXP_WARN_Vous ne ferez pas cette quête dans ce guide|r
step
	#completewith MurlocEyeGills
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Tuez les |cRXP_ENEMY_Jeunes Broche-tripess|r et les |cRXP_ENEMY_Jeunes déchireurs|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de vautour|r, leur |cRXP_LOOT_Groins|r et leur |cRXP_LOOT_Foies|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |T133694:0|t|cRXP_LOOT_Masques en cuir rouge|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Allez à la ferme des Alexston
    >>|cRXP_WARN_Avancez sur les autres quêtes sur votre trajet|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozwin Pignondefer::253395|r dans la grange
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acceptez la quête La moisson des moissonneurs
step
    #sticky
    #completewith bennytime
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r dans les champs quand vous passez à côté
    >>Dépouillez-les pour leur |cRXP_LOOT_Okras|r et leur |cRXP_LOOT_Flasques d'huile|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Ouvrez le |cRXP_PICK_Coffre d'Alexston|r. Dépouillez-le pour |cRXP_LOOT_Une simple boussole|r
    >>|cRXP_WARN_Évitez les mobs devant le bâtiment brûlé. Ramassez-le à l'arrière, à côté de la cheminée. Utilisez la cheminée pour LoS les sorts de |cRXP_ENEMY_Pillagers|r si nécessaire|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
    >>Tuez les |cRXP_ENEMY_Jeunes Broche-tripess|r et les |cRXP_ENEMY_Jeunes déchireurs|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de vautour|r, leur |cRXP_LOOT_Groins|r et leur |cRXP_LOOT_Foies|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |T133694:0|t|cRXP_LOOT_Masques en cuir rouge|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Dirigez-vous à la ferme des Jansen, |cRXP_WARN_avancez d'autres objectifs de quête sur la route|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Ouvrez la |cRXP_PICK_Penderie de Froncebouille|r. Récupérez la |cRXP_LOOT_Montre de Froncebouille|r
    >>|cRXP_WARN_Vous pouvez intéragir avec la |cRXP_PICK_Penderie de Froncebouille|r depuis l'extérieur si vous orientez votre caméra correctement|r
	>>|cRXP_WARN_Faites attention à |cRXP_ENEMY_Benny Blanco|r. Il frappe fort|r
    .complete 64,1 --Furlbrow's Pocket Watch
step << skip
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnolls Rivepattes|r et les |cRXP_ENEMY_Eclaireurs Rivepattes|r. Dépouillez-les pour leurs |T134297:0|t|cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Utilisez l'|r |T236996:0|t[Échantillon d’eau du puits] |cRXP_WARN_au puits de la ferme des Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    #label MurlocEyeGills
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Tuez les |cRXP_ENEMY_Ecumeurs murlocs|r et les |cRXP_ENEMY_Cours-la-côtes murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil|r et leurs |cRXP_LOOT_Branchies|r
    >>|cRXP_WARN_Si vous n'avez pas beaucoup de |cRXP_LOOT_Gills|r au moment où vous aurez terminé |cRXP_LOOT_Les regards|r, passez cette étape|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step << skip
    #label GnollPaws
    .goto 1436/0,1042.67,-9715.0,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1412.62,-9720.83,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1412.62,-9720.83
    .goto 1436/0,1517.97,-9743.000,0
    .goto 1436/0,1184.07,-9745.80,0
    .goto 1436/0,1028.32,-9710.330,0
    >>Tuez les |cRXP_ENEMY_Gnolls Rivepattes|r et les |cRXP_ENEMY_Eclaireurs Rivepattes|r. Dépouillez-les pour leurs |T134297:0|t|cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
	>>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .vendor >> |cRXP_BUY_Vendez tout ce dont nous n'avez pas besoin|r
    >>|cRXP_WARN_Ne vendez PAS les |T133884:0|t[Yeux de murloc], les |T135997:0|t[Groins de broche-tripes], les |T134341:0|t[Foies de broche-tripes] |rou|cRXP_WARN_ la |T133972:0|t[Viande filandreuse de vautour]|r
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Rendez la quête Les champs de mort
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozwin Pignondefer::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acceptez la quête Récolter les récolteurs
    .turnin 92909 >>Rendez la quête La moisson des moissonneurs
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .isQuestComplete 38
    .target Salma Saldean
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r. Dépouillez-les pour leur |cRXP_LOOT_Okras|r et leur |cRXP_LOOT_Flasques d'huile|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r. Dépouillez-les pour leur |cRXP_LOOT_Flasques d'huile|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Rendez la quête Les champs de mort
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozwin Pignondefer::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acceptez la quête La moisson des moissonneurs
    .turnin 92909 >>Rendez la quête La moisson des moissonneurs
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Tuez les |cRXP_ENEMY_Jeunes Broche-tripess|r et les |cRXP_ENEMY_Jeunes déchireurs|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de vautour|r, leur |cRXP_LOOT_Groins|r et leur |cRXP_LOOT_Foies|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Rendez la quête Les champs de mort
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozwin Pignondefer::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acceptez la quête La moisson des moissonneurs
    .turnin 92909 >>Rendez la quête La moisson des moissonneurs
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |T133694:0|t|cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Il s'agit d'une zone de respawn dynamique, ce qui veut dire que si vous en tuez assez, ils continueront à réapparaître|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Utilisez l'|r |T236996:0|t[Échantillon d’eau du puits] |cRXP_WARN_au puits de la ferme des Molsen|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    .isOnQuest 153
    .goto 1436/0,1324.200,-10490.400
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |T133694:0|t|cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Il s'agit d'une zone de respawn dynamique, ce qui veut dire que si vous en tuez assez, ils continueront à réapparaître|r
    >>|cRXP_WARN_Si vous êtes encore très loin derrière sur |T133694:0|t|cRXP_LOOT_Les masques en cuir rouge|r et avez tué tous les |cRXP_ENEMY_Defias|r requis, abandonnez la quête|r [Les masques en cuir rouge]
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #optional
    .goto 1436/0,1324.200,-10490.400
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |T133694:0|t|cRXP_LOOT_Masques en cuir rouge|r
    >>|cRXP_WARN_Il s'agit d'une zone de respawn dynamique, ce qui veut dire que si vous en tuez assez, ils continueront à réapparaître|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Rendez la quête La milice du peuple
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acceptez la quête La Confrérie défias
step
    #optional
    .isQuestComplete 102
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Rendez la quête Patrouilles dans la marche de l'Ouest
step
    .isQuestComplete 153
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Rendez la quête Les masques en cuir rouge
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alba Lunepâle::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Rendez la quête Tester les puits
    .turnin 92744 >>Rendez la quête Des branchies de Murloc
    .isQuestComplete 92744
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alba Lunepâle::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Rendez la quête Tester les puits
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Achetez-lui une|r |T135343:0|t[Cimeterre] |cRXP_BUY_ou quelque chose de mieux à l'Hôtel des ventes et équipez-la en main gauche|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Achetez une|r |T135343:0|t[Cimeterre] |cRXP_BUY_au marchand|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .train 1758,1
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Achetez-lui une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_. Ils servent pour une quête donnant 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    >>|cRXP_WARN_Si vous venez juste d'apprendre vos sorts, passez cette étape|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theridran|r
    .trainer >>Apprenez vos sorts de classe
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith train19742 << Paladin
    #completewith next << Priest
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Human Paladin
    .isOnQuest 1780
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Rendez la quête Le Tome de divinité
    .target Duthorian Rall
step << Paladin
    #label train19742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Apprenez vos sorts de classe
    .train 19742,1
    .target Arthur the Faithful
step
    #optional
    #sticky
    .abandon 153 >> Abandonnez la quête Les masques en cuir rouge si vous ne l'avez pas terminée
step
    #optional
    #sticky
    .abandon 92744 >> Abandonnez la quête Murloc Gills si vous ne l'avez pas terminée
step
    #optional
    #label endOfTheGuide

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>|cRXP_WARN_Votre compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_doit être de 10 pour la rendre à Sombrivage la quête de la|r |T133972:0|t[Viande de trotteur]
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable des manifestes Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acceptez la quête La faveur de Philmor
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acceptez la quête L'heure de la pêche
    .turnin 95065 >>Rendez la quête L'heure de la pêche
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En attendant le Bateau sur le quai:|r
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En attendant le Bateau sur le quai:|r
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En attendant le Bateau sur le quai:|r
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !NightElf
#name 15-17 Sombrivage
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Salle des Thanes

step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Montez la rampe vers |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Acceptez Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 98025 >>Acceptez la quête ON RECHERCHE : Jai'vhanel
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto 1439/1,272.54,5255.27,0
    .goto 1439/1,271.23,4902.88,0
    .goto 1439/1,438.91,5131.69,0
    .goto 1439/1,272.54,5255.27,40,0
    .goto 1439/1,271.23,4902.88,40,0
    .goto 1439/1,438.91,5131.69,40,0
    >>|cRXP_WARN_Envoyez votre familier attaquer un |cRXP_ENEMY_Ours des chardons|r. Dès que votre familier est étourdi par l' |cRXP_ENEMY_Ours des chardons|r, abandonnez votre familier et commencez à le dompter|r
    .train 16828 >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoiser la bête] |cRXP_WARN_sur un |cRXP_ENEMY_Ours des chardons|r pour le dompter|r
    .target Thistle Bear
    .train 17255,1 --skips if they also already know bite r2
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    >>|cRXP_WARN_Même si certains d'entre eux sont gris, complétez quand même la quête comme elle fait partie d'une suite|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Ouvrez  |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1 --Sea Creature Bones (1)



step << Druid
    #ah
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Montez votre|r |T136065:0|t[Herboristerie] |cRXP_WARN_à un niveau de 15 pour vous permettre de récolter des|r [Terrestrines] |cRXP_WARN_pour une quête de classe importante plus tard. Vous pourrez ensuite abandonner le métier|r
    >>Si vous préférez acheter 5 [Terrestrine] à l'Hôtel des Ventes plus tard, passez cette étape
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>Montez votre [Herboristerie] à un niveau de 15 pour être capable de récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez l'oublier plus tard
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith CliffspringEnd
    #requires GatheringQ
    >>|cRXP_WARN_Cueillez 5 [Terrestrine] à l'aide de votre [Herboristerie] ou plus rarement dans les |cRXP_PICK_Battered Chests|r pour une quête de classe à venir|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1



step
    #completewith next
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur l'un des|r |cRXP_ENEMY_Ours des chardons enragé|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto 1439/1,393.72,5993.24
    >>Courez vers le bord du Camp Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur l'un des|r |cRXP_ENEMY_Ours des chardons enragé|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
    .accept 1001 >> Acceptez la quête Bigobox 411
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Rendez Washed Ashore
    .accept 4681 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Allez au bout du quai, puis sautez dans l'eau
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivage|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil de batteur|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Ouvrez le |cRXP_PICK_Squelette de tortue de mer|r. Dépouillez-la pour ses |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target Terenthis
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r à l'intérieur
    .vendor 4182 >> |cRXP_BUY_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_ou de|r |T133634:0|t[Sacoches marrons en cuir] |cRXP_BUY_dont vous avez besoin|r
    >>|cRXP_BUY_Achetez-lui des|r |T132382:0|t[Flèches aiguisées] |cRXP_BUY_ou des|r |T132384:0|t[Balles lourdes] |cRXP_BUY_ jusqu'à ce que votre Carquois/Giberne soit plein|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .accept 954 >> Acceptez la quête Bashal'Aran
    .accept 958 >> Acceptez la quête Les outils des Bien-nés << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .accept 954 >> Acceptez la quête Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivage|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil de batteur|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FAITES ATTENTION A VOTRE BARRE DE SOUFFLE==
    >>Nagez sous l'eau jusqu'à la partie extérieure de l'arrière du bateau
    >>|cRXP_WARN_À l'endroit indiqué par la flèche, appuyez sur votre touche "Interagir avec la cible" pour y ramasser le |cRXP_LOOT_Silver Dawning's Lockbox|r depuis l'extérieur du bateau|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire, nagez sous l'eau jusqu'à l'étage inférieur du bateau puis ramassez le |cRXP_LOOT_Silver Dawning's Lockbox|r directement à l'intérieur de celui-ci|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>==FAITES ATTENTION A VOTRE BARRE DE SOUFFLE==
    >>Nagez sous l'eau jusqu'à la partie extérieure de l'arrière du bateau
    >>|cRXP_WARN_À l'endroit indiqué par la flèche, appuyez sur votre touche "Interagir avec la cible" pour y ramasser le |cRXP_LOOT_Mist Veil's Lockbox|r depuis l'extérieur du bateau|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire, nagez sous l'eau jusqu'à l'étage inférieur du bateau puis ramassez le |cRXP_LOOT_Mist Veil's Lockbox|r directement à l'intérieur de celui-ci|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivage|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil de batteur|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
step
    .goto 1439,41.960,28.616
    >>Cliquez sur le |cRXP_PICK_Buzzbox 411|r sur le sol
    .turnin 1001 >> Rendez la quête Bigobox 411
    .isQuestComplete 1001
step
    #optional
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Grell sauvage|r et des |cRXP_ENEMY_Fée vile|r sur la route|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Grell sauvage|r et des |cRXP_ENEMY_Fée vile|r sur la route|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Tuez les |cRXP_ENEMY_Grell sauvage|r et les |cRXP_ENEMY_Fée vile|r. Dépouillez-les pour leur |cRXP_LOOT_Boucle d'oreille de Grell|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Satyre Deth'ryll|r pour le moment|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #optional
    .abandon 955 >> Abandonnez Bashal'Aran
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    >>|cRXP_WARN_Sachez qu'ils n'ont pas de respawn dynamiques|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
    .goto 1439,47.314,48.676
    >>Remontez jusqu'au |cRXP_PICK_Mystérieux Cristal rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tuez |cRXP_ENEMY_Anaya Dawnrunner|r. Dépouillez-la pour son |cRXP_LOOT_Pendentif|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Tuez les|cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r et les |cRXP_ENEMY_Wailing Highbornes|r. Dépouillez-les pour leur |cRXP_LOOT_Relique|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
    .xp >17,1
step
    .goto 1439,42.652,63.145
    >>Cliquez sur |cRXP_PICK_La chute d'Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Tuez |cRXP_ENEMY_Jai'vhanel|r. Dépouillez-la pour la |cRXP_LOOT_Plume de Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .isQuestComplete 953
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #completewith FurbolgGrind
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Tuez les |cRXP_ENEMY_Guide Noirbois|r et les |cRXP_ENEMY_Messager du vent Noirbois|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith TOTH
    .goto 1439,36.701,45.122
    .subzone 442 >> Retournez à Auberdine
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Retournez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Rendez la quête ON RECHERCHE : Jai'vhanel
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.767,44.001
    >>Utilisez le [Tube d'eau vide] au Puits de lune d'Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Montez à l'étage
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r à l'étage
    .accept 965 >> Acceptez la quête La Tour d'Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Rendez la quête Les outils des Bien-nés
    .target Thundris Windweaver
    .isQuestComplete 958
step
    .goto 1439,47.314,48.676
    >>Cliquez sur le |cRXP_PICK_Mystérieux Cristal Rouge|r
    >>|cRXP_WARN_Attention aux 2 groupes de 2 |cRXP_ENEMY_Séléniens déchaînés|r à l'ouest du |cRXP_PICK_Mystérieux cristal rouge|r car les duos les plus proches sont liés ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Rendez la quête Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #completewith CrabTurtle
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    .goto 1439/1,-386.39,7219.830
    >>Utilisez le [Tube de prélèvement vide] à la source de la Bondissante
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Voyagez vers la Grotte de la Bondissante
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>Utilisez la [Fiole d'échantillon des Chutes de la Bondissante vide] à la cascade à l'entrée de la grotte des Chutes de la Bondissante
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Dépouillez-les |cRXP_LOOT_Scaber Stalks|r et un |cRXP_LOOT_Death Cap|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. S'il n'y a pas de |cRXP_LOOT_Death Cap|r au bout de la partie supérieure, descendez et récupérez en un dans la salle inférieure au sud|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stormscale Wave Riders|r lancent|r [Aqua Jet] (Coup à Distance instantané: Inflige des dégâts instantané et peut vous renverser) - faites attention à ne pas vous trouvez dans une position ou vous vous feriez pousser du niveau supérieur de la grotte
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
step
    .deathskip >> Mourez et ressuscitez au cimetière d'Auberdine
    .target Gardien des âmes
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Voyagez vers Auberdine
step
    #label CliffspringEnd
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .itemcount 5469,5 -- strider meat (5)

step << Druid
    #optional
    .isOnQuest 6122
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Rendez la quête Le principe originel
    .accept 6123 >> Acceptez la quête Rassembler les ingrédients du remède
    .target Alanndarian Nightsong
step << Druid
    #optional
    .isQuestTurnedIn 6123
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6123 >> Acceptez la quête Rassembler les ingrédients du remède
    .target Alanndarian Nightsong
step << !Druid
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    >>|cRXP_WARN_Choisissez la|r |T135641:0|t[Dague de Courbebois] |cRXP_WARN_comme vous devez essayer de sauvegarder une|r |T135641:0|t[Dague] |cRXP_WARN_pour votre quête de|r |T132290:0|t[Poisons] |cRXP_WARN_plus tard|r << Rogue
    .turnin 4813 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723

----Start of Druid Quest section----
step << Druid
    #completewith TotL
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Darnassus
    .zoneskip Darnassus
step << Druid
    #optional
    #label DruidLesson
    #completewith TotL
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 26 >> Acceptez la quête Une leçon à apprendre
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Abandonnez la quête Les absences du Prospecteur pour accepter la quête Des problèmes à Sombrivage ?
step << Druid
    #optional
	#completewith TotL
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2676.22,8019.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >> Rendez la quête Une leçon à apprendre
    .accept 29 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2595.43,7697.24
    >>Nagez au lac Élune’ara
    >>Ouvrez le |cRXP_PICK_Conteneur de babioles|r. Récupérez le |T134125:0|t[Colifichet du sanctuaire]
    >>|cRXP_WARN_Il peut apparaître à différents endroits sous l'eau|r.
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto 1450/1,-2212.85,7854.68
    >>Utilisez le [Colifichet du sanctuaire] à l'arbre de l'Autel de Remulos
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto 1450/1,-2224.18,7874.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Rendez la quête L'épreuve du lac
    .accept 272 >> Acceptez la quête L'épreuve du lion de mer
    .target Tajarri
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Ironforge
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Rendez la quête La faveur de Philmor
    .accept 97222 >>Acceptez la quête Livraison au corps de garde
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Utilisez la|r |T132762:0|t[Cargaison de la Conciergerie] |cRXP_WARN_devant la |cRXP_PICK_porte de la réserve|r à l'étage|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    #label Gatehouse
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Rendez la quête Livraison au corps de garde  
step << Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theridran|r
    .trainer >>Apprenez vos sorts de classe
	.target Theridran
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Prenez le tram pour Ironforge
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 17-18 Salle des Thanes
#next 18-19 Ruines de Lordaeron
#displayname 16-17 Salle des Thanes << NightElf

step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << !NightElf
    #completewith OII
    +|cRXP_WARN_Vous allez maintenant faire une quête prérequis pour la Salle des Thanes, pour ensuite faire le donjon|r
step << !NightElf
    #completewith OII
    .zone Dun Morogh >> Voyagez vers Dun Morogh
step << !NightElf
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .accept 96392 >> Acceptez la quête Le guet de Farsen
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Parlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r pour voir sa double vie
    >>|cRXP_WARN_Vous pouvez annuler la Double vue une fois l'objectif terminé|r
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Appuyez sur ÉCHAP pour annuler la Double vue|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Vous pouvez annuler la Double vue une fois l'objectif terminé|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Appuyez sur ÉCHAP pour annuler la Double vue|r
    .turnin 96392 >> Rendez la quête Farsen's Observation
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tuez les |cRXP_ENEMY_Dark Fer Spies|r. Dépouillez-les pour la |T237385:0|t[|cRXP_LOOT_Dark Fer Carte|r]
    .use 274268 >>|cRXP_WARN_Utilisez la|r |T237385:0|t[|cRXP_LOOT_Dark Fer Carte|r] |cRXP_WARN_pour commencer la quête|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acceptez la quête Souterrain Carte
    .mob Dark Iron Spy
step << !NightElf
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >> Rendez la quête Souterrain Carte
    .accept 96393 >> Acceptez la quête Old Forgefer Incursion
    .target Earthseer Farsen
step << !NightElf
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Rendez la quête Nip 'Em in the Vombi
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Commencez à chercher un groupe pour la Salle des Thanes|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >> Voyagez à Ironforge
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Descendez dans le Vieux Forgefer en passant par la salle du |cRXP_FRIENDLY_Roi Magni|r
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Afadra Mur-de-Dun|r
    .accept 96394 >> Acceptez la quête Les morts sans repos
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Descendez sur la rampe en bas|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Acceptez la quête Précieux héritages
    .target Thom Filch
step
    #label EnterHoT
    .enabledungeon HOT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Entrez dans la Salle des Thanes

step
    #completewith FaldrimAnvilmar
    >>Ramassez les |cRXP_PICK_Héritages nains|r au sol le long de la Salle des Thanes
    >>|cRXP_WARN_Vous pouvez également en obtenir la plupart à la fin du donjon|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Tuez les |cRXP_ENEMY_Apparitions enragées|r et les |cRXP_ENEMY_Ames tourmentées|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Domestique fantomatique|r
    .accept 96395 >> Acceptez la quête Une rancune ancestrale
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Tuez |cRXP_ENEMY_Faldrim Courbenclume|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Retournez au|r |cRXP_FRIENDLY_Domestique fantomatique|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Domestique fantomatique|r
    .turnin 96395 >> Rendez la quête Une rancune ancestrale
    .target Ghostly Attendant
step
    >>Tuez les |cRXP_ENEMY_Apparitions enragées|r et les |cRXP_ENEMY_Ames tourmentées|r
    >>|cRXP_WARN_Complétez cet objectif dès maintenant comme vous n'aurez peut-être l'occasion de le terminer plus tard|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Ramassez les |cRXP_PICK_Héritages nains|r au sol le long de la Salle des Thanes
    >>|cRXP_WARN_Vous pouvez également en obtenir la plupart à la fin du donjon|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Tuez |cRXP_ENEMY_Durgen Mornemartel|r. Dépouillez-le pour la |cRXP_LOOT_Tête de Durgen Mornemartel|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Cliquez sur le |cRXP_PICK_Traité d’entente|r
    .accept 98423 >> Acceptez la quête Le traité d’entente
step
    >>Ramassez les |cRXP_PICK_Héritages nains|r au sol le long de la Salle des Thanes
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Sortez de la Salle des Thanes. La façon la plus rapide pour en sortir est d'avancer tout droit dans le couloir depuis la salle du boss final|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Rendez la quête Précieux héritages
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Retournez auprès d' |cRXP_FRIENDLY_Afadra Mur-de-Dun|r en haut de la rampe
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Afadra Mur-de-Dun|r
    .turnin 96394 >> Rendez la quête Les morts sans repos
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Montez la rampe vers le |cRXP_FRIENDLY_Roi Magni Bronzebeard|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 96393 >> Rendez la quête Incursion dans le Vieux Forgefer
    .turnin 98423 >> Rendez la quête Le traité d’entente
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Apprenez vos sorts de classe
step << Priest/Paladin/Mage
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
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Achetez le|r |T133738:0|t[Grimoire de sacrifice (rang 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 18-19 Ruines de Lordaeron
#next 19-20 Mortemines
#displayname 17-18 Ruines de Lordaeron << NightElf

step
    #completewith EnterRoL
    +|cRXP_WARN_Vous allez maintenant le donjon des Ruines de Lordaeron|r
    >>|cRXP_WARN_Toutes les quêtes se prennent à l'intérieur du donjon|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Si vous n'avez pas le chemin de vol des Paluns, passez cette étape|r
    .fly Wetlands >> Volez aux Paluns
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Sortez de Ironforge. Dirigez-vous vers l'endroit pour effectuer le deathskip vous permettant de passer de Dun Morogh aux Paluns|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_Escaladez la montagne, puis descendez les bords irréguliers jusqu'à ce que votre zone change pour les Paluns|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>Sautez de la montagne vers le nord ou le nord-ouest
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r de la Baie de Baradin
    .target Gardien des âmes
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Nagez jusqu'au Port de Menethil
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Prenez le bateau pour Southshore
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Apprenez le chemin de vol de Southshore
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1424/0,-136.700,-535.800,125 >> |cRXP_WARN_NOTE : Vous pouvez rencontrer des |cRXP_ENEMY_Lions|r et des |cRXP_ENEMY_Ours|r de niveau plus élevé sur le chemin vers les Champs de Hautebrande|r
    >>|cRXP_WARN_Faites attention aux joueurs de la Horde si vous êtes sur un serveur PVP|r
    .zoneskip 1424,1 
step
    #label EnterRoL
    .enabledungeon ROL
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700,20 >>Voyagez vers les Ruines de Lordaeron à Undercity. Entrez dans le donjon
    >>|cRXP_WARN_Faites attention aux |cRXP_ENEMY_Lions|r, |cRXP_ENEMY_Ours|r, |cRXP_ENEMY_Araignées|r ou |cRXP_ENEMY_Murlocs|r de haut niveau en passant|r
    >>|cRXP_WARN_Dès que vous entrez à Undercity, vous passerez automatiquement en PVP et vous pourrez être attaqué par la|r |cRXP_ENEMY_Horde|r
    .link https://www.youtube.com/watch?v=jxmG6_JPFMc >> |cRXP_WARN_Cliquez ici pour un guide vidéo sur la route pour vous rendre au donjon Ruines de Lordaeon|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Truman|r
    .accept 95250 >> Acceptez la quête Abominables créatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Tuez |cRXP_ENEMY_Le baron|r. Dépouillez-le pour la |cRXP_LOOT_Tête du Baron|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Dépouillez tous les mobs pour l' |T133328:0|t[|cRXP_LOOT_Insigne ensanglanté|r]
    .use 268535 >> |cRXP_WARN_Utilisez l'|r |T133328:0|t[|cRXP_LOOT_Insigne ensanglanté|r] |cRXP_WARN_pour lancer une quête|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >> Acceptez la quête Insigne ensanglanté
step
    #sticky
    #label BloodiedInsignia
    >>Dépouillez tous les mobs pour leurs |cRXP_LOOT_Insignes ensanglantés|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Récupérez l' |T4504543:0|t[|cRXP_LOOT_Écu de Lordaeron|r] au sol ou accroché au mur
    >>|cRXP_WARN_Soyez à l'affût pour le trouver. Il peut apparaître à de nombreux emplacements différents et peut être difficile à discerner|r
    .use 268579 >> |cRXP_WARN_Utilisez l'|r |T4504543:0|t[|cRXP_LOOT_Écu de Lordaeron|r] |cRXP_WARN_pour lancer une quête|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Acceptez la quête Écu de Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Cliquez sur le |cRXP_PICK_Papier froissé|r sur le sol près de |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_Vous pouvez le faire après l'avoir tué|r
    .accept 92415 >> Acceptez la quête N’oublie pas que je t’aime
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Truman|r
    >>Le |cRXP_FRIENDLY_Capitaine Truman|r |cRXP_WARN_sera de nouveau au début du donjon|r
    .turnin 95250 >> Rendez la quête Abominables créatures
    .target Captain Truman
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .zoneskip Stormwind City
    .bindlocation 1519,1 --HS in SW
step
    #optional
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .bindlocation 1537,1 --HS in IF
step 
    #optional
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .zone Stormwind City >>Allez à Stormwind
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Directrice de l'orphelinat Nightingale|r
    .turnin 92415 >> Rendez la quête N’oublie pas que je t’aime
    .accept 95161 >> Acceptez la quête N’oublie pas que je t’aime
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Directrice de l'orphelinat Nightingale|r
    .accept 95161 >> Acceptez la quête N’oublie pas que je t’aime
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .target Wilder Thistlenettle
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Allez à la Bibliothèque de Stormwind
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lady Dena Kennedy|r
    >>|cRXP_WARN_Elle patrouille non loin dans la Galerie royale|r
    .turnin 95189 >> Rendez la quête Écu de Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Général Marcus Jonathan|r
    .turnin 95195 >> Rendez la quête Insigne ensanglanté
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <20,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
    .xp <20,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .xp <20,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theridran|r
    .trainer >> Apprenez vos sorts de classe
	.target Theridran
    .xp <20,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <20,1
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
    .xp <20,1
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <20,1
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Mortemines
#displayname 18-20 Mortemines/Carmines << NightElf
#next 20-21 Sombrivage/Orneval

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
    .bindlocation 16509
step
    #completewith TDB1
    #label FlyWestfall
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    >>|cRXP_WARN_Si vous n'avez pas déjà le trajet Vol pour Marche de l'Ouest, passez cette étape|r << !Human !Gnome !Dwarf
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step
    #optional
    #requires FlyWestfall
    #completewith TDB1
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    #label TDB1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acceptez la quête La Confrérie défias
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r ou à |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Si vous n'avez pas appris le chemin de vol des Carmines, passez cette étape|r << !Human !Gnome !Dwarf
    .fly Redridge >> Volez vers Les Carmines
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    .isQuestAvailable 132
    .goto 1433/0,-1906.400,-9606.800
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Acceptez la quête Les outils perdus
    .target Foreman Oslow
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley the Black|r à l'intérieur, en haut des escaliers
    .turnin 65 >> Rendez la quête La Confrérie défias
    .accept 132 >> Acceptez la quête La Confrérie défias
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Acceptez la quête Le collier d'Hilary
step
    >>|cRXP_WARN_Sautez dans le lac|r
    >>Ouvrez la |cRXP_PICK_Boue luisante|r. Récupérez le |cRXP_LOOT_Collier d'Hilary|r
    >>|cRXP_WARN_Il apparaît à plusieurs endroits différents dans le lac|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Rendez la quête Les outils perdus
    .target Foreman Oslow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >> Rendez la quête La Confrérie défias
    .accept 135 >> Acceptez la quête La Confrérie défias
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Rendez la quête La Confrérie défias
    .accept 141 >> Acceptez la quête La Confrérie défias
    .target Master Mathias Shaw
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
    .xp <20,1
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre très bientôt des quêtes plus rapidement à la Marche de l'Ouest:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T132794:0|t[Flasque d'huile]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    #completewith EnterDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Rendez la quête La Confrérie défias
    .accept 142 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step << Druid
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    .target Innkeeper Heather
    .home >> Liez votre Pierre de foyer à la Marche de l'Ouest
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Voyagez à Ruisselune
step
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tuez le |cRXP_ENEMY_Messager défias|r. Dépouiilez-le pour son |cRXP_LOOT_Un message mystérieux|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Messager défias|r apparaît à Ruisselune. Il marche le long de la route au nord de Ruisselune, jusqu'à la Carrière de la Côte de l'or et la Mine de Jangolode. Si vous ne le voyez pas le long de la route, attendez qu'il réapparaisse à Ruisselune|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Traître défias|r
    >>|cRXP_WARN_Vous devrez peut-être attendre que le |cRXP_FRIENDLY_Traître défias|r apparaisse s'il n'est pas là|r
    .accept 155 >> Acceptez la quête La Confrérie défias
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>Escortez le |cRXP_FRIENDLY_Traître défias|r jusqu'aux Mortemines
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Rendez la quête La Confrérie défias
    .accept 166 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Riell|r au sommet de la Tour
    .accept 214 >> Acceptez la quête Les masques rouges en soie
    .target Scout Riell
step
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Tuez en boucle des |cRXP_ENEMY_Gnolls|r au sud de la Colline des Sentinelles le temps de monter un groupe pour les Mortemines|r
    .subzone 20 >>Quand vous avez monté votre groupe, voyagez vers Ruisselune
step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Entrez dans le Repaire Defias avec votre groupe
step
    #completewith EnterDM
    >>Tuez les |cRXP_ENEMY_Defias|r. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    >>Vous pouvez aussi finir cette quête à l'intérieur des Mortemines
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_NOTE : Cette quête ne donne PAS d'expérience bonus contrairement à d'autres quêtes de donjon et prend beaucoup plus de temps à terminer. Pensez à passer cette quête si votre groupe est d'accord|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tuez |cRXP_ENEMY_Foreman Thistlenettle|r. Dépouillez-le pour son |cRXP_LOOT_Badge|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_NOTE : Cette quête ne donne PAS d'expérience bonus contrairement à d'autres quêtes de donjon et prend beaucoup plus de temps à terminer. Pensez à passer cette quête si votre groupe est d'accord|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .enabledungeon DM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entrez dans le donjon des Mortemines
step
    #completewith DMend
    >>Tuez les |cRXP_ENEMY_Défias|r à l'intérieur des Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Masques|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>Tuez |cRXP_ENEMY_Sneed|r. Dépouillez-le pour son |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    #label DMend
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r et sa [|cRXP_LOOT_An Unsent Letter|r]
    >>|cRXP_WARN_Utilisez[|cRXP_LOOT_An Unsent Letter|r] pour commencer la quête|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acceptez la quête La lettre non envoyée
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Voyagez au Phare de la Marche de l'Ouest
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .accept 103 >> Acceptez la quête Le gardien de la flamme
    .turnin 103 >> Rendez la quête Le gardien de la flamme
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour son |cRXP_LOOT_Écaille|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 104 >> Rendez la quête Menace sur la côte
    .target Captain Grayson
    .isQuestComplete 104
step << Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .accept 79008 >> Acceptez la quête … et cette note que vous avez trouvée
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Nagez jusqu'à sortir de la mer
step << Druid
    .goto Westfall,17.928,33.099
    >>Ouvrez la |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << Druid
    .goto 1450/1,-2212.25,7854.28
    .use 15883 >>Utilisez le [Demi-pendentif d'agilité aquatique] pour le combiner avec le [Demi-pendentif d'endurance aquatique] au sanctuaire de Remulos
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>Ceci vous fera gagner le temps du retour
step << Druid
    .goto 1450/1,-2678.74,8020.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >> Rendez la quête L'épreuve du lion de mer
    .accept 5061 >> Acceptez la quête Forme aquatique
    .target Dendrite Starblaze
step << Druid
    .hs >> Utilisez votre Pierre de foyer pour revenir à la Colline des Sentinelles
step << !Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .accept 79008 >> Acceptez la quête … et cette note que vous avez trouvée
step
    #completewith RSB
    .goto 1436/0,1045.12,-10508.80,100 >> Voyagez vers la Colline des Sentinelles
step
    .isQuestComplete 166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    #label RSB
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Eclaireur Riell|r en haut de la tour
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

step
   .maxlevel 19,Level20Check

step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Volez vers Les Carmines
    .target Thor
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .accept 246 >> Acceptez la quête L'appréciation du danger
    .accept 98407 >>Acceptez la quête Démonstration de force
    .target Deputy Feldon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Acceptez la quête La menace des Rochenoires
    .accept 98387 >>Acceptez la quête Barricade rochenoire
    .target Marshal Marris
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 95999 >>Acceptez la quête AVIS DE RECHERCHE : incinérateur Gar’im
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r et les |cRXP_ENEMY_Braconniers des Carmines|r
    >>Tuez les |cRXP_ENEMY_Vandales des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers cloutés|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .group 4
    .isOnQuest 95999
    #sticky
    #label IncineratorGarim
    .waypoint 1433/0,-3261.400,-9824.700
    >>Tuez l' |cRXP_ENEMY_Incinérateur Gar'im|r à l'intérieur de la grotte. Dépouillez-le pour le |cRXP_LOOT_Bâton brisé de l’incinérateur Gar’im|r
    >>|cRXP_WARN_Passez cette étape si vous n'arrivez pas à trouver un groupe pour le tuer|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Sacs de grain|r et les |cRXP_PICK_Gigots de viande|r au sol pour les |cRXP_LOOT_Fournitures volées|r
    >>Ramassez les |cRXP_PICK_Râteliers d'armes|r et les |cRXP_PICK_Armes volées|r au sol
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Tuez les |cRXP_ENEMY_Blackrock Grunts|r et les |cRXP_ENEMY_Blackrock Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Sachez que les |cRXP_ENEMY_Estafettes Rochenoires|r vont lancer un |T132149:0|t[Filet]|r
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #loop
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    >>Ramassez les |cRXP_PICK_Sacs de grain|r et les |cRXP_PICK_Gigots de viande|r au sol pour les |cRXP_LOOT_Fournitures volées|r
    >>Ramassez les |cRXP_PICK_Râteliers d'armes|r et les |cRXP_PICK_Armes volées|r au sol
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step << Shaman -- most likely not on this quest yet
    #optional
    .isOnQuest 94499
    .goto 1433/0,-3121.100,-9485.000
    .use 265747 >> |cRXP_WARN_Utilisez l'|r |T132829:0|t[Outre rouge encore vide] |cRXP_WARN_aux Chutes de Guet-de-Pierre|r
    .complete 94499,1 --|1/1 Full Red Waterskin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Rendez la quête L'appréciation du danger
    .turnin 98407 >>Rendez la quête Démonstration de force
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Rendez la quête La menace des Rochenoires
    .turnin 98387 >>Rendez la quête Barricade rochenoire
step
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Rendez la quête AVIS DE RECHERCHE : incinérateur Gar’im
step
    #optional
    .xp 20 >> Montez jusqu'au niveau 20

step
    #label Level20Check

step << !Druid !Rogue
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #optional
    #completewith DarkshoreBoat
    .goto 1433/0,-2234.900,-9435.300,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Plumorage|r ou à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    .isNotOnQuest 2360
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Rogue
    #completewith RoguePoison
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Tuez les |cRXP_ENEMY_Araignées Tisse-venin pygmées|r et les |cRXP_ENEMY_Araignées Tisse-venins|r. Dépouillez-les pour une |cRXP_LOOT_Petite glande à venin|r et leurs |cRXP_LOOT_Pattes d'araignée fondantes|r
    >>|cRXP_WARN_Vous avez besoin d'une |cRXP_LOOT_Petite glande à venin|r pour créer un|r |T134437:0|t[Anti-venin]|cRXP_WARN_ pour enlever le debuff|r |T136230:0|t[Toucher de Zanzil]|cRXP_WARN_ plus tard|r
    >>|cRXP_WARN_Gardez les |cRXP_LOOT_Pattes d'araignée fondantes|r plus tard|r
    >>|cRXP_WARN_Si vous avez un|r |T626003:0|t|cFFF48CBAPaladin|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_ou bien créez un|r |T626006:0|t|cFF0070DDChaman|r |cRXP_WARN_ami, vous pouvez sauter cette étape et lui demander de le supprimer pour vous|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +==PRÊTEZ ATTENTION À LA SECTION À VENIR==
    >>Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
    >>De plus, il est recommandé d'activer les barres d'info des ennemis (Touche par défaut: V) comme cela vous permet de voir les ennemis derrière certains des coins à l'intérieur de la tour
step << Rogue
    .goto 1436/0,619.17,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ le faire pour votre de quête de [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto 1436/0,514.52,-11114.77,0
    .goto 1436/0,531.32,-11166.80,0
    .goto 1436/0,581.37,-11104.97,0
    .goto 1436/0,514.52,-11114.77,30,0
    .goto 1436/0,531.32,-11166.80,30,0
    .goto 1436/0,581.37,-11104.97,30,0
    >>|T133644:0|tUtilisez [Vol à la tire] sur le |cRXP_ENEMY_Malformed Defias Drone|r. Volez-lui la |cRXP_LOOT_Defias Tower Key|r
    >>Vous devez être en [Camouflage] pour utiliser [Vol à la tire]
    >>|cRXP_WARN_Le |cRXP_ENEMY_Malformed Defias Drone|r apparaissent à l'entrée de la tour, puis font le tour de celle-ci|r
    >>Faites attention car il fait BEAUCOUP de dégâts. Si vous perdez votre [Camouflage], utilisez vite votre [Sprint] pour vous enfuir
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +Équipez la [Dague de Curvewood] pour cette quête si vous n'avez pas déjà de [Dague] équipée
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Allez jusqu'à l'avant dernier étage de la tour. Lorsque vous êtes en [Camouflage] |cRXP_WARN_et que les |cRXP_ENEMY_Defias Tower Sentries|r ne sont pas proches de vous, sautez sur la chaise, puis sur la lampe, et ensuite sur la bibliothèque au-dessus du point de repère|r
    >>Enlevez votre [Camouflage] manuellement|cRXP_WARN_, puis appuyez sur votre touche "Interagir avec la cible" pour ouvrir le |cRXP_PICK_Duskwood Chest|r. Récupérez le|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>NOTE: Votre [Camouflage] ne fonctionnera pas un moment après avoir récupéré le |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_Soyez prêt à courir si vous ne voulez pas tuer les |cRXP_ENEMY_Defias Tower Sentries|r au deuxième étage. Ils vont sûrement vous aggro de manière permanente (mais sans vous attaquer) lorsque vous êtes en haut de la bibliothèque comme il s'agit d'un evade spot|r
    >>Si vous avez une [Dague] dans vos sacs ou déjà équipée, vous pouvez lancez [Embuscade] |cRXP_WARN_sur le |cRXP_ENEMY_Defias Tower Patrollers|r et sur les |cRXP_ENEMY_Defias Tower Sentries|r à l'intérieur pour les tuer instantanément. Soyez prêt à vous enfuir après avoir tué le premier|cRXP_ENEMY_Defias Tower Sentry|r  et n'oubliez pas que vous pouvez être touché d'en dessous. Cette technique est plus lente, mais BEAUCOUP plus sure|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Malformed Defias Drone|r et les |cRXP_ENEMY_Defias Drones|r peuvent se trouver à l'entrée de la tour si vous devez vous enfuir de celle-ci|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Utilisez votre racial [Forme de Pierre] pour enlever le debuff [Toucher de Zanzil]
    .aura -9991
step << Rogue
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .zoneskip Stormwind City
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Voyagez vers |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si vous avez un|r |T626003:0|t|cFFF48CBAPaladin|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_ou bien créez un|r |T626006:0|t|cFF0070DDChaman|r |cRXP_WARN_ami, demandez-lui de supprimer le|r |T136230:0|t[Toucher de Zanzil] |cRXP_WARN_à la place|r
    .skill firstaid,80 >> Montez votre niveau de compétence en [Premiers soins] jusqu'à 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si vous avez un|r |T626003:0|t|cFFF48CBAPaladin|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_ou bien créez un|r |T626006:0|t|cFF0070DDChaman|r |cRXP_WARN_ami, demandez-lui de supprimer le|r |T136230:0|t[Toucher de Zanzil] |cRXP_WARN_à la place|r
    .train 7934 >> Apprenez [Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .train 1759,1
    .xp <22,1
    .xp >24,1
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>Rappelez-vous de re-équiper votre arme principale si vous avez équipé une [Dague] plus tôt << Rogue
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 167 >> Rendez la quête Adieu mon frère…
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 168 >> Rendez la quête À la recherche de Cartes du Syndicat des Mineurs
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
step
    .isQuestComplete 2040
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Rendez la quête Assaut souterrain
    .target Shoni the Shilent
step << Shaman
    #completewith ShamTrain
    .goto 1453/0,558.96,-8382.54,25,0
    .goto 1453/0,520.64,-8351.460
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Acceptez la quête L'appel de l'eau
    .trainer >> Apprenez vos sorts de classe
    .train 2645,1 -- ghost wolf
step << Shaman
    #label ShamTrain
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Apprenez vos sorts de classe
    .train 408342,1 -- fire nova r2
    .xp <22,1
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Stormwind
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >>Rendez la quête La lettre non envoyée
    .accept 389 >>Acceptez la quête Bazil Thredd
    .target Baros Alexston
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
step << !Druid
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Druid
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #optional
    .abandon 95999 >>Abandonnez la quête AVIS DE RECHERCHE : incinérateur Gar’im
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Sombrivage/Orneval
#next Guide de donjon Forever RestedXP (A)\21-23 Orneval/Stonetalon

step << Druid
    #completewith catspirit1
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Volez à Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf !Druid
    #hidewindow
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    #label catspirit1
    .goto 1457/1,2564.600,10179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .accept 98393 >>Acceptez la quête L’esprit du Grand félin
step << Druid
    #completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Rendez la quête L’esprit du Grand félin
    .accept 98341 >>Acceptez la quête L’esprit du Grand félin du vent << Skyborne
    .accept 98394 >>Acceptez la quête L’esprit du Grand félin << !Skyborne
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Esprit du Grand félin|r
    .turnin 98394 >>Rendez la quête L’esprit du Grand félin
    .accept 98396 >>Acceptez la quête L’esprit du Grand félin
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Rendez la quête L’esprit du Grand félin du vent
    .accept 98404 >>Acceptez la quête L’esprit du Grand félin du vent
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Allez au Refuge des saisons de Malfurion
step << Druid
    >>Engouffrez-vous profondément dans la grotte, prenez le pont, cherchez une statue de chat dans une alcôve et cliquez sur le petit orbe à côté de la statue
    >>Ramassez la |cRXP_LOOT_Relique de la Griffe|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98396,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Cliquez sur le petit orbe à côté de la statue de chat
    >>Ramassez la |cRXP_LOOT_Relique de l'ombre furtive|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98396,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Cliquez sur le petit orbe à côté de la statue de chat
    >>Pillez |cRXP_LOOT_Relic of the Crok|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Esprit du Grand félin|r
    .turnin 98396 >>Rendez la quête Esprit du Grand félin
    .accept 98731 >>Acceptez la quête Blessings of the Esprit du Grand f??lin
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Rendez la quête The Great Windborne Chat Esprit
    .accept 98738 >>Acceptez la quête Blessings of the Great Windborne Chat Esprit
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTéléportation vers Reflet-de-Lune et parlez à |cRXP_FRIENDLY_Dendrite Brasétoile::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Rendez la quête Blessings of the Great Windborne Chat Esprit << Skyborne
    .accept 98397 >>Acceptez la quête En route vers Darnassus --<< Alliance
    --.accept 98362 >>Accept To Thunder Bluff << Horde
step << Druid
    #completewith catspirit2
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Volez à Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Volez à Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #label catspirit2
    .goto 1457/1,2564.400,10179.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .turnin 98397 >>Rendez la quête En route vers Darnassus
step << Druid
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
step << Druid
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Utilisez le|r |T133748:0|t[Bol de purification vide] |cRXP_WARN_au Puits de lune d'Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .isOnQuest 3765
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .accept 1275 >> Acceptez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
    .isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r à l'étage
    .accept 965 >> Acceptez la quête La Tour d'Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Utilisez le|r |T133748:0|t[Bol de purification vide] |cRXP_WARN_au Puits de lune d'Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .isOnQuest 4763
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Ouvrez les|cRXP_PICK_Blackwood Grain Stores|r. Ramassez les|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 2139
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Jeunes chardons|r peuvent lancer|r |T132152:0|t[Ravage]|cRXP_WARN_, une attaque instantanée en mêlée qui vous étourdit pendant 2 secondes|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    .isOnQuest 4763
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-453.20,6870.500
    >>Ouvrez les |cRXP_PICK_Blackwood Nut Stores|r. Ramassez les |cRXP_LOOT_[Blackwood Nut Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 4763
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-520.66,6874.43
    >>Ouvrez les |cRXP_PICK_Blackwood Fruit Stores|r. Ramassez les |cRXP_LOOT_[Blackwood Fruit Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .isOnQuest 4763
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> Utilisez le [Bol de purification rempli] |cRXP_WARN_au |cRXP_PICK_Feu de joie|r pour invoquer|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corruption des Noirbois RP
    .use 12347
step
    .isOnQuest 4763
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Tuez|cRXP_ENEMY_Xabraxxis|r. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera sur le sol. Ramassez le |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Dépouillez-les |cRXP_LOOT_Scaber Stalks|r et un |cRXP_LOOT_Death Cap|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. S'il n'y a pas de |cRXP_LOOT_Death Cap|r au bout de la partie supérieure, descendez et récupérez en un dans la salle inférieure au sud|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stormscale Wave Riders|r lancent|r [Aqua Jet] (Coup à Distance instantané: Inflige des dégâts instantané et peut vous renverser) - faites attention à ne pas vous trouvez dans une position ou vous vous feriez pousser du niveau supérieur de la grotte
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Tuez |cRXP_ENEMY_Dark Strand Fanatics|r. Tuez-les pour leur |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acceptez la quête La recherche de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Tuez les |cRXP_ENEMY_Greymist Oracles|r et les |cRXP_ENEMY_Greymist Tidehunters|r. Dépouillez-les pour leur |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Greymist Oracles|r et leur capacité|r [Eclair] et ils peuvent aussi se soigner avec [Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    >>|cRXP_WARN_Vous pouvez vous cacher (LoS) des |cRXP_ENEMY_Greymist Oracles|r lorsqu'il lance leur|r  [Eclair] autour du bateau échoué pour éviter de prendre ses dégâts
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Tuez les |cRXP_ENEMY_Giant Foreststriders|r. Dépouillez-les pour leur |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step << Warrior/Paladin/Rogue/Shaman
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Commencez à chercher un groupe pour la quête La vengeance de Gyromast/|r|cRXP_ENEMY_Le Destructomembreur 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Rendez la quête La recherche de Gyromast
    .accept 2078 >> Acceptez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Commencez à chercher un groupe pour la quête La vengeance de Gyromast/|r|cRXP_ENEMY_Le Destructomembreur 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Rendez la quête La recherche de Gyromast
    .accept 2078 >> Acceptez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Parlez à |cRXP_FRIENDLY_The Threshwackonator 4100|r pour commencer une escorte
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Cette quête est TRÈS difficile|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
step
    .goto 1439,56.654,13.484
    #optional
    >>Escortez |cRXP_FRIENDLY_The Threshwackonator 4100|r à  |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tuez|cRXP_ENEMY_The Threshwackonator 4100|r dès qu'il devient hostile
    >>|cRXP_WARN_Cette quête est TRÈS difficile|r
    *Utilisez uniquement des attaques à distance en fuyant et évitez de rester en mêlée << Druid
    >>|cRXP_WARN_Essayez de faire cette quête si vous le pouvez car cela vous fera gagner du temps plus tard et elle vous récompense d'un |r |T134797:0|t[Elixir de respiration aquatique] |cRXP_WARN_pour des quêtes sous l'eau plus tard|r << !Druid !Warlock !Shaman
    >>|cRXP_WARN_Utilisez|r |T136100:0|t[Sarments] |cRXP_WARN_sur lui lorsqu'il devient hostile, puis créez de la distance et kitez en utilisant des sorts instantanés|r << Druid
    >>|cRXP_WARN_Si vous êtes pas capable de tuer |cRXP_ENEMY_Le Destructomembreur 4100|r, passez cette étape|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Rendez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4727 >> Acceptez la quête La tortue de mer échouée
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nagez jusqu'à sortir de l'eau
    >>Ouvrez le |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Demi-pendentif d'agilité aquatique|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #sticky
    #optional
    .destroy 7442 >> Détruisez la |T134459:0|t[Clé de Gyromast] de vos sacs, car il n'est plus nécessaire
step
    #completewith ReturnAuberdine
    .subzone 442 >> Retournez à Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    #label ReturnAuberdine
    .isOnQuest 4727
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.968,70.807
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4728 >> Acceptez la quête La créature marine échouée
    .isQuestTurnedIn 4681
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Vérifiez si|cRXP_ENEMY_Murkdeep|r n'est pas déjà présent dans l'eau (si un joueur vient de rater le combat ou a laissé le |cRXP_ENEMY_Greymist Hunter|r de la vague de son respawn)|r
    >>Tuez les |cRXP_ENEMY_Greymist Warriors|r et les |cRXP_ENEMY_Greymist Hunters|r dans le camp
    >>|cRXP_WARN_Dirigez-vous vers le bûcher au centre du camp pour commencer le combat contre |cRXP_ENEMY_Murkdeep|r |r
    >>|cRXP_WARN_3 vagues vont apparaître depuis l'eau, chacune juste après avoir fini la vague précédente: la vague 1 a 3 |cRXP_ENEMY_Greymist Coastrunners|r de niveaux  12-13, la vague 2 a 2 |cRXP_ENEMY_Greymist Warriors|r de niveaux 15-16, et la vague 3 a un |cRXP_ENEMY_Murkdeep|r de niveau 19 et un |cRXP_ENEMY_Greymist Hunter|r de niveau 16-17. Vous pouvez rester vers le bûcher pour éviter de prendre l'aggro sur la vague à venir|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Voyagez jusqu'à le Glaive du Maître
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Tuez les |cRXP_ENEMY_Twilight Disciples|r et les  |cRXP_ENEMY_Twilight Thugs|r. Dépouillez-les pour le [|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Découvrez le Glaive du Maître
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    .cast 5809 >> Utilisez la [Fiole de divination] et placez la sur le sol
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Cliquez sur |cRXP_PICK_Scrying Bowl|r sur le sol|r
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Cliquez sur |cRXP_PICK_Twilight Tome|r sur le piédestal le plus au nord
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
    .accept 950 >> Acceptez la quête La page qui rend fou
    .accept 98042 >>Acceptez la quête Qu'est-ce qu'on se marre Until...
step
    #completewith TheryluneEnd
    >>Tuez |cRXP_ENEMY_Twilight Disciples|r et |cRXP_ENEMY_Twilight Thugs|r. Ramassez-les pour le |cRXP_LOOT_Oeil sans pareil|r et |T133743:0|t[|cRXP_LOOT_Book: Les puissances d'en bas|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va commencer une escorte
    >>Passez cette étape si elle n'est pas présente
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Tuez |cRXP_ENEMY_Twilight Disciples|r et |cRXP_ENEMY_Twilight Thugs|r. Ramassez-les pour le |cRXP_LOOT_Oeil sans pareil|r et |T133743:0|t[|cRXP_LOOT_Book: Les puissances d'en bas|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Supprimez la |T134715:0|t[Fiole de divination] de vos sacs comme elle n'est plus nécessaire
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_Vous devrez peut-être attendre qu'il réapparaisse ou que les autres joueurs terminent l'escorte|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r. Cela lancera une escorte
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    .complete 731,1
    .isOnQuest 731
step
    .isQuestTurnedIn 4681
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    .isQuestTurnedIn 4681
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    .isQuestTurnedIn 4681
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    .isQuestTurnedIn 4681
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .timer 11,Retournez voir Onu RP
    .target Onu
step
    #optional
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
    >>|cRXP_WARN_Ceci est une quête chronométrée, vous devez l'escorter jusqu'à son sac en 20 minutes|r
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Ouvrez le |cRXP_PICK_Kerlonian's Chest|r. Récupérez y l'[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
    >>|cRXP_WARN_Ceci est une quête chronométrée, vous devez l'escorter jusqu'à son sac en 20 minutes|r
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Ouvrez le |cRXP_PICK_Kerlonian's Chest|r. Récupérez y l'[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label Kerlonian
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Kerlonian|r à son sac |cRXP_WARN_à Sombrivage|r|r
    .use 13536 >> Utilisez la [|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_dès que |cRXP_FRIENDLY_Kerlonian|r s'endort|r
    >>|cRXP_WARN_Évitez de rester sur la route principale autant que possible. Les ennemis n'apparaîtront que si vous restez sur la route|r
    .complete 5321,2
    .isOnQuest 5321
step
    #completewith tower
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto 1440/1,-12.70,4150.17
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Rendez la quête Le dormeur s'est éveillé
    .isQuestComplete 5321
step
    #label tower
    .goto 1440/1,189.71,3185.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    .accept 970 >> Acceptez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Tuez les |cRXP_ENEMY_Sectateurs de la Rive noire|r et les |cRXP_ENEMY_Adeptes de la Rive noire|r. Dépouillez-les pour la |cRXP_LOOT_Gemme d'âme luminescente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Continuez à tuer les |cRXP_ENEMY_mobs de la Rive noire|r jusqu'à avoir assez d'expérience pour atteindre le niveau 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    >>|cRXP_WARN_Assurez-vous d'avoir la|r |T134916:0|t[Découverte d'herbes] |cRXP_WARN_activée pour les voir sur votre minicarte|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
step
    #optional
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Montez jusqu'au niveau 20
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
    .target Orendil Broadleaf
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    >>|cRXP_WARN_Assurez-vous d'avoir la|r |T134916:0|t[Découverte d'herbes] |cRXP_WARN_activée pour les voir sur votre minicarte|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    #label AshenvaleEnd
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Prenez le chemin de vol d'Astranaar
	.target Daelyshia
step
    #label TZS
    .goto 1440/1,-299.30,2796.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Acceptez la quête La grève de Zoram
    .target Shindrell Swiftfire
step
    .goto 1440/1,-311.99,2759.11
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >> Acceptez la quête De garde dans les Serres-Rocheuses
    .target Sentinel Thenysil
step
    .goto 1440/1,-362.16,2785.640
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Acceptez la quête Voyage au pic des Serres-Rocheuses
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-411.18,2767.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .accept 1054 >> Acceptez la quête Diminution de la menace
    .target Raene Wolfrunner
step
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
]])