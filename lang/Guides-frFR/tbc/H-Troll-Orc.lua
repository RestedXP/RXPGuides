if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 1-6 Durotar
#displayname 1-7 Durotar << Orc !Warrior !Hunter !Shaman !Warlock/Troll !Warrior !Hunter !Shaman
#displayname 1-8 Durotar << Orc Warrior/Troll Warrior
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Orc/Troll
#next 6-10 Bois des Chants éternels << !Shaman !Hunter !Warlock
#next 6-10 Durotar << Shaman/Hunter/Warlock

step << !Orc !Troll
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Orcs et les Trolls. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Acceptez la quête Votre place en ce monde
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 35 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warlock
    +|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à ce que vous ayez l'équivalent de 10 pièces de cuivre à vendre au marchand (en comptant votre équipement)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Acceptez la quête Les vils quasits
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Rendez la quête Votre place en ce monde
    .accept 788 >>Acceptez la quête La dent tranchante
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Apprenez [Cri de guerre] << Warrior
    .train 8017 >>Apprenez [Arme Croque-roc] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Parlez à |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money >0.01
step << Warlock
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Apprenez [Immolation]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,35,0
    >>Tuez des |cRXP_ENEMY_Mottled Boars|r sur la route pour le Convent de la Lame ardente
    >>Essayez de passer au niveau 2 avant d'y arriver
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> Voyagez vers le Convent de la Lame ardente
    .isOnQuest 1485
step << Warlock
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r. Dépouillez-les pour leur |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>Tuez les |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Acceptez la quête Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Tuez |cRXP_ENEMY_Sarkoth|r. Dépouillez-le pour la |cRXP_LOOT_Pince abîmée de Sarkoth|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Rendez la quête Sarkoth
    .accept 804 >>Acceptez la quête Sarkoth
    .target Hana'zua
step
    #loop
    .goto Durotar,41.30,65.03,0
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    >>Tuez les |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+850 >> Montez votre expérience jusqu'à850+/1400 sur le chemin pour retourner à la ville
    .mob Mottled Boar
