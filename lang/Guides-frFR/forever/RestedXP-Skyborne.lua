if GetLocale() ~= "frFR" then return end
--Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-14 Île de Zéphras
#displayname 1-13 Éolide << Alliance
#displayname 1-12 Éolide << Horde
#group RestedXP Guide Forever (A) << Alliance
#group RestedXP Guide Forever (H) << Horde
#subgroup Guide Speedrun 1-20 << Alliance
#subgroup Guide Speedrun 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Marche de l’Ouest << Alliance !Hunter
#next 14-16 Sombrivage << Alliance Hunter
#next 12-14 Forêt des Pins argentés << Horde !Hunter
#next 12-17 Les Tarides << Horde Hunter

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ailee Cœur-Lointain::251362|r.
    .accept 92460 >>Acceptez la quête Il est temps de grandir
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian le Cherchejour::251361|r.
    .turnin 92460 >>Rendez la quête Il est temps de grandir
    .target Rorian the Dayseeker::251361
    .accept 92461 >>Acceptez la quête Équilibre et harmonie
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elatrell Frêleplume::251368|r.
    .accept 92462 >>Acceptez la quête Enquête sur l’infestation
    .target Elatrell Featherlight::251368
step << Alliance/!Shaman
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step << Horde Shaman
    #hidewindow
    #completewith Juvenile Vuldren Grind
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Jeunes vuldrènes::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>Tuez les |cRXP_ENEMY_Mouches-cirrus agaçantes::251169|r.
    *|cRXP_WARN_Tuez-les en priorité|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>Tuez les |cRXP_ENEMY_Jeunes vuldrènes::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Tuez des mobs jusqu'à 480+/900xp pour monter au niveau 3 après avoir rendu la quête du totem.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elatrell Frêleplume::251368|r.
    *|cRXP_WARN_N'utilisez pas |r|T132845:0|t[Marche sur l’air] |cRXP_WARN_comme vous en aurez bientôt besoin|r.
    .turnin 92462 >>Rendez la quête Enquête sur l’infestation
    .accept 92463 >>Acceptez la quête La reine mouche-cirrus
    .target Elatrell Featherlight::251368
step << Warrior
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-lame Ren::251964|r.
    .train 6673 >>Apprenez [Cri de guerre]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
step
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.80,24.05
    >>Montez l'escalier en colimaçon, puis |Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halaan Oeil-de-Faucon::257554|r en haut de la tour.
    .accept 94414 >>Acceptez la quête Les ancres de Zéphras
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halaan Oeil-de-Faucon::257554|r.
    *|cRXP_WARN_Déplacez-vous ou appuyez sur Echap pour l'annuler|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halaan Oeil-de-Faucon::257554|r.
    *|cRXP_WARN_Déplacez-vous ou appuyez sur Echap pour l'annuler|r.
    .turnin 94414 >>Rendez la quête Les ancres de Zéphras
    .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::263113|r.
    .accept 92474 >>Acceptez la quête Tomber avec panache
    .target Myriaal Mistwake::263113
step << Skyborne
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian le Cherchejour::251361|r.
    .turnin 92461,1 >>Rendez la quête Équilibre et harmonie
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>En tombant de la tour, utilisez |T132845:0|t[Marche sur l’air] et visez le donneur de quête.
    *Vous pouvez aussi sauter et spammez sur votre bouton sur le sol.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>Marche sur l’air
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian le Cherchejour::251361|r.
    .turnin 92461,1 >>Rendez la quête Équilibre et harmonie
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Rendez la quête Tomber avec panache
    .accept 92464 >>Acceptez la quête Agitation élémentaire
    .accept 92481 >>Acceptez la quête Élève des arcanes << Mage
    .accept 92483 >>Acceptez la quête Un foyer dans les ombres << Rogue
    .accept 92482 >>Acceptez la quête La voie de la chasse << Hunter
    .accept 92484 >>Acceptez la quête S’ouvrir aux éléments << Shaman
    .accept 92532 >>Acceptez la quête La voie du guerrier << Warrior
    .accept 92485 >>Acceptez la quête Élève de la nature << Druid
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian le Cherchejour::251361|r.
    .turnin 92461,1 >>Rendez la quête Équilibre et harmonie
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Acceptez la quête Agitation élémentaire
    .accept 92481 >>Acceptez la quête Élève des arcanes << Alliance Mage
    .accept 92483 >>Acceptez la quête Un foyer dans les ombres << Rogue
    .accept 92482 >>Acceptez la quête La voie de la chasse << Hunter
    .accept 92484 >>Acceptez la quête S’ouvrir aux éléments << Horde Shaman
    .accept 92532 >>Acceptez la quête La voie du guerrier << Warrior
    .accept 92485 >>Acceptez la quête Élève de la nature << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Vent-argent::251373|r.
    .turnin 92485 >>Rendez la quête Élève de la nature
    .target Xyton Silverwind::251373
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Vent-argent::251373|r.
    .train 1126 >>Apprenez |T136078:0|t[Marque du fauve]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
    .money <0.0010
    .xp <1,1
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Murméclat::251379|r.
    .turnin 92481 >>Rendez la quête Élève des arcanes
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Murméclat::251379|r.
    .train 1459 >>Apprenez [Intelligence des Arcanes]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.0010
    .xp <1,1
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sculpte-vent Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Rendez la quête S’ouvrir aux éléments
    .accept 92466 >>Acceptez la quête L'appel de la terre
step << Horde Shaman
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sculpte-vent Boro::251374|r.
    .train 8017 >>Apprenez [Arme Croque-roc]
    .target Windshaper Boro::251374
    .money <0.0010
    .skipgossipid 136811
    .xp <1,1
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'ree Doublevue::251376|r.
    .turnin 92482 >>Rendez la quête La voie de la chasse
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ventaari Vœu-Radieux::251487|r.
    .accept 92598 >>Acceptez la quête Le don de vue céleste
    .target Ventaari Brightwish::251487
step << !Warrior !Rogue 
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .itemcount 2512,<1000 << Hunter -- Rough Arrow
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Solcrête::251537|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .vendor 251537 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas votre |T133970:0|t[Viande filandreuse] << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
step << Horde
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    .accept 93552 >>Acceptez la quête Collecte de pierres de vent
    .target Dalia the Collector::251363
step << Horde
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Rogue/Horde Warrior
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92463 -- The Cirrusfly Queen
    .isQuestNotComplete 92463 -- The Cirrusfly Queen
    .goto 2521,43.41,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    *|cRXP_WARN_Passez cette étape si vous ne pouvez pas vous le permettre|r
    .collect 2131,1 >>Achetez et équipez une |T135274:0|t[Épée courte] << Rogue
    .collect 1194,1 >>Achetez et équipez une |T135276:0|t[Bâtarde] << Warrior
    .target Dalia the Collector::251363
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith next
    #label Harvesting Windstones
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    .accept 93552 >>Acceptez la quête Collecte de pierres de vent
    .target Dalia the Collector::251363
step << Alliance Rogue/Alliance Warrior
    .goto 2521,43.41,23.51
    #completewith Harvesting Windstones
    .collect 2131,1 >>Achetez et équipez une |T135274:0|t[Épée courte] << Rogue
    .collect 1194,1 >>Achetez et équipez une |T135276:0|t[Bâtarde] << Warrior
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith Harvesting Windstones
    .goto 2521,43.41,23.51
    .vendor 251364 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas votre |T133970:0|t[Viande filandreuse]. << Alliance
    .target Destin Thriceforged::251364
step << Alliance !Hunter !Mage !Druid
    #requires Harvesting Windstones
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    .accept 93552 >>Acceptez la quête Collecte de pierres de vent
    .target Dalia the Collector::251363
step << Alliance Hunter/Alliance Mage/Alliance Druid
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    .accept 93552 >>Acceptez la quête Collecte de pierres de vent
    .target Dalia the Collector::251363
step << Alliance
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falorne Tombevent::251371|r.
    .accept 92597 >>Acceptez la quête Lecture des lignes telluriques
    .target Falorne Fallwind::251371
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Veillevent::249363|r.
    .turnin 92464 >>Rendez la quête Agitation élémentaire
    .accept 92465 >>Acceptez la quête Des agitateurs, des provocateurs, des animaux
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Convertis al'aketh::251160|r et les |cRXP_ENEMY_Vents tourbillonnants::251143|r.
    *|cRXP_WARN_Priorisez les |cRXP_ENEMY_Vents tourbillonnants::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>Utilisez |T1029587:0|t[Vue céleste] près de la |cRXP_PICK_Convergence élémentaire|r.
    *|cRXP_WARN_Vous pouvez en trouver dans toute la zone. Utilisez |T1029587:0|t[Vue céleste] près de l'une d'entre elles pour obtenir un bonus de vitesse de déplacement de 10% pendant 15 min au lieu de 15 sec.|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Vue céleste
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Préparez-vous à casser environ 10 pierres, mais vous aurez peut-être besoin d'en casser jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement peuplée, restez à l'un point d'apparition ou alternez entre des pierres proches|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    >>Tuez les |cRXP_ENEMY_Convertis al'aketh::251160|r et les |cRXP_ENEMY_Vents tourbillonnants::251143|r.
    *Dépouillez-les pour leur |T1020384:0|t[Chevalière d’Akir] << Shaman
    *|cRXP_WARN_Priorisez les |cRXP_ENEMY_Vents tourbillonnants::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Veillevent::249363|r.
    .turnin 92465 >>Rendez la quête Des agitateurs, des provocateurs, des animaux
    .accept 92469 >>Acceptez la quête Retour auprès de Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>Utilisez votre Pierre de foyer pour revenir à Thendal
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sculpte-vent Boro::251374|r
    .turnin 92466 >>Rendez la quête L'appel de la terre
    .accept 92467 >>Acceptez la quête L'appel de la terre
    .target Windshaper Boro::251374
step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Préparez-vous à casser environ 10 pierres, mais vous aurez peut-être besoin d'en casser jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement peuplée, restez à l'un point d'apparition ou alternez entre des pierres proches|r.
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Tuez la |cRXP_ENEMY_Reine mouche-cirrus::251404|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404
step << Alliance/!Shaman
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Préparez-vous à casser environ 10 pierres, mais vous aurez peut-être besoin d'en casser jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement peuplée, restez à l'un point d'apparition ou alternez entre des pierres proches|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Veillevent::249363|r.
    .turnin 92464 >>Rendez la quête Agitation élémentaire
    .accept 92465 >>Acceptez la quête Des agitateurs, des provocateurs, des animaux
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Préparez-vous à casser environ 10 pierres, mais vous aurez peut-être besoin d'en casser jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement peuplée, restez à l'un point d'apparition ou alternez entre des pierres proches|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>Tuez les |cRXP_ENEMY_Convertis al'aketh::251160|r et les |cRXP_ENEMY_Vents tourbillonnants::251143|r.
    *|cRXP_WARN_Priorisez les |cRXP_ENEMY_Vents tourbillonnants::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>Utilisez |T236219:0|t[Lecture des lignes telluriques] près de la |cRXP_WARN_Faille bleue|r au sol
    *|cRXP_WARN_Trouvé dans toute la zone|r |cRXP_WARN_Utiliser|r |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près d'un pour obtenir 100% de régénération de Mana et de Points de vie pendant 15 min au lieu de 15 sec|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705 << Alliance
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Utilisez |T1029587:0|t[Vue céleste] près de la |cRXP_PICK_Convergence élémentaire|r.
    *|cRXP_WARN_Vous pouvez en trouver dans toute la zone. Utilisez |T1029587:0|t[Vue céleste] près de l'une d'entre elles pour obtenir un bonus de vitesse de déplacement de 10% pendant 15 min au lieu de 15 sec.|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Vue céleste
step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>Utilisez le |T134743:0|t[Sapta de terre].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre mineure::251166|r
    .turnin 92467 >>Rendez la quête L'appel de la terre
    .accept 92468 >>Acceptez la quête L'appel de la terre
    .target Minor Manifestation of Earth::251166
    .use 6635
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>Sautez de la montagne et ressuscitez au Cimetière.
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien des âmes::6491|r.
    .target Spirit Healer::6491
step << Horde Shaman
    #loop
    .goto 2521,48.290,25.694,20,0
    .goto 2521,47.173,23.545,20,0
    .goto 2521,46.945,20.927,20,0
    .goto 2521,44.186,22.288,20,0
    .goto 2521,42.832,22.274,20,0
    .goto 2521,43.473,23.845,20,0
    .goto 2521,43.809,25.423,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #hidewindow
    #completewith Windstone Cluster
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    +1
step << Alliance/!Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Préparez-vous à casser environ 10 pierres, mais vous aurez peut-être besoin d'en casser jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement peuplée, restez à l'un point d'apparition ou alternez entre des pierres proches|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>Tuez les |cRXP_ENEMY_Convertis al'aketh::251160|r et les |cRXP_ENEMY_Vents tourbillonnants::251143|r.
    *Dépouillez-les pour leur |T1020384:0|t[Chevalière d’Akir] << Shaman
    *|cRXP_WARN_Priorisez les |cRXP_ENEMY_Vents tourbillonnants::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    *|cRXP_WARN_Préparez-vous à casser environ 10 pierres, mais vous aurez peut-être besoin d'en casser jusqu'à 15|r.
    *|cRXP_WARN_Si la zone est anormalement peuplée, restez à l'un point d'apparition ou alternez entre des pierres proches|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>Montez votre expérience jusqu'à 300+/1400xp
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yala Veillevent::249363|r.
    .turnin 92465 >>Rendez la quête Des agitateurs, des provocateurs, des animaux
    .accept 92469 >>Acceptez la quête Retour auprès de Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à Thendal
    .cooldown item,6948,>0
step
    #completewith next
    #label Harvesting Windstones2
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    *|cRXP_WARN_Choisissez entre le Minage, l'Herboristerie ou le Dépeçage.|r
    .turnin 93552 >>Rendez la quête Collecte de pierres de vent
    .target Dalia the Collector::251363
step
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalia la Collectionneuse::251363|r.
    *|cRXP_WARN_Choisissez entre le Minage, l'Herboristerie ou le Dépeçage.|r
    .turnin 93552 >>Rendez la quête Collecte de pierres de vent
    .target Dalia the Collector::251363
step
    .goto 2521,43.44,24.80
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Utilisez |T4625105:0|t[Le Minage pour les nuls] |cRXP_WARN_en marchant vers le donneur de quête|r.
    .use 247840
step
    .goto 2521,43.44,24.80
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Utilisez |T4624731:0|t[Récolte sauvage] |cRXP_WARN_en marchant vers le donneur de quête|r.
    .use 247841
step
    .goto 2521,43.44,24.80
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Utilisez |T4624731:0|t[Le B.a.-ba de la collecte de peaux] |cRXP_WARN_en marchant vers le donneur de quête|r.
    .use 247846
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Akeri Lamebrune::251389|r.
    .turnin 92483 >>Rendez la quête Un foyer dans les ombres
    .target Akeri Duskblade::251389
step << Warrior
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-lame Ren::251964|r.
    .train 100 >>Apprenez [Charge]
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .train 772 >>Apprenez [Pourfendre]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-lame Ren::251964|r.
    .turnin 92532 >>Rendez la quête La voie du guerrier
    .xp <4,1
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elatrell Frêleplume::251368|r.
    .turnin 92463,3 >>Rendez la quête La reine mouche-cirrus
    .target Elatrell Featherlight::251368
step << Alliance
    #arrowtext Parlez à\n|cRXP_FRIENDLY_Falorne Tombevent::251371|r
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falorne Tombevent::251371|r.
    .turnin 92597 >>Rendez la quête Lecture des lignes telluriques
    .target Falorne Fallwind::251371
-- These steps are duplicated because lag can prevent the first batch from appearing.
step
    #arrowtext Utilisez\n|T4625105:0|t[Le Minage pour les nuls]
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Utilisez |T4625105:0|t[Le Minage pour les nuls].
    .use 247840
step
    #arrowtext Utilisez\n|T4624731:0|t[Récolte sauvage]
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Utilisez |T4624731:0|t[Récolte sauvage]
    .use 247841
step
    #arrowtext Utilisez\n|T4624731:0|t[Le B.a.-ba de la collecte de peaux]
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Utilisez |T4624731:0|t[Le B.a.-ba de la collecte de peaux].
    .use 247846
step << Warrior
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-lame Ren::251964|r.
    .train 100 >>Apprenez [Charge]
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .train 772 >>Apprenez [Pourfendre]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître-lame Ren::251964|r.
    .turnin 92532 >>Rendez la quête La voie du guerrier
    .target Blademaster Ren::251964
step << Hunter Horde
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'ree Doublevue::251376|r
    .train 13163 >>Apprenez |T132159:0|t[Aspect du singe]
    .train 1978 >>Apprenez [Morsure de serpent]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian le Cherchejour::251361|r.
    .turnin 92469,1 >>Rendez la quête Retour auprès de Rorian
    .accept 92471 >>Acceptez la quête Aetheen des Trombes -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Horde
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Vent-argent::251373|r.
    .train 8921 >>Apprenez [Éclat lunaire]
    .train 774 >>Apprenez |T136081:0|t[Récupération]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aetheen des Trombes::251366|r.
    .turnin 92471 >>Rendez la quête Aetheen des Trombes
    .accept 92470 >>Acceptez la quête Matriarche ignoble
    .target Aetheen of the Gales::251366
step << Shaman
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sculpte-vent Boro::251374|r
    .turnin 92468 >>Rendez la quête L'appel de la terre
    .target Windshaper Boro::251374
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sculpte-vent Boro::251374|r.
    .train 8042 >>Apprenez [Horion de terre]
    .target Windshaper Boro::251374
    .money <0.01
    .xp <4,1
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ventaari Vœu-Radieux::251487|r.
    .turnin 92598 >>Rendez la quête Le don de vue céleste
    .target Ventaari Brightwish::251487
