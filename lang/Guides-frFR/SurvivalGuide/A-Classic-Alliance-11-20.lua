if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 13-15 Marche de l’Ouest
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor Human/Gnome/Dwarf/NightElf
#next 15-18 Sombrivage

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
step
    .goto Westfall,59.92,19.42
    .target Verna Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
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
step
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
    #era
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
	>>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .vendor >>Les |T133918:0|t[Lutjans à longue mâchoire] |cRXP_WARN_sont très peu coûteux|r
	.target Innkeeper Heather
step
	#completewith bennytime
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
    >>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
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
    >>Tuez les |cRXP_ENEMY_Trappeurs défias|r et les |cRXP_ENEMY_Contrebandiers défias|r. Dépouillez-les pour leur |cRXP_LOOT_Masques en cuir rouge|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Ouvrez la |cRXP_PICK_Penderie de Froncebouille|r. Récupérez la |cRXP_LOOT_Montre de Froncebouille|r
    >>|cRXP_WARN_Vous pouvez intéragir avec la |cRXP_PICK_Penderie de Froncebouille|r depuis l'extérieur si vous orientez votre caméra correctement|r
	>>|cRXP_WARN_Faites attention à |cRXP_ENEMY_Benny Blanco|r. Il frappe fort|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#completewith next
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
	>>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>Tuez les |cRXP_ENEMY_Gnolls Rivepattes|r et les |cRXP_ENEMY_Eclaireurs Rivepattes|r. Dépouillez-les pour leurs |cRXP_LOOT_Pattes de gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >>Tuez les |cRXP_ENEMY_Ecumeurs murlocs|r et les |cRXP_ENEMY_Cours-la-côtes murlocs|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Ouvrez les |cRXP_PICK_Sacs d'avoine|r sur le sol. Ouvrez-les pour les |cRXP_LOOT_Poignées d'avoine|r
	>>|cRXP_WARN_Vous pouvez généralement les trouver le long des clôtures de la ferme ou des bâtiments|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Rendez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Rendez la quête Pauvre Vieille Blanchette !
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .vendor
    >>|cRXP_WARN_Ne vendez PAS les |T133884:0|t[Yeux de murloc], les |T135997:0|t[Groins de broche-tripes], les |T134341:0|t[Foies de broche-tripes] ou la |T133972:0|t[Viande filandreuse de vautour]|r
	.target Farmer Saldean
step
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
    >>Tuez les |cRXP_ENEMY_Gardiens des moissons|r. Dépouillez-les pour leur |cRXP_LOOT_Flasques d'huile|r et leur |cRXP_LOOT_Okras|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Rendez la quête La milice du peuple
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Acceptez la quête La Confrérie défias
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Rendez la quête Patrouilles dans la marche de l'Ouest
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Rendez la quête Les masques en cuir rouge
step << Druid
    .goto Westfall,32.6,22.6,30,0
    .goto Westfall,38.8,18.2,30,0
    .goto Westfall,41.0,12.0,30,0
    .goto Westfall,47.6,9.0,30,0
    .goto Westfall,51.8,9.4,30,0
    .goto Westfall,32.6,22.6
    .goto Westfall,38.8,18.2,0
    .goto Westfall,41.0,12.0,0
    .goto Westfall,47.6,9.0,0
    .goto Westfall,51.8,9.4,0
    .xp 16 >> Tuez des crabes en boucle dans la Marche de l'Ouest jusqu'au niveau 16
step << Dwarf !Paladin/Gnome
    #label end
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
step << Dwarf !Paladin/Gnome
    #hardcore
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
step << !NightElf
    .goto Ironforge,55.093,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nissa Nissa Pierre-de-feu|r
    >>Montez votre niveau de |T135966:0|t[Premiers soins]
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Nissa Firestone
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Apprenez la compétence Armes de jet
    .target Bixi Wobblebonk
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
step
    .goto Ironforge,39.553,57.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Rendez la quête Les rapports
    .target Senator Barin Redstone
    .isOnQuest 291
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Achetez les objets suivant pour bientôt rendre une quête à venir instantanément. Passez cette étape si vous ne désirez pas les acheter
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step << !NightElf
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Quittez Ironforge
step << !NightElf
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
step << !NightElf
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
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
step << !NightElf
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step << !NightElf
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Samor Festivus|r à l'étage
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Samor Festivus|r n'en a plus en stock|r
    .target Samor Festivus
