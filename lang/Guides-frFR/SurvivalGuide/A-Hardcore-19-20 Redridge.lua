if GetLocale() ~= "frFR" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 19-20 Les Carmines
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#next 20-21 Sombrivage/Orneval

step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez les compétences de votre familier
    .target Karrina Mekenda
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Billibub Cogspinner|r n'en a plus en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .isOnQuest 1338
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni la Silencieuse|r et à |cRXP_FRIENDLY_Wilder Crispechardon|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .goto StormwindClassic,65.438,21.175
    .target +Wilder Thistlenettle
step << Hunter
    #ssf
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe lourd]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #ah
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez un|r |T135489:0|t[Arc lourd à double courbure] |cRXP_BUY_ou une meilleure arc à l'Hôtel des ventes|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Achetez des|r [Flèche pointue]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Frederick Stover
step << Hunter
    +Équipez l' [Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Allez à la Tour des Mages
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Achetez une|r |T135139:0|t[Baguette ardente] |cRXP_BUY_si elle est mieux que votre baguette actuelle|r
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
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .trainer >> Apprenez vos sorts de classe
    .target Sheldras Moontree
step << !Hunter !Priest
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage/Druid
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135324:0|t[Epée longue] |cRXP_BUY_et un|r |T135342:0|t[Kriss]
    >>|cRXP_WARN_Équipez l'|r |T135324:0|t[Epée longue] |cRXP_WARN_en main droite quand vous êtes de niveau 21 et le|r |T135342:0|t[Kriss] |cRXP_WARN_en main gauche|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement aux Carmines très bientôt
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134172:0|t[Groin de grand Broche-tripes]
    >>|T134028:0|t[Viande de condor coriace]
    >>|T134321:0|t[Chair croustillante d'araignée]
    >>|T134572:0|t[Minerai de rethban]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .collect 2798,5,347,1 -- Rethban Ore (5)
    .target Auctioneer Jaxon
step << !NightElf
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers les Carmines
    .target Dungar Longdrink
step << NightElf
    #label ExitSW
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Quittez Stormwind
    .zoneskip Redridge Mountains
step << NightElf
    #completewith GParker
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << NightElf
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step << NightElf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
    .accept 246 >> Acceptez la quête L'appréciation du danger
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
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acceptez la quête Un message pour Hurlevent
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .accept 129 >> Acceptez la quête Un repas gratuit
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley le noir|r à l'étage
    .turnin 65 >> Rendez la quête La Confrérie défias
    .accept 132 >> Acceptez la quête La Confrérie défias
	.target Wiley the Black
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>Quittez l'auberge
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .accept 92 >> Acceptez la quête Goulash des Carmines
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
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
    .target Hilary
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fly Westfall >> Volez vers la Marche de l'Ouest
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Rendez la quête La Confrérie défias
    .accept 135 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Général Marcus Jonathan|r
    .turnin 120 >> Rendez la quête Un message pour Hurlevent
    .accept 121 >> Acceptez la quête Un message pour Hurlevent
    .target General Marcus Jonathan
step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Rendez la quête La Confrérie défias
    .accept 141 >> Acceptez la quête La Confrérie défias
    .target Master Mathias Shaw
step
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Rendez la quête La Confrérie défias
    .accept 142 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Voyagez à Ruisselune
step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tuez le |cRXP_ENEMY_Messager défias|r. Dépouiilez-le pour son |cRXP_LOOT_Un message mystérieux|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Messager défias|r apparaît à Ruisselune. Il marche le long de la route au nord de Ruisselune, jusqu'à la Carrière de la Côte de l'or et la Mine de Jangolode. Si vous ne le voyez pas le long de la route, attendez qu'il réapparaisse à Ruisselune|r
    >>|cRXP_WARN_Son délai de réapparition est de 4-5 minutes|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Voyagez au Phare de la Marche de l'Ouest
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .accept 104 >> Acceptez la quête Menace sur la côte
    .accept 103 >> Acceptez la quête Le gardien de la flamme
    .target Captain Grayson
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 103 >> Rendez la quête Le gardien de la flamme
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour son |cRXP_LOOT_Écaille|r
    >>Le |cRXP_ENEMY_Vieux Troubloeil|r |cRXP_WARN_patrouille le long du Longrivage. Si vous ne le voyez pas le long du Longrivage, attendez qu'il apparaisse dans le campement |cRXP_ENEMY_Murloc|r le plus au sud|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Grayson|r
    .turnin 104 >> Rendez la quête Menace sur la côte
    .target Captain Grayson
step
    .abandon 103 >> Abandonnez la quête Le gardien de la flamme
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Traître défias|r
    >>|cRXP_WARN_Vous devrez peut-être attendre que le |cRXP_FRIENDLY_Traître défias|r apparaisse s'il n'est pas là|r
    .accept 155 >> Acceptez la quête La Confrérie défias
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>Escortez le |cRXP_FRIENDLY_Traître défias|r jusqu'aux Mortemines
    >>|cRXP_WARN_Restez avec le |cRXP_FRIENDLY_Traître défias|r en permanence ! Soyez prêts à combattre les |cRXP_ENEMY_Défias|r en arrivant à Ruisselune|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto Westfall,25.90,47.76
    >>|cRXP_WARN_Utilisez la |T134269:0|t[|cRXP_LOOT_Carte au trésor du capitaine Sander|r] pour commencer la quête|r
    .use 1357
    .accept 136 >> Acceptez la quête Le trésor caché du capitaine Sanders
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>Cliquez sur la |cRXP_PICK_Cantine du capitaine|r
    .turnin 136 >> Rendez la quête Le trésor caché du capitaine Sanders
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>Cliquez sur la |cRXP_PICK_Cantine du capitaine|r
    .accept 138 >> Acceptez la quête Le trésor caché du capitaine Sanders
    .isQuestTurnedIn 136
step
    .goto Westfall,40.51,47.80
    >>Cliquez sur le |cRXP_PICK_Tonneau cassé|r
    .turnin 138 >> Rendez la quête Le trésor caché du capitaine Sanders
    .accept 139 >> Acceptez la quête Le trésor caché du capitaine Sanders
    .isQuestTurnedIn 136
step
    .goto Westfall,40.63,17.03
    >>Cliquez sur la |cRXP_PICK_Vieille cruche|r
    .turnin 139 >> Rendez la quête Le trésor caché du capitaine Sanders
    .accept 140 >> Acceptez la quête Le trésor caché du capitaine Sanders
    .isQuestTurnedIn 138
step
    #completewith next
    .goto Westfall,25.97,16.90,30 >> Nagez jusqu'à sortir de l'île
    .isOnQuest 140
step
    .goto Westfall,25.97,16.90
    >>Cliquez sur le |cRXP_PICK_Coffre verrouillé|r
    .turnin 140 >> Rendez la quête Le trésor caché du capitaine Sanders
    .isOnQuest 140
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Roidemantel|r et à l' |cRXP_FRIENDLY_Eclaireur Riell|r tout en haut de la tour
    .accept 166 >> Acceptez la quête La Confrérie défias
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 214 >> Acceptez la quête Les masques rouges en soie
    .goto Westfall,56.67,47.35
    .target +Scout Riell
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
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Acceptez la quête La dépravation au loin
step
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Kristoff|r
    >>Passez cette étape si vous n'êtes pas encore au niveau 20
    .accept 343 >> Acceptez la quête En parlant de fermeté
    .target Brother Kristoff
    .xp <20,1
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
    .goto StormwindClassic,55.510,12.504
    .target +Shoni the Shilent
step -- adding again 2nd time incase hitting 20 after turning in triple DM quests
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Kristoff|r
    >>Passez cette étape si vous n'êtes pas encore au niveau 20
    .accept 343 >> Acceptez la quête En parlant de fermeté
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> Voyagez vers |cRXP_FRIENDLY_Milton Sheaf|r dans la Bibliothèque de Hurlevent
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    >>Passez cette étape si vous n'êtes pas encore au niveau 20
    .turnin 343 >> Rendez la quête En parlant de fermeté
    .accept 344 >> Acceptez la quête Frère Paxton
    .target Milton Sheaf
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Rendez la quête Bazil Thredd
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    >>Volez aux Carmines si vous êtes toujours à la Marche de l'Ouest
    .fly Redridge >> Volez vers les Carmines
    .target Thor
    .zoneskip Westfall,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Quittez Stormwind. Voyagez vers Goldshire
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Rendez la quête Le prix des fers
    .accept 119 >> Acceptez la quête Le retour chez Verner
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> Voyagez jusqu'à l' abbaye de Comté-du-Nord
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .turnin 344 >> Rendez la quête Frère Paxton
    .accept 345 >> Acceptez la quête Provisions d'encre
    .target Brother Paxton
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >> Allez à la Tour d'Azora. Montez la tour. Suivez la flèche pour un raccourci à travers les montagnes
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r tout en haut
    .accept 94 >> Acceptez la quête L'œil attentif
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << Warrior/Rogue
    .target Aurore Brillétoile
    .subzoneskip 91,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Volez vers les Carmines
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Rendez la quête Un repas gratuit
    .accept 130 >> Acceptez la quête Une visite chez l'herboriste
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .accept 246 >> Acceptez la quête L'appréciation du danger
step
    .isQuestTurnedIn 343
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >> Rendez la quête Provisions d'encre
    .target Foreman Oslow
step
    .isQuestTurnedIn 118
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Rendez la quête Le retour chez Verner
    .accept 124 >> Acceptez la quête Le hurlement des gnolls
    .accept 122 >> Acceptez la quête Les écailles de dragonnet
step
    #era/som
    #completewith MongrelPoacher
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Tarentules|r. Dépouillez-les pour leur |cRXP_LOOT_Chair croustillante d'araignée|r
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>|cRXP_WARN_Ne vendez PAS le moindre de ces objets avant de rendre la quête Goulash des Carmines|r
    >>|cRXP_WARN_Gardez tous les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous récupérez comme vous pourrez les utiliser pour monter votre niveau de compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à 50 ce qui sera requis pour le Bois de la Pénombre plus tard|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
    .collect 1081,5,92,1
    .mob +Tarantula
step
    .isOnQuest 122
    #completewith Toolbox
    >>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    >>Vous n'avez pas besoin de compléter cette quête pour l'instant
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label MongrelPoacher
    .goto Redridge Mountains,15.91,62.76,0
    .goto Redridge Mountains,43.44,70.61,0
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
    #era/som
    #completewith next
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>|cRXP_WARN_Ne vendez PAS le moindre de ces objets avant de rendre la quête Goulash des Carmines|r
    >>|cRXP_WARN_Gardez tous les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous récupérez comme vous pourrez les utiliser pour monter votre niveau de compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à 50 ce qui sera requis pour le Bois de la Pénombre plus tard|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
step
    #era/som
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Tuez les |cRXP_ENEMY_Tarentules|r. Dépouillez-les pour leur |cRXP_LOOT_Chair croustillante d'araignée|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #era/som
    >>Tuez les |cRXP_ENEMY_Grands Broche-tripes|r. Dépouillez-les pour leur |cRXP_LOOT_Groins de grand Broche-tripes|r
    >>Tuez les |cRXP_ENEMY_Condors redoutables|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de condor coriace|r
    >>|cRXP_WARN_Ne vendez PAS le moindre de ces objets avant de rendre la quête Goulash des Carmines|r
    >>|cRXP_WARN_Gardez tous les|r |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r |cRXP_WARN_que vous récupérez comme vous pourrez les utiliser pour monter votre niveau de compétence en|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à 50 ce qui sera requis pour le Bois de la Pénombre plus tard|r
    .collect 1080,5,92,1
    .mob +Dire Condor
    .goto Redridge Mountains,66.4,76.6,60,0
    .goto Redridge Mountains,35.6,69.6,60,0
    .goto Redridge Mountains,45.4,76.6
    .goto Redridge Mountains,35.6,69.6,0
    .collect 2296,5,92,1
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .mob +Great Goretusk
step
    #label Toolbox
    >>|cRXP_WARN_Sautez dans le lac. Faites attention aux |cRXP_ENEMY_Batteurs lacustres|r élites qui patrouillent dans l'eau|r
    >>Ouvrez le |cRXP_PICK_Coffre englouti|r. Récupérez la |cRXP_LOOT_Boîte d'outils d'Oslow|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-3000 >> Tuez des mobs en boucle jusqu'à ce qu'il ne vous manque que 3000xp pour atteindre le niveau 20
step
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >> Voyagez vers Comté-du-Lac
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Rendez la quête Les outils perdus
    .accept 89 >> Acceptez la quête Le pont sur le lac
step
    #era
    .isQuestComplete 122
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
    >>Passez cette étape si vous n'avez pas encore terminé Les écailles de dragonnet, vous allez la terminer plus tard
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >> Rendez la quête Les écailles de dragonnet
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Rendez la quête Un message pour Hurlevent
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Rendez la quête Une visite chez l'herboriste
    .accept 131 >> Acceptez la quête Bouquet de jonquilles
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Rendez la quête Goulash des Carmines
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_marche en rond dans l'auberge|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Rendez la quête Bouquet de jonquilles
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Rendez la quête L'appréciation du danger
step
    .xp 20 >> Assurez-vous que vous êtes au niveau 20 avant de vous envoler vers Hurlevent
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fly Stormwind >> Volez à Stormwind
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crépi Roncebaie|r
    .vendor >> |cRXP_BUY_Achetez un|r |T133738:0|t[Grimoire de Tourment (Rang 2)]
    .target Spackle Thornberry
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Allez à la Tour des Mages
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Apprenez vos sorts de classe
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
	.xp <20,1
    .target Larimaine Purdue
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .goto StormwindClassic,20.89,55.50
    .trainer >> Apprenez vos sorts de classe
    .train 768 >> Apprenez |T132115:0|t[Forme de félin]
    .target Sheldras Moontree
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135324:0|t[Epée longue] |cRXP_BUY_et équipez-le au niveau 21|r
    >>|cRXP_BUY_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    >>|cRXP_WARN_Passez cette étape si vous avez une meilleure arme|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << !Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez l' |T134437:0|t[Anti-venin] pour votre quête de |T132290:0|t[Poisons] plus tard
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas l'acheter
    .collect 6452,1,2359,1 --Anti-Venom (1)
    .target Auctioneer Jaxon
step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T135324:0|t[Epée longue] |cRXP_BUY_et équipez-le au niveau 21|r
    >>|cRXP_WARN_Passez cette étape si vous avez une meilleure arme|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Warrior/Paladin
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez une|r |T135280:0|t[Faux dace] |cRXP_BUY_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    >>|cRXP_BUY_Achetez-en une autre à l'Hôtel des ventes s'il y a une option moins chère/meilleur|r
    >>|cRXP_WARN_Passez cette étape si vous avez une meilleure arme|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez une|r |T135280:0|t[Faux dace] |cRXP_BUY_si vous avez assez d'argent. Vous l'équiperez au niveau 21|r
    >>|cRXP_WARN_Passez cette étape si vous avez une meilleure arme|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Acceptez la quête La dépravation au loin
step
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Kristoff|r
    .accept 343 >> Acceptez la quête En parlant de fermeté
    .target Brother Kristoff
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r. Il vous donnera le [|cRXP_LOOT_Tome of Valor|r]
    .use 6776 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tome of Valor|r] pour commencer la quête|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acceptez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Rendez la quête Le Tome de la bravoure
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .target Brother Joshua
step
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> Voyagez vers |cRXP_FRIENDLY_Milton Sheaf|r dans la Bibliothèque de Hurlevent
step
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 343 >> Rendez la quête En parlant de fermeté
    .accept 344 >> Acceptez la quête Frère Paxton
    .target Milton Sheaf
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne l'homme de la nuit|r
    .trainer >> Apprenez vos sorts de classe
    .train 1804 >> Apprenez |T136058:0|t[Crochetage] pour apprendre le Crochetage
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez dans le QG du SI:7. Montez les escaliers vers |cRXP_FRIENDLY_Renzik « le kriss »|r et |cRXP_FRIENDLY_Maître Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .target +Renzik "The Shiv"
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu|r ou |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Apprenez vos sorts de classe
    .target Wu Shen
    .target Ilsa Corbin