step << !Rogue !Mage
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+980 >> Broyez jusqu'à 980+/1400xp en retournant à la ville
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Rendez la quête Les vils quasits
    .accept 1499 >>Acceptez la quête Les vils quasits
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>Lancez [Invocation d'un diablotin]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Rendez la quête Les vils quasits
    .accept 794 >>Acceptez la quête Le médaillon de la Lame-Ardente
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Rendez la quête La dent tranchante << Shaman
    .turnin 788 >>Rendez la quête La dent tranchante << !Shaman
    .accept 789 >>Acceptez la quête L'aiguillon du scorpide
    .accept 2383 >>Acceptez la quête Parchemin simple << Orc Warrior
    .accept 3065 >>Acceptez la quête Tablette simple << Troll Warrior
    .accept 3082 >>Acceptez la quête Tablette gravée << Troll Hunter
    .accept 3083 >>Acceptez la quête Tablette codée << Troll Rogue
    .accept 3084 >>Acceptez la quête Tablette runique << Troll Shaman
    .accept 3085 >>Acceptez la quête Tablette bénie << Troll Priest
    .accept 3086 >>Acceptez la quête Tablette glyphée << Troll Mage
    .accept 3087 >>Acceptez la quête Parchemin gravé << Orc Hunter
    .accept 3088 >>Acceptez la quête Parchemin codé << Orc Rogue
    .accept 3089 >>Acceptez la quête Parchemin runique << Orc Shaman
    .accept 3090 >>Acceptez la quête Parchemin contaminé << Orc Warlock
    .turnin 804,1 >>Rendez la quête Sarkoth << Shaman
    .turnin 804 >>Rendez la quête Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Voyagez vers |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Rendez la quête Tablette codée << Troll Rogue
    .turnin 3088 >>Rendez la quête Parchemin codé << Orc Rogue
    .train 53 >> Apprenez [Attaque sournoise]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Rendez la quête Tablette codée << Troll Rogue
    .turnin 3088 >>Rendez la quête Parchemin codé << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Voyagez vers |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Rendez la quête Parchemin contaminé
    .train 172 >> Apprenez [Corruption]
    .target Nartok
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Acceptez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Rendez la quête Tablette glyphée << Troll
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Mai'ah
step << Hunter
    #requires Galgar
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Warrior
    #requires Galgar
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Rendez la quête Tablette bénie
    .target Ken'jai
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acceptez la quête Les vils quasits
    .target Zureetha Fargaze
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acceptez la quête Les péons paresseux
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>Utilisez la [Masse de contremaître] sur les |cRXP_FRIENDLY_Lazy Peons qui dorment|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Tuez les |cRXP_ENEMY_Scorpid Workers|r. Dépouillez-les pour leur |cRXP_LOOT_Queue de scorpide ouvrier|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
	.goto Durotar,43.26,58.28,0
	.goto Durotar,43.26,58.28,35,0
	.goto Durotar,42.81,58.41,35,0
	.goto Durotar,41.90,58.35,35,0
	.goto Durotar,41.97,59.20,35,0
	.goto Durotar,41.36,60.35,35,0
	.goto Durotar,40.66,61.27,35,0
	.goto Durotar,40.07,61.35,35,0
	.goto Durotar,39.42,61.29,35,0
	.goto Durotar,39.46,62.17,35,0
	.goto Durotar,39.55,63.10,35,0
	.goto Durotar,40.13,64.04,35,0
	.goto Durotar,40.84,64.06,35,0
	.goto Durotar,40.74,65.86,35,0
	.goto Durotar,39.93,66.03,35,0
	.goto Durotar,40.04,66.99,35,0
	.goto Durotar,40.09,67.66,35,0
	.goto Durotar,40.13,68.50,35,0
	.goto Durotar,40.72,68.55,35,0
	.goto Durotar,41.30,67.84,35,0
	.goto Durotar,41.37,66.72,35,0
	.goto Durotar,41.89,66.05,35,0
	.goto Durotar,41.27,65.71,35,0
	.goto Durotar,41.36,64.07,35,0
	.goto Durotar,41.33,63.12,35,0
	.goto Durotar,41.35,61.98,35,0
	.goto Durotar,41.49,61.25,35,0
	.goto Durotar,41.90,60.24,35,0
	.goto Durotar,42.51,59.34,35,0
	.goto Durotar,43.08,59.62,35,0
	.goto Durotar,43.91,59.33,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.85,60.34,35,0
	.goto Durotar,46.46,61.11,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.14,64.08,35,0
	.goto Durotar,47.58,64.04,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,46.90,61.15,35,0
	.goto Durotar,46.98,60.18,35,0
	.goto Durotar,47.07,59.34,35,0
	.goto Durotar,46.47,58.28,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,43.91,59.33,35,0
    >>Tuez les |cRXP_ENEMY_Scorpid Workers|r. Dépouillez-les pour leur |cRXP_LOOT_Queue de scorpide ouvrier|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,45.64,65.70,35,0
	.goto Durotar,47.37,65.67,35,0
	.goto Durotar,46.74,60.66,35,0
	.goto Durotar,47.09,57.90,35,0
	.goto Durotar,43.90,57.79,35,0
	.goto Durotar,42.70,57.25,35,0
	.goto Durotar,41.27,58.95,35,0
	.goto Durotar,40.91,60.41,35,0
	.goto Durotar,38.83,61.84,35,0
	.goto Durotar,44.98,69.13,35,0
    >>Utilisez la [Masse de contremaître] sur les |cRXP_FRIENDLY_Lazy Peons qui dorment|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
	.goto Durotar,41.30,65.03,35,0
    .xp 4 >> Montez jusqu'au niveau 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Rendez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 789 >>Rendez la quête L'aiguillon du scorpide
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Rendez la quête Les vils quasits
    .accept 794 >>Acceptez la quête Le médaillon de la Lame-Ardente
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Rendez la quête Les péons paresseux
    .accept 6394 >>Acceptez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >> Montez votre expérience jusqu'à 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto Durotar,44.67,64.92,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >> Montez votre expérience jusqu'à 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >> Montez jusqu'au niveau 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>Entrez dans la grotte
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>Voyagez vers |cRXP_LOOT_Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Ramassez la |cRXP_LOOT_Thazz'ril's Pick|r contre le mur
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Tuez |cRXP_ENEMY_Yarrog Baneshadow|r. Dépouillez-le pour son |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1680 >> Montez votre expérience jusqu'à 1680+/2800xp << !Shaman
    .xp 5+690 >> Monter votre expérience jusqu'à 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step << !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >> Montez votre expérience jusqu'à 1300+/2800xp
    .isOnQuest 4402
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1120 >> Broyez jusqu'à 1120+/2800xp
    .isQuestTurnedIn 4402
step
    #xprate >1.49
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >> Montez votre expérience jusqu'à 1300+/2800xp << !Shaman
    .xp 5+310 >> Monter votre expérience jusqu'à 310+/2800xp << Shaman
    .isOnQuest 4402
step << Orc/Troll
    #completewith BurningBladeTurnin
    .hs >>Quittez la Vallée des Épreuves
step << !Orc !Troll
    #softcore
    #completewith BurningBladeTurnin
    .deathskip >> Mourez à l'entrée de la grotte et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou retournez à pieds à la Vallée des Épreuves
step << !Orc !Troll
    #hardcore
    #completewith BurningBladeTurnin
    .goto Durotar,44.63,68.65,120 >>Retournez jusqu'à la Vallée des Épreuves
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Rendez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Rendez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Rendez la quête Le médaillon de la Lame-Ardente
    .accept 805 >>Acceptez la quête Faire un rapport au Village de Sen'jin
    .target Zureetha Fargaze
step << !Shaman
    .xp 6 >> Montez jusqu'au niveau 6
    #loop
    .goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acceptez la quête Au service de la spiritualité
	.train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Apprenez [Vague de soins]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Apprenez [Marque du chasseur]
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Apprenez [Parade]
    .train 6343 >>Apprenez [Coup de tonnerre]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Apprenez [Parade]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Voyagez vers |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .train 1776 >> Apprenez [Suriner]
    .target Rwag
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Nartok|r et |cRXP_FRIENDLY_Hraug|r
    .money <0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Apprenez [Trait de l'ombre]
    .target Nartok
    .money <0.01
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Hraug|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money <0.01
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Voyagez vers le |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>Utilisez le [Sapta de terre]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Rendez la quête L'appel de la terre
    .accept 1518 >>Acceptez la quête L'appel de la terre
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Rendez la quête L'appel de la terre
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Apprenez [Vague de soins]
    .target Shikrik
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Rendez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Quittez la Vallée des Épreuves
    .isOnQuest 805
step << !Shaman !Hunter !Warlock
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
step << !Shaman !Hunter !Warlock
    #completewith next
    .subzone 367 >>Voyagez vers le Village de Sen'jin
step << !Shaman !Hunter !Warlock
    .goto Durotar,55.94,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gadrin|r
    .turnin 805 >>Rendez la quête Faire un rapport au Village de Sen'jin
    .accept 823 >>Acceptez la quête Un rapport à Orgnil
    .target Master Gadrin
step << Rogue/Warrior
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entrez dans la grande hutte
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez-lui une |r |T132414:0|t[Hache de jet lestée] |cRXP_BUY_|r
    .collect 29007,1,791,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Eau de course] |cRXP_BUY_à K'waii|r --Refreshing Spring Water (20)
    .collect 159,20,791,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à K'waii|r --Refreshing Spring Water (10)
    .collect 159,10,791,1
    .target K'waii
    .money <0.0050
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,791,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,791,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,791,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith RazorHill1
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Un'Thuwa
step << !Shaman !Hunter !Warlock
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step << !Shaman !Hunter !Warlock
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Rendez-vous vers la flèche du point de passage (ou plus au nord), puis mourez et réapparaissez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << !Shaman !Hunter !Warlock
    #xprate >1.49 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les Filons pour fabriquer des [Pierre à aiguiser] (+2 dégâts des armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << !Shaman !Hunter !Warlock
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Grosk|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    --.home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    --.bindlocation 362
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Rendez la quête Au service de la spiritualité
    .accept 5648 >> Acceptez la quête Vêtements de la spiritualité
    .train 2052 >> Apprenez [Soins inférieurs Rank 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Lancez [Soins inférieurs] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Rendez la quête Vêtements de la spiritualité
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step << Warrior/Rogue/Paladin
    #xprate <1.5 << !Warrior
    #completewith TiragardeArrive
    .cast 2580 >>Lancez [Découverte de gisements] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Voyagez vers le Donjon de Tiragarde
    .isOnQuest 784
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #sticky
    #completewith AgedEnvelope
    +Faites attention si |cRXP_ENEMY_Watch Commander Zalaphil|r est présent, c'est un rare de niveau 9. Vous allez peut-être devoir utiliser une [Potions de soins mineure] si vous en avez une
    .unitscan Watch Commander Zalaphil
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Allez au deuxième étage du donjon
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith AgedEnvelope
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tuez |cRXP_ENEMY_Lieutenant Benedict|r. Dépouillez-le pour sa |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>Montez les escaliers dans le donjon
    >>Ouvrez le |cRXP_PICK_Benedict's Chest|r. Dépouillez-le pour son [|cRXP_LOOT_Aged Envelope|r]
    >>Utilisez l'[|cRXP_LOOT_Aged Envelope|r] pour commencer la quête
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acceptez la quête Les ordres de l'amiral
    .use 4881
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #optional
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #softcore
    #completewith next
    .goto Durotar,57.90,57.57
    .deathskip >> Mourez à la flèche du point de passage (ou plus au nord), puis mourez et réapparaissez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Voyagez jusqu'à Tranchecolline
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .target Gar'thok
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Rendez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Uhgar|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Uhgar|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Uhgar|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith WindsinDes
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith WindsinDes
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue/Warrior
    #xprate <1.5
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step << !Shaman !Hunter !Warlock
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Achetez une|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label WindsinDes
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
    .maxlevel 7
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Ramassez les |cRXP_PICK_Stolen Supply Sacks|r sur le sol
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .target Rezlak
    .isQuestComplete 834
step << !Shaman !Hunter !Warlock
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    .home >> Liez votre Pierre de Foyer à Brill
    .target Innkeeper Renee
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r au deuxième étage de l'auberge
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 367 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Duskbats|r. Récupérez le butin pour leurs |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Warrior
    #loop
    .goto Tirisfal Glades,42.16,46.76,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Tuez les |cRXP_ENEMY_Sombredogues|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step << Warrior
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Tuez les |cRXP_ENEMY_Duskbats|r. Récupérez le butin pour leurs |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >8,1
    .isOnQuest 375
step << Warrior
    #optional
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Tuez les |cRXP_ENEMY_Duskbats|r. Récupérez le butin pour leurs |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Passez cette étape si vous avez eu de la malchance avec les butins jusqu'à présent|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp <8,1
    .isOnQuest 375
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+3260 >>Broyez jusqu'à 3260/4500 xp
step << Warrior
    #xprate >1.49
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+2640>>Broyez jusqu'à 2640/4500 xp
step << Warrior
    #softcore
    #completewith FillerTurnins
    .deathskip >>Mourez et réapparaissez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warrior
    #hardcore
    #completewith FillerTurnins
    .subzone 159 >>Voyagez jusqu'à Brill
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .target Apothecary Johaan
    .isQuestComplete 367
step << Warrior
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Warrior
    #label FillerTurnins
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r au deuxième étage de l'auberge
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 284 >>Apprenez vos sorts de classe
    .target Austil de Mon
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.11,26.81,20,0
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,67.74,37.96,20 >>Prenez l'ascenseur vers le bas dans la Fossoyeuse
step << skip -- Warlock
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norman|r
    .home >> Liez votre Pierre de foyer à Fossoyeuse
    .target Innkeeper Norman
    .bindlocation 1497
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,66.11,26.81,20 >>Prenez l'ascenseur vers le haut
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Montez les escaliers ici
step << !Shaman !Hunter !Warlock
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
step << !Shaman !Hunter !Warlock
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Quittez Lune-d'Argent
step << !Shaman !Hunter !Warlock
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Apprenez le trajet de Vol vers Lune-d'Argent
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >> Acceptez la quête La Malebrèche
    .target Ranger Jaela
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,46.68,49.10,40 >>Dirigez-vous vers la place de l'Epervier
    .isQuestAvailable 8463

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 6-10 Durotar
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Orc Hunter/Orc Shaman/Troll Hunter/Troll Shaman/Orc Warlock
#next 10-13 Durotar << Shaman
#next 10-12 Bois des Chants éternels << !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
step
    #completewith SenjinPickups
    .subzone 367 >>Voyagez vers le Village de Sen'jin
step
    #xprate <1.5
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Il patrouille non loin|r
    .accept 786 >>Acceptez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acceptez la quête Proie nécessaire
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
    .accept 818 >>Acceptez la quête Un esprit parfaitement éduqué
    .goto Durotar,55.94,74.40
    .target +Master Vornal
    .turnin 805 >>Rendez la quête Faire un rapport au Village de Sen'jin
    .accept 808 >>Acceptez la quête Crâne de Minshina
    .accept 826 >>Acceptez la quête Zalazane
    .accept 823 >>Acceptez la quête Un rapport à Orgnil
    .goto Durotar,55.94,74.72
    .target +Master Gadrin
step
    #xprate <1.5
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entrez dans la grande hutte
step << Rogue
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez-lui une |r |T132414:0|t[Hache de jet lestée] |cRXP_BUY_|r
    .collect 29007,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Eau de course] |cRXP_BUY_à K'waii|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à K'waii|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Trayexir|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Arc courbe en bois de corne] (2s 83c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Trayexir|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith Bonfire
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith Bonfire
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Un'Thuwa
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Courez vers la plage. Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Ramassez-les pour le Butin: |cRXP_LOOT_Mucus|r et |cRXP_LOOT_Les regards|r
    >>|cRXP_WARN_Vous n'êtes pas obligé de terminer cette étape ici|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >> Allez au bout de la plage
    .isOnQuest 818
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>Entrez dans la base des Kolkar
    .isOnQuest 786
step
    #xprate <1.5
    #sticky
    #completewith Bonfire
    +Faites attention si |cRXP_ENEMY_Kolkanis|r est présent, c'est un mob rare de niveau 9. Vous allez peut-être utiliser une [Potion de soins mineure] si vous en avez
    .unitscan Warlord Kolkanis
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol à l'intérieur de la tente
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #xprate <1.5
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #xprate <1.5
    #softcore
    #completewith TurninKolkar
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >> Mourez au bûcher et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith TurninKolkar
    .goto Durotar,50.95,79.14,30 >>Quittez la base Kolkar
    .isQuestComplete 786
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Trayexir|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Trayexir|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Trayexir|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Trayexir|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Arc courbe en bois de corne] (2s 83c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Trayexir|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith RazorHill1
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith RazorHill1
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith RazorHill1
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Grosk|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #label TurninKolkar
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Allez vers la flèche (ou plus au nord), puis mourez et réapparaissez au |cRXP_FRIENDLY_Esprit Gardien des âmes|r
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .accept 806 >>Acceptez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    --.accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver les |cRXP_LOOT_[Rough Stones]|r sur les filons pour fabriquer les [Pierre à aiguiser] (+2 dégâts des armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Uhgar|r
    .collect 2495,1,784,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Uhgar|r
    .collect 2494,1,784,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Uhgar|r
    .collect 2491,1,784,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Uhgar|r
    .collect 2490,1,784,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TiragardeArrive
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TiragardeArrive
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TiragardeArrive
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TiragardeArrive
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Arc courbe en bois de corne] (2s 83c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Ghrawt|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith TiragardeArrive
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche grossières] |cRXP_BUY_à Ghrawt|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Grosk|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Grosk|r << Rogue/Warrior
    >>Gardez 4 pièces d'argent pour vos sorts de classe ! << Rogue/Warrior/Shaman/Warlock
    >>Gardez 2 pièces d'argent pour vos sorts de classe ! << Priest
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .home >> Liez votre Pierre de Foyer à Tranchecolline
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
    .xp <8,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Grosk|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Grosk|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .home >> Liez votre Pierre de Foyer à Tranchecolline
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .bindlocation 362
    .xp >8,1
step << !Mage !Hunter !Druid !Paladin
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Grosk|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Grosk|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .home >> Liez votre Pierre de Foyer à Tranchecolline
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <8,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Apprenez vos sorts de classe
    .target Swart
    .xp <8,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <8,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,784,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .xp <8,1
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .train 5116 >> Apprenez vos sorts de classe
    .target Thotar
    .xp <8,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <8,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Rendez la quête Au service de la spiritualité
    .accept 5648 >> Acceptez la quête Vêtements de la spiritualité
    .train 2052 >> Apprenez [Soins inférieurs Rank 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Lancez [Soins inférieurs] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Rendez la quête Vêtements de la spiritualité
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Achetez une|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,784,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Rogue/Paladin
    #completewith TiragardeArrive
    .cast 2580 >>Lancez [Découverte de gisements] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Voyagez vers le Donjon de Tiragarde
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +Faites attention si |cRXP_ENEMY_Watch Commander Zalaphil|r est présent, c'est un rare de niveau 9. Vous allez peut-être devoir utiliser une [Potions de soins mineure] si vous en avez une
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Allez au deuxième étage du donjon
step
    #completewith AgedEnvelope
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tuez |cRXP_ENEMY_Lieutenant Benedict|r. Dépouillez-le pour sa |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>Montez les escaliers dans le donjon
    >>Ouvrez |cRXP_PICK_Benedict's Chest|r. Dépouillez-le pour son [|cRXP_LOOT_Aged Envelope|r]
    >>Utilisez l'[|cRXP_LOOT_Aged Envelope|r] pour commencer la quête
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acceptez la quête Les ordres de l'amiral
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Mage
    #xprate <1.5
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2610 >> Montez votre expérience jusqu'à 2610+/4500xp
step << !Mage
    #xprate >1.49
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1665 >> Montez jusqu'à 1665+/4500 XP
step
    #softcore
    #completewith next
    .goto Durotar,57.93,57.67
    .deathskip >> Mourez à la flèche (ou plus au nord), puis mourez et réapparaissez au |cRXP_FRIENDLY_Esprit Gardien des âmes|r
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Voyagez jusqu'à Tranchecolline
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .accept 837 >>Acceptez la quête Empiètement
    .target Gar'thok
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Rendez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Bâton de marche] (5s 04c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Bâton de marche] |cRXP_BUY_à Uhgar|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (4s 01c). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez un|r [Stylet] |cRXP_BUY_à Uhgar|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Hache large] (4s 84c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Hache large] |cRXP_BUY_à Uhgar|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour une [Tomahawk] (5s 40c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Achetez une|r [Tomahawk] |cRXP_BUY_à Uhgar|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Tools
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Tools
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Tools
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Tools
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Arc courbe en bois de corne] (2s 83c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Achetez un|r [Arc courbe en bois de corne] |cRXP_BUY_à Ghrawt|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Tools
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche grossière] |cRXP_BUY_à Ghrawt|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Apprenez vos sorts de classe
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .train 5116 >> Apprenez vos sorts de classe
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Apprenez vos sorts de classe
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .train 139 >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Achetez une|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    .vendor >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .target Innkeeper Grosk
    .isOnQuest 825 --From the Wreckage
    .money <0.0125