step << Hunter Alliance
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'ree Doublevue::251376|r
    .train 13163 >>Apprenez |T132159:0|t[Aspect du singe]
    .train 1978 >>Apprenez [Morsure de serpent]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Alliance
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rorian le Cherchejour::251361|r.
    .turnin 92469,1 >>Rendez la quête Retour auprès de Rorian
    .accept 92471 >>Acceptez la quête Aetheen des Trombes -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Alliance
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xyton Vent-argent::251373|r.
    .train 8921 >>Apprenez [Éclat lunaire]
    .train 774 >>Apprenez |T136081:0|t[Récupération]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Murméclat::251379|r.
    .train 116 >>Apprenez [Eclair de givre]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.01
    .xp <4,1
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aetheen des Trombes::251366|r.
    .turnin 92471 >>Rendez la quête Aetheen des Trombes
    .accept 92470 >>Acceptez la quête Matriarche ignoble
    .target Aetheen of the Gales::251366
step
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Venduval::257551|r.
    .accept 92473 >>Acceptez la quête Intrusion agressive
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Solcrête::251537|r
    .collect 277113,1 >>Achetez une |T133637:0|t[Bourse d’herbes d’apprenti]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Solcrête::251537|r
    .collect 2901,1 >>Achetez une |T134708:0|t[Pioche de mineur]
    .collect 277115,1 >>Achetez un |T133635:0|t[Pack de minage d’apprenti]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uualia Solcrête::251537|r
    .collect 7005,1 >>Achetez un |T135637:0|t[Couteau à dépecer]
    .collect 277114,1 >>Achetez un |T133634:0|t[Sacoche de dépeçage d’apprenti]
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas votre |T133970:0|t[Viande filandreuse] << Alliance
    .collect 159,20 >>Achetez de l' |T132794:0|t[Eau de source] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Venduval::257551|r.
    .accept 92473 >>Acceptez la quête Intrusion agressive
    .target Valreaa Valewind::257551
step
    #completewith Scrawny Usera
    +Mettez manuellement le sac de composants dans l'emplacement qui lui est consacré à l'aide de votre souris. Faire un clic droit dessus le placera dans un emplacement pour les sacs normaux à la place
