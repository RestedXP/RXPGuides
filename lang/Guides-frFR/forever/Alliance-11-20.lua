if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#name 13-15 Marche de l’Ouest
#displayname 14-15 Marche de l’Ouest << Dwarf/Gnome
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#next 14-16 Sombrivage
#defaultfor !NightElf !Hunter/!Dwarf !Hunter/!Human !Hunter/!Skyborne !Hunter

--Going to Darkshore if already 15

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
    .turnin 98021 >>Rendez la quête En route pour la colline des Sentinelles << Skyborne
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
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
	>>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
	.complete 151,1 --Handful of Oats (8)
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Utilisez l'|r |T236996:0|t[Échantillon d’eau du puits] |cRXP_WARN_au puits de la ferme des Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
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
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ozwin Pignondefer::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acceptez la quête La moisson des moissonneurs
    .turnin 92909 >>Rendez la quête La moisson des moissonneurs
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
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
step << !Skyborne
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DarkshoreBoat
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step
    #optional
    #label endOfTheGuide

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
step << Skyborne
    #optional
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Stormwind
    .target Innkeeper Allison
    .bindlocation 16509
step << Skyborne
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
step << Skyborne
    #optional
    #label TramEnd
    >>Prenez le Tram des profondeurs pour Ironforge
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu du côté Ironforge dans le Tram des Profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step << Skyborne
    >>Utilisez le [Pipeau du dératiseur] |cRXP_WARN_sur les |cRXP_ENEMY_Deeprun Rats|r à l'intérieur du Tram des Profondeurs|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r à l'intérieur du Tram des Profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .target Monty
step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << Skyborne Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Apprenez les compétences Armes de jet et Masses à deux mains si vous ne l'avez pas fait auparavant
    .train 2567 >> Apprenez la compétence Armes de jet
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Skyborne Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Skyborne Warrior
    #optional
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Skyborne
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << !NightElf
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>|cRXP_WARN_Ils sont utilisés pour fabriquer des|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_sur les bateaux pour monter le niveau de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
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
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << NightElf Hunter
    .goto 1453/0,706.15,-8795.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez-lui un|r |T135489:0|t[Arc courbe lourd] |cRXP_BUY_|r. |cRXP_BUY_Si vous pouvez vous le permettre, achetez aussi un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_et un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_|r 
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .collect 3026,1 --Reinforced Bow (1)
    .disablecheckbox
    .target Frederick Stover
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
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
step << Shaman -- Shaman accepts now isntead of later due to arriving back from tram, not boat like the rest
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
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
<< Alliance
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 14-16 Sombrivage
#displayname 11-16 Sombrivage/Loch Modan << NightElf
#displayname 13-16 Sombrivage << Dwarf Hunter/Human Hunter/Skyborne Hunter
#displayname 15-16 Sombrivage << !NightElf/!Dwarf/!Human/!Skyborne Hunter
#next 16-19 Sombrivage


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step << NightElf !Druid
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Rendez Flight to Auberdine
    .target Laird
step << Druid NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Rendez Flight to Auberdine
    .accept 6343 >> Acceptez la quête Retourner à Nessa
    .target Laird
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.826,44.150,5,0
    .goto 1439,36.688,43.952,8 >> Montez les rampes vers |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step << !NightElf
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
    .accept 963 >> Acceptez For Love Eternal
    .target Cerellean Whiteclaw
    .xp <11,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Montez la rampe vers |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r à l'étage inférieur
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
    .xp <12,1
step
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
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
    #ah
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer << !sod/Hunter/Druid
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
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
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
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
    >>|cRXP_WARN_Même si certains d'entre eux sont gris, complétez quand même la quête comme elle fait partie d'une suite|r << !NightElf
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
    >>Si vous préférez acheter 5 [Terrestrine] à l'Hôtel des Ventes plus tard, vous pouvez passer cette étape
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>Montez votre [Herboristerie] à un niveau de 15 pour vous permettre de récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez ensuite oublier le métier
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
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur un|r |cRXP_ENEMY_Ours des chardons enragé|r|cRXP_WARN_. Il peut être utilisé à n'importe quelle portée tant que vous ciblez|r |cRXP_ENEMY_l'ours|r
    >>|cRXP_WARN_==N'UTILISEZ PAS L'OBJET DE QUÊTE SI IL N'Y A PAS D' |cRXP_ENEMY_OURS|r À PROXIMITÉ==|r
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
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
    >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur un|r |cRXP_ENEMY_Ours des chardons enragé|r |cRXP_WARN_. Il peut être utilisé à n'importe quelle portée tant que vous ciblez l'ours|r
    >>==N'UTILISEZ PAS L'OBJET DE QUÊTE SI IL N'Y A PAS D'OURS À PROXIMITÉ==
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step << NightElf
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >> Monter votre expérience jusqu'à 7300+/8800xp
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
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Rendez Washed Ashore
    .accept 4681 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde

step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Entrez dans la grotte de la |cRXP_PICK_Pierre des séléniens|r
step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439/1,92.42,6325.98
    .cast 18974 >>|cRXP_WARN_Utilisez la|r |T132857:0|t[Poussière de lune cénarienne] |cRXP_WARN_à la |cRXP_PICK_Pierre des séléniens|r à l'intérieur de la grotte pour invoquer |cRXP_ENEMY_Lunegriffe|r à l'entrée de la grotte|r
    .timer 4,RP de Corps et cœur
    .use 15208
    .isOnQuest 6001
step << Druid NightElf
    #label Lunaclaw
    .goto 1439/1,119.27,6344.32
    >>Tuez |cRXP_ENEMY_Lunegriffe|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid NightElf
    #label RedCrystal
    .isOnQuest 4811
    .goto 1439,47.314,48.676
    >>Remontez jusqu'au |cRXP_PICK_Mystérieux Cristal rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid NightElf
    #optional
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid NightElf
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Volez à Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf Druid
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .target Nessa Shadowsong
step << NightElf Druid
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid NightElf
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Rendez la quête Corps et cœur << NightElf
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
    .isOnQuest 6001
step << Druid NightElf
    #completewith next
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid NightElf
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid NightElf
    .isOnQuest 4812
    .goto 1439,37.767,44.001
    >>Utilisez le [Tube d'eau vide] au Puits de lune d'Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
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
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
    .xp <15,1
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
step << NightElf Warrior/NightElf Rogue
    #sticky
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurdram Martel-de-pierre|r et à |cRXP_FRIENDLY_Delfrum Barbe-de-silex|r
    .train 2575 >> Apprenez [Minage]
    .target +Kurdram Stonehammer
    .goto 1439/1,436.36,6542.65
    .train 2018 >> Apprenez [Forge]
    .target +Delfrum Flintbeard
    .goto 1439/1,440.16,6545.84
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto 1439/1,443.37,6538.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elisa Main-d'acier|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à Brooke|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naram Longuegriffe|r
    .vendor 4183 >>|cRXP_BUY_Achetez-lui une|r |T135640:0|t[Jambiya] |cRXP_BUY_si vous pouvez vous l'offrir|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
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

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


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
    #optional
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
    .isOnQuest 982
step
    .goto 1439,41.960,28.616
    >>Cliquez sur le |cRXP_PICK_Buzzbox 411|r sur le sol
    .turnin 1001 >> Rendez la quête Bigobox 411
    .accept 1002 >> Acceptez la quête Bigobox 323
    .isQuestComplete 1001
step
    #optional
    .goto 1439,41.960,28.616
    >>Cliquez sur le |cRXP_PICK_Buzzbox 411|r sur le sol
    .accept 1002 >> Acceptez la quête Bigobox 323
    .isQuestTurnedIn 1001
step
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #label AsterionTravel
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
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >> Abandonnez Bashal'Aran
    .isQuestAvailable 955
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
step << NightElf/Dwarf/Human Hunter
    #optional
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
    .xp 13 >> Montez jusqu'au niveau 13
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith EndFirstMoonstalker << !NightElf !Hunter !Druid !Warrior
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #completewith RedCrystal
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] à 10 plus tard
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>|cRXP_WARN_Ils seront utilisés pour monter votre niveau|r de |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
    >>|cRXP_WARN_Ne vous focalisez pas sur cet étape. Souvenez-vous simplement de garder les œufs et commencez à réfléchir au nombre de points de compétence que vous devez encore obtenir pour atteindre 50 en cuisine|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #completewith LateTurtleStart
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>|cRXP_WARN_Ils seront utilisés pour monter votre niveau|r de |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
    >>|cRXP_WARN_Ne vous focalisez pas sur cet étape. Souvenez-vous simplement de garder les œufs et commencez à réfléchir au nombre de points de compétence que vous devez encore obtenir pour atteindre 50 en cuisine|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Remontez jusqu'au |cRXP_PICK_Mystérieux Cristal rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Retournez à Auberdine
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior !Hunter
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>Utilisez le [Tube d'eau vide] au Puits de lune d'Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] à 10 plus tard
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>|cRXP_WARN_Ils seront utilisés pour monter votre niveau|r de |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
    >>|cRXP_WARN_Ne vous focalisez pas sur cet étape. Souvenez-vous simplement de garder les œufs et commencez à réfléchir au nombre de points de compétence que vous devez encore obtenir pour atteindre 50 en cuisine|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Cliquez sur le |cRXP_PICK_Mystérieux Cristal Rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] à 10 plus tard
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Warrior/Druid
    #optional
    #completewith EndFirstMoonstalker
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Retournez à Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4813,3 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4813,3 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid/Warrior
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Équipez le|r |T135145:0|t[Bâton chênegrive]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step << NightElf !Hunter/Druid/Warrior
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
    .isQuestComplete 982
----Start of forced Level 14 Druid Turnin/train----
--Removed in wowF

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #optional
    #completewith AmethStart
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----

step << NightElf !Hunter/Druid/Warrior
    #optional
    #loop
    #label EarlyBlackwood
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
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith Anaya
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf !Hunter/Druid/Warrior
    #optional
    #label EarlyTurtleStart
    .goto 1439,37.105,62.167
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
    .isQuestTurnedIn 4811
step
    #optional
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1