step << Warrior/Rogue/Paladin
    #completewith Tools
    .cast 2580 >>Lancez [Découverte de gisements] et minez tous les Filons de cuivre pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,62.25,56.34,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    >>Ramassez les |cRXP_PICK_Gnomish Toolboxes|r autour et à l'intérieur des bateaux
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Nagez vers l'Île
step
    #completewith MinshinasSkull
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    .goto Durotar,67.74,69.86,40,0
    >>Ramassez les |cRXP_PICK_Taillasher Eggs|r sur le sol
    >>Ils sont gardés en général par un |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Nagez vers l'île principale
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour quand il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Ramassez l'un des |cRXP_LOOT_Skulls|r sur le sol
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour quand il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
	.goto Durotar,67.23,88.00,0
	.goto Durotar,67.23,88.76,40,0
	.goto Durotar,66.52,87.74,40,0
	.goto Durotar,65.94,86.72,40,0
	.goto Durotar,65.90,84.04,40,0
	.goto Durotar,65.88,82.85,40,0
	.goto Durotar,67.38,82.61,40,0
	.goto Durotar,68.42,82.43,40,0
	.goto Durotar,68.50,84.32,40,0
	.goto Durotar,68.47,86.77,40,0
	.goto Durotar,67.23,88.00,40,0
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,65.27,87.86,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith Zalazaneturnin
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou revenez à la marche
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Voyagez vers le Village de Sen'jin
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    >>Sautez dans la hutte
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Apprenez vos sorts de classe
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Rendez la quête Crâne de Minshina
    .turnin 826 >>Rendez la quête Zalazane
    .goto Durotar,55.95,74.73
    .target +Master Gadrin
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .goto Durotar,55.95,74.39
    .target +Master Vornal
    .turnin 817 >>Rendez la quête Proie nécessaire
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
step
    #xprate >1.49
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+4400 >>Montez votre expérience jusqu'à 4400+/6500xp
step
    #hardcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #softcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .goto Durotar,54.53,58.69
    .deathskip >>Allez vers la flèche (ou plus au nord), puis mourez et réapparaissez au |cRXP_FRIENDLY_Esprit Gardien des âmes|r
