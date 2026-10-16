if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 1-6 Mulgore
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Tauren
#next 6-10 Mulgore


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +Vous avez sélectionné un guide conçu pour les Taurens. Cette ne fonctionnera PAS bien pour vous car il vous manquera l'une des suites de quêtes disponible uniquement pour les Tauren. Nous vous recommandons de choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r
    .accept 747 >>Acceptez la quête La chasse commence
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Hawkwind|r
    .accept 752 >>Acceptez la quête Une humble contribution
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Apprenez [Cri de guerre]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Apprenez [Arme Croque-roc]
    .target Meela Dawnstrider
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Meat|r et les |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Greatmother Hawkwind|r
    .turnin 752 >>Rendez la quête Une humble contribution
    .accept 753 >>Acceptez la quête Une humble contribution
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>Ramassez le |cRXP_LOOT_Water Pitcher|r sur le puits derrière |cRXP_FRIENDLY_Hawkwind|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto Mulgore,47.36,83.05,0
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05,50,0
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Meat|r et les |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Rendez la quête La chasse commence << Druid
    .turnin 747 >>Rendez la quête La chasse commence << !Druid
    .accept 3091 >>Acceptez la quête Note simple << Warrior
    .accept 3092 >>Acceptez la quête Note gravée << Hunter
    .accept 3093 >>Acceptez la quête Note runique << Shaman
    .accept 3094 >>Acceptez la quête Note verdoyante << Druid
    .accept 750 >>Acceptez la quête La chasse continue
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Achetez des |r [Balles légères] |cRXP_BUY_à Kawnie|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Kawnie Softbreeze
    .isQuestAvailable 750
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 753 >>Rendez la quête Une humble contribution
    .accept 755 >>Acceptez la quête Les rites de la Terre-Mère
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Achetez un|r [Bâton court] |cRXP_BUY_à Marjak|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak Keenblade
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +Équipez le [Bâton court]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Mountain Cougars|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seer Graytongue|r
    >>Tuez des créatures sur la route
    .turnin 755 >>Rendez la quête Les rites de la Terre-Mère
    .accept 757 >>Acceptez la quête Le rite de force
    .target Seer Graytongue
step
    #loop
    .goto Mulgore,44.60,90.86,0
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86,50,0
    >>Tuez les |cRXP_ENEMY_Mountain Cougars|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #xprate <1.5
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1150 >> Montez votre expérience jusqu'à 1150+/1400xp
    .mob Plainstrider
step
    #xprate >1.49
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1025 >> Montez votre expérience jusqu'à 1025+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 2 pièces d'argent à vendre au marchand|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 1 pièce d'argent à vendre au marchand|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Rendez la quête La chasse continue
    .accept 780 >>Acceptez la quête Les sangliers de guerre apprivoisés
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Kawnie Softbreeze
    .isQuestAvailable 3376
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Acceptez la quête La fin de Brochaigu !
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Rendez la quête Note simple
    .train 100 >>Apprenez [Charge]
    .train 772 >>Apprenez [Pourfendre]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Rendez la quête Note simple
    .train 772 >>Apprenez [Pourfendre]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Rendez la quête Note gravée
    .train 1978 >>Apprenez [Morsure de serpent]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Rendez la quête Note verdoyante
    .train 8921 >> Apprenez [Éclat lunaire]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ravenfeather|r
    .accept 1519 >>Acceptez la quête L'appel de la terre
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Rendez la quête Note runique
    .train 8042 >>Apprenez [Horion de terre]
    .target Meela Dawnstrider
step
    #loop
    .goto Mulgore,55.99,85.46,0
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46,50,0
    >>Tuez les |cRXP_ENEMY_Battleboars|r. Dépouillez-les pour leur |cRXP_LOOT_Flanks|r et leur |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>Avancez dans la grotte