step << !NightElf
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step << Hunter !NightElf
	.goto Wetlands,11.334,59.554
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Murndan Derth|r
    >>|cRXP_WARN_Achetez un|r |T135612:0|t[Tromblon de gros calibre]
    >>Passez cette étape si vous ne pouvez pas vous le permettre
	.collect 3023,1 -- Large Bore Blunderbuss
    .target Murndan Derth
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Allez sur les quais du Port de Menethil. Attendez le bateau pour Sombrivage
step << !NightElf
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    >>|cRXP_WARN_Montez votre niveau en|r |T135966:0|t[Premiers soins] |cRXP_WARN_et |r |T133971:0|t[Cuisine] |cRXP_WARN_en attendant le bateau pour Sombrivage|r
    >>|cRXP_WARN_Montez votre niveau de|r |T133971:0|t[Cuisine] |cRXP_WARN_en utilisant les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous avez collecté plus tôt. Montez-le au niveau 10 idéalement|r
step << NightElf !Druid
    .goto Westfall,56.556,52.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Prenez le chemin de vol de la Marche de l'Ouest
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >> Volez jusqu'au village de Rut'theran
    .target Silva Fil'naveth
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6121 >> Acceptez la quête Nouvelles leçons
    .accept 26 >> Acceptez la quête Une leçon à apprendre
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 6121 >> Nouvelles leçons
    .accept 6122 >> Acceptez la quête Le principe originel
    .turnin 26 >> Rendez la quête Une leçon à apprendre
    .accept 29 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>Nagez au lac Élune’ara
    >>Ouvrez le |cRXP_PICK_Conteneur de babioles|r. Récupérez le |T134125:0|t[Colifichet du sanctuaire]
    >>|cRXP_WARN_Il peut apparaître à différents endroits sous l'eau|r.
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #completewith next
    .cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>|cRXP_WARN_Cela sera plus rapide de cette façon, vous n'aurez pas besoin de nager longtemps|r
step << Druid
    .goto Moonglade,36.026,41.374
    .use 15877 >>Utilisez le [Colifichet du sanctuaire] à l'arbre de l'Autel de Remulos
    .complete 29,1 --Complete the Trial of the Lake.
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Rendez la quête L'épreuve du lac
    .target Tajarri
    .accept 272 >> Acceptez la quête L'épreuve du lion de mer
step << NightElf Priest
    .goto StormwindClassic,38.550,26.853
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step << NightElf Warrior
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >> |cRXP_BUY_Achetez un|r |T133046:0|[Marteau en pierre] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Gunther Weller
step << NightElf Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >> |cRXP_BUY_Achetez un|r |T133052:0|[Marteau] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Gunther Weller
step << NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.130,57.704
    .train 201 >> Achetez la compétence pour porter des épées à une main
step << NightElf Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé]
    >>|cRXP_BUY_Faites un stock de|r |T132382:0|t[Flèches aiguisées]
    .collect 3026,1
    .target Frederick Stover
step << NightElf
    .goto StormwindClassic,43.065,26.156
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Montez votre niveau de |T135966:0|t[Premiers soins]
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Shaina Fuller
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << NightElf Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << NightElf
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 15-18 Sombrivage
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
--#defaultfor !NightElf
#next 18-19 Loch Modan

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >> Accepte Washed Ashore
step << !NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
	.target Caylais Moonfeather
    .goto Darkshore,36.336,45.574
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
step << !NightElf
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Montez les escaliers pour y trouver |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r.
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Acceptez Plagued Lands
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Ouvrez |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Découvrez le camp Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur l'un des|r |cRXP_ENEMY_Ours des chardons enragé|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .accept 1001 >> Acceptez la quête Bigobox 411
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >> Rendez Washed Ashore
    .accept 4681 >> Accepte Washed Ashore
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Allez au bout du quai, puis sautez dans l'eau
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Tuez les |cRXP_ENEMY_Darkshore Threshers|r. Dépouillez-les pour leur |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Ouvrez le |cRXP_PICK_Squelette de tortue de mer|r. Dépouillez-la pour ses |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> Acceptez la quête La caverne aux champignons
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >> Accept Les Red Crystal
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >> Acceptez la quête Océan profond, mer immense
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .accept 958 >> Acceptez la quête Les outils des Bien-nés
    .accept 954 >> Acceptez la quête Bashal'Aran
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Tuez les |cRXP_ENEMY_Darkshore Threshers|r. Dépouillez-les pour leur |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Nagez jusqu'à l'épave du bateau de l’Aube argentée
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>Entrez dans le navire échouée de l'Aube argentée à travers la coque brisée. Faites en sorte d'avoir une barre de souffle pleine avant de plonger et d'y entrer
    >>Ramassez la |cRXP_LOOT_Silver Dawning's Lockbox|r sur le sol
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Nagez vers l'épave du bateau de la Voile de brume
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>Entrez dans le navire échouée de la Voile de brume à travers la coque brisée. Faites en sorte d'avoir une barre de souffle pleine avant de plonger et d'y entrer
    >>Ramassez la |cRXP_LOOT_Mist Veil's Lockbox|r sur le sol
    .complete 982,2