step
    #label RazorHill3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 825 >>Rendez la quête Des épaves
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
step
    #xprate <1.5
    #loop
    .goto Durotar,50.21,50.78,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Tuez les |cRXP_ENEMY_Razormane Quilboars|r et les |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #xprate <1.5
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #xprate <1.5
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+5870 >>Montez votre expérience jusqu'à 5870+/6500xp
step
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #xprate <1.5
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Rendez la quête Empiètement
    .target Gar'Thok
step
    #xprate <1.5
    #loop
	.goto Durotar,41.94,40.46,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 10 >>Montez jusqu'au niveau 10
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .trainer >>Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Acceptez la quête Les invocations de Gan'rul
    .train 1120 >>Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,1501,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .accept 6062 >>Acceptez la quête Dompter la bête
    .trainer >> Apprenez vos sorts de classe
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche pointue] |cRXP_BUY_et un|r [Carquois moyen] |cRXP_BUY_à Ghrawt|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche pointue] |cRXP_BUY_à Ghrawt|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51,40,0
    .use 15917 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Dire Mottled Boar|r à la portée maximale
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6062 >>Rendez la quête Dompter la bête
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Dire Mottled Boar|r en faisant un clic droit sur son portrait et en sélectionnant Renvoyer, sinon vous ne pourrez pas dompter un |r |cRXP_ENEMY_Surf Crawler|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38,40,0
    >>Ne tuez pas les |cRXP_ENEMY_Armored Scorpids|r que vous verrez. Vous en aurez besoin plus tard
    .use 15919 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Surf Crawler|r à la portée maximale
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6083 >>Rendez la quête Dompter la bête
    .accept 6082 >>Acceptez la quête Dompter la bête
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Surf Crawler|r en faisant un clic droit sur son portrait et en sélectionnant Renvoyer, sinon vous ne pourrez pas dompter un |r |cRXP_ENEMY_Armored Scorpid|r
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Armored Scorpid|r à la portée maximale
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6082 >>Rendez la quête Dompter la bête
    .accept 6081 >>Acceptez la quête Entraîner la bête
    .target Thotar
