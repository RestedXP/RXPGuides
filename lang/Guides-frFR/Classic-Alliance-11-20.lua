if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

----Start of <1.5x Westfall----
----Night Elves and Hunters stay in Darkshore and Grind----

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#name 13-15 Marche de l’Ouest
#displayname 14-15 Marche de l’Ouest << Dwarf/Gnome
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#next 14-16 Sombrivage
#defaultfor !NightElf !Hunter

step
    #sticky
    #optional
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    .goto Westfall,59.95,19.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .target Farmer Furlbrow
step
    .goto Westfall,59.92,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >> Voyagez à la Ferme des Saldean
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .accept 9 >> Acceptez la quête Les champs de mort
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .target Salma Saldean
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Rendez la quête Aller voir Lewis
step << Gnome/Dwarf
    #completewith next
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Acceptez la quête La milice du peuple
step
    #xprate <1.2
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Heather|r
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r
    .vendor >>Les |T133918:0|t[Lutjans à longue mâchoire] |cRXP_WARN_sont très peu coûteux|r
	.target Innkeeper Heather
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
    .goto Westfall,40.4,52.7,75 >> Dirigez-vous à la ferme des Alexston, |cRXP_WARN_avancez d'autres objectifs de quête sur la route|r
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
    .goto Westfall,36.24,54.52
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
    .goto Westfall,50.0,22.6,75 >> Dirigez-vous à la ferme des Jansen, |cRXP_WARN_avancez d'autres objectifs de quête sur la route|r
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Ouvrez la |cRXP_PICK_Penderie de Froncebouille|r. Récupérez la |cRXP_LOOT_Montre de Froncebouille|r
    >>|cRXP_WARN_Vous pouvez intéragir avec la |cRXP_PICK_Penderie de Froncebouille|r depuis l'extérieur si vous orientez votre caméra correctement|r
	>>|cRXP_WARN_Faites attention à |cRXP_ENEMY_Benny Blanco|r. Il frappe fort|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #xprate <1.2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnolls Rivepattes|r et les |cRXP_ENEMY_Eclaireurs Rivepattes|r. Dépouillez-les pour leurs |T134297:0|t|cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36
    .goto Westfall,56.40,9.40,0
    >>|cRXP_WARN_Voyagez vers la côte, tuez les Gnolls sur le chemin|r pour les |T134297:0|t[|cRXP_LOOT_Pattes de gnoll|r] si nécessaire
    >>Tuez les |cRXP_ENEMY_Ecumeurs murlocs|r et les |cRXP_ENEMY_Cours-la-côtes murlocs|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #xprate <1.2
    #label GnollPaws
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    .goto Westfall,42.82,14.70,0
    .goto Westfall,52.36,14.82,0
    .goto Westfall,56.81,13.30,0
    >>Tuez les |cRXP_ENEMY_Gnolls Rivepattes|r et les |cRXP_ENEMY_Eclaireurs Rivepattes|r. Dépouillez-les pour leurs |T134297:0|t|cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
	>>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #xprate <1.2
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << Human Warlock
    #xprate >1.1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
    .isOnQuest 184
step
    #xprate <1.2
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
step
    #xprate >1.1
    #optional << Human Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #completewith SaldeanVendor
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .vendor >> |cRXP_BUY_Vendez tout ce dont nous n'avez pas besoin|r
    >>|cRXP_WARN_Ne vendez PAS les |T133884:0|t[Yeux de murloc], les |T135997:0|t[Groins de broche-tripes], les |T134341:0|t[Foies de broche-tripes] |rou|cRXP_WARN_ la |T133972:0|t[Viande filandreuse de vautour]|r
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Rendez la quête Les champs de mort
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .isQuestComplete 38
    .target Salma Saldean
  step
    .isQuestAvailable 38
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r. Dépouillez-les pour leur |cRXP_LOOT_Okras|r et leur |cRXP_LOOT_Flasques d'huile|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r. Dépouillez-les pour leur |cRXP_LOOT_Flasques d'huile|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
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
    .goto Westfall,56.04,31.23
    .turnin 9 >> Rendez la quête Les champs de mort
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
step
    .goto Westfall,50.0,45.4
    >>Terminez les quêtes |cRXP_ENEMY_Défias|r dans la zone marquée sur votre carte. |cRXP_WARN_Il s'agit d'une zone de respawn dynamique, ce qui signifie que si vous tuez suffisamment de mobs, ils continueront à réapparaître|r
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |T133694:0|t|cRXP_LOOT_Masques en cuir rouge|r
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
    .goto Westfall,56.33,47.52
    .turnin 12 >> Rendez la quête La milice du peuple
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Acceptez la quête La Confrérie défias
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Rendez la quête Patrouilles dans la marche de l'Ouest
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quartermaster Lewis|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Quartermaster Lewis
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Rendez la quête Les masques en cuir rouge
step << Gnome Rogue/Dwarf Rogue
    #completewith next
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .money <0.3815
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Achetez-lui une|r |T135343:0|t[Cimeterre] |cRXP_BUY_ou quelque chose de mieux à l'Hôtel des ventes et équipez-la en main gauche|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Achetez une|r |T135343:0|t[Cimeterre] |cRXP_BUY_au marchand|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement à Sombrivage très bientôt
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .isQuestComplete 399
step << Gnome Rogue/Dwarf Rogue
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
    .zoneskip Stormwind City,1
    .isQuestComplete 399
step << Dwarf !Paladin/Gnome
    #label end
    #completewith DarkshoreBoat
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
step << Dwarf !Paladin/Gnome
    #softcore
    #completewith DarkshoreBoat
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >> Volez aux Paluns
    .target Thorgrum Borrelson
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Volez à Ironforge
    .target Thor
step << Human Mage/Human Rogue/Human Warrior/Human Warlock/Human Paladin/Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r << Human Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r << Human Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r << Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r << Human Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r << Human Warlock
    .goto Ironforge,51.1,8.7,15,0 << Human Warlock
    .goto Ironforge,50.343,5.657 << Human Warlock
    .goto Ironforge,65.905,88.405 << Human Warrior
    .goto Ironforge,51.495,15.330 << Human Rogue
    .goto Ironforge,25.207,10.756 << Human Priest
    .goto Ironforge,27.18,8.60 << Human Mage
    .goto Ironforge,23.141,6.149 << Human Paladin
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner << Human Warrior
    .target Fenthwick << Human Rogue
    .target Toldren Deepiron << Human Priest
    .target Dink << Human Mage
    .target Brandur Ironhammer << Human Paladin
    .target Briarthorn << Human Warlock
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Apprenez la compétence Armes de jet
    .target Bixi Wobblebonk
step << Human Rogue
    #ah
    .goto Ironforge,62.375,88.679
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    +|cRXP_BUY_Achetez-lui une|r |T135343:0|t[Cimeterre] |cRXP_BUY_ou vérifiez l'Hôtel des ventes pour quelque chose de mieux ou de moins cher|r
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Human Rogue
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    +|cRXP_BUY_Achetez-lui et équipez une|r |T135343:0|t[Cimeterre] |cRXP_BUY_si vous pouvez vous le permettre|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez un|r |T135425:0|t[Couteau de lancer perçant]
    .collect 3107,100 -- Keen Throwing Knife
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.30
step << Human Rogue
    #completewith next
    +|cRXP_WARN_Équipez le|r |T135425:0|t[Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.29
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldruk Ruinefront|r
    .trainer >> Apprenez vos sorts de classe
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> Voyagez vers |cRXP_FRIENDLY_Muiredon|r à l'étage
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Rendez la quête Le Tome de divinité
    .accept 1785 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Volez aux Paluns
    .target Gryth Thurden
step
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Quittez Ironforge
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Regardez la vidéo pour un guide du skip en premier lieu!
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Wetlands Crocolisks|r et les |cRXP_ENEMY_Murlocs|r en passant par l'eau|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> Cliquez ici pour un guide vidéo
    .goto Wetlands,12.1,60.3,80 >> Voyagez vers le Port de Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >> Continuez à suivre le chemin à travers les montagne jusqu'au lieu du deathskip
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Courez et sautez du bord de la montagne au nord et tombez. Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Nagez au Port de Menethil
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor 1448 >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step << Human/Dwarf Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor 1453 >> |cRXP_WARN_Achetez autant de|r |T134831:0|t[Potion de soins] |cRXP_WARN_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Allez sur le quai du bateau pour Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])

----End of <1.5x Westfall----
----Start of Darkshore Part 1----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 14-16 Sombrivage
#displayname 11-16 Sombrivage << NightElf
#displayname 13-16 Sombrivage << Dwarf Hunter
#displayname 15-16 Sombrivage << !NightElf/!Dwarf Hunter
#next 16-19 Sombrivage


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step
    #label start --hidden step for #include
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>Sautez du bateau quand il est proche du rivage d'Auberdine
    .subzone 442 >> Nagez vers Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer << !sod/Hunter/Druid
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Achetez jusqu'à 40|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_WARN_. Vendez toute votre autre nourriture de niveau 5 ou inférieur|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >> Rendez Flight to Auberdine
    .accept 6343 >> Acceptez la quête Retourner à Nessa << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Rendez Flight to Auberdine
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Achetez jusqu'à 40|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_WARN_. Vendez toute votre autre nourriture de niveau 5 ou inférieur|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r à l'étage inférieur
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >> Montez les escaliers pour y trouver |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez la quête Bigobox 827
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez la quête Bigobox 827
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    #xprate >1.49
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
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r à l'étage inférieur
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
    .bindlocation 442
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Envoyez votre familier attaquer un |cRXP_ENEMY_Ours des chardons|r. Dès que votre familier est étourdi par l' |cRXP_ENEMY_Ours des chardons|r, abandonnez votre familier et commencez à le dompter|r
    .tame 2163 >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoiser la bête] |cRXP_WARN_sur un |cRXP_ENEMY_Ours des chardons|r pour le dompter|r
    .target Thistle Bear
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
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Montez votre|r |T136065:0|t[Herboristerie] |cRXP_WARN_à un niveau de 15 pour vous permettre de récolter des|r [Terrestrines] |cRXP_WARN_pour une quête de classe importante plus tard. Vous pourrez ensuite abandonner le métier|r
    >>Si vous préférez acheter 5 [Terrestrine] à l'Hôtel des Ventes plus tard, vous pouvez passer cette étape
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>Montez votre [Herboristerie] à un niveau de 15 pour vous permettre de récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez ensuite oublier le métier
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>|cRXP_WARN_Cueillez 5 [Terrestrine] à l'aide de votre [Herboristerie] ou plus rarement dans les |cRXP_PICK_Battered Chests|r pour une quête de classe à venir|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
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
step
    #label FurlbogCamp
    .goto Darkshore,38.90,53.59
    >>Courez vers le bord du Camp Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
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
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
    .accept 1001 >> Acceptez la quête Bigobox 411
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
    .accept 1001 >> Acceptez la quête Bigobox 411 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .accept 1001 >> Acceptez la quête Bigobox 411
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
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
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Allez au bout du quai, puis sautez dans l'eau
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
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
    #season 0
    .goto Darkshore,36.096,44.931
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
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    #xprate <1.5
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
    #season 0
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
    .goto Darkshore,38.249,41.008
    .train 2018 >> Apprenez [Forge]
    .target +Delfrum Flintbeard
    .goto Darkshore,38.191,40.935
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
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
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
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
    .goto Darkshore,37.45,40.50
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
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivage|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil de batteur|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FAITES ATTENTION A VOTRE BARRE DE SOUFFLE==
    >>Nagez sous l'eau jusqu'à la partie extérieure de l'arrière du bateau
    >>|cRXP_WARN_À l'endroit indiqué par la flèche, appuyez sur votre touche "Interagir avec la cible" pour y ramasser le |cRXP_LOOT_Silver Dawning's Lockbox|r depuis l'extérieur du bateau|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire, nagez sous l'eau jusqu'à l'étage inférieur du bateau puis ramassez le |cRXP_LOOT_Silver Dawning's Lockbox|r directement à l'intérieur de celui-ci|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #loop
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    >>Tuez les |cRXP_ENEMY_Batteurs de Sombrivage|r. Dépouillez-les pour leur |cRXP_LOOT_Oeil de batteur|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,41.960,28.616
    >>Cliquez sur le |cRXP_PICK_Buzzbox 411|r sur le sol
    .turnin 1001 >> Rendez la quête Bigobox 411
    .accept 1002 >> Acceptez la quête Bigobox 323
    .isQuestComplete 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.960,28.616
    >>Cliquez sur le |cRXP_PICK_Buzzbox 411|r sur le sol
    .accept 1002 >> Acceptez la quête Bigobox 323
    .isQuestTurnedIn 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Dirigez-vous vers |cRXP_FRIENDLY_Asterion|r