step
    #label EndFirstMoonstalker

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #optional
    #completewith AmethStart
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step << !NightElf !Druid !Warrior
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] à 10 plus tard
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
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
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith FurbolgGrind
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
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
    #optional
    #completewith FurbolgGrindEnd
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Retournez à Auberdine
    .isOnQuest 4722
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Retournez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step << !NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
    .turnin 963 >> Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Rendez la quête ON RECHERCHE : Jai'vhanel
    .turnin 4813,3 >> Rendez la quête Les fragments à l'intérieur << NightElf Hunter
step << NightElf Hunter
    #optional
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 4813,3 >> Rendez la quête Les fragments à l'intérieur
step << NightElf Hunter
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Équipez le|r |T135145:0|t[Bâton chênegrive]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
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
    .accept 986 >> Acceptez la quête Un maître perdu << !sod
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
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Achetez-lui des|r [Epices douces] |cRXP_BUY_jusqu'à ce que vous ayez|r [Epices douces] |cRXP_BUY_autant ou plus que le montant de |r [Petit oeuf] |cRXP_BUY_que vous avez actuellement|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << NightElf
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor >>|cRXP_BUY_Achetez-lui une|r [Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_. Vous en aurez besoin pour une quête à Stormwind bientôt|r
    .collect 6529,1 --Shiny Bauble (1)
    .collect 6530,3 --Nightcrawlers (3)
    .target Gorbold Steelhand
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Voyagez vers le |cRXP_PICK_Feu de camp|r sur le sol|r
    +Commencer à [Cuisiner] des [Oeufs aux herbes]. Continuez jusqu'à ce que votre [Cuisine] ait un niveau de compétence de 10
    >>Continuez à monter le niveau de votre [Cuisine] jusqu'à ce que vous soyez à court de [Petit oeuf] << !sod
    >>Il y aura une quête au Bois de la Pénombre plus tard nécessitant un niveau de [Cuisine] de 50 ou plus. Vous pourrez aussi bientôt les cuisiner quand vous serez sur le bateau << !sod
    >>|cRXP_WARN_Passez cette étape dès que vous avez préparé tous les|r |T132834:0|t[Oeufs aux herbes]
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
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
    .accept 97914 >>Acceptez la quête Vers de nouveaux horizons << NightElf
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


---Start of Night Elf Westfall section----
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Retournez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step << NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
    .turnin 963 >> Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step << NightElf
    #label SWBoat
    .goto 1439/1,929.100,6543.600
    >>Montez le niveau de vos [Premiers soins] en attendant pour le bateau << Rogue/Warrior
    .zone Stormwind City >> Prenez le bateau pour Stormwind
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << NightElf
    .goto 1453/0,1268.800,-8540.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gray|r
    .accept 95065 >>Acceptez la quête L'heure de la pêche
    .turnin 95065 >>Rendez la quête L'heure de la pêche
    .target Gilbert Gray
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,1194.500,-8332.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable des manifestes Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acceptez la quête La faveur de Philmor
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    #completewith next
    .goto 1453/0,1194.200,-8360.900,10,0
    .goto 1453/0,1076.300,-8408.500,15,0
    .goto 1453/0,1001.400,-8499.700,10,0
    .goto 1453/0,985.500,-8471.300,15,0
    .goto 1453/0,960.100,-8501.800,15,0
    .goto 1453/0,981.200,-8581.800,15,0
    .goto 1453/0,875.500,-8680.900,10 >> Sortez du Port de Stormwind
--@TODO add new coords for harbor exit cus no philmor's favor
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theridran|r
    .trainer >>Apprenez vos sorts de classe
	.target Theridran
step << NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step << NightElf
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 97914 >> Rendez la quête Vers de nouveaux horizons
    .accept 97926 >> Acceptez la quête Faire avec les moyens du bord
--    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step << NightElf Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Rogue
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Hunter
    .target Woo Ping
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,568.700,-8848.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Rendez la quête La faveur de Philmor
    .accept 97222 >>Acceptez la quête Livraison au corps de garde
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,569.400,-8860.300
    >>Montez |cRXP_WARN_Montez À L’ÉTAGE|r et utilisez la |T132762:0|t[|cRXP_LOOT_Cargaison|r] devant la |cRXP_PICK_porte de la réserve|r
    .use 277198 --Gatehouse Shipment
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    #label Gatehouse
    .goto 1453/0,566.900,-8847.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Rendez la quête Livraison au corps de garde
step << NightElf Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << NightElf Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
step << NightElf
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step << NightElf
    .zone Ironforge >> Prenez le tram pour Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Apprenez les compétences Armes de jet et Masses à deux mains si vous ne l'avez pas fait auparavant
    .train 2567 >> Apprenez la compétence Armes de jet
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << NightElf Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << NightElf Warrior
    #optional
    #completewith DRT
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << NightElf
    #completewith next
    .zone Dun Morogh >> Voyagez vers Dun Morogh
step << NightElf
    .goto Dun Morogh, 59.9, 49.5, 30, 0
    .goto Dun Morogh, 61.2, 47.2, 15, 0
    .goto Dun Morogh, 62.1, 47.3, 20 >>Montez la rampe vers |cRXP_ENEMY_Vagash|r
step << NightElf
    #completewith next
    +Emmenez (kite) |cRXP_ENEMY_Vagash|r vers |cRXP_FRIENDLY_Rudra Amberstill|r
    >>|cRXP_WARN_Ne vous approchez pas de lui ou il lancera|r |T135848:16|t[Rugissement glacial] |cRXP_WARN_qui vous étourdira pendant 3 secondes|r
    .mob Vagash
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .accept 314 >>Acceptez la quête Protection du troupeau
step << NightElf
    >>Emmenez (kite) |cRXP_ENEMY_Vagash|r vers le |cRXP_FRIENDLY_Montagnard de Dun Morogh|r
    >>|cRXP_WARN_Infligez au moins 50% des dégâts|r
    .goto Dun Morogh, 62.8, 54.6, 10, 0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Rendez la quête Protection du troupeau
step << NightElf
    #optional
    #label LochEnter
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Traversez la porte sud pour le Loch Modan
    .zoneskip Loch Modan
step << NightElf
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step << NightElf
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entrez dans le bunker. Montez à l'étage
step << NightElf
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << NightElf
    .goto 1432/0,-2729.40,-5534.96
    >>Tuez les|cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stonesplinter Scouts|r lancent|r [Tirer] (Coup à distance: Inflige 14-20 dégâts)
    >>Il s'agit d'une zone d'hyperspawn. Vous n'aurez pas besoin de bouger d'ici
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step << NightElf
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >> Voyagez à Thelsamar
step << NightElf
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrel
step << NightElf
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step << NightElf
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step << NightElf
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Abandonnez La mission de Stormpike. Celle-ci sert à débloquer La mission du Montagnard Stormpike qui se rend pour 550xp
step << NightElf
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step << NightElf
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step << NightElf
    #optional
    #completewith Snowbound
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>Gardez tous vos |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_pour monter votre niveau de [Cuisine] plus tard
    >>|cRXP_WARN_Ne changez pas vos plans pour cet objectif pour l'instant. Vous reviendrez au Loch Modan bientôt|r
    .isOnQuest 418
step << NightElf
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step << NightElf
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step << NightElf
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << NightElf
    #optional
    #completewith Algaz
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>Gardez tous vos |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_pour monter votre niveau de [Cuisine] plus tard
    >>|cRXP_WARN_Ne changez pas vos plans pour cet objectif pour l'instant. Vous reviendrez au Loch Modan bientôt|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << NightElf
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Voyagez vers le Poste d'Algaz
step << NightElf
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Entrez dans le bunker. Montez à l'étage
step << NightElf
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step << NightElf
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step << NightElf
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Entrez dans la mine du Ru d'argent
step << NightElf
    .goto 1432/0,-2984.82,-4902.33
    >>Ouvrez les |cRXP_PICK_Caisses de la Ligue des mineurs|r à l'intérieur de la mine. Récupérez-y les |cRXP_LOOT_Equipements de mineur|r
    .complete 307,1 --Miners' Gear (4)
step << NightElf Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Achetez-lui|r |T133476:0|t[Lourde masse à pointes] |cRXP_BUY_OU le|r |T133053:0|t[Maillet en bois de fer] |cRXP_BUY_s'ils sont disponibles|r
    >>|cRXP_WARN_Si vous ne pouvez pas vous le permettre, alors gagnez de l'argent en tuant les |cRXP_ENEMY_Rats des tunnels|r à proximité jusqu'à ce que vous en ayez assez|r
    >>|cRXP_WARN_Faites cela rapidement comme un autre joueur pourrait l'acheter avant vous|r
    >>|cRXP_WARN_Si vous ne souhaitez pas le faire, passez cette étape|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << NightElf Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Achetez-lui|r |T133476:0|t[Lourde masse à pointes] |cRXP_BUY_OU le|r |T133053:0|t[Maillet en bois de fer] |cRXP_BUY_s'ils sont disponibles|r
    >>|cRXP_WARN_Si vous ne pouvez pas vous le permettre, alors gagnez de l'argent en tuant les |cRXP_ENEMY_Rats des tunnels|r à proximité jusqu'à ce que vous en ayez assez|r
    >>|cRXP_WARN_Faites cela rapidement comme un autre joueur pourrait l'acheter avant vous|r
    >>|cRXP_WARN_Si vous ne souhaitez pas le faire ou préfériez essayer d'acheter une arme moins chère/meilleure à l'Hôtel des ventes, ignorez cette étape|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << NightElf Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Équipez la|r |T133476:0|t[Lourde masse à pointes]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << NightElf Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Équipez le|r |T133053:0|t[Maillet en bois de fer]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    #label Gear
step << NightElf
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step << NightElf
    #optional
    #completewith PawsDelivery
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
step << NightElf
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> Entrez dans le bunker
step << NightElf
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step << NightElf
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .target Mountaineer Stormpike
step << NightElf
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step << NightElf
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step << NightElf
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step << NightElf
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step << NightElf
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .accept 436 >> Acceptez la quête Les fouilles de Baguefer
    .target Jern Hornhelm
step << NightElf
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step << NightElf
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Cliquez sur la |cRXP_PICK_Boîte à outils de pêche abandonnée|r sur le fond du lac
    >>|cRXP_WARN_NOTE : Ceci peut apparaître dans l'un de nombreux emplacements différents. Nagez autour jusqu'à ce que vous voyiez le point d'exclamation sur votre minicarte|r
    >>|cRXP_WARN_Attention aux ennemis de haut niveau|r |cRXP_ENEMY_Jeune battrodon|r
    .accept 86614 >>Acceptez la quête Argent of the Waves
step << NightElf
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .turnin 436 >> Rendez la quête Les fouilles de Baguefer
    .target Magmar Fellhew
step << NightElf
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target Prospector Ironband
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .accept 257 >> Acceptez la quête La fanfaronnade d'un chasseur
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << NightElf Rogue/NightElf Hunter/NightElf Warrior/NightElf Druid
    .goto Loch Modan,82.6,64.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kat|r
    .vendor >> |cRXP_BUY_Achetez|r |T132539:0|t[Bottes agiles] |cRXP_BUY_auprès d'elle si elles sont disponibles|r
    .target Kat Sampson
step << NightElf
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Tuez les |cRXP_ENEMY_Busards des montagnes|r
    >>|cRXP_WARN_Vous devez compléter cette quête et revenir à |cRXP_FRIENDLY_Daryl le Jeune|r dans les 15 minutes. Si vous échouez, abandonnez cette quête et reprenez-la de nouveau|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step << NightElf
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Voyagez vers |cRXP_FRIENDLY_Daryl le Jeune|r
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Rendez la quête La fanfaronnade d'un chasseur
    .target Daryl the Youngling
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marek Cœur-de-fer|r
    .accept 385 >> Acceptez la quête Chasse aux crocilisques
    .accept 86758 >>Acceptez la quête Twisting the Couteau
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step << NightElf
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crocilisques du loch|r. Dépouillez-les pour leur |cRXP_LOOT_Viande|r et leur |cRXP_LOOT_Peau|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    --@TODO add a line for this
    .goto Loch Modan,62,44
    >>Tuez |cRXP_ENEMY_Daggerfang|r, il |cRXP_WARN_pourrait patrouiller le long de la rive|r. Ramassez |T3736888:0|t[|cRXP_LOOT_Marek's Croco-Couteau de chasse|r]
    .complete 86758,1 --Marek's Croc Hunting Knife (1)
    .mob Daggerfang
step << NightElf
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >> Allez jusqu'à l'île située au milieu du Loch
step << NightElf
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>Tuez les |cRXP_ENEMY_Crocilisques du loch|r. Dépouillez-les pour leur |cRXP_LOOT_Viande|r et leur |cRXP_LOOT_Peau|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marek Cœur-de-fer|r
    .turnin 385 >>Rendez la quête Chasse aux crocilisques
    .turnin 86758 >>Rendre la quête Twisting the Couteau
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step << NightElf
    >>Sautez hors du pavillon et laissez-vous tuer par les mobs en bas
    .deathskip >> Mourez et réapparaissez au cimetière de Thelsamar
step << NightElf
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >> Rendez la quête Compte rendu d'avancement des fouilles
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .target Jern Hornhelm
step << NightElf
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Rendre la quête Argent of the Waves
step << NightElf
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << NightElf
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike
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
step << NightElf Druid
    #completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << NightElf Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << NightElf
    .hs >>Utilisez votre Pierre de foyer pour revenir à Auberdine
    .zoneskip Darkshore
step << NightElf
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
----End of Night Elf Westfall section
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
    #optional
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith BoatSeaCreature
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>|cRXP_WARN_Ils seront utilisés pour monter votre niveau|r de |T133971:0|t[Cuisine] |cRXP_WARN_à 50 plus tard|r
    >>|cRXP_WARN_Ne vous focalisez pas sur cet étape. Souvenez-vous simplement de garder les œufs et commencez à réfléchir au nombre de points de compétence que vous devez encore obtenir pour atteindre 50 en cuisine|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    .goto 1439,47.314,48.676
    >>Cliquez sur le |cRXP_PICK_Mystérieux Cristal Rouge|r
    >>|cRXP_WARN_Attention aux 2 groupes de 2 |cRXP_ENEMY_Séléniens déchaînés|r à l'ouest du |cRXP_PICK_Mystérieux cristal rouge|r car les duos les plus proches sont liés ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
    #label BashalEnd
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
    #label BoatSeaCreature
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
step
    #optional
    #completewith CrabTurtle
    >>Tuez des |cRXP_ENEMY_Jeunes trotteur des forêts|r et des |cRXP_ENEMY_Trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>Attention car les |cRXP_ENEMY_Foreststrider Fledglings|r peuvent s'enfuir à <30% de vie
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #optional
    #completewith CrabTurtle
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    #optional
    #completewith next
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,70,0
    .goto 1439,45.468,20.336,70,0
    .goto 1439,47.356,20.559,70,0
    .goto 1439,48.013,21.409,70,0
    .goto 1439,48.612,20.745,70,0
    .goto 1439,49.680,22.468,70,0
    .goto 1439,49.313,24.271,70,0
    >>Tuez des |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_Envisagez d'éviter les|r |cRXP_ENEMY_Clampants des récifs|r |cRXP_WARN_niveau 17 si vous arrivez à obtenir les objets de quête.|r |cRXP_WARN_Vous n'avez pas besoin de terminer cette quête à cet instant|r
    >>|cRXP_WARN_Faites attention comme ils peuvent lancer|r |T132155:0|t[Déchirure musculaire] |cRXP_WARN_une attaque instantanée infligeant 30-55 de dégâts|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,-386.39,7219.830
    >>Utilisez le [Tube de prélèvement vide] à la source de la Bondissante
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Montez la rampe vers le |cRXP_PICK_Bigobox 323|r
    .isQuestComplete 1002
step
    #optional
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestComplete 1002
step
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tuez les |cRXP_ENEMY_Trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Voyagez vers |cRXP_FRIENDLY_Balthule Frappelombre|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
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
step << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Tuez les |cRXP_ENEMY_Trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith CliffCave
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Tuez les |cRXP_ENEMY_Trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
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
    >>Tuez les |cRXP_ENEMY_Trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Voyagez vers la Grotte de la Bondissante
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>Utilisez la [Fiole d'échantillon des Chutes de la Bondissante vide] à l'entrée de la Grotte de la Bondissante
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    #label CaveMushrooms
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
-- step << NightElf !Druid
--     #softcore
--     #optional
--     #completewith CavetoAuber
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
--     .target Spirit Healer
step << skip --logout skip
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Sautez sur le rocher dans la partie supérieure de la grotte. Positionnez votre personnage jusqu'à ce qu'il paraisse flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step
    #completewith CavetoAuber
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #requires MushroomLS
    #completewith CavetoAuber
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
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
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
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
step << !NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step << !NightElf
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
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    >>|cRXP_WARN_Choisissez la|r |T135641:0|t[Dague de Courbebois] |cRXP_WARN_comme vous devez essayer de sauvegarder une|r |T135641:0|t[Dague] |cRXP_WARN_pour votre quête de|r |T132290:0|t[Poisons] |cRXP_WARN_plus tard|r << Rogue
    .turnin 4813 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Utilisez le|r |T133748:0|t[Bol de purification vide] |cRXP_WARN_au Puits de lune d'Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
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
-- step << NightElf !Druid
--     .goto 1439,36.767,44.285
--     #optional
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
--     .accept 6343 >> Accept Return to Nessa
--     .isQuestAvailable 6343
--     .target Laird
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
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
    .xp 16 >> Montez jusqu'au niveau 16
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #completewith DruidLesson
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
    .target Caylais Moonfeather
step << NightElf Druid
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #label DruidLesson
    #completewith next
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
step << NightElf Druid
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >> Acceptez la quête Des problèmes à Sombrivage ?
    .target Chief Archaeologist Greywhisker
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
step << Druid
    #optional
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombrivage
    .zoneskip Darkshore


----End of Druid Quest section----


]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 16-19 Sombrivage
#next 19-20 Les Carmines;20-21 Sombrivage/Orneval << !Hunter
#next 19-21 Sombrivage/Orneval << Hunter

-- step << NightElf !Druid
--     #optional
--     #completewith PortalDarn
--     .goto 1439/1,561.66,6343.27
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
--     .fly Teldrassil >> Fly to Teldrassil
--     .target Caylais Moonfeather
--     .zoneskip Teldrassil
-- step << NightElf !Druid
--     .goto 1438/1,950.52,8694.07
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
--     .turnin 6343 >> Turn in Return to Nessa
--     .target Nessa Shadowsong
-- step << NightElf !Druid
--     #completewith next
--     #label PortalDarn
--     .goto 1438/1,965.80,8780.95
--     .zone Darnassus >> Take the purple portal into Darnassus
-- step << NightElf Warrior
--     .goto 1457/1,2316.91,9991.88
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
--     .trainer >> Train your class spells
--     .target Arias'ta Bladesinger
-- step << NightElf Warrior
--     .goto 1457/1,2329.19,9908.60
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
--     .skipgossipid 96881
--     .train 2567 >> Train Thrown
--     .target Ilyenia Moonfire
-- step << NightElf Hunter
--     #completewith start
--     .goto 1457/1,2511.01,10178.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
--     .trainer >> Train your class spells
--     .target Jocaste
-- step << NightElf Hunter
--     #completewith start
--     #label RecruveReinforced
--     .goto 1457/1,2268.76,9770.63
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
--     >>|cRXP_WARN_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_WARN_if you can afford it. If not then buy a|r |T135490:0|t[Reinforced Bow]
--     >>|cRXP_WARN_Stock up on|r |T132382:0|t[Sharp Arrows]
--     .collect 3027,1
--     .target Landria
--     .money <0.3812
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
--     .use 3027
--     .itemcount 3027,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
--     .xp <20,1
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135490:0|t[Reinforced Bow]
--     .use 3026
--     .itemcount 3026,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
-- step << NightElf Rogue
--     >>Enter the Cenarion Enclave
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
--     .goto 1457/1,2601.39,10120.53,15,0
--     .goto 1457/1,2546.78,10083.62
--     .trainer >> Train your class spells
--     .target Syurna
-- step << NightElf !Druid
--     #optional
--     #completewith next
--     .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
-- step << NightElf !Druid
--     .goto 1438/1,2607.86,9641.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
--     .accept 730 >> Accept Trouble In Darkshore?
--     .target Chief Archaeologist Greywhisker
-- step << NightElf Priest
--     .goto 1457/1,2537.25,9654.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
--     .trainer >> Train your class spells
--     .target Jandria
-- step << NightElf !Druid
--     #label start
--     .hs >> Hearth to Auberdine
step
    .goto 1439/1,504.41,6402.39
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step << NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 730 >> Rendez la quête Des problèmes à Sombrivage ?
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto 1439/1,467.08,6409.38
    .use 12346 >>Utilisez le [Bol de purification vide] au |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
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
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
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
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #optional
    #completewith CompleteFangs
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #loop
    .waypoint 1439/1,385.20,5393.69,0
    .waypoint 1439/1,155.30,5374.48,0
    .waypoint 1439/1,322.32,4907.25,0
    .waypoint 1439/1,385.20,5393.69,70,0
    .waypoint 1439/1,155.30,5374.48,70,0
    .waypoint 1439/1,322.32,4907.25,70,0
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r au sud de Sombrivage
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #sticky
    #label earthroot
    >>Collectez 5 |T134187:0|t[Terrestrines] pendant vos quêtes|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    .goto 1439/1,98.97,6329.03,90,0
    .goto 1439/1,105.52,6189.30,90,0
    .goto 1439/1,164.47,6036.47,90,0
    .goto 1439/1,-51.68,6136.90,90,0
    .goto 1439/1,-25.48,6005.90
    .goto 1439/1,98.97,6329.03,0
    .goto 1439/1,105.52,6189.30,0
    .goto 1439/1,164.47,6036.47,0
    .goto 1439/1,-51.68,6136.90,0
    >>Cueillez les |cRXP_LOOT_Lunar Fungi|r sur le sol le long des grottes
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Voyagez jusqu'au Bosquet des Anciens
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Rendez le Bosquet des Anciens << NightElf
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    #completewith MasterG
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>Soyez prudent comme ils peuvent lancer |T132090:0|t[Exploiter une faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
    #completewith MasterG
    #optional
    .goto 1439/1,413.37,4818.17,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132152:0|t[Ravage] |cRXP_WARN_une attaque instantanée infligeant 20-40 dégâts et vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    .goto 1439,41.390,80.563
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isQuestComplete 1003
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
    .cast 5809 >> Utilisez la [Fiole de divination] et placez-la sur le sol
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
    .accept 98042 >>Acceptez la quête Rira bien qui rira le dernier
step
    #completewith TheryluneEnd
    >>Tuez les |cRXP_ENEMY_Disciples du crépuscule|r et les |cRXP_ENEMY_Nervis du crépuscule|r. Dépouillez-les pour l' |cRXP_LOOT_Œil sans pareil|r et le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en-bas|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
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
    >>Tuez les |cRXP_ENEMY_Disciples du crépuscule|r et les |cRXP_ENEMY_Nervis du crépuscule|r. Dépouillez-les pour l' |cRXP_LOOT_Œil sans pareil|r et le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en-bas|r]
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
    #optional
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>Soyez prudent comme ils peuvent lancer |T132090:0|t[Exploiter une faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132152:0|t[Ravage] |cRXP_WARN_une attaque instantanée infligeant 20-40 dégâts et vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Acceptez la quête Les Reliques de Mathystra
    .target Onu
step
    #optional
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
step << Hunter
    #optional
    .goto 1439/1,417.30,4575.82
    .xp 17 >> Montez jusqu'au niveau 17
step << Hunter
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_Vous devrez peut-être attendre qu'il réapparaisse ou que les autres joueurs terminent l'escorte|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step << Hunter
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r. Cela lancera une escorte
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Vous pouvez passer cette étape et revenir au niveau 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Vous pouvez passer cette étape et revenir au niveau 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    #completewith CompleteThistleBears
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    >>Attention car les |cRXP_ENEMY_Clampants des récifs|r peuvent lancer |T132155:0|t[Déchirure musculaire], une attaque instantanée infligeant 30-55 dégâts
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #label TurtleSouth
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step << !Hunter
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step << Hunter
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step << Druid
    #optional
    >>|cRXP_WARN_Terminez de cueillir les |T134187:0|t[Terrestrines] via l' |T136065:0|t[Herboristerie] et aussi plus rarement dans les|r |cRXP_PICK_Coffres endommagés|r
    >>|cRXP_WARN_Si vous abandonnez et n'en trouvez pas assez, passez cette étape|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
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
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4728 >> Acceptez la quête La créature marine échouée
step << Druid
    #label Southcrabs
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    .goto 1450/1,-2593.82,7867.06
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    .goto 1450/1,-2491.79,7454.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Volez à Sombrivage
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label Southcrabs
    #completewith CleansingTharnariun
    .subzone 442 >> Voyagez vers Auberdine
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Retournez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
    .turnin 963 >> Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #completewith CleansingTharnariun
    .abandon 963 >> Abandonnez Un amour éternel
step
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Rendez la quête La créature marine échouée
    .turnin 4730 >> Rendez la quête La créature marine échouée
    .turnin 4731 >> Rendez la quête La tortue de mer échouée
    .turnin 4732 >> Rendez la quête La tortue de mer échouée << Hunter
    .turnin 4733 >> Rendez la quête La créature marine échouée << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto 1439/1,531.27,6403.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r et à |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Vendez votre surplus au marchand et réapprovisionnez-vous en nourriture et en eau|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4740 >> Rendez la quête On recherche : Fondeboue !
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,492.300,6581.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver::3649|r
    .target Thundris Windweaver::3649
    .turnin 98042 >>Rendez la quête Rira bien qui rira le dernier
step
    #label CleansingTharnariun
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    .goto 1439/1,491.97,6560.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Réapprovisionnez-vous en munitions|r
    .target Dalmond
step << Druid
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Rendez la quête Rassembler les ingrédients du remède
    .isQuestComplete 6123
--     .accept 6124 >> Accept Curing the Sick
-- step << Druid
--     #optional
--     .goto 1439/1,472.32,6556.100
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
--     .accept 6124 >> Accept Curing the Sick
--     .target Alanndarian Nightsong
--     .isQuestTurnedIn 6123
step << Druid
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >> Abandonnez la quête Rassembler les ingrédients du remède
-- step << Druid
--     #optional
--     #completewith Buzzbox323End
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .isQuestAvailable 1138
-- step << Druid
--     #sticky
--     #label SicklyDeers
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .waypoint 1439/1,-313.68,6883.60,40,0
--     .waypoint 1439/1,98.97,7237.30,40,0
--     .waypoint 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
--     .isQuestTurnedIn 1138
step
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
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Jeunes chardons|r peuvent lancer|r |T132152:0|t[Ravage]|cRXP_WARN_, une attaque instantanée en mêlée qui vous étourdit pendant 2 secondes|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
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
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> Utilisez le [Bol de purification rempli] |cRXP_WARN_au |cRXP_PICK_Feu de joie|r pour invoquer|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corruption des Noirbois RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Tuez|cRXP_ENEMY_Xabraxxis|r. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera sur le sol. Ramassez le |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18 >> Montez jusqu'au niveau 18
step << Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18.75 >> Montez jusqu'au niveau 18 + 75%
    >>Assurez-vous que le délai de récupération de votre Pierre de foyer soit inférieur à 10 minutes
    >>Passez cette étape si la zone est trop peuplée
step
    #label LateStalkerFangs
    #optional
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
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    .isQuestComplete 1002
    #label Buzzbox323End
    #requires SicklyDeers << Druid
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
step
    #optional
    .isQuestTurnedIn 1002
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .accept 1003 >> Acceptez la quête Bigobox 525
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step << !Hunter !Druid
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
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-800.35,7370.92,55,0
    .goto 1439/1,-855.37,7449.96,55,0
    .goto 1439/1,-880.91,7302.36,55,0
    .goto 1439/1,-950.34,7258.26,55,0
    .goto 1439/1,-1005.36,7383.58
    >>Ramassez les |cRXP_LOOT_Reliques de Mathystra|r sur le sol
    .complete 951,1 -- Mathystra Relics (6)
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
step
    #label NorthStalkerPelts
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Tuez les |cRXP_ENEMY_Moonstalker Sires|r et les |cRXP_ENEMY_Moonstalker Matriarchs|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Moonstalker Matriarchs|r. Ils attaquent toujours avec un |cRXP_ENEMY_Moonstalker Runt|r à leur côté|r
    >>Les |cRXP_ENEMY_Géniteurs traquelunes|r peuvent lancer |T132090:0|t[Exploiter faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
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
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4727 >> Acceptez la quête La tortue de mer échouée
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
    #optional
    #completewith BeachedCloak
    .abandon 2078 >> Abandonnez la quête La vengeance de Gyromast
step << Druid
    #optional
    #completewith DeerComplete
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Détruisez la |T134459:0|t[Clé de Gyromast] de vos sacs, car il n'est plus nécessaire
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Voyagez vers Auberdine
    .cooldown item,6948,<0
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>2,1
    .subzoneskip 442 --auberdine
    .bindlocation 442,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4727 >> Acceptez la quête La tortue de mer échouée
-- step << Druid
--     #label DeerComplete
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .goto 1439/1,-313.68,6883.60,40,0
--     .goto 1439/1,98.97,7237.30,40,0
--     .goto 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
step << Druid
    .goto 1439/1,-259.32,7839.03
    >>Nagez jusqu'à sortir de l'eau
    >>Ouvrez le |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Demi-pendentif d'agilité aquatique|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)

step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Tuez des mobs en boucle jusqu'à ce que le temps de récupération de votre Pierre de foyer soit inférieur à 6 minutes. Mourez et réapparaissez à côté du |cRXP_FRIENDLY_Gardien des âmes|r
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #hardcore
    #optional
    #completewith next
    +Tuez des mobs en boucle jusqu'à ce que le temps de récupération sur votre Pierre de foyer soit inférieur à 9 minutes, puis retournez à Auberdine
step << !NightElf !Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << !NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Détruisez l' |T134059:0|t|cRXP_LOOT_[Echantillon de céréales des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Détruisez l' |T133944:0|t|cRXP_LOOT_[Echantillon de noix des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Détruisez l' |T134013:0|t|cRXP_LOOT_[Echantillon de fruit des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << !NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step << !NightElf
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Rendez la quête Un maître perdu
    .accept 993 >> Acceptez la quête Un maître perdu
    .target Terenthis
step << !NightElf
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Si vous équipez la|r |T133762:0|t[Cape enchantée de traquelune]|cRXP_WARN_, assurez-vous de garder votre cape actuelle pour plus tard, car la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_est perdue lors d'une prochaine remise de quête|r
    .equip 15,5387 >>|cRXP_WARN_Équipez la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_si elle est meilleure que votre cape actuelle|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Allez sur le quai du bateau pour Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] |cRXP_WARN_les|r |T132832:0|t|cRXP_LOOT_[Petit Oeufs]|r |cRXP_WARN_et les|r |T134059:0|t[Epices douces] |cRXP_WARN_en|r |T132834:0|t[Oeufs aux herbes]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Prenez le chemin de vol de Teldrassil
    .target Vesprystus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #completewith next
    .goto 1457/1,2511.01,10178.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .target Jocaste
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossipid 96881
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2268.76,9770.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Achetez-lui un|r |T135489:0|t[Arc lourd à double courbure] |cRXP_BUY_et un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #completewith next
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
-- step << Druid
--     .goto 1450/1,-2678.53,8023.63
--     >>Go to Moonglade
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
--     .turnin 6124 >> Turn in Curing the Sick
--     .accept 6125 >> Accept Power over Poison
--     .target Dendrite Starblaze
--     .isQuestTurnedIn 6123
step << Druid
    #label MoongladeTrain
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << NightElf/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Voyagez vers Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
step
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
step
    #requires DeleteGyromast
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12342 >> Détruisez l' |T134059:0|t|cRXP_LOOT_[Echantillon de céréales des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12343 >> Détruisez l' |T133944:0|t|cRXP_LOOT_[Echantillon de noix des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12341 >> Détruisez l' |T134013:0|t|cRXP_LOOT_[Echantillon de fruit des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << NightElf Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Faites du stock de |T132382:0|t[Flèches aiguisées]
    .target Dalmond
step << NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step << NightElf
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Rendez la quête Un maître perdu
    .accept 993 >> Acceptez la quête Un maître perdu
    .target Terenthis

step << NightElf
    #optional
    >>|cRXP_WARN_Si vous équipez la|r |T133762:0|t[Cape enchantée de traquelune]|cRXP_WARN_, assurez-vous de garder votre cape actuelle pour plus tard, car la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_est perdue lors d'une prochaine remise de quête|r
    .equip 15,5387 >>|cRXP_WARN_Équipez la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_si elle est meilleure que votre cape actuelle|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

--Hunter stays Darkshore/Ashenvale
--Shaman to IF for training then SW > Redridge
--!Hunter !Shaman straight to SW > Redridge

step << !Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Achetez-lui un|r |T135237:0|t[Silex et amadou] |cRXP_BUY_et un|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Ceci sert à monter votre|r |T133971:0|t[Cuisine] |cRXP_WARN_bientôt sur le bateau|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Achetez-lui des|r [Epices douces] |cRXP_BUY_jusqu'à ce que vous ayez|r [Epices douces] |cRXP_BUY_autant ou plus que le montant de |r [Petit oeuf] |cRXP_BUY_que vous avez actuellement|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << !Hunter
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439/1,926.400,6542.900,15 >> Voyagez jusqu'au quai du bateau pour Stormwind << !Shaman
    .goto 1439,32.432,43.744,15 >> Voyagez vers le quai du bateau pour le Port de Menethil << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << !Hunter
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] |cRXP_WARN_les|r |T132832:0|t|cRXP_LOOT_[Petit Oeufs]|r |cRXP_WARN_et les|r |T134059:0|t[Epices douces] |cRXP_WARN_en|r |T132834:0|t[Oeufs aux herbes]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label MenethilRRBoat
    .goto 1439/1,826.67,6409.82 << Shaman
    .goto 1439/1,929.100,6543.600 << !Hunter !Shaman
    >>Montez le niveau de vos [Premiers soins] en attendant pour le bateau << Rogue/Warrior/Paladin
    .zone Stormwind City >> Prenez le bateau pour Stormwind << !Shaman
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << Shaman
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step << Shaman
    .goto 1437/0,-782.03,-3793.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Apprenez vos sorts de classe
step << Shaman
    #optional
    .goto 1455/0,-1115.43,-4598.86--c:Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 968 >> Rendez la quête Les puissances d'en-bas
    .target Gerrig Bonegrip
    .isOnQuest 968
step << Shaman
    #completewith next
    .goto 1455/0,-1249.95,-4793.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Il s'agit d'un objet en approvisionnement limité. Passez cette étape si le |cRXP_FRIENDLY_Coupebraquet Tournepignon|r n'en a pas en stock|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Stormwind
    >>Montez vos [Premiers soins] si nécessaire en attendant le Tram
    >>|cRXP_WARN_Vous aurez besoin d'un niveau de compétence en|r |T135966:0|t[Premiers soins] |cRXP_WARN_de 80 pour une quête au niveau 24 << Rogue !Dwarf
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Les Carmines
#next 20-21 Sombrivage/Orneval

step << !Shaman
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable des manifestes Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acceptez la quête La faveur de Philmor
step << Shaman
    .goto 1453/0,758.4316,-8140.6689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .goto 1453/0,585.9322,-8241.1085
    .target Wilder Thistlenettle
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Achetez un|r |T135139:0|t[Baguette ardente] |cRXP_WARN_si elle est meilleure que la votre|r
    >>|cRXP_WARN_Il est important d'acheter une baguette qui ne fait pas de dégâts d'ombre. Vous devrez affronter des mobs résistants aux dégâts d'ombre plus tard|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5210,1
    .target Ardwyn Cailen
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Human Paladin
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Rendez la quête Le Tome de divinité
    .accept 1781 >>Acceptez la quête Le Tome de divinité
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,862.400,-8516.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Rendez la quête Le Tome de divinité
    .accept 1786 >>Acceptez la quête Le Tome de divinité
    .target Gazin Tenorm
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
    .isQuestComplete 399
step << !NightElf
    .goto 1453/0,600.22,-8426.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
    .isOnQuest 1338
step << !Shaman
    .goto 1453/0,758.4316,-8140.6689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
step
    #completewith BMenace
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Billibub Cogspinner|r n'en a plus en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .goto 1453/0,585.9322,-8241.1085
    .target Wilder Thistlenettle
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    >>|cRXP_WARN_Assurez-vous d'apprendre|r |T136058:0|t[Crochetage] |cRXP_WARN_comme vous en aurez besoin pour votre quête de classe Voleur bientôt|r
    .trainer >> Apprenez vos sorts de classe
    .train 1804 >> Apprenez [Crochetage]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Entrez au Quartier général du SI:7. Montez les escaliers vers |cRXP_FRIENDLY_Renzik "le kriss"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "le kriss"|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .goto 1453/0,362.55,-8819.80
    .target Renzik "The Shiv"
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Mage/Rogue/Warlock/Druid/Warrior/Paladin
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage/Druid
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez un|r |T135342:0|t[Kriss] |cRXP_BUY_ou une meilleure arme à l'Hôtel des ventes|r
    >>|cRXP_WARN_Equipez-le lorsque vous passez au niveau 19|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez un|r |T135342:0|t[Kriss]
    >>|cRXP_WARN_Equipez-le lorsque vous passez au niveau 19|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step -- must be on quest now to loot Great Goretusk Snout
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez l'|T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard, et le reste pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Dwarf Rogue
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Rogue/Dwarf Rogue
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134437:0|t[Anti-venin] << !Dwarf Rogue
    -->>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    --.collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
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
    #completewith orcs
    .goto 1453/0,490.12,-8835.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers Les Carmines << !NightElf
    .fp Stormwind >> Apprenez le chemin de vol de Stormwind << NightElf
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step << NightElf
    #completewith RRFP
    .goto 1429/0,389.800,-9119.900
    .zone Elwynn Forest >> Quittez Stormwind
    .zoneskip Redridge Mountains
step << NightElf
    #completewith RRFP
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Voyagez vers Les Carmines
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
step << NightElf
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Acceptez la quête La menace des Rochenoires
    .accept 98387 >>Acceptez la quête Barricade rochenoire
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Acceptez la quête Les outils perdus
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 118 >> Acceptez la quête Le prix des fers
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 95999 >>Acceptez la quête AVIS DE RECHERCHE : incinérateur Gar’im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2221.65,-9218.60
    .accept 120 >> Acceptez la quête Un message pour Hurlevent
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.15,-9261.310
    .accept 127 >> Acceptez la quête Criée aux poissons
step
    .goto 1433/0,-2152.62,-9217.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .accept 129 >> Acceptez la quête Un repas gratuit
step
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley le noir|r à l'étage
	.target Wiley the Black
    .turnin 65 >> Rendez la quête La Confrérie défias
    .isOnQuest 65
step << skip -- must on quest now to loot Great Goretusk Snout
#optional
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.16,-9245.67
    .accept 34 >> Acceptez la quête Un invité indésirable
step << Warlock
    .goto 1433/0,-1911.22,-9288.820
    >>Tuez |cRXP_ENEMY_Bellygrub|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    >>|cRXP_WARN_Amenez |cRXP_ENEMY_Fouailleventre|r à Comté-du-Lac afin que les |cRXP_FRIENDLY_Gardes|r vous aident à tuer|r |cRXP_ENEMY_Fouailleventre|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Vous pouvez passer cette étape et revenir plus tard|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .mob Bellygrub
step << Warlock
    .goto 1433/0,-2045.16,-9245.67
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Rendez la quête Un invité indésirable
step << Rogue
    .goto 1433/0,-2180.19,-9328.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .accept 2282 >> Acceptez la quête La scierie d'Alther
    .target Lucius
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
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step
    #softcore
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #sticky
    #completewith orcs
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Tarentules|r. Dépouillez-les pour leur |cRXP_LOOT_Chair croustillante d'araignée|r
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>|cRXP_WARN_Ne vendez PAS le moindre de ces objets avant de rendre la quête Goulash des Carmines|r
    >>|cRXP_WARN_Gardez tous les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous récupérez comme vous pourrez les utiliser pour monter votre niveau de compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à 50 ce qui sera requis pour le Bois de la Pénombre plus tard|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .turnin 129 >> Rendez la quête Un repas gratuit
    .accept 130 >> Acceptez la quête Une visite chez l'herboriste
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.28,-9443.750
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .accept 246 >> Acceptez la quête L'appréciation du danger
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r et les |cRXP_ENEMY_Braconniers des Carmines|r
    >>Tuez les |cRXP_ENEMY_Vandales des Carmines|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers cloutés|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2031.48,-9556.25,45,0
    .goto 1433/0,-1955.07,-9637.63,45,0
    .goto 1433/0,-1813.97,-9679.9,45,0
    .goto 1433/0,-1861.07,-9754.76,45,0
    .goto 1433/0,-1980.25,-9641.10
    >>Tuez les |cRXP_ENEMY_Tarentules|r. Dépouillez-les pour leur |cRXP_LOOT_Chair croustillante d'araignée|r
    .collect 1081,5,92,1
    .mob Tarantula
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
    .goto 1433/0,-2634.54,-9588.54
    >>Tuez les |cRXP_ENEMY_Guerriers des rivages murloc|r et les |cRXP_ENEMY_Maîtres des flots murloc mineur|r. Dépouillez-les pour leurs |cRXP_LOOT_Ailerons|r et leur |cRXP_LOOT_Poisson-lune|r
	>>|cRXP_WARN_Sachez que cette zone est un hyperspawn, ce qui signifie que les |cRXP_ENEMY_Murlocs|r réapparaissent rapidement|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    .goto 1433/0,-2903.07,-9691.340
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>|cRXP_WARN_Passez cette étape si vous ne voyez aucun|r |cRXP_ENEMY_Condor redoutable|r
    .collect 1080,5,92,1
    .mob Dire Condor
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
step
    .goto 1433/0,-2903.07,-9691.340
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Sautez dans le lac|r
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20-7687 >> Montez votre expérience jusqu'à ce qu'il ne vous reste que 7687xp pour le niveau 20 << !Rogue
    .xp 20-10012 >> Tuez des mobs en boucle jusqu'à ce qu'il ne vous manque que 10012xp pour atteindre le niveau 20 << Rogue
step << Rogue
    #completewith next
    .subzone 97 >> Voyagez vers La scierie d'Alther
step << Rogue
    .goto 1433,51.846,45.116
    >>Vous DEVEZ le faire pour votre quête de [Poisons] plus tard
    >>|cRXP_WARN_Restez sur la location du point de repère. Positionnez votre caméra et votre curseur jusqu'à ce que vous puissiez cliquer sur 3 |cRXP_PICK_Practice Lockboxes|r en même temps et sans avoir à bouger|r
    .skill lockpicking,80 >>|cRXP_WARN_Ouvrez les |cRXP_PICK_Practice Lockboxes|r sur le sol dans la scierie d'Alther jusqu'à ce que votre score de|r [Crochetage] soit de 80|r
step << Rogue
	.goto 1433/0,-2700.75,-9222.07
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto 1433/0,-2298.06,-9284.04,150 >> Voyagez vers Comté-du-Lac
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Rendez la quête La menace des Rochenoires
    .turnin 98387 >>Rendez la quête Barricade rochenoire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Rendez la quête Les outils perdus
    .accept 89 >> Acceptez la quête Le pont sur le lac
step
    #optional
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Rendez la quête AVIS DE RECHERCHE : incinérateur Gar’im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Rendez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
    .turnin 150 >> Rendez la quête Les braconniers murlocs
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Rendez la quête Criée aux poissons
step << Druid
    .goto 1433/0,-2152.62,-9223.67--c:Redridge Mountains,26.8,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brianna l'aubergiste|r.
    .home Lakeshire >> Liez votre Pierre de foyer à Lakeshire
    .target Innkeeper Brianna
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Rendez la quête Une visite chez l'herboriste
    .accept 131 >> Acceptez la quête Bouquet de jonquilles
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Rendez la quête Bouquet de jonquilles
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto 1433/0,-2180.19,-9328.21
    .turnin 2282 >> Rendez la quête La scierie d'Alther
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Détruisez le |T134328:0|t[Certificat des voleurs]. Vous n'en avez pas besoin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Rendez la quête L'appréciation du danger
    .turnin 98407 >>Rendez la quête Démonstration de force
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20 >> Tuez des mobs en boucle jusqu'à arriver au niveau 20

-- Druid Cat form quest --

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
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Rendez la quête L’esprit du Grand félin
    .accept 98341 >>Acceptez la quête L’esprit du Grand félin du vent << Skyborne
    .accept 98341 >>Acceptez la quête L’esprit du Grand félin << !Skyborne
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
    >>Ramassez la |cRXP_LOOT_Relique du Croc|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Esprit du Grand félin|r
    .turnin 98396 >>Rendez la quête L’esprit du Grand félin
    .accept 98731 >>Acceptez la quête Bénédiction de l’esprit du Grand félin
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Rendez la quête L’esprit du Grand félin du vent
    .accept 98738 >>Acceptez la quête Bénédiction de l’esprit du Grand félin du vent
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTéléportez-vous à Reflet-de-Lune et parlez à |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Rendez la quête Bénédiction de l’esprit du Grand félin du vent << Skyborne
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
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Comté-du-Lac

-- Druid cat form quest end --

step
    #completewith InRR
    .goto 1433/0,-2234.89,-9435.35
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fly Stormwind >> Volez à Stormwind
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_WARN_que vous équiperez au niveau 21|r
    >>|cRXP_WARN_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_WARN_que vous équiperez au niveau 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith next
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step
    #optional
    .isQuestComplete 2040
    .goto 1453/0,758.4316,-8140.6689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Rendez la quête Assaut souterrain
    .target Shoni the Shilent
step
    #optional
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 168 >> Rendez la quête À la recherche de Cartes du Syndicat des Mineurs
    .goto 1453/0,585.9322,-8241.1085
    .target Wilder Thistlenettle
step
    #optional
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 167 >> Rendez la quête Adieu mon frère…
    .goto 1453/0,585.9322,-8241.1085
    .target Wilder Thistlenettle
step << Warrior/Paladin
    #ah
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Achetez une|r |T135280:0|t[Faux dace] |cRXP_WARN_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    >>|cRXP_WARN_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #ssf
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Achetez une|r |T135280:0|t[Faux dace] |cRXP_WARN_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #completewith next
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Allez à la Tour des Mages
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Mage
    .goto 1453/0,847.56,-8991.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
-- step << Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
--     .goto 1453/0,1100.15,-8776.330
--     .trainer >> Train your class spells
--     .train 768 >> Train |T132115:0|t[Cat Form]
--     .target Sheldras Moontree
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r. Il vous donnera le [|cRXP_LOOT_Tome of Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Rendez la quête Le Tome de la bravoure
    .accept 1650 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
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
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue/Skyborne Rogue
    .goto 1436/0,1037.42,-10628.27,5,0
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
    >>Envolez-vous là-bas si vous avez déjà le chemin de vol pour la Marche de l'Ouest
    .isOnQuest 2360
step << NightElf Rogue/Skyborne Rogue
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Prenez le chemin de vol de la Marche de l'Ouest
    .target Thor
    .isOnQuest 2360
step << Human Rogue/Dwarf Rogue
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Tuez les |cRXP_ENEMY_Araignées Tisse-venin pygmées|r et les |cRXP_ENEMY_Araignées Tisse-venins|r. Dépouillez-les pour une |cRXP_LOOT_Petite glande à venin|r et leurs |cRXP_LOOT_Pattes d'araignée fondantes|r
    >>|cRXP_WARN_Vous avez besoin d'une |cRXP_LOOT_Petite glande à venin|r pour créer un|r |T134437:0|t[Anti-venin]|cRXP_WARN_ pour enlever le debuff|r |T136230:0|t[Toucher de Zanzil]|cRXP_WARN_ plus tard|r
    >>|cRXP_WARN_Gardez les |cRXP_LOOT_Pattes d'araignée fondantes|r plus tard|r
    >>|cRXP_WARN_Si vous avez un ami|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_ vous pouvez passer cette étape et leur demander de l'enlever|r
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
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
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
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
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
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .skill firstaid,80 >> Montez vos [Premier soins] à un niveau de compétence de 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .train 7934 >> Apprenez [Anti-Venin]
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



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Général Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto 1453/0,520.88,-8954.15
    .turnin 120 >> Rendez la quête Un message pour Hurlevent
    .accept 121 >> Acceptez la quête Un message pour Hurlevent
step
    #completewith next
    .goto 1429/0,84.61,-9457.95,60 >> Voyagez vers Goldshire
step
    .goto 1429/0,87.73,-9456.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Rendez la quête Le prix des fers
    .accept 119 >> Acceptez la quête Le retour chez Verner
step
    #completewith next
    .goto 1429/0,-727.57,-9555.16,50 >> Voyagez à la tour d'Azora. Montez la tour
step
    .goto 1429/0,-728.26,-9553.08
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r tout en haut
    .accept 94 >> Acceptez la quête L'œil attentif
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto 1453/0,489.72,-8837.28,-1
	.goto 1433/0,-1716.28,-9623.29,-1
    .zone Redridge Mountains >>Voyagez jusqu'aux Carmines
    .fly Redridge >> Volez vers les Carmines
    >>|cRXP_WARN_Si vous êtes à Comté-de-l'Or, ce sera plus rapide de voler depuis Hurlevent|r
	>>|cRXP_WARN_Si vous êtes à la Tour d'Azora, courez simplement vers les Carmines|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .turnin 119 >> Rendez la quête Le retour chez Verner
    .accept 124 >> Acceptez la quête Le hurlement des gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 122 >> Acceptez la quête Les écailles de dragonnet
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 121 >> Rendez la quête Un message pour Hurlevent
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Rendez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
    .turnin 150 >> Rendez la quête Les braconniers murlocs
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Rendez la quête Une visite chez l'herboriste
    .accept 131 >> Acceptez la quête Bouquet de jonquilles
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .isOnQuest 92
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>|cRXP_WARN_Gardez tous les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous récupérez comme vous pourrez les utiliser pour monter votre niveau de compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à 50 ce qui sera requis pour le Bois de la Pénombre plus tard|r
    .goto 1433/0,-1912.31,-9339.93,60,0
    .goto 1433/0,-2270.93,-9591.440,60,0
    .goto 1433/0,-2244.23,-9619.53,60,0
    .goto 1433/0,-1912.31,-9339.93
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2059.27,-9091.91,0
    >>Tuez les |cRXP_ENEMY_Brutes des Carmines|r et les |cRXP_ENEMY_Mystiques des Carmines|r. Dépouillez-les pour leurs |cRXP_LOOT_Clous en fer|r et leur |cRXP_LOOT_Rivets de fer|r
    .complete 124,1 --Redridge Brute (10)
    .mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step
    .goto 1433/0,-2514.49,-9033.70,50,0
    .goto 1433/0,-2580.70,-9091.33,50,0
    .goto 1433/0,-2321.07,-9527.58,50,0
    .goto 1433/0,-2364.92,-9645.44
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Rendez la quête Bouquet de jonquilles
step
    #completewith next
    .goto 1433/0,-1908.40,-9299.83,0
    .goto 1433/0,-1988.50,-9176.32,0
    .goto 1433/0,-1937.7,-9371.64,0
    .goto 1433/0,-2146.54,-9225.84
    +|cRXP_WARN_Montez votre niveau de Cuisine|r |T133971:0|t[Cuisine] |cRXP_WARN_en utilisant les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous avez récupéré auparavant. Vous avez besoin d'un niveau de compétence de 50 en|r |T133971:0|t[Cuisine]
    +|cRXP_WARN_Si vous avez besoin de plus de|r |T133970:0|t|cRXP_LOOT_[Morceau xde viande de sanglier]|r |cRXP_WARN_allez à l'ouest près de|r |cRXP_ENEMY_Fouailleventre|r |cRXP_WARN_et tuez plus de|r |cRXP_ENEMY_Grands Broche-tripes|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto 1433/0,-2243.79,-9259.860
    .turnin 124 >> Rendez la quête Le hurlement des gnolls
    .turnin 122 >> Rendez la quête Les écailles de dragonnet
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2267.67,-9280.140
    .turnin 89 >> Rendez la quête Le pont sur le lac
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 19-21 Sombrivage/Orneval
#next RestedXP Guide Forever (A)\21-23 Ashenvale/Serres-Rocheuses

step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Rendez la quête Les Reliques de Mathystra
    .target Onu
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
    >>|cRXP_WARN_Il s'agit d'une quête chronométrée, vous devez l'escorter jusqu'à son sac en 20 minutes|r
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
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_Vous devrez peut-être attendre qu'il réapparaisse ou que les autres joueurs terminent l'escorte|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .isOnQuest 729
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>Ceci va démarrer une escorte
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à la faire seul|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à la faire seul|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith TheryluneEnd
    >>Tuez les |cRXP_ENEMY_Twilight Disciples|r et les  |cRXP_ENEMY_Twilight Thugs|r. Dépouillez-les pour le [|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
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
    #optional
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    #optional
    .goto 1439,31.229,85.564
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #optional
    .goto 1439,31.690,83.700
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    #optional
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132152:0|t[Ravage] |cRXP_WARN_une attaque instantanée infligeant 20-40 dégâts et vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isOnQuest 1003
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Nettoyez la zone des furbolgs près de la grotte avant de lui parler|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 994 >> Acceptez la quête Évasion par la force
    .target Volcor
    .isOnQuest 993
step
    #optional
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Nettoyez la zone des furbolgs près de la grotte avant de lui parler|r
    .accept 994 >> Acceptez la quête Évasion par la force
    .target Volcor
    .isQuestTurnedIn 993
step
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escortez |cRXP_FRIENDLY_Volcor|r
    >>Après avoir passé la 3ème torche en quittant la grotte, un |cRXP_ENEMY_Furlbog|r apparaîtra de chaque côté et attaquera |cRXP_FRIENDLY_Volcor|r
    >>Au milieu de la route, un |cRXP_ENEMY_Furlbogs|r apparaîtra de chaque côté et attaquera |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Rendez la quête Les Reliques de Mathystra
    .target Onu
    .isOnQuest 951
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
    >>|cRXP_WARN_Il s'agit d'une quête chronométrée, vous devez l'escorter jusqu'à son sac en 20 minutes|r
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
    --@TODO add coordinates for this
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Kerlonian|r vers son sac |cRXP_WARN_à Sombrivage|r|r
    .use 13536 >> |cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_dès que |cRXP_FRIENDLY_Kerlonian|r s'endort|r
    >>|cRXP_WARN_Évitez de rester sur la route principale autant que possible. Les ennemis n'apparaîtront que si vous restez sur la route|r
    .complete 5321,2
    .isOnQuest 5321
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto 1440/1,-12.70,4150.17
step
    #sticky
    #completewith next
    >>Tuez et dépouillez les |cRXP_WARN_Coureurs Patte-fantôme|r que vous croisez en quêtant. Gardez tous les |T133970:0|t[|cRXP_LOOT_Steaks de loup|r] que vous obtenez. Vous en aurez besoin de 10 pour une quête de cuisine plus tard
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Rendez la quête Le dormeur s'est éveillé
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    .accept 970 >> Acceptez la quête La Tour d'Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Tuez les |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Adepts|r et les |cRXP_ENEMY_Dark Strand Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Soul Gem|r
    >>Soyez patient, cet objet a peu de chance de tomber
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Ouvrez-les |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-les |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons. Ils peuvent être difficiles à distinguer
    .complete 1010,1
    .isOnQuest 1010
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Continuez à tuer les |cRXP_ENEMY_mobs de la Rive noire|r jusqu'à avoir assez d'expérience pour atteindre le niveau 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Montez jusqu'au niveau 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Ouvrez-les |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-les |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons. Ils peuvent être difficiles à distinguer
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    #sticky
    #completewith Astranaar
    >>Tuez et dépouillez les |cRXP_WARN_Coureurs Patte-fantôme|r que vous croisez en quêtant. Gardez tous les |T133970:0|t[|cRXP_LOOT_Steaks de loup|r] que vous obtenez. Vous en aurez besoin de 10 pour une quête de cuisine plus tard
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto 1440/1,394.43,2677.63
    .turnin 945 >> Rendez la quête L'évasion de Therylune
    .isQuestComplete 945
step << Hunter
    .goto 1440/1,522.900,2716.100,30 >> Prenez la rampe vers le nord-ouest
step
    #completewith Astranaar
    >>Gardez jusqu'à 6 |cRXP_LOOT_Pattes d'araignées fondantes|r dépouillées sur les |cRXP_ENEMY_Araignées|r dans la zone pour plus tard
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #sticky
    .goto 1440/1,663.38,2365.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Apprenez les compétences de votre familier
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    .goto 1440/1,661.42,2373.12--c:Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Apprenez vos sorts de classe
    .train 5118 >> Apprenez |T132242:0|t[Aspect du guépard]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Prenez le chemin de vol d'Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1008 >> Acceptez la quête La grève de Zoram
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto 1440/1,-311.99,2759.11
    .accept 1070 >> Acceptez la quête De garde dans les Serres-Rocheuses
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto 1440/1,-362.16,2785.640
    .accept 1056 >> Acceptez la quête Voyage au pic des Serres-Rocheuses
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto 1440/1,-411.18,2767.19
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .accept 1054 >> Acceptez la quête Diminution de la menace
step
    #label HCHunterNoHS --hidden step for #include
step << NightElf Hunter
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    .goto 1440/1,-410.60,2758.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Achetez de la nourriture et de l'eau si nécessaire|r
    .target Maliynn
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
step << Hunter
    .goto 1440/1,-306.80,2720.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haljan Oakheart|r
    .vendor >> |cRXP_BUY_Refaites un stock de munitions si nécessaire|r
    .target Haljan Oakheart
step
    #completewith ElunesTear
    >>Gardez jusqu'à 6 |cRXP_LOOT_Pattes d'araignées fondantes|r dépouillées sur les |cRXP_ENEMY_Araignées|r dans la zone. Vous en aurez besoin pour une quête à venir
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    .goto 1440/1,-974.00,2890.19
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
step
    #label ElunesTear
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Rendez la quête Larme d'Elune
    .timer 17,Larme d'Elune RP
    .accept 1034 >> Acceptez la quête Les ruines de Chimétoile
step
    .goto 1440/1,-220.3,2067.24
    >>Ramassez le |cRXP_PICK_Stardust Covered Bushes|r pour le |cRXP_LOOT_Handful of Stardust|r
    >>Ils apparaissent un peu partout tout le long de l'île
    .complete 1034,1
step
    #completewith next
    .goto 1440/1,-126.30,2203.69,15 >> Dirigez-vous vers la base de la montagne
    .goto 1440/1,-99.78,2305.170,15 >>Visez tout droit au nord en montant la montagne
step
    #completewith next
    .goto 1440/1,114.17,2337.45,8 >> Escaladez la colline à côté du grand arbre, à droite de l'entrée du Sanctuaire de Scarfeu
    >>Sautez sur la racine de l'arbre et restez à droite pour éviter d'aggro les mobs
step
    .goto 1440/1,242.76,2340.53
    >>Tuez|cRXP_ENEMY_Ilkrud Magthrull|r. Dépouillez-le pour son |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r lancera [Gardiens d'Ilkrud] |cRXP_WARN_avec un long temps d'incantation de 5 secondes qui invoquera 2 |rVoidwalkers|cRXP_WARN_. Interrompez-le si possible.|r
    >>|cRXP_WARN_Libérez-vous un chemin si nécessaire afin que vous puissiez les reset avec les |cRXP_ENEMY_Succubes|r si nécessaire. Vous pouvez passer cette étape et la faire au niveau 23 si vous le souhaitez|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Cliquez ici pour un exemple vidéo|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    .isQuestComplete 973
    .goto 1440/1,189.71,3185.77
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Rendez la quête La Tour d'Althalaxx
step
    #label HCHunterEnd --hidden step for #include
step
    #sticky
    #completewith StatuetteStart
    >>Gardez jusqu'à 6 |cRXP_LOOT_Pattes d'araignées fondantes|r dépouillées sur les |cRXP_ENEMY_Araignées|r dans la zone. Vous en aurez besoin pour une quête à venir
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Tuez et dépouillez les |cRXP_WARN_Coureurs Patte-fantôme|r que vous croisez en quêtant. Gardez tous les |T133970:0|t[|cRXP_LOOT_Steaks de loup|r] que vous obtenez. Vous en aurez besoin de 10 pour une quête de cuisine plus tard
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .accept 1007 >> Acceptez la quête L'ancienne statuette
step
    #completewith nagas
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    >>Ne sortez pas de votre route pour terminer cette quête
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto 1440/1,881.13,3879.57
    >>Ramassez les |cRXP_LOOT_Ancient Statuette|r sur le sol
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1007 >> Rendez la quête L'ancienne statuette
    .timer 22,L'ancienne Statuette RP
    .accept 1009 >> Acceptez la quête Ruuzel
step
    .goto 1440/1,1323.55,4159.35
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>Si vous avez des [Bombes]|cRXP_WARN_/|r[Grenades], vous pouvez vous en servir pour ramener |cRXP_ENEMY_Ruuzel|r à part
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling"
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto 1440/1,1323.55,4159.35
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,866.14,4013.71,70,0
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1009 >> Rendez la quête Ruuzel
step
    #sticky
    #completewith SoulGemStart
    >>Gardez jusqu'à 6 |cRXP_LOOT_Pattes d'araignées fondantes|r dépouillées sur les |cRXP_ENEMY_Araignées|r dans la zone. Vous en aurez besoin pour une quête à venir
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Tuez et dépouillez les |cRXP_WARN_Coureurs Patte-fantôme|r que vous croisez en quêtant. Gardez tous les |T133970:0|t[|cRXP_LOOT_Steaks de loup|r] que vous obtenez. Vous en aurez besoin de 10 pour une quête de cuisine plus tard
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teronis' Corpse|r
	.target Teronis' Corpse
    .goto 1440/1,528.79,3045.86
    .turnin 991 >> Rendez la quête Le nettoyage selon Raene
    .accept 1023 >> Acceptez la quête Le nettoyage selon Raene
step
    #sticky
    #completewith GlowingGem
    >>Gardez tous vos |T134304:0|t[Ailerons de murloc]. Vous en aurez besoin de 8 pour une quête à venir
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Tuez les|cRXP_ENEMY_Saltspittle Murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Soyez vigilant car les |cRXP_ENEMY_Oracles|r peuvent se soigner, et ont un horion instantané qui fait 90 dégâts avec un temps de récupération de quelques secondes|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step << NightElf Hunter
    #softcore
    #completewith next
    .deathskip >> Mourez sur le côté est du lac et ressuscitez ensuite à Astranaar
step << NightElf Hunter
    #hardcore
    #completewith next
    .goto 1440/1,-283.73,2827.92,200 >> Voyagez jusqu'à Astranaar
step << NightElf Hunter
    .goto 1440/1,-284.31,2828.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Volez à Sombrivage
    .target Daelyshia
step
    #optional
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    #completewith end
    .vendor >> Marchand/Réapprovisionnement
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Rendez la quête Évasion par la ruse
    .target Terenthis
    .isOnQuest 995
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Rendez la quête Évasion par la force
    .target Terenthis
    .isOnQuest 994
step
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Rendez la quête La créature marine échouée
    .turnin 4731 >> Rendez la quête La tortue de mer échouée
    .turnin 4732 >> Rendez la quête La tortue de mer échouée
    .turnin 4733 >> Rendez la quête La créature marine échouée
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .goto 1438/1,968.90,8795.34
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .xp <22,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garryeth|r
    .goto 1457/1,2515.03,9940.50
    .bankdeposit 5996,1468,2251,1015 >> Déposez les objets suivants dans votre banque:
    .target Garryeth
    >>|T134797:0|t[Elixir de Respiration aquatique] --5996
    >>|T134304:0|t[Ailerons de murloc] --1468
    >>|T134321:0|t[Pattes d'araignée fondantes] --2251
    >>|T133970:0|t[Steaks de loup] --1015
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossipid 96881
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .isOnQuest 741
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .isQuestTurnedIn 741
step << NightElf Hunter
    #label end
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label end
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Volez à Orneval
    .target Vesprystus
    .zoneskip Ashenvale
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Sombrivage/Orneval
#next RestedXP Guide Forever (A)\21-23 Serres-Rocheuses/Orneval


step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7867.06
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
    #optional
    #completewith AshenvaleEnd
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step
    #optional
    #sticky
    .abandon 2040 >> Abandonnez la quête Assaut souterrain
    .abandon 167 >> Abandonnez la quête Adieu mon frère…
    .abandon 168 >> Abandonnez la quête À la recherche de Cartes du Syndicat des Mineurs
step
    .goto 1439/1,504.41,6402.39
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
    .isOnQuest 3765
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Acceptez la quête Un maître perdu
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_Si vous équipez la|r |T133762:0|t[Cape enchantée de traquelune]|cRXP_WARN_, assurez-vous de garder votre cape actuelle pour plus tard, car la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_est perdue lors d'une prochaine remise de quête|r
    .equip 15,5387 >>|cRXP_WARN_Équipez la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_si elle est meilleure que votre cape actuelle|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #completewith TheryluneEnd
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132152:0|t[Ravage] |cRXP_WARN_une attaque instantanée infligeant 20-40 dégâts et vous mettant à terre pendant 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
    .subzoneskip 449 -- Master's Glaive
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Voyagez jusqu'au Bosquet des Anciens
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Rendez le Bosquet des Anciens << NightElf
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
    #completewith next
    .cast 5809 >> Utilisez la [Fiole de divination] et placez-la sur le sol
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
    .accept 98042 >>Acceptez la quête Rira bien qui rira le dernier
step
    #completewith TheryluneEnd
    >>Tuez les |cRXP_ENEMY_Disciples du crépuscule|r et les |cRXP_ENEMY_Nervis du crépuscule|r. Dépouillez-les pour l' |cRXP_LOOT_Œil sans pareil|r et le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en-bas|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
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
    >>Tuez les |cRXP_ENEMY_Disciples du crépuscule|r et les |cRXP_ENEMY_Nervis du crépuscule|r. Dépouillez-les pour l' |cRXP_LOOT_Œil sans pareil|r et le |T133743:0|t[|cRXP_LOOT_Livre : Les puissances d'en-bas|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
step
    #completewith prospectorEscort
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132152:0|t[Ravage] |cRXP_WARN_une attaque instantanée infligeant 20-40 dégâts et vous mettant à terre pendant 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_Vous devrez peut-être attendre qu'il réapparaisse ou que les autres joueurs terminent l'escorte|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .target Prospector Remtravel
    .isOnQuest 729
step
    #label prospectorEscort
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r. Cela lancera une escorte
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à la faire seul|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à la faire seul|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith Murkdeep
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    .goto 1439,31.229,85.564
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #optional
    .goto 1439,31.690,83.700
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    #optional
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    #optional
    #label Murkdeep
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
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Soyez prudent comme ils lancent|r |T132152:0|t[Ravage] |cRXP_WARN_une attaque instantanée infligeant 20-40 dégâts et vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isOnQuest 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Rendez la quête Les Reliques de Mathystra
    .target Onu
    .isQuestComplete 951
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .target Onu
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
    >>|cRXP_WARN_Il s'agit d'une quête chronométrée, vous devez l'escorter jusqu'à son sac en 20 minutes|r
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
step
    .goto 1439/1,34.78,5001.570
    >>Ouvrez le |cRXP_PICK_Kerlonian's Chest|r. Récupérez y l'[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith volcorEnd
    .goto 1440/1,128.01,3305.31
    +|cRXP_FRIENDLY_Kerlonian|r vous suivra et vous aidera occasionnellement en combat. |cRXP_WARN_Assurez-vous de ne pas le perdre comme il arrêtera de bouger quand il s'endormira. Vous avez 25 minutes pour arriver jusqu'à son sac et compléter cette quête|r
    .use 13536 >> |cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_en vous tenant à côté de lui à chaque fois que |cRXP_FRIENDLY_Kerlonian|r s'endort pour le réveiller|r
    >>|cRXP_WARN_Évitez de rester sur la route principale autant que possible. Les ennemis n'apparaîtront que si vous restez sur la route|r
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,-5.83,4608.57,30 >> Parlez à |cRXP_FRIENDLY_Volcor|r dans la Grotte
    .isOnQuest 993
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .timer 20,RP de Évasion par la ruse
    .target Volcor
step
    #label volcorEnd
    .goto 1439/1,30.85,4635.20
    >>Attendez le temps du RP
    .complete 995,1
    .isOnQuest 995
step
    #label KerlonianTwo
    --@TODO add coordinates for this
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Kerlonian|r vers son sac |cRXP_WARN_à Sombrivage|r|r
    .use 13536 >> |cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_dès que |cRXP_FRIENDLY_Kerlonian|r s'endort|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
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
step << !Warlock
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home 415 >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
]])