step
    #completewith DirtyMap
    >>Tuez les |cRXP_ENEMY_Bristleback Quilboars|r. Dépouillez-les pour leur |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Tuez les |cRXP_ENEMY_Bristleback Shamans|r. Dépouillez-les pour leur |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>Tuez |cRXP_ENEMY_Chief Sharptusk Thornmantle|r dans la grande hutte. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>Entrez dans la Grotte
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Ramassez la [|cRXP_LOOT_Dirt-stained Map|r] sur le sol. Utilisez la pour commencer la quête
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Acceptez la quête L'attaque du camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bristleback Shamans|r. Dépouillez-les pour leur |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    #loop
    .goto Mulgore,63.93,78.34,0
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34,40,0
    >>Tuez les |cRXP_ENEMY_Bristleback Quilboars|r. Dépouillez-les pour leur |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto Mulgore,63.86,80.14,0
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14,40,0
    >>Tuez les |cRXP_ENEMY_Bristleback Shamans|r. Dépouillez-les pour leur |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #xprate <1.5
    #loop
    .goto Mulgore,62.27,82.03,0
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03,40,0
    .xp 5+870 >> Montez votre expérience jusqu'à 880+/2800xp << !Shaman
    .xp 5 >> Montez jusqu'au niveau 5 << Shaman
    --1930
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Narache
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r et |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r et |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>Rendez la quête Les sangliers de guerre apprivoisés
    .target +Grull Hawkwind
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>Rendez la quête La fin de Brochaigu !
    .target +Brave Windfeather
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>Rendez la quête L'appel de la terre << Shaman
    .accept 1520 >>Acceptez la quête L'appel de la terre << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>Rendez la quête L'attaque du camp Narache
    .turnin 757 >>Rendez la quête Le rite de force
    .accept 763 >>Acceptez la quête Les rites de la Terre-Mère
    .target +Chief Hawkwind
    .goto Mulgore,44.18,76.07
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Kawnie Softbreeze
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >> Parlez vers le rocher
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>Utilisez le [Sapta de terre]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>Rendez la quête L'appel de la terre
    .accept 1521 >>Acceptez la quête L'appel de la terre
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 1521 >>Rendez la quête L'appel de la terre
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .train 332 >>Apprenez [Vague de soins]
    .target Shikrik
    .money <0.01
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Apprenez [Marque du chasseur]
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #optional
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Lanka Farshot
    .money <0.01
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .train 467 >>Apprenez [Épines]
    .train 5177 >>Apprenez [Colère]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #optional
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Apprenez [Colère]
    .target Gart Mistrunner
    .money <0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Apprenez [Parade]
    .train 6343 >>Apprenez [Coup de tonnerre]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #optional
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Apprenez [Parade]
    .target Harutt Thunderhorn
    .money <0.01
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Acceptez la quête Une tâche inachevée
    .target Antur Fallow

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 6-10 Mulgore
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Tauren
#next 10-12 Bois des Chants éternels << !Shaman
#next 10-13 Mulgore << Shaman

step
    #softcore
	#completewith BloodhoofHome
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >> Allez au Village de Bloodhoof
step
    #softcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acceptez la quête Kyle a disparu !
    .target Ahab Wheathoof
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Acceptez la quête Mazzranache
    .target Maur Raincaller
step
    #xprate <1.5 << !Shaman
    #hardcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Acceptez la quête Le danger des Furies-des-vents
    .target Ruul Eagletalon
step
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Rendez la quête Les rites de la Terre-Mère
    .accept 745 >>Acceptez la quête Partager la terre
    .accept 767 >>Acceptez la quête Le Rite de vision
    .accept 746 >>Acceptez la quête Les fouilles des nains
    .target Baine Bloodhoof