step
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >>Tuez les |cRXP_ENEMY_Darkshore Threshers|r. Dépouillez-les pour leur |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >>Cliquez sur le |cRXP_PICK_Buzzbox 411|r sur le sol
    .turnin 1001 >> Rendez la quête Bigobox 411
    .accept 1002 >> Acceptez la quête Bigobox 323
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4723 >> Acceptez la quête La créature marine échouée
step << Druid
    #completewith cure1
    >>Collectez 5 |T134187:0|t[Terrestrines] pendant vos quêtes
    .collect 2449,5,6123,1
step
    #completewith Ameth
    >>Tuez des |cRXP_ENEMY_Trotteur des forêts|r et des |cRXP_ENEMY_Jeune trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >>Tuez les |cRXP_ENEMY_Moonstalker|r et les |cRXP_ENEMY_Moonstalker Runts|r. Dépouillez-les pour leur |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>Utilisez le [Tube de prélèvement vide] à la source de la Bondissante
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> Voyagez vers Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Grell sauvage|r et des |cRXP_ENEMY_Fée vile|r sur la route|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Tuez les |cRXP_ENEMY_Grell sauvage|r et les |cRXP_ENEMY_Fée vile|r. Dépouillez-les pour leur |cRXP_LOOT_Boucle d'oreille de Grell|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
step << !NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Tuez les |cRXP_ENEMY_Séléniens|r. Dépouillez-les pour leur |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    >>|cRXP_WARN_Vous monterez votre|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à un niveau de compétence de 10 plus tard en utilisant les|r |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    >>Dirigez-vous vers le |cRXP_PICK_Cristal rouge|r
    .complete 4811,1
step << NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Dirigez-vous vers le |cRXP_PICK_Cristal rouge|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Tuez les |cRXP_ENEMY_Séléniens|r. Dépouillez-les pour leur |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    .collect 6889,10,2178,1,0x20,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >> Voyagez au sud vers |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r à Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
step
    #completewith TheLay
    >>Tuez |cRXP_ENEMY_Anaya Dawnrunner|r. Dépouillez-la pour son |cRXP_LOOT_Pendentif|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r patrouille dans Ameth'Aran
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Tuez les|cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r et les |cRXP_ENEMY_Wailing Highbornes|r. Dépouillez-les pour leur |cRXP_LOOT_Relique|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Cliquez sur |cRXP_PICK_La chute d'Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Anaya Dawnrunner|r. Dépouillez-la pour son |cRXP_LOOT_Pendentif|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r patrouille dans Ameth'Aran
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tuez les|cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r et les |cRXP_ENEMY_Wailing Highbornes|r. Dépouillez-les pour leur |cRXP_LOOT_Relique|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tuez |cRXP_ENEMY_Anaya Dawnrunner|r. Dépouillez-la pour son |cRXP_LOOT_Pendentif|r
    >>|cRXP_ENEMY_Anaya Coursaurore|r |cRXP_WARN_patrouille dans Ameth'Aran. Elle a un temps de respawn très long et si vous ne la trouvez pas, vous pouvez passer cette étape|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
step
    #era/som
    #completewith ReturnAuber
    >>Tuez les |cRXP_ENEMY_Moonstalker|r et les |cRXP_ENEMY_Moonstalker Runts|r. Dépouillez-les pour leur |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >>Tuez des |cRXP_ENEMY_Trotteur des forêts|r et des |cRXP_ENEMY_Jeune trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >>Tuez les |cRXP_ENEMY_Guide Noirbois|r et les |cRXP_ENEMY_Messager du vent Noirbois|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob +Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >> Montez jusqu'au niveau 16

step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4728 >> Acceptez la quête La créature marine échouée
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Tuez des |cRXP_ENEMY_Trotteur des forêts|r et des |cRXP_ENEMY_Jeune trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >> Voyagez vers Auberdine
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .accept 1138 >> Acceptez la quête Fruit de la mer
step
#map Darkshore
    #label ManyBeached
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >> Rendez la quête La créature marine échouée
    .turnin 4728 >> Rendez la quête La créature marine échouée
    .turnin 4722 >> Rendez la quête La tortue de mer échouée
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
#map Darkshore
	.isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >> Rendez la quête Un amour éternel
step << !NightElf !Mage !Paladin !Warlock
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >> Prenez le bateau pour Darnassus
    .zoneskip Darnassus
step << !NightElf !Mage !Paladin !Warlock
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .target Jocaste
step << !NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jandria|r
    .goto Darnassus,37.901,82.742
    .trainer >> Apprenez vos sorts de classe
    .target Jandria
step << !NightElf Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darnath Bladesinger|r
    .trainer >> Apprenez vos sorts de classe
    .target Darnath Bladesinger
step << !NightElf Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r à l'intérieur de l'arbre
    .trainer >> Apprenez vos sorts de classe
    .target Syurna