step
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .cast 2383 >>Lancez |T133939:0|t[Découverte d'herbes] pour localiser les herbes à proximité
    *|cRXP_WARN_Vous pouvez cueillir des herbes sur votre route pour commencer à monter votre niveau en Herboristerie à 20 pour une quête ultérieure. Cette étape est facultative, surtout au lancement, alors faites-la à vos risques et périls|r
    .usespell 2383
step
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .cast 2580 >>Lancez |T136025:0|t[Découverte de gisements] pour localiser les filons de minerai à proximité
    *|cRXP_WARN_Vous pouvez miner les filons sur votre route pour commencer à monter votre niveau en Minage à 20 pour une quête ultérieure. Cette étape est facultative, surtout au lancement, alors faites-la à vos risques et périls|r
    .usespell 2580
step
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_Vous pouvez dépecer les bêtes sur votre route pour commencer à monter votre niveau en Dépeçage à 20 pour une quête ultérieure. Cette étape est facultative, surtout au lancement, alors faites-la à vos risques et périls|r
step
    #label Scrawny Usera
    #loop
    .goto 2521,41.05,25.7,30,0
    .goto 2521,40.4,26.9,30,0
    .goto 2521,39.7,27.03,30,0
    .goto 2521,37.25,29.72,40,0
    .goto 2521,38.17,27.84,30,0
    .goto 2521,37.67,26.31,30,0
    .goto 2521,38.44,27.35,30,0
    >>Tuez les |cRXP_ENEMY_Ours::250926|r. Dépouillez-les pour les |T132136:0|t[|cRXP_LOOT_Griffes d’ursera faméliques|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Charognards urseras::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Tuez |cRXP_ENEMY_Urs'anah::251115|r. Dépouillez-le pour la |T5840609:0|t[|cRXP_LOOT_Tête d’Urs’anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    .mob Urs'anah::251115
step
    #loop
    .goto 2521,36.2,25,30,0
    .goto 2521,36.39,23.79,30,0
    .goto 2521,37.33,24.26,30,0
    .goto 2521,36.9,24.54,30,0
    .goto 2521,37.34,25.13,30,0
    .goto 2521,38.12,27.71,30,0
    .goto 2521,37.7,29.46,30,0
    .goto 2521,40.79,26.64,30,0
    >>Tuez les |cRXP_ENEMY_Charognards urseras::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>Mourez et ressuscitez au cimetière.
    *|cRXP_WARN_Utilisez la macro pour s’asseoir afin de mourir plus vite|r.
    .macro Sit, >>Asseyez-vous 
    .target Spirit Healer::6491
step
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aetheen des Trombes::251366|r.
    .turnin 92470,1 >>Rendez la quête Matriarche ignoble << Warrior/Paladin
    .turnin 92470,2 >>Rendez la quête Matriarche ignoble << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Rendez la quête Matriarche ignoble << Mage
    .turnin 92470,4 >>Rendez la quête Matriarche ignoble << Rogue
    .turnin 92470,5 >>Rendez la quête Matriarche ignoble << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien des âmes::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aetheen des Trombes::251366|r.
    .turnin 92470,1 >>Rendez la quête Matriarche ignoble << Warrior/Paladin
    .turnin 92470,2 >>Rendez la quête Matriarche ignoble << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Rendez la quête Matriarche ignoble << Mage
    .turnin 92470,4 >>Rendez la quête Matriarche ignoble << Rogue
    .turnin 92470,5 >>Rendez la quête Matriarche ignoble << Hunter
    .accept 92472 >>Acceptez la quête La prochaine étape
    .accept 96638 >>Acceptez la quête L'aventurier
    .target Aetheen of the Gales::251366
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Venduval::257551|r.
    .turnin 92473,1 >>Rendez la quête Intrusion agressive
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas votre |T133970:0|t[Viande filandreuse] et |T132832:0|t[Petits Oeufs]. << Alliance
    *Ne vendez pas vos |T132832:0|t[Petits Oeufs]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valreaa Venduval::257551|r.
    .turnin 92473,1 >>Rendez la quête Intrusion agressive
    .target Valreaa Valewind::257551
step
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_Équipez l'|r |T135335:0|t[Estramaçon usé] << Warrior/Paladin
    *|cRXP_WARN_Équipez le|r |T135145:0|t[Bâton de combat de novice]  << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Équipez la|r |T135650:0|t[Dague de reconnaissance des Forestiers] << Mage
    *|cRXP_WARN_Équipez le|r |T133057:0|t[Marteau-pioche de garde-paix] << Rogue
    *|cRXP_WARN_Équipez le|r |T135503:0|t[Arc court élégant] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanaa Ventenuit::252095|r.
    .accept 92544 >>Acceptez la quête Voyous al’aketh
    .target Hanaa Nightwind::252095
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Tuez les mobs sur votre route si vous pouvez le faire sans perdre de temps.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanaa Ventenuit::252095|r.
    .accept 92544 >>Acceptez la quête Voyous al’aketh
    .target Hanaa Nightwind::252095
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Brutes al'aketh::251145|r et les |cRXP_ENEMY_Néophytes al'aketh::251448|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Tuez |cRXP_ENEMY_Malduko Fracasse-nuage::256935|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Allez à l'étage supérieure du temple
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Tuez |cRXP_ENEMY_Malduko Fracasse-nuage::256935|r en haut du temple.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .goto 2521,35.910,33.605
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] pour un bonus de vitesse de déplacement de 10%.
    .cooldown spell,1259686,>0,1
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .goto 2521,35.57,33.84
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #hidewindow
    #completewith Grind6
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    +1
step
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>Tuez les |cRXP_ENEMY_Brutes al'aketh::251145|r et les |cRXP_ENEMY_Néophytes al'aketh::251448|r.
    *|cRXP_WARN_Reprenez le buff de|r |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près de la Ligne tellurique|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
    .mob +Al'Aketh Ambusher::251451
step
    #label Grind6
    .xp 5+1740 >>Montez au niveau 5 et 1740/2800xp pour atteindre le niveau 6 après avoir rendu les quêtes du prochain village, afin de pouvoir apprendre de nouveaux sorts.
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanaa Ventenuit::252095|r.
    .turnin 92544 >>Rendez la quête Voyous al’aketh
    .target Hanaa Nightwind::252095
step << !Mage
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux de Pierre de vent|r sur la route pour vous rendre de la vie et du mana
    *|cRXP_WARN_Si vous voyez une Tornade, touchez-la pour 40% de vitesse de mouvement. Les dégâts infligés suppriment l'effet|r.
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r.
    .turnin 92472 >>Rendez la quête La prochaine étape
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r sur votre route. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vérinuage::254358|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Shaman/Druid/Priest/Warlock/Paladin/Mage
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Shaman/Druid
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Mage
    .vendor 254358 >>|cRXP_WARN_Vendez votre camelote|r.
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_Vendez votre camelote|r.
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r.
    .turnin 92472 >>Rendez la quête La prochaine étape
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r.
    .accept 93461 >>Acceptez la quête Bienvenue à Shen’dar ! << Alliance
    .accept 92514 >>Acceptez la quête Bienvenue à Shen’dar ! << Horde
    .target Constable Aonda::251523
-- Level 6 class training is intentionally repeated during later Shen'dar Village visits for players who reach level 6 later.
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Murméclat::251379|r.
    .train 143 >>Apprenez |T135812:0|t[Boule de feu (Rang 2)]
    .train 2136 >>Apprenez [Trait de feu]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Murméclat::251379|r.
    .train 143 >>Apprenez |T135812:0|t[Boule de feu (Rang 2)]
    .train 2136 >>Apprenez [Trait de feu]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.02
    .xp <6,1
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Lance-Solaire::251903|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Acceptez la quête L’Ordre suprême
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Lance-Solaire::251903|r.
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
    .skipgossipid 136139 -- Can you tell me what is happening on Zephras Isle?
    .skipgossipid 136138 -- Do we know why..?
    .skipgossipid 136137 -- How do we solve this?
    .skipgossipid 136136 -- What about the Al'Aketh? Can they help?
    .skipgossipid 136135 -- What of this "Windlord"? Is Al'Akir real, or a creation of the cult?
    .skipgossipid 136134 -- How can you be so sure? If we've never dealt with the windlord directly, surely it's worth a try?
    .skipgossipid 136133 -- <Remain Silent>
step << Alliance
    .goto 2521,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Lance-Solaire::251903|r.
    .turnin 92596 >>Rendez la quête L’Ordre suprême
    .accept 94413 >>Acceptez la quête Un affront magique
    .target Rathiril Sunlance::251903
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Ambrevent::251902|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Acceptez la quête Les Sculpte-vents
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Ambrevent::251902|r.
    .complete 92595,1 --1/1 Listen to Illaya
    .target Illaya Amberwind::251902
    .skipgossipid 135864
    .skipgossipid 135863
    .skipgossipid 135862
    .skipgossipid 135861
    .skipgossipid 135860
    .skipgossipid 135859
    .skipgossipid 135858
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Ambrevent::251902|r.
    .turnin 92595 >>Rendez la quête Les Sculpte-vents
    .accept 94411 >>Acceptez la quête Des mages perturbateurs
    .target Illaya Amberwind::251902
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aarnor Coup-de-Vent::254082|r
    .trainer >>Apprenez vos sorts de classe
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
    .skipgossipid 136811
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmebrise::254089|r.
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmebrise::254089|r.
    .home >>Liez votre Pierre de foyer à Shen'dar
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >> Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >> Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r and buy any missing materials: |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
--     .collect 6217,1 -- Copper Rod
--     .collect 247786,3 -- Mote of Magic
--     .collect 4470,1 -- Simple Wood
--     .skipgossipid 137558
--     .target Nasalanna Windsinger::257020
--     .money <0.0172
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
--     .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
--     .skipgossipid 137559
--     .target Nasalanna Windsinger::257020
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .train 7411,3 -- Enchanting Trained
--     >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
--     *|cRXP_WARN_Afterward, enchant your bracers with Stamina if you have a pair equipped|r
--     .collect 6218,1 -- Runed Copper Rod
--     .collect 247789,1 -- Novice's Practice Wand
--     .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
--     .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
-- step << Mage
--     #completewith MageEnchanting
--     .train 7411,3 -- Enchanting Trained
--     +Abandon Enchanting or continue with it.
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmebrise::254089|r.
    .complete 93461,2 << Alliance --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coriella Calmebrise::254089|r.
    .home >>Liez votre Pierre de foyer à Shen'dar
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Raseterre::254088|r
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Calmevent::254084|r dans la maison.
    .train 3044 >>Apprenez [Tir des Arcanes]
    .train 1130 >>Apprenez [Marque du chasseur]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r dans la maison.
    .train 467 >>Apprenez [Épines]
    .train 5177 >>Apprenez |T136006:0|t[Colère (Rang 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    #label MageEnchanting
    .goto 2521,45.67,45.50
    -- *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r.
    .turnin 93461 >>Rendez la quête Bienvenue à Shen’dar ! << Alliance
    .turnin 92514 >>Rendez la quête Bienvenue à Shen’dar ! << Horde
    .accept 92517 >>Acceptez la quête L’élément du crime
    .target Constable Aonda::251523
-- Intentional repeat of level 6 class training for players who reached level 6 after the earlier trainer visit.
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Calmevent::254084|r.
    .train 3044 >>Apprenez [Tir des Arcanes]
    .train 1130 >>Apprenez [Marque du chasseur]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r
    .train 467 >>Apprenez [Épines]
    .train 5177 >>Apprenez |T136006:0|t[Colère (Rang 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    .isNotOnQuest 93319,92516 -- Pilfered Windstones / Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vérinuage::254358|r
    .collect 1179,5 >>|cRXP_BUY_Achetez 5|r |T132815:0|t[Lait glacé], |cRXP_BUY_ou 10 si vous pouvez vous les permettre|r << Druid/Priest/Warlock
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .money <0.0125
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teeri Bonvent::251906|r.
    .accept 93319 >>Acceptez la quête Les pierres de vent chapardées
    .accept 92516 >>Acceptez la quête Harceleurs hippogriffes
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Tissesoleil::251993|r.
    .accept 92515 >>Acceptez la quête Le problème avec les fièregriffes
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Fil-Luisant::251991|r.
    .accept 93951 >>Acceptez la quête Sa plus belle plume
    .target Taleen Shimmerthread::251991
step << Shaman
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
    >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Warrior/Paladin
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    #arrowtext Parlez à\n|cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r puis achetez et équipez un |T133053:0|t[Maillet en bois].
    .collect 2493,1 -- Wooden Mallet
    .money <0.0701
    .target Tephri Thriceforged::257421
step << Rogue
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r puis achetez et équipez un |T135321:0|t[Glaive].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
    .money <0.0536

--here add thrwing Knife
--here add sharpening stone rogue
    
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .accept 92553 >>Acceptez la quête Remplir les garde-manger
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .turnin 92553 >>Rendez la quête Remplir les garde-manger
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .train 2550 >>Apprenez [Cuisine]
    .target Zerril Softbreeze::251905
    .money <0.01
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Utilisez la macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour en cuisiner autant que possible.
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,5 >>achetez 5 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Utilisez la |T132834:0|t[Oeufs aux herbes] macro ci-dessous pour fabriquer 1 et obtenir le buff d'expérience.
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,5 >>achetez 5 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Utilisez la macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour créer chaque Petit œuf en plus des 3 réservés pour Ravitaillement the Larders.
    *|cRXP_WARN_Gardez au moins 3 Petits Oeufs pour une quête à venir|r
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,5 >>achetez 5 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
-- Intentional repeat of level 6 Rogue training for players who reached level 6 after the earlier trainer visit.
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step
    #completewith BadwindBennicA
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    *|cRXP_WARN_Tuez-les en priorité|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith BadwindBennicA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    *|cRXP_WARN_Priorisez-les|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>Tuez les |cRXP_ENEMY_Apprentis de l'Ordre suprême::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .goto 2521,46.597,38.121
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] pour un bonus de vitesse de déplacement de 10%.
    .cooldown spell,1259686,>0,1
step
    #completewith BadwindBennicB
    >>Tuez |cRXP_ENEMY_Highlands Bandits::251918|r. Dépouillez-les pour |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith next
    #label BadwindBennicA
    >>Tuez |cRXP_ENEMY_Bennic « Mauvais vent »::255534|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>Entrez dans la grotte
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>Tuez |cRXP_ENEMY_Bennic « Mauvais vent »::255534|r.
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step << Alliance
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    #arrowtext Utilisez |T236219:0|t[Lecture des lignes telluriques]\nprès de la ligne tellurique
    .goto 2521,50.59,33.51
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith OutCave
    >>Tuez |cRXP_ENEMY_Galestrider::251661|r. Dépouillez-les pour |T133972:0|t[|cRXP_LOOT_Strider Viande|r] et |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith OutCave
    >>Tuez |cRXP_ENEMY_Prideclaws::251245|r. Ramassez-les pour le |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label OutCave
    #loop
    .goto 2521,50.27,33.41,25,0
    .goto 2521,49.69,34.05,25,0
    .goto 2521,49.64,34.66,25,0
    .goto 2521,49.93,35.22,25,0
    .goto 2521,49.79,35.97,25,0
    .goto 2521,49.26,35.91,25,0
    .goto 2521,48.82,36.47,25,0
    .goto 2521,49.43,38.66,40,0
    .goto 2521,48.02,38.41,40,0
    .goto 2521,47.75,36.19,40,0
    .goto 2521,48.93,36.38,40,0
    >>Tuez les |cRXP_ENEMY_Bandits des hautes-terres::251918|r. Dépouillez-les pour les |T5172975:0|t[|cRXP_LOOT_Pierres de vent chapardées|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith To Shendalar
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r |cRXP_WARN_sur la route|r.
    *Dépouillez-les pour la |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et les |T132832:0|t[|cRXP_LOOT_Petits Oeufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith To Shendalar
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r |cRXP_WARN_sur la route|r.
    *Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r et achetez 5 |T134059:0|t[Epices douces].
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 2678,5 -- Mild Spices
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour la Cuisine plus tard|r.
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r 
    .train 2550 >>Apprenez |T133971:0|t[Apprenti cuisinier]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .turnin 92553 >>Rendez la quête Remplir les garde-manger
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la |T132834:0|t[Oeufs aux herbes] macro ci-dessous pour créer autant que possible.
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,10 >>achetez 10 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Utilisez la |T132834:0|t[Oeufs aux herbes] macro ci-dessous pour fabriquer 1 et obtenir le buff d'expérience.
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,10 >>achetez 10 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Utilisez la macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour créer chaque Petit œuf en plus des 3 réservés pour Ravitaillement the Larders.
    *|cRXP_WARN_Conservez au moins 3 petits œufs pour une quête ultérieure|r
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,10 >>achetez 10 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
-- Intentional repeat of level 6 class training for players who reached level 6 after the earlier trainer visit.
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Apprenez |T135812:0|t[Boule de feu (Rang 2)]
    .train 2136 >>Apprenez [Trait de feu]
    .train 1296017 >>Apprenez |T8188276:0|t[Compréhension de parchemin]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aarnor Coup-de-Vent::254082|r
    .trainer >>Apprenez vos sorts de classe
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >>Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .train 1776 >>Apprenez [Suriner]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 1757 >> Apprenez |T136189:0|t[Attaque pernicieuse (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >> Apprenez [Parade]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Calmevent::254084|r.
    .train 3044 >>Apprenez [Tir des Arcanes]
    .train 1130 >>Apprenez [Marque du chasseur]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r
    .train 467 >>Apprenez [Épines]
    .train 5177 >>Apprenez |T136006:0|t[Colère (Rang 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aedi Thriceforged::251913|r.
    *|cRXP_WARN_Passer ceci si vous avez déjà deux métiers|r.
    .train 2018 >>Apprenez [Forge]
    .target Aedi Thriceforged::251913
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .train 2018,3 -- Blacksmithing Trained
    #completewith next
    +Ouvrez |T136241:0|t[Forge] et fabriquez |T135248:0|t[Pierre à aiguiser brute] pour votre arme tranchante et appliquez-la. << Rogue
    +Ouvrez |T136241:0|t[Forge] et fabriquez |T135255:0|t[Pierre de lest brute] pour votre arme contondante et appliquez-la.  << Warrior/Paladin/Shaman
    .usespell 2018
step << Rogue/Warrior/Paladin/Shaman
    #completewith Turn in The Adventurer
    +Abandonnez Forge ou continuez avec.
step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teeri Bonvent::251906|r
    .target Teeri Wellwind::251906
    .turnin 93319 >>Rendez la quête Les pierres de vent chapardées
step << Shaman
    .isQuestComplete 94411 -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 96638 -- The Adventurer
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vérinuage::254358|r
    .vendor 254358 >>|cRXP_BUY_Achetez un|r |T133634:0|t[Petit Brown Pouch].
    *|cRXP_BUY_Achetez au maximum 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_chez elle|r << Mage/Druid/Shaman/Priest/Warlock/Paladin
    *|cRXP_WARN_Quand vous équipez les sacs, assurez-vous que votre Reagent Sac est dans l'emplacement Reagent Sac dédié|r.
    .collect 2946,1 >>|cRXP_BUY_Achetez une|r |T135641:0|t[Dague de lancer équilibrée]. << Rogue/Warrior
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    .target Veena Vericloud::254358
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illaya Ambrevent::251902|r.
    .turnin 94411 >>Rendez la quête Des mages perturbateurs
    .target Illaya Amberwind::251902
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Prime disponible : Vulgara l’Insatiable|r
    .accept 93318 >>Acceptez la quête AVIS DE RECHERCHE : Vulgara l’Insatiable
    .target Bounty Available: Vulgara the Insatiable!
step << Warrior/Rogue
    .goto 2521,43.073,46.306
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naleeia Racommode::257018|r.
    .train 3273 >>Apprenez Premiers soins
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #label Turn in The Adventurer
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .turnin 96638 >>Rendez la quête L'aventurier
    .target Raan Wildwind::263664
    .accept 96101 >>Acceptez la quête Les grands espaces sauvages
step
    .goto 2521,41.67,44.79
    >>Cliquez sur la macro dans le cadre des Objets actifs pour vous asseoir.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    -- .emote SIT,263664 -- Feels like this is breaking the quest completion 50% of the time
    .macro Sit,134400 >>Asseyez-vous 
    .timer 59, RP
    .target Raan Wildwind::263664
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Restez assis jusqu'à ce que vous obteniez le buff Repos amplifié.|r
    *|cRXP_WARN_Utiliser ce moment pour fabriquer|r |T133685:0|t[Linen Bandages].
    *|cRXP_WARN_Vous pouvez également remettre des buffs pendant que vous attend|r.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    >>|cRXP_WARN_Restez assis jusqu'à obtenir le buff Survolté Repos|r.
    *|cRXP_WARN_Vous pouvez monter vos métiers pendant l'attente sans interrompre le processus.|r
    *|cRXP_WARN_Vous pouvez également remettre des buffs pendant que vous attend|r.
    *|cRXP_WARN_Cuisinez de la|r |T133974:0|t[Viande de loup grillée] |cRXP_WARN_pour augmenter votre compétence de Cuisine. N'utilisez pas vos|r |T132832:0|t[Petits Oeufs] << Alliance
    *|cRXP_WARN_Si vous ne recevez pas le buff, déconnectez-vous et reconnectez-vous, puis réessayez|r.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .turnin 96101 >>Rendez la quête Les grands espaces sauvages
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97970 >>Acceptez la quête Introduction au camping : le minage
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97971 >>Acceptez la quête Introduction au camping : le dépeçage
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 96646 >>Acceptez la quête Introduction au camping : la cuisine
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97968 >>Acceptez la quête Introduction au camping : l'herboristerie
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97965 >>Acceptez la quête Introduction au camping : les premiers soins
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97967 >>Acceptez la quête Introduction au camping : la pêche
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97963 >>Acceptez la quête Introduction au camping : l’alchimie
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97964 >>Acceptez la quête Introduction au camping : la forge
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97973 >>Acceptez la quête Introduction au camping : la couture
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 98286 >>Acceptez la quête Introduction au camping : l’enchantement
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raan Aile-sauvage::263664|r.
    .accept 97969 >>Acceptez la quête Introduction au camping : le travail du cuir
    .target Raan Wildwind::263664
step << Horde
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,37,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith HippogryphHarassmentA
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    *|cRXP_WARN_Si une Tornade est à proximité, touchez-la pour obtenir une vitesse de mouvement augmentée de 40% pendant 5 minutes. Les dégâts infligés suppriment l'effet|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith HippogryphHarassmentA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith next
    >>Tuez les |cRXP_ENEMY_Voyants novices des Sculpte-ventsr::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .goto 2521,39,47.37
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>Tuez les |cRXP_ENEMY_Voyants novices des Sculpte-ventsr::257532|r.
    *|cRXP_WARN_Reprenez le buff de|r |T236219:0|t[Lecture des lignes telluriques] |cRXP_WARN_près de la Ligne tellurique|r << Alliance
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    .isOnQuest 92516 -- Hippogryph Harassment
    .isQuestNotComplete 92516 -- Hippogryph Harassment
    .subzoneskip 16623,1 -- Shen'dar Highlands
    #arrowtext Sautez de la montagne\nUtilisez |T132845:0|t[Marche sur l’air]
    .goto 2521,36.44,50.93
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler jusqu'au point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,45,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Jeunes hippogriffes::251291|r, les |cRXP_ENEMY_Protecteurs hippogriffes::251284|r et les |cRXP_ENEMY_Matriarches hippogriffes::251261|r.
    *|cRXP_WARN_Soyez à l'affût des Pierres de vent à récupérer et des Tornades qui augmentent votre vitesse de déplacement|r
    *|cRXP_WARN_Tuez en priorité les |cRXP_ENEMY_Matriarches::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Duvet d’hippogriffe|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarassmentA
    >>Tuez les |cRXP_ENEMY_Jeunes hippogriffes::251291|r, les |cRXP_ENEMY_Protecteurs hippogriffes::251284|r et les |cRXP_ENEMY_Matriarches hippogriffes::251261|r.
    *|cRXP_WARN_Tuez en priorité les |cRXP_ENEMY_Matriarches::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #completewith VulgarasHeadA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith VulgarasHeadA
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Tuez |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_(élite de niveau 8)|r sur la montagne. Dépouillez-le pour la |T4218759:0|t[|cRXP_LOOT_Tête de Vulgara|r].
    *|cRXP_WARN_Cherchez un groupe pour le tuer ou abandonnez la quête ; il prend du temps à réapparaître|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #completewith A Little Beauty
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
-- step -- if you want to force finish here
--     #loop
--     .goto 2521,43.07,48.51,40,0
--     .goto 2521,37.56,43.24,40,0
--     .goto 2521,40.04,41.38,40,0
--     >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
--     .complete 92515,1 --10/10 Prideclaw Pelt
--     .mob Prideclaw::251245
step
    #completewith A Little Beauty
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naleeia Racommode::257018|r
    .turnin 97965 >>Rendez la quête Introduction au camping : les premiers soins
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nasalanna Chantelevent::257020|r
    .turnin 98286 >>Rendez la quête Introduction au camping : l’enchantement
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mendalass Racommode::257024|r
    .turnin 97971 >>Rendez la quête Introduction au camping : le dépeçage
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r et achetez 5 |T134059:0|t[Epices douces]
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .turnin 92553 >>Rendez la quête Remplir les garde-manger
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .turnin 96646 >>Rendez la quête Introduction au camping : la cuisine
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la |T132834:0|t[Oeufs aux herbes] macro ci-dessous pour créer autant que possible.
    *|cRXP_WARN_La plupart des aliments de buff accordent 5% d'expérience accrue des monstres tués pendant 15 minutes. Essayez de maintenir une durée d'activité élevée sur ce buff en montant de niveau|r.
    .collect 2678,20 >>Achetez 20 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la |T132834:0|t[Oeufs aux herbes] macro ci-dessous pour fabriquer 1 et obtenir le buff d'expérience.
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,20 >>achetez 20 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +Utilisez la macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour créer chaque Petit œuf en plus des 3 réservés pour Ravitaillement the Larders.
    *|cRXP_WARN_Conservez au moins 3 petits œufs pour une quête ultérieure|r
    *|cRXP_WARN_La plupart des aliments buff accordent 5% d'expérience supplémentaire des tués pendant 15 minutes. Essayez de conserver ce buff actif pendant que vous montez en niveau|r.
    .collect 2678,20 >>achetez 20 |T134059:0|t[Epices douces].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyassa Prestepotion::257019|r
    .turnin 97963 >>Rendez la quête Introduction au camping : l’alchimie
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Fil-Luisant::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Rendez la quête Sa plus belle plume
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Fil-Luisant::251991|r
    .turnin 97973 >>Rendez la quête Introduction au camping : la couture
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aedi Triple-Forgé::251913|r
    .turnin 97964 >>Rendez la quête Introduction au camping : la forge
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messana Vent-de-Crête::257022|r
    .turnin 97970 >>Rendez la quête Introduction au camping : le minage
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Tissesoleil::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Rendez la quête Le problème avec les fièregriffes
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Tissesoleil::251993|r
    .turnin 97969 >>Rendez la quête Introduction au camping : le travail du cuir
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teeri Bonvent::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Rendez la quête Harceleurs hippogriffes
    .turnin 93319 >>Rendez la quête Les pierres de vent chapardées
step << Shaman/Druid
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Triple-Forgé::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corsan Raseterre::254088|r
    .train 284 >> Apprenez |T132282:0|t[Frappe héroïque (Rang 2)]
    .train 1715 >> Apprenez |T132316:0|t[Brise-genou]
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 6343 >> Apprenez [Coup de tonnerre]
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.05
    .xp <8,1
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danarii Soufflevoile ::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318 >>Rendez la quête AVIS DE RECHERCHE : Vulgara l’Insatiable
step << Druid
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r.
    .train 339 >>Apprenez |T136100:0|t[Sarments]
    .train 5186 >>Apprenez |T136041:0|t[Toucher guérisseur (Rang 2)]
    .skipgossipid 136805
    .xp <8,1
    .money <0.04
    .target Naeluna Swiftmend::254081
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elayaa Calmevent::254084|r.
    .train 5116 >>Apprenez [Trait de choc]
    .train 3127 >>Apprenez [Parade]
    .train 14260 >>Apprenez |T132223:0|t[Attaque du raptor (Rang 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.04
    .xp <8,1
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517,3 >>Rendez la quête L’élément du crime
    .accept 93036 >>Acceptez la quête L’infiltration de la secte
-- step << Hunter
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.263,44.236
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
--     .train 5116 >>Train |T135860:0|t[Concussive Shot]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .train 14260 >>Train |T132223:0|t[Raptor Strike (Rank 2)]
--     .skipgossipid 136808
--     .target Elayaa Easewind::254084
--     .money <0.06
--     .xp <8,1
-- step << Horde Druid Testing something 
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.153,44.225
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
--     .trainer >>Train your spells
--     .target Naeluna Swiftmend::254081
--     .money <0.04
--     .xp <8,1
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sania Flot-d'Argent::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Rendez la quête L’infiltration de la secte
    .accept 92529 >>Acceptez la quête Falaath
step << Alliance/Horde !Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 94413 << Alliance -- Magical Affront
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vérinuage::254358|r
    .vendor 254358 >>|cRXP_BUY_Achetez jusqu'à trois|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_si nécessaire|r.
    >>|cRXP_BUY_Achetez jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_de lui|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_WARN_En équipant des sacs, assurez-vous que votre Reagent Sac se trouve dans l'emplacement dédié du Reagent Sac|r.
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    .target Veena Vericloud::254358
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sania Flot-d'Argent::251904|r
    .skipgossipid 135874
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aarnor Coup-de-Vent::254082|r
    .trainer >>Apprenez vos sorts de classe
    .target Aarnor Galestrike::254082
    .money <0.10
    .xp <8,1
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Achetez et équipez un|r [Bâton de marche]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Horde Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vérinuage::254358|r
    .vendor 254358 >>|cRXP_BUY_Achetez jusqu'à trois|r |T133634:0|t[Petites sacoches marrons] |cRXP_BUY_si nécessaire|r.
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_WARN_En équipant des sacs, assurez-vous que votre Reagent Sac se trouve dans l'emplacement dédié du Reagent Sac|r.
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    .target Veena Vericloud::254358
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Apprenez |T136096:0|t[Projectiles des Arcanes]
    .train 205 >> Apprenez |T135846:0|t[Éclair de givre (Rang 2)]
    .train 118 >> Apprenez [Métamorphone]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.06
    .xp <8,1
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shenaan Sorcevent::254086|r
    .train 5143 >> Apprenez |T136096:0|t[Projectiles des Arcanes]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.02
    .xp <8,1
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiril Lance-Solaire::251903|r.
    .turnin 94413 >>Rendez la quête Un affront magique
    .target Rathiril Sunlance::251903
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenn Beautemps::251992|r
    .turnin 97967 >>Rendez la quête Introduction au camping : la pêche
    .target Fenn Fairweather::251992
step
    #completewith LivingLightningA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #completewith LivingLightningA
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #completewith Skypriest Aanders
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Missionnaire Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Rendez la quête Falaath
    .accept 92528 >>Acceptez la quête Parmi les fidèles
    .use 2454 << Warrior/Rogue
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sania Flot-d'Argent::251904|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .goto 2521,48.497,55.827
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] pour un bonus de vitesse de déplacement de 10%.
    .cooldown spell,1259686,>0,1
step
    #completewith next
    #label plans
    .goto 2521,48.74,53.89,10,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    >>Après avoir cliqué sur le Vestiaire, retournez en ville.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Wardrobe|r |cRXP_WARN_au deuxième étage|r.
    *|cRXP_WARN_Si quelqu'un a déjà cliqué, cela le validera quand même|r
    .timer 14,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.6,54.69,30,0
    .goto 2521,46.44,51.34,30,0
    >>Retournez en ville et attendez le RP.
    *|cRXP_WARN_Si vous voyez une Tornade, utilisez-la pour voyager plus rapidement|r.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16624 -- Shen'dar Village
    .goto 2521,46.86,51.54,25,0
    .goto 2521,44.37,46.69
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler jusqu'à l'emplacement du point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Rogue
    .isQuestAvailable 92528 -- Among the Faithful
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Myriaal Sillebrume::254087|r
    .train 5277 >>Apprenez |T136205:0|t[Évasion]
    .train 6760 >>Apprenez |T132292:0|t[Eviscération (Rang 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r.
    .turnin 92528,1 >>Rendez la quête Parmi les fidèles << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>Rendez la quête Parmi les fidèles << Warrior/Rogue/Paladin
    .turnin 92528,3 >>Rendez la quête Parmi les fidèles << Hunter
    .accept 92550 >>Acceptez la quête Malheur dans les hautes-terres
    .accept 93926 >>Acceptez la quête Le guet occidental
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_Équipez la|r |T454058:0|t[Dague rituelle tachée] << Mage/Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Équipez la|r |T7789512:0|t[Cimeterre courbe] << Warrior/Rogue/Paladin
    *|cRXP_WARN_Équipez l'|r |T135493:0|t[Arc court de Souffle-Bise] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danarii Soufflevoile ::252172|r.
    .accept 92551 >>Acceptez la quête Fournitures volées
    .target Danarii Bellowveil::252172
step
	.isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    -- .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .subzone 17674 >>Mourez au sud-ouest de Shen'da et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes::6491|r.
    .macro Sit,134400 >>Asseyez-vous 
step
    #completewith next
    #label Western Watchtower
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde-paix Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    #completewith Western Watchtower
    #ignorecorpse
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .showwhiledead
    .goto 2521,40.23,63.83
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien des âmes::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde-paix Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Garde-paix Vaaniel::252155|r
    .turnin 93926 >>Rendez la quête Le guet occidental
    .accept 93927 >>Acceptez la quête Une dernière demande
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Note ensanglantée|r.
    *|cRXP_WARN_Gardez un emplacement libre dans vos sacs|r
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Arvensus Shadowsong|r\n |cRXP_WARN_de loin|r.
    *|cRXP_WARN_Gardez un emplacement libre dans vos sacs|r
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Raani Windgazer|r\n |cRXP_WARN_de loin|r.
    *|cRXP_WARN_Gardez un emplacement libre dans vos sacs|r
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #label Skypriest Aanders
    .goto 2521,40.94,64.15,4,0
    .goto 2521,41.11,64.03,4,0
    .goto 2521,41.09,64.29,4,0
    .goto 2521,40.95,64.25,4,0
    .goto 2521,41.05,64.02,4,0
    .goto 2521,41.08,64.27,4,0
    .goto 2521,40.94,64.2,4,0
    .goto 2521,41.08,64.39
    >>Montez l'escalier en colimaçon, puis tuez le |cRXP_ENEMY_Prêtre céleste Aanders::256966|r en haut de la tour.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .isOnQuest 92551 -- Stolen Supplies
    .isQuestNotComplete 92551 -- Stolen Supplies
    .goto 2521,50.29,56.95
    .cast 1259416 >>Sautez de la tour et utilisez |T132845:0|t[Marche sur l’air] pour voler en direction du point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step  << Alliance
    #completewith NearCommander
    >>Tuez les |cRXP_ENEMY_Mandes-foudres al'aketh::252068|r. Dépouillez-les pour les |T133647:0|t[|cRXP_LOOT_Fournitures de Shen’dar volées|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur les |cRXP_PICK_Caches de fournitures|r. (petits sacs)
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step << Alliance
    #completewith NearCommander
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith NearCommander
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550 -- Havoc in the Highlands
    .isOnQuest 92550 -- Havoc in the Highlands
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #completewith CommanderCyclasHeadA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith CommanderCyclasHeadA
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith CommanderCyclasHeadA
    >>Tuez la |cRXP_ENEMY_Foudre vivante::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #completewith CommanderCyclasHeadA
    >>Tuez les |cRXP_ENEMY_Mandes-foudres al'aketh::252068|r. Dépouillez-les pour les |T133647:0|t[|cRXP_LOOT_Fournitures de Shen’dar volées|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur les |cRXP_PICK_Caches de fournitures|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521,49.779,57.330,15,0
    .goto 2521,49.886,56.504,20,0
    .goto 2521,50.38,56.93
    >>Tuez le |cRXP_ENEMY_Commandant Cyclas::251966|r. Dépouillez-le pour la |T134161:0|t[|cRXP_LOOT_Tête du commandant Cyclas|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    --.goto 2521,48.823,54.315,15,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    +1
step
    #completewith next
    >>Tuez la |cRXP_ENEMY_Foudre vivante::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>Tuez les |cRXP_ENEMY_Mandes-foudres al'aketh::252068|r. Dépouillez-les pour les |T133647:0|t[|cRXP_LOOT_Fournitures de Shen’dar volées|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur les |cRXP_PICK_Caches de fournitures|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>Tuez la |cRXP_ENEMY_Foudre vivante::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step << Horde
    .isOnQuest 92550 -- Havoc in the Highlands
    .goto 2521,48.497,55.827
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] pour un bonus de vitesse de déplacement de 10%.
    .cooldown spell,1259686,>0,1
step
    #completewith RestockingTheLardersA
    #hidewindow
    #loop
    .goto 2521,47.34,51.69,35,0
    .goto 2521,45.9,53.93,35,0
    .goto 2521,42.65,49.07,35,0
    .goto 2521,41.44,53.14,35,0
    .goto 2521,39.77,56.4,35,0
    .goto 2521,40.9,50.64,35,0
    .goto 2521,37.56,43.24,40,0
    .goto 2521,40.04,41.38,40,0
    -- .goto 2521,45.95,53.76,35,0
    -- .goto 2521,42.885,63.422,35,0
    -- .goto 2521,42.97,49.81,35,0
    -- .goto 2521,44.12,50.46,35,0
    -- .goto 2521,38.283,42.288,35,0
    -- .goto 2521,42.055,40.938,35,0
    +1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>Tuez les |cRXP_ENEMY_Fièregriffes::251245|r. Dépouillez-les pour les |T237416:0|t[|cRXP_LOOT_Fourrures de fièregriffe|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLardersA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes::251661|r. Dépouillez-les pour leur |T133972:0|t[|cRXP_LOOT_Viande de trotteur|r] et leurs |T132832:0|t[|cRXP_LOOT_Petits œufs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenn Beautemps::251992|r
    .turnin 97967 >>Rendez la quête Introduction au camping : la pêche
    .target Fenn Fairweather::251992
-- step
--     --might cause issues when really unlucky with the pelt or strider quest
--     .isQuestAvailable 92551 -- Stolen Supplies
--     .isQuestNotComplete 97967 -- Camping 101: Fishing
--     .isQuestNotComplete 97965 -- Camping 101: First Aid
--     .isQuestNotComplete 97968 -- Camping 101: Herbalism
--     .isQuestNotComplete 98286 -- Camping 101: Enchanting
--     .isQuestNotComplete 97971 -- Camping 101: Skinning
--     .isQuestNotComplete 97963 -- Camping 101: Alchemy
--     .isQuestNotComplete 97973 -- Camping 101: Tailoring
--     .isQuestNotComplete 97964 -- Camping 101: Blacksmithing
--     .isQuestNotComplete 97970 -- Camping 101: Mining
--     .isQuestNotComplete 97969 -- Camping 101: Leatherworking
--     .goto 2521,44.111,45.843,40 >>Follow the way up the mountain.
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naleeia Racommode::257018|r
    .turnin 97965 >>Rendez la quête Introduction au camping : les premiers soins
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nasalanna Chantelevent::257020|r
    .turnin 98286 >>Rendez la quête Introduction au camping : l’enchantement
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mendalass Racommode::257024|r
    .turnin 97971 >>Rendez la quête Introduction au camping : le dépeçage
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r et achetez du |T135237:0|t[Silex et amadou].
    *|cRXP_WARN_Vous l'utiliserez avec Simple Bois pour créer des Basic Campfires pour Cuisine plus tard|r.
    .collect 4471,1 -- Flint and Tinder
    .itemcount 4471,<1 -- Flint and Tinder
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r et achetez 5 |T135435:0|t[Bois simple].
    .collect 4470,5 -- Simple Wood
    .itemcount 4470,<5 -- Simple Wood
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Softbreeze::251905|r et achetez 5 |T134059:0|t[Epices douces].
    .vendor 251905 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .collect 2678,5 -- Mild Spices
    .itemcount 2678,<5 -- Mild Spices
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .turnin 92553 >>Rendez la quête Remplir les garde-manger
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92550 -- Havoc in the Highlands
    .itemcount 6889,1 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .goto 2521,43.86,43.85
    +Utilisez la macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour en cuisiner autant que possible.
    *|cRXP_WARN_La plupart des aliments de buff accordent 5% d'expérience accrue des monstres tués pendant 15 minutes. Essayez de maintenir une durée d'activité élevée sur ce buff en montant de niveau|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zerril Douce-Brise::251905|r
    .turnin 96646 >>Rendez la quête Introduction au camping : la cuisine
    .target Zerril Softbreeze::251905
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyassa Prestepotion::257019|r
    .turnin 97963 >>Rendez la quête Introduction au camping : l’alchimie
    .target Nyassa Swiftdraught::257019
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taleen Fil-Luisant::251991|r
    .turnin 97973 >>Rendez la quête Introduction au camping : la couture
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aedi Triple-Forgé::251913|r
    .turnin 97964 >>Rendez la quête Introduction au camping : la forge
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Messana Vent-de-Crête::257022|r
    .turnin 97970 >>Rendez la quête Introduction au camping : le minage
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Tissesoleil::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Rendez la quête Le problème avec les fièregriffes
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Indari Tissesoleil::251993|r
    .turnin 97969 >>Rendez la quête Introduction au camping : le travail du cuir
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Veena Vérinuage::254358|r
    .vendor 254358 >>Objet à vendre. |cRXP_BUY_Achetez jusqu'à trois|r |T133634:0|t[Petite sacoche marron] |cRXP_BUY_au besoin|r.
    -- *|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_BUY_Achetez des|r |T132382:0|t[Flèches grossières] et des |T132382:0|t[Flèches pointues] << Hunter
    *|cRXP_BUY_Achetez des|r [Flèche pointue] << Alliance Rogue
    *|cRXP_WARN_En équipant des sacs, assurez-vous que votre Reagent Sac se trouve dans l'emplacement dédié du Reagent Sac|r.
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,1000 << Hunter --Sharp Arrows (1000)
    .collect 2515,600 << Alliance Rogue --Sharp Arrows (600)
    .target Veena Vericloud::254358
step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danarii Soufflevoile ::252172|r.
    .turnin 92551 >>Rendez la quête Fournitures volées
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Connétable Aonda::251523|r.
    .turnin 92550,3 >>Rendez la quête Malheur dans les hautes-terres
    .turnin 93927 >>Rendez la quête Une dernière demande
    .accept 92701 >>Acceptez la quête Vers Valanaar << Alliance
    .accept 92579 >>Acceptez la quête Vers Valanaar << Horde
    .accept 93948 >>Acceptez la quête Livraison de chevalière
    .target Constable Aonda::251523
--maybe duplicate trainer steps for low silver cases

step
    .isQuestAvailable 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,49.4,58.76
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler jusqu'à l'emplacement du point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>Mourez à la position exacte du point de repère
    *|cRXP_WARN_Dans le cas échéant, vous pourriez être envoyé à un autre cimetière|r.
    .macro Sit,134400 >>Asseyez-vous 
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien des âmes::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Hunter
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falfaan Demivent::271465|r dans la maison.
    >>|cRXP_BUY_Achetez et équipez un|r |T7810733:0|t[Arc zéphrali].
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendez votre camelote et réparez si vous en avez besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
    .money <0.1345
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
step << Alliance
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Feu-Ardent::257006|r.
    *|cRXP_WARN_Si vous voyez une Tornade, approchez-vous pour gagner 40% de vitesse de déplacement pendant 5 minutes. L'effet s'estompe quand vous infligez des dégâts|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Acceptez la quête La saison des crabes
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .itemcount 2678,1 -- Mild Spices
    .goto 2521,60.640,72.664
    +Utilisez la macro |T132834:0|t[Oeufs aux herbes] ci-dessous pour en cuisiner autant que possible.
    *|cRXP_WARN_La plupart des aliments de buff accordent 5% d'expérience accrue des monstres tués pendant 15 minutes. Essayez de maintenir une durée d'activité élevée sur ce buff en montant de niveau|r.
    .macro Herb Baked Egg,132834 >>Oeufs aux herbes
step
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Bassebrise::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>Liez votre Pierre de Foyer à Valanaar
    .goto 2521,62.180,72.616
step
    .isNotOnQuest 92679 -- Blood Tithe
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Bassebrise::255940|r.
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_ Nous en aurons besoin pour notre Cuisine ultérieurement.|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
step
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_au deuxième étage|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Acceptez la quête La dîme du sang
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>Montez à l'étage
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_au deuxième étage|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Acceptez la quête La dîme du sang
-- TODO: Add Walk on Air
step
    .isNotOnQuest 94484 -- Unnerving Silence
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 93948 -- Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Passez par la montagne
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Brise-Stellaire::252359|r.
    .accept 94484 >>Acceptez la quête Un silence angoissant
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Foulenimbus::259012|r.
    .accept 94896 >>Acceptez la quête Un coup de main pour les réfugiés
    .accept 94897 >>Acceptez la quête Le sort de l’être aimé
    .target Ealaane Nimbuswalker::259012
step
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r.
    .turnin 93948 >>Rendez la quête Livraison de chevalière
    .target Talaanis Shadowsong::252476
step
    #completewith DeliverTheSignetA
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Montez la tour
step
    #requires DeliverTheSignetA
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r.
    .turnin 93948 >>Rendez la quête Livraison de chevalière
    .target Talaanis Shadowsong::252476
step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::252383|r.
    .turnin 92701 >>Rendez la quête Vers Valanaar << Alliance
    .turnin 92579,3 >>Rendez la quête Vers Valanaar << Horde
    .accept 92699 >>Acceptez la quête Le magistère suprême << Alliance
    .accept 92700 >>Acceptez la quête La grande oracle des cieux << Horde
    .accept 93949 >>Acceptez la quête Les insectes ont des oreilles << Alliance
    .target Valennia Stormfist::252383
-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 -- The Grand Skyseer
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>Sautez de la tour et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    *|cRXP_WARN_Si vous le faites au bon timing, vous pouvez l'annuler en l'air pour tomber dans le bâtiment|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Annulez Marche sur l'air
step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    *|cRXP_WARN_Si vous le faites au bon timing, vous pouvez l'annuler en l'air pour tomber dans le bâtiment|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Annulez Marche sur l'air
step << Alliance
    #completewith Unwelcome Visitors
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    *|cRXP_WARN_Pendant que le buff de vitesse Tornade est actif, évitez de les tuer|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Trombecalme::252475|r.
    .turnin 92699 >>Rendez la quête Le magistère suprême
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dondallion Murmevent::253204|r.
    .accept 92727 >>Acceptez la quête L’érudit disparu
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iaadaria Vent-Amer::253004|r.
    .accept 92741 >>Acceptez la quête Visiteuses indésirables
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .goto 2521,67.41,80.46
    .subzoneskip 16638,1 -- Valanaar
    .subzone 16626 >>Sautez de la falaise
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien des âmes::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Hunter
    .goto 2521,63.027,77.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antelariaa Mirenuée::252390|r.
    >>|cRXP_BUY_Achetez|r 600 |T132382:0|t[Flèches grossières]
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,35,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Chantelaube::251968|r.
    .turnin 92700 >>Rendez la quête La grande oracle des cieux
    .accept 92708 >>Acceptez la quête Une grande aventure
    .timer 75,Durée du RP
    .accept 93735 >>Acceptez la quête L’assemblage brisé
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 92708 -- A Grand Adventure
    .goto 2521,59.154,79.783
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] pour un bonus de vitesse de déplacement de 10%.
    .cooldown spell,1259686,>0,1
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344
step << Horde
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syriel Noctepluie::254345|r.
    .target Syriel Nightrain::254345
    .turnin 97968 >>Rendez la quête Introduction au camping : l'herboristerie
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riaani Ventenuit::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Rendez la quête L’assemblage brisé
--     .accept 93737 >>Accept The Broken Construct
--     .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
-- step << Horde
--     .goto 2521,59.265,79.977
--     >>Wait for the roleplay. -- Probably skipping this quest.
--     .complete 92708,1 --|1/1 Listen to Ayessa
-- step << Horde
--     #label LeavingValanaarA
--     .goto 2521,59.150,79.790
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
--     .target Ayessa Dawnsinger::251968
--     .turnin 92708 >>Turn in A Grand Adventure
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #completewith next
--     #label BrokenConstructA
--     #hidewindow
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
-- step << Horde
--     #completewith BrokenConstructA
--     .goto 2521,51.397,68.644,15 >>Enter the cave
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #requires BrokenConstructA
--     #loop
--     .goto 2521,51.434,67.603,15,0
--     .goto 2521,51.874,67.221,15,0
--     .goto 2521,52.933,66.084,15,0
--     .goto 2521,53.201,65.424,15,0
--     .goto 2521,52.752,64.732,15,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Bloodstained Satchel::581822|r
    .turnin 92727 >>Rendez la quête L’érudit disparu
    .accept 92849 >>Acceptez la quête L’érudit disparu
    .target Bloodstained Satchel::581822
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Fillion Flammebrise::253002|r dans la grotte.
    *|cRXP_WARN_Ces oiseaux ont une portée d'aggro plus petite que la plupart des ennemis|r.
    *|cRXP_WARN_Ne cliquez pas sur lui pendant que vous êtes en combat avec un oiseau, car cela vous téléportera hors de la grotte|r.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Fillion Flammebrise::253002|r dans la grotte.
    *|cRXP_WARN_Ces oiseaux ont une portée d'aggro plus petite que la plupart des ennemis|r.
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Portez |cRXP_FRIENDLY_Fillion Flamebreeze::253281|r en sécurité. |cRXP_WARN_Évitez les ennemis en chemin|r.
    *|cRXP_WARN_Ces oiseaux ont une portée d'aggro plus petite que la plupart des ennemis|r.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fillion Flammebrise::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Rendez la quête L’érudit disparu
    .accept 92850 >>Acceptez la quête L’érudit disparu
-- step << Alliance
--     #completewith next
--     #label Shriekling Matriarch
--     .goto 2521,51.39,68.2,20,0
--     >>Kill |cRXP_ENEMY_Shriekling Matriarch::253283|r. Loot it for |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Head|r].
--     .complete 92850,1 --1/1 Shriekling Matriarch's Head
--     .mob Shriekling Matriarch::253283
step << Alliance
    -- #completewith Shriekling Matriarch
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .goto 2521,52.02,65.51,130 >>Entrez dans la grotte
step << Alliance
    .goto 2521,52.49,65.97
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,45.73,80.86
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>Tuez la |cRXP_ENEMY_Matriarche criailleuse::253283|r. Dépouillez-la pour la |T6119035:0|t[|cRXP_LOOT_Tête de matriarche criailleuse|r].
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,52.37,66.5,15,0
    .goto 2521,51.75,66.33,15,0
    .goto 2521,51.05,66.66,15,0
    .goto 2521,51.16,67.53,15,0
    .goto 2521,51.5,69.11,25 >>Quittez la grotte
step << Alliance
    #completewith FindAameliaWindfieldA
    >>Tuez les |cRXP_ENEMY_Clampant chantevent::254588|r. Dépouillez-les pour la |T133972:0|t[|cRXP_LOOT_Viande de clampant chantevent|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
-- step << Horde
--     #completewith next
--     #label BrokenConstructB
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
--     *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location|r.
--     .complete 92679,1 --1/1 Find Aamelia Windfield
--     .target Aamelia Windfield::252800
-- step << Horde
--     #completewith BrokenConstructB
--     .goto 2521,51.397,68.644,15 >>Leave the cave
step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    .goto 2521,46.71,81.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle. Attendez à la position du point de passage|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    #loop
    .goto 2521,46.71,81.94,10,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle. Attendez à la position du point de passage|r.
    .turnin 92679 >>Rendez la quête La dîme du sang
    .accept 92682 >>Acceptez la quête Rendez-vous utile
    .accept 92684 >>Acceptez la quête Trotteurs gloutons
    .accept 92683 >>Acceptez la quête Poussière de voltemouche
    .target Aamelia Windfield::252800

-- step << Alliance
--     .isOnQuest 92682 -- Make Yourself Useful
--     .isQuestNotComplete 92682 -- Make Yourself Useful
--     .subzoneskip 16663,1 -- Windfield Orchard
--     .goto 2521,45.73,80.86
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step
    -- #label RipBanditsA
    #loop
    .goto 2521,46.164,78.043,30,0
    .goto 2521,48.920,84.441,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_LOOT_Pommes d’orage mûres|r
    >>Tuez les |cRXP_ENEMY_Bandits affamés::252802|r |cRXP_WARN_(camouflés)|r.
    *Conseils pour Chasseur: Spammez Tab pour les cibler rapidement, utilisez Marque du chasseur sur eux pour pouvoir vous éloigner et les attaquer en restant à distance. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .goto 2521,48.416,80.537
    .cast 1259686 >>Utilisez |T1029587:0|t[Vue céleste] pour un bonus de vitesse de déplacement de 10%.
    .cooldown spell,1259686,>0,1
step
    #completewith WhatIsMyPurposeA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #completewith WhatIsMyPurposeA
    >>Utilisez à plusieurs reprises |T537768:0|t[Tapette à voltemouches] sur les |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur la |cRXP_PICK_Poussière de voltemouche|r.
    *|cRXP_WARN_Si une Voltemouche ne s'envole pas, utilisez à nouveau la tapette dessus|r << !Mage
    *|cRXP_WARN_Vous pouvez lancer à plusieurs reprises|r |T136071:0|t[Métamorphose] |cRXP_WARN_sur le même Flutterfly et utiliser le swatter pour collecter plusieurs piles de poussière de celui-ci|r. << Mage
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Assemblage du cyclone défectueux::250929|r.
    .accept 92698 >>Acceptez la quête Quelle est ma tâche ?
    .target Malfunctioning Cyclone Construct::250929
step << Horde Shaman
    #completewith ShamanLevel10
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    +1
step << Horde Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #completewith ShamanLevel10
    #label ShamanFluterflyDustA
    >>Utilisez à plusieurs reprises |T537768:0|t[Tapette à voltemouches] sur les |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur la |cRXP_PICK_Poussière de voltemouche|r.
    *|cRXP_WARN_Si une Voltemouche ne s'envole pas, utilisez à nouveau la tapette dessus|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #requires ShamanFluterflyDustA
    #completewith ShamanLevel10
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #hidewindow
    #label ShamanLevel10
    .xp 10 >>1
step << Horde Shaman
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à Valanaar
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sessaria Marcheciel::252382|r.
    .accept 97243 >>Acceptez la quête L'appel du feu
    .target Sessaria Skystride::252382
step << Horde Shaman
    .isQuestAvailable 97243
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sessaria Marcheciel::252382|r.
    .trainer >>Apprenez vos sorts de classe
    .target Sessaria Skystride::252382
    .money <0.12
    .xp <10,1
    .subzoneskip 16638,1
step << Horde Shaman
    #completewith CallOfFireA
    >>Utilisez à plusieurs reprises |T537768:0|t[Tapette à voltemouches] sur les |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur la |cRXP_PICK_Poussière de voltemouche|r.
    *|cRXP_WARN_Si une Voltemouche ne s'envole pas, utilisez à nouveau la tapette dessus|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olariaan Vivebrûle::268592|r.
    .turnin 97243 >>Rendez la quête L'appel du feu
    .accept 97244 >>Acceptez la quête L'appel du feu
    .target Olariaan Swiftburn::268592
-- step << Shaman
--     .isOnQuest 97244
--     .isQuestNotComplete 97244
--     .goto 2521,50.8,89.6
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>Tuez le |cRXP_ENEMY_Prêtre céleste Faladiel::268602|r. Dépouillez-le pour le |T839910:0|t[|cRXP_LOOT_Cœur de Faladiel|r].
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
-- step << Shaman
--     .isOnQuest 97244
--     .goto 2521,62.384,64.393
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    #completewith CallOfFireB
    >>Utilisez à plusieurs reprises |T537768:0|t[Tapette à voltemouches] sur les |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur la |cRXP_PICK_Poussière de voltemouche|r.
    *|cRXP_WARN_Si une Voltemouche ne s'envole pas, utilisez à nouveau la tapette dessus|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireB
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olariaan Vivebrûle::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Rendez la quête L'appel du feu
    .accept 97245 >>Acceptez la quête L'appel du feu
step
    #completewith GalestriderTenderloinA
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    +1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>Utilisez à plusieurs reprises |T537768:0|t[Tapette à voltemouches] sur les |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tCliquez sur la |cRXP_PICK_Poussière de voltemouche|r.
    *|cRXP_WARN_Si une Voltemouche ne s'envole pas, utilisez à nouveau la tapette dessus|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label GalestriderTenderloinA
    >>Tuez les |cRXP_ENEMY_Trotteurs des trombes hargneux::251707|r. Dépouillez-les pour les |T2066012:0|t[|cRXP_LOOT_Filets de trotteur des trombes des plaines|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour voyager plus rapidement|r.
    *|cRXP_WARN_Elle peut se déplacer entre les emplacements pendant une séquence de jeu de rôle|r.
    *|cRXP_WARN_Cherchez-la de loin ou suivez son dialogue; la flèche ne marque qu'une position approximative|r.
    .turnin 92682 >>Rendez la quête Rendez-vous utile
    .turnin 92684,3 >>Rendez la quête Trotteurs gloutons
    .turnin 92698 >>Rendez la quête Quelle est ma tâche ?
    .turnin 92683 >>Rendez la quête Poussière de voltemouche
    .accept 92685 >>Acceptez la quête Les collines ont des yeux << Alliance/Shaman
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    .isQuestNotComplete 92685 -- The Hills Have Eyes
    .subzoneskip 16663,1 -- Windfield Orchard
    .goto 2521,45.73,80.86
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance/Shaman
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_Équipez la|r |T7791298:0|t[Tapette à voltemouches] << Rogue
    >>Tuez les |cRXP_ENEMY_Bandits de grand chemin::252820|r. Dépouillez-les pour les |T133693:0|t[|cRXP_LOOT_Masques de bandit tachés de sang|r].
    *|cRXP_WARN_Cherchez les ennemis camouflés dans le verger de pommiers|r.
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Alliance/Shaman
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>Montez la montagne
    *|cRXP_WARN_Si vous voyez une Tornade, utilisez-la pour voyager plus rapidement|r.
step << Alliance/Shaman
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>Tuez |cRXP_ENEMY_Bandit Highwaymen::252820|r. Ramassez |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Souche de Kuramaa|r.
    >>Tuez |cRXP_ENEMY_Kuramaa::268605|r. Dépouillez-le pour le |T3549050:0|t[|cRXP_LOOT_Masque de Kuramaa|r].
    *|cRXP_WARN_Il vous repousse et subit des dégâts de feu supplémentaires|r.
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step << Alliance
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre ses locations pendant un RP. Regardez aux deux endroits|r.
    .turnin 92685 >>Rendez la quête Les collines ont des yeux
    .accept 92693 >>Acceptez la quête Tenir bon sans mollir
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] |cRXP_WARN_en l'air|r pour voler jusqu'à l'emplacement du point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance/Shaman
    #loop
    .goto 2521,47.511,78.490,30,0
    .goto 2521,46.71,81.94,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Elle peut se déplacer entre différentes positions pendant une séquence de jeu de rôle. Vérifiez les deux emplacements.|r
    *Vous pouvez sauter de la montagne et utiliser |T132845:0|t[Marche sur l'air] |cRXP_WARN_en vol|r pour voler vers la position du point de repère.
    .turnin 92685 >>Rendez la quête Les collines ont des yeux
    .accept 92693 >>Acceptez la quête Tenir bon sans mollir
    .target Aamelia Windfield::252800
step << Alliance/Shaman
    .goto 2521,46.71,81.94
    >>Allez à la position principale d' |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r et parlez-lui.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Durée du RP
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>Suivez |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r. Attendez le RP.
    *Lorsqu'Aamelia s'arrête, placez un Feu de camp si vous en avez un et qu'il n'y en a pas à proximité. Démarrez la cuisine pour les montées de compétence.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aamelia Champ-des-Vents::252800|r.
    .turnin 92693 >>Rendez la quête Tenir bon sans mollir
    .accept 92703 >>Acceptez la quête Apporter la nouvelle
    .target Aamelia Windfield::252800
-- step << Horde
--     .isOnQuest 92703 -- Deliver the News
--     .goto 2521,48.445,80.591
--     .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
--     .cooldown spell,1259686,>0,1
step << Alliance/!Shaman
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>Utilisez votre Pierre de foyer pour revenir à Valanaar
step << Alliance/!Shaman
    .isQuestAvailable 92703 -- Deliver the News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Bassebrise::255940|r.
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20 >>Achetez du |T132815:0|t[Lait glacé]. << Mage/Druid/Priest/Warlock/Paladin
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_Nous en aurons besoin pour Cuisine plus tard|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Olariaan Vivebrûle::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Rendez la quête L'appel du feu
    .accept 97257 >>Acceptez la quête L'appel du feu
    .timer 35,Durée du RP
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>Attendez le RP. Utilisez la |T135432:0|t[Torche de la flamme éternelle] sur le |cRXP_PICK_Brasero d'offrande|r allumé.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>Vous avez environ 5 minutes pour revenir.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour voyager plus rapidement|r.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sessaria Marcheciel::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Rendez la quête L'appel du feu
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde Shaman
    .isQuestAvailable 92703 -- Deliver the News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Bassebrise::255940|r.
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *Ne vendez pas les |T132832:0|t[Petits œufs] et la |T133972:0|t[Viande de trotteur]. << Horde
    *|cRXP_WARN_Nous en aurons besoin pour Cuisine plus tard|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Hunter
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 92703 -- Deliver the News
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Bassebrise::255940|r.
    >>|cRXP_BUY_Achetez-lui des|r |T134534:0|t[Têtes de champignon sylvestre] |cRXP_BUY_|r. |cRXP_BUY_Vous les utiliserez pour nourrir votre familier|r
    .collect 4604,5 -- Forest Mushroom
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_au deuxième étage|r.
    .turnin 92703,1 >>Rendez la quête Apporter la nouvelle << Warrior/Shaman/Paladin
    .turnin 92703,2 >>Rendez la quête Apporter la nouvelle << Druid/Priest
    .turnin 92703,3 >>Rendez la quête Apporter la nouvelle << Rogue
    .turnin 92703 >>Rendez la quête Apporter la nouvelle << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step
    #completewith next
    *|cRXP_WARN_Équipez la|r |T134435:0|t[Pelle à plantations] << Warrior/Shaman/Paladin
    *|cRXP_WARN_Équipez le|r |T133057:0|t[Marteau à toiture] << Druid/Priest
    *|cRXP_WARN_Équipez la|r |T134520:0|t[Clé à molette fiable] << Rogue
step << Alliance
    #completewith Turn in The Missing Scholar
    >>Tuez |cRXP_ENEMY_Skyhopper::251314|r.
    *|cRXP_WARN_Pendant que le buff de vitesse Tornade est actif, évitez de les tuer|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belann Vif-Bois::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Acceptez la quête Parler à Belann
    .turnin 93791 >>Rendez la quête Parler à Belann
    .accept 93797 >>Acceptez la quête La brise dans les branches
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Acceptez la quête Le Rempart de Briseciel
step << Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .train 6546 >>Apprenez [Pourfendre (Rang 2)]
    .train 2687 >>Apprenez [Rage sanguinaire]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.12
    .xp <10,1
-- step << Alliance Druid
--     .isQuestAvailable 92850 -- The Missing Scholar
--     #completewith next
--     .goto 2521,63.33,73.65,15,0
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
-- step << Alliance Druid
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 92850 -- The Missing Scholar
--     #completewith next
--     .goto 2521,63.33,73.65,15,0
--     .goto 2521,63.973,75.095,25 >>Go over the mountain
--     .cooldown spell,1259705,<0,1
step << Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Passez par la montagne
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Brise-Stellaire::252359|r.
    .accept 94006 >>Acceptez la quête Le grand esprit ursera
    .target Lotheluum Starbreeze::252359
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Brise-Stellaire::252359|r.
    .train 16689 >>Apprenez |T136063:0|t[Emprise de la nature].
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>Apprenez |T136081:0|t[Récupération (Rang 2)].
    .train 5232 >>Apprenez |T136078:0|t[Marque du fauve (Rang 2)].
    .train 8924 >>Apprenez |T136096:0|t[Eclat lunaire (Rang 2)].
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359
    .money <0.12
    .xp <10,1
step << Rogue
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eltheen Noctebrise::252379|r.
    -- *|cRXP_WARN_You can interact with him through walls not sure if we want to add it|r
    .train 674 >>Apprenez [Ambidextrie]
    .train 6770 >>Apprenez |T132310:0|t[Assommer]
    .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 5171 >>Apprenez [Débiter]
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 2983 >>Apprenez [Sprint]
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.09
    .xp <10,1
step << Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .train 13165 >>Apprenez |T136076:0|t[Aspect du faucon]
    .train 13549 >>Apprenez |T132204:0|t[Morsure de serpent (Rang 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <10,1
step << Hunter
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .accept 94978 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Hunter Alliance
    .goto 2521,63.023,77.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antelariaa Mirenuée::252390|r.
    >>|cRXP_BUY_Achetez des|r [Flèche pointue]
    .vendor 252390 >>Vendez tout ce dont nous n'avez pas besoin
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *|cRXP_WARN_Nous en aurons besoin pour Cuisine plus tard|r.
    .collect 2515,1000 -- Sharp Arrows
    .target Antelariaa Cloudgaze::252390
step << Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anathamaas Vent-d'éther::252373|r
    .train 168 >>Apprenez |T135843:0|t[Armure de givre]
    .train 122 >>Apprenez |T135848:0|t[Nova de givre]
    .train 5504 >>Apprenez |T132794:0|t[Invocation d'eau]
    -- .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>Apprenez |T132794:0|t[Invocation d'eau (Rang 2)]
    .skipgossipid 136807
    .money <0.08
    .xp <10,1
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_Équipez respectivement dans vos deux mains la|r |T134520:0|t[Clé à molette fiable] |cRXP_WARN_et la|r |T7791298:0|t[Tapette à voltemouches] << Rogue
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fillion Flammebrise::253284|r.
    .turnin 92850 >>Rendez la quête L’érudit disparu
    .accept 99260 >>Acceptez la quête L’érudit disparu
    .target Fillion Flamebreeze::253284

step << Alliance
    #completewith Protect the Index
    .subzone 16638,1 -- Valanaar
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    *|cRXP_WARN_Pendant que le buff de vitesse Tornade est actif, évitez de les tuer|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Trombecalme::252475|r.
    .target Elaadrin Evengale::252475
    .turnin 99260 >>Rendez la quête L’érudit disparu
    .accept 92840 >>Acceptez la quête Danger imminent

-- Deathskip past 10; might need later
-- step << Alliance
--     .isOnQuest 92840
--     .isQuestNotComplete 92840
--     .goto 2521,67.41,80.46
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     -- .subzoneskip 16638,1 -- Valanaar
--     .target Spirit Healer::6491

step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Clampant chantevent::254588|r |cRXP_WARN_le plus loin possible|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .turnin 94978 >>Rendez la quête Dompter la bête
    .accept 94979 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Windsong Clampant::254588|r en cliquant droit sur sa barre de vie et en cliquant sur Renvoyer, sinon vous ne pourrez pas apprivoiser |cRXP_ENEMY_Ornery Galestrider::251707|r
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Trotteur des trombes hargneux::251707|r |cRXP_WARN_en restant le plus loin possible|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .turnin 94979 >>Rendez la quête Dompter la bête
    .accept 94013 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #completewith next
    +|cRXP_WARN_Renvoyer votre |cRXP_ENEMY_Ornery Galestrider::251707|r en cliquant droit sur sa barre de santé et en cliquant sur renvoyer, sinon vous ne pourrez pas capturer |cRXP_ENEMY_Vuldren::250874|r
step << Horde Hunter
    #loop
    .goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0
    .use 264163 >> |cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Vuldrène::250874|r |cRXP_WARN_en restant le plus loin possible|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .turnin 94013 >>Rendez la quête Dompter la bête
    .accept 94050 >>Acceptez la quête Entraîner la bête
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Vent-Vif::254411|r.
    .turnin 94050 >>Rendez la quête Entraîner la bête
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Vent-Vif::254411|r.
    .train 4195 >>Apprenez [Endurance supérieure]
    .train 24547 >>Apprenez [Armure naturelle]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Horde Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoise une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Clampant chantevent::254588|r pour le dompter|r -- .tame 1997
    *|cRXP_WARN_NOTE :|r Si tous les crabes sont morts, vous pouvez aussi dresser un |cRXP_ENEMY_Ornery Galestrider::251707|r jusqu'à ce que vous trouviez un crabe.
    .train 2981 >> Attaquez des mobs avec celui-ci pour qu'il apprenne [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
	.mob Windsong Crawler::254588



step << Alliance Hunter
    #completewith next
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Clampant chantevent::254588|r |cRXP_WARN_le plus loin possible|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance !Hunter
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampant chantevent::254588|r. Dépouillez-les pour la |T133972:0|t[|cRXP_LOOT_Viande de clampant chantevent|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>Contournez la Montagne.
    *|cRXP_WARN_Si une Tornade est à proximité, touchez-la pour gagner 40% de vitesse de mouvement supplémentaire pendant 5 minutes. Les dégâts suppriment l'effet|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Cristaux|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Branche|r.
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance Hunter
    .isOnQuest 94013 -- Taming the Beast
    .isQuestNotComplete 94013 -- Taming the Beast
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Clampant chantevent::254588|r |cRXP_WARN_le plus loin possible|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance Hunter
    .subzone 16626,1
    .isQuestComplete 94013 -- Taming the Beast
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .goto 2521,50.57,68.18,30,0
    .goto 2521,52.73,71.12
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance !Hunter
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.46,70.12,30,0
    .goto 2521,65.577,76.650
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Pas on Air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416

-- Deathskip past 10; might need later
-- step << Alliance --The correct step; the beta issue still needs to be fixed.
--     .subzoneskip 16638 -- Valanaar
--     .isOnQuest 92840
--     .isQuestComplete 92840
--     .goto 2521,48.37,70.01
-- -- #ignorecorpse
--     .deathskip >>Die to the monsters or jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .subzoneskip 16638,1 -- Valanaar
--     .target Spirit Healer

step << Alliance Hunter
    #completewith next
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .turnin 94978 >>Rendez la quête Dompter la bête
    .accept 94979 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Alliance
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    #completewith next
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syriel Noctepluie::254345|r.
    .turnin 97968 >>Rendez la quête Introduction au camping : l'herboristerie
    .target Syriel Nightrain::254345
step << Mage
    #completewith next
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belann Vif-Bois::256507|r.
    .turnin 93797 >>Rendez la quête La brise dans les branches
    .target Belann Windwood::256507
step << Mage
    #loop
    .goto 2521,62.71,77.75,15,0
    .goto 2521,63.06,77.3,20,0
    .goto 2521,62.67,76.59,25,0
    .goto 2521,62.16,75.12,30,0
    .goto 2521,63.03,74.51,30,0
    .goto 2521,63.72,76.13,30,0
    .goto 2521,64.18,78.18,30,0
    .goto 2521,63.19,79.17,30,0
    .goto 2521,64.36,80.69,30,0
    >>Tuez |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Clampant chantevent::254588|r en faisant un clic droit sur son portrait et en sélectionnant Renvoyer, sinon vous ne pourrez dompter un|r |cRXP_ENEMY_Scorpide blindé::3126|r
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Trotteur des trombes hargneux::251707|r |cRXP_WARN_en restant le plus loin possible|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .turnin 94979 >>Rendez la quête Dompter la bête
    .accept 94013 >>Acceptez la quête Dompter la bête
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #completewith next
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    #loop
    .goto 2521,54.23,75,40,0
    .goto 2521,53.45,80.93,40,0
    .goto 2521,52.56,77.82,40,0
    .goto 2521,61.944,68.828,35,0
    .goto 2521,59.516,64.846,35,0
    .goto 2521,57.041,67.729,35,0
    .goto 2521,54.322,75.080,35,0
    .goto 2521,51.925,80.458,35,0
    .goto 2521,52.920,81.509,35,0
    .use 264163 >>|cRXP_WARN_Utilisez votre|r |T132164:0|t[Bâtonnet de domptage] |cRXP_WARN_sur un|r |cRXP_ENEMY_Vuldrène::250874|r |cRXP_WARN_en restant le plus loin possible|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .turnin 94013 >>Rendez la quête Dompter la bête
    .accept 94050 >>Acceptez la quête Entraîner la bête
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Vent-Vif::254411|r.
    .turnin 94050 >>Rendez la quête Entraîner la bête
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'dora Vent-Vif::254411|r.
    .train 4195 >>Apprenez [Endurance supérieure]
    .train 24547 >>Apprenez [Armure naturelle]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Alliance !Mage
    #loop
    .goto 2521,58.85,75.49,30,0
    .goto 2521,59.05,76.35,30,0
    .goto 2521,59.8,75.68,30,0
    .goto 2521,61.4,74.76,40,0
    .goto 2521,62.61,76.14,40,0
    .goto 2521,63.1,77.59,20,0
    .goto 2521,62.67,77.77,15,0
    .goto 2521,63.13,77.32,15,0
    .goto 2521,62.97,76.91,15,0
    .goto 2521,63.8,78.01,30,0
    .goto 2521,63.16,78.97,30,0
    .goto 2521,65.37,78.53,40,0
    >>Tuez |cRXP_ENEMY_Sauteciel::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Horde
--     #loop
--     .goto 2521,63.1,77.59,20,0
--     .goto 2521,62.67,77.77,15,0
--     .goto 2521,63.13,77.32,15,0
--     .goto 2521,62.97,76.91,15,0
--     .goto 2521,63.8,78.01,30,0
--     .goto 2521,63.16,78.97,30,0
--     .goto 2521,65.37,78.53,40,0
--     .goto 2521,58.85,75.49,30,0
--     .goto 2521,59.05,76.35,30,0
--     .goto 2521,59.8,75.68,30,0
--     .goto 2521,61.4,74.76,40,0
--     .goto 2521,62.61,76.14,40,0
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Trombecalme::252475|r.
    .turnin 92840 >>Rendez la quête Danger imminent
    .accept 92834 >>Acceptez la quête Rendre au centuple
    .accept 92860 >>Acceptez la quête Au service de Zéphras
    .target Elaadrin Evengale::252475
step << Alliance
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_Équipez le|r |T7810733:0|t[Ruban des heures] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::252383|r.
    .turnin 92860 >>Rendez la quête Au service de Zéphras << Alliance
    .turnin 93949 >>Rendez la quête Bugged
    .accept 93320 >>Acceptez la quête Défense des tours  << Alliance
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0 << Alliance
    .goto 2521,64.98,77.12,30,0 << Alliance
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Montez la tour
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::252383|r.
    .turnin 92860 >>Rendez la quête Au service de Zéphras  << Alliance
    .turnin 93949 >>Rendez la quête Bugged
    .accept 93320 >>Acceptez la quête Défense des tours << Alliance
    .target Valennia Stormfist::252383
step << Alliance !Druid
    .isNotOnQuest 94896 -- Aid For The Refugees
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler jusqu'à l'emplacement du point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Foulenimbus::259012|r.
    .accept 94896 >>Acceptez la quête Un coup de main pour les réfugiés
    .accept 94897 >>Acceptez la quête Le sort de l’être aimé
    .target Ealaane Nimbuswalker::259012
step << Alliance
    .isOnQuest 94897
    .isOnQuest 93320
    .goto 2521,64,74.06
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r.
    *Dépouillez-les pour les |T1379232:0|t[|cRXP_LOOT_Charmes de pierre de vent al’aketh|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer::254596
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,63.59,73.6,25,0
    .goto 2521,64.4,73.23,30,0
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yorana Roseauvent::252378|r.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour un déplacement plus rapide|r.
    .turnin 93320 >>Rendez la quête Défense des tours
    .accept 92642 >>Acceptez la quête Perturbation logistique
    .accept 92645 >>Acceptez la quête Briser la Briseuse
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r, les |cRXP_ENEMY_Prêcheurs al'aketh::253195|r, et les |cRXP_ENEMY_Pilleurs al'aketh::253511|r.
    *Dépouillez-les pour les |T1379232:0|t[|cRXP_LOOT_Charmes de pierre de vent al’aketh|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Tuez les |cRXP_ENEMY_Soigneurs al'aketh|r et les |cRXP_ENEMY_Bagarreurs al'aketh|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Tuez |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_au deuxième étage|r à l'intérieur de la maison.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r, les |cRXP_ENEMY_Prêcheurs al'aketh::253195|r, et les |cRXP_ENEMY_Pilleurs al'aketh::253511|r.
    *Dépouillez-les pour les |T1379232:0|t[|cRXP_LOOT_Charmes de pierre de vent al’aketh|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r et les |cRXP_ENEMY_Soigneurs al'aketh::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834 -- Avenged Tenfold
    .subzoneskip 17675,1 -- East Pylon Watchtower
    -- .subzone 16593
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94006 >>Rendez la quête Le grand esprit ursera
    .accept 94638 >>Acceptez la quête Force et clémence
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r, les |cRXP_ENEMY_Prêcheurs al'aketh::253195|r, et les |cRXP_ENEMY_Pilleurs al'aketh::253511|r.
    *Dépouillez-les pour les |T1379232:0|t[|cRXP_LOOT_Charmes de pierre de vent al’aketh|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>Tuez |cRXP_ENEMY_Al'Akeths|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith next
    #label Commander Belguilos Druid
    >>Tuez |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_au deuxième étage|r à l'intérieur de la maison.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>Passez par la montagne
step << Alliance Druid
    #requires Commander Belguilos Druid
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>Tuez |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_au deuxième étage|r à l'intérieur de la maison.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r, les |cRXP_ENEMY_Prêcheurs al'aketh::253195|r, et les |cRXP_ENEMY_Pilleurs al'aketh::253511|r.
    *Dépouillez-les pour les |T1379232:0|t[|cRXP_LOOT_Charmes de pierre de vent al’aketh|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Tuez les |cRXP_ENEMY_Bagarreurs al'aketh::270201|r et les |cRXP_ENEMY_Soigneurs al'aketh::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yorana Roseauvent::252378|r.
    .turnin 92645 >>Rendez la quête Briser la Briseuse
    .turnin 92642 >>Rendez la quête Perturbation logistique
    .accept 92880 >>Acceptez la quête Retour à Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Rendez la quête Retour à Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Rendez la quête Retour à Valanaar << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Rendez la quête Retour à Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Acceptez la quête La requête du grand ancien
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Return to Valanaar
    .goto 2521,65.58,68.58,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Contournez la montagne puis montez la tour
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Rendez la quête Retour à Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Rendez la quête Retour à Valanaar << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Rendez la quête Retour à Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Acceptez la quête La requête du grand ancien
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r.
    .turnin 92881 >>Rendez la quête La requête du grand ancien
    .accept 92643 >>Acceptez la quête Le transfuge
    .target Talaanis::252476
step << Alliance Paladin/Alliance Priest/Alliance Warlock/Alliance Mage/Alliance Rogue
    #completewith Al'Aketh Assassins Equip Reminder
    +|cRXP_WARN_Équipez le|r |T7792097:0|t[Grand marteau bien poli] << Paladin
    +|cRXP_WARN_Équipez le|r |T7798447:0|t[Bâton de combat équilibré] << Priest/Warlock/Mage
    +|cRXP_WARN_Équipez la|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] |cRXP_WARN_en main secondaire|r. << Rogue
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belann Vif-Bois::256507|r à l'intérieur de la maison.
    .vendor 256507 >>Vendez les rebuts et réparez si nécessaire.
    *Ne vendez pas la |T133970:0|t[Viande filandreuse], les |T132832:0|t[Petits œufs], ou la |T133972:0|t[Viande de trotteur]. << Alliance
    *|cRXP_WARN_Nous en aurons besoin pour Cuisine plus tard|r.
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.96,74.15
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
-- Deathskip past 10; might need later
-- step << Alliance
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     -- *|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] << Alliance Warrior
--     -- *|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] << Alliance Hunter/Alliance Mage/Alliance Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daeann Steelwind::252479|r outside the house.
--     .vendor 252479 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Daeann Steelwind::252479
--     .goto 2521,65.4,80.22
--     .skipgossipid 137530
-- step << Alliance
--     -- .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     .goto 2521,66.42,83.48
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
-- step << Horde
--     #completewith next
--     #label BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     #optional
--     #completewith BuggedHordeA
--     .goto 2521,65.93,76.37,8,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Horde
--     #requires BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     .goto 2521,66.18,76.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     .abandon 93949 >>Abandon Bugged
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>Suivez la route pour sortir de Valanaar
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Pas on Air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94006 >>Rendez la quête Le grand esprit ursera
    .accept 94638 >>Acceptez la quête Force et clémence
    .target Urs'endris::255853
-- step << Horde !Druid
--      -- Not sure yet if I want to do this. This saves "only" ~15 seconds
--     .isQuestAvailable 98512
--     .goto 2521,61.221,78.472
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
-- step << Horde Druid
--     .isOnQuest 94638
--     .goto 2521,62.384,64.393
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
step << Alliance
    #label Al'Aketh Assassins Equip Reminder
    .goto 2521,59.719,67.016,35,0 << Druid --Remove if we add deathskips again
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fendaal Ventepierre::273017|r.
    *|cRXP_WARN_Si une Tornade est à proximité, touchez-la pour gagner 40% de vitesse de mouvement supplémentaire pendant 5 minutes. Les dégâts suppriment l'effet|r.
    .accept 98512 >>Acceptez la quête Les assassins al’aketh
    .target Fendaal Windstone::273017
step << Alliance
    #completewith Fendaal Windstone
    >>Tuez les |cRXP_ENEMY_Assassins al'aketh::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.13,60.26
    >>Suivez la flèche
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Sectateur mort|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteragissez avec le |cRXP_FRIENDLY_Sectateur mort::253372|r.
    .target Dead Cultist::253372
    .turnin 92643 >>Rendez la quête Le transfuge
    .accept 92644 >>Acceptez la quête Des nouvelles regrettables
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Tuez les |cRXP_ENEMY_Assassins al'aketh::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fendaal Ventepierre::273017|r.
    .turnin 98512 >>Rendez la quête Les assassins al’aketh
    .target Fendaal Windstone::273017
step << Druid
    .goto 2521,54.284,65.803
    >>Tuez |cRXP_ENEMY_Ur'endra::258443|r.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Sautez de la |cRXP_WARN_montagne plus bas (pas celle sur laquelle vous êtes)|r et utilisez |T132845:0|t[Marche sur l’air] pour voler vers le donneur de quête.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Rendez la quête Force et clémence
step << Alliance Druid
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>Tuez les |cRXP_ENEMY_Clampant chantevent::254588|r. Dépouillez-les pour la |T133972:0|t[|cRXP_LOOT_Viande de clampant chantevent|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    .goto 2521,57.25,60.92,50 >>Contournez les montagnes
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tuez les |cRXP_ENEMY_Clampant chantevent::254588|r. Dépouillez-les pour la |T133972:0|t[|cRXP_LOOT_Viande de clampant chantevent|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
-- step << Horde Druid
--     #completewith next
--     #label CrawlerMeatDruidA
--     .goto 2521,59.59,66.7,30,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
-- step << Horde Druid
--     #completewith CrawlerMeatDruidA
--     .goto 2521,57.25,60.92,50 >>Go around the mountains
-- step << Horde
--     #requires CrawlerMeatDruidA << Druid
--     #loop
--     .goto 2521,53.56,59.17,35,0
--     .goto 2521,52.91,58.56,35,0
--     .goto 2521,52.08,59.23,35,0
--     .goto 2521,52.49,57.3,35,0
--     .goto 2521,53.55,55.55,35,0
--     .goto 2521,54.3,57.94,35,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
--     .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Tuez les |cRXP_ENEMY_Clampant chantevent::254588|r. Dépouillez-les pour la |T133972:0|t[|cRXP_LOOT_Viande de clampant chantevent|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
-- step << Horde
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .goto 2521,52.790,57.628
--     .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
--     .cooldown spell,1259686,>0,1
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #loop
--     .goto 2521,53.029,51.423,35,0
--     .goto 2521,53.621,50.493,35,0
--     .goto 2521,52.878,49.641,35,0
--     .goto 2521,53.129,47.738,35,0
--     .goto 2521,52.528,45.922,35,0
--     .goto 2521,51.574,46.567,35,0
--     .goto 2521,49.511,45.931,35,0
--     .goto 2521,49.917,44.806,35,0
--     .goto 2521,50.642,44.296,35,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
step << Alliance
    #completewith next
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>Passez la cascade et contournez la montagne.
    *|cRXP_WARN_Si vous voyez une Tornade, utilisez-la pour un déplacement plus rapide|r.
step << Horde
    .isQuestAvailable 93159 -- The Strange Hermit
    #completewith next
    .goto 2521,59.444,67.060,45,0 << Druid
    .goto 2521,58.72,52.77,30 >>Contournez les montagnes et traversez le pont.
    *|cRXP_WARN_Si vous voyez une Tornade, utilisez-la pour un déplacement plus rapide|r.
-- step
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,58.24,51.21,20,0
--     .goto 2521,57.77,52.06
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Zendraas::272045|r.
--     .vendor 272045 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     .skipgossip 272045,1,1,1,2
--     .skipgossipid 141672
--     .target Brother Zendraas::272045
--     --1: I haven't met too many cultists that haven't immediately tried to kill me. What's your story?
--     --1: What trade would that be?
--     --1: I'll think about it. (This option returns no gossip ID and unlocks the vendor.)
--     --2: Show me what you have available for trade.
step << Warrior
    .goto 2521,56.56,50.36
    >>Tuez |cRXP_ENEMY_Zaal Bouclier-des-Tempêtes::257196|r. Ramassez |T134959:0|t[|cRXP_LOOT_Skybreaker Barricade|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196
-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip -- Shadowgale Forest (subzone ID missing)
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step << Alliance
    #completewith Learn
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r.
    *Dépouillez-les pour les |T1508517:0|t[|cRXP_LOOT_Serres de criailleuse|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    .goto 2521,58.81,46.74,30,0
    .goto 2521,58.81,43.57,40 >>Traversez le pont.
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ermite étrange::251684|r.
    .accept 93159 >>Acceptez la quête L’étrange ermite
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Rendez la quête L’étrange ermite
    .accept 93160 >>Acceptez la quête Les richesses de la forêt
    .accept 93172 >>Acceptez la quête Libérez les creux
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ermite étrange::251684|r.
    .accept 98285 >>Acceptez la quête Introduction au camping : l’ingénierie
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r.
    *Dépouillez-les pour les |T1508517:0|t[|cRXP_LOOT_Serres de criailleuse|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tuez les |cRXP_ENEMY_Creux du vent::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Caisses|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,56.83,33.99,30,0
    .goto 2521,56.75,33.3,25,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Resaan Foulenimbus|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #completewith Abandoned BelongingsZ
    >>Tuez les |cRXP_ENEMY_Creux du vent::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Caisses|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .goto 2521,56.61,29.26,20,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.14,30.47,10,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.1,33.38
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour bénéficier d'une augmentation de 100% de régénération de mana et de vie passive
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith Wind Hollow
    #hidewindow
    #loop
    .goto 2521,59.08,34.75,30,0
    .goto 2521,57.26,33.48,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,58.14,30.47,20,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,56.61,29.26,20,0
    +1
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tuez les |cRXP_ENEMY_Creux du vent::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Caisses|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Tuez les |cRXP_ENEMY_Creux du vent::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Tuez les |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Dépouillez-les pour les |T1508517:0|t[|cRXP_LOOT_Serres de criailleuse|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Graines|r |cRXP_WARN_principalement autour des arbres|r.
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Piquepatte::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Rendez la quête Un silence angoissant
    .accept 94485 >>Acceptez la quête Les larmes de la Dame
    .accept 94486 >>Acceptez la quête Des plumes pour le bandage
    .accept 94487 >>Acceptez la quête Indignes même dans la mort
step << Alliance
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Mousse des larmes|r |cRXP_WARN_sur les arbres|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Alliance
    #completewith next
    >>Tuez les |cRXP_ENEMY_Fantassins al'aketh::252665|r et les |cRXP_ENEMY_Chasses-tempêtes al'aketh::252664|r.
    *Dépouillez-les pour les |T4622283:0|t[|cRXP_LOOT_Héritages ensanglantés|r] et les |T1379232:0|t[|cRXP_LOOT_Charmes de pierre de vent al’aketh|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vayn Moongaze::254151|r.
    .accept 93165 >>Acceptez la quête La miséricorde tombe dans l’oreille d’un sourd
    .target Vayn Moongaze::254151
step
    #label Unnerving Silence
    #loop
    .goto 2521,63.04,37.12,40,0
    .goto 2521,61.99,35.62,30,0
    .goto 2521,61.97,36.71,30,0
    .goto 2521,62.47,37.3,40,0
    .goto 2521,62.96,39.3,40,0
    .goto 2521,63.33,38.01,35,0
    .goto 2521,64.14,39.18,40,0
    .goto 2521,65.7,36.82,40,0
    .goto 2521,65.63,35.57,40,0
    >>Tuez les |cRXP_ENEMY_Fantassins al'aketh|r et les |cRXP_ENEMY_Chasses-tempêtes al'aketh|r.
    *Ramassez-les pour |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r], |T133856:0|t[|cRXP_LOOT_Al'Aketh Cultist's Piercings|r] et |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]. << Alliance
    *Dépouillez-les pour les |T4622283:0|t[|cRXP_LOOT_Héritages ensanglantés|r]. << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    #hidewindow
    #completewith ToHermit << Alliance
    #completewith ForestHollowsA << Horde
    #loop
    .goto 2521,62.83,38.25,35,0
    .goto 2521,62.08,36.7,35,0
    .goto 2521,61.17,35.44,35,0
    .goto 2521,60.82,37.23,35,0
    .goto 2521,60.33,37.46,35,0
    .goto 2521,60.9,38.88,35,0
    .goto 2521,59.79,38.95,35,0
    .goto 2521,59.9,40.38,35,0
    .goto 2521,58.53,39.85,35,0
    .goto 2521,57.94,39.99,35,0
    .goto 2521,57.36,40.86,35,0
    .goto 2521,57.24,42.8,35,0
    .goto 2521,55.38,42.17,35,0
    .goto 2521,54.55,42.17,35,0
    .goto 2521,55.59,39.23,35,0
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 93160,1 --8/8 Zephyrseed
    .complete 94485,1 --8/8 Lady's Tear Moss
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r.
    *Dépouillez-les pour les |T1508517:0|t[|cRXP_LOOT_Serres de criailleuse|r] et les |T132927:0|t[Plumes de criailleuse en parfait état]. << Alliance
    *Dépouillez-les pour les |T132927:0|t[Plumes de criailleuse en parfait état]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Graines|r |cRXP_WARN_principalement autour des arbres|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Mousse des larmes|r |cRXP_WARN_sur les arbres|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Mousse des larmes|r |cRXP_WARN_sur les arbres|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Graines|r |cRXP_WARN_principalement autour des arbres|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ermite étrange::251684|r.
    .turnin 93160 >>Rendez la quête Les richesses de la forêt
    .turnin 93172 >>Rendez la quête Libérez les creux
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
--     .complete 92741,1 --8/8 Shriekling Talons
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ermite étrange::251684|r.
    .turnin 93160 >>Rendez la quête Les richesses de la forêt
    .turnin 93172 >>Rendez la quête Libérez les creux
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ermite étrange::251684|r.
    .turnin 98285 >>Rendez la quête Introduction au camping : l’ingénierie
    .target Strange Hermit::251684
step
    #hidewindow
    #completewith Pristine Shriekling Feathers
    #loop
    .goto 2521,54.93,38.11,40,0
    .goto 2521,55.92,36.83,40,0
    .goto 2521,57.49,37.79,40,0
    .goto 2521,58.93,37.91,40,0
    .goto 2521,60.27,38.12,40,0
    .goto 2521,61.61,36.4,40,0
    .goto 2521,61.41,39.14,40,0
    .goto 2521,59.67,40.26,40,0
    +1
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r. Dépouillez-les pour les |T1508517:0|t[|cRXP_LOOT_Serres de criailleuse|r] et les |T132927:0|t[Plumes de criailleuse en parfait état]. << Alliance
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r. Dépouillez-les pour les |T132927:0|t[Plumes de criailleuse en parfait état]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Mousse de larmes|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r. Dépouillez-les pour les |T1508517:0|t[|cRXP_LOOT_Serres de criailleuse|r] et les |T132927:0|t[Plumes de criailleuse en parfait état]. << Alliance
    >>Tuez les |cRXP_ENEMY_Criailleuses trombenoires::256092|r. Dépouillez-les pour les |T132927:0|t[Plumes de criailleuse en parfait état]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Piquepatte::257944|r.
    .turnin 94485 >>Rendez la quête Les larmes de la Dame
    .turnin 94487 >>Rendez la quête Indignes même dans la mort
    .turnin 94486 >>Rendez la quête Des plumes pour le bandage
    .accept 94488 >>Acceptez la quête Ces liens qui nous entravent
    .accept 94489 >>Acceptez la quête La douleur de la trahison
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>Tuez le |cRXP_ENEMY_Commandant Haalien::253622|r. Dépouillez-le pour sa |T134161:0|t[|cRXP_LOOT_Tête coupée|r] et la |T135332:0|t[Missive déchirée].
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1 -- Ripped Missive
step
    #completewith next
    >>Utilisez la |T134332:0|t[Missive déchirée] dans vos sacs pour lancer une quête.
    .accept 94490 >>Acceptez la quête Missive déchirée
    .use 265476
step << Alliance
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vayn Moongaze::254151|r à l'entrée de la grotte.
    .turnin 93165 >>Rendez la quête La miséricorde tombe dans l’oreille d’un sourd
    .target Vayn Moongaze::254151
step
    #loop
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,25,0
    .goto 2521,64.52,31.88,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Druides|r
    .complete 94489,1,2 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    #loop
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Druids|r.
    *|cRXP_WARN_Ne bougez pas durant l'interaction ou vous ne pourrez pas obtenir le crédit|r.
    .complete 94489,1,4 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #loop
    .goto 2521,64.98,34.96,10,0
    .goto 2521,64.51,34.89,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Druides|r
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Jorel Chantelevent|r dans la grotte.
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Piquepatte::257944|r.
    .turnin 94489 >>Rendez la quête La douleur de la trahison
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Quittez la grotte
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elegael Piquepatte::257944|r.
    .turnin 94489 >>Rendez la quête La douleur de la trahison
    .turnin 94490 >>Rendez la quête Missive déchirée
    .turnin 94488 >>Rendez la quête Ces liens qui nous entravent
    .accept 94491 >>Acceptez la quête Le sort des druides
    .target Elegael Thornpaw::257944
step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>Utilisez votre Pierre de foyer pour revenir à Valanaar
    .use 6948
step
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 94896
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
    *Ne vendez pas |T133970:0|t[Stringy Viande], |T132832:0|t[Petit Eggs] ou |T133972:0|t[Strider Viande]. << Alliance
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en aurons besoin pour Cuisine plus tard|r.
    .skipgossipid 137078
    .target Donaal Downbreeze::255940
step << Warrior Alliance
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Rendez la quête Le Rempart de Briseciel
step << Warrior Alliance
    .isQuestAvailable 94491 -- The Fate of the Den
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .train 1160 >>Apprenez |Tinterface/icons/ability_warrior_warcry.blp:0|t[Cri démoralisant]
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6572 >>Apprenez |Tinterface/icons/ability_warrior_revenge.blp:0|t[Vengeance]
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .train 1310185 >>Apprenez |T136031:0|t[Maîtrise tactique]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
-- step << Alliance Rogue
--     .goto 2521,59.9,72.48
--     *|cRXP_WARN_Use the Interact Key through the Wall|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1766 >>Train |T132219:0|t[Kick]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .money <0.16
--     .xp <12,1
step << Alliance Rogue
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eltheen Noctebrise::252379|r.
    .train 1766 >>Apprenez |T132219:0|t[Coup de pied]
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quel'ana Vent-Vif::252389|r.
    .train 14281 >>Apprenez |T132218:0|t[Tir des arcanes (Rang 2)]
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <12,1
step << Alliance Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .train 5242 >>Apprenez |T132333:0|t[Cri de guerre (Rang 2)]
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 72 >>Apprenez |T132357:0|t[Coup de bouclier]
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Brise-Stellaire::252359|r.
    .turnin 94491 >>Rendez la quête Le sort des druides
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naeluna Prompte guérison::254081|r.
    .train 5229 >>Apprenez |T132126:0|t[Enrager]
    .train 8936 >>Apprenez |T136085:0|t[Rétablissement]
    .target Naeluna Swiftmend::254081
    .money <0.16
    .xp <12,1
step
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ealaane Foulenimbus::259012|r.
    .turnin 94896 >>Rendez la quête Un coup de main pour les réfugiés
    .turnin 94897 >>Rendez la quête Le sort de l’être aimé
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r.
    .turnin 92644 >>Rendez la quête Des nouvelles regrettables
    .accept 94568 >>Acceptez la quête Le véritable objectif de la secte
    .disablecheckbox
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Unfortunate News
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Montez la tour
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r.
    .turnin 92644 >>Rendez la quête Des nouvelles regrettables
    .accept 94568 >>Acceptez la quête Le véritable objectif de la secte
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Parlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r.
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Attendez la fin du RP|r.
    -- *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    -- *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talaanis Chantelombre::252476|r |cRXP_WARN_à côté de vous|r.
    .turnin 94568 >>Rendez la quête Le véritable objectif de la secte
    .accept 92640 >>Acceptez la quête Une situation désespérée
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::252383|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640 -- Desperate Times
    .isQuestNotComplete 92640 -- Desperate Times
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l’air] pour voler jusqu'à l'emplacement du point de repère.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Chantelaube::251968|r.
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger::251968
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iaadaria Vent-Amer::253004|r.
    .turnin 92741 >>Rendez la quête Visiteuses indésirables
    .target Iaadaria Bitterwind::253004
step << Alliance
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Trombecalme::252475|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elaadrin Trombecalme::252475|r.
    .turnin 92834 >>Rendez la quête Rendre au centuple
    .target Elaadrin Evengale::252475
step << Alliance Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anathamaas Vent-d'éther::252373|r.
    .train 145 >>Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .train 604 >>Apprenez |T136006:0|t[Atténuation de la magie]
    -- .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>Apprenez |T135992:0|t[Chute lente]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
    .money <0.24
    .xp <12,1
step << Alliance
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::252383|r.
    .turnin 92640 >>Rendez la quête Une situation désespérée
    .accept 93065 >>Acceptez la quête Une bataille à préparer
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Prepare for Battle
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Montez la tour
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::252383|r.
    .turnin 92640 >>Rendez la quête Une situation désespérée
    .accept 93065 >>Acceptez la quête Une bataille à préparer
    .target Valennia Stormfist::252383
step << Alliance
    .isQuestNotComplete 93065 -- Prepare for Battle
    .isOnQuest 93065 -- Prepare for Battle
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,66.49,76.64,8,0
    .goto 2521,66.39,76.26,10,0
    .goto 2521,63.9,74.16
    .cast 1259416 >>Sautez de la montagne et utilisez |T132845:0|t[Marche sur l'air] pour voler vers la position de passage.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .goto 2521,63.9,74.16
    .cast 1259705 >>Utilisez |T236219:0|t[Lecture des lignes telluriques] pour une augmentation de 100% de la régénération passive de Mana et de Points de vie.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valennia Poing-Tempête::253844|r.
    *|cRXP_WARN_Si une Tornade est à proximité, utilisez-la pour un déplacement plus rapide|r.
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>Rendez la quête Une bataille à préparer
    .target Valennia Stormfist::253844
step << Alliance
    .goto 2521,60.95,73.17,15,0
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Feu-Ardent::257006|r dans la maison.
    .turnin 93317 >>Rendez la quête La saison des crabes
    .target Nyalah Brightfire::257006

--Discovery Route
-- step << Alliance
--     .goto 2521,61.15,70.93
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
--     .accept 92947 >>Accept Making Our Move
--     .target Valennia Stormfist
-- step << Alliance
--     #completewith next
--     #label Al'Aketh Guardian
--     .goto 2521,59.58,66.41,30,0
--     .goto 2521,58.98,60.8,30,0
--     >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
--     .complete 92947,1 --8/8 Al'Aketh Guardian slain
--     .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
--     .complete 92947,3 --8/8 Al'Aketh Blademaster slain
--     .mob Al'Aketh Guardian
-- step << Alliance
--     #completewith Al'Aketh Guardian
--     .goto 2521,59.1,52.83,80 >>Cross the bridge
-- step << Alliance
--     #requires Al'Aketh Guardian
--     #loop
--     .goto 2521,59.78,52.23,40,0
--     .goto 2521,60.08,51.67,40,0
--     .goto 2521,61.05,52.26,40,0
--     .goto 2521,62.75,52.56,40,0
--     .goto 2521,62.25,49.01,40,0
--     .goto 2521,63.14,48.55,40,0
--     .goto 2521,64.03,46.25,40,0
--     .goto 2521,59.91,49.6,40,0
--     >>Kill |cRXP_ENEMY_Al'Akeths|r.
--     *|cRXP_WARN_Prioritize the |cRXP_ENEMY_Guardians|r|r
--     .complete 92947,1 --8/8 Al'Aketh Guardian slain
--     .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
--     .complete 92947,3 --8/8 Al'Aketh Blademaster slain
--     .mob Al'Aketh Guardian
--     .mob Al'Aketh Blademaster
--     .mob Al'Aketh Spiritcaller
-- step << Alliance
--     #completewith next
--     #label Hyusaa Quickbreeze
--     .goto 2521,61.98,50.42,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
--     .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
--     .target Hyusaa Quickbreeze
-- step << Alliance
--     #completewith Hyusaa Quickbreeze
--     .goto 2521,63.79,50.55,80 >>Take the stairs to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r
-- step << Alliance
--     #requires Hyusaa Quickbreeze
--     .goto 2521,63.79,50.55
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
--     .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
--     .turnin 92947 >>Turn in Making Our Move
--     .accept 93958 >>Accept The Inner Sanctum
--     .target Hyusaa Quickbreeze
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale
-- step << Alliance
--     #completewith next
--     #label The Inner Sanctum
--     .goto 2521,65.35,50.33,30,0
--     .goto 2521,66.91,50.05,30,0
--     .goto 2521,66.85,50.56,10,0
--     .goto 2521,66.83,49.89,15,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
--     .target Valennia Stormfist::253590
--     .turnin 93958 >>Turn in The Inner Sanctum
--     .accept 93835 >>Accept Confront Lorthuna
--     .disablecheckbox
-- step << Alliance
--     #completewith The Inner Sanctum
--     .goto 2521,66.14,49.15,30 >>Take the spiral staircase
-- step << Alliance
--     #requires The Inner Sanctum
--     .goto 2521,65.191,50.352
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
--     .target Valennia Stormfist::253590
--     .turnin 93958 >>Turn in The Inner Sanctum
--     .accept 93835 >>Accept Confront Lorthuna
-- step << Alliance
--     .subzoneskip 16679,1
--     .goto 2521,65.55,50.35
--     .subzone 16630 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step << Alliance
--     .subzoneskip 16630,1
--     .goto 2521,69.11,51.19,10,0
--     .goto 2521,69.6,51.64,10,0
--     .goto 2521,70.04,51.63,10,0
--     .goto 2521,71.24,51.04,10,0
--     .goto 2521,74.17,52.57,290 >>Go around the plateau and take the windstream to |cRXP_FRIENDLY_Elaadrin Evengale|r
--     *|cRXP_WARN_If the windstream is not active, wait for it to appear|r
-- step << Alliance
--     .subzoneskip 16630,1
--     #completewith next
--     .gossipoption 137230 >>Talk to |cRXP_FRIENDLY_Elaadrin Evengale|r to begin the event.
--     .timer 117,RP
--     *|cRXP_WARN_Another player may have already started it|r
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,74.16,52.54,25,0
--     .goto 2521,74.48,53.92,25,0
--     .goto 2521,75.07,53.15
--     >>Follow |cRXP_FRIENDLY_Elaadrin Evengale|r. Kill |cRXP_ENEMY_Baron Anvillaxx|r and the |cRXP_ENEMY_Malevolent Storms|r that attack.
--     .complete 93835,1 --1/1 Confront Lorthuna
--     .skipgossipid 137230
--     .mob Baron Anvillaxx
--     .mob Malevolent Storm
-- step << Alliance
--     .goto 2521,75.09,53.25
--     .subzoneskip 16630,1
--     .subzone 16638 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step << Alliance
--     .goto 2521,66.63,79.93
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93835 >>Turn in Confront Lorthuna
--     .accept 94369 >>Accept The Fate of Zephras
--     .target Elaadrin Evengale
-- step << Alliance
--     #completewith next
--     #label Fate of Zephras
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
--     .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
--     .turnin 94369 >>Turn in The Fate of Zephras
--     .accept 93089 >>Accept What Comes Next
--     .target Talaanis Shadowsong
-- step << Alliance
--     #completewith Fate of Zephras
--     .goto 2521,65.65,79.27,30,0
--     .goto 2521,64.98,77.12,30,0
--     .goto 2521,65.93,76.37,5,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Alliance
--     #requires Fate of Zephras
--     .goto 2521,66.18,76.51
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
--     .complete 94369,1 --|1/1 Speak with Talaanis Shadowsong
--     .turnin 94369 >>Turn in The Fate of Zephras
--     .accept 93089 >>Accept What Comes Next
--     .target Talaanis Shadowsong
-- step << Alliance
--     .isOnQuest 93089
--     .goto 2521,66.47,76.66,8,0
--     .goto 2521,66.63,79.95
--     .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
--     .cooldown spell,1259416,>0,1
--     .usespell 1259416
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale


-- step << Warrior
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train your level 14 class spells
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
--     .xp <14,1
-- step << Rogue
--     .goto 2521,59.55,73.3,30,0
--     .goto 2521,59.91,72.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1758 >>Train your level 14 class spells
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .xp <14,1
-- step << Hunter
--     .goto 2521,59.571,72.639
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
--     .train 1513 >>Train your level 14 class spells
--     .skipgossipid 136808
--     .target Quel'ana Quickgale::252389
--     .xp <14,1
-- step << Shaman
--     .goto 2521,58.313,78.499
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
--     .train 8045 >>Train your level 14 class spells
--     .skipgossipid 136811
--     .target Sessaria Skystride::252382
--     .xp <14,1
-- step << Druid
--     .goto 2521,63.99,75.09
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
--     .train 5178 >>Train your level 14 class spells
--     .skipgossipid 136805
--     .target Lotheluum Starbreeze::252359
--     .xp <14,1

step << Horde
    >>Abandonnez les quêtes "Campement 101" restantes.
    *Cliquez sur la macro dans la fenêtre des Objets actifs pour toutes les abandonner en même temps.
    .abandon 97970 >>Abandonnez la quête Introduction au camping : le minage
    .abandon 97971 >>Abandonnez la quête Introduction au camping : le dépeçage
    .abandon 96646 >>Abandonnez la quête Introduction au camping : la cuisine
    .abandon 97968 >>Abandonnez la quête Introduction au camping : l'herboristerie
    .abandon 97965 >>Abandonnez la quête Introduction au camping : les premiers soins
    .abandon 97967 >>Abandonnez la quête Introduction au camping : la pêche
    .abandon 97963 >>Abandonnez la quête Introduction au camping : l’alchimie
    .abandon 97964 >>Abandonnez la quête Introduction au camping : la forge
    .abandon 97973 >>Abandonnez la quête Introduction au camping : la couture
    .abandon 98286 >>Abandonnez la quête Introduction au camping : l’enchantement
    .abandon 97969 >>Abandonnez la quête Introduction au camping : le travail du cuir
    .abandon 98285 >>Abandonnez la quête Introduction au camping : l’ingénierie
    .abandon 93318 >>Abandonnez la quête WANTED: Vulgara the Insatiabilité
    .macro Abandon 101,130722 >>Abandonnez la quête 101
step << Alliance
    #completewith Magical City of Dalaran
    >>Abandonnez les quêtes "Campement 101" restantes.
    *Cliquez sur la macro dans la fenêtre des Objets actifs pour toutes les abandonner en même temps.
    .abandon 97970 >>Abandonnez la quête Introduction au camping : le minage
    .abandon 97971 >>Abandonnez la quête Introduction au camping : le dépeçage
    .abandon 96646 >>Abandonnez la quête Introduction au camping : la cuisine
    .abandon 97968 >>Abandonnez la quête Introduction au camping : l'herboristerie
    .abandon 97965 >>Abandonnez la quête Introduction au camping : les premiers soins
    .abandon 97967 >>Abandonnez la quête Introduction au camping : la pêche
    .abandon 97963 >>Abandonnez la quête Introduction au camping : l’alchimie
    .abandon 97964 >>Abandonnez la quête Introduction au camping : la forge
    .abandon 97973 >>Abandonnez la quête Introduction au camping : la couture
    .abandon 98286 >>Abandonnez la quête Introduction au camping : l’enchantement
    .abandon 97969 >>Abandonnez la quête Introduction au camping : le travail du cuir
    .abandon 98285 >>Abandonnez la quête Introduction au camping : l’ingénierie
    .abandon 93318 >>Abandonnez la quête AVIS DE RECHERCHE : Vulgara l’Insatiable
    .macro Abandon 101,130722 >>Abandonnez la quête 101
--discovery
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale

step << Alliance
    #completewith next
    +|cRXP_WARN_Le zeppelin peut arriver à tout moment lors de son cycle de 6 minutes. En attendant, complétez les objectifs suivants :|r
    *Vendez votre camelote et réparez votre équipement.
    *Cuisinez de la nourriture et obtenez les buffs du feu de camp pour plus tard.
    *Équipez les améliorations d'équipements et sélectionnez vos talents.
step << Alliance
    #completewith next
    #label Magical City of Dalaran
    -- .goto 2521,65.82,81.18,15,0
    -- .goto 2521,65.44,80.46,15,0
    -- .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denaaris Trombétoile::259084|r.
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Acceptez la quête Bienvenue sur Azeroth
    .skipgossipid 137530
    .target Denaaris Stargale::259084
step << Alliance
    #completewith Magical City of Dalaran
    .goto 2521,65.81,83.44
    .zoneskip 1416
    .zone 1424 >>Prenez le Zeppelin pour Dalaran
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_Ne sautez pas du zeppelin trop tôt, car vous pourriez être rejeté de la plateforme|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denaaris Trombétoile::259084|r.
    .target Denaaris Stargale::259084
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Acceptez la quête Bienvenue sur Azeroth
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Ansirem Runeweaver::2543|r.
    .accept 94912 >>Acceptez la quête Enfant de la nature
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
-- step << Alliance Druid
--     .goto 1453/0,1099.900,-8776.700
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree::5504|r.
--     .turnin 94912 >>Turn in Child of Nature
--     .accept 94914 >>Accept Moonglade
--     .target Sheldras Moontree::5504
-- step << Alliance Druid
--     .goto 1450/1,-2678.600,8020.000
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze::11802|r.
--     .target Dendrite Starblaze::11802
--     .turnin 94914 >>Turn in Moonglade
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Catherine Leland::5494|r
    >>|cRXP_BUY_Achetez-lui une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_. Ils servent pour une quête donnant 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland::5494
step << Alliance Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby::1285|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>|cRXP_WARN_Ils sont utilisés pour fabriquer des|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_sur les bateaux pour monter le niveau de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby::1285
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Alliance Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon::15659|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour accélérer les remises à Marche de l'Ouest et Sombrivage:|r
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
    .target Auctioneer Jaxon::15659
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon::15659|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour accélérer les remises à Marche de l'Ouest et Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon::15659
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Alliance
    .goto 1453,48.1,88.35,10,0
    .goto 1453,49.36,87.37,10,0
    .goto 1453,48.85,86.94,10,0
    .goto 1453,48.76,87.71,10,0
    .goto 1453,54.8,83.65,25,0
    .goto 1453,53.78,78.72,25,0
    .goto 1453,55.67,75.99,25,0
    .goto 1453,59.9,71.41,25,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Bolvar Fordragon::1748|r dans le Donjon.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Rendez la quête Bienvenue sur Azeroth
    .accept 93963 >>Acceptez la quête Exploring the Alliance
    .accept 98021 >>Acceptez la quête En route pour la colline des Sentinelles << !Hunter
--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acceptez la quête L'heure de la pêche
    .turnin 95065 >>Rendez la quête L'heure de la pêche
step << Alliance Hunter
    #optional
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
step << Alliance Hunter
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
step << Alliance Hunter
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
step << Alliance Hunter
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
step << Alliance Hunter
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
step << Alliance Hunter
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
step << Alliance Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheluum Brise-Stellaire::252359|r.
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>Rendez la quête Le sort des druides
step << Horde
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nyalah Feu-Ardent::257006|r dans la maison.
    .turnin 93317 >>Rendez la quête La saison des crabes
    .target Nyalah Brightfire::257006
step << Warrior Horde
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .turnin 94003 >>Rendez la quête Le Rempart de Briseciel
    .target Seena Skybreaker::252377
step << Warrior Horde
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .train 5242 >>Apprenez |T132333:0|t[Cri de guerre (Rang 2)]
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 72 >>Apprenez |T132357:0|t[Coup de bouclier]
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Warrior Horde
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seena Briseciel::252377|r.
    .train 1160 >>Apprenez |Tinterface/icons/ability_warrior_warcry.blp:0|t[Cri démoralisant]
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6572 >>Apprenez |Tinterface/icons/ability_warrior_revenge.blp:0|t[Vengeance]
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .train 1310185 >>Apprenez |T136031:0|t[Maîtrise tactique]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
step << Horde Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eltheen Noctebrise::252379|r.
    .train 1766 >>Apprenez |T132219:0|t[Coup de pied]
    .train 3127 >>Apprenez [Parade]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Horde
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Riaani Ventenuit::256083|r.
    .turnin 93737 >>Rendez la quête L’assemblage brisé
    .target Riaani Nightwind::256083
step << Horde
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Railee Triple-Forgé::257422|r
    .vendor 257422 >>Vendez votre camelote.
    *Ne vendez pas |T132832:0|t[Petit Eggs] et |T133972:0|t[Strider Viande]. << Horde
    *|cRXP_WARN_Nous en avons besoin pour la Cuisine plus tard|r.
    .target Railee Thriceforged::257422
step << Horde
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Endaria Oeil-de-Brume::254344|r.
    .turnin 93736 >>Rendez la quête Esprits indésirables
    .target Endaria Mistgaze::254344
step << Horde
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayessa Chantelaube::251968|r.
    .turnin 92708 >>Rendez la quête Une grande aventure
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>Abandonnez la quête Une grande aventure
step << Horde
    .zoneskip 2521,1
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>Prenez l'aéronef pour |cRXP_PICK_Mulgore|r.
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muln Rageterre::259118|r.
    .target Muln Earthfury::259118
    .accept 94911 >>Acceptez la quête Enfant de la nature
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alaana Marchetempête::259119|r.
    .accept 95350 >>Acceptez la quête Bienvenue sur Azeroth
    .target Alaana Stormwalker::259119
-- step << Horde
--     .isOnQuest 95350
--     -- .subzoneskip 17045,1 -- Skywatcher Plateau
--     .goto 1412/1,323.300,-731.200
--     .deathskip >>Jump to die and ress at the |cRXP_PICK_Spirit Healer|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Rendez la quête Enfant de la nature
    .accept 94913 >>Acceptez la quête Reflet-de-Lune
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entrez dans Thunder Bluff
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>Traversez le pont.
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Rendez la quête Enfant de la nature
    .accept 94913 >>Acceptez la quête Reflet-de-Lune
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 8936 >>Apprenez vos sorts de classe
    .target Turak Runetotem::3033
    .xp <12,1
    .xp >14,1
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 5178 >>Apprenez vos sorts de classe
    .target Turak Runetotem::3033
    .xp <14,1
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal::2995
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entrez dans Thunder Bluff
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tal::2995
step << Horde
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryshka l'aubergiste::6929|r
    .home >> Liez votre Pierre de foyer à Orgrimmar
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thatog::268701|r
    >>|cRXP_WARN_Il est à l'étage dans le bâtiment|r
    .accept 97246 >>Acceptez la quête En souffrance de pitance
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Borstan::3368|r
    .turnin 97246 >>Rendez la quête En souffrance de pitance
    .accept 97249 >>Acceptez la quête Son plat préféré
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld::3348|r
    .accept 97242 >>Acceptez la quête Le mélange de Yelmak
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Voyagez jusqu'à la Vallée de l'Honneur
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Ramassez |cRXP_PICK_Poignées de roseaux|r et les |cRXP_PICK_Boutures d’herbe polisson|r dans l'eau
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak Grimshot::3352|r
    .train 13795 >> Apprenez vos sorts de classe
    .target Ormak Grimshot::3352
    .xp <12,1
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu::10088|r
    .train 24556 >> Apprenez les compétences de votre familier
    .target Xao'tsu::10088
step << Horde Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 7384 >> Apprenez vos sorts de classe
    .target Grezz Ragefist::3353
    .xp <12,1
    .xp >14,1
step << Horde Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 1160 >> Apprenez vos sorts de classe
    .target Grezz Ragefist::3353
    .xp <14,1
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'geld::3348|r
    .turnin 97242 >>Rendez la quête Le mélange de Yelmak
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yelmak::3347|r
    >>|cRXP_WARN_Vous devrez peut-être attendre environ 10 secondes avant de pouvoir accepter cette quête|r
    .accept 97275 >>Acceptez la quête Droit au Whuut
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Whuut::11046|r
    .turnin 97275 >>Rendez la quête Droit au Whuut
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Migi::268682|r
    .turnin 97249 >>Rendez la quête Son plat préféré
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra::268684|r
    .accept 97326 >>Acceptez la quête Ameublement rocheux
    .target Thra::268684
step << Horde
    .goto 1454/1,-4293.600,1949.900
    >>Ramassez les |cRXP_PICK_Rochers|r oranges par terre
    >>|cRXP_WARN_Passez cette quête s'il y a beaucoup de concurrence ! Il n'y a pas beaucoup de |cRXP_PICK_Rochers|r et ils prennent du temps à réapparaître|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326 -- Rocks to Rests
step << Horde
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thra::268684|r
    .turnin 97326 >>Rendez la quête Ameublement rocheux
    .target Thra::268684
    .isQuestComplete 97326 -- Rocks to Rests
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Rendez la quête Bienvenue sur Azeroth
    .accept 98024 >>Acceptez la quête Un voyage à la Croisée
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel::3230|r.
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vol'jin::10540|r.
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor Arbre-solitaire::4047|r
    .accept 1061 >>Acceptez la quête Les esprits des Serres-Rocheuses
    .target Zor Lonetree::4047
    .xp <13,1
step << Horde Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 408341 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker::3344
    .xp <12,1
    .xp >14,1
step << Horde Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 8045 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker::3344
    .xp <14,1
step << Horde Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok::3328|r
    .train 1766 >> Apprenez vos sorts de classe
    .target Ormok::3328
    .xp <12,1
    .xp >14,1
step << Horde Rogue
    #optional
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormok::3328|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Ormok::3328
    .xp <14,1
step << Horde Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo::5882|r
    .train 145 >> Apprenez vos sorts de classe
    .target Pephredo::5882
    .xp <12,1
    .xp >14,1
step << Horde Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo::5882|r
    .train 1449 >> Apprenez vos sorts de classe
    .target Pephredo::5882
    .xp <14,1
step << !Hunter
    #optional
    .maxlevel 13,Silverpineskip
step << Horde
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> Voyagez jusqu'à Tranchecolline
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin Pathseeker::3336|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker::3336
step << Horde Hunter
    #completewith next
    .subzone 379 >> Voyagez jusqu'au poste de Guet-Lointain
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal La Balafre::3337|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar::3337
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    >>|cRXP_WARN_Invoquez de l'eau en attendant|r << Mage
    .zoneskip Tirisfal Glades
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Voyagez jusqu'à Brill
step << Horde !Hunter
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Garde noir Terrence::1738|r
    .accept 96895 >>Acceptez la quête L’émissaire de l’Aube d’argent
    .target Deathguard Terrence::1738
    .xp >13,1
step << Horde !Hunter
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan::1518|r.
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan::1518
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96895 >>Rendez la quête L’émissaire de l’Aube d’argent
    .accept 96897 >>Acceptez la quête Le Culte des damnés
    .accept 96898 >>Acceptez la quête Les vestiges de la guerre
    .target Hadric Harlson::267009
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,-130.500,1907.800
    >>Tuez les |cRXP_ENEMY_Massacreurs sombres|r et les |cRXP_ENEMY_Néophytes sombres|r. Dépouillez-les pour leur |cRXP_LOOT_Fragment de cristal nécrotique|r
    >>Les |cRXP_LOOT_Fragments de cristal nécrotiques|r |cRXP_WARN_peuvent aussi se ramasser au sol|r
    >>|cRXP_WARN_Soyez prudent ! Ces mobs frappent fort. Les |cRXP_ENEMY_Massacreurs sombres|r ont aussi une capacité instantanée infligeant 50-70 dégâts|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
step << Horde !Hunter
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96897 >>Rendez la quête Le Culte des damnés
    .turnin 96898 >>Rendez la quête Les vestiges de la guerre
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Cain::15682|r
    >>|cRXP_BUY_Achetez trois|r |T133884:0|t[Murloc Les regards] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
    .zoneskip Undercity,1
step << Horde !Hunter
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Silverpine Forest
step << Horde !Hunter
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .zoneskip Silverpine Forest
step << !Hunter
    #optional
    #label Silverpineskip

]])