step
    #xprate >1.49
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Rendez la quête Les rites de la Terre-Mère
    .accept 767 >>Acceptez la quête Le Rite de vision
    .accept 746 >>Acceptez la quête Les fouilles des nains << Shaman
    .target Baine Bloodhoof
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kauth|r
    .turnin 1656 >>Rendez la quête Une tâche inachevée
    .home >>Liez votre Pierre de Foyer au village de Sabot-de-Sang
    .target Innkeeper Kauth
    .isQuestAvailable 771
    .bindlocation 222
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Mahnott|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Maillet en bois] (7s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Achetez un|r [Maillet en bois] |cRXP_BUY_à Mahnott|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Tromblon orné] (4s 14c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Achetez un|r [Tromblon orné] |cRXP_BUY_à Kennah|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Achetez des |r [Balles légères] |cRXP_BUY_à Kennah|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #optional
    #completewith Well
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +Équipez le [Tromblon orné]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #hardcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Acceptez la quête Mazzranache
    .target Maur Raincaller
step
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Rendez la quête Le Rite de vision
    .accept 771 >>Acceptez la quête Le Rite de vision
    .target Zarlman Two-Moons
step
    #hardcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acceptez la quête Kyle a disparu !
    .target Ahab Wheathoof
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Acceptez la quête Chasse aux rapaces
    .target Harken Windtotem
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .accept 748 >>Acceptez la quête L'eau empoisonnée
    .target Mull Thunderhorn
step
    #xprate <1.5 << !Shaman
    #softcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Acceptez la quête Le danger des Furies-des-vents
    .target Ruul Eagletalon
step
    #sticky
    #completewith Well
    >>Récupérez les objets pour Mazzranache pendant que vous faites les quêtes de la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Tuez les |cRXP_ENEMY_Loups des prairies|r. Dépouillez-les pour leurs |cRXP_LOOT_Pattes|r
    >>Tuez les |cRXP_ENEMY_Adult Plainstriders|r. Dépouillez-les pour leur [|cRXP_LOOT_Tender Strider Meat|r] et leur |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << !Tauren
    #completewith Ambercorns
    >>Tuez les |cRXP_ENEMY_Adult Plainstriders|r. Dépouillez-les pour leur [|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    >>Ramassez les |cRXP_PICK_Ambercorns|r
    >>Ils se trouvent sous les arbres sur le sol
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Swoops|r à travers Mulgore. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Tuez les |cRXP_ENEMY_Loups des prairies|r. Dépouillez-les pour leurs |cRXP_LOOT_Pattes|r
    >>Tuez les |cRXP_ENEMY_Adult Plainstriders|r. Dépouillez-les pour leur [|cRXP_LOOT_Tender Strider Meat|r] et leur |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << !Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Tuez les |cRXP_ENEMY_Adult Plainstriders|r. Dépouillez-les pour leur [|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step << Tauren
    #completewith next
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le [|cRXP_LOOT_Tender Strider Meat|r] pour le nourrir
    >>Il court dans le sens horaire autour du Village de Bloodhoof
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Rendez la quête L'eau empoisonnée
    .timer 8,RP de L'eau empoisonnée
    .accept 754 >>Acceptez la quête La purification de Sabot-d'hiver
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Récupérez les |cRXP_PICK_Well Stones|r autour du puits
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>Utilisez le [Totem de purification de Winterhoof] au puits
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Récupérez les |cRXP_PICK_Well Stones|r autour du puits
    .complete 771,1 --Well Stone (2)
step
    #xprate <1.5
    #completewith Gnolls
    >>Récupérez les objets pour Mazzranache pendant que vous faites les quêtes de la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Alternez entre les deux camps. Tuez les|cRXP_ENEMY_Palemane Tanners|r, |cRXP_ENEMY_Palemane Skinners|r et les |cRXP_ENEMY_Palemane Poachers|r
    >>Faites attention à |cRXP_ENEMY_Snagglespear|r (Rare niveau 9). Il est très difficile à tuer
    .unitscan Snagglespear
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
step
    #completewith KyleFed
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le [|cRXP_LOOT_Tender Strider Meat|r] pour le nourrir
    >>Il court dans le sens horaire autour du Village de Bloodhoof
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Jhwana|r << Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Jhwana|r << Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,10,749,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,749,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
    .isQuestAvailable 756
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r et |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Rendez la quête La purification de Sabot-d'hiver
    .accept 756 >>Acceptez la quête Le totem de Corne-tonnerre
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Rendez la quête Partager la terre
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << Tauren
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Rendez la quête La purification de Sabot-d'hiver
    .accept 756 >>Acceptez la quête Le totem de Corne-tonnerre
    .target Mull Thunderhorn
step << !Tauren
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Rendez la quête Partager la terre
    .target Baine Bloodhoof
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Mahnott|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Maillet en bois] (7s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Achetez un|r [Maillet en bois] |cRXP_BUY_Mahnott|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Tromblon orné] (4s 14c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Achetez un|r [Tromblon orné] |cRXP_BUY_à Kennah|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    |cRXP_WARN_+Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarlman|r
    >>Ne suivez pas le loup qui vient d'apparaître
    .turnin 771 >>Rendez la quête Le Rite de vision
    .accept 772 >>Acceptez la quête Le Rite de vision
    .target Zarlman Two-Moons
step << !Shaman
    #xprate >1.49
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarlman|r
    >>Ne suivez pas le loup qui va apparaître
    .turnin 771 >>Rendez la quête Le Rite de vision
    .target Zarlman Two-Moons
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Apprenez vos sorts de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 284 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Apprenez vos sorts de classe
    .target Narm Skychaser
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto Mulgore,47.3,56.9,0
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le [|cRXP_LOOT_Tender Strider Meat|r] pour le nourrir
    >>Il court dans le sens horaire autour du Village de Bloodhoof
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Rendez la quête Kyle a disparu !
    .target Ahab Wheathoof
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .accept 749 >>Acceptez la quête La caravane ravagée
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>Récupérez les objets pour Mazzranache pendant que vous faites les quêtes de la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Clawsx
	>>Tuez les |cRXP_ENEMY_Swoops|r à travers Mulgore. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #completewith next
    >>Tuez les |cRXP_ENEMY_Stalkers|r et les |cRXP_ENEMY_Cougars|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    .goto Mulgore,53.74,48.17
    >>Cliquez sur les |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Rendez la quête La caravane ravagée
    .accept 751 >>Acceptez la quête La caravane ravagée
step << Tauren
	#label Clawsx
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>Tuez les |cRXP_ENEMY_Stalkers|r et les |cRXP_ENEMY_Cougars|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step << !Shaman
    #xprate >1.49
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step << !Shaman
    #xprate >1.49
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>Terminez d'obtenir les objets pour Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3485 >> Montez jusqu'à 3485+ / 6500 XP
step
    #xprate <1.5 << !Shaman
    #softcore
	#completewith Thunderhorn
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <1.5 << !Shaman
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >> Retournez au Village de Bloodhoof
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <1.5
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Rendez la quête Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Mahnott|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Maillet en bois] (7s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Achetez un|r [Maillet en bois] |cRXP_BUY_à Mahnott|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Tromblon orné] (4s 14c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Achetez un|r [Tromblon orné] |cRXP_BUY_à Kennah|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Loorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +Équipez le [Tromblon orné]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harant|r
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Harant Ironbrace
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Rendez la quête Le totem de Corne-tonnerre
    .timer 8,RP de Le totem de Corne-tonnerre
    .accept 758 >>Acceptez la quête Purification de Corne-tonnerre
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Apprenez vos sorts de classe
    .target Narm Skychaser
    .xp <8,1
step << Shaman
    #xprate >1.49
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Acceptez la quête L'appel du feu
    .trainer >>Apprenez vos sorts de classe
    .target Narm Skychaser
    .xp <10,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Apprenez vos sorts de classe
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 284 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kauth|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Kauth|r << Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
    .isQuestAvailable 746
step
    #xprate <1.5 << !Shaman
    #completewith Burial
    >>Terminez d'obtenir les objets pour Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
	#completewith Burial
	>>Tuez les |cRXP_ENEMY_Swoops|r à travers Mulgore. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <1.5 << !Shaman
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>Utilisez le [Totem de purification de Thunderhorn] au puits
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,31.27,49.87
    >>Tuez |cRXP_ENEMY_Bael'dun Diggers|r et les |cRXP_ENEMY_Bael'dun Appraisers|r. Dépouillez-les pour leur [|cRXP_LOOT_Prospector's Picks|r]
    .use 4702 >> Détruisez-les [|cRXP_LOOT_Prospector's Picks|r] à la |cRXP_PICK_Forge|r
    >>|cRXP_WARN_Faites attention les |cRXP_ENEMY_Bael'dun Appraisers|r lancent|r [Soins Inférieurs] (Sort à distance: Se soignent eux-mêmes ou un allié à moins 50% de vie pour environ 75 points de vie)
    .collect 4702,5,746,7,3
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,34.08,43.71,0
	.goto Mulgore,34.08,43.71,40,0
	.goto Mulgore,32.98,42.96,40,0
	.goto Mulgore,31.72,43.08,40,0
	.goto Mulgore,31.08,42.09,40,0
	.goto Mulgore,31.12,40.87,40,0
	.goto Mulgore,31.74,40.31,40,0
	.goto Mulgore,32.44,41.17,40,0
	.goto Mulgore,33.57,41.30,40,0
	.goto Mulgore,33.82,40.26,40,0
	.goto Mulgore,34.48,41.21,40,0
	.goto Mulgore,34.50,42.29,40,0
    >>Tuez |cRXP_ENEMY_Windfury Wind Witches|r et les |cRXP_ENEMY_Windfury Harpies|r. Dépouillez-les pour leur |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #xprate <1.5 << !Shaman
    #completewith next
    .goto Mulgore,33.37,36.52,50 >> Entrez dans la grotte juste au nord des Harpies Furie-des-vents
step
    #xprate <1.5 << !Shaman
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Rendez la quête Le Rite de vision
    .accept 773 >>Acceptez la quête Le Rite de sagesse
    .target Seer Wiserunner
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith SacredBurial
    .destroy 4823 >> Détruisez l'[Eau des Prophètes] de vos sacs, comme il ne sera plus nécessaire
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>Terminez d'obtenir les objets pour Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>Gardez un œil sur |cRXP_ENEMY_Ghost Howl|r. Dépouillez-les le pour sa [|cRXP_LOOT_Demon Scarred Cloak|r]. Utilisez la pour commencer la quête
    >>|cRXP_WARN_Faites attention car |cRXP_ENEMY_Ghost Howl|r est difficile comme il est niveau 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Acceptez la quête La cape griffée par les démons
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <1.5 << !Shaman
	#completewith next
	>>Tuez les |cRXP_ENEMY_Swoops|r à travers Mulgore. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <1.5 << !Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Acceptez la quête Cimetière sacré
    .target Lorekeeper Raintotem
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <1.5 << !Shaman
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Rendez la quête Le Rite de sagesse
    .accept 775 >>Acceptez la quête Voyage aux Pitons du Tonnerre
    .target Ancestral Spirit
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,35,0
	.goto Mulgore,61.14,22.93,35,0
	.goto Mulgore,61.77,22.49,35,0
	.goto Mulgore,62.18,22.05,35,0
	.goto Mulgore,62.32,20.89,35,0
	.goto Mulgore,61.62,19.50,35,0
	.goto Mulgore,60.44,19.50,35,0
	.goto Mulgore,60.16,21.06,35,0
	.goto Mulgore,60.41,21.96,35,0
	.goto Mulgore,61.12,22.88,35,0
    >>Tuez les |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Rendez la quête Cimetière sacré
    .target Lorekeeper Raintotem
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>Terminez d'obtenir les objets pour Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <1.5 << !Shaman
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>Terminez d'obtenir les objets pour Mazzranache
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3020 >> Montez votre expérience jusqu'à 3020+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3720 >> Montez votre expérience jusqu'à 3720+/6500xp
    .isQuestComplete 761
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3700 >> Montez votre expérience jusqu'à 3700+/6500xp
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+4400 >> Montez votre expérience jusqu'à 4400+/6500xp
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>Utilisez votre Pierre de foyer pour revenir à Sabot-de-Sang
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #sofcore
    #completewith Bloodhoofturnins1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Druid
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >> Retournez au Village de Bloodhoof
    .subzoneskip 222
step << Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Rendez la quête Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Rendez la quête La cape griffée par les démons
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r et |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Rendez la quête Purification de Corne-tonnerre
    .timer 8,RP de Purification de Corne-tonnerre
    .accept 759 >>Acceptez la quête Le Totem de Crin-sauvage << Shaman
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #xprate <1.5
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, et à |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Rendez la quête Purification de Corne-tonnerre
    .timer 8,RP de Purification de Corne-tonnerre
    .accept 759 >>Acceptez la quête Le Totem de Crin-sauvage << Shaman
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << Tauren Shaman
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r et |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Rendez la quête Purification de Corne-tonnerre
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren Shaman
    #xprate >1.49
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, et à |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Rendez la quête Purification de Corne-tonnerre
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << Tauren !Shaman
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Rendez la quête Le totem de Corne-tonnerre
    .target Mull Thunderhorn
step << !Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r et |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r et |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step << !Shaman
    #xprate >1.49
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target Harken Windtotem
    .isQuestComplete 761
step
    #optional
    #label Bloodhoofturnins1
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith AlphaTeeth
    .destroy 4702 >> Détruisez les [Piolet de prospecteur] dans vos sacs, comme vous n'en aurez plus besoin
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Achetez des|r [Balle lourde] |cRXP_BUY_à Kennah|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Acceptez la quête L'appel du feu
    .trainer >>Apprenez vos sorts de classe
    .target Narm Skychaser
step << !Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Rendez la quête Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .trainer >> Apprenez vos sorts de classe
    --.accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Acceptez la quête Dompter la bête
    .trainer >>Apprenez vos sorts de classe
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .trainer >> Apprenez vos sorts de classe
    .accept 5928 >>Acceptez la quête Écouter l'appel
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 8924 >>Apprenez vos sorts de classe
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Adult Plainstrider|r à la portée maximale
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Rendez la quête Dompter la bête
    .accept 6087 >>Acceptez la quête Dompter la bête
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Prairie Stalker|r à la portée maximale
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Rendez la quête Dompter la bête
    .accept 6088 >>Acceptez la quête Dompter la bête
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Swoop|r à la portée maximale et réutilisez le immédiatement si il vous pousse
    >>Si vous ratez et que vous tombez à court de charge de Bâtonnet de domptage, abandonnez la quête, reprenez la, et revenez
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Rendez la quête Dompter la bête
    .accept 6089 >>Acceptez la quête Entraîner la bête
    .target Yaw Sharpmane
step << !Hunter
    #xprate <1.5
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jhwana|r
    .vendor >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Jhwana|r << Shaman/Druid
    .vendor >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Jhwana|r << Warrior
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
    .isQuestAvailable 765
step << Shaman
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Acceptez la quête Le chemin du chasseur
    .target Skorn Whitecloud
step << Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 751 >> Rendez la quête La caravane ravagée
    .accept 764 >> Acceptez la quête La KapitalRisk
    .accept 765 >> Acceptez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step << !Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 751 >> Rendez la quête La caravane ravagée
	.unitscan Morin Cloudstalker
step << Shaman
    #xprate >1.49
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Voyagez à la Mine de la KapitalRisk
step << Shaman
    #xprate >1.49
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venture Co. Workers|r et les |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #xprate >1.49
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Entrez dans la mine et collez le mur de droite/à l'est. Tuez |cRXP_ENEMY_Supervisor Fizsprocket|r. Dépouillez-le pour son |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step << Shaman
    #xprate >1.49
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Entrez dans la mine et collez le mur de droite/à l'est. Tuez |cRXP_ENEMY_Supervisor Fizsprocket|r. Dépouillez-le pour son |cRXP_LOOT_Clipboard|r
    >>Faites très attention ! Il est facile d'engager trop de mobs dans cette mine et difficile d'y échapper ensuite
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step << Shaman
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Workers|r et les |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #xprate >1.49
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 764 >>Rendez la quête La KapitalRisk
    .turnin 765 >>Rendez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step << Shaman
    #xprate <1.5
    #completewith AlphaTeeth
    >>Tuez les |cRXP_ENEMY_Flatland Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Hunter
    #xprate <1.5
    #completewith next
    .cast 1515 >>Domptez un |cRXP_ENEMY_Prairie Wolf Alpha|r
    >>|cRXP_WARN_Cela vous permettra d'apprendre|r |T132278:0|t[Morsure Rang 2]
    .mob Prairie Wolf Alpha
step << Shaman
    #xprate <1.5
    #label AlphaTeeth
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    >>Tuez les |cRXP_ENEMY_Prairie Wolf Alphas|r dans la zone. Dépouillez-les pour leur |cRXP_LOOT_Teeth|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << Hunter
    #xprate >1.49
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .cast 1515 >>Domptez un |cRXP_ENEMY_Prairie Wolf Alpha|r
    >>|cRXP_WARN_Cela vous permettra d'apprendre|r |T132278:0|t[Morsure Rang 2]
    .mob Prairie Wolf Alpha
step << Shaman
    #xprate <1.5
    #softcore
	#completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Shaman
    #xprate <1.5
    #hardcore
	#completewith next
    .goto Mulgore,46.5,55.5,150 >> Retournez au Village de Bloodhoof
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Rendez la quête Le Totem de Crin-sauvage
    .accept 760 >>Acceptez la quête Purification de Crin-sauvage
    .target Mull Thunderhorn
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 765 >>Abandonnez la quête Le superviseur Vibrouage
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 764 >>Abandonnez la quête La KapitalRisk
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Voyagez jusqu'aux Tarides
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo
	.target Omusa Thunderhorn
    .isQuestAvailable 854
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
    .isQuestAvailable 5932
step
    #optional
    #label CampTFP
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Liez votre Pierre de foyer à Pitons-du-Tonnerre
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Acceptez la quête Les oasis des Tarides
    .target Arch Druid Hamuul Runetotem
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Rendez la quête Écouter l’appel
    .accept 5922 >>Acceptez la quête Reflet-de-Lune
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Acceptez la quête Reflet-de-Lune
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Rendez la quête Reflet-de-Lune
    .accept 5930 >>Acceptez la quête L'esprit du Grand ours
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Rendez la quête L'esprit du Grand ours
    .accept 5932 >>Acceptez la quête Retour vers les Pitons du Tonnerre
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >> Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Volez à Thunder Bluff
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Rendez la quête Retour vers les Pitons du Tonnerre
    .accept 6002 >>Acceptez la quête Corps et cœur
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Volez au Camp Taurajo
    .target Tal
    .subzoneskip 378
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>Utilisez la [Poussière lunaire cénarienne] au |cRXP_PICK_Moonkin Stone|r
    >>Tuez |cRXP_ENEMY_Lunegriffe|r lorsqu'il apparaît. Parlez ensuite à l' |cRXP_FRIENDLY_Esprit de Lunegriffe|r
    >>|cRXP_WARN_Faites attention! |cRXP_ENEMY_Lunaclaw|r lance|r [Rosser] (Charge 2 attaques supplémentaires toutes les 10 secondes)
    >>Évitez les |cRXP_ENEMY_Thunderheads|r dans la zone
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kirge Sternhorn|r
    .accept 854 >>Acceptez la quête Un voyage à la Croisée
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Voyagez au nord vers la Croisée
    >>|cRXP_WARN_Faites en sorte de rester sur la route. Sinon, vous risquez d'engager des créatures de haut niveau|r
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Rendez la quête Les oasis des Tarides << Druid
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Rendez la quête Un voyage à la Croisée
    .target Thork
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Acceptez la quête Spores fongiques
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .target Devrak
    .isQuestAvailable 848,870
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Acceptez la quête Un tas de peaux
    .target Jahan Hawkwing
step
    #completewith next
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>|cRXP_WARN_Restez à distance maximale des |cRXP_ENEMY_Kolkar|r en ramassant les champignons. Ils sont niveau 12-14
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>|cRXP_WARN_Restez à distance maximale des |cRXP_ENEMY_Kolkar|r en ramassant les champignons. Ils sont niveau 12-14
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
	#completewith ZamahPickup
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >> Retournez à la Croisée
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Rendez la quête Les Bassins oubliés
    .accept 877 >>Acceptez la quête L'oasis stagnante << Shaman
    .target Tonga Runetotem
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    >>Attendez que le RP se termine
    >>Cela va commencer une quête chronométrée de 45 minutes
    .turnin 848 >>Rendez la quête Spores fongiques
    .timer 7,Spores fongiques RP
    .accept 853 >>Acceptez la quête L'apothicaire Zamah
    .target Apothecary Helbrim
step
    #sticky
    #completewith CauldronStirrer
    +Vous faites une quête chronométrée, ne passez pas ABS. Elle sera rendue à peu près 5-10 après qu'elle soit prise
    .isOnQuest 853
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Rendez la quête Un tas de peaux
    .accept 6362 >>Acceptez la quête Voyage vers les Pitons-du-Tonnerre
    .target Devrak
step
    #completewith CauldronStirrer
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Rendez la quête Voyage vers les Pitons-du-Tonnerre
    .accept 6363 >>Acceptez la quête Tal, le maître des coursiers du vent
    .target Ahanu
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Acceptez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Achetez la compétence pour porter des Masses à deux mains
    .target Ansekhwa
    .money <0.100
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
    .money <0.100
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Rendez la quête L'apothicaire Zamah
    .target Apothecary Zamah
step
    #completewith EndGuide
    +|cRXP_WARN_Équipez le|r |T135145:0|t[Touille-chaudron]
    .use 5340
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Rendez la quête Corps et cœur
    .target Turak Runetotem
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >>Acceptez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
step << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Rendez la quête Tal, le maître des coursiers du vent
    .accept 6364 >>Acceptez la quête Retourner vers Jahan
    .target Tal
step << !Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Rendez la quête Voyage aux Pitons du Tonnerre
    .target Cairne Bloodhoof
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Rendez la quête Voyage aux Pitons du Tonnerre
    .accept 776 >>Acceptez la quête Les rites de la Terre-Mère
    .target Cairne Bloodhoof
step << Shaman
    #xprate >1.49
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Rendez la quête Voyage aux Pitons du Tonnerre
    .target Cairne Bloodhoof
step << !Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Rendez la quête Tal, le maître des coursiers du vent
    .accept 6364 >>Acceptez la quête Retourner vers Jahan
    .target Tal
step << !Shaman
    #completewith HidesTurnIn
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step << !Shaman
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Rendez la quête Retourner vers Jahan
    .target Jahan Hawkwing
step << !Shaman
    #completewith ZeptoUC1
    +Abandonnez toutes les quête qu'il vous reste
step << !Shaman
    #completewith next
    .subzone 392 >>Voyagez jusqu'à Ratchet
step << !Shaman
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol de Cabestan
    .target Bragok
step << !Shaman
    #completewith next
    .zone Durotar >>Voyagez à Durotar
step << !Shaman
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    .zoneskip Tirisfal Glades
step << Warrior
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    .home >> Liez votre Pierre de Foyer à Brill
    .target Innkeeper Renee
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Cliquez sur le crâne sur le sol. Cela invoquera|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isOnQuest 1819
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestComplete 1819
step << Warrior
    #label WarriorClassQ
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .target Coleman Farthing
    .isOnQuest 1820
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Montez les escaliers ici
step << !Shaman
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Utilisez l'|cRXP_PICK_[Orbe de transposition]|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .trainer >>Apprenez vos sorts de classe
	.target Ithelis
	.target Osselan
step
    #optional
    #label EndGuide
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 10-13 Mulgore
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Tauren Shaman
#next 13-18 Les Tarides

step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cairne|r
    .accept 776 >>Acceptez la quête Les rites de la Terre-Mère
    .isQuestTurnedIn 775
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Acceptez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
step
    #xprate <1.5
    #sticky
    #completewith ThunderBluff
    >>Gardez un œil sur |cRXP_ENEMY_Ghost Howl|r. Dépouillez-les le pour sa [|cRXP_LOOT_Demon Scarred Cloak|r]. Utilisez la pour commencer la quête
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Acceptez la quête La cape griffée par les démons
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <1.5
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Tuez les |cRXP_ENEMY_Windfury Sorceresses|r. Dépouillez-les pour leur |cRXP_LOOT_Azure Feathers|r
    >>Tuez les |cRXP_ENEMY_Windfury Matriarchs|r. Dépouillez-les pour leur |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step
    #xprate <1.5
    #completewith Arrachea
    >>Tuez les |cRXP_ENEMY_Flatland Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
    .isOnQuest 861
step << Tauren Shaman
    #xprate <1.5
    .goto Mulgore,42.5,13.8
    .use 5416 >>Utilisez le [Totem de purification de Wildmane] au puits
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #xprate <1.5
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Tuez |cRXP_ENEMY_Arra'Chea|r (Grand kodo noir). Tuez-le et dépouillez-le pour sa |cRXP_LOOT_Horn|r
    >>Il patrouille dans le sens horaire autour du nord de Mulgore
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step
    #xprate <1.5
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>Tuez les |cRXP_ENEMY_Flatland Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
    .isOnQuest 861
step
    #xprate <1.5
    #completewith next
    .zone Thunder Bluff >> Retournez à Thunder Bluff
step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Rendez la quête Les rites de la Terre-Mère
    .target Cairne Bloodhoof
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Rendez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
step
    #xprate <1.5
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Rendez la quête Le chemin du chasseur
    .accept 860 >>Acceptez la quête Sergra Sombreronce
    .target Melor Stonehoof
    .isQuestComplete 861
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Acceptez la quête Sergra Sombreronce
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step
    #xprate <1.5
    #completewith WildManeTurnIn
    .subzone 222 >>Voyagez jusqu'à Village de Bloodhoof
step
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Rendez la quête La cape griffée par les démons
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Rendez la quête Purification de Crin-sauvage
    .target Mull Thunderhorn
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm|r
    .train 547 >> Apprenez vos sorts de classe
    .target Narm Skychaser
    .xp <12,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Apprenez vos sorts de classe
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Achetez des|r [Balle lourde] |cRXP_BUY_à Kennah|r << Hunter
    .collect 2519,1000,764,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
    .itemcount 764,<800
step
    #xprate <1.5
    #optional
    #label WildManeTurnIn
step
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .accept 764 >>Acceptez la quête La KapitalRisk
    .accept 765 >>Acceptez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step
    #xprate <1.5
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Voyagez à la Mine de la KapitalRisk
step
    #xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venture Co. Workers|r et les |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Entrez dans la mine et collez le mur de droite/à l'est. Tuez |cRXP_ENEMY_Supervisor Fizsprocket|r. Dépouillez-le pour son |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step
    #xprate <1.5
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Entrez dans la mine et collez le mur de droite/à l'est. Tuez |cRXP_ENEMY_Supervisor Fizsprocket|r. Dépouillez-le pour son |cRXP_LOOT_Clipboard|r
    >>Faites très attention ! Il est facile d'engager trop de mobs dans cette mine et difficile d'y échapper ensuite
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Tuez les |cRXP_ENEMY_Venture Co. Workers|r et les |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >> Montez votre expérience jusqu'à 7150+/8700xp
step
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 764 >>Rendez la quête La KapitalRisk
    .turnin 765 >>Rendez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step
    #xprate <1.5
    #completewith next
    .subzone 378 >> Voyagez au Camp Taurajo
step
    #xprate <1.5
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Volez à la Croisée
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
    .subzoneskip 380
step
    #xprate >1.49
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Volez à la Croisée
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith HidesTurnIn
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Rendez la quête Retourner vers Jahan
    .target Jahan Hawkwing
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darsok|r
    >>Il est au sommet de la tour
    .accept 867 >>Acceptez la quête Les harpies pillardes
    .target Darsok Swiftdagger
step
    #xprate <1.5
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Rendez la quête Sergra Sombreronce
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
    .isOnQuest 860
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target Gazrog
step << Shaman
    #completewith next
    .use 4926 >> Ramassez le |cRXP_PICK_Chen's Empty Keg|r sur le sol et commencez la quête
    >>Si il n'est pas disponible, vous pourrez le prendre plus tard
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Prenez le chemin pour monter la montagne et parlez à |cRXP_FRIENDLY_Telf|r
    >>Faites attention à ne pas tomber de la montagne, le chemin est très étroit. Vous pourriez tomber et mourir
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Rendez la quête L'appel du feu
    .accept 1525 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Rendez la quêteLe vétéran Uzzek
    .accept 1498 >>Acceptez la quête La voie de la défense
    .target Uzzek
step << Warrior
    #loop
    .goto Durotar,39.34,28.25,0
    .goto Durotar,39.11,30.76,40,0
    .goto Durotar,39.34,28.25,40,0
    .goto Durotar,39.11,26.46,40,0
    .goto Durotar,39.39,25.05,40,0
    .goto Durotar,40.00,24.06,40,0
    .goto Durotar,42.51,24.29,40,0
    >>Tuez les |cRXP_ENEMY_Lightning Hides|r. Dépouillez-les pour leur |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Rendez la quête La voie de la défense
    .accept 1502 >>Acceptez la quête Thun'grim Mirefeu
    .target Uzzek

]])