step << !NightElf Hunter/!NightElf Warrior
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
step << !NightElf !Mage !Paladin !Warlock
    .goto Darnassus,30.7,41.3,15 >> Prenez le portail violet pour revenir à Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !NightElf !Mage !Paladin !Warlock
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    +Achetez des |T134059:0|t[Epices douces]
    >>|cRXP_WARN_Utilisez des|r |T134059:0|t[Epices douces] |cRXP_WARN_et vos|r |T132832:0|t[Petits Oeufs] |cRXP_WARN_pour faire des Oeufs aux herbes. Faites cela jusqu'à ce que votre Cuisine ait atteint le niveau 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cRXP_WARN_Utilisez la|r |T133971:0|t[Cuisine] |cRXP_WARN_pour fabriquer des Oeufs aux herbes. Faites ceci jusqu'à ce que votre compétence de|r |T133971:0|t[Cuisine] |cRXP_WARN_ait atteint 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >> Rendez la quête Océan profond, mer immense
step
    #label ezstrider
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >> Rendez la quête Les outils des Bien-nés
    .turnin 4762 >> Rendez la quête La Bondissante
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
step
#sticky
#label tube1
    .goto Darkshore,37.78,44.06
    .use 14338 >>Utilisez le [Tube d'eau vide] au Puits de lune d'Auberdine
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Utilisez le|r |T133748:0|t[Bol de purification vide] |cRXP_WARN_au Puits de lune d'Auberdine|r
    .collect 12347,1,4763,1
step
#requires tube1
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >> Rendez la quête Quelle est l’ampleur de la menace ?
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .accept 986 >> Acceptez la quête Un maître perdu
    .group
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Elissa Brise-stellaire|r à l'étage
    .accept 965 >> Acceptez la quête La Tour d'Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #era/som
    #completewith CliffCave
    >>Tuez les |cRXP_ENEMY_Moonstalker|r et les |cRXP_ENEMY_Moonstalker Runts|r. Dépouillez-les pour leur |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> Retournez au cristal rouge
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Cliquez sur le |cRXP_PICK_Cristal rouge|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,70 >> Dirigez-vous vers |cRXP_FRIENDLY_Asterion|r à Bashal’Aran
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >> Rendez la quête Bashal'Aran
step << Paladin
    .goto Darkshore,50.74,34.68
	>>Tuez les |cRXP_ENEMY_Guerriers Noirbois|r et les |cRXP_ENEMY_Totémiques Noirbois|r. Dépouillez-les pour obtenir leur |T132889:0|t[Etoffe de lin]
    >>|cRXP_WARN_Vous devez conserver 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour vos|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_quête de classe plus tard|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
.group
    .goto Darkshore,50.66,34.94
    >>Ouvrez les |cRXP_PICK_Réserves de céréales des Noirbois|r. Récupérez-y les |cRXP_LOOT_Echantillons de céréales des Noirbois|r
    >>|cRXP_WARN_Les récupérer fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront. Soyez prêt à les combattre ou à vous enfuir|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
.group
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Jeunes chardons|r peuvent lancer|r |T132152:0|t[Ravage]|cRXP_WARN_, une attaque instantanée en mêlée qui vous étourdit pendant 2 secondes|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
.group
    .goto Darkshore,51.83,33.50
    >>Ouvrez les |cRXP_PICK_Réserves de noix des Noirbois|r. Récupérez les |cRXP_LOOT_Echantillons de noix des Noirbois|r
    >>|cRXP_WARN_Les récupérer fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront. Soyez prêt à les combattre ou à vous enfuir|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
.group
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Ouvrez les |cRXP_PICK_Réserves de fruits des Noirbois|r. Récupérez les |cRXP_LOOT_Echantillons de fruit des Noirbois|r
    >>|cRXP_WARN_Les récupérer fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront. Soyez prêt à les combattre ou à vous enfuir|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
.group
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> Utilisez le [Bol de purification rempli] |cRXP_WARN_au |cRXP_PICK_Feu de joie|r pour invoquer|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corruption des Noirbois RP
    .use 12347
step
.group
    .goto Darkshore,52.38,33.39
    >>Tuez|cRXP_ENEMY_Xabraxxis|r. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera sur le sol. Ramassez le |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
.group << !Druid
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Darkshore,54.99,33.41,15 >> Voyagez vers la Grotte de la Bondissante
step << Druid
    >>Utilisez la [Fiole d'échantillon des Chutes de la Bondissante vide] à l'entrée de la Grotte de la Bondissante
    .goto Darkshore,54.99,33.41
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
.group
    .goto Darkshore,55.66,34.89
    >>Ramassez les |cRXP_LOOT_Pédoncules d'amanites|r et les |cRXP_LOOT_Amanites phalloïdes|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. Si l' |cRXP_LOOT_Amanite phalloïde|r n'est pas au fond de la supérieure, descendez et récupérez-en une en bas|r
    >>|cRXP_WARN_Ne tournez pas le dos au centre de la grotte ! Les |cRXP_ENEMY_Chevaucheurs des vagues Tempécailles|r peuvent vous projeter en arrière !|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
.group
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >> Quittez la grotte de la Bondissante
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Moonstalker|r et les |cRXP_ENEMY_Moonstalker Runts|r. Dépouillez-les pour leur |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Tuez les |cRXP_ENEMY_Fanatiques de la Rive noire|r. Dépouillez-les pour leur |cRXP_LOOT_Parchemins|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Tuez les |cRXP_ENEMY_Fanatiques de la Rive noire|r. Dépouillez-les pour leur |cRXP_LOOT_Parchemins|r et leur |T132889:0|t[Etoffes de lin]
    >>|cRXP_WARN_Vous devez conserver 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour vos|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_quête de classe plus tard|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
step
.group 3
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Allez à la lisière des Brumes
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acceptez la quête La recherche de Gyromast
    .target Gelkak Gyromast
step
.group 3
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    .goto Darkshore,54.93,12.19
    >>Tuez les |cRXP_ENEMY_Oracles Grisebrumes|r et les |cRXP_ENEMY_Chasse-marées grisebrumes|r. Dépouillez-les pour la |cRXP_LOOT_Clé médiane de Gelkak|r
    >>|cRXP_WARN_Faites attention aux |cRXP_ENEMY_Oracles Grisebrumes|r et à leur |T136048:0|t[Eclair], ils peuvent aussi soigner avec |T136052:0|t[Vague de soins]|r
    >>Attention car les |cRXP_ENEMY_Chasse-marées Grisebrumes|r peuvent lancer un |T136016:0|t[|cRXP_FRIENDLY_Poison|r] en mêlée, laissant un dot infligeant 13 dégâts tous les 3 secondes pendant 30 secondes
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
.group 3
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
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
.group
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r et les |cRXP_ENEMY_Matriarches traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r et leurs |cRXP_LOOT_Crocs|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Moonstalker Matriarchs|r. Ils attaquent toujours avec un |cRXP_ENEMY_Moonstalker Runt|r à leur côté|r
    >>Les |cRXP_ENEMY_Géniteurs traquelunes|r peuvent lancer |T132090:0|t[Exploiter faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step
.group 3
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Rendez la quête La recherche de Gyromast
    .accept 2078 >> Acceptez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
step
.group 3
#map Darkshore
    .goto Winterspring,5.59,21.09,10,0
    .goto Winterspring,6.37,16.66
    >>Parlez à |cRXP_FRIENDLY_The Threshwackonator 4100|r pour commencer une escorte
    >>Escortez |cRXP_FRIENDLY_The Threshwackonator 4100|r à  |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tuez|cRXP_ENEMY_The Threshwackonator 4100|r dès qu'il devient hostile
    >>|cRXP_WARN_Cette quête est TRÈS difficile|r
    .skipgossip
    .complete 2078,1
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .mob The Threshwackonator 4100
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Rendez la quête La vengeance de Gyromast
    .isQuestComplete 2078
step
.group
    #sticky
    .destroy 7442 >> Détruisez la Clé de Gyromast de votre inventaire
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4727 >> Acceptez la quête La tortue de mer échouée
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nagez jusqu'à sortir de l'eau
    >>Ouvrez le |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Demi-pendentif d'agilité aquatique|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r et les |cRXP_ENEMY_Clampants des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Belles chairs de crabe|r
    >>|cRXP_WARN_Si les |cRXP_ENEMY_Clampants des marées incrustés|r sont trop forts, focalisez-vous simplement sur|r les |cRXP_ENEMY_Clampants des récifs|r
    >>Attention car les |cRXP_ENEMY_Clampants des récifs|r peuvent lancer |T132155:0|t[Déchirure musculaire], une attaque instantanée infligeant 30-55 dégâts
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    .goto Winterspring,1.42,26.89
    >>Cliquez sur le |cRXP_PICK_Buzzbox 323|r sur le sol
    .turnin 1002 >> Rendez la quête Bigobox 323
    .accept 1003 >> Acceptez la quête Bigobox 525
step
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Tuez les |cRXP_ENEMY_Clampants des marées incrustés|r et les |cRXP_ENEMY_Clampants des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Belles chairs de crabe|r
    >>|cRXP_WARN_Si les |cRXP_ENEMY_Clampants des marées incrustés|r sont trop forts, focalisez-vous simplement sur|r les |cRXP_ENEMY_Clampants des récifs|r
    >>Attention car les |cRXP_ENEMY_Clampants des récifs|r peuvent lancer |T132155:0|t[Déchirure musculaire], une attaque instantanée infligeant 30-55 dégâts
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,50.74,34.68
	.xp 18-2750 >>Montez votre expérience jusqu'à ce qu'il ne vous reste que 2750xp pour le niveau 18
    >>Tuez les |cRXP_ENEMY_Guerriers Noirbois|r et les |cRXP_ENEMY_Totémiques Noirbois|r.
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    #completewith NorthDarkshore
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Voyagez vers Auberdine
    .cooldown item,6948,<0
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .cooldown item,6948,>0,1
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .turnin 1138 >> Rendez la quête Fruit de la mer
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
step
#map Darkshore
    #label NorthDarkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >> Rendez la quête Les fragments à l'intérieur
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
step
.group
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >> Rendez la quête Un maître perdu
    .accept 993 >> Acceptez la quête Un maître perdu
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
step << Druid
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Rendez la quête Le principe originel
    .target Alanndarian Nightsong
    .accept 6123 >> Acceptez la quête Rassembler les ingrédients du remède
step << Druid
#label cure1
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Tuez les |cRXP_ENEMY_Séléniens|r. Dépouillez-les pour leur |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    >>Vous aurez d'un niveau de compétence de 50 en cuisine pour une quête à venir
    .collect 6889,40,90,1,0x21,cooking
    >>Cueillez les |cRXP_LOOT_Lunar Fungi|r sur le sol le long des grottes
    .complete 6123,2
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Tuez les |cRXP_ENEMY_Séléniens|r. Dépouillez-les pour leur |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    >>Vous aurez d'un niveau de compétence de 50 en cuisine pour une quête à venir
    .collect 6889,40,90,1,0x20,cooking
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Druid
    >>Terminez la cueillette des 5 |T134187:0|t[Terrestrines]
    >>Vous pouvez les cueillir le long des montagnes à l'est
    .collect 2449,5,6123,1
step << Druid
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Rendez la quête Rassembler les ingrédients du remède
    .accept 6124 >> Acceptez la quête Soigner la maladie
    .target Alanndarian Nightsong
step << Druid
    .goto Darkshore,41.0,79.6
    >>|cRXP_WARN_Dirigez-vous vers le sud en utilisant le|r |T132801:0|t[Remède pour animaux] |cRXP_WARN_sur les|r |cRXP_ENEMY_Daims malades|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .unitscan Sickly Deer
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.4
    >>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >> Rendez la quête Soigner la maladie
    .accept 6125 >> Acceptez la quête Pouvoir contre le poison
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >> Volez jusqu'au village de Rut'theran
    .target Silva Fil'naveth
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r à l'étage
    .turnin 6125 >> Rendez la quête Pouvoir contre le poison
step << Druid
    .goto Darnassus,30.7,41.3 >> Prenez le portail violet pour revenir à Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Dirigez-vous vers les quais d'Auberdine. Attendez pour le bateau pour le Port de Menethil
step
    .goto Darkshore,32.44,43.71
    >>Montez les niveaux de vos [Premiers soins] et de votre [Cuisine] en attendant le bateau pour le Port de Menethil
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 20-21 Sombrivage/Orneval
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#next 21-23 Serres-Rocheuses/Orneval

step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
	>>Allez à Reflet-de-Lune
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
    #completewith TheryluneE
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCliquez sur le |cRXP_FRIENDLY_Wanted Poster|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> Acceptez la quête La caverne aux champignons
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Utilisez le|r |T133748:0|t[Bol de purification vide] |cRXP_WARN_au Puits de lune d'Auberdine|r
    .collect 12347,1,4763,1
step
    .goto Darkshore,38.326,43.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
step
    .goto Darkshore,50.66,34.94
    >>Ouvrez les |cRXP_PICK_Réserves de céréales des Noirbois|r. Récupérez-y les |cRXP_LOOT_Echantillons de céréales des Noirbois|r
    >>|cRXP_WARN_Les récupérer fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront. Soyez prêt à les combattre ou à vous enfuir|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Soyez prudent car les |cRXP_ENEMY_Jeunes chardons|r peuvent lancer|r |T132152:0|t[Ravage]|cRXP_WARN_, une attaque instantanée en mêlée qui vous étourdit pendant 2 secondes|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
    .goto Darkshore,51.83,33.50
    >>Ouvrez les |cRXP_PICK_Réserves de noix des Noirbois|r. Récupérez les |cRXP_LOOT_Echantillons de noix des Noirbois|r
    >>|cRXP_WARN_Les récupérer fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront. Soyez prêt à les combattre ou à vous enfuir|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Ouvrez les |cRXP_PICK_Réserves de fruits des Noirbois|r. Récupérez les |cRXP_LOOT_Echantillons de fruit des Noirbois|r
    >>|cRXP_WARN_Les récupérer fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront. Soyez prêt à les combattre ou à vous enfuir|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> Utilisez le [Bol de purification rempli] |cRXP_WARN_au |cRXP_PICK_Feu de joie|r pour invoquer|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corruption des Noirbois RP
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >>Tuez|cRXP_ENEMY_Xabraxxis|r. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera sur le sol. Ramassez le |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,55.66,34.89
    >>Ramassez les |cRXP_LOOT_Pédoncules d'amanites|r et les |cRXP_LOOT_Amanites phalloïdes|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. Si l' |cRXP_LOOT_Amanite phalloïde|r n'est pas au fond de la supérieure, descendez et récupérez-en une en bas|r
    >>|cRXP_WARN_Ne tournez pas le dos au centre de la grotte ! Les |cRXP_ENEMY_Chevaucheurs des vagues Tempécailles|r peuvent vous projeter en arrière !|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
--TODO: Add logout skip video
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 986 >> Acceptez la quête Un maître perdu
step
    #completewith moonstalkers
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r et les |cRXP_ENEMY_Matriarches traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r et leurs |cRXP_LOOT_Crocs|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Moonstalker Matriarchs|r. Ils attaquent toujours avec un |cRXP_ENEMY_Moonstalker Runt|r à leur côté|r
    >>Les |cRXP_ENEMY_Géniteurs traquelunes|r peuvent lancer |T132090:0|t[Exploiter faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
	#era/som
    #completewith Murkdeep
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >> Voyagez jusqu'au Bosquet des Anciens
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Rendez le Bosquet des Anciens << NightElf
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> Voyagez jusqu'à le Glaive du Maître
step
#label moonstalkers
    .goto Darkshore,38.54,86.05
    >>Découvrez le Glaive du Maître
    >>Les |cRXP_ENEMY_Nervis du crépuscule|r |cRXP_WARN_peuvent|r utiliser |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    >>Les |cRXP_ENEMY_Disciples du crépuscule|r |cRXP_WARN_lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |T135915:0|t[Soins] de 3 secondes|r
    .complete 944,1
step
    #completewith next
    .cast 5809 >> Utilisez la [Fiole de divination] et placez-la sur le sol
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >> Cliquez sur la |cRXP_PICK_Coupe de divination|r
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    >>Les |cRXP_ENEMY_Nervis du crépuscule|r |cRXP_WARN_peuvent|r utiliser |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    >>Les |cRXP_ENEMY_Disciples du crépuscule|r |cRXP_WARN_lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |T135915:0|t[Soins] de 3 secondes|r
step
    .goto Ashenvale,22.24,2.52
    >>Cliquez sur le |cRXP_PICK_Tome du crépuscule|r
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
    .accept 950 >> Acceptez la quête La page qui rend fou
    >>Les |cRXP_ENEMY_Nervis du crépuscule|r |cRXP_WARN_peuvent|r utiliser |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    >>Les |cRXP_ENEMY_Disciples du crépuscule|r |cRXP_WARN_lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |T135915:0|t[Soins] de 3 secondes|r
step
    .goto Ashenvale,22.36,3.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va démarrer une escorte
    >>Passez cette étape si elle n'est pas présente
    >>Les |cRXP_ENEMY_Nervis du crépuscule|r |cRXP_WARN_peuvent|r utiliser |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    >>Les |cRXP_ENEMY_Disciples du crépuscule|r |cRXP_WARN_lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |T135915:0|t[Soins] de 3 secondes|r
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    >>Les |cRXP_ENEMY_Nervis du crépuscule|r |cRXP_WARN_peuvent|r utiliser |T132343:0|t[Désarmement] |cRXP_WARN_sur vous pendant 6 secondes|r << Rogue/Paladin/Warrior
    >>Les |cRXP_ENEMY_Disciples du crépuscule|r |cRXP_WARN_lancent|r |T135953:0|t[Rénovation] |cRXP_WARN_et un sort de |T135915:0|t[Soins] de 3 secondes|r
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945
step
    .destroy 5251 >> Détruisez la |T134715:0|t[Flasque de divination]. Vous n'en avez plus besoin
step
    .goto Darkshore,39.3,91.8,60,0
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
	.goto Darkshore,39.3,91.8
    >>Tuez les |cRXP_ENEMY_Géniteurs traquelunes|r et les |cRXP_ENEMY_Matriarches traquelunes|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r et leurs |cRXP_LOOT_Crocs|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Moonstalker Matriarchs|r. Ils attaquent toujours avec un |cRXP_ENEMY_Moonstalker Runt|r à leur côté|r
    >>Les |cRXP_ENEMY_Géniteurs traquelunes|r peuvent lancer |T132090:0|t[Exploiter faiblesse], une attaque infligeant 20-40 dégâts si vous leur tournez le dos
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>Ceci va démarrer une escorte
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à la faire seul|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    >>|cRXP_WARN_Cette quête est TRÈS difficile. Passez cette étape si vous n'arrivez pas à trouver un groupe ou à la faire seul|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Cliquez ici pour un guide vidéo|r
    .complete 731,1
    .isOnQuest 731
step
    .goto Ashenvale,13.97,4.10
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4733 >> Acceptez la quête La créature marine échouée
    >>|cRXP_WARN_Cette quête peut être TRÈS difficile. Engagez les murlocs |cRXP_ENEMY_Murlocs|r 1 par 1, sinon vous risquez d'en engager plusieurs en même temps|r
    .link https://youtu.be/lfQM3Q-Ag5A >> Cliquez ici pour un guide vidéo
step
    .goto Ashenvale,13.93,2.01
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4732 >> Acceptez la quête La tortue de mer échouée
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4731 >> Acceptez la quête La tortue de mer échouée
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4730 >> Acceptez la quête La créature marine échouée
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >>Tuez les |cRXP_ENEMY_Guerriers Grisebrumes|r et les |cRXP_ENEMY_Chasseurs Grisebrumes|r dans le camp
    >>|cRXP_WARN_Allez au feu de joie au centre du camp pour invoquer|r |cRXP_ENEMY_Fondeboue|r
    >>Tuez |cRXP_ENEMY_Fondeboue|r. Il arrive de l'eau en courant
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    #optional
    >>Tuez les |cRXP_ENEMY_Vieux ours des chardons|r. Dépouillez-les pour leur |cRXP_LOOT_Scalps|r
    >>Soyez prudent comme ils lancent |T132152:0|t[Ravage] une attaque instantanée infligeant 20-40 dégâts et |cRXP_WARN_vous mettant à terre pendant 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #era/som
    .goto Darkshore,41.389,80.565
    >>Cliquez sur la |cRXP_PICK_Bigobox 525|r sur le sol
    .turnin 1003 >> Rendez la quête Bigobox 525
    .isOnQuest 1003
step
.group
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Parlez à |cRXP_FRIENDLY_Volcor|r dans la Grotte
step
.group
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 995 >> Acceptez la quête Évasion par la ruse
    .timer 20,RP de Évasion par la ruse
    .target Volcor
    .isQuestTurnedIn 986
step
.group
    .goto Darkshore,44.44,84.69
    >>Attendez le temps du RP
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Rendez la quête Les Reliques de Mathystra
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Rendez la quête La page qui rend fou
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Evershade|r pour commencer l'escorte
    >>Passez cette étape si il n'est pas présent. Il peut prendre jusqu'à 25 minutes à respawn
	.target Kerlonian Evershade
    .accept 5321 >> Acceptez la quête Le dormeur s'est éveillé
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Ouvrez le |cRXP_PICK_Kerlonian's Chest|r. Récupérez y l'[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,29.7,13.6
step
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
	#era/som
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
    #era/som
    .goto Ashenvale,31.25,30.70
    >>Tuez les |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Adepts|r et les |cRXP_ENEMY_Dark Strand Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Soul Gem|r
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
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
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
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Acceptez la quête De garde dans les Serres-Rocheuses
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Acceptez la quête Voyage au pic des Serres-Rocheuses
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
step
.dungeon WC
    #completewith TravelRatchet
    .goto Ashenvale,20.31,42.33,0
    .zone The Barrens >> Tuez en boucle les |cRXP_ENEMY_Murlocs Crache-sel|r en cherchant un groupe pour les Cavernes des Lamentations. Leur position est marquée sur votre carte
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Voyagez vers Ratchet dans les Tarides. Suivez la flèche pour éviter |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol par gryphon à Ratchet
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> Voyagez vers les Cavernes des Lamentations. Montez la montagne puis descendez dans la grotte cachée au-dessus de l'entrée du donjon. Suivez la flèche pour arriver à |cRXP_FRIENDLY_Nalpak|r et |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .target +Nalpak
    .goto 1414,51.912,55.422 -- Nalpak
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r peut apparaître à plusieurs endroits
    >>Cette quête être complétée à L’EXTÉRIEUR du donjon
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414,52.37,55.20
    +Rentrez dans les Cavernes des Lamentations
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r et |cRXP_ENEMY_Lady Anacondra|r puis parlez au |cRXP_FRIENDLY_Disciple of Naralex|r au début du donjon pour commencer son escorte
    >>Escortez le |cRXP_FRIENDLY_Disciple of Naralex|r à travers les Cavernes des Lamentations et compléter son rituel
    >>Tuez|cRXP_ENEMY_Mutanus the Devourer|r. Dépouillez-le pour son [|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Glowing Shard|r] pour commencer la quête|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Voyagez à Ratchet. Vous allez bientôt rendre les quêtes au dessus du donjon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Montez la pente raide de la montagne au dessus des Cavernes des Lamentations. Suivez la flèche
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> Descendez dans la grotte cachée au-dessus de l'entrée des Cavernes des Lamentations. Suivez la flèche pour accéder à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414,51.912,55.422 -- Nalpak
    .target +Nalpak
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414,51.918,55.444 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414,51.912,55.422 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
]])