step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
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
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Grell sauvage|r et des |cRXP_ENEMY_Fée vile|r sur la route|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
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
    #xprate >1.59
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
    >>Ils n'ont pas de respawn dynamique, passez à autre chose si vous n'arrivez pas à trouver des |cRXP_ENEMY_Deth'ryll Satyrs|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    #xprate <1.59
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
step << NightElf/Dwarf Hunter
    #optional
    #xprate <1.5
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
    #label HCHunterEnd --hidden step for #include
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
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #xprate <1.5
    #completewith RedCrystal
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] à 10 plus tard
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #xprate <1.5
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
    #season 0
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
    #season 0
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Remontez jusqu'au |cRXP_PICK_Mystérieux Cristal rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Entrez dans la grotte de la |cRXP_PICK_Pierre des séléniens|r
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Utilisez la|r |T132857:0|t[Poussière de lune cénarienne] |cRXP_WARN_à la |cRXP_PICK_Pierre des séléniens|r à l'intérieur de la grotte pour invoquer |cRXP_ENEMY_Lunegriffe|r à l'entrée de la grotte|r
    .timer 4,RP de Corps et cœur
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 0
    .goto Darkshore,43.09,45.55
    >>Tuez |cRXP_ENEMY_Lunegriffe|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    #season 0
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
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Achetez jusqu'à 40|r |T133918:0|t[Lutjan à longue mâchoire] |cRXP_WARN_. Vendez toute votre autre nourriture de niveau 5 ou inférieur|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .target Laird
    .subzoneskip 442,1 --skip if you leave Auber
    .xp >15,1 << Warrior/Rogue
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid
    #optional
    #season 0
    .goto Darkshore,37.0,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_WARN_Achetez-lui jusqu'à 40|r |T132815:0|t[Lait glacé] |cRXP_WARN_. Vendez toute votre autre eau de niveau 5 ou inférieur|r
    .collect 1179,35 --Ice Cold Milk (35)
    .target Allyndia
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>Utilisez le [Tube d'eau vide] au Puits de lune d'Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_WARN_Achetez jusqu'à 2000|r |T132382:0|t[Flèches aiguisées] |cRXP_WARN_. Vous en aurez besoin pour une section de farm bientôt|r
    .collect 2515,2000 --Sharp Arrow (2000)
    .target Dalmond
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
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
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    #season 0
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
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Cliquez sur le |cRXP_PICK_Mystérieux Cristal Rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
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
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .goto 1439,37.703,43.393
    .subzone 442 >> Retournez à Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4813,3 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_Équipez le|r |T135145:0|t[Bâton chênegrive]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acceptez la quête Retourner à Nessa
    .target Laird
step << Druid
    #optional
    #xprate <1.5
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
    .xp 13+9500 >> Monter votre expérience jusqu'à 9500+/11400xp
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
    .target Caylais Moonfeather
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Rendez la quête Corps et cœur
    .accept 6121 >> Acceptez la quête Nouvelles leçons
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6121 >> Acceptez la quête Nouvelles leçons
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 6121 >> Nouvelles leçons
    .accept 6122 >> Acceptez la quête Le principe originel
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombrivage
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #season 0
    #optional
    #completewith AmethStart
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    #season 0
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
step
    #optional
    #label HCHunterStart --hidden step for #include
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
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
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #sticky
    #optional
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
    >>|cRXP_WARN_Sachez qu'elle a un temps de réapparition de 7-8 minutes et 4 points de réapparition différents dans Ameth'Aran|r
    >>|cRXP_WARN_Si vous n'arrivez pas à la trouver et que voulez réessayer plus tard au coût de potentiellement tuer des mobs supplémentaires en boucle sous peu, passez cette étape|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #sticky
    #optional
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
    >>|cRXP_WARN_Sachez qu'elle a un temps de réapparition de 7-8 minutes et 4 points de réapparition différents dans Ameth'Aran|r
    >>|cRXP_WARN_Vous devrez peut-être former un groupe avec d'autres joueurs à proximité si vous ne la trouvez pas. Demandez dans Discussion générale (/1) de former un groupe avec d'autres joueurs qui la cherche aussi|r
    >>|cRXP_WARN_Si vous n'arrivez pas à la trouver et que voulez réessayer plus tard au coût de potentiellement tuer des mobs supplémentaires en boucle sous peu, passez cette étape|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
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
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
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
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #label HCHunterEndTwo --hidden step for #include
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #season 0
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
    #xprate <1.5
    #optional
    #loop
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
    >>Tuez en boucle les |cRXP_ENEMY_Furlbogs|r dans le camp. |cRXP_WARN_Il s'agit d'un "hyperspawn"|r ce qui signifie que le jeu forcera les réapparitions si assez de mobs sont morts. Cela en fait une zone |cRXP_WARN_EXTRÊMEMENT efficace|r pour tuer les mobs en boucle à ce niveau (xp/h est comparable aux quêtes)
    >>|cRXP_WARN_Rester ici vous permettra de faire des quêtes à travers tout Sombrivage plus tard sans avoir à lutter contre des mobs de plus haut niveau|r
    >>Soyez prudent car les |cRXP_ENEMY_Guides Noirbois|r peuvent utiliser |T132152:0|t[Rosser] et peuvent vous frapper jusqu'à 3 fois d'un coup
    >>Les |cRXP_ENEMY_Messagers du Vent Noirbois|r lancent |T136022:0|t[Bourrasque] un étourdissement en mêlée, |cRXP_WARN_éloignez-vous de la portée lorsqu'ils la lancent|r pour éviter d'être étourdi
    .xp 15+11875 >> Montez votre expérience jusqu'à 11875+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
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
    >>Tuez en boucle les |cRXP_ENEMY_Furlbogs|r dans le camp. |cRXP_WARN_Il s'agit d'un "hyperspawn"|r ce qui signifie que le jeu forcera les réapparitions si assez de mobs sont morts. Cela en fait une zone |cRXP_WARN_EXTRÊMEMENT efficace|r pour tuer les mobs en boucle à ce niveau (xp/h est comparable aux quêtes)
    >>|cRXP_WARN_Rester ici vous permettra de faire des quêtes à travers tout Sombrivage plus tard sans avoir à lutter contre des mobs de plus haut niveau|r
    >>Soyez prudent car les |cRXP_ENEMY_Guides Noirbois|r peuvent utiliser |T132152:0|t[Rosser] et peuvent vous frapper jusqu'à 3 fois d'un coup
    >>Les |cRXP_ENEMY_Messagers du Vent Noirbois|r lancent |T136022:0|t[Bourrasque] un étourdissement en mêlée, |cRXP_WARN_éloignez-vous de la portée lorsqu'ils la lancent|r pour éviter d'être étourdi
    .xp 15+11000 >> Monter votre expérience jusqu'à 11000+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #loop
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
    >>Tuez en boucle les |cRXP_ENEMY_Furlbogs|r dans le camp. |cRXP_WARN_Il s'agit d'un "hyperspawn"|r ce qui signifie que le jeu forcera les réapparitions si assez de mobs sont morts. Cela en fait une zone |cRXP_WARN_EXTRÊMEMENT efficace|r pour tuer les mobs en boucle à ce niveau (xp/h est comparable aux quêtes)
    >>|cRXP_WARN_Rester ici vous permettra de faire des quêtes à travers tout Sombrivage plus tard sans avoir à lutter contre des mobs de plus haut niveau|r
    >>Soyez prudent car les |cRXP_ENEMY_Guides Noirbois|r peuvent utiliser |T132152:0|t[Rosser] et peuvent vous frapper jusqu'à 3 fois d'un coup
    >>Les |cRXP_ENEMY_Messagers du Vent Noirbois|r lancent |T136022:0|t[Bourrasque] un étourdissement en mêlée, |cRXP_WARN_éloignez-vous de la portée lorsqu'ils la lancent|r pour éviter d'être étourdi
    .xp 15+600 >> Montez votre expérience jusqu'à 600+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
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
    >>Tuez en boucle les |cRXP_ENEMY_Furlbogs|r dans le camp. |cRXP_WARN_Il s'agit d'un "hyperspawn"|r ce qui signifie que le jeu forcera les réapparitions si assez de mobs sont morts. Cela en fait une zone |cRXP_WARN_EXTRÊMEMENT efficace|r pour tuer les mobs en boucle à ce niveau (xp/h est comparable aux quêtes)
    >>|cRXP_WARN_Rester ici vous permettra de faire des quêtes à travers tout Sombrivage plus tard sans avoir à lutter contre des mobs de plus haut niveau|r
    >>Soyez prudent car les |cRXP_ENEMY_Guides Noirbois|r peuvent utiliser |T132152:0|t[Rosser] et peuvent vous frapper jusqu'à 3 fois d'un coup
    >>Les |cRXP_ENEMY_Messagers du Vent Noirbois|r lancent |T136022:0|t[Bourrasque] un étourdissement en mêlée, |cRXP_WARN_éloignez-vous de la portée lorsqu'ils la lancent|r pour éviter d'être étourdi
    .xp 14+12210 >> Montez votre expérience jusqu'à 12210+/12900xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
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
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4723 >> Rendez la quête La créature marine échouée << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
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
    #season 0
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
    #season 0
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
step << !Hunter
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
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    >>Continuez à monter votre niveau de [Cuisine]  jusqu'à ce que vous n'ayez plus de [Petit oeuf] << !sod
    >>Il y aura une quête au Bois de la Pénombre plus tard nécessitant un niveau de [Cuisine] de 50 ou plus. Vous pourrez aussi bientôt les cuisiner quand vous serez sur le bateau << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Rendez la quête Les outils des Bien-nés << !sod
    .turnin 4762 >> Rendez la quête La Bondissante << sod
    .accept 4763 >> Acceptez la quête La corruption des Noirbois << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


----Start of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FAITES ATTENTION A VOTRE BARRE DE SOUFFLE==
    >>Nagez sous l'eau jusqu'à la partie extérieure de l'arrière du bateau
    >>|cRXP_WARN_À l'endroit indiqué par la flèche, appuyez sur votre touche "Interagir avec la cible" pour y ramasser le |cRXP_LOOT_Silver Dawning's Lockbox|r depuis l'extérieur du bateau|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire, nagez sous l'eau jusqu'à l'étage inférieur du bateau puis ramassez le |cRXP_LOOT_Silver Dawning's Lockbox|r directement à l'intérieur de celui-ci|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #season 0
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
    #season 0
    .goto 1439,47.314,48.676
    >>Cliquez sur le |cRXP_PICK_Mystérieux Cristal Rouge|r
    >>|cRXP_WARN_Attention aux 2 groupes de 2 |cRXP_ENEMY_Séléniens déchaînés|r à l'ouest du |cRXP_PICK_Mystérieux cristal rouge|r car les duos les plus proches sont liés ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Rendez la quête Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    #season 0
    .goto 1439,41.901,31.339
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Tuez des |cRXP_ENEMY_Jeunes trotteur des forêts|r et des |cRXP_ENEMY_Trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>Attention car les |cRXP_ENEMY_Foreststrider Fledglings|r peuvent s'enfuir à <30% de vie
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CrabTurtle
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>Tuez des |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_Envisagez d'éviter les|r |cRXP_ENEMY_Clampants des récifs|r |cRXP_WARN_niveau 17 si vous arrivez à obtenir les objets de quête.|r |cRXP_WARN_Vous n'avez pas besoin de terminer cette quête à cet instant|r
    >>Soyez prudents car ils peuvent lancer |T132155:0|t[Déchirure musculaire] une attaque infligeant instantanément 30-55 dégâts
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>Utilisez le [Tube de prélèvement vide] à la source de la Bondissante
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Montez la rampe vers le |cRXP_PICK_Bigobox 323|r
    .isQuestComplete 1002
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestComplete 1002
step
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tuez les |cRXP_ENEMY_Trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Voyagez vers |cRXP_FRIENDLY_Balthule Frappelombre|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
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
#xprate <1.5 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
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
    #season 0 << !Warrior !Rogue
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>Tuez les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
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
    #season 0 << !Warrior !Rogue
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
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Voyagez vers la Grotte de la Bondissante
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>Utilisez la [Fiole d'échantillon des Chutes de la Bondissante vide] à l'entrée de la Grotte de la Bondissante
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    #label CaveMushrooms
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>Dépouillez-les |cRXP_LOOT_Scaber Stalks|r et un |cRXP_LOOT_Death Cap|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. S'il n'y a pas de |cRXP_LOOT_Death Cap|r au bout de la partie supérieure, descendez et récupérez en un dans la salle inférieure au sud|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stormscale Wave Riders|r lancent|r [Aqua Jet] (Coup à Distance instantané: Inflige des dégâts instantané et peut vous renverser) - faites attention à ne pas vous trouvez dans une position ou vous vous feriez pousser du niveau supérieur de la grotte
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << NightElf !Druid
    #softcore
    #optional
    #completewith CavetoAuber
    #season 0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << skip --logout skip
    #hardcore << NightElf !Druid
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 0
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Sautez sur le rocher dans la partie supérieure de la grotte. Positionnez votre personnage jusqu'à ce qu'il paraisse flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step
    #hardcore << NightElf !Druid
    #completewith CavetoAuber
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>|cRXP_WARN_Attention, ils peuvent s'|r |T132307:0|t[Enfuir] |cRXP_WARN_à moins de 30% de vie|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #hardcore << NightElf !Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #requires MushroomLS
    #completewith CavetoAuber
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r. Dépouillez-les pour les |cRXP_LOOT_Crocs de traquelune|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Voyagez vers Auberdine
step
    #label CliffspringEnd
    #season 0
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto Darkshore,37.70,40.70
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .turnin 6122 >> Rendez la quête Le principe originel << Druid
    .accept 6123 >> Acceptez la quête Rassembler les ingrédients du remède << Druid
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178 << Druid
step << Druid
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Rendez la quête Le principe originel
    .accept 6123 >> Acceptez la quête Rassembler les ingrédients du remède
    .target Alanndarian Nightsong
step << !NightElf
    #xprate <1.5
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step << !NightElf
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto Darkshore,37.70,43.39
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    >>|cRXP_WARN_Choisissez la|r |T135641:0|t[Dague de Courbebois] |cRXP_WARN_comme vous devez essayer de sauvegarder une|r |T135641:0|t[Dague] |cRXP_WARN_pour votre quête de|r |T132290:0|t[Poisons] |cRXP_WARN_plus tard|r << Rogue
    .turnin 4813 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    #season 0
    >>|cRXP_WARN_Utilisez le|r |T133748:0|t[Bol de purification vide] |cRXP_WARN_au Puits de lune d'Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step << NightElf !Druid
    .goto 1439,36.767,44.285
    #season 0
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acceptez la quête Retourner à Nessa
    .isQuestAvailable 6343
    .target Laird
step
    #optional
    .goto Darkshore,36.096,44.931
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #season 0
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    #season 0
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
    #season 0
    #completewith DruidLesson
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
    .target Caylais Moonfeather
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #season 0
    #label DruidLesson
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 26 >> Acceptez la quête Une leçon à apprendre
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >> Abandonnez la quête Les absences du Prospecteur pour accepter la quête Des problèmes à Sombrivage ?
step << Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >> Acceptez la quête Des problèmes à Sombrivage ?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
    #season 0
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
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
step << Druid
    #optional
    #season 0
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombrivage
    .zoneskip Darkshore


----End of Druid Quest section----


]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 16-19 Sombrivage
#next 19-20 Les Carmines;20-21 Sombrivage/Orneval << !Hunter
#next 19-21 Sombrivage/Orneval << Hunter

step << NightElf !Druid
    #optional
    #completewith PortalDarn
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
    .target Caylais Moonfeather
    .zoneskip Teldrassil
step << NightElf !Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .target Nessa Shadowsong
step << NightElf !Druid
    #completewith next
    #season 0
    #label PortalDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << NightElf Warrior
    .goto Darnassus,58.72,34.92
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arias'ta Chantelame|r
    .trainer >> Apprenez vos sorts de classe
    .target Arias'ta Bladesinger
step << NightElf Warrior
    .goto Darnassus,57.56,46.72
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .train 2567 >> Apprenez la compétence Armes de jet
    .target Ilyenia Moonfire
step << NightElf Hunter
    #completewith start
    #season 0
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .target Jocaste
step << NightElf Hunter
    #completewith start
    #season 0
    #label RecruveReinforced
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Achetez un|r |T135489:0|t[Arc lourd à double courbure] |cRXP_WARN_si vous pouvez vous le permettre. Sinon, achetez un|r |T135490:0|t[Arc renforcé]
    >>Faites un stock de [Flèche pointue]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +Équipez l'[Arc renforcé]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
step << NightElf Rogue
    >>Entrez dans l'Enclave de Cénarius
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    .trainer >> Apprenez vos sorts de classe
    .target Syurna
step << NightElf !Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >> Abandonnez la quête Les absences du Prospecteur pour accepter la quête Des problèmes à Sombrivage ?
step << NightElf !Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >> Acceptez la quête Des problèmes à Sombrivage ?
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jandria|r
    .trainer >> Apprenez vos sorts de classe
    .target Jandria
step << NightElf !Druid
    #label start
    #season 0
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step << NightElf
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 730 >> Rendez la quête Des problèmes à Sombrivage ?
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto Darkshore,37.78,44.06
    #season 0
    .use 12346 >>Utilisez le [Bol de purification vide] au |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 0
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
    >>|cRXP_WARN_Sachez qu'elle a un temps de réapparition de 7-8 minutes et 4 points de réapparition différents dans Ameth'Aran|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #season 0
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
    >>|cRXP_WARN_Sachez qu'elle a un temps de réapparition de 7-8 minutes et 4 points de réapparition différents dans Ameth'Aran|r
    >>|cRXP_WARN_Vous devrez peut-être former un groupe avec d'autres joueurs à proximité si vous ne la trouvez pas. Demandez dans Discussion générale (/1) de former un groupe avec d'autres joueurs qui la cherche aussi|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CompleteFangs
    >>Tuez les |cRXP_ENEMY_Traquelunes chétifs|r et les |cRXP_ENEMY_Traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Crocs de traquelunes|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #season 0
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r au sud de Sombrivage
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #xprate <1.5
    #sticky
    #label earthroot
    >>Collectez 5 |T134187:0|t[Terrestrines] pendant vos quêtes|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    #xprate <1.5
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Cueillez les |cRXP_LOOT_Lunar Fungi|r sur le sol le long des grottes
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    #season 0
    .goto 1439,43.555,76.293,80 >> Voyagez jusqu'au Bosquet des Anciens
step
    #label OnuGrove
    #season 0
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Rendez le Bosquet des Anciens << NightElf
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    #completewith MasterG
    #season 0
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>Soyez prudent comme ils peuvent lancer |T132090:0|t[Exploiter une faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,38.60,80.50,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.390,80.563
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isQuestComplete 1003
step
    #label MasterG
    #season 0
    .goto Darkshore,38.54,86.05,100 >> Voyagez jusqu'à le Glaive du Maître
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    #season 0
    >>Tuez les |cRXP_ENEMY_Twilight Disciples|r et les  |cRXP_ENEMY_Twilight Thugs|r. Dépouillez-les pour le [|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Nervis du crépuscule|r peuvent utiliser|r |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Disciples du crépuscule|r lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |r |T135915:0|t[Soins] avec 3 secondes d'incantation
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 0
    .goto 1439,38.537,86.050
    >>Découvrez le Glaive du Maître
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    #season 0
    .cast 5809 >> Utilisez la [Fiole de divination] et placez-la sur le sol
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>|cRXP_WARN_Cliquez sur |cRXP_PICK_Scrying Bowl|r sur le sol|r
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>Cliquez sur |cRXP_PICK_Twilight Tome|r sur le piédestal le plus au nord
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
    .accept 950 >> Acceptez la quête La page qui rend fou
step
    .goto 1439,38.660,87.305
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
    >>Passez cette étape si elle n'est pas présente
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    #label TheryluneEnd
    #season 0
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    #season 0
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Supprimez la |T134715:0|t[Fiole de divination] de vos sacs comme elle n'est plus nécessaire
step
    #optional
    #season 0
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>Soyez prudent comme ils peuvent lancer |T132090:0|t[Exploiter une faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Acceptez la quête Les Reliques de Mathystra
    .target Onu
step << Hunter
    #optional
    #season 0
    .goto Darkshore,38.54,86.05
    .xp 17 >> Montez jusqu'au niveau 17
step << Hunter
    #sticky
    #season 0
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_Vous devrez peut-être attendre qu'il réapparaisse ou que les autres joueurs terminent l'escorte|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step << Hunter
    .goto Darkshore,35.72,83.69
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Songerrance|r. Cela lancera une escorte
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Vous pouvez passer cette étape et revenir au niveau 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    #season 0
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Vous pouvez passer cette étape et revenir au niveau 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    #completewith CompleteThistleBears
    #season 0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    >>Attention car les |cRXP_ENEMY_Clampants des récifs|r peuvent lancer |T132155:0|t[Déchirure musculaire], une attaque instantanée infligeant 30-55 dégâts
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #label TurtleSouth
	#xprate <1.5
    #season 0
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Oracle Grisebrume|r et leur capacité|r |T136048:0|t[Eclair] |cRXP_WARN_et ils peuvent aussi se soigner avec|r |T136052:0|t[Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step << !Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step << Druid
    #optional
    #season 0
    >>|cRXP_WARN_Terminez de cueillir les |T134187:0|t[Terrestrines] via l' |T136065:0|t[Herboristerie] et aussi plus rarement dans les|r |cRXP_PICK_Coffres endommagés|r
    >>|cRXP_WARN_Si vous abandonnez et n'en trouvez pas assez, passez cette étape|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    #season 0
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
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
    #season 0
    .goto 1439,35.968,70.807
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4728 >> Acceptez la quête La créature marine échouée
step << Druid
    #label Southcrabs
    #season 0
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    #season 0
    .goto Moonglade,52.53,40.57
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    #season 0
    .goto Moonglade,48.11,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Volez à Sombrivage
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter
    #label Southcrabs
    #season 0
    #completewith CleansingTharnariun
    .subzone 442 >> Voyagez vers Auberdine
step
    #optional
    #completewith next
    #season 0
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Retournez à |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
    #optional
    #season 0
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
    .turnin 963 >> Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #season 0
    #completewith CleansingTharnariun
    .abandon 963 >> Abandonnez Un amour éternel
step
    #xprate <1.5
    #season 0
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
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto Darkshore,36.8,44.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r et à |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Vendez votre surplus au marchand et réapprovisionnez-vous en nourriture et en eau|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4740 >> Rendez la quête On recherche : Fondeboue !
    .target Sentinel Glynda Nal'Shea
step
    #label CleansingTharnariun
    #season 0
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Réapprovisionnez-vous en munitions|r
    .target Dalmond
step << Druid
    #xprate <1.5
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Rendez la quête Rassembler les ingrédients du remède
    .accept 6124 >> Acceptez la quête Soigner la maladie
    .isQuestComplete 6123
step << Druid
    #xprate <1.5
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6124 >> Acceptez la quête Soigner la maladie
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123
step << Druid
    #optional
    #season 0
    #completewith Buzzbox323End
    .abandon 6123 >> Abandonnez la quête Rassembler les ingrédients du remède
step << Druid
    #xprate <1.5
    #optional
    #season 0
    #completewith Buzzbox323End
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    >>|cRXP_WARN_Utilisez le|r |T132801:0|t[Remède pour animaux] |cRXP_WARN_sur le|r |cRXP_ENEMY_Daim malade|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .isQuestAvailable 1138
step << Druid
    #xprate <1.5
    #season 0
    #sticky
    #label SicklyDeers
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .waypoint Darkshore,49.7,33.2,40,0
    .waypoint Darkshore,43.4,25.1,40,0
    .waypoint Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Utilisez le|r |T132801:0|t[Remède pour animaux] |cRXP_WARN_sur le|r |cRXP_ENEMY_Daim malade|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
    .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Ouvrez les|cRXP_PICK_Blackwood Grain Stores|r. Ramassez les|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Jeunes chardons|r peuvent lancer|r |T132152:0|t[Ravage]|cRXP_WARN_, une attaque instantanée en mêlée qui vous étourdit pendant 2 secondes|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
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
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
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
    .goto Darkshore,52.38,33.39
    .cast 16072 >> Utilisez le [Bol de purification rempli] |cRXP_WARN_au |cRXP_PICK_Feu de joie|r pour invoquer|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corruption des Noirbois RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Tuez|cRXP_ENEMY_Xabraxxis|r. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera sur le sol. Ramassez le |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #xprate <1.5
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18 >> Montez jusqu'au niveau 18
step << Hunter
    #label CompleteFangs
    #season 0
    .goto Darkshore,52.6,33.6
    .xp 18.75 >> Montez jusqu'au niveau 18 + 75%
    >>Assurez-vous que le délai de récupération de votre Pierre de foyer soit inférieur à 10 minutes
    >>Passez cette étape si la zone est trop peuplée
step
    #label LateStalkerFangs
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #label Buzzbox323End
    #requires SicklyDeers << Druid --xprate <1.5
    .goto 1439,51.288,24.554
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
	#xprate >1.49 << Hunter/Druid
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
    #xprate >1.59
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >> Monter votre expérience jusqu'à 15000+/19400xp
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #season 0
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
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
    .goto Darkshore,56.10,16.88,0
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Tuez les |cRXP_ENEMY_Greymist Oracles|r et les |cRXP_ENEMY_Greymist Tidehunters|r. Dépouillez-les pour leur |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Greymist Oracles|r et leur capacité|r [Eclair] et ils peuvent aussi se soigner avec [Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    >>|cRXP_WARN_Vous pouvez vous cacher (LoS) des |cRXP_ENEMY_Greymist Oracles|r lorsqu'il lance leur|r  [Eclair] autour du bateau échoué pour éviter de prendre ses dégâts
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Tuez les |cRXP_ENEMY_Giant Foreststriders|r. Dépouillez-les pour leur |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #xprate <1.59
    #label NorthStalkerPelts
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Tuez les |cRXP_ENEMY_Moonstalker Sires|r et les |cRXP_ENEMY_Moonstalker Matriarchs|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Moonstalker Matriarchs|r. Ils attaquent toujours avec un |cRXP_ENEMY_Moonstalker Runt|r à leur côté|r
    >>Les |cRXP_ENEMY_Géniteurs traquelunes|r peuvent lancer |T132090:0|t[Exploiter faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue
    #season 0
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Commencez à chercher un groupe pour la quête La vengeance de Gyromast/|r|cRXP_ENEMY_Le Destructomembreur 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >> Rendez la quête La recherche de Gyromast
    .accept 2078 >> Acceptez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Commencez à chercher un groupe pour la quête La vengeance de Gyromast/|r|cRXP_ENEMY_Le Destructomembreur 4100|r << Warrior/Paladin/Rogue
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
    .isOnQuest 2078 << Warrior/Paladin/Rogue
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
    >>|cRXP_WARN_Essayez de faire cette quête si vous le pouvez car cela vous fera gagner du temps plus tard et elle vous récompense d'un |r |T134797:0|t[Elixir de respiration aquatique] |cRXP_WARN_pour des quêtes sous l'eau plus tard|r << !Druid !Warlock
    >>|cRXP_WARN_Utilisez|r |T136100:0|t[Sarments] |cRXP_WARN_sur lui lorsqu'il devient hostile, puis créez de la distance et kitez en utilisant des sorts instantanés|r << Druid
    >>|cRXP_WARN_Si vous êtes pas capable de tuer |cRXP_ENEMY_Le Destructomembreur 4100|r, passez cette étape|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue
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
    #xprate <1.5
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
step << !NightElf !Dwarf Hunter !Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Voyagez vers Auberdine
    .cooldown item,6948,<0
step << !NightElf !Dwarf Hunter !Druid
    #xprate <1.59
    #optional
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4727 >> Acceptez la quête La tortue de mer échouée
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Utilisez le|r |T132801:0|t[Remède pour animaux] |cRXP_WARN_sur le|r |cRXP_ENEMY_Daim malade|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nagez jusqu'à sortir de l'eau
    >>Ouvrez le |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Demi-pendentif d'agilité aquatique|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshore 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Détruisez l' |T134059:0|t|cRXP_LOOT_[Echantillon de céréales des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Détruisez l' |T133944:0|t|cRXP_LOOT_[Echantillon de noix des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Détruisez l' |T134013:0|t|cRXP_LOOT_[Echantillon de fruit des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Achetez-lui un|r |T135237:0|t[Silex et amadou] |cRXP_BUY_et un|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Ceci sert à monter votre|r |T133971:0|t[Cuisine] |cRXP_WARN_bientôt sur le bateau|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
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
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Rendez la quête Un maître perdu
    .target Terenthis
    .isQuestTurnedIn 986
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Si vous équipez la|r |T133762:0|t[Cape enchantée de traquelune]|cRXP_WARN_, assurez-vous de garder votre cape actuelle pour plus tard, car la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_est perdue lors d'une prochaine remise de quête|r
    .equip 15,5387 >>|cRXP_WARN_Équipez la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_si elle est meilleure que votre cape actuelle|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
    .isQuestComplete 1138
step
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde

----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of 2x Non-Deadmines Training/Class q section----



step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >> Voyagez vers le quai du bateau pour le Port de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreNoDMCook1
    #requires TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreNoDMCook1
    #completewith MenethilNoDMBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] |cRXP_WARN_les|r |T132832:0|t|cRXP_LOOT_[Petit Oeufs]|r |cRXP_WARN_et les|r |T134059:0|t[Epices douces] |cRXP_WARN_en|r |T132834:0|t[Oeufs aux herbes]
    .usespell 2550
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .dungeon !DM
step << Warrior/Paladin
    #xprate >1.59
    #ah
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour le Port de Menethil si nécessaire|r << Warrior/Paladin/Rogue
    >>|cRXP_WARN_Si vous avez une très bonne arme dans vos sacs que vous pouvez bientôt équiper, passez cette étape|r
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #ssf << Paladin/Warrior
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour le Port de Menethil si nécessaire|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin
    #ah
    #xprate >1.59
    #optional
    #label PalWarSkip20
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r au Port de Menethil
    .vendor 1441 >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    >>|cRXP_WARN_S'il n'y en a pas, ne vous en faites pas, comme vous irez à l'Hôtel des ventes plus tard|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << Warrior/Paladin
    #ssf
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    >>|cRXP_BUY_S'il n'y en a pas, achetez-lui un|r |T135280:0|t[Faux dace] |cRXP_BUY_ si vous le pouvez|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << !NightElf Warrior/Paladin/Mage/Warlock/!NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Sautez dans l'eau au bout des quais et nagez jusqu'au point de repère.
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utilisez le service d'assistance aux personnages coincés pour allez à Forgefer. Vous devez vous déconnectez à l'endroit prévu, puis naviguez le menu d'assistance sur un autre personnage (Sinon, vous pouvez c/c le lien du déblocage ci-dessous dans votre navigateur), puis faites défiler jusqu'au service d'assistance. Cliquez sur votre personnage et bougez. Si vous n'arrivez pas à vous débloquer, passez cette étape et nagez le long des montagnes jusqu'aux Marches de l'Ouest
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Cliquez ici pour lien Assistance aux personnages coincés
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Warrior and Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si le site d'internet pour débloquer votre personnage n'est pas disponible, nagez jusqu'aux Marches de l'Ouest
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Remontez le rivage et prenez la route pour la Colline des Sentinelles
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Allez vers Hurlevent
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Rogue
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior
    .target Woo Ping
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Warrior Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Main-de-Pierre|r à l'intérieur
    .train 197 >> Acheter la compétence pour porter des haches à deux mains
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional << NightElf
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui une|r |T135280:0|t[Faux dace] |cRXP_BUY_ ou vérifiez l'Hôtel des ventes pour une option meilleure/moins cher|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brenwyn Wintersteel
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    #completewith DeeprunDM
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Bilban Cléamornifles|r
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step <<Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Poigne-d'os|r à l'intérieur
    .turnin 968 >> Rendez la quête Les puissances d'en-bas
    .target Gerrig Bonegrip
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Voyagez jusqu'à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui jusqu'à 4|r |T134419:0|t[Runes de téléportation] |cRXP_BUY_|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon !DM
step << Mage
    #xprate >1.59
    #label MilstaffNoDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Apprenez |T135763:0|t[Téléportation : Forgefer]
    .target Milstaff Stormeye
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
    .dungeon !DM
step << Paladin
    #xprate >1.59
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .trainer >> Apprenez vos sorts de classe
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .dungeon !DM
step << skip --logout skip Mage
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le pilier au-dessus de |cRXP_FRIENDLY_Bink|r, puis marchez légèrement vers l'est jusqu'à la position de la flèche. Positionnez votre personnage jusqu'à ce qu'il semble flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Allez sur le lit, puis sautez sur la bibliothèque. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur la Tête du Griffon. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_et de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_si nécessaire pendant le Tram|r
    >>|cRXP_WARN_Vous aurez besoin d'un niveau de 80+ en|r |T135966:0|t[Premiers soins] |cRXP_WARN_pour une quête à venir|r << Rogue !Dwarf
    .zone Stormwind City >> Prenez le Tram des profondeurs vers Hurlevent
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Billibub Cogspinner
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Voyagez vers |cRXP_FRIENDLY_Wu Shen|r à l'intérieur du Centre de Commande
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r dans le bâtiment à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Apprenez|r |T132282:0|t[Embuscade] |cRXP_WARN_si vous pouvez vous le permettre et une|r |T135641:0|t[Dague] |cRXP_WARN_équipée sur vous ou dans vos sacs. Cela vous permettra de gagner du temps|r
    .train 8676 >> Apprenez [Embuscade]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Assurez-vous d'apprendre|r |T132320:0|t[Camouflage]|cRXP_WARN_,|r |T133644:0|t[Vol à la tire]|cRXP_WARN_, et|r |T136058:0|t[Crochetage] |cRXP_WARN_comme vous en aurez besoin plus tard|r
    .train 1784 >>Apprenez [Camouflage]
    .train 921 >>Apprenez [Vol à la tire]
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Assurez-vous d'apprendre|r |T133644:0|t[Vol à la tire]|cRXP_WARN_et|r |T136058:0|t[Crochetage] |cRXP_WARN_comme vous en aurez besoin plus tard|r
    >>|cRXP_WARN_SOYEZ TRÈS PRUDENT avec la gestion de votre argent dans les prochaines étapes. N'achetez que les sorts essentiels. Vous devrez avoir de l'argent pour Disparition bientôt et 75 pièces d'argent pour obtenir une rune après votre retour des Paluns|r
    .train 921 >>Apprenez [Vol à la tire]
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>Faites bien attention à apprendre la capacité [Crochetage], vous en aurez besoin plus tard
    >>|cRXP_WARN_SOYEZ TRÈS PRUDENT avec la gestion de votre argent dans les prochaines étapes. N'achetez que les sorts essentiels. Vous devrez avoir de l'argent pour Disparition bientôt et 75 pièces d'argent pour obtenir une rune après votre retour des Paluns|r
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Voyagez vers |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r à l'intérieur du SI:7 en haut des escaliers
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << NightElf Rogue/Mage/Warlock
    #xprate >1.59 << !Hunter
    #season 1 << Rogue sod
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior
    .target Woo Ping
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith NoDMStockadeEnd
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui une|r |T135280:0|t[Faux dace] |cRXP_BUY_ ou vérifiez l'Hôtel des ventes pour une option meilleure/moins cher|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .zoneskip Stormwind City,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un|r |T135342:0|t[Kriss] |cRXP_BUY_ ou consultez l'Hôtel des ventes pour une meilleure option/moins coûteuse|r
    >>|cRXP_WARN_Faites TRÈS ATTENTION avec votre argent dans les étapes à venir. N'achetez qu'une seule dague si vous n'avez pas d'argent. Vous devrez avoir de l'argent pour apprendre Disparition bientôt et 75 pièces d'argent pour obtenir une rune après votre retour des Paluns|r
    .collect 2209,2 --Kris (2)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez-lui un|r |T135342:0|t[Kriss] |cRXP_BUY_si vous pouvez vous le permettre|r
    >>|cRXP_WARN_Faites TRÈS ATTENTION avec votre argent dans les étapes à venir. N'achetez qu'une seule dague si vous n'avez pas d'argent. Vous devrez avoir de l'argent pour apprendre Disparition bientôt et 75 pièces d'argent pour obtenir une rune après votre retour des Paluns|r
    .collect 2209,1 --Kris (2)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Équipez le|r |T135342:0|t[Kriss]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM



----Start of 2x Non-Deadmines Rogue Class q section----



step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Jaxon|r
    >>Achetez l'|T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard, et le reste pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Dwarf
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines très bientôt << Dwarf
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134437:0|t[Anti-venin] << !Dwarf
    >>|T134172:0|t[Groin de grand Broche-tripes]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent << !Human
    .fly Westfall >> Volez vers la Marche de l'Ouest << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles << !Human
    .fly Redridge >> Volez vers Les Carmines << Human
    .target Thor
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers Les Carmines
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r en haut de la Tour d'Azora
    .accept 94 >> Acceptez la quête L'œil attentif
    .target Theocritus
    .dungeon !DM
    .xp <20,1
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r à l'intérieur
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley the Black|r à l'intérieur, en haut des escaliers
    .turnin 65 >> Rendez la quête La Confrérie défias
    .accept 132 >> Acceptez la quête La Confrérie défias
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .accept 2282 >> Acceptez la quête La scierie d'Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .accept 89 >> Acceptez la quête Le pont sur le lac
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Vous pouvez tuer certains des gnolls en sur le chemin pour la Scierie d'Alther. Vous terminerez cet objectif sur le chemin du retour
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >> Dirigez-vous vers la scierie d'Alther
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>Vous DEVEZ le faire pour votre quête de [Poisons] plus tard
    >>|cRXP_WARN_Restez sur la location du point de repère. Positionnez votre caméra et votre curseur jusqu'à ce que vous puissiez cliquer sur 3 |cRXP_PICK_Practice Lockboxes|r en même temps et sans avoir à bouger|r
    .skill lockpicking,80 >>|cRXP_WARN_Ouvrez les |cRXP_PICK_Practice Lockboxes|r sur le sol dans la scierie d'Alther jusqu'à ce que votre score de|r [Crochetage] soit de 80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Terminez de tuer les |cRXP_WARN_Gnolls|r pour les pièces du pont
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .turnin 89 >> Rendez la quête Le pont sur le lac
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Rendez la quête La scierie d'Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Détruisez le |T134328:0|t[Certificat des voleurs] de vos sacs, il n'est plus nécessaire
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >> Assurez-vous d'avoir au moins 14k xp du le niveau 21 avant de quitter les Carmines. Si vous n'y êtes pas encore, envisagez de faire la quête |cRXP_ENEMY_Le collier d'Hilary|r de |cRXP_FRIENDLY_Shawn|r ou la quête |cRXP_ENEMY_Les outils perdus|r du |cRXP_FRIENDLY_Contremaître Oslow|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines << !Human
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Rendez la quête La Confrérie défias
    .accept 135 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Tuez les |cRXP_ENEMY_Araignées Tisse-venin pygmées|r et les |cRXP_ENEMY_Araignées Tisse-venins|r. Dépouillez-les pour une |cRXP_LOOT_Petite glande à venin|r et leurs |cRXP_LOOT_Pattes d'araignée fondantes|r
    >>|cRXP_WARN_Vous avez besoin d'une |cRXP_LOOT_Petite glande à venin|r pour créer un|r |T134437:0|t[Anti-venin]|cRXP_WARN_ pour enlever le debuff|r |T136230:0|t[Toucher de Zanzil]|cRXP_WARN_ plus tard|r
    >>|cRXP_WARN_Gardez les |cRXP_LOOT_Pattes d'araignée fondantes|r plus tard|r
    >>|cRXP_WARN_Si vous avez un ami|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_ vous pouvez passer cette étape et leur demander de l'enlever plus tard|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +==PRÊTEZ ATTENTION À LA SECTION À VENIR==
    >>Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
    >>De plus, il est recommandé d'activer les barres d'info des ennemis (Touche par défaut: V) comme cela vous permet de voir les ennemis derrière certains des coins à l'intérieur de la tour
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ le faire pour votre de quête de [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|tUtilisez [Vol à la tire] sur le |cRXP_ENEMY_Malformed Defias Drone|r. Volez-lui la |cRXP_LOOT_Defias Tower Key|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Le |cRXP_ENEMY_Malformed Defias Drone|r apparaissent à l'entrée de la tour, puis font le tour de celle-ci|r
    >>Faites attention car il fait BEAUCOUP de dégâts. Si vous perdez votre [Camouflage], utilisez vite votre [Sprint] pour vous enfuir
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +Équipez la [Dague de Curvewood] pour cette quête si vous n'avez pas déjà de [Dague] équipée
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
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
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Utilisez votre racial [Forme de Pierre] pour enlever le debuff [Toucher de Zanzil]
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Voyagez vers |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .skill firstaid,80 >> Montez vos [Premier soins] à un niveau de compétence de 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .train 7934 >> Apprenez [Anti-Venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>Rappelez-vous de re-équiper votre arme principale si vous avez équipé une [Dague] plus tôt << Rogue !sod
    .turnin 135 >> Rendez la quête La Confrérie défias
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jasper Fel|r au rez-de-chaussée du bâtiment
    >>Achetez des composants pour fabriquer des [|cRXP_FRIENDLY_Fiole de poison vide|r] et des [|cRXP_FRIENDLY_Vanish|r] à Jasper
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Ouvrez votre grimoire et trouvez la compétence [|cRXP_FRIENDLY_Poisons|r] dans l'onglet Général. Ouvrez-la et fabriquer 20 Poison Instantanés. N'oubliez pas leur application sur vos deux armes avant chaque combat
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_FAITES TRÈS ATTENTION avec votre argent dans les étapes à venir. N'achetez que les sorts essentiels. Vous aurez besoin de 75 pièces d'argent pour obtenir une rune après quelques quêtes dans les Paluns|r
    >>|cRXP_WARN_Apprenez|r |T132331:0|t[Disparition] et |T132320:0|t[Camouflage](rang 2) Vous en aurez besoin pour débloquer |T236270:0|t[Breuvage mortel] bientôt
    .train 1856 >> Apprenez [Disparition]
    .train 1785 >> Apprenez |T132320:0|t[Camouflage](rang 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Warlock
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r à l'intérieur
    .vendor 1312 >>|cRXP_BUY_Achetez-lui une|r |T135469:0|t[Baguette du crépuscule] |cRXP_BUY_si vous pouvez vous le permettre|r
    >>|cRXP_BUY_Sinon, achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_à l'Hôtel des ventes si c'est moins cher que 52s 47c|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui une|r |T135469:0|t[Baguette du crépuscule] |cRXP_BUY_|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Équipez la|r |T135469:0|t[Baguette du crépuscule]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné. Descendez les escaliers
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crépi Roncebaie|r
    .vendor >>|cRXP_BUY_Achetez-lui le|r |T133738:0|t[Grimoire de Tourment (rang 2)] |cRXP_BUY_|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDMEnd
    #requires Torment2NoDM
    .train 20317 >>|cRXP_WARN_Utilisez le|r |T133738:0|t[Grimoire de Tourment (rang 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Montez dans la Tour des mages. Prenez le Portail vert
    .goto Stormwind City,39.681,79.538,15 >>Voyagez vers |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
    .target Larimaine Purdue
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #season 1 >> Voleur
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .zoneskip Ironforge << Warrior
    .zoneskip Darkshore << Warrior
    .target Argos Nightwhisper
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil. |cRXP_WARN_Utilisez la technique de Ghetto hearth dans la prison si elle est en rechargement|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entrez dans la Prison dans Hurlevent|r
    >>|cRXP_WARN_Une fois à l'intérieur:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Cliquez ici pour Copier/coller cette macro dans le chat et utiliser la technique de Ghetto hearth pour revenir à Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Si vous n'arrivez pas à le faire, retournez à Auberdine|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_et de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_si nécessaire pendant le Tram|r
    .zone Ironforge >> Prenez le Tram des profondeurs pour aller à Forgefer
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP2
    #label NEWarRogNoDMNoFP3
    #completewith NEWarRogNoDMIFPP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Main-de-Pierre|r à l'intérieur
    .train 197 >> Acheter la compétence pour porter des haches à deux mains
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .target Buliwyf Stonehand
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP3
    #label NEWarRogNoDMNoFP4
    #completewith NEWarRogNoDMIFPP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Hiémacier|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui le|r |T135427:0|t[Couteau de lancer lourd] |cRXP_BUY_|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP4
    #label NEWarRogNoDMNoFP5
    #completewith NEWarRogNoDMIFPP
    +|cRXP_WARN_Équipez le|r |T135427:0|t[Couteau de lancer lourd]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Poigne-d'os|r à l'intérieur
    .turnin 968 >> Rendez la quête Les puissances d'en-bas
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM



----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << Mage/Warlock/Rogue
    #xprate >1.59
    #label NoDMStockadeEnd
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entrez dans la Prison dans Hurlevent|r
    >>|cRXP_WARN_Une fois à l'intérieur:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Cliquez ici pour Copier/coller cette macro dans le chat et utiliser la technique de Ghetto hearth pour revenir à Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Si vous n'arrivez pas à le faire, retournez à Auberdine|r
    .zoneskip Teldrassil << Warrior
    .zoneskip Darnassus << Warrior
    .zoneskip Ironforge
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Volez aux Paluns
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >> Voyagez vers le Port de Menethil
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Allez sur le quai du bateau pour Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_pendant que vous attendez le bateau pour Auberdine si nécessaire|r << Warrior/Paladin/Rogue
    .zone Darkshore >> Prenez le bateau vers Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << !Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .cooldown item,6948,>0,1
    .dungeon !DM << !Dwarf/!Hunter



----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----




step << Dwarf Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Tuez des mobs en boucle jusqu'à ce que le temps de récupération de votre Pierre de foyer soit inférieur à 6 minutes. Mourez et réapparaissez à côté du |cRXP_FRIENDLY_Gardien des âmes|r
step << Dwarf Hunter
    #xprate <1.59
    #hardcore
    #optional
    #completewith next
    +Tuez des mobs en boucle jusqu'à ce que le temps de récupération sur votre Pierre de foyer soit inférieur à 9 minutes, puis retournez à Auberdine
step << !NightElf !Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << !NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Détruisez l' |T134059:0|t|cRXP_LOOT_[Echantillon de céréales des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Détruisez l' |T133944:0|t|cRXP_LOOT_[Echantillon de noix des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Détruisez l' |T134013:0|t|cRXP_LOOT_[Echantillon de fruit des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << !NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step << !NightElf
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Rendez la quête Un maître perdu
    .accept 993 >> Acceptez la quête Un maître perdu
    .target Terenthis
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Si vous équipez la|r |T133762:0|t[Cape enchantée de traquelune]|cRXP_WARN_, assurez-vous de garder votre cape actuelle pour plus tard, car la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_est perdue lors d'une prochaine remise de quête|r
    .equip 15,5387 >>|cRXP_WARN_Équipez la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_si elle est meilleure que votre cape actuelle|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter
    #xprate <1.59
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Allez sur le quai du bateau pour Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
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
step << Dwarf Hunter
    #xprate <1.59
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
step << Dwarf Hunter
    #xprate <1.59
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Prenez le chemin de vol de Teldrassil
    .target Vesprystus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #completewith next
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .target Jocaste
    .dungeon !DM
step << Dwarf Hunter
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Achetez-lui un|r |T135489:0|t[Arc lourd à double courbure] |cRXP_BUY_et un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #xprate <1.59
    #completewith next
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter
    #xprate <1.59
    #optional
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #xprate <1.59
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    #xprate <1.5
    .goto Moonglade,56.2,30.4
    >>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >> Rendez la quête Soigner la maladie
    .accept 6125 >> Acceptez la quête Pouvoir contre le poison
    .target Dendrite Starblaze
    .isQuestTurnedIn 6123
step << Druid
    #xprate <1.59
    #label MoongladeTrain
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << NightElf/Dwarf Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Voyagez vers Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
step
    #xprate <1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12342 >> Détruisez l' |T134059:0|t|cRXP_LOOT_[Echantillon de céréales des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12343 >> Détruisez l' |T133944:0|t|cRXP_LOOT_[Echantillon de noix des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12341 >> Détruisez l' |T134013:0|t|cRXP_LOOT_[Echantillon de fruit des Noirbois]|r de vos sacs, comme il n'est plus nécessaire
step << NightElf Hunter
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Faites du stock de |T132382:0|t[Flèches aiguisées]
    .target Dalmond
step << NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step << NightElf
    #xprate <1.59
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Rendez la quête Un maître perdu
    .accept 993 >> Acceptez la quête Un maître perdu
    .target Terenthis




----End of <1.59x Turnin section----




step << NightElf
    #optional
    >>|cRXP_WARN_Si vous équipez la|r |T133762:0|t[Cape enchantée de traquelune]|cRXP_WARN_, assurez-vous de garder votre cape actuelle pour plus tard, car la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_est perdue lors d'une prochaine remise de quête|r
    .equip 15,5387 >>|cRXP_WARN_Équipez la|r |T133762:0|t[Cape enchantée de traquelune] |cRXP_WARN_si elle est meilleure que votre cape actuelle|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

----Start of Hunter Deadmines/All 2x Deadmines Section----
step
    #xprate <1.59 << !Hunter
    #label TravelMenethilDMBoat
    #completewith MenethilDMBoat
    .goto 1439,32.432,43.744,15 >> Voyagez vers le quai du bateau pour le Port de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #label DarkshoreDMCook1
    #requires TravelMenethilDMBoat
    #completewith MenethilDMBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #requires DarkshoreDMCook1
    #completewith DarnDMBoat
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisinez] |cRXP_WARN_les|r |T132832:0|t|cRXP_LOOT_[Petit Oeufs]|r |cRXP_WARN_et les|r |T134059:0|t[Epices douces] |cRXP_WARN_en|r |T132834:0|t[Oeufs aux herbes]
    .usespell 2550
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>Vous allez maintenant commencer à voyager vers Les Mortemines
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour le Port de Menethil si nécessaire|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Paladin/Warrior
    #ah
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    .vendor 1441 >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    >>Ou sinon, vous pourrez bientôt vérifier l'Hôtel des Ventes pour une alternative meilleure ou à un meilleur prix
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior
    #ssf
    #optional
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    >>|cRXP_BUY_S'il n'y en a pas, achetez-lui un|r |T135280:0|t[Faux dace] |cRXP_BUY_ si vous le pouvez|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Sautez dans l'eau au bout des quais et nagez jusqu'au point de repère.
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utilisez le service d'assistance aux personnages coincés pour allez à Forgefer. Vous devez vous déconnectez à l'endroit prévu, puis naviguez le menu d'assistance sur un autre personnage (Sinon, vous pouvez c/c le lien du déblocage ci-dessous dans votre navigateur), puis faites défiler jusqu'au service d'assistance. Cliquez sur votre personnage et bougez. Si vous n'arrivez pas à vous débloquer, passez cette étape et nagez le long des montagnes jusqu'aux Marches de l'Ouest
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Cliquez ici pour lien Assistance aux personnages coincés
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM




----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si le site d'internet pour débloquer votre personnage n'est pas disponible, nagez jusqu'aux Marches de l'Ouest
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Remontez le rivage et prenez la route pour la Colline des Sentinelles
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Allez vers Hurlevent
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Parlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur de la Cathédrale
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Main-de-Pierre|r à l'intérieur
    .train 197 >> Acheter la compétence pour porter des haches à deux mains << Warrior
    .train 199 >> Acheter la compétence pour porter des masses à deux mains << Warrior
    .train 266 >> Apprenez la compétence pour porter des Fusils << Hunter
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Poigne-d'os|r à l'intérieur
    .turnin 968 >> Rendez la quête Les puissances d'en-bas
    .target Gerrig Bonegrip
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Voyagez jusqu'à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui jusqu'à 4|r |T134419:0|t[Runes de téléportation] |cRXP_BUY_|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Apprenez [Téléportation : Ironforge]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le pilier au-dessus de |cRXP_FRIENDLY_Bink|r, puis marchez légèrement vers l'est jusqu'à la position de la flèche. Positionnez votre personnage jusqu'à ce qu'il semble flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Achetez des|r [Grimoires] |cRXP_BUY_pour vos familiers si vous le voulez|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Allez sur le lit, puis sautez sur la bibliothèque. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Allez sur le lit, puis sautez sur la bibliothèque. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur la Tête du Griffon. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_et de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_si nécessaire pendant le Tram|r
    >>|cRXP_WARN_Vous aurez besoin d'un niveau de 80+ en|r |T135966:0|t[Premiers soins] |cRXP_WARN_pour une quête à venir|r << Rogue !Dwarf
    .zone Stormwind City >> Prenez le Tram des profondeurs vers Hurlevent
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept +168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karrina Mekenda|r à l'intérieur.
    .trainer 2879 >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer 5515 >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r à l'intérieur
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Apprenez|r |T132282:0|t[Embuscade] |cRXP_WARN_si vous pouvez vous le permettre et une|r |T135641:0|t[Dague] |cRXP_WARN_équipée sur vous ou dans vos sacs. Cela vous permettra de gagner du temps|r
    .train 8676 >> Apprenez [Embuscade]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Assurez-vous d'apprendre|r |T132320:0|t[Camouflage]|cRXP_WARN_,|r |T133644:0|t[Vol à la tire]|cRXP_WARN_, et|r |T136058:0|t[Crochetage] |cRXP_WARN_comme vous en aurez besoin plus tard|r
    .train 1784 >>Apprenez [Camouflage]
    .train 921 >>Apprenez [Vol à la tire]
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Assurez-vous d'apprendre|r |T133644:0|t[Vol à la tire]|cRXP_WARN_et|r |T136058:0|t[Crochetage] |cRXP_WARN_comme vous en aurez besoin plus tard|r
    .train 921 >>Apprenez [Vol à la tire]
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>Faites bien attention à apprendre la capacité [Crochetage], vous en aurez besoin plus tard
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Voyagez vers |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r à l'intérieur du SI:7 en haut des escaliers
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Voyagez vers |cRXP_FRIENDLY_Wu Shen|r à l'intérieur du Centre de Commande
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r dans le bâtiment à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage/Druid/Priest
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui une|r [Épée longue] |cRXP_BUY_ou regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Parlez à |cRXP_FRIENDLY_Duthorian Rall|r à l'intérieur de la Cathédrale
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r. Il vous donnera le [|cRXP_LOOT_Tome of Valor|r]
    .use 6776 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tome of Valor|r] pour commencer la quête|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Rendez la quête Le Tome de la bravoure
    .accept 1650 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui une|r |T135280:0|t[Faux dace] |cRXP_BUY_ ou vérifiez l'Hôtel des ventes pour une option meilleure/moins cher|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r à l'intérieur
    .vendor 1312 >>|cRXP_BUY_Achetez-lui une|r |T135469:0|t[Baguette du crépuscule] |cRXP_BUY_si vous pouvez vous le permettre|r
    >>|cRXP_BUY_Sinon, achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_à l'Hôtel des ventes si c'est moins cher que 52s 47c|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui une|r |T135469:0|t[Baguette du crépuscule] |cRXP_BUY_|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Équipez la|r |T135469:0|t[Baguette du crépuscule]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné. Descendez les escaliers
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crépi Roncebaie|r
    .vendor >>|cRXP_BUY_Achetez-lui le|r |T133738:0|t[Grimoire de Tourment (rang 2)] |cRXP_BUY_|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_Utilisez le|r |T133738:0|t[Grimoire de Tourment (rang 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Montez dans la Tour des mages. Prenez le Portail vert
    .goto Stormwind City,39.681,79.538,15 >>Voyagez vers |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .train 6756 >> Apprenez vos sorts de classe
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>Entrez dans le Carquois vide dans la zone centrale du Quartier commerçant
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez-lui un|r |T135489:0|t[Arc lourd à double courbure] |cRXP_BUY_et un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez-lui un|r |T135489:0|t[Arc lourd à double courbure] |cRXP_BUY_et un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_ou vérifiez l'Hôtel des ventes une option meilleure/moins cher|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez l'|T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard, et le reste pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Dwarf Rogue
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines et à la Marche de l'Ouest très bientôt << Paladin
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Paladin !Rogue/Dwarf Rogue
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134437:0|t[Anti-venin] << !Dwarf Rogue
    >>|T132794:0|t[Flasque d'huile] << Paladin
    >>|T134172:0|t[Groin de grand Broche-tripes]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez l'|T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard, et le reste pour rendre des quêtes plus rapidement aux Carmines et à la Marche de l'Ouest très bientôt << !Dwarf Rogue
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines et à la Marche de l'Ouest très bientôt << !Rogue/Dwarf Rogue
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134437:0|t[Anti-venin] << !Dwarf Rogue
    >>|T132794:0|t[Flasque d'huile]
    >>|T134172:0|t[Groin de grand Broche-tripes]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent << !Human
    .fly Westfall >> Volez vers la Marche de l'Ouest << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles << !Human
    .fly Redridge >> Volez vers Les Carmines << Human/Warlock
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers Les Carmines
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r en haut de la Tour d'Azora
    .accept 94 >> Acceptez la quête L'œil attentif
    .target Theocritus
    .dungeon DM
    .xp <20,1
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r à l'intérieur
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley the Black|r à l'intérieur, en haut des escaliers
    .turnin 65 >> Rendez la quête La Confrérie défias
    .accept 132 >> Acceptez la quête La Confrérie défias
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .accept 2282 >> Acceptez la quête La scierie d'Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>Vous DEVEZ le faire pour votre quête de [Poisons] plus tard
    >>|cRXP_WARN_Restez sur la location du point de repère. Positionnez votre caméra et votre curseur jusqu'à ce que vous puissiez cliquer sur 3 |cRXP_PICK_Practice Lockboxes|r en même temps et sans avoir à bouger|r
    .skill lockpicking,80 >>|cRXP_WARN_Ouvrez les |cRXP_PICK_Practice Lockboxes|r sur le sol dans la scierie d'Alther jusqu'à ce que votre score de|r [Crochetage] soit de 80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Rendez la quête La scierie d'Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Détruisez le |T134328:0|t[Certificat des voleurs] de vos sacs, il n'est plus nécessaire
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines << !Human !Warlock
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Rendez la quête La Confrérie défias
    .accept 135 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Tuez les |cRXP_ENEMY_Araignées Tisse-venin pygmées|r et les |cRXP_ENEMY_Araignées Tisse-venins|r. Dépouillez-les pour une |cRXP_LOOT_Petite glande à venin|r et leurs |cRXP_LOOT_Pattes d'araignée fondantes|r
    >>|cRXP_WARN_Vous avez besoin d'une |cRXP_LOOT_Petite glande à venin|r pour créer un|r |T134437:0|t[Anti-venin]|cRXP_WARN_ pour enlever le debuff|r |T136230:0|t[Toucher de Zanzil]|cRXP_WARN_ plus tard|r
    >>|cRXP_WARN_Gardez les |cRXP_LOOT_Pattes d'araignée fondantes|r plus tard|r
    >>|cRXP_WARN_Si vous avez un ami|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_ vous pouvez passer cette étape et leur demander de l'enlever plus tard|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +==PRÊTEZ ATTENTION À LA SECTION À VENIR==
    >>Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
    >>De plus, il est recommandé d'activer les barres d'info des ennemis (Touche par défaut: V) comme cela vous permet de voir les ennemis derrière certains des coins à l'intérieur de la tour
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ le faire pour votre de quête de [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|tUtilisez [Vol à la tire] sur le |cRXP_ENEMY_Malformed Defias Drone|r. Volez-lui la |cRXP_LOOT_Defias Tower Key|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Le |cRXP_ENEMY_Malformed Defias Drone|r apparaissent à l'entrée de la tour, puis font le tour de celle-ci|r
    >>Faites attention car il fait BEAUCOUP de dégâts. Si vous perdez votre [Camouflage], utilisez vite votre [Sprint] pour vous enfuir
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +Équipez la [Dague de Curvewood] pour cette quête si vous n'avez pas déjà de [Dague] équipée
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
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
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Utilisez votre racial [Forme de Pierre] pour enlever le debuff [Toucher de Zanzil]
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Voyagez vers |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .skill firstaid,80 >> Montez vos [Premier soins] à un niveau de compétence de 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .train 7934 >> Apprenez [Anti-Venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>Rappelez-vous de re-équiper votre arme principale si vous avez équipé une [Dague] plus tôt << Rogue
    .turnin 135 >> Rendez la quête La Confrérie défias
    .accept 141 >> Acceptez la quête La Confrérie défias
    .turnin 2359 >> Rendez la quête La Tour de Klaven << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Commencez à monter un groupe pour les Mortemines
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Rendez la quête La Confrérie défias
    .accept 142 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Voyagez à Ruisselune
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tuez le |cRXP_ENEMY_Messager défias|r. Dépouiilez-le pour son |cRXP_LOOT_Un message mystérieux|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Messager défias|r apparaît à Ruisselune. Il marche le long de la route au nord de Ruisselune, jusqu'à la Carrière de la Côte de l'or et la Mine de Jangolode. Si vous ne le voyez pas le long de la route, attendez qu'il réapparaisse à Ruisselune|r
    >>|cRXP_WARN_Son délai de réapparition est de 4-5 minutes|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Traître défias|r
    >>|cRXP_WARN_Vous devrez peut-être attendre que le |cRXP_FRIENDLY_Traître défias|r apparaisse s'il n'est pas là|r
    >>|cRXP_WARN_Si vous avez déjà formé un groupe, assurez-vous que votre groupe a rendu la partie précédente avant de commencer la quête d'escorte|r
    .accept 155 >> Acceptez la quête La Confrérie défias
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>Escortez le |cRXP_FRIENDLY_Traître défias|r jusqu'aux Mortemines
    >>|cRXP_WARN_Restez tout le temps à côté du |cRXP_FRIENDLY_Traître défias|r. Soyez prêt à combattre les |cRXP_ENEMY_Pilleurs défias|r et les |cRXP_ENEMY_Pillards défias|r à votre arrivée à Ruisselune|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Rendez la quête La Confrérie défias
    .accept 166 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Riell|r au sommet de la Tour
    .accept 214 >> Acceptez la quête Les masques rouges en soie
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
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
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entrez dans le Repaire Defias avec votre groupe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Tuez les |cRXP_ENEMY_Defias|r. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    >>Vous pouvez aussi finir cette quête à l'intérieur des Mortemines
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tuez |cRXP_ENEMY_Foreman Thistlenettle|r. Dépouillez-le pour son |cRXP_LOOT_Badge|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entrez dans le donjon des Mortemines
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>Tuez les |cRXP_ENEMY_Defias|r dans Les Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Tuez les |cRXP_ENEMY_Defias|r dans Les Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Tuez |cRXP_ENEMY_Sneed|r. Dépouillez-le pour son |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r et sa [|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_Demandez à votre groupe s'ils peuvent rester pour vous aider très bientôt avec l'escorte de |cRXP_FRIENDLY_Daphne Morpuits|r spécifique aux paladins (si possible)|r << Paladin
    .subzone 920 >>Quittez les Mortemines par la sortie au fond, à l'est d' |cRXP_ENEMY_Edwin VanCleef|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >> Dirigez-vous vers |cRXP_FRIENDLY_Daphne Morpuits|r dans son champ
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daphne Morpuits|r dans son champ pour commencer la quête d'escorte
    >>|cRXP_WARN_Elle patrouille non loin dans son champ|r
    >>|cRXP_WARN_Soyez prudent car cette quête peut être légèrement difficile. Vous rencontrerez 3 vagues de 3, puis 4, puis 5|cRXP_ENEMY_Ecumeurs défias|r de niveau 17-18
    .turnin 1650 >>Rendez la quête Le Tome de la bravoure
    .accept 1651,1 >>Acceptez la quête Le Tome de la bravoure
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> CLIQUEZ ICI pour un guide vidéo
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>Protégez |cRXP_FRIENDLY_Daphne Morpuits|r
    >>|cRXP_WARN_Si vous mourez ou si |cRXP_FRIENDLY_Daphne Morpuits|r meurt, la quête échouera et vous devrez réessayer|r
    >>|cRXP_WARN_Soyez prudent car cette quête peut être légèrement difficile. Vous rencontrerez 3 vagues de 3, puis 4, puis 5|cRXP_ENEMY_Ecumeurs défias|r de niveau 17-18
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daphne Morpuits|r
    >>|cRXP_WARN_Elle patrouille non loin dans son champ|r
    .turnin 1651 >>Rendez la quête Le Tome de la bravoure
    .accept 1652 >>Acceptez la quête Le Tome de la bravoure
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Voyagez au Phare de la Marche de l'Ouest
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .accept 103 >> Acceptez la quête Le gardien de la flamme
    .turnin 103 >> Rendez la quête Le gardien de la flamme
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour son |cRXP_LOOT_Écaille|r
    >>Le |cRXP_ENEMY_Vieux Troubloeil|r |cRXP_WARN_patrouille de haut en bas sur le Longrivage. Si vous ne pouvez pas le trouver, passez cette étape|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 104 >> Rendez la quête Menace sur la côte
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >> Abandonnez la quête Le gardien de la flamme
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entrez seul dans la cache secrète défias
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>Tuez les |cRXP_ENEMY_Défias|r en dehors de l'Instance Mortemines. Dépouillez-les pour leurs |cRXP_LOOT_Masque rouge en soie|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Tuez les |cRXP_ENEMY_Defias|r dans Les Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    >>|cRXP_WARN_S'il n'y a plus de |cRXP_ENEMY_Défias|r à l'intérieur des Mortemines, tuez ceux à l'extérieur|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Riell|r au sommet de la Tour
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >> Abandonnez la quête La lettre non envoyée. Vous la ferez plus tard.
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Lancez |T135763:0|t[Téléportation : Hurlevent]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné. Descendez les escaliers
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Parlez à |cRXP_FRIENDLY_Duthorian Rall|r à l'intérieur de la Cathédrale
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Rendez la quête Le Tome de la bravoure
    .accept 1653 >>Acceptez la quête Le test de droiture
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19835 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Parlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur de la Cathédrale
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur
    .train 8103 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 1856 >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Voyagez vers |cRXP_FRIENDLY_Wu Shen|r à l'intérieur du Centre de Commande
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r dans le bâtiment à l'étage
    .train 6192 >> Apprenez vos sorts de classe
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r à l'intérieur
    .turnin 167 >> Rendez la quête Adieu mon frère…
    .turnin 168 >> Rendez la quête À la recherche de Cartes du Syndicat des Mineurs
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Rendez la quête Assaut souterrain
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Parlez à |cRXP_FRIENDLY_Duthorian Rall|r à l'intérieur de la Cathédrale
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Rendez la quête Le Tome de la bravoure
    .accept 1653 >>Acceptez la quête Le test de droiture
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19835 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Parlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur de la Cathédrale
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur
    .train 8103 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 1856 >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Voyagez vers |cRXP_FRIENDLY_Wu Shen|r à l'intérieur du Centre de Commande
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r dans le bâtiment à l'étage
    .train 6192 >> Apprenez vos sorts de classe
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Lancez |T135763:0|t[Téléportation : Hurlevent]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r tout en haut de la Tour
    .train 2138 >> Apprenez vos sorts de classe
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 8926 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_et de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_si nécessaire pendant le Tram|r
    .zone Ironforge >> Prenez le Tram des profondeurs pour aller à Forgefer
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Main-de-Pierre|r à l'intérieur
    .train 197 >> Acheter la compétence pour porter des haches à deux mains << Warrior
    .train 199 >> Acheter la compétence pour porter des masses à deux mains << Warrior
    .train 266 >> Apprenez la compétence pour porter des Fusils << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui le|r |T135427:0|t[Couteau de lancer lourd] |cRXP_BUY_|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_Équipez le|r |T135427:0|t[Couteau de lancer lourd]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Book: The Powers Below|r] pour commencer la quête|r
    .accept 968 >> Acceptez la quête Les puissances d'en-bas
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gerrig Poigne-d'os|r à l'intérieur
    .turnin 968 >> Rendez la quête Les puissances d'en-bas
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombrivage
    .zoneskip Darkshore
    .dungeon DM




----End of Hunter/All 2x Deadmines section----
----Start of <1.59x Redridge Transition----






step << !Hunter
--XX NightElf
    #xprate <1.59
    .goto Darkshore,37.45,40.50
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
--XX NightElf
    #xprate <1.59
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
--ZXCV
step << !Hunter
    #xprate <1.59
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439,32.432,43.744,15 >> Voyagez vers le quai du bateau pour le Port de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
step << !Hunter
    #xprate <1.59
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
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #xprate <1.59
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
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #xprate <1.59
    #label MenethilRRBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour le Port de Menethil si nécessaire|r << Rogue/Warrior/Paladin
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !NightElf !Hunter
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir



----Start of <1.59x Night Elf Wetlands->IF Transition----



step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Acceptez la quête Les peaux de jeune crocilisque
step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step << !Hunter NightElf
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step << !Hunter NightElf !Warrior
    #xprate <1.59
    #completewith crocs
    >>Tuez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux de jeune crocilisque|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1--ignore if level 18 or below
step << !Hunter NightElf
    #xprate <1.59
    #completewith next
    .goto Wetlands,49.91,39.36,50 >> Dirigez-vous vers l'est en direction d'|cRXP_FRIENDLY_Einar Poignepierre|r
step << !Hunter NightElf
    #xprate <1.59
    #label crocs
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einar Poignepierre|r
    .accept 469 >> Acceptez la quête Livraison quotidienne
step << !Hunter NightElf !Warrior
    #xprate <1.59
    .goto Wetlands,53.2,41.3,55,0
    .goto Wetlands,58.5,50.8,55,0
    .goto Wetlands,62.1,61.4,55,0
    .goto Wetlands,64.0,72.2
    >>Tuez les |cRXP_ENEMY_Jeunes crocilisques des Paluns|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux de jeune crocilisque|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1
step << skip --logout skip !Hunter NightElf
    #xprate 1.49-1.59
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Dirigez-vous vers la grotte à la base du barrage dans l'est des Paluns
	.zone Loch Modan >> Déconnectez-vous en haut des champignons au fond de la grotte.
    >>Quand vous vous reconnecterez, ceci vous téléportera à Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUEZ ICI pour un exemple vidéo
step << !Hunter NightElf
    #xprate <1.5
    #completewith next
    .goto Wetlands,53.14,70.38,30,0
    .goto Wetlands,48.32,67.07,35,0
    .goto Wetlands,50.14,72.10,30,0
    .goto Loch Modan,25.4,10.6,30 >> Voyagez jusqu'au Loch Modan
    .zone Loch Modan >> |cRXP_WARN_Restez sur la route principale pour éviter les mobs|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ingénieur en chef Hinderweir VII|r
    .accept 250 >> Acceptez la quête Une sombre menace se dessine
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,56.05,13.24
    >>Cliquez sur le |cRXP_PICK_Suspicious Barrel|r
    .turnin 250 >> Rendez la quête Une sombre menace se dessine
    .accept 199 >> Acceptez la quête Une sombre menace se dessine
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ingénieur en chef Hinderweir VII|r
    .turnin 199 >> Rendez la quête Une sombre menace se dessine
step << !Hunter NightElf
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,21.30,68.60,40,0
    .goto Loch Modan,19.11,62.11,25,0
    .goto Dun Morogh,86.04,51.05,20 >> Voyagez vers Dun Morogh
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step << !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,55.13,34.91
    .zone Ironforge >> Voyagez à Ironforge
step << skip --logout skip !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Allez à la caverne des troggs à l'ouest et déconnectez-vous près de la machine de forage pour effectuer un Logout skip qui vous emmènera à Forgefer
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> CLIQUEZ ICI pour un guide vidéo
step << !Hunter NightElf
    #xprate <1.59
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden



----End of <1.59x Night Elf Wetlands->IF Transition----



step << skip --logout skip !Hunter
    #xprate <1.59
    #completewith next
    #optional
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >> |cRXP_WARN_Effectuez un Logout skip en sautant sur l'une des têtes de Griffon et en vous déconnectant, puis en vous reconnectant|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r.
step << !Hunter
    #xprate <1.59
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Il s'agit d'un objet en approvisionnement limité. Passez cette étape si le |cRXP_FRIENDLY_Coupebraquet Tournepignon|r n'en a pas en stock|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter
    #xprate <1.59
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Stormwind
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_et votre|r |T133971:0|t[Cuisine] |cRXP_WARN_si nécessaire en attendant le tram|r
    >>|cRXP_WARN_Vous aurez besoin d'un niveau de compétence en|r |T135966:0|t[Premiers soins] |cRXP_WARN_de 80 pour une quête au niveau 24 << Rogue !Dwarf




----End of <1.59x Redridge Transition----




]])

----Start of <1.59x Redridge----
----2x and ALL Hunters stay in Darkshore/Ashen and grind----

RXPGuides.RegisterGuide([[
#xprate <1.59
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 19-20 Les Carmines
#next 20-21 Sombrivage/Orneval

step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_WARN_Achetez un|r |T133024:0|t[Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Billibub Cogspinner|r n'en a plus en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
    .dungeon DM
step << !NightElf
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
    .isOnQuest 1338
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .target Wilder Thistlenettle
    .dungeon DM
step << !NightElf
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Rendez la quête Débuts modestes
    .target Baros Alexston
    .isQuestComplete 399
--XX Westfall 1x only
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Allez à la Tour des Mages
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    #label PalTrainer
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Achetez un|r |T135139:0|t[Baguette ardente] |cRXP_WARN_si elle est meilleure que la votre|r
    >>|cRXP_WARN_Il est important d'acheter une baguette qui ne fait pas de dégâts d'ombre. Vous devrez affronter des mobs résistants aux dégâts d'ombre plus tard|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    >>|cRXP_WARN_Assurez-vous d'apprendre|r |T136058:0|t[Crochetage] |cRXP_WARN_comme vous en aurez besoin pour votre quête de classe Voleur bientôt|r
    .trainer >> Apprenez vos sorts de classe
    .train 1804 >> Apprenez [Crochetage]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez au Quartier général du SI:7. Montez les escaliers vers |cRXP_FRIENDLY_Renzik "le kriss"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "le kriss"|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage/Druid
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Rendez la quête Le Tome de divinité
    .target Stephanie Turner
    .accept 1644 >> Acceptez la quête Le Tome de divinité
    .turnin 1644 >> Rendez la quête Le Tome de divinité
    >>|cRXP_WARN_Vous aurez besoin de 10 |T132889:0|t[Etoffes de lin]|r
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez un|r |T135342:0|t[Kriss] |cRXP_BUY_ou une meilleure arme à l'Hôtel des ventes|r
    >>|cRXP_WARN_Equipez-le lorsque vous passez au niveau 19|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
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
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez l'|T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard, et le reste pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Dwarf Rogue
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Rogue/Dwarf Rogue
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134437:0|t[Anti-venin] << !Dwarf Rogue
    >>|T134172:0|t[Groin de grand Broche-tripes]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << !Human !Warlock
    #completewith start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto StormwindClassic,66.27,62.12
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Quittez Stormwind
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
    .zoneskip Westfall
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64,-1
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r ou à |cRXP_FRIENDLY_Dungar Grangodet|r
    .fly Redridge >> Volez vers Les Carmines
    .target Thor
    .target Dungar Longdrink
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
step << Gnome Warlock
#xprate >1.49
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Volez vers les Carmines
    .target Thor
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << NightElf Warrior/NightElf Priest
    #completewith next
    .goto Elwynn Forest,41.08,65.76,25 >> Voyagez vers Goldshire << Warrior
    .goto Elwynn Forest,43.17,65.70,15 >> Voyagez vers Goldshire << Priest
step << NightElf Warrior
    .goto Elwynn Forest,41.08,65.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria|r.
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << NightElf Priest
    >>Entrez dans l'auberge. Allez à l'étage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Josetta|r
    .goto Elwynn Forest,43.17,65.70,12,0
    .goto Elwynn Forest,43.80,66.47,8,0
    .goto Elwynn Forest,43.28,65.72
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Josetta
step << !Human !Warlock
    #xprate >1.49 << !NightElf
    .xp <20,1
    >>Dirigez-vous vers la Tour d'Azora
    .goto Elwynn Forest,65.20,69.80
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Acceptez la quête L'œil attentif
step << !NightElf
.dungeon !DM
    #xprate <1.5 << !Human
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >>Volez vers Les Carmines
    .target Dungar Longdrink
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    #completewith next
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step << NightElf
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .target Deputy Feldon
    .accept 246 >> Acceptez la quête L'appréciation du danger
step
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley le noir|r à l'étage
    .turnin 65 >> Rendez la quête La Confrérie défias
    .accept 132 >> Acceptez la quête La Confrérie défias
	.target Wiley the Black
step
.dungeon DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acceptez la quête Un message pour Hurlevent
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acceptez la quête Le prix des fers
step
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Rendez la quête La Confrérie défias
    .accept 135 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Rendez la quête La Confrérie défias
    .accept 141 >> Acceptez la quête La Confrérie défias
    .target Master Mathias Shaw
step
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Rendez la quête La Confrérie défias
    .accept 142 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Voyagez à Ruisselune
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tuez le |cRXP_ENEMY_Messager défias|r. Dépouiilez-le pour son |cRXP_LOOT_Un message mystérieux|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Messager défias|r apparaît à Ruisselune. Il marche le long de la route au nord de Ruisselune, jusqu'à la Carrière de la Côte de l'or et la Mine de Jangolode. Si vous ne le voyez pas le long de la route, attendez qu'il réapparaisse à Ruisselune|r
    >>|cRXP_WARN_Son délai de réapparition est de 4-5 minutes|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Traître défias|r
    >>|cRXP_WARN_Vous devrez peut-être attendre que le |cRXP_FRIENDLY_Traître défias|r apparaisse s'il n'est pas là|r
    .accept 155 >> Acceptez la quête La Confrérie défias
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escortez le |cRXP_FRIENDLY_Traître défias|r jusqu'aux Mortemines
    >>|cRXP_WARN_Restez avec le |cRXP_FRIENDLY_Traître défias|r en permanence ! Soyez prêts à combattre les |cRXP_ENEMY_Défias|r en arrivant à Ruisselune|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Rendez la quête La Confrérie défias
    .accept 166 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Riell|r au sommet de la Tour
    .accept 214 >> Acceptez la quête Les masques rouges en soie
    .goto Westfall,56.67,47.35
    .target Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> À présent, vous devriez commencer à chercher un groupe pour les Mortemines
    >>Tuez les Gnolls en formant un groupe pour les Mortemines
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Dirigez-vous vers les Mortemines
step
.dungeon DM
    #completewith EnterDM
    >>Tuez les |cRXP_ENEMY_Defias|r. Dépouillez-les pour leur |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_Vous pourrez terminer cela après votre entrée dans le Donjon|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tuez |cRXP_ENEMY_Foreman Thistlenettle|r. Dépouillez-le pour son |cRXP_LOOT_Badge|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entrez dans le donjon des Mortemines
step
.dungeon DM
    #completewith DMend
    >>Tuez les |cRXP_ENEMY_Défias|r à l'intérieur des Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Masques|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Tuez |cRXP_ENEMY_Sneed|r. Dépouillez-le pour son |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r et sa [|cRXP_LOOT_An Unsent Letter|r]
    >>|cRXP_WARN_Utilisez[|cRXP_LOOT_An Unsent Letter|r] pour commencer la quête|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acceptez la quête La lettre non envoyée
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Voyagez vers la Colline des Sentinelles
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et à l' |cRXP_FRIENDLY_Eclaireur Riell|r tout en haut de la tour
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin -214 >> Rendez la quête Les masques rouges en soie
    .target +Scout Riell
    .goto Westfall,56.67,47.35
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step
.dungeon DM
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Général Marcus Jonathan|r
    .turnin 120 >> Rendez la quête Un message pour Hurlevent
    .accept 121 >> Acceptez la quête Un message pour Hurlevent
    .target General Marcus Jonathan
step << Mage
.dungeon DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Allez à la Tour des Mages
step << Mage
.dungeon DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
	.xp <20,1
    .target Larimaine Purdue
step << Warlock
.dungeon DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
.dungeon DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
.dungeon DM
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
    .xp <20,1
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
.dungeon DM
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devriez vous préparer à passer en spécialisation|r |T132276:0|t[Farouche] |cRXP_WARN_au lieu d'utiliser les capacités de la spécialisation|r |T136096:0|t[Equilibre] |cRXP_WARN_une fois que vous aurez les runes pour|r |T132135:0|t[Mutilation] |cRXP_WARN_et|r |T236167:0|t[Rugissement sauvage]
step << Druid
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .goto StormwindClassic,20.89,55.50
    .trainer >> Apprenez vos sorts de classe
    .train 768 >> Apprenez |T132115:0|t[Forme de félin]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r. Il vous donnera le [|cRXP_LOOT_Tome of Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Rendez la quête Le Tome de la bravoure
    .accept 1650 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
.dungeon DM
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Rendez la quête La lettre non envoyée
    .accept 389 >> Acceptez la quête Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Crispechardon|r et à |cRXP_FRIENDLY_Shoni la Silencieuse|r
    .turnin 167 >> Rendez la quête Adieu mon frère…
    .turnin 168 >> Rendez la quête À la recherche de Cartes du Syndicat des Mineurs
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Rendez la quête Assaut souterrain
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Rogue
.dungeon DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
.dungeon DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_WARN_que vous équiperez au niveau 21|r
    >>|cRXP_WARN_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_WARN_que vous équiperez au niveau 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #optional
    #completewith next
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Achetez une|r |T135280:0|t[Faux dace] |cRXP_WARN_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    >>|cRXP_WARN_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Achetez une|r |T135280:0|t[Faux dace] |cRXP_WARN_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #optional
    #completewith next
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Rendez la quête Bazil Thredd
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez l'|T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard, et le reste pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Dwarf Rogue
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines très bientôt << !Rogue/Dwarf Rogue
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134437:0|t[Anti-venin] << !Dwarf Rogue
    >>|T134172:0|t[Groin de grand Broche-tripes]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
.dungeon DM
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Quittez Stormwind. Voyagez vers Goldshire
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Rendez la quête Le prix des fers
    .accept 119 >> Acceptez la quête Le retour chez Verner
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 118
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .accept 119 >> Acceptez la quête Le retour chez Verner
    .xp <20,1
step
.dungeon DM
    #completewith next
    .subzone 91 >> Voyagez à la tour d'Azora. Montez la tour
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r tout en haut
    .accept 94 >> Acceptez la quête L'œil attentif
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << Warrior/Rogue
    .target Aurore Brillétoile
    .subzoneskip 91,1
step
.dungeon DM
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Voyagez vers Les Carmines

step
.dungeon DM
    #xprate <1.5
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step
.dungeon DM
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acceptez la quête La menace des Rochenoires
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Acceptez la quête Les outils perdus
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acceptez la quête Le prix des fers
step
.dungeon DM
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Rendez la quête Le retour chez Verner
    .accept 124 >> Acceptez la quête Le hurlement des gnolls
step
.dungeon DM
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Rendez la quête Le retour chez Verner
    .accept 124 >> Acceptez la quête Le hurlement des gnolls
    .accept 122 >> Acceptez la quête Les écailles de dragonnet
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Général Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Rendez la quête Un message pour Hurlevent
    .accept 121 >> Acceptez la quête Un message pour Hurlevent
step
.dungeon !DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acceptez la quête Un message pour Hurlevent
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Acceptez la quête Criée aux poissons
step
#xprate <1.5
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .accept 129 >> Acceptez la quête Un repas gratuit
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley le noir|r à l'étage
	.target Wiley the Black
    .turnin 65 >> Rendez la quête La Confrérie défias
    .isOnQuest 65
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >> Acceptez la quête Un invité indésirable
step << Warlock
    .goto Redridge Mountains,15.68,49.30
    >>Tuez |cRXP_ENEMY_Bellygrub|r. Dépouillez-le pour sa |cRXP_LOOT_Tusk|r
    >>|cRXP_WARN_Amenez |cRXP_ENEMY_Fouailleventre|r à Comté-du-Lac afin que les |cRXP_FRIENDLY_Gardes|r vous aident à tuer|r |cRXP_ENEMY_Fouailleventre|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Vous pouvez passer cette étape et revenir plus tard|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .mob Bellygrub
step << Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Rendez la quête Un invité indésirable
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .accept 2282 >> Acceptez la quête La scierie d'Alther
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Acceptez la quête Le collier d'Hilary
step
    >>|cRXP_WARN_Sautez dans le lac|r
    >>Ouvrez la |cRXP_PICK_Boue luisante|r. Récupérez le |cRXP_LOOT_Collier d'Hilary|r
    >>|cRXP_WARN_Il apparaît à plusieurs endroits différents dans le lac|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step
    #softcore
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #xprate <1.5
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
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Rendez la quête Un repas gratuit
    .accept 130 >> Acceptez la quête Une visite chez l'herboriste
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .accept 246 >> Acceptez la quête L'appréciation du danger
step
    #xprate <1.5
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Tuez les |cRXP_ENEMY_Tarentules|r. Dépouillez-les pour leur |cRXP_LOOT_Chair croustillante d'araignée|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #xprate <1.5
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Tuez les |cRXP_ENEMY_Bâtards des Carmines|r et les |cRXP_ENEMY_Braconniers des Carmines|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    .goto Redridge Mountains,49.0,70.0
    >>Tuez les |cRXP_ENEMY_Guerriers des rivages murloc|r et les |cRXP_ENEMY_Maîtres des flots murloc mineur|r. Dépouillez-les pour leurs |cRXP_LOOT_Ailerons|r et leur |cRXP_LOOT_Poisson-lune|r
	>>|cRXP_WARN_Sachez que cette zone est un hyperspawn, ce qui signifie que les |cRXP_ENEMY_Murlocs|r réapparaissent rapidement|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>|cRXP_WARN_Passez cette étape si vous ne voyez aucun|r |cRXP_ENEMY_Condor redoutable|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>Tuez les |cRXP_ENEMY_Blackrock Grunts|r et les |cRXP_ENEMY_Blackrock Outrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Sachez que les |cRXP_ENEMY_Estafettes Rochenoires|r vont lancer un |T132149:0|t[Filet]|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Sautez dans le lac|r
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
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
	.goto Redridge Mountains,52.05,44.69
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto Redridge Mountains,33.50,48.97,150 >> Voyagez vers Comté-du-Lac
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maréchal Marris|r.
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Rendez la quête La menace des Rochenoires
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Rendez la quête Les outils perdus
    .accept 89 >> Acceptez la quête Le pont sur le lac
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Rendez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
    .turnin 150 >> Rendez la quête Les braconniers murlocs
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Rendez la quête Criée aux poissons
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Rendez la quête Une visite chez l'herboriste
    .accept 131 >> Acceptez la quête Bouquet de jonquilles
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Rendez la quête Bouquet de jonquilles
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Rendez la quête La scierie d'Alther
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Détruisez le |T134328:0|t[Certificat des voleurs]. Vous n'en avez pas besoin
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Rendez la quête L'appréciation du danger
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20 >> Tuez des mobs en boucle jusqu'à arriver au niveau 20
step << Rogue
.dungeon DM
    #softcore
    .isOnQuest 2360
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines << !Human
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
step
.dungeon !DM << Rogue
    #completewith InRR
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines << !Human !Warlock
    .fly Stormwind >> Volez à Stormwind
step << Rogue
.dungeon !DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_WARN_que vous équiperez au niveau 21|r
    >>|cRXP_WARN_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Achetez une|r |T135324:0|t[Epée longue] |cRXP_WARN_que vous équiperez au niveau 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #optional
    #completewith next
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon !DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Achetez une|r |T135280:0|t[Faux dace] |cRXP_WARN_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    >>|cRXP_WARN_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Achetez une|r |T135280:0|t[Faux dace] |cRXP_WARN_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #optional
    #completewith next
    +Équipez le [Faux dace]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
.dungeon !DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
.dungeon !DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
step << Mage
.dungeon !DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Allez à la Tour des Mages
step << Mage
.dungeon !DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Mage
.dungeon !DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
    .dungeon !DM
step << Druid
.dungeon !DM
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devriez vous préparer à passer en spécialisation|r |T132276:0|t[Farouche] |cRXP_WARN_au lieu d'utiliser les capacités de la spécialisation|r |T136096:0|t[Equilibre] |cRXP_WARN_une fois que vous aurez les runes pour|r |T132135:0|t[Mutilation] |cRXP_WARN_et|r |T236167:0|t[Rugissement sauvage]
step << Druid
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .goto StormwindClassic,20.89,55.50
    .trainer >> Apprenez vos sorts de classe
    .train 768 >> Apprenez |T132115:0|t[Forme de félin]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon !DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r. Il vous donnera le [|cRXP_LOOT_Tome of Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Rendez la quête Le Tome de la bravoure
    .accept 1650 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step << Rogue
.dungeon !DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Rogue
.dungeon !DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
    >>Envolez-vous là-bas si vous avez déjà le chemin de vol pour la Marche de l'Ouest
    .isOnQuest 2360
step << NightElf Rogue
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Prenez le chemin de vol de la Marche de l'Ouest
    .target Thor
    .isOnQuest 2360
step << !NightElf Rogue
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
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
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ le faire pour votre de quête de [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
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
    .goto Westfall,56.55,52.64
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
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>Rappelez-vous de re-équiper votre arme principale si vous avez équipé une [Dague] plus tôt << Rogue
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Général Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Rendez la quête Un message pour Hurlevent
    .accept 121 >> Acceptez la quête Un message pour Hurlevent
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >> Voyagez vers Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Rendez la quête Le prix des fers
    .accept 119 >> Acceptez la quête Le retour chez Verner
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Voyagez à la tour d'Azora. Montez la tour
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r tout en haut
    .accept 94 >> Acceptez la quête L'œil attentif
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>Voyagez jusqu'aux Carmines
    .fly Redridge >> Volez vers les Carmines
    >>|cRXP_WARN_Si vous êtes à Comté-de-l'Or, ce sera plus rapide de voler depuis Hurlevent|r
	>>|cRXP_WARN_Si vous êtes à la Tour d'Azora, courez simplement vers les Carmines|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Rendez la quête Le retour chez Verner
    .accept 124 >> Acceptez la quête Le hurlement des gnolls
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Acceptez la quête Les écailles de dragonnet
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Rendez la quête Un message pour Hurlevent
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chef des docks Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Rendez la quête Criée aux poissons
    .accept 150 >> Acceptez la quête Les braconniers murlocs
    .turnin 150 >> Rendez la quête Les braconniers murlocs
step
#optional
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Rendez la quête Une visite chez l'herboriste
    .accept 131 >> Acceptez la quête Bouquet de jonquilles
step
    #xprate <1.2
	#completewith next
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #xprate <1.5
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>|cRXP_WARN_Gardez tous les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous récupérez comme vous pourrez les utiliser pour monter votre niveau de compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à 50 ce qui sera requis pour le Bois de la Pénombre plus tard|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acceptez la quête Goulash des Carmines
    .turnin 92 >> Rendez la quête Goulash des Carmines
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
    #xprate <1.2
	#completewith next
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
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
    #xprate <1.2
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Rendez la quête Bouquet de jonquilles
step
    #xprate <1.2
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Montez votre niveau de Cuisine|r |T133971:0|t[Cuisine] |cRXP_WARN_en utilisant les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous avez récupéré auparavant. Vous avez besoin d'un niveau de compétence de 50 en|r |T133971:0|t[Cuisine]
    +|cRXP_WARN_Si vous avez besoin de plus de|r |T133970:0|t|cRXP_LOOT_[Morceau xde viande de sanglier]|r |cRXP_WARN_allez à l'ouest près de|r |cRXP_ENEMY_Fouailleventre|r |cRXP_WARN_et tuez plus de|r |cRXP_ENEMY_Grands Broche-tripes|r
    .skill cooking,50,1
    .mob Great Goretusk
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Rendez la quête Le hurlement des gnolls
    .turnin 122 >> Rendez la quête Les écailles de dragonnet
step
    #xprate >1.0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Rendez la quête Le hurlement des gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Rendez la quête Le pont sur le lac
]])

----End of <1.59x Redridge----
----Start of Hunter-only Darkshore/Ashen (Needs to be merged)----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
#season 0
<< Alliance Hunter
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 19-21 Sombrivage/Orneval
#next RestedXP Alliance 20-30\21-23 Orneval/Serres-Rocheuses

step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon DM
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    #xprate >1.49
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
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #xprate >1.49
    #label SeaCreatureEnd
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
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
    >>|cRXP_WARN_Il s'agit d'une quête chronométrée, vous devez l'escorter jusqu'à Orneval en 20 minutes|r
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
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
    .goto Darkshore,35.72,83.69
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
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #xprate <1.5
    #optional
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    #xprate <1.5
    #optional
    .goto 1439,31.229,85.564
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
	#xprate <1.5
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isOnQuest 1003
step
    #xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Nettoyez la zone des furbolgs près de la grotte avant de lui parler|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 994 >> Acceptez la quête Évasion par la force
    .target Volcor
    .isOnQuest 993
step
    #xprate <1.5
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Nettoyez la zone des furbolgs près de la grotte avant de lui parler|r
    .accept 994 >> Acceptez la quête Évasion par la force
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate >1.59
    #optional
    #completewith Escaped
    .goto Darkshore,39.2,43.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Selarin|r si elle est présente
    .accept 990 >> Acceptez la quête Voyage vers Orneval
    .target Sentinel Selarin
step
	#xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .target Volcor
    .isOnQuest 993
step
	#xprate >1.49
    #optional
    #label Escaped
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate <1.5
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
	#xprate >1.49
    .goto Darkshore,44.44,84.69
    >>Attendez le temps du RP
    .complete 995,1 --Help Volcor escape the cave (1)
    .isQuestTurnedIn 993
step
    #xprate >1.49
    #optional
    #completewith tower
    .equip 15 >>|cRXP_WARN_Réequipez votre|r |T133762:0|t[Cape] précédente
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
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
    >>|cRXP_WARN_Il s'agit d'une quête chronométrée, vous devez l'escorter jusqu'à Orneval en 20 minutes|r
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Ouvrez le |cRXP_PICK_Kerlonian's Chest|r. Récupérez y l'[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,29.7,13.6
step
    #sticky
    #completewith Kerlonian
    >>Tuez et dépouillez les |cRXP_WARN_Coureurs Patte-fantôme|r que vous croisez en quêtant. Gardez tous les |T133970:0|t[|cRXP_LOOT_Steaks de loup|r] que vous obtenez. Vous en aurez besoin de 10 pour une quête de cuisine plus tard
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label Kerlonian
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Kerlonian|r jusqu'au poste de Maestra à Orneval|r
    .use 13536 >> |cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_dès que |cRXP_FRIENDLY_Kerlonian|r s'endort|r
    >>|cRXP_WARN_Évitez de rester sur la route principale autant que possible. Les ennemis n'apparaîtront que si vous restez sur la route|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Rendez la quête Le dormeur s'est éveillé
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> Acceptez la quête La Tour d'Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Tuez les |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Adepts|r et les |cRXP_ENEMY_Dark Strand Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Soul Gem|r
    >>Soyez patient, cet objet a peu de chance de tomber
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-les |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-les |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons. Ils peuvent être difficiles à distinguer
    .complete 1010,1
    .isOnQuest 1010
step
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Continuez à tuer les |cRXP_ENEMY_mobs de la Rive noire|r jusqu'à avoir assez d'expérience pour atteindre le niveau 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Montez jusqu'au niveau 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-les |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-les |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons. Ils peuvent être difficiles à distinguer
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto Ashenvale,26.19,38.69
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
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Rendez la quête L'évasion de Therylune
    .isQuestComplete 945
step << Hunter
    #xprate <1.59
    .goto 1440/1,522.900,2716.100,30 >> Prenez la rampe vers le nord-ouest
step
    #xprate <1.59
    #completewith Astranaar
    >>Gardez jusqu'à 6 |cRXP_LOOT_Pattes d'araignées fondantes|r dépouillées sur les |cRXP_ENEMY_Araignées|r dans la zone pour plus tard
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #xprate <1.59
    #sticky
    .goto Ashenvale,17.976,60.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Apprenez les compétences de votre familier
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    #xprate <1.59
    .goto Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Apprenez vos sorts de classe
    .train 5118 >> Apprenez |T132242:0|t[Aspect du guépard]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Prenez le chemin de vol d'Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Acceptez la quête La grève de Zoram
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Acceptez la quête De garde dans les Serres-Rocheuses
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Acceptez la quête Voyage au pic des Serres-Rocheuses
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .accept 1054 >> Acceptez la quête Diminution de la menace
step
    #label HCHunterNoHS --hidden step for #include
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    #xprate <1.59
    .goto Ashenvale,36.6,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Achetez de la nourriture et de l'eau si nécessaire|r
    .target Maliynn
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
step << Hunter
    #xprate <1.59
    .goto Ashenvale,34.8,50.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Haljan Oakheart|r
    .vendor >> |cRXP_BUY_Refaites un stock de munitions si nécessaire|r
    .target Haljan Oakheart
step
    #xprate <1.59
    #completewith ElunesTear
    >>Gardez jusqu'à 6 |cRXP_LOOT_Pattes d'araignées fondantes|r dépouillées sur les |cRXP_ENEMY_Araignées|r dans la zone. Vous en aurez besoin pour une quête à venir
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #xprate <1.59
    .goto Ashenvale,46.37,46.38
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
step
    #xprate <1.59
    #label ElunesTear
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Rendez la quête Larme d'Elune
    .timer 17,Larme d'Elune RP
    .accept 1034 >> Acceptez la quête Les ruines de Chimétoile
step
    #xprate <1.59
    .goto Ashenvale,33.30,67.79
    >>Ramassez le |cRXP_PICK_Stardust Covered Bushes|r pour le |cRXP_LOOT_Handful of Stardust|r
    >>Ils apparaissent un peu partout tout le long de l'île
    .complete 1034,1
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Dirigez-vous vers la base de la montagne
    .goto Ashenvale,31.21,61.60,15 >>Visez tout droit au nord en montant la montagne
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >> Escaladez la colline à côté du grand arbre, à droite de l'entrée du Sanctuaire de Scarfeu
    >>Sautez sur la racine de l'arbre et restez à droite pour éviter d'aggro les mobs
step
    #xprate <1.5
    .goto Ashenvale,25.27,60.68
    >>Tuez|cRXP_ENEMY_Ilkrud Magthrull|r. Dépouillez-le pour son |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r lancera [Gardiens d'Ilkrud] |cRXP_WARN_avec un long temps d'incantation de 5 secondes qui invoquera 2 |rVoidwalkers|cRXP_WARN_. Interrompez-le si possible.|r
    >>|cRXP_WARN_Libérez-vous un chemin si nécessaire afin que vous puissiez les reset avec les |cRXP_ENEMY_Succubes|r si nécessaire. Vous pouvez passer cette étape et la faire au niveau 23 si vous le souhaitez|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Cliquez ici pour un exemple vidéo|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    #xprate <1.5
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Rendez la quête La Tour d'Althalaxx
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate <1.59
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acceptez la quête L'ancienne statuette
step
    #xprate <1.59
    #completewith nagas
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    >>Ne sortez pas de votre route pour terminer cette quête
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    #xprate <1.59
    .goto Ashenvale,14.20,20.64
    >>Ramassez les |cRXP_LOOT_Ancient Statuette|r sur le sol
    .complete 1007,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Rendez la quête L'ancienne statuette
    .timer 22,L'ancienne Statuette RP
    .accept 1009 >> Acceptez la quête Ruuzel
step
    #xprate <1.59
    .goto Ashenvale,6.528,13.361
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
    #xprate <1.59
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    #xprate <1.59
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Rendez la quête Ruuzel
step
    #xprate <1.59
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teronis' Corpse|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Rendez la quête Le nettoyage selon Raene
    .accept 1023 >> Acceptez la quête Le nettoyage selon Raene
step
    #sticky
    #completewith GlowingGem
    >>Gardez tous vos |T134304:0|t[Ailerons de murloc]. Vous en aurez besoin de 8 pour une quête à venir
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    #xprate <1.59
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Tuez les|cRXP_ENEMY_Saltspittle Murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Soyez vigilant car les |cRXP_ENEMY_Oracles|r peuvent se soigner, et ont un horion instantané qui fait 90 dégâts avec un temps de récupération de quelques secondes|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter
    #xprate <1.59
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step << !Dwarf/!Hunter
    #xprate <1.59
    #softcore
    #completewith next
    .deathskip >> Mourez sur le côté est du lac et ressuscitez ensuite à Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >> Voyagez jusqu'à Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Volez à Sombrivage
    .target Daelyshia
step
    #xprate <1.59
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    #xprate <1.59
    #completewith end
    .vendor >> Marchand/Réapprovisionnement
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Rendez la quête Évasion par la ruse
    .target Terenthis
    .isOnQuest 995
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Rendez la quête Évasion par la force
    .target Terenthis
    .isOnQuest 994
step
    #xprate <1.59
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Rendez la quête La créature marine échouée
    .turnin 4731 >> Rendez la quête La tortue de mer échouée
    .turnin 4732 >> Rendez la quête La tortue de mer échouée
    .turnin 4733 >> Rendez la quête La créature marine échouée
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
step
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .xp <22,1
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garryeth|r
    .goto Darnassus,40.0,42.2
    .bankdeposit 5996,1468,2251,1015 >> Déposez les objets suivants dans votre banque:
    .target Garryeth
    >>|T134797:0|t[Elixir de Respiration aquatique] --5996
    >>|T134304:0|t[Ailerons de murloc] --1468
    >>|T134321:0|t[Pattes d'araignée fondantes] --2251
    >>|T133970:0|t[Steaks de loup] --1015
step << Dwarf Hunter
    #xprate <1.59
-- #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
    .dungeon DM
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .isOnQuest 741
step
    #optional
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
    .isQuestTurnedIn 741
step << !Dwarf/!Hunter
    #xprate <1.59
    #label end
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter
    #xprate <1.59
    #label end
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Volez à Orneval
    .target Vesprystus
    .zoneskip Ashenvale
]])


----End of Hunter-only Darkshore/Ashen (Needs to be merged)----


RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0
#version 1
<< Alliance !Hunter
#season 0
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 20-21 Sombrivage/Orneval
#next RestedXP Alliance 20-30\21-23 Serres-Rocheuses/Orneval; RestedXP Alliance 20-30\21-22 Orneval SoD


step << Druid
    #xprate <1.59
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    #xprate <1.59
    .goto Moonglade,52.53,40.57
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
    #xprate <1.59
    #optional
    #completewith TheryluneE
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step
    .goto Darkshore,37.21,44.22
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    #xprate <1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
    .isOnQuest 3765
--  .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
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
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Voyagez jusqu'au Bosquet des Anciens
step
    #xprate >1.49
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Rendez la quête Les Reliques de Mathystra
    .target Onu
    .isQuestComplete 951
step
    #xprate >1.49
    #label OnuGrove
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
    .target Onu
    .isOnQuest 948
step
    #xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .timer 20,RP de Évasion par la ruse
    .target Volcor
    .isOnQuest 993
step
    #xprate >1.49
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .timer 20,RP de Évasion par la ruse
    .target Volcor
    .isQuestTurnedIn 993
step
    #xprate >1.49
    .goto Darkshore,44.44,84.69
    >>Attendez le temps du RP
    .complete 995,1 --Help Volcor escape the cave (1)
    .isOnQuest 995
step
    #xprate >1.49
    #optional
    #completewith Murkdeep
    .equip 15 >>|cRXP_WARN_Réequipez votre|r |T133762:0|t[Cape] précédente
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    #xprate <1.5
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Rendez le Bosquet des Anciens << NightElf
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    #xprate <1.5
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >> Voyagez jusqu'à le Glaive du Maître
    .subzoneskip 449
    .isOnQuest 944
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
    #xprate <1.5
    #optional
    .goto Darkshore,38.54,86.05
    >>Découvrez le Glaive du Maître
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #xprate <1.5
    #completewith next
    .cast 5809 >> Utilisez la [Fiole de divination] et placez-la sur le sol
    .use 5251
step
    #xprate <1.5
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Cliquez sur |cRXP_PICK_Scrying Bowl|r sur le sol|r
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    #xprate <1.5
    .goto 1439,38.537,86.050
    >>Cliquez sur |cRXP_PICK_Twilight Tome|r sur le piédestal le plus au nord
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
    .accept 950 >> Acceptez la quête La page qui rend fou
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
    >>Passez cette étape si elle n'est pas présente
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith prospectorEscort
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
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
    .goto Darkshore,35.72,83.69
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
    #xprate <1.5
    #optional
    #completewith Murkdeep
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r. Dépouillez-les pour obtenir leur |cRXP_LOOT_Belles chairs de crabe|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    #xprate >1.49
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
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    .goto 1439,31.251,87.419
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    #xprate <1.5
    .goto 1439,31.229,85.564
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    #xprate <1.5
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
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
    #xprate <1.5
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
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto Darkshore,41.389,80.565
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isOnQuest 1003
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Rendez la quête Les Reliques de Mathystra
    .target Onu
    .isQuestComplete 951
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
    .target Onu
step
    #xprate <1.5
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
    >>|cRXP_WARN_Il s'agit d'une quête chronométrée, vous devez l'escorter jusqu'à Orneval en 20 minutes|r
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
    .target Kerlonian Evershade
step
    #xprate <1.5
    .goto Darkshore,44.38,76.30
    >>Ouvrez le |cRXP_PICK_Kerlonian's Chest|r. Récupérez y l'[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
#xprate <1.5
    #completewith volcorEnd
    .goto Ashenvale,27.26,35.58
    +|cRXP_FRIENDLY_Kerlonian|r vous suivra et vous aidera occasionnellement en combat. |cRXP_WARN_Assurez-vous de ne pas le perdre car il arrêtera de bouger lorsqu'il s'endormira. Vous avez 25 minutes pour atteindre Orneval et compléter cette quête|r
    .use 13536 >> |cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_en vous tenant à côté de lui à chaque fois que |cRXP_FRIENDLY_Kerlonian|r s'endort pour le réveiller|r
    >>|cRXP_WARN_Évitez de rester sur la route principale autant que possible. Les ennemis n'apparaîtront que si vous restez sur la route|r
    .isOnQuest 5321
step
#xprate <1.5
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Parlez à |cRXP_FRIENDLY_Volcor|r dans la Grotte
    .isOnQuest 993
step
#xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .timer 20,RP de Évasion par la ruse
    .target Volcor
step
#xprate <1.5
    #label volcorEnd
    .goto Darkshore,44.44,84.69
    >>Attendez le temps du RP
    .complete 995,1
    .isOnQuest 995
step -- adjusted to heading there straight from southern most beached sea creature
#xprate >1.49
    #completewith tower
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,25.77,14.55
step
#xprate <1.50
    #completewith tower
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,29.7,13.6
step
#xprate <1.5
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Kerlonian|r jusqu'au poste de Maestra à Orneval|r
    .use 13536 >> |cRXP_WARN_Utilisez la|r |T134229:0|t[|cRXP_LOOT_Corne de l'éveil|r] |cRXP_WARN_dès que |cRXP_FRIENDLY_Kerlonian|r s'endort|r
    >>|cRXP_WARN_Évitez de rester sur la route principale autant que possible. Les ennemis n'apparaîtront que si vous restez sur la route|r
    .complete 5321,2
    .isOnQuest 5321
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Rendez la quête Le dormeur s'est éveillé
    .isQuestComplete 5321
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Parlez à |cRXP_FRIENDLY_Delgren the Purificateur|r
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .turnin 78088 >> Rendez la quête Un artéfact étrange
    .accept 78089 >> Acceptez la quête Les conseils de Hurlevent
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step << Paladin
    #season 2
    #label tower
    #optional
    .goto Ashenvale,26.19,38.69
    >>Parlez à |cRXP_FRIENDLY_Delgren the Purificateur|r
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .accept 78089 >> Acceptez la quête Les conseils de Hurlevent
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step << !Warlock
    #season 0,1 << Paladin
	#xprate >1.49
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    #season 0,1 << Paladin
	#xprate <1.5 << !Warlock
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    .accept 970 >> Acceptez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    #xprate <1.59
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Tuez les |cRXP_ENEMY_Sectateurs de la Rive noire|r et les |cRXP_ENEMY_Adeptes de la Rive noire|r. Dépouillez-les pour la |cRXP_LOOT_Gemme d'âme luminescente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Continuez à tuer les |cRXP_ENEMY_mobs de la Rive noire|r jusqu'à avoir assez d'expérience pour atteindre le niveau 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    >>|cRXP_WARN_Assurez-vous d'avoir la|r |T134916:0|t[Découverte d'herbes] |cRXP_WARN_activée pour les voir sur votre minicarte|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    #xprate <1.59
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
step
    #xprate <1.59
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Montez jusqu'au niveau 20
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
    .target Orendil Broadleaf
step
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    >>|cRXP_WARN_Assurez-vous d'avoir la|r |T134916:0|t[Découverte d'herbes] |cRXP_WARN_activée pour les voir sur votre minicarte|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
step
    #xprate >1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Rendez la quête L'évasion de Therylune
    .isQuestComplete 945
step
    #optional
    #completewith TZS
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Prenez le chemin de vol d'Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Acceptez la quête La grève de Zoram
    .target Shindrell Swiftfire
step
    #xprate <1.59
    .goto Ashenvale,34.89,49.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >> Acceptez la quête De garde dans les Serres-Rocheuses
    .target Sentinel Thenysil
step
    #xprate <1.59
    .goto Ashenvale,35.76,49.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Acceptez la quête Voyage au pic des Serres-Rocheuses
    .target Faldreas Goeth'Shael
step
    #xprate <1.59
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .accept 1054 >> Acceptez la quête Diminution de la menace
    .target Raene Wolfrunner
step << !Warlock
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home 415 >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
]])
