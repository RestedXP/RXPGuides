if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 21-24 Stonetalon/The Barrens
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 24-25 Contreforts d'Hillsbrad

step
    #completewith MeetingTW
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Voyagez vers |cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Voyagez vers |cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Achetez des|r [Rune de Téléportation] |cRXP_BUY_à Horthus|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Montez la tour, puis allez vers le fort Grommash
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Montez la tour vers |cRXP_FRIENDLY_Doras|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Montez la tour vers |cRXP_FRIENDLY_Doras|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Prenez le chemin de vol d'Orgrimmar
    .target Doras
step << !Shaman !Warrior
    .goto Orgrimmar,31.62,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 9626 >> Rendez Meeting the Warchief << BloodElf
    --.accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >> Rendez Meeting the Warchief << !BloodElf
    .target Thrall
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
    .group
step << BloodElf
    .goto Orgrimmar,31.62,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnsinger|r
    .accept 9428 >> Accept Voyagez au poste de Bois-brisé
    .target Ambassador Dawnsinger
    .isQuestTurnedIn 9626
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pyreanor|r
    .train 879 >> Apprenez vos sorts de classe
    .target Master Pyreanor
step
    #label MeetingTW
    .goto Orgrimmar,38.93,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor|r
    .accept 1061 >> Acceptez la quête Les esprits des Serres-Rocheuses
    .target Zor Lonetree
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Apprenez vos sorts de classe
    .target Pephredo
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Thuul|r en haut de la hutte
    .train 3567 >> Apprenez [Téléportation: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Apprenez vos sorts de classe
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >> Rendez Rogues of the Shattered Hand
    .accept 2460 >> Acceptez la quête Le Salut brisé
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Cibluez |cRXP_FRIENDLY_Shenthul|r pour le Saluer (/salut)|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >> Rendez la quête Le Salut brisé
    .accept 2458 >> Acceptez la quête Sous le couvert de la nuit
    .target Shenthul
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grol'dar|r
    .train 1094 >> Apprenez vos sorts de classe
    .target Grol'dar
step << Warlock
    #optional
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandonnez L'appel de Carendin
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r et |cRXP_FRIENDLY_Cazul|r
    .accept 1507 >>Acceptez la quête La dévoreuse d'âmes
    .target +Gan'rul Bloodeye
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >> Rendez la quête La dévoreuse d'âmes
    .accept 1508 >> Acceptez la quête Cazul l'aveugle
    --.accept 65601 >> Accept Love Hurts
    .target +Cazul
    .goto Orgrimmar,47.05,46.43
    --TODO: Add 65601 on Black Temple release
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >> Voyagez vers |cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Rendez la quête Cazul l'aveugle
    .accept 1509 >>Acceptez la quête Des nouvelles de Dogran
    .target Zankaja
step << skip --Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >> Voyagez vers |cRXP_FRIENDLY_Magar|r
step << skip --Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magar|r
    .turnin 65601 >> Rendez Love Hurts
    .accept 65610 >> Acceptez Wish You Were Here
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Montez les escaliers vers |cRXP_FRIENDLY_Thuul|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thuul|r
    .train 3567 >> Apprenez [Téléportation : Orgrimmar]
    .money <0.2000
    .target Thuul
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
step << Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >> Voyagez vers |cRXP_FRIENDLY_Hanashi|r
step << Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Acheter la compétence pour porter des haches à deux mains
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step
    #completewith FlyXroads1
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Volez à la Croisée
    .target Doras
    .zoneskip The Barrens
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acceptez la quête Consumé par la haine
    .accept 4921 >>Acceptez la quête Disparition au combat
    .target Mankrik
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Rendez la quête Les Bassins oubliés
    .accept 877 >>Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
    .isQuestComplete 870
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
    .isQuestTurnedIn 870
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 905 >>Acceptez la quête Les Faucheurs furieux
    .target Sergra Darkthorn
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Rendez la quête Des nouvelles de Dogran
    .accept 1510 >>Acceptez la quête Des nouvelles de Dogran
    .target Gazrog
step
    #label FlyXroads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 3281 >>Acceptez la quête Argent volé
    .target Gazrog
step
    #optional
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r et leur |cRXP_LOOT_Feathers|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Cliquez sur la |cRXP_PICK_Fissure bouillonnante|r sous l'eau
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .subzone 380 >>Retournez à La Croisée
    .dungeon WC
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 877 >>Rendez la quête L'oasis stagnante
    .accept 880 >>Acceptez la quête Source de vie
    .target Tonga Runetotem
    .dungeon WC
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Tuez les |cRXP_ENEMY_Oasis Snapjaws|r à l'intérieur et autour du lac. Dépouillez-les pour leur |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
    .dungeon WC
step
    #optional
    #completewith LostmyWife
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith Nest
    >>Tuez les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r et leur |cRXP_LOOT_Feathers|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Tuez |cRXP_ENEMY_Verog|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Il a une chance d'apparaître à chaque fois qu'un |cRXP_ENEMY_Kolkar|r meurt|r
    >>Sur un serveur à la population élevée ou qui vient de démarrer, votre meilleure option est de camper l'endroit où il apparaît
    >>Passez cette étape si vous n'arrivez pas à le trouver
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Ramassez le |cRXP_PICK_Stolen Silver|r sur le sol
    .complete 3281,1 --Stolen Silver (1)
step
    .goto The Barrens,52.60,46.10
    >>Cliquez sur le |cRXP_PICK_Blue Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Cliquez sur le |cRXP_PICK_Red Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Cliquez sur le |cRXP_PICK_Yellow Raptor Nest|r. Tuez plus de |cRXP_ENEMY_Sunscale Scytheclaws|r si vous n'avez pas de [Plume solécaille]
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Finissez de tuer les |cRXP_ENEMY_Sunscale Scytheclaws|r. Dépouillez-les pour leur |cRXP_LOOT_Horns|r
    >>Faites attention comme ils lancent [Rosser] (charge 2 attaques supplémentaires toutes les 10 secondes)
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Beaten Corpse|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
	>>Tuez |cRXP_ENEMY_Lakota'mani|r. Dépouillez-le pour sa [|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Hoof of Lakota'mani|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape si vous n'arrivez pas à le trouver
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acceptez la quête Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>Tuez les |cRXP_ENEMY_Stormsnouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r. Ceci n'a pas à être complété maintenant
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label CampTArrive
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> Voyagez au Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Acceptez la quête Tribus en guerre
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Volez à la Croisée
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Rendez la quête Disparition au combat
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Rendez la quête Source de vie
    .accept 1489 >>Acceptez la quête Hamuul Totem-runique
    .accept 3301 >>Acceptez la quête Mura Runetotem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Rendez la quête Les Faucheurs furieux
    .accept 3261 >>Acceptez la quête Jorn Œil-des-cieux
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Rendez la quête Argent volé
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Rendez la quête Disparition au combat
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Rendez la quête L'oasis stagnante
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Rendez la quête Les Faucheurs furieux
    .accept 3261 >>Acceptez la quête Jorn Œil-des-cieux
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Rendez la quête Argent volé
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon !WC
step
    #label Xroadsturnins2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Rendez la quête Verog le Derviche
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Acceptez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith BloodFeeders
    .zone Stonetalon Mountains >>Voyagez jusqu'au Serres-Rocheuses
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >>Acceptez la quête Les invasions gobelines
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Acceptez la quête Vengez mon village !
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .maxlevel 20
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >>Rendez la quête Les esprits des Serres-Rocheuses
    .accept 1062 >>Acceptez la quête Les invasions gobelines
    .target +Seereth Stonebreak
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Tuez les |cRXP_ENEMY_Grimtotem Ruffians|r et les |cRXP_ENEMY_Grimtotem Mercenaries|r dans la zone
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >>Rendez la quête Vengez mon village !
    .accept 6629 >>Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >>Acceptez la quête Tuer Grundig Noir-nuage
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith BloodFeeders
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Montez le chemin sur la gauche
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Rendez la quête Des nouvelles de Dogran
    .accept 1511 >>Acceptez la quête Breuvage de Ken'zigla
    .target Ken'zigla
step
    #label BloodFeeders
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acceptez la quête Suceurs de sang
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Montez le chemin jusqu'au bûcher
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Tuez |cRXP_ENEMY_Grundig Darkcloud|r et |cRXP_ENEMY_Grimtotem Brutes|r
    >>Tuez bien les 6 |cRXP_ENEMY_Grimtotem Brutes|r avant de commencer la quête à l'intérieur
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Acceptez la quête Protéger Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escortez |cRXP_FRIENDLY_Kaya|r et restez proche d'elle
    >>Faites attention ! Trois |cRXP_ENEMY_Grimtotems|r vont apparaître lorsque vous aurez atteint le bûcher au Camp Aparaje
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Tuez tous les |cRXP_ENEMY_Deepmoss Creeper|r que vous voyez
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 6284 >>Acceptez la quête Arachnophobie
step
    #completewith Besseleth1
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r et les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
step
    #completewith next
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Tuez |cRXP_ENEMY_Besseleth|r. Dépouillez-la pour sa |cRXP_LOOT_Fang|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Tuez les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Voyagez vers |cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Rendez la quête Ziz Fizzik
    .accept 1093 >>Acceptez la quête Super-Découpeur 6000
    .target Ziz Fizziks
step
    #completewith BluePrints
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #completewith BluePrints
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Tuez les |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez une|r [Hache de bataille] |cRXP_BUY_à Veenix|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +Équipez la [Hache de bataille]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Achetez une|r [Epée longue] |cRXP_BUY_à Veenix.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Operators|r. Dépouillez-les pour leur |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Ramassez les |cRXP_PICK_Spider Eggs|r près des arbres
    >>Faites attention ! The |cRXP_ENEMY_Deepmoss Hatchlings|r ont une chance d'invoquer un |cRXP_ENEMY_Deepmoss Matriarch|r de niveau 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_Si vous avez plus de 15 |cRXP_LOOT_Deepmoss Eggs|r, enlevez le surplus que vous avez dans ce stack (shift click), puis détruisez-les
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Rendez la quête Super-Découpeur 6000
    .accept 1094 >> Acceptez la quête D'autres instructions
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Finissez de tuer les |cRXP_ENEMY_Deepmoss Creepers|r
    >>Gardez toutes les [Petites glandes à venin] que vous récupérez << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 5221 >>Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Byula
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Rendez la quête Jorn Œil-des-cieux
    .accept 882 >>Acceptez la quête Ishamuhale
    .target Jorn Skyseer
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Rendez la quête Breuvage de Ken'zigla
    .accept 1515 >>Acceptez la quête La captivité de Dogran
    .target Grunt Logmar
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Acceptez la quête Tribus en guerre
    .target Mangletooth
step << Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Quilboars Dos-hirsutes|r. Ramassez-les pour leurs |cRXP_LOOT_Défenses|r
    >>Gardez tous les [|cRXP_LOOT_Joyau de sang|r] que vous récupérez
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Rendez la quête La captivité de Dogran
    .accept 1512 >>Acceptez la quête Le cadeau de l'amour
    .target Grunt Dogran
step
    #loop
    .goto The Barrens,45.16,53.98,0
    .goto The Barrens,44.85,51.73,0
    .goto The Barrens,43.32,48.08,0
    .goto The Barrens,40.91,45.33,0
    .goto The Barrens,43.40,52.22,0
    .goto The Barrens,43.00,55.21,0
    .goto The Barrens,45.16,53.98,60,0
    .goto The Barrens,44.85,51.73,60,0
    .goto The Barrens,43.32,48.08,60,0
    .goto The Barrens,40.91,45.33,60,0
    .goto The Barrens,43.11,48.70,60,0
    .goto The Barrens,43.40,52.22,60,0
    .goto The Barrens,43.00,55.21,60,0
    >>Tuez les |cRXP_ENEMY_Quilboars Dos-hirsutes|r. Ramassez-les pour leurs |cRXP_LOOT_Défenses|r
    >>Gardez tous les [|cRXP_LOOT_Joyau de sang|r] que vous récupérez
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Tuez les |cRXP_ENEMY_Stormstouts|r. Dépouillez-les pour une |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    .goto The Barrens,44.55,59.27
    >>Tuez les |cRXP_ENEMY_Hurans Dos-hirsute|r. Dépouillez-les pour un |T134128:0|t|cRXP_LOOT_Joyau de sang|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Rendez la quête Tribus en guerre
    .accept 5052 >>Acceptez la quête Joyaux de sang d'Agamaggan
    .turnin 5052 >>Rendez la quête Joyaux de sang d'Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>Utilisez vos [|cRXP_LOOT_Blood Shards|r pour obtenir [L'esprit des vents] de |cRXP_FRIENDLY_Mangletooth|r
    >>Passez cette étape si vous pouvez voler jusqu'à Thunder Bluff
    .itemcount 5075,10
    .train 5118,1 << Hunter --skip step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << skip
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval
    .target Jorn Skyseer
step << !Tauren
    #completewith Zamah
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Voyagez jusqu'à Mulgore
    .zoneskip Thunder Bluff
step << !Tauren
    #completewith Zamah
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Prenez l'ascenseur pour aller à Thunder Bluff
step << Tauren
    #completewith Zamah
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    #completewith TBvisit1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager des Pitons Rôdeur-du-vent|r
	>>|cRXP_WARN_Il patrouille les terrasses, donc vous devrez peut-être le chercher aux alentours|r
    .accept 742 >>Acceptez la quête La Chasse d'Orneval
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step << !Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Voyagez à la Cime des Anciens
    .dungeon WC << !Druid
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Rendez la quête Hamuul Totem-runique
    .accept 1490 >> Acceptez la quête Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Rendez la quête Nara Crin-sauvage
    .accept 914 >> Acceptez la quête Les druides du Croc
    .target Nara Wildmane
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .trainer >> Apprenez vos sorts de classe
    .accept 27 >> Acceptez la quête Une leçon à apprendre
    .target Turak Runetotem
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Rendez la quête Rapporter la sacoche perdue
    .turnin 5723 >>Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Rendez la quête Rapporter la sacoche perdue
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Rendez la quête Tester la force de l'ennemi
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clarice|r
    >>Elle patrouille dans les alentours
    .accept 264 >> Acceptez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acceptez la quête Fleur de serpent
    .target Apothecary Zamah
    .dungeon WC
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 14914 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <20,1
    .xp >22,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 8103 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <22,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <22,1
step
    #label Zamah
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clarice|r
    >>Elle patrouille dans les alentours
    .accept 264 >> Acceptez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Acceptez la quête L'appel de l'eau
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> Fabriquez des [Bandages épais en lin] jusqu'à ce que votre compétence de [Premiers soins] soit de 80 ou plus
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    >>Passez cette étape si vous n'avez pas assez d'Etoffe de lin pour atteindre un niveau de compétence de 80
    .train 3277 >> Apprenez [Bandage en laine]
    .train 7934 >> Apprenez [Anti-Venin] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>Fabriquez un [Anti-venin] si vous avez trouvé des [Petites glandes à venin]
    >>Gardez-les pour plus tard
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Voyagez au sommet du chasseur
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .accept 1131 >> Acceptez la quête Broie-l'acier
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 845 >> Apprenez vos sorts de classe
    .accept 1823 >> Acceptez la quête Parler à Ruga
    .target Torm Ragetotem
step
    #label TBvisit1
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acceptez la quête La flamme sacrée
    .target Zangen Stonehoof
