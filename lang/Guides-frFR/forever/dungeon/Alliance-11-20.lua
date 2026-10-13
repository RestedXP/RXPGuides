if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
<< NightElf
#name 11-15 Sombrivage/Marche de l'Ouest 
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Salle des Thanes

step
    #include RestedXP Guide Forever (A)\14-16 Sombrivage@WashedA-Gatehouse
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
    >>|T4548890:0|t[Isoressort de golem]
    >>|T132995:0|t[Gyrostabiliseur de moissonneur]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Stormwind
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
    .accept 109 >>Acceptez la quête Aller voir Gryan Roidemantel
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .target Salma Saldean
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
step << Gnome/Dwarf/NightElf
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
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Heather|r
    .vendor >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alba Lunepâle::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Acceptez la quête Tester les puits
    .accept 92744 >>Acceptez la quête Des branchies de Murloc
step
	#completewith GnollPaws
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
step
    #sticky
    #completewith bennytime
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r dans les champs quand vous passez à côté
    >>Dépouillez-les pour leur |cRXP_LOOT_Okras|r et leur |cRXP_LOOT_Flasques d'huile|r
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Ouvrez le |cRXP_PICK_Coffre d'Alexston|r. Dépouillez-le pour |cRXP_LOOT_Une simple boussole|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Utilisez l'|r |T236996:0|t[Échantillon d’eau du puits] |cRXP_WARN_au puits de la ferme des Molsen|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    #completewith bennytime
    >>Tuez les |cRXP_ENEMY_Jeunes Broche-tripess|r et les |cRXP_ENEMY_Jeunes déchireurs|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de vautour|r, leur |cRXP_LOOT_Groins|r et leur |cRXP_LOOT_Foies|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
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
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Tuez les |cRXP_ENEMY_Ecumeurs murlocs|r et les |cRXP_ENEMY_Cours-la-côtes murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil|r et leurs |cRXP_LOOT_Branchies|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Utilisez l'|r |T236996:0|t[Échantillon d’eau du puits] |cRXP_WARN_au puits de la ferme des Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
	>>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
	.complete 151,1 --Handful of Oats (8)
step
    #label FurlbrowFarm
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .isQuestComplete 38
    .target Salma Saldean
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
    .collect 814,5,103,1 --Flask of Oil (5)
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
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
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
    .goto 1436/0,1324.200,-10490.400
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

step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Achetez-lui une|r |T135343:0|t[Cimeterre] |cRXP_BUY_ou quelque chose de mieux à l'Hôtel des ventes et équipez-la en main gauche|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
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
    .xp <16,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
    .xp <16,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .xp <16,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theridran|r
    .trainer >>Apprenez vos sorts de classe
	.target Theridran
    .xp <16,1
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
    .isQuestComplete 399
step << Priest
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .train 8122,1
    .target Brother Joshua
    .xp <16,1
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Prenez le tram pour Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh


]])



RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#name 13-15 Marche de l’Ouest 
#displayname 14-15 Marche de l’Ouest << Gnome/Dwarf !Hunter
#displayname 13-15 Marche de l’Ouest << Hunter
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Salle des Thanes

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
    #label NEWestfallStart --hidden step for #include

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
    >>|T4548890:0|t[Isoressort de golem]
    >>|T132995:0|t[Gyrostabiliseur de moissonneur]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
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
    .accept 109 >>Acceptez la quête Aller voir Gryan Roidemantel << NightElf
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
step << Gnome/Dwarf/NightElf
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
step
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
	#completewith GnollPaws
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
step
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
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Tuez les |cRXP_ENEMY_Ecumeurs murlocs|r et les |cRXP_ENEMY_Cours-la-côtes murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil|r et leurs |cRXP_LOOT_Branchies|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
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
    .accept 92909 >>Acceptez la quête La moisson des moissonneurs
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
    .accept 92909 >>Acceptez la quête Récolter les récolteurs
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
    .goto 1436/0,1324.200,-10490.400
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Rendez la quête Patrouilles dans la marche de l'Ouest
step
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
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Apprenez vos sorts de classe
    .train 19742,1
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .train 8122,1
    .target Brother Joshua
step
    #label NEWestfallEnd --hidden step for #include
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Achetez-lui une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_. Ils servent pour une quête donnant 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acceptez la quête L'heure de la pêche
    .turnin 95065 >>Rendez la quête L'heure de la pêche
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable des manifestes Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acceptez la quête La faveur de Philmor
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
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Rendez la quête Livraison au corps de garde
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Prenez le tram pour Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 15-16 Salle des Thanes
#next 16-18 Ruines de Lordaeron

step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step
    #completewith OII
    +|cRXP_WARN_Vous allez maintenant faire une quête prérequis pour la Salle des Thanes, pour ensuite faire le donjon|r