step
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Quittez Stormwind. Voyagez vers Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Rendez la quête Le prix des fers
    .accept 119 >> Acceptez la quête Le retour chez Verner
step
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> Voyagez jusqu'à l' abbaye de Comté-du-Nord
step
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .turnin 344 >> Rendez la quête Frère Paxton
    .accept 345 >> Acceptez la quête Provisions d'encre
    .target Brother Paxton
step
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >> Allez à la Tour d'Azora. Montez la tour. Suivez la flèche pour un raccourci à travers les montagnes
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Theocritus|r tout en haut
    .accept 94 >> Acceptez la quête L'œil attentif
step
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_a un stock limité d'objets tels que des|r [Parchemins] |cRXP_BUY_et également|r de [Potions] |cRXP_BUY_que vous devriez acheter si ils sont disponibles|r << Warrior/Rogue
    .target Aurore Brillétoile
    .subzoneskip 91,1
step
    #completewith TravelRM
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    >>Volez aux Carmines si vous êtes à Hurlevent
    .fly Redridge >> Volez vers les Carmines
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >> Rendez la quête Provisions d'encre
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Rendez la quête Le retour chez Verner
    .accept 124 >> Acceptez la quête Le hurlement des gnolls
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Acceptez la quête Les écailles de dragonnet
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .target Lucius
    .accept 2282 >> Acceptez la quête La scierie d'Alther