step
    #loop
    .goto Thunder Bluff,41.54,57.87,70,0
    .goto Thunder Bluff,52.76,62.07,30,0
    .goto Thunder Bluff,55.63,50.08,70,0
    .goto Thunder Bluff,41.54,57.87,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager des Pitons Rôdeur-du-vent|r
	>>|cRXP_WARN_Il patrouille les terrasses, donc vous devrez peut-être le chercher aux alentours|r
    .accept 742 >>Acceptez la quête La Chasse d'Orneval
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >> Volez à Ratchet
    .target Tal
    .zoneskip The Barrens
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r et |cRXP_FRIENDLY_Mebok|r
    .turnin 1094 >>Rendez la quête D'autres instructions
    .accept 1095 >>Acceptez la quête D'autres instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Rendez la quête Les cornes de raptors
    .turnin 1069 >>Rendez la quête Omelette à la mousse profonde
    .accept 1491 >>Acceptez la quête Les potions d'intelligence
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Ratchet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Achetez le [|cRXP_FRIENDLY_Mighty Chain Pants|r] à Grazlix si il est disponible
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Achetez-lui des [|cRXP_FRIENDLY_Wolf Bracers|r] si il en a en stock
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +Équipez le [|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +Équipez les [|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drohn|r
    .turnin 821 >>Rendez la quête Tonneau vide de Chen
    .target Brewmaster Drohn
    .isQuestComplete 821
step << Rogue
    .goto The Barrens,65.04,45.44
    +Sautez sur le bateau, descendez au second étage et montez votre compétence de crochetage jusqu'à au moins 70
    .skill lockpicking,70,1
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Maintenant vous devriez chercher un groupe pour la Caverne des Lamentations
    .dungeon WC
step
    #completewith next
    >>Tuez n'importe quel |cRXP_ENEMY_Zhevra|r. Dépouillez-le pour une |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>Utilisez la [|cRXP_LOOT_Fresh Zhevra Carcass|r] à l'arbre mort pour invoquer |cRXP_ENEMY_Ishamuhale|r. Tuez-le et dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>La Carcasse ne dure que 30 minutes !
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #label FlytoXroads
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Volez à la Croisée
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >> Rendez la quête Consumé par la haine
    .target Mankrik
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acceptez la quête La chasse aux œufs
    .target Korran
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>Détruisez les [Défenses de huran Dos-hirsute], vous n'en avez plus besoin
step
    #completewith IshamuhaleTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .subzoneskip 378
    .target Devrak
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .turnin 883 >>Rendez la quête Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Rendez la quête Ishamuhale
    .accept 907 >>Acceptez la quête Les lézards-tonnerre enragés
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    >>Tuez les |cRXP_ENEMY_Thunder Lizards|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Rendez la quête Les lézards-tonnerre enragés
    .accept 913 >>Acceptez la quête Le cri du faucon-tonnerre
    .target Jorn Skyseer
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Owatanka|r. Dépouillez-le pour sa r [|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Owatanka's Tailspike|r] pour commencer la quête|r
    >>Il a 4 possibles points d'apparition (marqués sur la carte)
    >>Passez cette étape pour l'instant si vous n'arrivez pas à le trouver
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Tuez un |cRXP_ENEMY_Thunderhawk Hatchling|r ou un |cRXP_ENEMY_Thunderhawk Cloudscraper|r. Dépouillez-le pour ses |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Rendez la quête Owatanka
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Rendez la quête Le cri du faucon-tonnerre
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .target Jorn Skyseer
step
    #loop
    #label Hezrul
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    >>Trouvez et tuez |cRXP_ENEMY_Hezrul Bloodmark|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrouille autour du lac|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >> Voyagez vers la Caverne des Lamentations
    .subzoneskip 718
    .isOnQuest 1491
step
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Montez la montagne à la pierre de rencontre de la Caverne des Lamentations
    >>Suivez la flèche méticuleusement pour atteindre la grotte cachée
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .accept 1486 >>Acceptez la quête Les peaux de déviants
    .target Nalpak
    .maxlevel 22
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    >>Ils sont situés au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #optional
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
step
    #completewith EnterWC
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
step
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>Il est camouflé et peut apparaître à plusieurs endroits
    >>|cRXP_WARN_Il met beaucoup de temps avant de réapparaître. Passez cette étape si vous n'arrivez pas à le trouver|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .maxlevel 23
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Entrez dans le portail pour les Cavernes des lamentations
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>|cRXP_WARN_Il est recommandé qu'au maximum 3 joueurs fassent cette quête si vous ne faites le donjon qu'une seule fois. Il n'y a pas assez de|r |cRXP_PICK_Fleur de serpent|r |cRXP_WARN_pour tout le monde|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
    .dungeon WC
step
    #completewith GlowingShard
    >>Tuez les |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r et les |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r et |cRXP_ENEMY_Lord Serpentis|r. Dépouillez-les pour leur |cRXP_LOOT_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Disciple of Naralex|r à l'entrée des Cavernes des lamentations. Escortez-le jusqu'à |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Une fois que vous avez atteint |cRXP_FRIENDLY_Naralex|r vous allez être attaqué par deux vagues d'ennemis et ensuite par |cRXP_ENEMY_Mutanus the Devourer|r
    >>Tuez le et dépouillez-le pour la [|cRXP_LOOT_Glowing Shard|r] et utilisez-la pour commencer la quête
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Tuez les |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r et les |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +Le reste de ces quêtes peuvent être finies à l'extérieur du portail pour les Cavernes des lamentations
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
    .maxlevel 23
    .dungeon !WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tuez les |cRXP_ENEMY_Deviate Beasts|r. Dépouillez-les pour leur |cRXP_LOOT_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
    .dungeon WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tuez les |cRXP_ENEMY_Ectoplasms|r. Dépouillez-les pour leur |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Lancez [Découverte d'herbes] pour les voir sur votre minicarte
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Cueillez les |cRXP_PICK_Serpentbloom|r sur le sol
    >>Cette quête peut être passée si il y a trop de compétition
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ratchet
    .use 6948
    .cooldown item,6948,>2,1
    .bindlocation 392,1
    .subzoneskip 392
    .dungeon WC
step
    #optional
    #completewith GShard
    .subzone 392 >>Utilisez la technique de "ghetto hearth" dans les Cavernes des lamentations
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> Appuyez ici pour copier/coller cette macro une fois que vous êtes à l'intérieur des Cavernes des lamentations pour retourner à Ratchet (ghetto hearth)
    .cooldown item,6948,<0
    .bindlocation 392,1
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Rendez la quête Les potions d'intelligence
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Volez à la Croisée
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Montez la montagne
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Acceptez la quête Au coeur des cauchemars
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ebru|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #label WCTurnins
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r
    >>Il est situé au dessus de l'entrée de la grotte pour la Caverne des Lamentations
    .turnin 1486 >>Rendez la quête Les peaux de déviants
    .target Nalpak
    .isQuestComplete 1486
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Rendez la quête Hezrul Marque-de-sang
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acceptez la quête La contre-attaque !
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
    .group 2
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Tuez |cRXP_ENEMY_Warlord Krom'zar|r lorsqu'il apparaît. Ramassez la |cRXP_PICK_Banner|r qu'il laissera sur le sol
    >>Faites attention ! C'est un Elite fort et protégé par au moins deux |cRXP_ENEMY_Kolkar|r
    >>Il a un temps de réapparition qui peut durer jusqu'à 3 minutes
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
    .group 2
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Rendez la quête La contre-attaque !
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
    .zoneskip Stonetalon Mountains
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Rendez la quête Tuer Grundig Darkcloud
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r et |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>Rendez la quête Protéger Kaya
    .accept 6401 >>Acceptez la quête Kaya est en vie
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #label STMturnins1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Rendez la quête Les invasions gobelines
    .timer 4,Les invasions gobelines RP
    .accept 1063 >>Acceptez la quête L'Ancienne
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Montez le chemin sur la gauche
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Rendez la quête Suceurs de sang
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Voyagez jusqu'à la Retraite des Roche-Soleil
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Jayka|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeeda|r au deuxième étage de l'auberge
    .vendor >>|cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si elle en a en stock|r << !Warrior
    .vendor >>|cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_et des|r [Viétérule] |cRXP_BUY_si elle en a en stock|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
    .accept 5881 >> Acceptez la quête Puiser dans les réserves
    .target Maggran Earthbinder
    .xp <23,1
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Rendez la quête Arachnophobie
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Rendez la quête Kaya est en vie
    .target Tammra Windfield
    .isOnQuest 6401
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Prenez le chemin de vol de la Retraite de Roche-Soleil
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Montez le chemin à droite
step
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acceptez la quête Problèmes dans les profondeurs
    .target Tsunaman
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Rendez la quête D'autres instructions
    .target Ziz Fizziks
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entrez dans la Perce des Serres
step
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Voyagez à l'Avant-poste de Zoram'gar
    .subzoneskip 2897
    >>Faites attention à éviter les gardes d'Astranaar sur la route. Suivez le point de repère pour rester en sécurité
    .unitscan Astranaar Sentinel
step
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Prenez le chemin de vol de l'Avant-poste de Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Rendez la quête Problèmes dans les profondeurs
    .accept 6563 >>Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >>Acceptez la quête Parmi les ruines
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acceptez la quête Charme troll
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acceptez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r et |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Rendez la quête Problèmes dans les profondeurs
    .accept 6563 >>Acceptez la quête L'Essence d'Aku'Mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acceptez la quête Entre un roc et un Crin-de-Chardon
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acceptez la quête Charme troll
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acceptez la quête Des nagas sur la grève de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte. Faites TRÈS attention! |cRXP_ENEMY_Vorsha|r frappe très fort|r
    .accept 6641,1 >> Acceptez la quête Vorsha la Flagellante
    .target Muglash
    .group 2
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
    .group 0
step
    .goto Ashenvale,9.63,27.63
    >>Cliquez sur le |cRXP_PICK_Brazier|r lorsque vous y arrivez
    >>Il y aura des vagues de |cRXP_ENEMY_Naga|r qui vont apparaître. Faites attention une fois que |cRXP_ENEMY_Vorsha|r arrive, il frappe très fort
    .complete 6641,1 --Defeat Vorsha the Lasher
    .group 2
    .mob Vorsha the Lasher
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Maintenant vous devriez chercher un groupe pour faire les Profondeurs de Brassenoire
    .dungeon BFD
step
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Voyagez jusqu'à l'entrée des Profondeurs de Brassenoire
step
    #completewith next
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tuez les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour une [|cRXP_LOOT_Damp Note|r] et utilisez-la pour commencer la quête
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acceptez la quête Allégeance aux Dieux très anciens
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionnellement parlez à|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_à Avant-poste de Zoram'gar pour obtenir une autre quête de suivi BFD|r
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .accept 6565 >>Acceptez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .accept 6561 >>Acceptez la quête L'infamie de Brassenoire
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Tuez |cRXP_ENEMY_Lorgus Jett |r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    >>La ramasser va faire apparaître le |cRXP_ENEMY_Baron Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tuez le |cRXP_ENEMY_Baron Aquanis|r. Dépouillez-le pour un [|cRXP_LOOT_Strange Water Globe|r]. Utilisez-le pour prendre la quête
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acceptez la quête Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tuez|cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Quittez le donjon
    >>Tuez |cRXP_ENEMY_Aku'mai|r en premier si vous le voulez. C'est le dernier boss du donjon
    .dungeon BFD
step
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Rendez-vous à Avant-poste de Zoram'gar
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Rendez la quête Vorsha la Flagellante
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Rendez la quête Des nagas sur la grève de Zoram
    .target Marukai
    .isQuestComplete 6641
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Rendez la quête L'Essence d'Aku'Mai
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Rendez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Rendez la quête Baron Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step
    #completewith Zoram2
    .subzone 2897 >>Rendez-vous à Avant-poste de Zoram'gar
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Rendez la quête Vorsha la Flagellante
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Rendez la quête Des nagas sur la grève de Zoram
    .target Marukai
    .isQuestComplete 6641
step
    #label Zoram2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Rendez la quête L'Essence d'Aku'Mai
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Rendez la quête Une leçon à apprendre
    .accept 28 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Récupérez le |cRXP_PICK_Bauble Container|r au fond du lac pour un [|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_Ne plongez pas dans l'eau avant d'arriver en haut du Colifichet|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> Utilisez le [Colifichet du sanctuaire] au sanctuaire de Remulos
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Rendez la quête L'épreuve du lac
    .accept 30 >> Acceptez la quête L'épreuve du lion de mer
    .target Tajarri
step
    #completewith JourneytoTM
    .destroy 16784>>|cRXP_WARN_Supprimez vos|r |T134133:0|t[|cRXP_LOOT_Saphir d'Aku'Mai|r] |cRXP_WARN_restants puisqu'ils ne sont plus nécessaires|r
step
    #completewith JourneytoTM
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Voyagez à la Cime des Anciens
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Rendez la quête L'Ancienne
    .accept 1064 >>Acceptez la quête L'aide des Réprouvés
    .timer 6,L'Ancienne RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Rendez la quête Les druides du Croc
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Rendez la quête Au coeur des cauchemars
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bashana Totem-runique|r
    .turnin 6561 >>Rendez la quête L'infamie de Brassenoire
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r aux bassins des visions
    .turnin 1064 >>Rendez la quête L'aide des Réprouvés
    .accept 1065 >>Acceptez la quête Un voyage vers Moulin-de-Tarren
    .target Apothecary Zamah
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r aux bassins des visions
    .turnin 962 >>Rendez la quête Fleur de serpent
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    --.dungeon WC
step
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Volez à Ratchet
    .target Tal
    .zoneskip The Barrens
    .dungeon !WC << !Shaman
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Rendez la quête Les potions d'intelligence
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon !WC
step
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1529 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 1528 >>Rendez la quête L'appel de l'eau
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r et |cRXP_FRIENDLY_Mahren Skyseer|r
    .accept 1530 >>Acceptez la quête L'appel de l'eau
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Bragok
    .subzoneskip 378
step << skip --Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Rendez la quête L'appel de l'eau
    .accept 1535 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> Remplissez votre [Outre marron vide] au point d'eau près de la hutte de Brine
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Rendez la quête L'appel de l'eau
    .accept 1536 >>Acceptez la quête L'appel de l'eau
    .target Brine
step << Shaman
    #completewith FlyOrg
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Retournez au Camp Taurajo
    .subzoneskip 378
    .cooldown item,6948,<0
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Druid !Shaman
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    --.dungeon !WC
step << !Shaman
    #optional
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .zoneskip Orgrimmar
    --.dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Rendez la quête Le cadeau de l'amour
    .accept 1513 >>Acceptez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>Utilisez le [Pendentif de Dogran] au cercle d'invocation
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Tuez la |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Rendez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Achetez une|r [Jambiya] |cRXP_BUY_à Kareth si vous n'avez pas de dague|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Apprenez [Vol à la tire]
    .train 8676 >> Apprenez [Embuscade]
    .train 1943 >> Apprenez [Rupture]
    .train 1856 >> Apprenez [Disparition]
    .train 1725 >> Apprenez [Distraction]
    .train 1785 >> Apprenez [Camouflage Rang 2]
    .accept 2460 >>Acceptez la quête Le Salut brisé
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Après que |cRXP_FRIENDLY_Shenthul|r ait fait son salut, écrivez /salut en le ciblant
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Rendez la quête Le Salut brisé
    .accept 2458 >>Acceptez la quête Sous le couvert de la nuit
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre éclipsante] |cRXP_BUY_à Rekkul|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette ardente] |cRXP_BUY_à Katis|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Thuul|r tout en haut de la hutte
    .train 3567 >> Apprenez [Téléportation: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Entrez dans les Tarides par la sortie à l'ouest
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen (NOT TRANSLATED IN :frFR YET)
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Ouvrez la |cRXP_PICK_Strange Lockbox|r dans l'eau pour le [|cRXP_LOOT_Half Pendant of Aquatic Agility|r]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Ciblez |cRXP_FRIENDLY_Taskmaster Fizzule|r, puis utilisez votre [Lance-fusée] DEUX FOIS et écrivez /salut
    >>Faites attention ! Ne l'approchez PAS avant qu'il ne devienne amical ou il vous attaquera !
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Rendez la quête Sous le couvert de la nuit
    .accept 2478 >>Acceptez la quête Mission : Possible mais non probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Utilisez [Vol à la tire] sur |cRXP_ENEMY_Foreman Silixiz|r pour sa |cRXP_LOOT_Tower Key|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +Chaque ennemi ici prendra des dégâts augmentés contre certaines compétences
    >>Utilisez [Embuscade] sur les |cRXP_ENEMY_Mutated Venture Co. Drones|r
    >>Utilisez [Rupture] sur les |cRXP_ENEMY_Venture Co. Patrollers|r
    >>Utilisez [Eviscération] sur les |cRXP_ENEMY_Venture Co. Lookouts|r une fois (1 point de combo)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Entrez dans la Tour des Voleurs et tuez les |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r et les |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Au sommet de la tour vous trouverez |cRXP_ENEMY_Gallywix|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Utilisez [Embuscade] pour réduire ses PV de moitié. Utilisez [Suriner] pour récupérer votre énergie et utilisez [Évasion]
	>>N'oubliez pas d'utiliser une Potion et un [Thé aux chardons] si nécessaire
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Utilisez votre vol à la tire et ouvrez la |cRXP_PICK_Gallywix's Lockbox|r et récupérez la |cRXP_LOOT_Mixture|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Entrez dans Orgrimmar par l'entrée à l'ouest
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Rendez la quête Mission : Possible mais non probable
    .accept 2479 >>Acceptez la quête L'aide d'Hinott
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Achetez des |r [Poudre éclipsante] |cRXP_BUY_à Rekkul|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Trak'gen|r
    .collect 25875,1,493,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>Si vous avez un [Anti-Venin], utilisez-le pour vous guérir du [Toucher de Zanzil]
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >> Détruisez le [Lance-fusée] de vos sacs, vous n'en aurez plus besoin
    .destroy 8066 >> Détruisez le [Sifflet de Fizzule] de vos sacs, il n'est plus nécessaire
step << skip --!Shaman
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryshka l'aubergiste|r
    .home >> Liez votre Pierre de foyer à Orgrimmar
	.target Innkeeper Gryshka
    .bindlocation 1637
    .train 3567,1 << Mage --Skips if Teleport Orgrimmar is trained
step << !Mage
    .goto Orgrimmar,49.1,94.5,30 >>Quittez Orgrimmar
    .zoneskip Durotar
step
    #optional
    #label BarrensEnd
step
    #optional
    .abandon 1486 >>Abandonnez la quête Les peaux de déviants
step
    #optional
    .abandon 1487 >>Abandonnez la quête L'éradication des déviants
step
    #optional
    .abandon 914 >>Abandonnez la quête Les druides du Croc
step
    #optional
    .abandon 855 >>Abandonnez la quête Les bracelets de centaures
step
    #optional
    .abandon 959 >>Abandonnez la quête Fuite de porto aux docks
step
    #optional
    .abandon 1491 >>Abandonnez la quête Les potions d'intelligence


]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 24-25 Contreforts d'Hillsbrad
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 25-27 Tarides du Sud

step
    #sticky
    #completewith EnterSFK
    .subzone 209,2 >> Maintenant vous devriez chercher un groupe pour faire le Donjon d'Ombrecroc
    .dungeon SFK
step << !Mage
    #optional
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Quittez Orgrimmar
    .zoneskip Durotar
step << !Mage
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
    .dungeon SFK
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .dungeon SFK
step << Mage
    #completewith JourneytoHillsbrad
    .cast 3563 >>Lancez [Téléportation : Undercity]
    .zoneskip Undercity
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Undercity
    .target Michael Garrett
    .isQuestAvailable 9621 << BloodElf
    .isQuestAvailable 9812 << !BloodElf
    --fp not picked up yet if Barrens guide was chosen instead of Ghostlands
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bel'dugur|r
    .accept 1013 >>Acceptez la quête Le Livre d'Ur
    .target Keeper Bel'dugur
    .dungeon SFK
step
    #completewith JourneytoHillsbrad
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Silverpine Forest
    .dungeon SFK << !Mage
step
    #completewith next
    .goto Silverpine Forest,66.69,5.09,80,0
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
step << Druid
    #completewith next
    .goto Silverpine Forest,36.12,28.30,120 >> Voyagez au nord-est vers La Grande Mer
step << Druid
    .goto Silverpine Forest,29.58,29.30
    >>Ouvrez les |cRXP_PICK_Strange Lockbox|r dans l'eau pour le [|cRXP_LOOT_Half Pendant of Aquatic Endurance|r]
    .collect 15882,1,30,1 --Half Pendant of Aquatic Agility (1)
step
    #completewith JourneytoHillsbrad
    .subzone 228 >>Voyagez au Sépulcre
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Get Les Sepulcher flight path
    .target Karos Razok
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .accept 1014 >>Acceptez la quête Arugal doit mourir
    .target Dalar Dawnweaver
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,40.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renferrel|r
    .accept 493 >> Acceptez la quête Voyage jusqu’aux contreforts d'Hillsbrad
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadrec|r en bas dans la crypte
    .accept 1098 >>Acceptez la quête Des nécrotraqueurs à Ombrecroc
    .target High Executor Hadrec
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,41.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mura|r
    .turnin 3301 >> Rendez la quête Mura Runetotem
    .target Mura Runetotem
    .isOnQuest 3301
    .dungeon WC << !Warrior !Shaman
step
    #label JourneytoHillsbrad
    .goto Silverpine Forest,44.18,42.68
    >>Interagissez avec la |cRXP_PICK_Yuriv's Tombstone|r sur le sol
    .turnin 264 >> Rendez la quête Jusqu'à ce que la mort nous sépare
    .target Clarice Foster
    .isOnQuest 264
step
    #label EnterSFK
    .goto Silverpine Forest,44.87,67.86
    .subzone 209,2 >> Entrez le portail de l'instance du Donjon d'Ombrecroc
    .dungeon SFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vincent|r
    .turnin 1098 >> Rendez la quête Des nécrotraqueurs à Ombrecroc
    .target Deathstalker Vincent
    .dungeon SFK
    .isOnQuest 1098
step
    >>Ramassez les |cRXP_PICK_Book of Ur|r des étagères dans la salle de |cRXP_ENEMY_Fenrus the Devourer|r
    .complete 1013,1 --Book of Ur(1)
    .dungeon SFK
    .isOnQuest 1013
step
    >>Tuez |cRXP_ENEMY_Archmage Arugal|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 1014,1 --Head of Arugal (1)
    .mob Archmage Arugal
    .dungeon SFK
    .isOnQuest 1014
step
    #completewith SFKTurnins
    .goto Silverpine Forest,45.51,41.26,150,0
    .subzone 228 >>Voyagez au Sépulcre
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadrec|r
    .turnin 1098 >>Rendez la quête Des nécrotraqueurs à Ombrecroc
    .target High Executor Hadrec
    .dungeon SFK
    .isQuestComplete 1098
step
    #label SFKTurnins
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 1014 >>Rendez la quête Arugal doit mourir
    .target Dalar Dawnweaver
    .dungeon SFK
    .isQuestComplete 1014
step
    #completewith next
    .zone Hillsbrad Foothills >> Voyagez aux Contreforts d'Hillsbrad
    .zoneskip Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Traqueur noir Lesh|r
    .accept 494 >> Acceptez la quête Prêts à frapper
    .target Deathstalker Lesh
step
    #completewith next
    .goto Hillsbrad Foothills,62.06,20.19,120 >> Voyagez à Moulin-de-Tarren
    .subzoneskip 272
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarise|r
    .fp Tarren Mill>> Prenez le chemin de vol de Moulin-de-Tarren
    .target Zarise
    .isQuestAvailable 498
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hinott|r
    .turnin 2479 >>Rendez la quête L'aide d'Hinott
    .accept 2480 >>Acceptez la quête L'aide d'Hinott
    .timer 30,L'aide d'Hinott RP
    .target Serge Hinott
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>Attendez que |cRXP_FRIENDLY_Hinott|r finisse le remède
    .complete 2480,1 --Cure Completed (1)
step << Rogue
    .goto Hillsbrad Foothills,61.64,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hinott|r
    .turnin 2480 >>Rendez la quête L'aide d'Hinott
    .target Serge Hinott
step << Rogue
    #completewith TarrenMillPickups
    .cast 10723 >>Utilisez l'[Huile d'Hinott] pour vous guérir du [Toucher de Zanzil]
step << Rogue
    #completewith TarrenMillPickups
    >>Fabriquez des [Poisons instantanés]
    .collect 6947,20,1067,1 --Collect Instant Poison (20)
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Lydon|r
    .turnin 1065 >> Rendez la quête Un voyage vers Moulin-de-Tarren
    .accept 1066 >> Acceptez la quête Le sang des innocents
    .turnin 493 >> Rendez la quête Voyage jusqu’aux contreforts d'Hillsbrad
    .accept 496 >> Acceptez la quête L'élixir de souffrance
    .accept 501 >> Acceptez la quête L'élixir de douleur
    .target Apothecary Lydon
step << Shaman
    .goto Hillsbrad Foothills,62.18,20.78
    .use 7768 >>Utilisez l'[Outre vide rouge] au puits au milieu de Moulin-de-Tarren
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 494 >> Rendez la quête Prêts à frapper
    .accept 527 >> Acceptez la quête La bataille de Hautebrande
    .target High Executor Darthalia
step << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duskingdawn|r
    .turnin 9425 >> Turn in Retournez à Moulin-de-Tarren
    .target Advisor Duskingdawn
step
    .goto Hillsbrad Foothills,62.64,20.76
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 549 >> Acceptez la quête ON RECHERCHE : Personnel du Syndicat
step
    .goto Hillsbrad Foothills,63.24,20.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krusk|r
    .accept 498 >> Acceptez la quête Sauvetage
    .target Krusk
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Achetez des|r [Flèches pointues] |cRXP_BUY_à Kayren|r
    .collect 2515,1800,549,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
step
    #label TarrenMillPickups
    .goto Hillsbrad Foothills,62.56,19.65
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 567 >> Acceptez la quête Dangereux !
step << skip --Mage
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shay l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Moulin-de-Tarren
	.target Innkeeper Shay
    .isQuestAvailable 498
    .bindlocation 272
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shay l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 498
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Achetez un|r [Couteau à lame large] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Hunter
    #completewith next
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Theodore|r
    .stable >> Déposez votre familier à l'étable. Vous allez dompter un |cRXP_ENEMY_Gray Bear|r et un |cRXP_ENEMY_Forest Most Creeper|r très bientôt
    .target Theodore Mont Claire
step << Hunter
    #loop
    .goto Hillsbrad Foothills,57.93,27.85,0
    .goto Hillsbrad Foothills,57.93,27.85,60,0
    .goto Hillsbrad Foothills,58.88,32.28,60,0
    .goto Hillsbrad Foothills,61.77,36.16,60,0
    .train 16829 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Gray Bear|r. Attaquez des mobs avec pour apprendre|r [Griffe (Rang 3)]
    .train 17263 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Forest Most Creeper|r. Attaquez des mobs avec pour apprendre|r [Morsure (Rang 3)]
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
    .mob Gray Bear
    .mob Forest Moss Creeper
step << Hunter
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Theodore|r
    .stable >> Abandonnez le |cRXP_ENEMY_Gray Bear|r ou le |cRXP_ENEMY_Forest Most Creeper|r et reprenez votre familier habituel
    .target Theodore Mont Claire
step << Rogue
    #completewith Durnholde1
    .cast 8679 >>Utilisez le [Poison instantané] sur vos armes
    .itemcount 6947,2
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Bears|r et les |cRXP_ENEMY_Spiders|r sur la route. Dépouillez-les pour leur |cRXP_LOOT_Tongues|r et leur|cRXP_LOOT_Ichor|r
    >>Évitez les |cRXP_ENEMY_Elder Gray Bears|r et les |cRXP_ENEMY_Giant Moss Creepers|r comme ils sont de haut niveau et ne sont pas rentables à tuer
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #label Durnholde1
    .goto Hillsbrad Foothills,76.57,46.48,120 >> Voyagez vers le Fort-de-Durn
    .isOnQuest 549,1066,498
step
    #completewith Drull
    >>Tuez les |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Watchmen|r, et les |cRXP_ENEMY_Shadow Mages|r.
    >>Dépouillez les |cRXP_ENEMY_Shadow Mages|r pour leur |cRXP_LOOT_Vials of Innocent Blood|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob +Syndicate Shadow Mage
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>Tuez |cRXP_ENEMY_Jailor Eston|r. Dépouillez-le pour sa |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_Il se trouve devant la caserne de |cRXP_FRIENDLY_Tog'thar|r ou devant|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #loop
    .goto Hillsbrad Foothills,79.45,40.57,0
	.goto Hillsbrad Foothills,77.99,40.19,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
	>>Tuez |cRXP_ENEMY_Jailor Marlgen|r. Dépouillez-le pour sa |cRXP_LOOT_Gold Key|r
    >>|cRXP_WARN_Il se trouve devant |cRXP_FRIENDLY_Tog'thar|r ou en bas de la tour|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>Cliquez sur le |cRXP_PICK_Ball and Chain|r sur le sol
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Achetez-lui les|r [|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_et les|r [|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_si ils sont disponibles|r
    .vendor >> Vendez et réparez
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_à Kris si elle en a en stock|r
    .vendor >> Vendez et réparez
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Achetez des|r [|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_à Kris si elle en a en stock|r
    .vendor >> Vendez et réparez
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +Équipez les [|cRXP_FRIENDLY_Stalking Pants|r] et les [|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
    .equip 7,1831
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +Équipez le [|cRXP_FRIENDLY_Stalking Pants|r]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
    .equip 9,4794
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +Équipez les [|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kris|r
    .vendor >> Vendez et réparez
    .target Kris Legace
    .isOnQuest 498
    .subzoneskip 275,1
step
    #loop
    .goto Hillsbrad Foothills,79.55,41.85,0
    .goto Hillsbrad Foothills,75.31,41.63,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    >>Tuez |cRXP_ENEMY_Jailor Eston|r. Dépouillez-le pour sa |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_Il se trouve devant la caserne de |cRXP_FRIENDLY_Tog'thar|r ou devant|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>Cliquez sur le |cRXP_PICK_Ball and Chain|r sur le sol
    .complete 498,1 --Rescue Drull (1)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Syndicate Rogues|r et les |cRXP_ENEMY_Syndicate Watchmen|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Tuez les |cRXP_ENEMY_Syndicate Shadow Mages|r. Dépouillez-les pour leur |cRXP_LOOT_Vials|r
    >>Vous pouvez en trouver plus à la tour au sud-ouest du fort
    .complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Shadow Mage
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Tuez les |cRXP_ENEMY_Syndicate Rogues|r et les |cRXP_ENEMY_Syndicate Watchmen|r
    >>Vous pouvez en trouver plus à la tour au sud-ouest du fort
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Spiders |r sur la route pour Moulin-de-Tarren. Dépouillez-les pour leur |cRXP_LOOT_Tongues|r et leur |cRXP_LOOT_Ichor|r
    >>Évitez les |cRXP_ENEMY_Elder Gray Bears|r et les |cRXP_ENEMY_Giant Moss Creepers|r comme ils sont de haut niveau et ne sont pas rentables à tuer
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #completewith next
    .subzone 272 >> Retournez à Moulin-de-Tarren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krusk|r et |cRXP_FRIENDLY_Darthalia|r
    .turnin 498 >> Rendez la quête Sauvetage
    .target +Krusk
    .goto Hillsbrad Foothills,63.24,20.65
    .turnin 549 >> Rendez la quête ON RECHERCHE : Personnel du Syndicat
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Achetez des|r [Flèches pointues] |cRXP_BUY_à Kayren|r
    .collect 2515,1800,501,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
    .itemcount 2515,<1000
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,501,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
    .itemcount 3030,<1000
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shay l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
	.target Innkeeper Shay
    .isOnQuest 527
    .subzoneskip 272,1
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r et |cRXP_FRIENDLY_Umpi|r
    .turnin 1066 >> Rendez la quête Le sang des innocents
    .turnin 496 >> Rendez la quête L'élixir de souffrance
    .accept 499 >> Acceptez la quête L'élixir de souffrance
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >> Rendez la quête L'élixir de souffrance
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r et |cRXP_FRIENDLY_Umpi|r
    .turnin 1066 >> Rendez la quête Le sang des innocents
    .accept 499 >> Acceptez la quête L'élixir de souffrance
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >> Rendez la quête L'élixir de souffrance
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r
    .turnin 1066 >> Rendez la quête Le sang des innocents
    .goto Hillsbrad Foothills,61.44,19.05
    .target Apothecary Lydon
step
    #optional
    #completewith FarmerRay
    .destroy 3499 >>Détruisez la [Clé en or bruni] de vos sacs, comme elle n'est plus nécessaire
step
    #optional
    #completewith FarmerRay
    .destroy 3467 >>Détruisez la [Clé en fer terne] de vos sacs, comme elle n'est plus nécessaire
step
	#completewith Fields1
    >>Tuez les |cRXP_ENEMY_Gray Bears|r et les |cRXP_ENEMY_Starving Mountain Lions|r. Dépouillez-les pour leur |cRXP_LOOT_Gray Bear Tongues|r et leur |cRXP_LOOT_Mountain Lion Blood|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob +Starving Mountain Lion
    .isOnQuest 496
step
	#completewith Fields1
    >>Tuez les |cRXP_ENEMY_Starving Mountain Lions|r. Dépouillez-les pour leur |cRXP_LOOT_Sang de lion des montagnes|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
    .isQuestTurnedIn 496
step
    #label Fields1
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >> Allez aux Champs d'Hillsbrad
    .isOnQuest 527
step
    #completewith FarmerRay
	>>Tuez les |cRXP_ENEMY_Hillsbrad Farmers|r et les |cRXP_ENEMY_Hillsbrad Farmhands|r dans les champs et à leurs alentours
    >>Faites attention. Les |cRXP_ENEMY_Hillsbrad Farmers|r peuvent vous lancer [Désarmement] << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
    #loop
    .goto Hillsbrad Foothills,36.7,39.4,0
    .goto Hillsbrad Foothills,35.2,37.6,0
    .goto Hillsbrad Foothills,35.1,41.0,0
    .goto Hillsbrad Foothills,36.7,39.4,30,0
    .goto Hillsbrad Foothills,35.2,37.6,30,0
    .goto Hillsbrad Foothills,35.1,41.0,30,0
    >>Tuez |cRXP_ENEMY_Farmer Getz|r
    >>Il a trois endroits d'appartion. Dans la maison, dans la grande, ou dans le champ
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    #label FarmerRay
    #loop
    .goto Hillsbrad Foothills,33.28,34.65,0
    .goto Hillsbrad Foothills,33.65,35.44,30,0
    .goto Hillsbrad Foothills,32.90,35.23,10,0
    .goto Hillsbrad Foothills,33.23,34.65,10,0
    .goto Hillsbrad Foothills,32.69,34.77,8,0
    .goto Hillsbrad Foothills,32.88,34.99,8,0
    .goto Hillsbrad Foothills,33.28,34.65,8,0
    >>Tuez |cRXP_ENEMY_Farmer Ray|r
    >>Il peut apparaître en dehors des vignes ou au premier/deuxième étage de la maison
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
step
    #loop
    .goto Hillsbrad Foothills,31.30,37.08,0
    .goto Hillsbrad Foothills,31.30,37.08,40,0
    .goto Hillsbrad Foothills,33.81,40.91,40,0
    .goto Hillsbrad Foothills,35.49,40.36,40,0
	>>Tuez les |cRXP_ENEMY_Hillsbrad Farmers|r et les |cRXP_ENEMY_Hillsbrad Farmhands|r dans les champs et à leurs alentours
    >>Faites attention. Les |cRXP_ENEMY_Hillsbrad Farmers|r peuvent vous lancer [Désarmement] << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,54.77,28.72,0
	.goto Hillsbrad Foothills,39.79,34.43,60,0
	.goto Hillsbrad Foothills,38.70,36.71,60,0
	.goto Hillsbrad Foothills,38.45,38.77,60,0
	.goto Hillsbrad Foothills,39.88,40.56,60,0
	.goto Hillsbrad Foothills,37.97,44.59,60,0
	.goto Hillsbrad Foothills,39.92,45.83,60,0
	.goto Hillsbrad Foothills,40.91,44.23,60,0
	.goto Hillsbrad Foothills,42.56,40.19,60,0
	.goto Hillsbrad Foothills,43.36,39.38,60,0
	.goto Hillsbrad Foothills,51.28,35.37,60,0
	.goto Hillsbrad Foothills,54.29,31.75,60,0
	.goto Hillsbrad Foothills,52.93,29.45,60,0
	.goto Hillsbrad Foothills,54.77,28.72,60,0
    >>Finissez de tuer les |cRXP_ENEMY_Mountain Lions|r. Dépouillez-les pour leur |cRXP_LOOT_Blood|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
	#completewith TarrenMillTurnins2
    >>Tuez les |cRXP_ENEMY_Bears|r sur le retour pour le Moulin-de-Tarren. Dépouillez-les pour leur |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r et |cRXP_FRIENDLY_Samsa|r
    .turnin 496 >> Rendez la quête L'élixir de souffrance
    .accept 499 >> Acceptez la quête L'élixir de souffrance
    .turnin 501 >> Rendez la quête L'élixir de douleur
    .accept 502 >> Acceptez la quête L'élixir de douleur
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >> Rendez la quête La bataille de Hautebrande
    .accept 528 >> Acceptez la quête La bataille de Hautebrande
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >> Acceptez la quête Souvenirs de morts
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
    .accept 499 >> Acceptez la quête L'élixir de souffrance
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >> Rendez la quête L'élixir de souffrance
    .target Umpi
    .isQuestTurnedIn 496
step
    #label TarrenMillTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r et |cRXP_FRIENDLY_Samsa|r
    .turnin 501 >> Rendez la quête L'élixir de douleur
    .accept 502 >> Acceptez la quête L'élixir de douleur
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >> Rendez la quête La bataille de Hautebrande
    .accept 528 >> Acceptez la quête La bataille de Hautebrande
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >> Acceptez la quête Souvenirs de morts
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shay l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 528
    .subzoneskip 272,1
step
	#completewith next
    >>Tuez les |cRXP_ENEMY_Bears|r sur le chemin du retour pour les Champs d'Hillsbrad. Dépouillez-les pour leur |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >> Allez aux Champs d'Hillsbrad
    .isOnQuest 528
step
    #completewith Kalaba
    >>Tuez les |cRXP_ENEMY_Hillsbrad Humans|r. Dépouillez-les pour leur |cRXP_LOOT_Crâne|r
    >>Cette quête n'a pas à être terminée à ce moment
    .complete 546,1,17 --Hillsbrad Human Skull (30)
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stanley|r
    >>Attendez le RP, puis tuez |cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_ENEMY_Enraged Stanley|r donne l'équivalent d'une quête complète en expérience
    .turnin 502 >> Rendez la quête L'élixir de douleur
    .timer 9,Stanley RP (RESTEZ EN ALERTE)
    .mob Stanley
step
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    #loop
    .goto Hillsbrad Foothills,36.54,39.44,0
    .goto Hillsbrad Foothills,36.54,39.44,40,0
    .goto Hillsbrad Foothills,35.36,38.73,40,0
    .goto Hillsbrad Foothills,33.98,38.78,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.58,38.17,40,0
    .goto Hillsbrad Foothills,32.66,36.08,40,0
    .goto Hillsbrad Foothills,32.92,35.25,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.65,41.12,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,30.53,40.56,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.41,43.85,40,0
    .goto Hillsbrad Foothills,32.46,44.59,40,0
    .goto Hillsbrad Foothills,32.29,45.13,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    >>Tuez le |cRXP_ENEMY_Citizen Wilkes|r
    >>Il patrouille sur les routes de la ville
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stanley|r
    >>Attendez le RP, puis tuez |cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_ENEMY_Enraged Stanley|r donne l'équivalent d'une quête complète en expérience
    .turnin 502 >> Rendez la quête L'élixir de douleur
    .timer 9,Stanley RP (RESTEZ EN ALERTE)
    .mob Stanley
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>Tuez le |cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
step
    #loop
	.goto Hillsbrad Foothills,36.64,45.21,0
	.goto Hillsbrad Foothills,36.64,45.21,25,0
	.goto Hillsbrad Foothills,36.03,44.40,25,0
	.goto Hillsbrad Foothills,34.36,44.62,25,0
	.goto Hillsbrad Foothills,33.82,45.75,25,0
	.goto Hillsbrad Foothills,33.25,48.54,25,0
	.goto Hillsbrad Foothills,34.59,48.13,25,0
	.goto Hillsbrad Foothills,35.29,47.28,25,0
	.goto Hillsbrad Foothills,36.49,47.49,25,0
	>>Tuez les |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #loop
	.goto Hillsbrad Foothills,66.52,34.52,0
	.goto Hillsbrad Foothills,40.88,33.87,60,0
	.goto Hillsbrad Foothills,40.86,37.40,60,0
	.goto Hillsbrad Foothills,40.85,39.42,60,0
	.goto Hillsbrad Foothills,38.50,38.04,60,0
	.goto Hillsbrad Foothills,37.68,41.23,60,0
	.goto Hillsbrad Foothills,38.71,42.66,60,0
	.goto Hillsbrad Foothills,40.40,44.65,60,0
	.goto Hillsbrad Foothills,44.39,41.34,60,0
	.goto Hillsbrad Foothills,45.23,39.62,60,0
	.goto Hillsbrad Foothills,43.87,37.01,60,0
	.goto Hillsbrad Foothills,49.75,34.33,60,0
	.goto Hillsbrad Foothills,52.06,36.86,60,0
	.goto Hillsbrad Foothills,51.91,32.97,60,0
	.goto Hillsbrad Foothills,52.39,29.27,60,0
	.goto Hillsbrad Foothills,57.38,22.85,60,0
	.goto Hillsbrad Foothills,57.09,25.67,60,0
	.goto Hillsbrad Foothills,58.08,28.07,60,0
	.goto Hillsbrad Foothills,56.88,28.85,60,0
	.goto Hillsbrad Foothills,59.68,30.90,60,0
	.goto Hillsbrad Foothills,57.71,34.06,60,0
	.goto Hillsbrad Foothills,59.89,36.74,60,0
	.goto Hillsbrad Foothills,62.63,37.64,60,0
	.goto Hillsbrad Foothills,64.73,38.03,60,0
	.goto Hillsbrad Foothills,66.52,34.52,60,0
    >>Finissez de tuer les |cRXP_ENEMY_Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,62.85,38.74,0
	.goto Hillsbrad Foothills,62.85,38.74,60,0
	.goto Hillsbrad Foothills,62.24,39.96,60,0
	.goto Hillsbrad Foothills,60.92,37.92,60,0
	.goto Hillsbrad Foothills,59.62,33.33,60,0
	.goto Hillsbrad Foothills,56.88,29.73,60,0
	.goto Hillsbrad Foothills,59.80,27.72,60,0
	.goto Hillsbrad Foothills,57.63,24.16,60,0
	.goto Hillsbrad Foothills,56.47,16.42,60,0
	.goto Hillsbrad Foothills,59.36,14.55,60,0
	.goto Hillsbrad Foothills,60.54,13.67,60,0
	.goto Hillsbrad Foothills,62.65,12.90,60,0
	.goto Hillsbrad Foothills,64.43,10.22,60,0
	.goto Hillsbrad Foothills,65.18,6.93,60,0
	.goto Hillsbrad Foothills,65.31,5.76,60,0
	.goto Hillsbrad Foothills,66.90,9.02,60,0
	.goto Hillsbrad Foothills,70.39,8.89,60,0
	.goto Hillsbrad Foothills,68.86,10.18,60,0
	.goto Hillsbrad Foothills,67.35,12.95,60,0
	.goto Hillsbrad Foothills,71.38,19.81,60,0
	.goto Hillsbrad Foothills,71.78,21.89,60,0
	.goto Hillsbrad Foothills,64.85,24.92,60,0
	.goto Hillsbrad Foothills,66.68,28.15,60,0
	.goto Hillsbrad Foothills,69.76,31.89,60,0
	.goto Hillsbrad Foothills,67.62,37.65,60,0
	>>Finissez de tuer les |cRXP_ENEMY_Forest Moss Creepers|r et les |cRXP_ENEMY_Giant Moss Creepers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r et |cRXP_FRIENDLY_Darthalia|r
    .turnin 496 >> Rendez la quête L'élixir de souffrance
    .accept 499 >> Acceptez la quête L'élixir de souffrance
    .accept 1067 >> Acceptez la quête Le retour aux Pitons du Tonnerre
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >> Rendez la quête La bataille de Hautebrande
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r
    .accept 499 >> Acceptez la quête L'élixir de souffrance
    .target Apothecary Lydon
    .isQuestTurnedIn 496
step
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >> Rendez la quête L'élixir de souffrance
    .target Umpi
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lydon|r et |cRXP_FRIENDLY_Darthalia|r
    .accept 1067 >> Acceptez la quête Le retour aux Pitons du Tonnerre
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >> Rendez la quête La bataille de Hautebrande
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shay l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
	.target Innkeeper Shay
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Achetez des|r [Flèches pointues] |cRXP_BUY_à Kayren|r
    .collect 2515,1800 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .itemcount 2515,<1000
    .xp >25,1
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .itemcount 3030,<1000
    .xp <25,1
    .subzoneskip 272,1
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Achetez un|r [Couteau à lame large] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Druid
    #completewith AquaticFormQ
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1822 >>Apprenez vos sorts de classe
    .target Loganaar
    .xp <24,1
    .xp >26,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >>Apprenez vos sorts de classe
    .target Loganaar
    .xp <26,1
step << Druid
    .goto Moonglade,36.026,41.374
    >>Combinez les deux moitiés du pendentif au sanctuaire de Remulos pour le |cRXP_LOOT_Pendant of the Sea Lion|r
    .collect 15882,1,30,1,1
    .collect 15883,1,30,1,1
    .complete 30,1 --Pendant of the Sea Lion
    .itemcount 15882,1
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 30 >> Rendez la quête L'épreuve du lion de mer
    .accept 31 >> Acceptez la quête Forme aquatique
    .target Dendrite Starblaze
    .isQuestComplete 30
step << Druid
    #label AquaticFormQ
    #optional
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .accept 31 >> Acceptez la quête Forme aquatique
    .target Dendrite Starblaze
    .isQuestTurnedIn 30
step
    #label ThunderBluffHS
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
step
    #optional
    .abandon 1014 >>Abandonnez la quête Arugal doit mourir
    .dungeon SFK
step
    #optional
    .abandon 1098 >>Abandonnez la quête Des nécrotraqueurs à Ombrecroc
    .dungeon SFK

    ]])



RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 25-27 Tarides du Sud
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 27-29 Orneval

step << Shaman/Warrior
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .target Delgo Totem-de-Rage
step << Hunter
    #completewith HunterTraining26
    .goto Thunder Bluff,61.31,78.25,80 >> Voyagez au sommet du chasseur
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 14262 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <24,1
    .xp >26,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 3045 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <26,1
step << Hunter
    #label HunterTraining26
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24558 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
step << Druid
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Voyagez à la Cime des Anciens
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .trainer >> Apprenez vos sorts de classe
    .turnin 31 >> Rendez la quête Forme aquatique
    .target Turak Runetotem
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Achetez un|r [Arc long solide] |cRXP_BUY_à Kuna si il est disponible|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Corne-Tonnerre
    .money <1.9467
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step
	.goto Thunder Bluff,22.90,21.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 1067 >> Rendez la quête Le retour aux Pitons du Tonnerre
    .target Apothecary Zamah
    .isOnQuest 1067
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
	.train 3747 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <24,1
    .xp >26,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
	.train 992 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <26,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 8400 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <24,1
    .xp >26,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 120 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <26,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 905 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <24,1
    .xp >26,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8190 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <26,1
step
    #completewith next
    .skill firstaid,115 >>Fabriquez des [Bandages en laine] jusqu'à ce que votre compétence soit de 115 ou plus
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Apprenez [Bandage épais en laine]
    .target Pand Stonebinder
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acceptez la quête La flamme sacrée
    .target Zangen Stonehoof
step
    #label FlytoCampT2
    #completewith CampTHS2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 879 >> Acceptez la quête Une trahison de l'intérieur
    .target Mangletooth
    .isQuestTurnedIn 5052
step
    #completewith CampTHS2
    +Utilisez les [Joyaux de sang] qu'il vous reste pour obtenir [Peau tranchante] et d'autres buffs << !Mage !Druid
    +Utilisez le reste de vos [Joyaux de sang] pour obtenir des buffs << Mage/Druid
    >>Si possible, gardez 10 [Joyaux de sang] pour pouvoir utiliser le boost de vitesse plus tard dans le guide
    >>Vérifiez de désactiver toutes les options de complétion automatique des quêtes d'add-ons tels que Quesie ou Leatrix Plus pour cette partie !
    .addquestitem 4075,5052
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .accept 6382 >>Acceptez la quête La Chasse d'Orneval
    .target Jorn Skyseer
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruga Ragetotem|r à l'intérieur du bâtiment
	.turnin 1823 >>Rendez la quête Parler à Ruga
    .accept 1824 >>Acceptez la quête L'épreuve du Champ des géants
    .target Ruga Ragetotem
step
    #label CampTHS2
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >>Liez votre Pierre de foyer au Camp Taurajo
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 879
step
    #loop
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Trouvez et tuez |cRXP_ENEMY_Owatanka|r (Lézard-tonnerre bleu) dans cette zone. Dépouillez-le pour la [|cRXP_LOOT_Owatanka's Tailspike|r]. Utilisez-la pour commencer la quête
    >>Passez cette étape si vous n'arrivez pas à le trouver
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Acceptez la quête Owatanka
    .use 5102
    .unitscan Owatanka
step << Warrior
    #loop
	.goto The Barrens,45.17,69.08,0
	.goto The Barrens,45.17,69.08,50,0
	.goto The Barrens,43.87,68.84,50,0
	.goto The Barrens,42.17,69.65,50,0
	.goto The Barrens,42.35,71.85,50,0
	.goto The Barrens,42.77,72.28,50,0
	.goto The Barrens,43.86,72.06,50,0
	.goto The Barrens,45.38,72.25,50,0
    >>Tuez les |cRXP_ENEMY_Silithid Protectors|r, |cRXP_ENEMY_Silithid Swarmers|r, |cRXP_ENEMY_Silithid Creepers|r et les |cRXP_ENEMY_Silithid Grubs|r. Dépouillez-les pour leur [Twitching Antenna]
    >>NOTE: Les [Antenne mobile] n'ont qu'une durée de 15 minutes, ne soyez pas ABS ou ne vous déconnectez pas pendant cette quête
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruga Ragetotem|r à l'intérieur du bâtiment
    >>Passez la quête suivante
    .turnin 1824 >>Rendez la quête L'épreuve du Champ des géants
    .target Ruga Ragetotem
step
    #completewith next
    >>Tuez le |cRXP_ENEMY_Silithid Harvester|r. Dépouillez-le pour la [|cRXP_LOOT_Harvester's Head|r]. Utilisez-la pour commencer la quête
    >>Passez cette quête si vous n'arrivez pas à le trouver. Ce mob est très rare !
    .collect 5138,1,897 --Collect Harvester's Head
    .accept 897 >>Acceptez la quête Le Moissonneur
    .use 5138
    .unitscan Silithid Harvester
step
    #label SilithidEggs
    #loop
    .goto The Barrens,42.91,69.86,0
    .goto The Barrens,45.04,69.85,60,0
    .goto The Barrens,42.91,69.86,60,0
    .goto The Barrens,42.97,71.11,60,0
    .goto The Barrens,45.36,72.36,60,0
    .goto The Barrens,47.40,70.11,60,0
    .goto The Barrens,48.40,70.08,60,0
    .goto The Barrens,42.91,69.86,60,0
	>>Ramassez les |cRXP_PICK_Silithid Mounds|r pour les |cRXP_LOOT_Silithid Eggs|r
	.complete 868,1 --Silithid Egg (12)
    .isOnQuest 868
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>Tuez |cRXP_ENEMY_Washte Pawne|r. Dépouillez-le pour sa r [|cRXP_LOOT_Washte Pawne's Feather|r]. Utilisez-la pour commencer la quête
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acceptez la quête Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Voyagez vers |cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1536 >>Rendez la quête L'appel de l'eau
    .accept 1534 >>Acceptez la quête L'appel de l'eau
    .target Brine
step
    #completewith Backstabber
    >>Tuez |cRXP_ENEMY_Washte Pawne|r. Dépouillez-le pour sa r [|cRXP_LOOT_Washte Pawne's Feather|r]. Utilisez-la pour commencer la quête
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acceptez la quête Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r patrouille la route du nord vers le sud
    .accept 843 >> Acceptez la quête La réclamation de Gann
    .target Gann Stonespire
    .maxlevel 27
step
    #completewith Lok
    >>Tuez les |cRXP_ENEMY_Razormane Stalkers|r et les |cRXP_ENEMY_Razormane Pathfinders|r. Dépouillez-le pour un [|cRXP_LOOT_Razormane Backstabber|r]
    >>Tuez les |cRXP_ENEMY_Razormane Seers|r. Dépouillez-les pour un [|cRXP_LOOT_Charred Razormane Wand|r]
    >>Tuez les |cRXP_ENEMY_Razormane Warfrenzies|r. Dépouillez-les pour un [|cRXP_LOOT_Razormane War Shield|r]
    >>|cRXP_WARN_Les |cRXP_ENEMY_Razormane Stalkers|r sont camouflés|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob +Razormane Stalker
    .mob +Razormane Pathfinder
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
    #loop
    .goto The Barrens,44.06,80.02,45,0
    .goto The Barrens,43.91,80.46,45,0
    .goto The Barrens,44.03,80.38,45,0
    .goto The Barrens,44.16,80.46,45,0
    .goto The Barrens,44.31,80.79,45,0
    .goto The Barrens,44.66,80.49,45,0
    .goto The Barrens,45.10,80.30,45,0
    .goto The Barrens,45.52,80.47,45,0
    .goto The Barrens,45.46,80.91,45,0
    .goto The Barrens,44.83,80.95,45,0
    .goto The Barrens,44.15,81.44,45,0
    .goto The Barrens,43.79,81.40,45,0
    .goto The Barrens,43.63,80.97,45,0
    .goto The Barrens,43.49,80.48,45,0
    .goto The Barrens,43.24,80.49,45,0
    .goto The Barrens,42.82,80.23,45,0
    .goto The Barrens,42.65,79.87,45,0
    .goto The Barrens,43.07,78.98,45,0
    .goto The Barrens,43.48,78.95,45,0
    .goto The Barrens,43.66,79.12,45,0
    .goto The Barrens,43.80,79.46,45,0
    .goto The Barrens,44.43,78.71,45,0
    .goto The Barrens,44.89,78.87,45,0
    .goto The Barrens,45.12,79.20,45,0
    .goto The Barrens,45.05,79.75,45,0
    .goto The Barrens,44.83,79.87,45,0
    .goto The Barrens,44.83,79.87,0
    >>Tuez |cRXP_ENEMY_Kuz|r. Dépouillez-le pour son |cRXP_LOOT_Kuz's Skull|r
    >>|cRXP_ENEMY_Kuz|r patrouille légèrement
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
    .isOnQuest 879
step
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>Tuez |cRXP_ENEMY_Lok Orcbane|r. Dépouillez-le pour son |cRXP_LOOT_Lok's Skull|r
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
    .isOnQuest 879
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Razormane Stalkers|r et les |cRXP_ENEMY_Razormane Pathfinders|r. Dépouillez-le pour un [|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_Les |cRXP_ENEMY_Razormane Stalkers|r sont camouflés|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
    #loop
	.goto The Barrens,42.57,78.81,50,0
	.goto The Barrens,42.12,78.48,50,0
	.goto The Barrens,41.49,78.69,50,0
	.goto The Barrens,41.22,79.72,50,0
	.goto The Barrens,40.91,80.60,50,0
	.goto The Barrens,40.55,80.84,50,0
	.goto The Barrens,41.62,80.92,50,0
	.goto The Barrens,41.54,82.28,50,0
	.goto The Barrens,42.48,82.28,50,0
	.goto The Barrens,42.57,78.81,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Seers|r. Dépouillez-les pour un [|cRXP_LOOT_Charred Razormane Wand|r]
    >>Tuez les |cRXP_ENEMY_Razormane Warfrenzies|r. Dépouillez-les pour un [|cRXP_LOOT_Razormane War Shield|r]
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
    .goto The Barrens,43.87,83.43
    >>Tuez |cRXP_ENEMY_Nak|r. Dépouillez-le pour son |cRXP_LOOT_Nak's Skull|r
    .complete 879,2 --Nak's Skull (1)
    .mob Nak
    .isOnQuest 879
step
    #label Backstabber
    #loop
    .goto The Barrens,45.48,79.89,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    >>Tuez les |cRXP_ENEMY_Razormane Stalkers|r et les |cRXP_ENEMY_Razormane Pathfinders|r. Dépouillez-le pour un [|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_Les |cRXP_ENEMY_Razormane Stalkers|r sont camouflés|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bael'dun Excavators|r et les |cRXP_ENEMY_Bael'dun Foremen|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #loop
	.goto The Barrens,48.34,86.19,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
	>>Tuez |cRXP_ENEMY_Prospector Khazgorm|r. Dépouillez-le pour le |cRXP_LOOT_Khazgorm's Journal|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
    .isOnQuest 843
step
    #loop
    .goto The Barrens,47.22,84.98,0
    .goto The Barrens,47.22,84.98,40,0
    .goto The Barrens,47.28,85.74,40,0
    .goto The Barrens,47.60,85.66,40,0
    .goto The Barrens,48.43,86.34,40,0
    .goto The Barrens,48.03,85.46,40,0
    .goto The Barrens,47.94,84.86,40,0
    .goto The Barrens,47.37,84.01,40,0
    .goto The Barrens,46.92,84.22,40,0
    .goto The Barrens,46.99,85.82,40,0
    >>Tuez les |cRXP_ENEMY_Bael'dun Excavators|r et les |cRXP_ENEMY_Bael'dun Foremen|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #completewith BaelModan
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>Tuez |cRXP_ENEMY_Washte Pawne|r. Dépouillez-le pour sa r [|cRXP_LOOT_Washte Pawne's Feather|r]. Utilisez-la pour commencer la quête
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acceptez la quête Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r patrouille sur la route du nord vers le sud
    .turnin 843 >> Rendez la quête La réclamation de Gann
    .accept 846 >> Acceptez la quête La revanche de Gann
    .target Gann Stonespire
    .isQuestComplete 843
step
    #optional
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r patrouille sur la route du nord vers le sud
    .accept 846 >> Acceptez la quête La revanche de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label BaelModan
    .goto The Barrens,48.63,84.49,110 >>Voyagez à Bael Modan
    .isOnQuest 846
step
    #loop
    .goto The Barrens,48.96,84.36,0
    .goto The Barrens,48.96,84.36,30,0
    .goto The Barrens,48.88,84.02,30,0
    .goto The Barrens,49.28,83.76,30,0
    .goto The Barrens,49.22,84.21,30,0
    .goto The Barrens,49.47,84.41,30,0
    .goto The Barrens,49.09,84.67,30,0
    >>Tuez les |cRXP_ENEMY_Bael'dun Dwarves|r. Dépouillez-les pour leur |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, et leur |cRXP_LOOT_Sodium Nitrate|r
    >>Faites attention ! Les |cRXP_ENEMY_Bael'dun Officers|r ont une chance de parade améliorée de 50% pendant 8 secondes après qu'ils aient fait leur animation de posture défensive << Rogue/Warrior/Druid/Shaman
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r patrouille sur la route du nord vers le sud
    .turnin 846 >> Rendez la quête La revanche de Gann
    .accept 849 >> Acceptez la quête La revanche de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    .goto The Barrens,46.97,85.63
    >>Cliquez sur la |cRXP_PICK_Bael Modan Flying Machine|r en haut de la plateforme
    >>Cela a une portée de 50 yards
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r patrouille sur la route du nord vers le sud
    .turnin 849 >> Rendez la quête La revanche de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label WashtethePawne
    #loop
	.goto The Barrens,44.85,78.81,0
	.goto The Barrens,44.85,78.81,60,0
	.goto The Barrens,44.44,78.97,60,0
	.goto The Barrens,43.14,80.75,60,0
	.goto The Barrens,43.35,81.16,60,0
	.goto The Barrens,47.22,79.72,60,0
	.goto The Barrens,47.21,79.35,60,0
	.goto The Barrens,44.76,74.79,60,0
    >>Tuez |cRXP_ENEMY_Washte Pawne|r. Dépouillez-le pour sa r [|cRXP_LOOT_Washte Pawne's Feather|r]. Utilisez-la pour commencer la quête
    >>|cRXP_WARN_Il peut apparaître à 4 emplacements différents, passez cette étape si vous n'arrivez pas à le trouver|r
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acceptez la quête Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #completewith WeaponsofChoiceTurnin
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo
    .bindlocation 378,1
    .subzoneskip 378
    .use 6948
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >> Retournez au Camp Taurajo
    >>Vous pouvez aussi tuer des créatures jusqu'à ce que votre [Pierre de foyer] revienne
    .cooldown item,6948,<0
step
    #label WeaponsofChoiceTurnin
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >> Acceptez la quête Des armes de choix
    .turnin 893 >> Rendez la quête Des armes de choix
    .target Tatternack Steelforge
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .accept 884 >>Acceptez la quête Owatanka
    .turnin 884 >>Rendez la quête Owatanka
    .itemcount 5102,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .accept 885 >>Acceptez la quête Washte Pawne
    .turnin 885 >>Rendez la quête Washte Pawne
    .target Jorn Skyseer
    .itemcount 5103,1
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn|r
    .accept 897 >>Acceptez la quête Le Moissonneur
    .turnin 897 >>Rendez la quête Le Moissonneur
    .itemcount 5138,1
    .target Jorn Skyseer
step
    #optional
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorn Skyseer|r
    .accept 874 >>Acceptez la quête Mahren Œil-des-cieux
    .target Jorn Skyseer
    .isQuestTurnedIn 913
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .turnin 879 >> Rendez la quête Une trahison de l'intérieur
    .accept 906 >> Acceptez la quête Une trahison de l'intérieur
    .target Mangletooth
    .isOnQuest 879
step
    #optional
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .accept 906 >> Acceptez la quête Une trahison de l'intérieur
    .target Mangletooth
    .isQuestTurnedIn 879
step
    #completewith XroadsEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Volez à la Croisée
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .turnin 906 >> Rendez la quête Une trahison de l'intérieur
    .target Thork
    .isOnQuest 906
step
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .turnin 868 >> Rendez la quête La chasse aux œufs
    .target Korran
    .isOnQuest 868
step
    #completewith IshaAwak
    #optional
    .destroy 5058 >>Détruisez tous les [Oeuf de silithide] qu'il vous reste
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1096
step << Rogue
    .goto The Barrens,51.39,30.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hula'mahi|r
    .vendor >>|cRXP_BUY_Faites un stock de|r [Poudres éclipsantes] |cRXP_BUY_et de quoi concocter des|r [Poisons instantanés]
    .target Hula'mahi
    .subzoneskip 380,1
step
    #label XroadsEnd --hidden step for #completewith
step << Hunter
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Hunter
    .goto Orgrimmar,48.12,80.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,874,1 << Hunter --Razor Arrow (1800)
    .target Trak'gend
    --VV Add hunter training
step << Hunter
    #completewith IshaAwak
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Volez à Ratchet
    .target Doras
    .subzoneskip 392
step << !Hunter
    #completewith IshaAwak
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Volez à Ratchet
    .target Devrak
    .subzoneskip 392
step
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>Rendez la quête Mahren Skyseer
    .accept 873 >>Acceptez la quête Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 913
step
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>Tuez |cRXP_ENEMY_Isha Awak|r. Dépouillez-le pour la |cRXP_LOOT_Heart of Isha Awak|r
    >>Il a quatre lieux d'apparition différents le long de la côte
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isQuestTurnedIn 913
step
    #label IshaAwak
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >> Rendez la quête Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 913
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .isQuestTurnedIn 873
step << !Mage
    #optional
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isQuestAvailable 873
step << Mage
    .cast 3567 >>Lancez [Téléportation : Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 120 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 759 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 8687 >> Apprenez vos sorts de classe
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 1833 >> Apprenez vos sorts de classe
    >>|T132273:0|tLes [Poisons instantanés Rang 2] nécessitent une compétence de 120 en Poisons !
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez une |r [Hache de lancer mortelle] |cRXP_BUY_à Trak'gen|r
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8190 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8053 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <28,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6178 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 7887 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <28,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1456 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6217 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Achetez toutes les améliorations de familier que vous pouvez vous permettre
	.target Kurgul
    --VV Warlock Grimoire steps
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette de pestilence] |cRXP_BUY_à Katis|r
    .collect 5347,1,6544,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 3045 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14319 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <28,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 992 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8104 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <28,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nogg|r
    .accept 2841 >>Acceptez la quête Guerre des plates-formes
    .target Nogg
    .dungeon GNOMER
step
    .goto Orgrimmar,75.50,25.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sovik|r
    >>Terminez son dialogue pour prendre la quête
    .accept 2842 >>Acceptez la quête L'ingénieur en chef Scooty
    .target Sovik
    .dungeon GNOMER

    ]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 27-29 Orneval
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 29-31 Mille pointes


step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Achetez les|r |T134332:0|t[Pages du manuel d'utilisation du Déchiqueteur] |cRXP_BUY_à l'Hôtel des ventes si elles sont disponibles|r --Shredder Operating Manual Page 1-12
	.target Auctioneer Thathung
	.collect 16645,1,6504,1 -- Page 1
    .collect 16646,1,6504,1 -- Page 2
    .collect 16647,1,6504,1 -- Page 3
    .collect 16648,1,6504,1 -- Page 4
    .collect 16649,1,6504,1 -- Page 5
    .collect 16650,1,6504,1 -- Page 6
    .collect 16651,1,6504,1 -- Page 7
    .collect 16652,1,6504,1 -- Page 8
    .collect 16653,1,6504,1 -- Page 9
    .collect 16654,1,6504,1 -- Page 10
    .collect 16655,1,6504,1 -- Page 11
    .collect 16656,1,6504,1 -- Page 12
step
    #completewith next
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >> Entrez dans Orgrimmar par la sortie à l'ouest
    .zoneskip The Barrens
step
    #completewith next
    .goto Kalimdor,56.80,45.45,15,0
    .goto Ashenvale,94.54,76.15,40,0
    .goto Ashenvale,93.49,73.76,40,0
    .goto Ashenvale,92.47,71.18,40,0
    .goto Ashenvale,91.85,68.71,40,0
    .goto Ashenvale,91.39,65.86,25 >> Voyagez au nord le long de la rivière vers Orneval
step
    .goto Ashenvale,89.87,68.07,40,0
    .goto Ashenvale,86.89,68.65,40,0
    .goto Ashenvale,79.89,68.38,40,0
    .goto Ashenvale,73.52,63.50,30 >>Voyagez au poste de Bois-brisé
    >>Vous rencontrerez peut-être des mobs de niveau 29-30, évitez-les si possible
    .subzoneskip 431
    .isQuestAvailable 6503
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Rendez La Chasse d'Ashenvale
    .target Senani Thunderheart
    .isOnQuest 6382 --Camp T pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 742 >> Rendez La Chasse d'Ashenvale
    .target Senani Thunderheart
    .isOnQuest 742 --TB pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 235 >> Rendez La Chasse d'Ashenvale
    .target Senani Thunderheart
    .isOnQuest 235 --Org Pickup
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 6383 >> Rendez La Chasse d'Ashenvale
    .target Senani Thunderheart
step
    .goto Ashenvale,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Kaylisk|r
    .home >>Liez votre Pierre de foyer au Poste de Bois-Brisé
    .target Innkeeper Kaylisk
    .bindlocation 431
    .subzoneskip 431,1
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mastok|r
    .accept 25 >> Acceptez la quête Impasse aux Serres-Rocheuses
    .target Mastok Wrilehiss
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >> Acceptez la quête Cornes de satyre
    .target Pixel
    .maxlevel 28
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Apprenez le chemin de vol du Poste de Bois-Brisé
    .target Vhulgra
    .subzoneskip 431,1
step
    #label Splintertree1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuray'bin|r et |cRXP_FRIENDLY_Sunsworn|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuray'bin|r << !BloodElf
    .accept 6503 >> Acceptez la quête Les estafettes d'Ashenvale
    .target +Kuray'bin
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >> Turn in Voyagez au poste de Bois-brisé << BloodElf
    .target +Advisor Sunsworn << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .isOnQuest 9428 << BloodElf
step << Hunter
    #completewith ClawBiteAshenvale1
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Qeeju|r
    .stable >> Déposez votre familier à l'étable. Vous allez dompter un |cRXP_ENEMY_Elder Ashenvale Bear|r et un |cRXP_ENEMY_Ghostpaw Alpha|r très bientôt
    .target Qeeju
step << Hunter
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Elder Ashenvale Bear|r. Attaquez des mobs avec pour apprendre|r [Griffe (Rang 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Ghostpaw Alpha|r. Attaquez des mobs avec pour apprendre|r [Morsure (Rang 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale1
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Elder Ashenvale Bear|r. Attaquez des mobs avec pour apprendre|r [Griffe (Rang 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
    .xp >27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Qeeju|r
    .stable >> Abandonnez le |cRXP_ENEMY_Elder Ashenvale Bear|r ou le |cRXP_ENEMY_Ghostpaw Alpha|r et reprenez votre familier habituel
    .target Qeeju
    .zoneskip Ashenvale,1
    .train 16830,3
step << BloodElf
    #optional
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >> Acceptez la quête Les estafettes d'Ashenvale
    .target Kuray'bin
step
    #ah
    #completewith Outrunners
    .goto Ashenvale,70.01,71.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gurda Wildmane|r
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas (toutes) les pages|r
    .accept 6504 >> Acceptez la quête Les pages perdues
    .turnin 6504 >> Rendez la quête Les pages perdues
    .target Gurda Ragescar
step
    #completewith Outrunners
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Tuez |cRXP_ENEMY_Sharptalon|r. Dépouillez-le pour sa [|cRXP_LOOT_Sharptalon's Claw|r] et utilisez-la pour commence la quête
    >>Faites attention ! |cRXP_ENEMY_Sharptalon|r est de niveau 31 et patrouille dans les alentours. Vous pouvez l'amener au poste de Bois-brisé ou au camp des Réprouvés si vous avez du mal à le tuer. Si vous le faites, faites en sorte de faire au moins 50%+ dégâts pour qu'il compte. Vous pouvez aussi faire cette quête plus tard
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acceptez la quête La griffe de Serres-tranchantes
    .unitscan Sharptalon
    .use 16305
step << Hunter
    #completewith next
    .cast 19885 >>Lancez [Pistage des camouflés] |cRXP_WARN_pour trouver les |cRXP_ENEMY_Ashenvale Outrunners|r plus facilement|r
    .train 19885,3
step
    #label Outrunners
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,76.15,67.60,15,0
    .goto Ashenvale,76.03,69.02,15,0
    .goto Ashenvale,76.25,70.62,15,0
    .goto Ashenvale,75.76,71.61,15,0
    .goto Ashenvale,75.57,70.33,15,0
    .goto Ashenvale,75.20,70.62,15,0
    .goto Ashenvale,74.37,69.31,15,0
    .goto Ashenvale,73.61,70.91,15,0
    .goto Ashenvale,72.96,70.34,15,0
    .goto Ashenvale,72.66,69.46,15,0
    .goto Ashenvale,72.09,70.17,15,0
    .goto Ashenvale,71.07,72.60,15,0
    .goto Ashenvale,71.92,73.64,15,0
    .goto Ashenvale,72.53,72.58,15,0
    .goto Ashenvale,72.32,74.64,15,0
    .goto Ashenvale,73.36,74.43,15,0
    .goto Ashenvale,73.85,75.03,15,0
    >>Tuez les |cRXP_ENEMY_Ashenvale Outrunners|r
    >>Ils sont camouflés
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torek|r pour commencer l'escorte
    >>|cRXP_FRIENDLY_Torek|r a un temps de réapparition de 5 minutes
    .accept 6544 >> Acceptez la quête L'assaut de Torek
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Suivez |cRXP_FRIENDLY_Torek|r
    >>Laissez |cRXP_FRIENDLY_Torek|r et ses |cRXP_FRIENDLY_Splintertree Raiders|r tank les |cRXP_ENEMY_Silverwing Warriors|r et les |cRXP_ENEMY_Silverwing Sentinels|r
    >>|cRXP_WARN_Lorsque vous nettoyez le bâtiment, allez vers le Balcon. Lorsque |cRXP_ENEMY_Duriel Moonfire|r arrive, laissez |cRXP_FRIENDLY_Torek|r et ses |cRXP_FRIENDLY_Splintertree Raiders|r générer de la menace avant de faire des dégâts|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    .goto Ashenvale,59.73,62.81,80,0
    .goto Ashenvale,62.99,44.16,50 >> Voyagez vers l'entrée de l'ouest pour aller au défilé de la Nuit
    >>Soyez vigilant ! Un |cRXP_ENEMY_Wandering Protector|r de niveau 35 (PVP elite) peut patrouiller dans la zone
    .unitscan Wandering Protector
    .subzoneskip 428
    .isOnQuest 6441
step
    #completewith next
    .goto Ashenvale,64.88,43.81,50,0
    .goto Ashenvale,67.04,50.73,80 >> Voyagez au défilé de la Nuit
    .subzoneskip 428
step
    #loop
	.goto Ashenvale,67.85,51.34,0
	.goto Ashenvale,66.78,51.71,50,0
	.goto Ashenvale,66.19,53.44,50,0
	.goto Ashenvale,66.17,54.40,50,0
	.goto Ashenvale,66.22,55.27,50,0
	.goto Ashenvale,66.20,56.37,50,0
	.goto Ashenvale,66.77,57.14,50,0
	.goto Ashenvale,67.11,56.39,50,0
	.goto Ashenvale,67.35,55.53,50,0
	.goto Ashenvale,67.92,54.42,50,0
	.goto Ashenvale,68.92,53.44,50,0
	.goto Ashenvale,68.63,52.69,50,0
	.goto Ashenvale,67.85,51.34,50,0
    >>Tuez les|cRXP_ENEMY_Felmusk Shadowstalkers|r, |cRXP_ENEMY_Felmusk Satyrs|r, et les |cRXP_ENEMY_Felmusk Felsworns|r. Dépouillez-les pour leur |cRXP_LOOT_Satyr Horns|r
    >>Soyez vigilant ! Tous les Grangremusc lancent [Puanteur accablante], un silence instantané de 6 secondes << Mage/Warlock/Priest/Druid/Shaman
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
    .isOnQuest 6441
step
    #completewith Shadumbra
    .subzone 426 >> Voyagez à l'ouest vers la retraite de Raynebois
    .isOnQuest 1195
step
    #completewith next
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    >>Tuez |cRXP_ENEMY_Shadumbra|r. Dépouillez-la pour sa [|cRXP_LOOT_Shadumbra's Head|r] et utilisez-la pour commencer la quête
    >>|cRXP_ENEMY_Shadumbra|r patrouille légèrement dans les alentours
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Acceptez la quête La tête de Shadumbra
	.unitscan Shadu
step
    #loop
    .goto Ashenvale,58.08,56.06,0
    .goto Ashenvale,58.08,56.06,40,0
    .goto Ashenvale,58.69,55.18,40,0
    .goto Ashenvale,59.27,54.47,40,0
    .goto Ashenvale,59.83,53.26,40,0
    .goto Ashenvale,60.40,52.83,40,0
    .goto Ashenvale,61.03,51.96,40,0
    .goto Ashenvale,60.99,49.19,40,0
    .goto Ashenvale,62.51,50.16,40,0
    >>Tuez les |cRXP_ENEMY_Laughing Sisters|r. Dépouillez-les pour une [|cRXP_LOOT_Etched Phial|r]
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
    .isOnQuest 1195
step
    #label Shadumbra
    #loop
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,0
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    .goto Ashenvale,62.39,49.80,40,0
    >>Tuez |cRXP_ENEMY_Shadumbra|r. Dépouillez-la pour sa [|cRXP_LOOT_Shadumbra's Head|r] et utilisez-la pour commencer la quête
    >>|cRXP_ENEMY_Shadumbra|r patrouille légèrement dans les alentours
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Acceptez la quête La tête de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
   .goto Ashenvale,36.81,33.48,200 >> Voyagez au Village des Crins-de-Chardon
   >>Faites attention à éviter les gardes d'Astranaar sur la route
   .subzoneskip 2301
   .isOnQuest 216
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Thistlefur Shamans|r et les |cRXP_ENEMY_Thistlefur Avengers|r sur la route pour la grotte
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step
    #label EntertheHold
    .goto Ashenvale,38.67,30.62,40 >>Entrez dans le repaire des Crins-de-chardons
    .isOnQuest 6462
step
    #loop
    .goto Ashenvale,40.39,33.22,0
    .goto Ashenvale,40.39,33.22,20,0
    .goto Ashenvale,40.77,32.81,20,0
    .goto Ashenvale,41.36,32.19,20,0
    .goto Ashenvale,41.75,32.94,20,0
    .goto Ashenvale,41.77,33.68,20,0
    .goto Ashenvale,42.37,33.61,20,0
    .goto Ashenvale,42.82,34.11,20,0
    .goto Ashenvale,41.73,34.47,20,0
    .goto Ashenvale,41.66,35.70,20,0
	>>Ouvrez les |cRXP_PICK_Troll Chests|r sur le sol pour les |cRXP_LOOT_Troll Charms|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto Ashenvale,41.49,34.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r au fond de la grotte. Cela va commencer une escorte
    .accept 6482 >> Acceptez la quête Liberté pour Ruul
    .target Ruul Snowhoof
step
    .goto Ashenvale,38.73,36.86,0
    .goto Ashenvale,40.68,33.21,20,0
    .goto Ashenvale,40.29,32.25,20,0
    .goto Ashenvale,39.41,31.00,20,0
    .goto Ashenvale,38.28,30.68,20,0
    .goto Ashenvale,37.39,32.74,30,0
    .goto Ashenvale,37.30,34.49,30,0
    .goto Ashenvale,38.73,36.86
    >>Escortez |cRXP_FRIENDLY_Ruul|r hors du Village des Crins-de-chardons
    >>Soyez vigilant ! 3 |cRXP_ENEMY_Thistlefurs|r vont apparaître lorsque vous aurez franchi la moitié de la grotte et 3 autres apparaîtront après l'entrée du Village des Crins-de-chardons
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    #loop
    .goto Ashenvale,35.75,32.01,0
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    >>Finissez de tuer les |cRXP_ENEMY_Thistlefur Shamans|r et les |cRXP_ENEMY_Thistlefur Avengers|r
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>Utilisez l'[Outre bleue vide] sous le belvédère
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    #loop
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,43.78,68.86,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.81,62.94,40,0
    >>Tuez |cRXP_ENEMY_Ursangous|r. Dépouillez-le pour la [|cRXP_LOOT_Ursangous's Paw|r] et utilisez-la pour commencer la quête
    >>Il patrouille non loin de sa zone
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Acceptez la quête La patte d'Ursangous
    .unitscan Ursangous
    .use 16303
step
    #completewith Tideress
    .subzone 421 >> Voyagez vers le lac Mystral
    .isOnQuest 25
step
    #completewith Tideress
    >>Tuez les |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.36,69.74,40,0
    >>Tuez |cRXP_ENEMY_Tideress|r. Dépouillez-la pour le [|cRXP_LOOT_Befouled Water Globe|r]. Utilisez-le pour commencer la quête
    >>|cRXP_ENEMY_Tideress|r patrouille autour de l'île et sous l'eau
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Acceptez la quête Les éléments souillés
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>Allez sous le belvédère
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    #loop
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,0
    .goto Ashenvale,48.71,69.54,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,45.84,70.67,40,0
    >>Tuez |cRXP_ENEMY_Tideress|r. Dépouillez-la pour le [|cRXP_LOOT_Befouled Water Globe|r]. Utilisez-le pour commencer la quête
    >>|cRXP_ENEMY_Tideress|r patrouille autour de l'île et sous l'eau
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Acceptez la quête Les éléments souillés
    .use 16408
    .unitscan Tideress
step
    #loop
	.goto Ashenvale,48.36,69.74,0
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
    >>Tuez les |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>Utilisez la [|cRXP_LOOT_Etched Phial|r] dans le Puits de lune
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
    .isOnQuest 1195
step
    #completewith next
    .goto Ashenvale,71.10,68.12,80 >>Voyagez au poste de Bois-brisé
    .subzoneskip 431
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >> Rendez la quête Les estafettes d'Ashenvale
    .target Kuray'bin
step
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,78.24,65.72,45,0
    .goto Ashenvale,77.93,65.93,45,0
    .goto Ashenvale,77.60,66.33,45,0
    .goto Ashenvale,77.35,66.96,45,0
    .goto Ashenvale,76.93,68.04,45,0
    .goto Ashenvale,76.11,68.95,45,0
    .goto Ashenvale,75.94,69.80,45,0
    .goto Ashenvale,75.26,69.96,45,0
    .goto Ashenvale,74.86,70.06,45,0
    .goto Ashenvale,74.36,70.10,45,0
    .goto Ashenvale,73.33,70.61,45,0
    .goto Ashenvale,72.94,70.67,45,0
    .goto Ashenvale,72.50,70.60,45,0
    .goto Ashenvale,72.08,70.47,45,0
    .goto Ashenvale,71.46,70.10,45,0
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Tuez |cRXP_ENEMY_Sharptalon|r. Dépouillez-le pour sa [|cRXP_LOOT_Sharptalon's Claw|r] et utilisez-la pour commence la quête
    >>|cRXP_WARN_Attention !|r |cRXP_ENEMY_Serres-tranchantes|r |cRXP_WARN_est de niveau 31 et patrouille aux alentours. Vous pouvez l'attirer jusqu'au Poste de Bois-Brisé ou jusqu'au Campement des Réprouvés si vous avez du mal à le tuer. Si vous le faites, assurez-vous d'infliger plus de 50% des dégâts pour le valider|r
    >>|cRXP_WARN_Passez ceci si vous ne pouvez pas le tuer|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acceptez la quête La griffe de Serres-tranchantes
    .unitscan Sharptalon
    .use 16305
step
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Rendez la quête L'assaut de Torek
    .target Ertog Ragetusk
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 2 >> Rendez la quête La griffe de Serres-tranchantes
    .turnin 24 >> Rendez la quête La tête de Shadumbra
    .turnin 23 >> Rendez la quête La patte d'Ursangous
    .turnin 247 >> Rendez la quête La chasse achevée
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 24 >> Rendez la quête La tête de Shadumbra
    .turnin 23 >> Rendez la quête La patte d'Ursangous
    .turnin 247 >> Rendez la quête La chasse achevée
    .target Senani Thunderheart
    .isQuestTurnedIn 2
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senani|r
    .turnin 24 >> Rendez la quête La tête de Shadumbra
    .turnin 23 >> Rendez la quête La patte d'Ursangous
    .target Senani Thunderheart
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >> Rendez la quête Cornes de satyre
    .target Pixel
    .isQuestComplete 6441
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mastok|r
    .turnin 25 >> Rendez la quête Impasse aux Serres-Rocheuses
    .turnin 1918 >> Rendez la quête Les éléments souillés
    .accept 824 >> Acceptez la quête Je'neu du Cercle terrestre
    .target Mastok Wrilehiss
step
    .goto Ashenvale,74.11,60.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >> Rendez la quête Liberté pour Ruul
    .target Yama Snowhoof
step << Hunter
    #optional
    #completewith ClawBiteAshenvale2
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Qeeju|r
    .stable >> Déposez votre familier à l'étable. Vous allez dompter un |cRXP_ENEMY_Elder Ashenvale Bear|r et un |cRXP_ENEMY_Ghostpaw Alpha|r très bientôt
    .target Qeeju
step << Hunter
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Elder Ashenvale Bear|r. Attaquez des mobs avec pour apprendre|r [Griffe (Rang 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Ghostpaw Alpha|r. Attaquez des mobs avec pour apprendre|r [Morsure (Rang 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale2
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Elder Ashenvale Bear|r. Attaquez des mobs avec pour apprendre|r [Griffe (Rang 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Maintenant vous devriez chercher un groupe pour faire les Profondeurs de Brassenoire
    .dungeon BFD
step
    #completewith ZoramVisit2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >> Volez à l'Avant-poste de Zoram'gar
    .target Vhulgra
    .subzoneskip 2897
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karang|r
    .turnin 216 >> Rendez la quête Entre un roc et un Crin-de-Chardon
    .target Karang Amakkar
step
    .goto Ashenvale,11.65,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >> Rendez la quête Charme troll
    .target Mitsuwa
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Rendez la quête Je'neu du Cercle terrestre
    .accept 6563 >> Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >> Acceptez la quête Parmi les ruines
    .accept 6565 >> Acceptez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Rendez la quête Je'neu du Cercle terrestre
    .accept 6563 >> Acceptez la quête L'Essence d'Aku'Mai
    .accept 6921 >> Acceptez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label ZoramVisit2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Rendez la quête Je'neu du Cercle terrestre
    .target Je'neu Sancrea
step
    .goto Kalimdor,43.89,35.23,100 >> Voyagez jusqu'à l'entrée des Profondeurs de Brassenoire
    .dungeon BFD
step
    #completewith next
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tuez les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour une [|cRXP_LOOT_Damp Note|r] et utilisez-la pour commencer la quête
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acceptez la quête Allégeance aux Dieux très anciens
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Ramassez le |cRXP_LOOT_Sapphire of Aku'Mai|r sur le mur
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .accept 6561 >>Acceptez la quête L'infamie de Brassenoire
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Tuez |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    >>La ramasser va faire apparaître le |cRXP_ENEMY_Baron Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tuez le |cRXP_ENEMY_Baron Aquanis|r. Dépouillez-le pour un [|cRXP_LOOT_Strange Water Globe|r]. Utilisez-le pour prendre la quête
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acceptez la quête Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Ramassez la |cRXP_PICK_Fathom Stone|r sous l'eau sur le sol pour le |cRXP_LOOT_Fathom Core|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tuez  |cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith FlyZoramS2
    .hs >> Utilisez votre Pierre de foyer pour revenir au poste de Bois-brisé
    >>Tuez |cRXP_ENEMY_Aku'mai|r en premier si vous le voulez. C'est le dernier boss du donjon
    .cooldown item,6948,>2,1
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon BFD
step
    #optional
    #completewith FlyZoramS2
    .subzone 431 >>Utilisez la technique de "ghetto hearth" dans les Profondeurs de Brassenoire
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copiez-collez cette macro dans les Profondeurs de Brassenoire pour vous téléporter au Foyer et revenir au Poste de Bois-Brisé|r
    .cooldown item,6948,<0
    .bindlocation 431,1
    .dungeon BFD
step
    #label FlyZoramS2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >> Volez à l'Avant-poste de Zoram'gar
    .target Vhulgr
    .subzoneskip 2897
    .dungeon BFD
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Rendez la quête Allégeance aux Dieux très anciens
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Rendez la quête L'Essence d'Aku'Mai
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Rendez la quête Parmi les ruines
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Rendez la quête Baron Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
    .dungeon !BFD
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <26,1
    .xp >28,1
    .dungeon !BFD
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 3029 >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <28,1
    .dungeon !BFD
step
    .hs >> Utilisez votre Pierre de foyer pour revenir au poste de Bois-brisé
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon !BFD
step << Rogue/Warlock
    #completewith FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar>> Volez à Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
    .dungeon !BFD
step << Rogue/Warlock
    #completewith OrgSkip
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk|r
    .fly Orgrimmar>> Volez à Orgrimmar
    .target Andruk
    .zoneskip Orgrimmar
    .dungeon BFD
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 1833 >> Apprenez vos sorts de classe
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 8687 >> Apprenez vos sorts de classe
    >>|T132273:0|tLes [Poisons instantanés Rang 2] nécessitent une compétence de 120 en Poisons !
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Faites un stock de|r [Poudre éclipsante] |cRXP_BUY_et de|r [Poisons]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1456 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6217 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Achetez toutes les améliorations de familier que vous pouvez vous permettre
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette de pestilence] |cRXP_BUY_à Katis|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette de pestilence] |cRXP_BUY_à Katis|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Rogue/Warlock
    #optional
    #label OrgSkip
step
    #optional
    #label FlyTB
step << Rogue/Warlock
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Doras
    .zoneskip Orgrimmar,1
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andruk, Zoram'gar|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Andruk
    .zoneskip Ashenvale,1
    .dungeon BFD
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vhulgra|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Vhulgra
    .zoneskip Ashenvale,1
    .dungeon !BFD
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 29-31 Mille pointes
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next RXP TBC Guide de Survie (H)\31-33 Hautebrande/Arathi partie 1

step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem-de-Rage
    .isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Ott si elle est disponible et que vous ne l'avez pas encore|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem-de-Rage
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Main Gauche] |cRXP_BUY_à Kard et mettez-la dans votre main gauche|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Main Gauche] |cRXP_BUY_à Kard et mettez-la dans votre main gauche|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #optional
    #completewith FreewindHome
    +Équipez la [Main gauche]
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .xp <29,1
step
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zangen|r
    .turnin 1195 >> Rendez la quête La flamme sacrée
    .accept 1196 >> Acceptez la quête La flamme sacrée
    .target Zangen Stonehoof
    .isOnQuest 1195
step
    #optional
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zangen|r
    .accept 1196 >> Acceptez la quête La flamme sacrée
    .target Zangen Stonehoof
    .isQuestTurnedIn 1195
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kym|r
    .train 1850 >> Apprenez vos sorts de classe
    .target Kym Wildmane
    .xp <26,1
    .xp >28,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kym|r
    .train 3029 >> Apprenez vos sorts de classe
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kym|r
    .train 783 >> Apprenez vos sorts de classe
    .target Kym Wildmane
    .xp <30,1
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .turnin 1130 >> Rendez la quête Melor envoie un message
    .accept 1131 >> Acceptez la quête Broie-l'acier
    .target Melor Stonehoof
    .isOnQuest 1130
step
    #optional
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Acceptez la quête Broie-l'acier
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 3045 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <30,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ker|r
    .train 6178 >> Apprenez vos sorts de classe
    .target Ker Ragetotem
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ker|r
    .train 7887 >> Apprenez vos sorts de classe
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 7369 >> Apprenez vos sorts de classe
    .accept 1718 >>Acceptez la quête L'île mortelle
    .target Torm Ragetotem
    .xp <30,1
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auld|r
    .accept 1102 >> Acceptez la quête Un destin funeste
    .target Auld Stonespire
    .dungeon RFK
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 1131,4821,4841,1149
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 992 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 8104 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 602 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 120 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 759 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <30,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Apprenez [Téléportation : Thunder Bluff]
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 943 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8053 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 556 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <30,1
step
    #optional
    #label SilkBandage
step
    #completewith next
    .skill firstaid,115 >> Fabriquez des [Bandages en laine] jusqu'à ce que votre compétence soit de 115
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Apprenez [Bandage épais en laine]
    .target Pand Stonebinde
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,150 >> Fabriquez des [Bandages épais en laine] jusqu'à ce que votre compétence soit de 150
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Apprenez [Bandage en soie]
    >>Passez cette étape si vous n'avez pas assez d'Etoffe de soie pour atteindre un niveau de compétence de 150
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Achetez un|r [Arc long solide] |cRXP_BUY_à Kuna si il est disponible|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Corne-Tonnerre
    .money <1.9467
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Kuna|r
    .collect 3030,1800,5881,1 << Hunter --Razor Arrow (1800)
    .target Kuna Corne-Tonnerre
    .itemcount 3030,<1400
step
    #optional
    .abandon 6561 >>Abandonnez la quête L'infamie de Brassenoire
    .dungeon BFD
step
    #optional
    .abandon 6565 >>Abandonnez la quête Allégeance aux Dieux très anciens
    .dungeon BFD
step
    #optional
    .abandon 6563 >>Abandonnez la quête L'Essence d'Aku'Mai
    .dungeon BFD
step
    #optional
    .abandon 6921 >>Abandonnez la quête Parmi les ruines
    .dungeon BFD
step
    #completewith Elevators
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .zoneskip The Barrens
    .zoneskip Thousand Needles
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tatternack|r
    .accept 1153 >> Acceptez la quête Un nouveau minerai
    .target Tatternack Steelforge
    .isQuestTurnedIn 893
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>Si il vous reste 10 [|cRXP_LOOT_Blood Shards|r, utilisez les pour obtenir [L'esprit du vent] à |cRXP_FRIENDLY_Mangletooth|r
    .itemcount 5075,10
    .target Mangletooth
    .train 783,1 << Druid --Travel form
    .train 2645,1 << Shaman --Ghost Wolf
    .train 5118,1 << Hunter -- Cheetah
step << Druid/Shaman/Hunter
    #optional
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mangletooth|r
    +|cRXP_WARN_Si vous avez des|r |T134128:0|t[|cRXP_LOOT_Joyaux de sang|r |cRXP_WARN_en trop, utilisez-les pour obtenir les buffs de votre choix auprès de|r |cRXP_FRIENDLY_Mangletooth|r
    .itemcount 5075,4
    .target Mangletooth
    .train 783,3 << Druid --Travel form
    .train 2645,3 << Shaman --Ghost Wolf
    .train 5118,3 << Hunter -- Cheetah
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Voyagez vers |cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brine|r
    .turnin 1534 >>Rendez la quête L'appel de l'eau
    .accept 220 >>Acceptez la quête L'appel de l'eau
    .target Brine
step
    #completewith next
    .goto The Barrens,48.63,84.49,110 >>Voyagez à Bael Modan
    .subzoneskip 359
    .group
    .maxlevel 29
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Feegly|r
    .accept 857 >> Acceptez la quête La larme des lunes
    .target Feegly the Exiled
    .group 2
    .maxlevel 29
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>Descendez à l'étage inférieur de Bael'dun
    .group
    .isOnQuest 857
step
    .goto The Barrens,49.13,84.25
    >>Ouvrez les |cRXP_PICK_General Twinbraid's Strongbox|r. Ramassez les |cRXP_LOOT_Tear of the Moons|r
    >>|cRXP_WARN_Faites attention ! Il est très facile d'attirer plusieurs mobs dans la salle de |cRXP_ENEMY_General Twinbraid|r|r
    >>|cRXP_WARN_Engagez directement tous les mobs qui ne sont pas |cRXP_ENEMY_General Twinbraid|r << !Hunter !Warlock
    >>|cRXP_WARN_Engagez directement tous les mobs qui ne sont pas le |cRXP_ENEMY_General Twinbraid|r et utilisez votre familier pour tank. Sinon, vous pouvez aussi envoyer votre familier et ouvrir le coffre |r << Hunter/Warlock
    .complete 857,1 --Tear of the Moons (1)
    .group 2
    .isOnQuest 857
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>Quittez le Fort de Bael'dun
    .group
step
    #label TearMoons2
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Feegly|r
    .turnin 857 >> Rendez la quête La larme des lunes
    .target Feegly the Exiled
    .isQuestComplete 857
    .group
step
    .goto Thousand Needles,31.87,21.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grish|r
    .turnin 5881 >> Rendez la quête Puiser dans les réserves
    .target Grish Longrunner
    .isOnQuest 5881
step
    #label Elevators
    .goto Thousand Needles,32.24,22.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moonhorn|r
    .accept 4542 >> Acceptez la quête Un message pour le poste de Librevent
    .target Brave Moonhorn
step
    .goto Thousand Needles,31.97,23.76,30 >> Prenez l'ascenseur pour descende aux Mille pointes
    >>Ne tombez pas ! C'est une mort assurée
    .isOnQuest 4542
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Tuez le |cRXP_ENEMY_Galak Messenger|r. Dépouillez-le pour la [|cRXP_LOOT_Assassination Note|r]. Utilisez-la pour commencer la quête
    >>Il apparaît à la combe du Sabot fendu (le camp de centaures à l'est)
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acceptez la quête Complot d'assassinat
    .use 12564
    .unitscan Galak Messenger
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >> Allez aux ascenseurs du poste de Librevent
step
    .goto Thousand Needles,45.91,49.91,25 >> Prenez l'ascenseur pour monter au poste de Librevent
    .isQuestAvailable 4821,4841,1149
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elosai|r
    .accept 9431 >> Acceptez A Different Approach
    .target Magistrix Elosai
step
    .goto Thousand Needles,46.00,50.80
    >>Cliquez sur le |cRXP_PICK_Wanted Poster|r
    .accept 5147 >> Acceptez la quête On recherche : Arnak Grimtotem
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >> Rendez la quête La flamme sacrée
    .accept 1197 >> Acceptez la quête La flamme sacrée
    .target Rau Cliffrunner
    .group
    .maxlevel 30
    .isOnQuest 1196
step
     #optional
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >> Rendez la quête La flamme sacrée
    .target Rau Cliffrunner
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >> Rendez la quête Un message pour le poste de Librevent
    .accept 4841 >> Acceptez la quête Pacifier les centaures
    .target Cliffwatcher Longhorn
    .maxlevel 30
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >> Rendez la quête Un message pour le poste de Librevent
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins] |cRXP_BUY_et des|r [Parchemins] |cRXP_BUY_à Montarr si il en a en stock|r << !Warrior
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins]|cRXP_BUY_, |rdes [Parchemins] |cRXP_BUY_et des|r [Viétérules] |cRXP_BUY_à Montarr si il en a en stock|r << Warrior
    .target Montarr
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_à Starn si il en a en stock|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Mage
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montarr|r
    >>|cRXP_BUY_Achetez une ou plusieurs|r [Rune de Téléportation] |cRXP_BUY_à Montarr|r
    .collect 17031,1,4767,1 --Rune of Teleportation (1)
    .target Montarr
step << Mage
    #optional
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Adeqwa|r
    .home >> Liez votre Pierre de foyer au Poste de Librevent
    .target Innkeeper Abeqwa
    .bindlocation 484
    .isQuestAvailable 4767
    .train 3566,3 --Skips step if Teleport Thunder Bluff isn't trained
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hagar|r
    .accept 4821 >> Acceptez la quête L'oeuf étrange
    .target Hagar Lightninghoof
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elu|r
    .accept 4767 >> Acceptez la quête Le cavalier céleste
    .target Elu
    .maxlevel 31
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyse|r
    .fp Freewind Post >> Prenez le chemin de vol du Poste de Librevent
    .target Nyse
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step
    #completewith Clovenhoof
    >>Tuez les |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, et les |cRXP_ENEMY_Galak Windchasers|r
    >>Tuez tous les |cRXP_ENEMY_Galak Scout|r que vous voyez comme ils sont plus rares
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
    .group 0
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>Entrez dans la grotte
    .isOnQuest 1197
    .group 2
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>Allez vers le |cRXP_PICK_Ancient Brazier|r
    .isOnQuest 1197
    .group
step
    #requires Splithoofcave
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>Ouvrez le |cRXP_PICK_Ancient Brazier|r. Ramassez le |cRXP_LOOT_Cloven Hoof|r
    >>Soyez vigilant ! Le brasier est défendu par deux |cRXP_ENEMY_Galak Flame Guards|r de niveau 30
    .complete 1197,1 --Collect Cloven Hoof (x1)
    .mob Galak Flame Guard
    .isOnQuest 1197
    .group 2
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Tuez le |cRXP_ENEMY_Galak Messenger|r. Dépouillez-le pour la [|cRXP_LOOT_Assassination Note|r]. Utilisez-la pour commencer la quête
    >>Il apparaît à la combe du Sabot fendu (le camp de centaures à l'est)
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acceptez la quête Complot d'assassinat
    .use 12564
    .unitscan Galak Messenger
step
    #loop
	.goto Thousand Needles,43.12,36.86,0
	.goto Thousand Needles,43.12,36.86,50,0
	.goto Thousand Needles,41.18,34.83,50,0
	.goto Thousand Needles,40.42,34.45,50,0
	.goto Thousand Needles,39.00,32.56,50,0
	.goto Thousand Needles,39.68,34.93,50,0
	.goto Thousand Needles,39.76,35.82,50,0
	.goto Thousand Needles,39.32,36.93,50,0
	.goto Thousand Needles,40.43,37.96,50,0
	.goto Thousand Needles,41.04,39.03,50,0
	.goto Thousand Needles,41.12,41.34,50,0
	.goto Thousand Needles,42.33,40.54,50,0
	.goto Thousand Needles,42.84,39.09,50,0
	.goto Thousand Needles,44.15,40.72,50,0
	.goto Thousand Needles,44.98,41.03,50,0
	.goto Thousand Needles,45.66,43.81,50,0
	.goto Thousand Needles,47.23,41.98,50,0
	.goto Thousand Needles,48.57,43.53,50,0
	.goto Thousand Needles,49.39,41.24,50,0
	.goto Thousand Needles,48.14,40.43,50,0
	.goto Thousand Needles,47.11,40.29,50,0
	.goto Thousand Needles,45.89,40.32,50,0
	.goto Thousand Needles,44.43,38.36,50,0
    >>Tuez les |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, et les |cRXP_ENEMY_Galak Windchasers|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>Voyagez vers |cRXP_FRIENDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >> Acceptez la quête L'épreuve de la Foi
    .timer 7,L'épreuve de la Foi RP
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>Attendez le temps du RP
    >>Sautez au bout de la plateforme en bois. Vous serez téléporté au lieu de mourir de dégâts de chute
    .complete 1149,1 --Explore Zone (1)
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >> Rendez la quête L'épreuve de la Foi
    .accept 1150 >> Acceptez la quête L’épreuve de l’Endurance
    .target Dorn Plainstalker
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >> Rendez la quête L'épreuve de la Foi
    .target Dorn Plainstalker
step
    #completewith AlienEgg
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,59.79,58.16,0
    >>Tuez les |cRXP_ENEMY_Gravelsnout Surveyors|r, |cRXP_ENEMY_Gravelsnout Diggers|r, et les |cRXP_ENEMY_Gibblesnik|r (si il est là). Dépouillez-les pour un |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .isOnQuest 1153
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>Ramassez l' |cRXP_LOOT_Alien Egg|r sur le sol
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #loop
    .goto Thousand Needles,60.49,58.82,0
    .goto Thousand Needles,63.69,60.43,0
    .goto Thousand Needles,65.84,61.77,0
    .goto Thousand Needles,63.67,48.03,0
    .goto Thousand Needles,60.49,58.82,50,0
    .goto Thousand Needles,63.69,60.43,50,0
    .goto Thousand Needles,65.84,61.77,50,0
    .goto Thousand Needles,63.67,48.03,50,0
    >>Tuez les |cRXP_ENEMY_Thundering Boulderkins|r. Dépouillez-les pour leur |cRXP_LOOT_Purifying Earth|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #label AlienEgg
    #loop
    .goto Thousand Needles,52.34,55.24,0
    .goto Thousand Needles,37.63,56.11,0
    .goto Thousand Needles,56.36,50.39,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    >>Ramassez l' |cRXP_LOOT_Alien Egg|r sur le sol
    >>Il a 3 lieux d'apparition différents. Ils sont marqués sur la carte
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith Freewind2
    .goto Thousand Needles,46.73,48.27,30 >> Allez aux ascenseurs du poste de Librevent
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 4841 >> Rendez la quête Pacifier les centaures
    .accept 5064 >> Acceptez la quête Espionner le Totem sinistre
    .target Cliffwatcher Longhorn
    .isQuestComplete 4841
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .accept 5064 >> Acceptez la quête Espionner le Totem sinistre
    .target Cliffwatcher Longhorn
    .isQuestTurnedIn 4841
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rau|r
    .turnin 1197 >> Rendez la quête La flamme sacrée
    .target Rau Cliffrunner
    .isQuestComplete 1197
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hagar|r
    .turnin 4821 >> Rendez la quête L'oeuf étrange
    .accept 4865 >> Acceptez la quête Serpent sauvage
    .target Hagar Lightninghoof
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_à Starn si il en a en stock|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
    .isQuestAvailable 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,4767,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #label Freewind2
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins] |cRXP_BUY_et des|r [Parchemins] |cRXP_BUY_à Montarr si il en a en stock|r << !Warrior
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins]|cRXP_BUY_, |rdes [Parchemins] |cRXP_BUY_et des|r [Viétérules] |cRXP_BUY_à Montarr si il en a en stock|r << Warrior
    .target Montarr
    .subzoneskip 484,1
    .isQuestAvailable 4767
step
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Entrez dans le Repaire des Volplume
    .isOnQuest 1150
step
    #completewith Grenka
    +|cRXP_WARN_Soyez vigilant, les |cRXP_ENEMY_Screeching Windcallers|r lancent|r [Bourrasque]|cRXP_WARN_, un stun AoE de 4 secondes dans les 10 yards des |cRXP_ENEMY_Screeching Windcaller|r
    +|cRXP_ENEMY_Screeching Harpies|r lancent|r [Hurlement assourdissant], un silence de 8 secondes << Mage/Warlock/Priest/Druid/Shaman/Paladin
    .isOnQuest 1150
step
    #completewith next
    .goto Thousand Needles,25.84,54.78
    +Ouvrez les |cRXP_PICK_Harpy Foodstuffs|r sur le sol dans le fond de la grotte pour invoquer |cRXP_ENEMY_Grenka|r
    .isOnQuest 1150
step
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>Tuez |cRXP_ENEMY_Grenka Bloodscreech|r. Dépouillez-la pour sa |cRXP_LOOT_Grenka's Claw|r
    >>|cRXP_WARN_Cette quête a été affaiblie dans TBC. Aucun renfort ne réapparaîtra|r
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
    .isOnQuest 1150
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Tuez |cRXP_ENEMY_Steelsnap|r. Dépouillez-le pour la |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Soyez prudent, il a deux |cRXP_ENEMY_Hyènes|r qui le défendent !|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #label HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>Voyagez vers Haut-perchoir
    .subzoneskip 482
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>Montez le chemin. Voyagez vers |cRXP_FRIENDLY_Pao'ka|r
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith PaokaEscort
    >>Ramassez les |cRXP_LOOT_Highperch Wyvern Eggs|r sur le sol
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pao'ka|r pour commencer l'escorte
    >>|cRXP_WARN_Faites attention si |cRXP_ENEMY_Tranchecoeur|r est là ! Il s'agit d'un élite rare de niveau 32|r
    .accept 4770,1 >> Acceptez la quête Vers le pays natal
    .target Pao'ka Swiftmountain
    .unitscan Heartrazor
    .isOnQuest 4767
step
    --#requires HighPerchArrive
    #label PaokaEscort
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_Escort|rez |cRXP_FRIENDLY_Pao'ka|r
    >>|cRXP_WARN_Trois Wyvernes de Haut-perchoir vont apparaître lorsque l |cRXP_FRIENDLY_Pao'ka|r aura atteint le milieu de Haut-perchoir. Vous n'aurez besoin d'engager que celle à l'est et les autres vont disparaître|r
    .complete 4770,1 --Escort Pao'ka from Highperch
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #loop
    .goto Thousand Needles,13.91,39.11,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>Ramassez les |cRXP_LOOT_Highperch Wyvern Eggs|r sur le sol
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #completewith Messenger
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Tuez |cRXP_ENEMY_Steelsnap|r. Dépouillez-le pour la |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Soyez prudent, il a deux |cRXP_ENEMY_Hyènes|r qui le défendent !|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
    .unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laer|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Laer Stepperunner
    .isQuestAvailable 5151
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Soyez vigilant ! Rendre cette quête va invoquer trois |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_que vous devrez tuer pour protéger |cRXP_FRIENDLY_Kanati|r|r
    .turnin 4881 >> Rendez la quête Complot d'assassinat
    .accept 4966 >> Acceptez la quête Protéger Kanati Greycloud
    .target Kanati Greycloud
    .isOnQuest 4881
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>Tuez les |cRXP_ENEMY_Galak Assassins|r pour protéger |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Rendez la quête Protéger Kanati Greycloud
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >> Rendez la quête Serpent sauvage
    .accept 5062 >> Acceptez la quête Feu sacré
    .turnin 4770 >> Rendez la quête Vers le pays natal
    .target Motega Firemane
    .isQuestComplete 4770
step
    #optional
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >> Rendez la quête Serpent sauvage
    .accept 5062 >> Acceptez la quête Feu sacré
    .target Motega Firemane
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >> Rendre la quête Une nouvelle approche
    .accept 9433 >> Puiser dans le puits de lune
    .accept 5151 >> Acceptez la quête Hypercapaciteur bidulotron
    .target Wizlo Bearingshiner
    .group
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >> Rendre la quête Une nouvelle approche
    .accept 9433 >> Puiser dans le puits de lune
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,22.78,24.53
    >>Ouvrez la cage et tuez la |cRXP_ENEMY_Enraged Panther|r. Dépouillez-la pour le |cRXP_LOOT_Hypercapacitor Gizmo|r
    .complete 5151,1 --Hypercapacitor Gizmo (1)
    .mob Enraged Panther
    .group 2
step
    #completewith MoonWellWater
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Tuez le |cRXP_ENEMY_Galak Messenger|r. Dépouillez-le pour la [|cRXP_LOOT_Assassination Note|r]. Utilisez-la pour commencer la quête
    >>Il patrouille. Il apparaît à la combe du Sabot fendu (le camp de centaures à l'est)
    >>Cherchez-le avec [Oeil d'aigle] si vous l'avez appris << Hunter
    >>Cherchez-le avec [Double vue] si vous l'avez appris << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acceptez la quête Complot d'assassinat
    .use 12564
    .unitscan Galak Messenger
step
    .goto Thousand Needles,9.46,18.69
    .cast 30009 >>Utilisez l'[Unité de contrôle du Robotron] près du |cRXP_PICK_Concealed Control Panel|r
    .aura 29989
    .use 23675
    .isOnQuest 9433
step
    #label MoonWellWater
    .goto Feralas,89.54,46.31
    >>En contrôlant le |cRXP_FRIENDLY_Robotron 3000|r, entrez dans le Puits de lune et utilisez la capacité [Puiser de l'eau] pour récupérer l' |cRXP_LOOT_Thalanaar Moonwell Water|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .target Robotron 3000
    .use 23675
step
    #label Messenger
    #loop
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,18.32,22.10,0
    .goto Thousand Needles,18.32,22.10,40,0
    .goto Thousand Needles,18.72,22.53,40,0
    .goto Thousand Needles,18.47,23.06,40,0
    .goto Thousand Needles,18.70,24.42,40,0
    .goto Thousand Needles,18.63,26.19,40,0
    .goto Thousand Needles,18.98,26.71,40,0
    .goto Thousand Needles,19.46,27.04,40,0
    .goto Thousand Needles,19.96,27.67,40,0
    .goto Thousand Needles,20.45,27.87,40,0
    .goto Thousand Needles,20.83,28.26,40,0
    .goto Thousand Needles,22.05,30.61,40,0
    .goto Thousand Needles,24.56,32.76,40,0
    .goto Thousand Needles,25.29,34.23,40,0
    .goto Thousand Needles,27.34,34.02,40,0
    .goto Thousand Needles,28.24,33.37,40,0
    .goto Thousand Needles,28.64,33.43,40,0
    .goto Thousand Needles,29.24,33.96,40,0
    .goto Thousand Needles,29.51,33.89,40,0
    .goto Thousand Needles,30.69,32.43,40,0
    .goto Thousand Needles,31.55,30.61,40,0
    .goto Thousand Needles,32.29,30.52,40,0
    .goto Thousand Needles,33.27,30.86,40,0
    .goto Thousand Needles,33.81,30.12,40,0
    .goto Thousand Needles,34.25,29.49,40,0
    .goto Thousand Needles,35.19,28.11,40,0
    .goto Thousand Needles,35.84,28.59,40,0
    .goto Thousand Needles,36.57,29.47,40,0
    .goto Thousand Needles,37.34,29.29,40,0
    .goto Thousand Needles,38.81,31.73,40,0
    .goto Thousand Needles,39.51,33.43,40,0
    >>Tuez le |cRXP_ENEMY_Galak Messenger|r. Dépouillez-le pour la [|cRXP_LOOT_Assassination Note|r]. Utilisez-la pour commencer la quête
    >>Il patrouille. Il apparaît à la combe du Sabot fendu (le camp de centaures à l'est)
    >>Cherchez-le avec [Oeil d'aigle] si vous l'avez appris << Hunter
    >>Cherchez-le avec [Double vue] si vous l'avez appris << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acceptez la quête Complot d'assassinat
    .use 12564
    .unitscan Galak Messenger
step
    #loop
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,0
    .goto Thousand Needles,11.50,21.61,40,0
    .goto Thousand Needles,11.88,20.90,40,0
    .goto Thousand Needles,12.89,19.97,40,0
    .goto Thousand Needles,14.49,20.04,40,0
    .goto Thousand Needles,15.69,18.65,40,0
    .goto Thousand Needles,16.20,18.53,40,0
    .goto Thousand Needles,16.70,18.61,40,0
    .goto Thousand Needles,17.28,18.93,40,0
    .goto Thousand Needles,17.66,19.46,40,0
    .goto Thousand Needles,17.96,20.18,40,0
    .goto Thousand Needles,17.87,20.78,40,0
    .goto Thousand Needles,17.54,21.49,40,0
    .goto Thousand Needles,17.24,22.32,40,0
    .goto Thousand Needles,17.66,22.98,40,0
    .goto Thousand Needles,18.11,23.65,40,0
    .goto Thousand Needles,18.57,24.07,40,0
    .goto Thousand Needles,18.68,24.68,40,0
    .goto Thousand Needles,18.64,25.90,40,0
    .goto Thousand Needles,18.48,26.74,40,0
    .goto Thousand Needles,17.82,27.50,40,0
    .goto Thousand Needles,17.19,29.60,40,0
    .goto Thousand Needles,15.67,31.56,40,0
    .goto Thousand Needles,15.08,31.63,40,0
    .goto Thousand Needles,14.34,30.13,40,0
    .goto Thousand Needles,13.75,28.54,40,0
    .goto Thousand Needles,13.36,26.97,40,0
    .goto Thousand Needles,13.01,26.31,40,0
    .goto Thousand Needles,11.91,25.02,40,0
    .goto Thousand Needles,11.55,24.44,40,0
    .goto Thousand Needles,11.49,24.07,40,0
    .goto Thousand Needles,11.16,23.21,40,0
    .goto Thousand Needles,11.20,22.29,40,0
    >>Tuez |cRXP_ENEMY_Steelsnap|r. Dépouillez-le pour la |cRXP_LOOT_Steelsnap's Rib|r
    >>Il patrouille en sens antihoraire
    >>|cRXP_WARN_Soyez prudent, il a deux |cRXP_ENEMY_Hyènes|r qui le défendent !|r
    >>Cherchez-le avec [Oeil d'aigle] si vous l'avez appris << Hunter
    >>Cherchez-le avec [Double vue] si vous l'avez appris << Shaman
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >> Montez votre expérience jusqu'à 29500+/36300xp
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Soyez vigilant ! Rendre cette quête va invoquer trois |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_que vous devrez tuer pour protéger |cRXP_FRIENDLY_Kanati|r|r
    .turnin 4881 >> Rendez la quête Complot d'assassinat
    .accept 4966 >> Acceptez la quête Protéger Kanati Greycloud
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Tuez les |cRXP_ENEMY_Galak Assassins|r pour protéger |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Rendez la quête Protéger Kanati Greycloud
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Rendez A Dip in the Moonwell
    .accept 9434 >> Acceptez Testing the Tonic
    .turnin 5151 >> Rendez la quête Hypercapaciteur bidulotron
    .target Wizlo Bearingshiner
    .isQuestComplete 5151
    .group
step
    #optional
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Rendez A Dip in the Moonwell
    .accept 9434 >> Acceptez Testing the Tonic
    .target Wizlo Bearingshiner
step
    #sticky
    #completewith EnterRFK
    .subzone 491,2 >> Maintenant vous devez trouver un groupe pour le Kraal de Tranchebauge
    .dungeon RFK
step
    #loop
    .goto Thousand Needles,36.58,38.77,0
    .goto Thousand Needles,36.58,38.77,35,0
    .goto Thousand Needles,37.77,38.17,35,0
    .goto Thousand Needles,36.63,36.23,35,0
    .goto Thousand Needles,34.96,33.22,35,0
    .goto Thousand Needles,33.37,32.85,35,0
    .goto Thousand Needles,33.67,34.09,35,0
    .goto Thousand Needles,34.88,34.82,35,0
    .goto Thousand Needles,35.62,36.20,35,0
    .goto Thousand Needles,36.05,37.41,35,0
    >>Cueillez les |cRXP_PICK_Incendia Agave Plants|r sur le sol et sous l'eau
    >>Les |cRXP_ENEMY_Scalding Elementals|r et les |cRXP_ENEMY_Boiling Elementals|r sont insensibles aux dégâts de givre, et très résistants au feu. Essayez de les éviter ou utilisez des sorts d'Arcane << Mage
    >>Faites attention comme les |cRXP_ENEMY_Boiling Elementals|r lancent [Jet de vapeur], réduisant votre chance de toucher de 30% pendant 10 secondes << Warrior/Rogue/Shaman/Druid
    >>Faites attention les |cRXP_ENEMY_Scalding Elementals|r lancent [Brûlure], infligeant instantanément 150 dégâts de feu vous étourdissant pendant 4 secondes
    .complete 5062,1 --Collect Incendia Agave (x10)
    .maxlevel 31
step
    #completewith next
    >>Si possible, les membres de votre groupes devraient vous partager la quête suivante. Sinon, passez cette étape
    .accept 1109 >> Acceptez la quête Corvée de guano
    .dungeon RFK
step
    #label EnterRFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.89,70.35
    .subzone 491,2 >> Entrez dans le Kraal de Tranchebauge
    .dungeon RFK
step
    >>Tuez les |cRXP_ENEMY_Kraul Bats|r. Dépouillez-les pour un |cRXP_LOOT_Kraul Guano|r
    .complete 1109,1 --Kraul Guano (1)
    .mob Kraul Bat
    .mob Greater Kraul Bat
    .dungeon RFK
    .isOnQuest 1109
step
    >>tuez |cRXP_ENEMY_Charlga Razorflank|r. Dépouillez-la pour son |cRXP_LOOT_Heart|r et pour son [|cRXP_LOOT_Small Scroll|r]. Utilisez le parchemin pour commencer la quête
    .complete 1102,1 --Razorflank's Heart (1)
    .collect 17008,1,6522 --Collect Small Scroll (1)
    .accept 6522 >>Acceptez la quête Une alliance impie
    .mob Charlga Razorflank
    .use 17008
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Willix the Importer|r
    >>Ceci va commencer une escorte
    .accept 1144 >> Acceptez Willix l'Importateur
    .target Willix the Importer
    .dungeon RFK
step
    >>Escortez |cRXP_FRIENDLY_Willix the Importer|r à travers le Kraal de Tranchebauge
    >>|cRXP_WARN_Assurez-vous de rester proche de |cRXP_FRIENDLY_Willix|r sinon la quête pourrait ne pas se valider !|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
    .target Willix the Importer
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Willix the Importer|r
    .turnin 1144 >> Rendez Willix l'Importateur
    .target Willix the Importer
    .isQuestComplete 1144
    .dungeon RFK
step
    #completewith HSTB
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    .train 3566,1 << Mage
step << Mage
    #completewith HSTB
    .cast 3566 >>Lancez [Téléportation : Thunder Bluff]
    .zoneskip Thunder Bluff
    .train 3566,3
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
    .train 3566,3
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 8422 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <32,1
    .train 3566,3
step
    #label HSTB
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Innkeeper Pala
    .isQuestAvailable 4904,1151,5088,5147
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .turnin 1131 >> Rendez la quête Broie-l'acier
    .accept 1136 >> Acceptez la quête Gueule-glacée
    .target Melor Stonehoof
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <30,1
    .xp >32,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urek|r
    .train 14263 >> Apprenez vos sorts de classe
    .target Urek Thunderhorn
    .xp <32,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >> Apprenez les compétences de votre familier
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ker|r
    .train 7887 >> Apprenez vos sorts de classe
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 7369 >> Apprenez vos sorts de classe
    .accept 1718 >>Acceptez la quête L'île mortelle
    .target Torm Ragetotem
    .xp <30,1
    .xp >32,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torm|r
    .train 20658 >> Apprenez vos sorts de classe
    .accept 1718 >>Acceptez la quête L'île mortelle
    .target Torm Ragetotem
    .xp <32,1
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >> Rendez la quête Feu sacré
    .target Magatha Grimtotem
    .isQuestComplete 5062
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magatha|r
    .accept 5088 >> Acceptez la quête Arikara
    .target Magatha Grimtotem
    .isQuestTurnedIn 5062
    .group
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kym|r
    .train 3029 >> Apprenez vos sorts de classe
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kym|r
    .train 783 >> Apprenez vos sorts de classe
    .target Kym Wildmane
    .xp <30,1
    .xp >32,1
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kym|r
    .train 22568 >> Apprenez vos sorts de classe
    .target Kym Wildmane
    .xp <32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 8104 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 602 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Miles|r
    .train 6077 >> Apprenez vos sorts de classe
    .target Miles Welsh
    .xp <32,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 759 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shymm|r
    .train 8422 >> Apprenez vos sorts de classe
    .target Archmage Shymm
    .xp <32,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Apprenez [Téléportation : Thunder Bluff]
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 8053 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 556 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <30,1
    .xp >32,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tigor|r
    .train 421 >> Apprenez vos sorts de classe
    .target Tigor Skychaser
    .xp <32,1
step
    #completewith next
    .skill firstaid,150 >> Fabriquez des [Bandages épais en laine] jusqu'à ce que votre compétence soit de 150
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Apprenez [Bandage en soie]
    >>Passez cette étape si vous n'avez pas assez d'Etoffe de soie pour atteindre un niveau de compétence de 150
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << !Undead --Quest unavailable to Undeads
    .goto Thunder Bluff,34.42,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sage|r
    .accept 1049 >> Acceptez la quête Compendium des Déchus
    .target Sage Truthseeker
    .dungeon SM
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Achetez un|r [Arc long solide] |cRXP_BUY_à Kuna si il est disponible|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Corne-Tonnerre
    .money <1.9467
    .isQuestAvailable 4904,1151,5088,5147
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Kuna|r
    .collect 3030,1800,1153,1 --Razor Arrow (1800)
    .target Kuna Corne-Tonnerre
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Delgo si elle est disponible|r
    >>Sinon, vous pouvez aussi acheter un [Bullova]
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem-de-Rage
    .isQuestAvailable 4904,1151,5088,5147
step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Achetez une|r [Hache impitoyable] |cRXP_BUY_à Delgo si elle est disponible|r
    >>Sinon, vous pouvez aussi acheter un [Bullova] ou vérifiez l'Hôtel des Ventes si une meilleure arme est disponible
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem-de-Rage
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Epée large] |cRXP_BUY_à Kard|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Epée large] |cRXP_BUY_à Kard|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +Équipez l'[Epée large]
    .use 2520
    .itemcount 2520,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Main Gauche] |cRXP_BUY_à Kard et mettez-la dans votre main gauche|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Achetez une|r [Main Gauche] |cRXP_BUY_à Kard et mettez-la dans votre main gauche|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +Équipez la [Main gauche]
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auld|r
    .turnin 1102 >> Rendez la quête Un destin funeste
    .target Auld Stonespire
    .isQuestComplete 1102
    .dungeon RFK
step
    #completewith EnterDWM
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >> Rendez la quête Un nouveau minerai
    .target Tatternack Steelforge
    .isQuestComplete 1153
step << Tauren
    #optional
    #completewith next
    .subzone 222 >> Voyagez jusqu'à Village de Bloodhoof
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xar'Ti|r et |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Apprenez [Monte de kodo]
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step
    #label EnterDWM
    .goto The Barrens,50.48,78.72,100 >> Voyagez au Marécage d'Âprefange
    .zoneskip Dustwallow Marsh
    .isQuestAvailable 4904,1151,5088,5147
step
    #optional
	.goto Dustwallow Marsh,29.7,47.6
    >>Cliquez sur les |cRXP_PICK_Suspicious Hoofprints|r sur le sol
    .accept 1268 >> Acceptez Des empreintes de sabots suspectes
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
	.goto Dustwallow Marsh,29.83,48.24
    >>Cliquez sur le |cRXP_PICK_Theramore Guard Badge|r sur la planche de bois sur le sol
    .accept 1269 >> Acceptez Lieutenant Paval Reethe
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
    .goto Dustwallow Marsh,29.63,48.60
    >>Cliquez sur le |cRXP_PICK_Black Shield|r au-dessus de la cheminée
    .accept 1251 >> Acceptez Le Bouclier noir
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #completewith FlyFreewind
    .goto Dustwallow Marsh,30.65,45.34,40,0
    .goto Dustwallow Marsh,32.28,42.80,40,0
    .goto Dustwallow Marsh,33.12,40.85,40,0
    .goto Dustwallow Marsh,33.55,38.71,40,0
    .goto Dustwallow Marsh,34.73,37.66,40,0
    .goto Dustwallow Marsh,34.31,34.40,40,0
    .goto Dustwallow Marsh,33.30,31.23,40,0
    .goto Dustwallow Marsh,36.64,31.72,120,0
    .subzone 496 >> Voyagez jusqu'au village Mur-de-Fougères
    >>Faites attention ! Il y a des créatures de niveau 36-38 dans la zone. Suivez bien la flèche pour rester en sécurité
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >> Rendez Des empreintes de sabots suspectes
    .target Krog
    .isOnQuest 1268
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krog|r
    .turnin 1269 >> Rendez Lieutenant Paval Reethe
    .target Krog
    .isOnQuest 1269
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krog|r
    .turnin 1251 >> Rendez la quête Le Bouclier noir
    .accept 1321 >> Acceptez Le Bouclier noir
    .target Krog
    .isOnQuest 1251
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krog|r
    .accept 1321 >> Acceptez Le Bouclier noir
    .target Krog
    .isQuestTurnedIn 1251
step
    #optional
    .goto Dustwallow Marsh,36.50,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Do'gol|r
    .turnin 1321 >> Rendez la quête Le Bouclier noir
    .target Do'gol
    .isQuestTurnedIn 1251
step << Warrior/Shaman
    .goto Dustwallow Marsh,36.17,31.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zulrg|r
    .vendor >>|cRXP_BUY_Achetez un|r [Grand bâton] |cRXP_BUY_à Zulrg si il est disponible|r
    --.collect 12251,1,873,1 --Collect Big Stick (1)
    .money <4.3117
    .target Zulrg
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balai|r
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins] |cRXP_BUY_et des|r [Parchemins] |cRXP_BUY_ si elle en a en stock|r
    .target Balai Lok'Wein
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balai|r
    >>|cRXP_BUY_Achetez les|r [Manuel de Premiers soins] |cRXP_BUY_à Balai|r
    .collect 16112,1,873,1 >> Manuel : Bandage épais en soie (1)
    .collect 16113,1,873,1 >> Manuel : Bandage en tisse-mage (1)
    .collect 16084,1,873,1 >> Expert en premiers soins - Sous les pansements (1)
    .target Balai Lok'Wein
    .skill firstaid,<1,1
step
    #label FlyFreewind
    #completewith FreewindHome
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shardi|r
    .fp Brackenwall >> Prenez le chemin de vol du Village Mur-de-Fougères
    .fly Freewind Post >>Volez jusqu'au Poste de Librevent
    .target Shardi
    .zoneskip Thousand Needles
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >> Rendez la quête Le cavalier céleste
    .target Elu
    .isQuestComplete 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_à Starn si il en a en stock|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins] |cRXP_BUY_et des|r [Parchemins] |cRXP_BUY_à Montarr si il en a en stock|r << !Warrior
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins]|cRXP_BUY_, |rdes [Parchemins] |cRXP_BUY_et des|r [Viétérules] |cRXP_BUY_à Montarr si il en a en stock|r << Warrior
    .target Montarr
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    #label FreewindHome
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Adeqwa|r
    .home >> Liez votre Pierre de foyer au Poste de Librevent
    .target Innkeeper Abeqwa
    .bindlocation 484
    .subzoneskip 484,1
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 9434 >> Rendez Testing the Tonic
    .target Magistrix Elosai
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >> Rendez la quête L’épreuve de l’Endurance
    .target Dorn Plainstalker
    .isQuestComplete 1150
    .group
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorn|r
    .accept 1151 >> Acceptez la quête L'épreuve de la Force
    .target Dorn Plainstalker
    .isQuestTurnedIn 1150
    .group
    .maxlevel 31
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Trouvez et tuez |cRXP_ENEMY_Rok'Alim the Pounder|r. Dépouillez-le pour ses |cRXP_LOOT_Fragments|r
    >>Il patrouille dans une grande section de la partie nord/ouest de la zone
    >>Passez cette étape pour l'instant si vous n'arrivez pas à le trouver
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .group 2
step
    .goto Thousand Needles,31.47,36.71,30 >> Dirigez-vous à la Cime de Noir-nuage
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Montez la Cime de Noir-nuage
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,31.79,32.58
    >>Ouvrez les |cRXP_PICK_Document Chest|r en haut du plateau. Ramassez la |cRXP_LOOT_Secret Note #1|r
    .complete 5064,1 --Secret Note #1 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,33.80,39.90
    >>Ouvrez le |cRXP_PICK_Document Chest|r à l'intérieur de la grande tente. Ramassez la |cRXP_LOOT_Secret Note #1|r
    .complete 5064,2 --Secret Note #2 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,39.20,41.60
    >>Ouvrez le |cRXP_PICK_Document Chest|r à l'intérieur de la tente sur le plateau à l'est. Ramassez la |cRXP_LOOT_Secret Note #1|r
    .complete 5064,3 --Secret Note #3 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,35.68,39.25,20,0
    .goto Thousand Needles,34.32,35.74,20,0
    .goto Thousand Needles,35.56,30.94,20,0
    .goto Thousand Needles,36.97,31.97,20 >> Voyagez vers le |cRXP_PICK_Bonfire|r sur le plateau au nord-est
    .isOnQuest 5088
    .maxlevel 31
step
    >>Tuez les |cRXP_ENEMY_Grimtotems|r et allumez le |cRXP_PICK_Bonfire|r
	>>Tuez |cRXP_ENEMY_Arikara|r. Dépouillez-la pour sa |cRXP_LOOT_Skin|r
    .goto Thousand Needles,38.00,35.30
    .complete 5088,2 --Incendia Powder (1)
    .complete 5088,1 --Arikara Serpent Skin (2)
    .mob Arikara
    .isOnQuest 5088
    .group
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.80
    >>Tuez |cRXP_ENEMY_Arnak Grimtotem|r. Dépouillez-le pour son |cRXP_LOOT_Hoof|r
    .complete 5147,1 --Arnak's Hoof (1)
    .mob Arnak Grimtotem
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lakota|r
    >>Ceci va commencer une escorte
    .accept 4904,1 >> Acceptez la quête Libre, enfin !
    .target Lakota Windsong
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #label LakoteEscort
    .goto Thousand Needles,38.96,29.46,20,0
    .goto Thousand Needles,37.56,31.43,20,0
    .goto Thousand Needles,36.89,31.73,20,0
    .goto Thousand Needles,35.64,31.01,20,0
    .goto Thousand Needles,34.53,30.78,20,0
    .goto Thousand Needles,33.19,28.54,20,0
    .goto Thousand Needles,32.53,27.44,20,0
    .goto Thousand Needles,32.28,28.67,20,0
    .goto Thousand Needles,32.04,31.37,20,0
    .goto Thousand Needles,32.86,32.62,20,0
    .goto Thousand Needles,33.05,35.42,20,0
    .goto Thousand Needles,31.06,36.89
	>>Escortez |cRXP_FRIENDLY_Lakota|r en sécurité
    >>Deux |cRXP_ENEMY_Grimtotems|r vont apparaître à chaque fois qu'elle atteindra une nouvelle plateforme. Essayez de rester devant elle pour nettoyer les plateformes si vous avez les réapparition des créatures derrière
	>>Faites attention comme cette quête est DIFFICILE. N'ayez pas peur de vous enfuir en courant derrière vous et en ratant la quête d'escorte
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle. (1)
    .target Lakota Windsong
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Motega|r
    .turnin 5088 >> Rendez la quête Arikara
    .target Motega Firemane
    .isQuestComplete 5088
    .group
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Soyez vigilant ! Rendre cette quête va invoquer trois |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_que vous devrez tuer pour protéger |cRXP_FRIENDLY_Kanati|r|r
    .turnin 4881 >> Rendez la quête Complot d'assassinat
    .accept 4966 >> Acceptez la quête Protéger Kanati Greycloud
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Tuez les |cRXP_ENEMY_Galak Assassins|r pour protéger |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Rendez la quête Protéger Kanati Greycloud
    .isQuestComplete 4966
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Trouvez et tuez |cRXP_ENEMY_Rok'Alim the Pounder|r. Dépouillez-le pour ses |cRXP_LOOT_Fragments|r
    >>Il patrouille dans une grande section de la partie nord/ouest de la zone
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .group 2
step
    #label TestofStrengthTI
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorn|r
    .turnin 1151 >> Rendez la quête L'épreuve de la Force
    .target Dorn Plainstalker
    .isQuestComplete 1151
    .group
step
    #loop
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,51.89,43.02,40,0
    .goto Thousand Needles,53.41,46.19,40,0
    .goto Thousand Needles,54.05,44.96,40,0
    .goto Thousand Needles,53.47,46.65,40,0
    .goto Thousand Needles,52.61,48.28,40,0
    .goto Thousand Needles,53.64,48.50,40,0
    .goto Thousand Needles,51.48,48.06,40,0
    .goto Thousand Needles,59.69,47.76,40,0
    .goto Thousand Needles,62.21,47.76,40,0
    .goto Thousand Needles,62.63,48.38,40,0
    .goto Thousand Needles,64.01,47.52,40,0
    .goto Thousand Needles,63.92,46.63,40,0
    .goto Thousand Needles,63.10,45.53,40,0
    .goto Thousand Needles,65.83,51.44,40,0
    .goto Thousand Needles,65.44,50.11,40,0
    .goto Thousand Needles,64.91,50.30,40,0
    .goto Thousand Needles,66.11,49.91,40,0
    .goto Thousand Needles,66.32,49.13,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,58.87,58.69,40,0
    .goto Thousand Needles,57.66,57.70,40,0
    .goto Thousand Needles,58.93,57.68,40,0
    .goto Thousand Needles,58.94,56.55,40,0
    .goto Thousand Needles,58.97,54.98,40,0
    .goto Thousand Needles,59.32,53.69,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,59.79,58.16,0
    >>Tuez les |cRXP_ENEMY_Gravelsnout Surveyors|r, |cRXP_ENEMY_Gravelsnout Diggers|r, et les |cRXP_ENEMY_Gibblesnik|r (si il est là). Dépouillez-les pour un |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .isOnQuest 1153
step
    #optional
    .goto Thousand Needles,43.12,36.86
    .xp 30 >> Montez jusqu'au niveau 30
step
    #label ShimmeringF
    #completewith next
    .goto Thousand Needles,70.58,62.69,200 >> Voyagez aux Salines
    .subzoneskip 439
step
    .goto Thousand Needles,77.79,77.26
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kravel|r
    .accept 1111 >> Acceptez Maître des quais Dizzywig
	.accept 5762 >> Acceptez la quête Hemet Nesingwary
	.target Kravel Koalbeard
step
    #completewith FWHS
    .goto Thousand Needles,75.44,97.37,40,0
    .goto Tanaris,51.60,25.44,100 >> Voyagez à Gadgetzan
    .zoneskip Tanaris
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >> Prenez le chemin de vol de Gadgetzan
    .fly freewind Post >> Volez jusqu'au Poste de Librevent
    .target Bulkrek Ragefist
    .cooldown item,6948,<0
    .subzoneskip 484
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >> Prenez le chemin de vol de Gadgetzan
    .target Bulkrek Ragefist
    .cooldown item,6948,>0,1
step
    #label FWHS
    .hs >> Utilisez votre Pierre de foyer pour revenir au Poste de Librevent
    .goto Thousand Needles,46.06,51.41,30 >>Allez au poste de Livrevent
    .use 6948
    .cooldown item,6948,>0,1
    .subzoneskip 484
    .bindlocation 484,1
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >> Rendez la quête Espionner le Totem sinistre
    .turnin 5147 >> Rendez la quête On recherche : Arnak Grimtotem
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
    .isQuestComplete 5147
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >> Rendez la quête Espionner le Totem sinistre
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Longhorn|r
    .turnin 5147 >> Rendez la quête On recherche : Arnak Grimtotem
    .target Cliffwatcher Longhorn
    .isQuestComplete 5147
step
    .goto Thousand Needles,46.00,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thalia|r
    .turnin 4904 >> Rendez la quête Libre, enfin !
    .target Thalia Amberhide
    .isQuestComplete 4904
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins] |cRXP_BUY_et des|r [Parchemins] |cRXP_BUY_à Montarr si il en a en stock|r << !Warrior
    .vendor >> |cRXP_BUY_Achetez des|r [Potions de soins]|cRXP_BUY_, |rdes [Parchemins] |cRXP_BUY_et des|r [Viétérules] |cRXP_BUY_à Montarr si il en a en stock|r << Warrior
    .target Montarr
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Achetez un|r [|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_à Starn si il en a en stock|r
    .collect 3030,1800,1111,1 --Razor Arrow (1800)
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,1111,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #optional
    .abandon 1151 >>Abandonnez la quête L'épreuve de la Force
step
    #optional
    .abandon 5147 >>Abandonnez la quête On recherche : Arnak Grimtotem
step
    #optional
    .abandon 5064 >>Abandonnez la quête Espionner le Totem sinistre
step
    #optional
    .abandon 5088 >>Abandonnez la quête Arikara
step
    #optional
    .abandon 1152 >>Abandonnez la quête L'épreuve de la Connaissance
step
    #completewith OreSampleTI
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyse|r
    .fly Camp Taurajo >> Volez au Camp Taurajo
    .target Nyse
    .subzoneskip 484,1
step
    #label OreSampleTI
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >> Rendez la quête Un nouveau minerai
    .target Tatternack Steelforge
    .isOnQuest 1153
step << Tauren
    #optional
    #completewith next
    .subzone 222 >> Voyagez jusqu'à Village de Bloodhoof
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xar'Ti|r et |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Apprenez [Monte de kodo]
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step << Tauren
    #optional
    #completewith FlyCR
    .subzone 378 >>Voyagez au Camp Taurajo
    .skill riding,<75,1
step
    #completewith SwarmGrows
    #label FlyCR
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads>> Volez à la Croisée
    .target Omusa Thunderhorn
    .subzoneskip 484
step
    #optional
    #completewith SwarmGrows
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyse|r
    .fly Crossroads>> Volez à la Croisée
    .target Nyse
    .subzoneskip 484,1
step
    #label SwarmGrows
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Korran|r
    .accept 1145 >> Acceptez la quête L'essaim s'agrandit
    .target Korran
step << !Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Volez à Ratchet
	.target Devrak
    .subzoneskip 392
step << Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Volez à Ratchet
	.target Devrak
    .subzoneskip 392
    .isOnQuest 1718
step << Warrior
    #completewith IslanderPickUp
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
	.target Devrak
    .zoneskip Orgrimmar
    .isNotOnQuest 1718
step << Warrior
    #completewith next
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Rendez la quête L'essaim s'agrandit
    .accept 1146 >> Acceptez la quête L'essaim s'agrandit
    .target Belgrom Rockmaul
step << Warrior
    #label IslanderPickUp
    .goto Orgrimmar,80.37,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sorek|r
	.accept 1718 >> Acceptez la quête L'île mortelle
    .target Sorek
step << Warrior
    #completewith WharfDizzy
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Volez à Ratchet
    .target Doras
    .zoneskip Orgrimmar,1
step
    #sticky
    #completewith EnterGNOMER
    .zone 721,2 >> Maintenant vous devez trouver un groupe pour Gnomeregan
    .dungeon GNOMER
step
    #label WharfDizzy
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1111 >> Rendez Maître des quais Dizzywig
    .accept 1112 >> Acceptez Les pièces détachées de Kravel
    .target Wharfmaster Dizzywig
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r
    .turnin 220 >>Rendez la quête L'appel de l'eau
    .accept 63 >>Acceptez la quête L'appel de l'eau
    .target Islen Waterseer
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Islen|r
    >>Vérifiez que vous ayez reçu le [|cRXP_LOOT_Sapta d'eau|r
    .turnin 972 >>Rendez la quête Le sapta d'eau
	.collect 6637,1 --Water Sapta (1)
    .target Islen Waterseer
    .itemcount 6637,<1
step << Warrior
    #completewith next
    .goto The Barrens,65.09,47.81,90,0
    .goto The Barrens,68.61,49.16,100 >> Allez à l'île de la Dispute
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Klannoc|r
    .turnin 1718 >>Rendez L'île mortelle
    .accept 1719 >>Acceptez La Dispute
    .target Klannoc Macleod
step << Warrior
	>>Marchez sur la grille derrière vous. Tuez rapidement les |cRXP_ENEMY_Affray Challengers|r qui viendront un par un
    >>Tuez |cRXP_ENEMY_Big Will|r lorsqu'il apparaît
    .goto The Barrens,68.59,48.76
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
    .mob Big Will
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Klannoc|r
    >>Ceci vous apprendre la Posture berserker
    .turnin 1719 >>Rendez La Dispute
    .accept 1791 >>Acceptez La Vigie des vents
    .target Klannoc Macleod
step << !Mage
    #optional << !Warrior !Shaman
    #completewith FlyOrg2
    .goto The Barrens,62.81,37.91,200 >>Voyagez jusqu'à Ratchet
    .subzoneskip 392
step
    #completewith next
    .goto The Barrens,63.74,38.66
    .zone Stranglethorn Vale >> Prenez le bateau pour la Vallée de Strangleronce
    .zoneskip Stranglethorn Vale
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scooty|r
    .turnin 2842 >>Rendez la quête L'ingénieur en chef Scooty
    .accept 2843 >>Acceptez la quête Gnomer-paaarti !
    .target Scooty
    .timer 9 >> Transpondeur gobelin
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scooty|r
    .turnin 2843 >>Rendez la quête Gnomer-paaarti !
    .target Scooty
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.63,77.55
    .goto Eastern Kingdoms,42.75,59.93,30 >> Marchez sur le Transpondeur Gobelin
    .dungeon GNOMER
step
    #label EnterGNOMER
    .goto Eastern Kingdoms,42.64,59.80,20,0
    .goto Eastern Kingdoms,42.58,59.82,20,0
    .goto Eastern Kingdoms,42.56,59.87,20,0
    .goto Eastern Kingdoms,42.51,60.15,20,0
    .goto Eastern Kingdoms,42.34,60.18
    .zone 721,2 >> Entrez dans Gnomeregan
    .dungeon GNOMER
step
    >>Tuez |cRXP_ENEMY_Mekgineer Thermaplugg|r. Dépouillez-le pour sa |cRXP_LOOT_Safe Combination|r
    >>Ramassez le |cRXP_PICK_Thermaplugg's Safe|r dans la partie nord de la salle pour les |cRXP_LOOT_Rig Blueprints|r
    .complete 2841,2 --Thermaplugg's Safe Combination (1)
    .complete 2841,1 --Rig Blueprints (1)
    .mob Mekgineer Thermaplugg
    .dungeon GNOMER
step << !Mage
	.hs >> Utilisez votre Pierre de foyer pour revenir au Poste de Librevent
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyse|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Nyse
    .zoneskip Thousand Needles,1
    .dungeon GNOMER
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Bragok
    .zoneskip The Barrens,1
step << Mage
    .cast 3567 >>Lancez [Téléportation : Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 8412 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <30,1
    .xp >32,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |r |cRXP_FRIENDLY_Pephredo|r
    .train 8422 >> Apprenez vos sorts de classe
    .target Pephredo
    .xp <32,1
step << Mage
    .goto Orgrimmar,45.43,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Horthus|r|cRXP_BUY_. Achetez au moins deux|r [Runes de Téléportation] |cRXP_BUY_à Horthus|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Horthus
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 1760 >> Apprenez vos sorts de classe
    .target Ormok
    .xp <30,1
    .xp >32,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok|r
    .train 8623 >> Apprenez vos sorts de classe
    .target Ormok
    .xp <32,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Faites un stock de|r [Poudre éclipsante] |cRXP_BUY_et de|r [Poisons]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454/1,-4212.89,1920.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Searn|r
    .accept 1531 >> Acceptez la quête L'appel de l'air
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8232 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <30,1
    .xp >32,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 945 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <32,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 5784 >> Apprenez [Invocation d'un palefroi corrompu]
    .target Mirket
    .xp <30,1
    .xp >32,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 6213 >> Apprenez vos sorts de classe
    .target Mirket
    .xp <32,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Achetez toutes les améliorations de familier que vous pouvez vous permettre
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette de pestilence] |cRXP_BUY_à Katis|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Achetez une|r [Baguette de pestilence] |cRXP_BUY_à Katis|r
    >>Sinon, vous pouvez vérifier à l'Hôtel des Ventes si vous trouvez une meilleure arme
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step
    .goto Orgrimmar,44.70,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Craven Drok|r
    >>|cRXP_WARN_Il patrouille dans la Faille de l'Ombre|r
    .accept 1431 >> Acceptez la quête Les relations de l'Alliance
    .target Craven Drok
step
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Rendez la quête L'essaim s'agrandit
    .accept 1146 >> Acceptez la quête L'essaim s'agrandit
    .target Belgrom Rockmaul
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 7369 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <30,1
    .xp >32,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 20658 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 5384 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <30,1
    .xp >32,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14263 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24559 >> Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <30,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nogg|r
    .turnin 2841 >>Rendez la quête Guerre des plates-formes
    .target Nogg
    .dungeon GNOMER
    .isQuestComplete 2841
step << Orc !Warlock
    #optional
    .goto Orgrimmar,69.40,13.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kildar|r et |cRXP_FRIENDLY_Ogunaro|r
    .train 825 >>Apprenez [Monte de loup]
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFWolf|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kildar
    .target Ogunaro Wolfrunner
step << Hunter
    .goto Orgrimmar,78.11,38.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Achetez des|r [Flèche rasoir] |cRXP_BUY_à Starn|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Acheter la compétence pour porter des haches à deux mains
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 602 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 6077 >> Apprenez vos sorts de classe
    .target Ur'kyo
    .xp <32,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pyreanor|r
    .train 34769 >> Apprenez [Invocation d'un cheval de guerre]
    .target Master Pyreanor
    .xp <30,1
    .xp >32,1
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pyreanor|r
    .train 19836 >> Apprenez vos sorts de classe
    .target Master Pyreanor
    .xp <32,1
step
    .goto Orgrimmar,22.50,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keldran|r près de la sortie ouest d'Orgrimmar
    .turnin 1431 >> Rendez la quête Les relations de l'Alliance
    .accept 1432 >> Acceptez la quête Les relations de l'Alliance
    .target Keldran
step << Troll
    #optional
    #completewith next
    .subzone 367 >> Voyagez vers le Village de Sen'jin
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Troll
    #optional
    .goto Durotar,55.28,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xar'Ti|r et |cRXP_FRIENDLY_Zjolnir|r
    .train 10861 >>Apprenez [Monte de raptor]
    .vendor >>|cRXP_BUY_Achetez un|r [|cFF0070FFRaptor|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Xar'Ti
    .target Zjolnir
]])