step
    #completewith OII
    .zone Dun Morogh >> Voyagez vers Dun Morogh
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
    .accept 96390 >> Acceptez la quête Étouffer le mal dans l’œuf
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tuez les |cRXP_ENEMY_Espions Sombrefers|r. Dépouillez-les pour la |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r]
    .use 274268 >>|cRXP_WARN_Utilisez la|r |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r] |cRXP_WARN_pour lancer une quête|r
    >>|cRXP_WARN_Vous pouvez arrêter de tuer les |cRXP_ENEMY_Espions Sombrefers|r pour l'autre quête comme ils sont de bas niveau dès que vous avez trouvé la|r |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r]
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acceptez la quête La carte souterraine
    .mob Dark Iron Spy
step
    #label OII
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
#season 0,1
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 16-18 Ruines de Lordaeron
#next 18-20 Mortemines

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
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
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
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>Voyagez vers les Ruines de Lordaeron à Undercity. Entrez dans le donjon
    >>|cRXP_WARN_Faites attention aux |cRXP_ENEMY_Félins|r, |cRXP_ENEMY_Ours|r, |cRXP_ENEMY_Araignées|r et |cRXP_ENEMY_Murlocs|r de haut niveau sur votre route|r
    >>|cRXP_WARN_Dès que vous entrez à Undercity, vous passerez automatiquement en PVP et vous pourrez être attaqué par la|r |cRXP_ENEMY_Horde|r

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
    >>|cRXP_WARN_Si vous n'avez pas liée votre Pierre de foyer à Hurlevent, mettez-vous en route pour y aller|r
    .zoneskip Stormwind City
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
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theridran|r
    .trainer >> Apprenez vos sorts de classe
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
    .target Ursula Deline
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group Guide de donjon Forever RestedXP (A)
#subgroup (En développement) Guide de donjon 1-20
--#groupid RXP-SRGCE-A1
#name 18-20 Mortemines
#next 20-20 Carmines

step
    #completewith next
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acceptez la quête La Confrérie défias
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r ou à |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Si vous n'avez pas appris le chemin de vol des Carmines, passez cette étape|r
    .fly Redridge >> Volez vers Les Carmines
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    #completewith RRDB
    .zone Redridge Mountains >> Voyagez vers Les Carmines
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
    .zoneskip 1433,1
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
    .zoneskip 1433,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
    .zoneskip 1433,1
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
step
    .goto 1436/0,1707.2116,-10583.0227
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .accept 79008 >> Acceptez la quête … et cette note que vous avez trouvée
step
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Voyagez vers la Colline des Sentinelles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et à l' |cRXP_FRIENDLY_Eclaireur Riell|r tout en haut de la tour
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .goto 1436/0,1033.22,-10504.83
    .target +Scout Riell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Eclaireur Riell|r en haut de la tour
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

--Shaman water totem quest start
step << Shaman
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Volez à Ironforge
    .target Thor
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Acceptez la quête L'appel de l'eau
    .trainer >> Apprenez vos sorts de classe
step << Shaman
    #completewith CallofWater
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
step << Shaman
	.isOnQuest 94494
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .turnin 94494 >>Rendez la quête L'appel de l'eau
	.accept 94495 >>Acceptez la quête L'appel de l'eau
step << Shaman
	#label CallofWater
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .accept 94495 >>Acceptez la quête L'appel de l'eau
step << Shaman
	#optional
	.isOnQuest 468
    .goto 1432/0,-2695.500,-4678.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Montagnard Rockgar::1342|r
    .target Mountaineer Rockgar::1342
    .turnin 468 >>Rendez la quête Un rapport pour le Montagnard Rockgar
step << Shaman
    #completewith WaterTotem1
    #label DunAlgaz1
    .goto 1432/0,-2697.700,-4645.500,15,0
    .goto 1437/0,-2653.800,-4448.100,15,0
    .goto 1437/0,-2480.200,-4421.800,15,0
    .goto 1437/0,-2464.200,-4280.900,15,0
    .goto 1437/0,-2419.800,-4092.100,15,0
    .goto 1437/0,-2629.900,-4086.400,15 >> Voyagez à travers Dun Algaz pour aller aux Paluns
step << Shaman
    #completewith WaterTotem1
    #requires DunAlgaz1
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >> Montez la rampe vers |cRXP_FRIENDLY_Hervdana Saegrund::258203|r à l'intérieur de la grotte
step << Shaman
    #label WaterTotem1
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94495 >>Rendez la quête L'appel de l'eau
    .accept 94497 >>Acceptez la quête L'appel de l'eau  
step << Shaman
    .goto 1437/0,-3069.100,-4210.100
    .use 265732 >>|cRXP_WARN_Utilisez l'|r |T132825:0|t[Outre marron encore vide] |cRXP_WARN_au pied de la cascade|r
    .complete 94497,1 --|1/1 Full Brown Waterskin
step << Shaman
    #completewith next
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >> Remontez la rampe de nouveau vers |cRXP_FRIENDLY_Hervdana Saegrund::258203|r à l'intérieur de la grotte
step << Shaman
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94497 >>Rendez la quête L'appel de l'eau
    .accept 94499 >>Acceptez la quête L'appel de l'eau

--sham can hs to sw
--everyone else can fly sw turn in / train 20 spells

]])