step
    #era
	#completewith next
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label TravelRM
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
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +Ouvrez les |cRXP_PICK_Coffrets d'entraînement|r jusqu'à atteindre un niveau de compétence de 80 en |T136058:0|t[Crochetage]
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Tuez les |cRXP_ENEMY_Dragonnets noirs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Rendez la quête Le pont sur le lac
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Rendez la quête Le hurlement des gnolls
    .turnin 122 >> Rendez la quête Les écailles de dragonnet
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verner Bongoulot|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Rendez la quête Le hurlement des gnolls
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Rendez la quête La scierie d'Alther
    .target Lucius
step << Rogue
    #sticky
    #optional
    .destroy 7907 >> Détruisez le |T134328:0|t[Certificat des voleurs] de vos sacs, il n'est plus nécessaire
step << NightElf Rogue
    #hardcore
    #optional
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Prenez le chemin de vol de la Marche de l'Ouest
    .target Thor
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !NightElf Rogue
    #hardcore
    #optional
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
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
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith TowerKey
    +==PRÊTEZ ATTENTION À LA SECTION À VENIR==
    >>Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
    >>De plus, il est recommandé d'activer les barres d'info des ennemis (Touche par défaut: V) comme cela vous permet de voir les ennemis derrière certains des coins à l'intérieur de la tour
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ le faire pour votre de quête de [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ le faire pour votre de quête de [Poisons]
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
    .isQuestTurnedIn 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
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
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith Mortwake
    +Équipez la [Dague de Curvewood] pour cette quête si vous n'avez pas déjà de [Dague] équipée
    .use 15396
    .itemcount 15396,1
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
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
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Utilisez votre racial [Forme de Pierre] pour enlever le debuff [Toucher de Zanzil]
    .aura -9991
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Voyagez vers |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .skill firstaid,80 >> Montez vos [Premier soins] à un niveau de compétence de 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .train 7934 >> Apprenez [Anti-Venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>Rappelez-vous de re-équiper votre arme principale si vous avez équipé une [Dague] plus tôt << Rogue
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .target Master Mathias Shaw
    .isQuestComplete 2359
]])