step << Hunter
    #completewith ConscriptH
    +Mettez [Apprivoiser une bête]|cRXP_WARN_,|r [Renvoyer le familier] et [Appel du familier] sur vos barres d'action
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Achetez de la|r [Viande séchée coriace] |cRXP_BUY_à Grimtak|r. |cRXP_BUY_Vous l'utiliserez pour nourrir votre familier plus tard|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
	.vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vendez votre surplus, puis refaites un stock de nourriture/eau si nécessaire|r << Rogue/Warrior
    .target Grimtak
step << Hunter
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step << Warlock/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
    .isOnQuest 6081 << Hunter
    .isOnQuest 1506 << Warlock
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Voyagez jusqu'à la Vallée de l'Honneur
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Rendez la quête Entraîner la bête
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Apprenez les compétences de votre familier
    .target Xao'tsu
step << Hunter
    #completewith next
    +Mettez [Dressage des bêtes] (sous l'onglet Général), [Ressusciter le familier], et [Nourrir le familier] sur vos barres d'actions
    >>N'oubliez pas d'entraîner votre familier dès qu'il récupère des points dans le [Dressage des bêtes]
step << Warlock/Hunter
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Vol'Jin
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1506 >>Rendez la quête Les invocations de Gan'rul
    .accept 1501 >>Acceptez la quête La créature du Vide
    .target Gan'rul Bloodeye
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
step << Warlock
    #softcore
    #completewith SkullRockWarlock
    .goto Durotar,47.05,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>Voyagez jusqu'au Rocher du crâne
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>Tuez |cRXP_ENEMY_Gazz'uz|r si il est présent. Dépouillez-le pour le [|cRXP_LOOT_Eye of Burning Shadow|r]. Utilisez le pour commencer la quête
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Acceptez la quête Ombres ardentes
    .unitscan Gazz'uz
step << Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Burning Blade Orcs|r. Dépouillez-les pour une |cRXP_LOOT_Lieutenant's Insignia|r
    >>Passez cette étape si vous n'avez pas de chance et qu'il ne tombe pas
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>Ramassez les |cRXP_PICK_Burning Blade Stash|r au fond de la grotte pour la |cRXP_LOOT_Tablet of Verga|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1501 >>Rendez la quête La créature du Vide
    .accept 1504 >>Acceptez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 832 >>Acceptez la quête Ombres ardentes
    .turnin 832 >>Rendez la quête Ombres ardentes
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>Utilisez les [Glyphes d'invocation] dans le cercle d'invocation
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1504 >>Rendez la quête Le lien
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,36.0,37.7
    .deathskip >>Retirez votre buff [Peau de démon]. Allez au dessus du bûcher, et utilisez [Connexion] pour mourir et revenir à Orgrimmar
step << Warlock
    #hardcore
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Quittez Orgrimmar
step << Hunter
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Quittez Orgrimmar
step << Hunter
    #completewith ZeptoUC1
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Domptez un |cRXP_ENEMY_Venomtail Scorpid|r
    >>Ceci vous permettra d'apprendre [Griffe Rang 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #label SupplySacks
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Ramassez les |cRXP_PICK_Stolen Supply Sacks|r sur le sol
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #completewith next
    .goto Durotar,51.9,27.4,20 >>Entrez et avancez à travers la grotte
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tuez les |cRXP_ENEMY_Dustwind Savages|r et les |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou revenez à la marche
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Avancez dans la grotte vers |cRXP_FRIENDLY_Rezlak|r
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
step << !Shaman !Warrior
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    .zoneskip Undercity
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Montez les escaliers ici
step << !Shaman !Warrior
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
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (H)
<< Horde
#name 10-13 Durotar
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Shaman !Tauren
#next 13-18 Les Tarides


step << Warrior/Shaman
    #optional
    .xp 10 >>Montez jusqu'au niveau 10
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Acceptez la quête Le vétéran Uzzek
    .trainer >>Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .train 355,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
    .goto Durotar,50.21,50.78,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Tuez les |cRXP_ENEMY_Razormane Quilboars|r et les |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .isOnQuest 837
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
    .isOnQuest 837
step
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Rendez la quêteLe vétéran Uzzek
    .accept 1498 >>Acceptez la quête La voie de la défense
    .target Uzzek
    .train 355,1
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << !Tauren
    #softcore
    #completewith Xroads1
    .goto The Barrens,50.72,32.61
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 380
step << !Tauren
    #hardcore
    #completewith Xroads1
    .goto The Barrens,52.34,29.27,150 >> Voyagez à la Croisée
step << !Tauren
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step << Orc/Troll
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step << !Tauren
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target Gazrog
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .target Devrak
    .subzoneskip 380,1
step << Orc/Troll
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << !Tauren
    #label Xroads1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Acceptez la quête Spores fongiques
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .target Apothecary Helbrim
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>|cRXP_WARN_Restez le plus possible à distance des |cRXP_ENEMY_Kolkar|r en ramassant les champignons. Ils sont niveau 12-14
    >>|cRXP_WARN_La quête suivante a le très puissant |cRXP_FRIENDLY_Cauldron Stirrer|r en récompense. Vous pouvez passer cette quête pour l'instant si vous ne prévoyez pas de l'utiliser
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #xprate <1.5
    .goto The Barrens,45.06,22.54
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
    #xprate <1.5
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>|cRXP_WARN_Restez le plus possible à distance des |cRXP_ENEMY_Kolkar|r en ramassant les champignons. Ils sont niveau 12-14
    >>|cRXP_WARN_La quête suivante a le très puissant |cRXP_FRIENDLY_Cauldron Stirrer|r en récompense. Vous pouvez passer cette quête pour l'instant si vous ne prévoyez pas de l'utiliser
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #xprate <1.5
    #hardcore
    #completewith PoolsTurnin
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Voyagez à la Croisée
step << !Tauren
    #xprate <1.5
    #softcore
    #completewith PoolsTurnin
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Tauren
    #xprate <1.5
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    >>Attendez que le RP finisse
    >>Cette quête est une quête chronométrée de 45 minutes
    .turnin 848 >> Rendez la quête Spores fongiques
    .timer 7,Spores fongiques RP
    .accept 853 >> Acceptez la quête L'apothicaire Zamah
    .target Apothecary Helbrim
step
    #xprate <1.5
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Vous faites une quête chronométrée, ne passez pas ABS. Elle sera rendue 20-30 après qu'elle soit prise|r
    .isOnQuest 853
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez une ou plusieurs|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Barg|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << !Tauren
    #xprate <1.5
    #label PoolsTurnin
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Rendez la quête Les Bassins oubliés
    .accept 877 >>Acceptez la quête L'oasis stagnante
    .target Tonga Runetotem
step << Warrior/Shaman
    #xprate <1.5
    #softcore
    #completewith next
    .goto The Barrens,49.75,49.54
    .subzone 378 >>Voyagez vers le sud par la route vers le Camp Taurajo
    >>|cRXP_WARN_Une fois que vous êtes à la flèche (ou plus au nord), mourez et réapparaissez au|r |cRXP_FRIENDLY_Esprit Gardien des âmes|r
step << Warrior/Shaman
    #xprate <1.5
    #hardcore
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Voyagez vers le sud par la route vers le Camp Taurajo
step << Warrior/Shaman
    #xprate <1.5
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    .zone Mulgore >>Voyagez à Mulgore
step << Warrior/Shaman
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
    .accept 749 >>Acceptez la quête La caravane ravagée
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #completewith next
    .subzone 222 >>Voyagez jusqu'à Village de Bloodhoof
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acceptez la quête Kyle a disparu !
    .target Ahab Wheathoof
step << !Tauren
    #xprate <1.5
    #completewith RavagedCaravanTI
    >>Tuez un |cRXP_ENEMY_Plainstrider|r. Dépouillez-le pour un [|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
    .goto Mulgore,53.74,48.17
    >>Cliquez sur les |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Rendez la quête La caravane ravagée
    .accept 751 >>Acceptez la quête La caravane ravagée
step << !Tauren
    #xprate <1.5
    #label RavagedCaravanTI
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
    .accept 764 >> Acceptez la quête La KapitalRisk
    .accept 765 >> Acceptez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venture Co. Workers|r et les |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << !Tauren
    #xprate <1.5
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Tuez |cRXP_ENEMY_Supervisor Fizsprocket|r. Dépouillez-le pour son |cRXP_LOOT_Clipboard|r
    >>|cRXP_WARN_Entrez dans la mine et longez le mur de droite/côté est pour l'atteindre|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step << !Tauren
    #xprate <1.5
    #label VentureCoKills
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
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Tuez un |cRXP_ENEMY_Plainstrider|r. Dépouillez-le pour un [|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 764 >>Rendez la quête La KapitalRisk
    .turnin 765 >>Rendez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,52.42,64.24,0
    .goto Mulgore,52.42,64.24,70,0
    .goto Mulgore,49.18,67.09,70,0
    .goto Mulgore,44.47,70.52,70,0
    .goto Mulgore,42.32,66.98,70,0
    .goto Mulgore,38.78,66.30,70,0
    >>Tuez un |cRXP_ENEMY_Plainstrider|r. Dépouillez-le pour un [|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
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
    --TODO: Test beta, bugged on pserver
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Rendez la quête Kyle a disparu !
    .target Ahab Wheathoof
step << !Tauren
    #xprate <1.5
    #completewith TBFP
    .goto Thunder Bluff,31.86,66.67,30,0
    .goto Thunder Bluff,36.17,62.76,20 >>Prenez l'ascenseur pour aller à Thunder Bluff
step << !Tauren !Paladin !Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
step << Paladin/Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Acheter la compétence pour porter des masses à deux mains
    .target Ansekhwa
    .money <0.1
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,45.6,52.0,15 >>Montez la tour
step << !Tauren
    #xprate <1.5
    #label TBFP
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Apprenez le trajet de vol vers Les Pitons-du-Tonnerre
	.target Tal
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step << !Tauren
    #xprate <1.5
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .target Apothecary Zamah
step << !Tauren
    #xprate <1.5
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Acceptez la quête À la recherche de la sacoche perdue
    .accept 5723 >>Acceptez la quête Tester la force de l'ennemi
    .target Rahauro
    .dungeon RFC
step << !Tauren
    #completewith LostPickup
    .hs >>Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0
step << !Tauren
    #xprate <1.5
    #completewith LostPickup
    .hs >>Tuez des mobs à l'extérieur de Les Pitons-du-Tonnerre jusqu'à ce que votre Pierre de foyer soit disponible à nouveau, puis utilisez votre Pierre de foyer pour vous téléporter à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,<0
step << !Tauren
    #xprate >1.49
    #completewith LostPickup
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
    .bindlocation 362,1
    .cooldown item,6948,<0
step
    #xprate >1.49
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Rendez la quête Empiètement
    .target Gar'Thok
    .isQuestComplete 837
step
    #label LostPickup
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acceptez la quête L'égaré
    .target Misha Tor'kren
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Ramassez les |cRXP_PICK_Stolen Supply Sacks|r sur le sol
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step
    .goto Durotar,41.54,18.59
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .target Rhinag
step
    #completewith FindingAntidote
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Orc/Troll
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
step << Orc/Troll
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
step << Orc/Troll
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Vol'Jin
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Pyreanor|r
    .trainer >>Apprenez vos sorts de classe
    .target Master Pyreanor
step
    #label FindingAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'ghan|r dans la Faille de l'Ombre
    .accept 813 >>Acceptez la quête La recherche de l'antidote
    .target Kor'ghan
step
    #completewith FizzleKill
    >>Abandonnez Besoin d'un remède. Ceci enlèvera le chronomètre de la quête mais vous pourrez toujours la faire
    .abandon 812 >>Abandonnez Besoin d'un remède
step
    #softcore
    #completewith FizzleKill
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
    .zoneskip Durotar
step
    #softcore
    #completewith FizzleKill
    .goto Durotar,47.05,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #hardcore
    #completewith FizzleKill
    .goto Durotar,45.54,12.14
    .zone Durotar >>Quittez Orgrimmar
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Sautez dans les Falaises du Tonnerre
    .goto Durotar,41.66,25.68,20 >>Renvoyez votre [Diablotin] |cRXP_WARN_or|r [Marcheur du vide] en faisant un clic droit sur son portrait et en choisissant Renvoyer << Warlock
    .cast 2641 >>|cRXP_WARN_Lancez|r |T136095:0|t[Renvoyer le familier] |cRXP_WARN_et ensuite sautez dans les falaises du Tonnerre|r << Hunter
step
    #label FizzleKill
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>Faites attention. Tuez les |cRXP_ENEMY_Burning Blade Fanatic|r qui patrouillent avant de l'engager
    >>Tuez le diablotin en premier. Utilisez [Suriner] lorsqu'il lance [Siphon d'âme] << Rogue
    >>Tuez le diablotin en premier. Utilisez [Horion de terre] lorsqu'il lance [Siphon d'âme] << Shaman
    >>Vous pouvez lancer [Métamorph|cRXP_WARN_on|re] sur |cRXP_ENEMY_Fizzle|r et tuez le |cRXP_ENEMY_Imp|r en premier << Mage
    >>Tuez le diablotin en premier << Warrior/Warlock/Priest
    >>Utilisez une [Potion de soins mineur] si vous en avez une et votre [Crâne au faible rougeoiement] si nécessaire << !Warlock
    >>Utilisez une [Potion de soins mineur], [Pierre de soins mineure] si vous l'avez et votre [Crâne au faible rougeoiement] si nécessaire << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior
    #completewith next
    .goto Durotar,39.2,32.3,30 >>Quittez les Falaises du Tonnerre
step << Warrior
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Tuez les |cRXP_ENEMY_Lightning Hides|r. Dépouillez-les pour leur |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
    .train 355,1
step << !Warrior
    .goto Durotar,39.2,32.3,30 >>Quittez les Falaises du Tonnerre
    .isQuestComplete 806
step << !Troll Shaman !Orc Shaman
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Voyagez au sud le long de la rivière vers le poste de Guet-Lointain
    >>Tuez les |cRXP_ENEMY_Dreadmaw Crocolisks|r sur le chemin. Dépouillez-les pour la |cRXP_LOOT_Kron's Amulet|r
    >>Passez cette quête pour le moment si elle ne tombe pas
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Troll Shaman/Orc Shaman
    #completewith next
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30,50,0
    >>|cRXP_WARN_Voyagez vers le sud le long de la rivière|r
    >>Tuez les |cRXP_ENEMY_Dreadmaw Crocolisks|r sur le chemin. Dépouillez-les pour la |cRXP_LOOT_Kron's Amulet|r
    >>Passez cette quête pour le moment si elle ne tombe pas
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Troll Shaman/Orc Shaman
    .goto Durotar,35.53,56.89,100 >>Arrivez au point sud de la rivière
    .isOnQuest 1524
step << Troll Shaman/Orc Shaman
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
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Rendez la quête L'appel du feu
    .accept 1525 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step
    #softcore
    #completewith next
    .deathskip >>Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou allez à Tranchecolline à la marche
step
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
    .subzoneskip 362
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 547 >> Apprenez vos sorts de classe
    .target Swart
    .xp <12,1
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Rendez la quête Margoz
    .accept 827 >>Acceptez la quête Rocher du crâne
    .target Margoz
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #label EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,55.09,9.91,20 >>Entrez dans la grotte
step
    #requires EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Orcs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r et pour un |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #requires EnterGazzuzCave
    #softcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Tuez |cRXP_ENEMY_Gazz'uz|r. Dépouillez-le pour son [|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Eye of Burning Shadow|r] pour commencer la quête|r
    >>Vous pouvez aller dans les points d'eau dans la grotte pour vous échapper (evade) des |cRXP_ENEMY_Voidwalker|r après avoir tué |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Faites attention car il est difficile. Vous pouvez sauter cette quête si besoin|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Acceptez la quête Ombres ardentes
    .use 4903
	.unitscan Gazz'uz
step
    #requires EnterGazzuzCave
    #hardcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Tuez |cRXP_ENEMY_Gazz'uz|r. Dépouillez-le pour son [|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Eye of Burning Shadow|r] pour commencer la quête|r
    >>Vous pouvez aller dans les points d'eau dans la grotte pour vous échapper (evade) des |cRXP_ENEMY_Voidwalker|r après avoir tué |cRXP_ENEMY_Gazz'uz|r
    >>Cette quête est TRÈS difficile à faire solo. Passez-la si vous n'arrivez pas à trouver un groupe
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Acceptez la quête Ombres ardentes
    .use 4903
	.unitscan Gazz'uz
    .group 2
step
    #requires EnterGazzuzCave
    #loop
    .goto Durotar,53.77,8.87,0
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Orcs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r et pour un |cRXP_LOOT_Lieutenant's Insignia|r
    >>Arrêtez de cherche une |cRXP_LOOT_Lieutenant's Insignia|r si vous n'avez pas de chance et qu'il ne tombe pas
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Rendez la quête Rocher du crâne
    .accept 829 >>Acceptez la quête Neeru Lamefeu
    .target Margoz
step << Shaman
    #completewith next
    .subzone 371 >>Voyagez vers la Caverne des Terrevent
step << Shaman
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Cultists|r. Dépouillez-les pour leur |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Avancez dans la grotte
step << Shaman
    #completewith next
    .goto Durotar,53.94,27.85,30 >>Sautez dans le Ravin Asséché
step
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tuez les |cRXP_ENEMY_Dustwind Savages|r et les |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 813 --don't want ress sickness if more Scorpids need to get killed before entering ORG
step
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Avancez dans la grotte vers |cRXP_FRIENDLY_Rezlak|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
step
    #loop
    .goto Durotar,42.09,20.91,0
    .goto Durotar,42.09,20.91,50,0
    .goto Durotar,39.38,18.69,50,0
    .goto Durotar,41.22,16.82,50,0
    .goto Durotar,44.14,17.17,50,0
    .goto Durotar,36.75,25.47,50,0
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
    .isOnQuest 813
step
    #completewith NeeruFireblade
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entrez dans Orgrimmar
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Rendez la quête La recherche de l'antidote
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .turnin 832 >>Rendez la quête Ombres ardentes
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
step
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >> Quittez Orgrimmar
step
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
    .zoneskip Durotar
step
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .turnin 812 >>Rendez la quête Besoin d'un remède
    .target Rhinag
step
    #label AmuletFound
    #completewith FarWatchP
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,01
    >>Tuez les |cRXP_ENEMY_Gueule-d'Effroi Crocolisks|r sur le chemin vers Poste de Guet-Lointain. Ramassez-les pour le Butin: |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Passez cette quête si elle ne drop rien|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
    .isOnQuest 816
step
    #requires AmuletFound
    #completewith FarWatchP
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Rendez la quête L'égaré
    .target Misha Tor'kren
step
    #label FarWatchP
    .goto The Barrens,62.26,19.38
    .subzone 379 >>Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Rendez la quête Ak'Zeloth
    .accept 924 >>Acceptez la quête La Graine démoniaque
    .target Ak'Zeloth
step
    .goto The Barrens,62.34,20.03
    >>Ramassez la [Pierre de puissance imparfaite] près de |cRXP_FRIENDLY_Ak'Zeloth|r. Cet objet a une durée de 30 minutes, donc soyez sûr d'être rapide
    .turnin 926 >>Rendez la quête Pierre de puissance imparfaite
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Rendez la quête La voie de la défense
    .accept 1502 >>Acceptez la quête Thun'grim Mirefeu
    .target Uzzek
    .train 355,1
step
    #optional
    .abandon 816 >>Abandonnez la quête L'égaré
step
    #optional
    .abandon 5726 >>Abandonnez la quête Ennemis cachés
]])
