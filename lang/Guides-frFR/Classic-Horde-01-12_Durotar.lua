if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Orcs et les Trolls. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << !Troll Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T133816:0|t[Gravure de gants (Javelot de glace)])
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
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
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
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Acceptez la quête Puissance dérobée
    .train 348 >>Apprenez [Immolation]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Apprenez [Immolation]
    .target Nartok
step << !Warrior !Rogue
    #softcore
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
    .goto Durotar,43.57,67.28,25,0
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
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
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Tuez |cRXP_ENEMY_Sarkoth|r. Dépouillez-le pour la |cRXP_LOOT_Pince abîmée de Sarkoth|r << !Hunter !Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #season 0
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Tuez les |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+325 >> Montez votre expérience jusqu'à 325+/1400xp << Warlock
    .xp 3+925 >> Montez votre expérience jusqu'à 925+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+685 >> Montez votre expérience jusqu'à 685+/1400xp
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez en boucle les |cRXP_ENEMY_Sangliers tachetés|r. Dépouillez-les jusqu'à avoir 2 pièces d'argent d'objets vendables|r << Warrior
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent et 75 pièces de cuivre à vendre au marchand|r << Warlock
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent et 10 pièces de cuivre à vendre au marchand|r << Hunter
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Voyagez vers |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Rendez la quête Tablette codée << Troll Rogue
    .turnin 3088 >>Rendez la quête Parchemin codé << Orc Rogue
    .train 53 >> Apprenez [Attaque sournoise]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    .goto Durotar,40.65,68.52,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Rendez la quête Parchemin contaminé
    .accept 77586 >>Acceptez la quête Puissance dérobée
    .target Nartok
step << Warlock
    #season 0
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
    #xprate <1.5
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
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Duokna|r
    >>|cFF0E8312Achetez-lui de l'|r |T132794:0|t[Eau de source] |cFF0E8312|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Achetez-lui des|r |T132382:0|t[Flèches grossières] |cFF0E8312|r << Hunter
    >>|cRXP_WARN_Gardez 10 pièces de cuivre pour apprendre|r |T135932:0|t[Intelligence des arcanes] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .accept 77587 >>Acceptez la quête Icônes de puissance << Troll Shaman
    .accept 77585 >>Acceptez la quête Icônes de puissance << Orc Shaman
    .train 8042 >>Apprenez [Horion de terre]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .accept 77587 >>Acceptez la quête Icônes de puissance << Troll Shaman
    .accept 77585 >>Acceptez la quête Icônes de puissance << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Rendez la quête Tablette glyphée << Troll
    .accept 77643 >>Acceptez la quête Recherches sur les sorts << Troll Mage
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Rendez la quête Tablette glyphée << Troll
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acceptez la quête Les vils quasits
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .accept 77590 >>Acceptez la quête Terrain difficile << Troll Hunter
    .accept 77584 >>Acceptez la quête Chasse à la rune << Orc Hunter
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .money <0.01
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .accept 77590 >>Acceptez la quête Terrain difficile << Troll Hunter
    .accept 77584 >>Acceptez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .accept 77590 >>Acceptez la quête Terrain difficile << Troll Hunter
    .accept 77584 >>Acceptez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .money <0.01
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .accept 77588 >>Acceptez la quête Une épreuve d’endurance << Troll
    .accept 77582 >>Acceptez la quête Une épreuve d’endurance << Orc
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .accept 77588 >>Acceptez la quête Une épreuve d’endurance << Troll
    .accept 77582 >>Acceptez la quête Une épreuve d’endurance << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .accept 77588 >>Acceptez la quête Une épreuve d’endurance << Troll
    .accept 77582 >>Acceptez la quête Une épreuve d’endurance << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Rendez la quête Tablette bénie
    .accept 77642 >>Acceptez la quête La sagesse des Loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kzan Trancheronce|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acceptez la quête Les péons paresseux
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Rendez-vous à la statue du |cRXP_FRIENDLY_Loa serpent|r au Sen'Jin Village et tapez /kneel
    .use 205951 >>Parlez au |cRXP_FRIENDLY_Loa serpent|r lorsqu'il apparaît, puis utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Rendez la quête La sagesse des Loa
    .target Ken'jai
step
    #completewith Sting
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
    #loop
	.goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Tuez les |cRXP_ENEMY_Scorpides ouvriers|r. Dépouillez-les pour l' |T134918:0|t[|cRXP_FRIENDLY_Icône dyadique|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >> |cRXP_WARN_Équipez l'|r |T134918:0|t|cRXP_LOOT_[Icône dyadique]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
    #loop
	.goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    .aura 408828 >>Continuez à tuer les |cRXP_ENEMY_Scorpides ouvriers|r et obtenez 10 stacks de |T237556:0|t[Accumuler l'inspiration] au fur et à mesure qu'ils vous infligent des dégâts de nature
    .mob Scorpid Worker
    .train 410094,1
    --User must be level 3 to be able to use item!
step << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Tuez les |cRXP_ENEMY_Scorpid Workers|r. Dépouillez-les pour leur |cRXP_LOOT_Queue de scorpide ouvrier|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>Utilisez la [Masse de contremaître] sur les |cRXP_FRIENDLY_Lazy Peons qui dorment|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
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
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Rendez la quête L'aiguillon du scorpide << Shaman
    .turnin 789 >>Rendez la quête L'aiguillon du scorpide << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .turnin 77587 >>Rendez la quête Icônes de puissance << Troll Shaman
    .turnin 77585 >>Rendez la quête Icônes de puissance << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez vos sorts de classe
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Rendez la quête Les vils quasits
    .accept 794 >>Acceptez la quête Le médaillon de la Lame-Ardente
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Apprenez [Morsure de serpent]
    .turnin 77590 >>Rendez la quête Terrain difficile << Troll Hunter
    .turnin 77584 >>Rendez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Rendez la quête Terrain difficile << Troll Hunter
    .turnin 77584 >>Rendez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    .xp 4+1720 >> Montez votre expérience jusqu'à 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
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
	.goto Durotar,42.70,52.99,25,0
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
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 5+1680 >> Montez votre expérience jusqu'à 1680+/2800xp << !Shaman
    .xp 5+690 >> Monter votre expérience jusqu'à 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 5+1300 >> Montez votre expérience jusqu'à 1300+/2800xp << !Shaman
    .xp 5+310 >> Monter votre expérience jusqu'à 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage au bord du rocher jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLIQUEZ ICI pour un exemple vidéo
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r près de la flèche|r
    .target Gardien des âmes
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target Gar'thok
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir à la Vallée des Épreuves
    .use 6948
step
    #xprate <1.5
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
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Rendez la quête Le médaillon de la Lame-Ardente
    .accept 805 >>Acceptez la quête Faire un rapport au Village de Sen'jin
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acceptez la quête Au service de la spiritualité
	.train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Ken'jai
step << Mage
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .turnin 77643 >> Rendez la quête Recherches sur les sorts
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Apprenez [Vague de soins]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Hraug|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .turnin 77586 >>Rendez la quête Puissance dérobée
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .turnin 77586 >>Rendez la quête Puissance dérobée
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .target Nartok
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
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
step
    #completewith next
    .subzone 367 >>Voyagez vers le Village de Sen'jin
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .accept 786 >>Acceptez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acceptez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Acceptez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Rendez la quête Faire un rapport au Village de Sen'jin
    .accept 808 >>Acceptez la quête Crâne de Minshina
    .accept 826 >>Acceptez la quête Zalazane
    .accept 823 >>Acceptez la quête Un rapport à Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entrez dans la grande hutte
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez-lui une |r |T132414:0|t[Hache de jet lestée] |cRXP_BUY_|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
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
    .collect 2495,1,786,1 --Collect Walking Stick (1)
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
    .collect 2494,1,786,1 --Collect Stiletto (1)
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
    .collect 2491,1,786,1 --Collect Large Axe (1)
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
    .collect 2490,1,786,1 --Collect Tomahawk (1)
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
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
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
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Descendez sur la plage. Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r. Vous n'avez pas à terminer cette étape maintenant
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >> Allez au bout de la plage
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Descendez sur la plage. Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r. Vous n'avez pas à terminer cette étape maintenant
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
    #completewith Bonfire
    >>Tuez les |cRXP_ENEMY_Manoeuvres kolkars|r et les |cRXP_ENEMY_Estafettes kolkars|r. Dépouillez-les pour leur |cRXP_LOOT_Morceaux de canevas|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>Entrez dans la base des Kolkar
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Commencez à récolter de 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en complétant des quêtes à travers Durotar. Ils sera utilisé pour fabriquer votre baguette plus tard|r
    >>|cRXP_WARN_Passez cette étape si vous avez déjà acheté une baguette ou si vous pouvez en obtenir une à moindre coût à l'Hôtel des ventes.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Commencez à récolter de 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en complétant des quêtes à travers Durotar. Ils sera utilisé pour fabriquer votre baguette plus tard|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +Faites attention si |cRXP_ENEMY_Kolkanis|r est présent, c'est un mob rare de niveau 9. Vous allez peut-être utiliser une [Potion de soins mineure] si vous en avez
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>Tuez les |cRXP_ENEMY_Manoeuvres kolkars|r et les |cRXP_ENEMY_Estafettes kolkars|r. Dépouillez-les pour une |cRXP_LOOT_Tête de centaure coupée|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
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
step << Warrior
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Tuez les |cRXP_ENEMY_Manoeuvres kolkars|r et les |cRXP_ENEMY_Estafettes kolkars|r. Dépouillez-les pour une |cRXP_LOOT_Tête de centaure coupée|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >> Mourez au bûcher et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Quittez la base Kolkar
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .turnin 786,1 >>Rendez la quête Déjouer l'agression des Kolkar << Shaman
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
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
    .collect 2495,1,823,1 --Collect Walking Stick (1)
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
    .collect 2494,1,823,1 --Collect Stiletto (1)
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
    .collect 2491,1,823,1 --Collect Large Axe (1)
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
    .collect 2490,1,823,1 --Collect Tomahawk (1)
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
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
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
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .turnin 786,1 >>Rendez la quête Déjouer l'agression des Kolkar << Shaman
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ba'so|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    >>|cRXP_WARN_Il est camouflé !|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #hardcore
    #label Betrayers
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
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    >>Tuez des mobs sur la route
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    >>Tuez des mobs sur la route
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +Faites attention si |cRXP_ENEMY_Watch Commander Zalaphil|r est présent, c'est un rare de niveau 9. Vous allez peut-être devoir utiliser une [Potions de soins mineure] si vous en avez une
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Allez au deuxième étage du donjon
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Tuez les |cRXP_ENEMY_Marins|r et les |cRXP_ENEMY_Soldats de marine|r. Dépouillez-les pour obtenir le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r. Dépouillez-les pour leur |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tuez |cRXP_ENEMY_Lieutenant Benedict|r. Dépouillez-le pour sa |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
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
    >>Ouvrez |cRXP_PICK_Benedict's Chest|r. Ramassez la [|cRXP_LOOT_Aged Envelope|r]
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
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Marins|r et les |cRXP_ENEMY_Soldats de marine|r. Dépouillez-les pour obtenir le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2520 >> Montez votre expérience jusqu'à 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >> Montez votre expérience jusqu'à 2200+/4500xp
    .isOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1530 >> Montez votre expérience jusqu'à 1530+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1050 >> Montez votre expérience jusqu'à 1050+/4500xp
    .isOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2070 >> Montez votre expérience jusqu'à 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >> Montez votre expérience jusqu'à 1750+/4500xp
    .isOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+855 >> Montez votre expérience jusqu'à 855+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+375 >> Montez votre expérience jusqu'à 375+/4500xp
    .isOnQuest 823
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Mourez à la tour nord à l'extérieur du Donjon de Tiragarde et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .accept 806 >>Acceptez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .accept 837 >>Acceptez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #hardcore
    #label RazorTurnins1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 825 >>Acceptez la quête Des épaves
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .target +Gar'Thok
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche grossières] |cRXP_BUY_à Ghrawt|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
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
step << !Mage !Hunter !Druid
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
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
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Ramassez les |cRXP_PICK_Gnomish Toolboxes|r autour et à l'intérieur des bateaux
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Nagez vers l'Île
step
    #completewith MinshinasSkull
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    -->>This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
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
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
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
    #completewith MinshinasSkull
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step << Priest
    #season 2
    #completewith Fur
    >>Tuez les |cRXP_ENEMY_Trolls vaudou|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
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
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
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
step << Priest
    #season 2
    #loop
    .goto Durotar,67.23,88.76,0
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
    >>Tuez les |cRXP_ENEMY_Trolls vaudou|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
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
    #loop
    .goto Durotar,59.79,83.44,0
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
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou revenez à la marche
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Voyagez vers le Village de Sen'jin
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
    .turnin 826,2 >>Rendez la quête Zalazane << Shaman
    .turnin 826 >>Rendez la quête Zalazane << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Rendez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_Vous devez maintenant trouver un Prêtre mort-vivant avec un buff Loa. Vous devez vous agenouiller (/kneel) devant lui et il doit /prier pour vous.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Mettez dans vos barres votre|r |T133728:0|t[Crâne au faible rougeoiement] |cRXP_WARN_et la|r |T134712:0|t[Colle très collante]. |cRXP_WARN_Gardez-les pour les situations d'urgence|r
step << Warrior
    #season 2
    #loop
    .goto Durotar,49.22,48.96,0
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
    >>Tuez les |cRXP_ENEMY_Hurans Tranchecrins|r et les |cRXP_ENEMY_Eclaireurs Tranchecrins|r. Dépouillez-les pour une |cRXP_LOOT_Tête de huran coupée|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step
    #label QuilboarsScouts
    #loop
    .goto Durotar,49.22,48.96,0
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
    .goto Durotar,44.45,39.74,50,0
    .goto Durotar,44.49,37.47,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto Durotar,41.64,38.27,50,0
    .goto Durotar,41.94,40.46,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,47.52,48.67,0
	.goto Durotar,47.52,48.67,50,0
	.goto Durotar,46.12,45.47,50,0
	.goto Durotar,43.65,43.91,50,0
	.goto Durotar,41.68,44.69,50,0
	.goto Durotar,41.00,46.13,50,0
	.goto Durotar,42.47,48.50,50,0
	.goto Durotar,44.21,49.68,50,0
	.goto Durotar,47.17,49.44,50,0
    .xp 9+4470 >> Montez votre expérience jusqu'à 4470+/6500xp
step
    #optional
    #xprate >1.49
    #loop
    .goto Durotar,49.14,48.89,0
    .goto Durotar,49.14,48.89,30,0
    .goto Durotar,47.43,49.18,30,0
    .xp 9+4400 >> Montez votre expérience jusqu'à 4400+/6500xp
step
    #xprate >1.49 << !Hunter
    #softcore
    #completewith RazorTurnins015
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou allez à Tranchecolline à la marche
step
    #xprate >1.49 << !Hunter
    #hardcore
    #completewith RazorTurnins015
    .goto Durotar,51.95,43.50,100 >>Courez vers Tranchecolline
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Rendez la quête Des épaves
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Rendez la quête Des épaves
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Acceptez la quête Le vétéran Uzzek
    .trainer >>Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acceptez la quête Le maléfice de faiblesse << Troll
    .accept 5660 >> Acceptez la quête Toucher de faiblesse << Undead
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue
    #xprate >1.49
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
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèches pointue] |cRXP_BUY_à Ghrawt|r
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
    .use 15917 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Dire Mottled Boar|r à la portée maximale
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6062 >>Rendez la quête Dompter la bête
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Renvoyez votre |cRXP_ENEMY_Dire Mottled Boar|r en faisant un clic droit sur son portrait et en sélectionnant Renvoyer, sinon vous ne pourrez pas dompter un |r |cRXP_ENEMY_Surf Crawler|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    >>Ne tuez pas les |cRXP_ENEMY_Armored Scorpids|r que vous verrez. Vous en aurez besoin plus tard
    .use 15919 >> Utilisez votre [Bâtonnet de domptage] sur un |cRXP_ENEMY_Surf Crawler|r à la portée maximale
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6083 >>Rendez la quête Dompter la bête
    .accept 6082 >>Acceptez la quête Dompter la bête
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .turnin 6082 >>Rendez la quête Dompter la bête
    .accept 6081 >>Acceptez la quête Entraîner la bête
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith ConscriptH
    +Mettez [Appriovoiser une bête]|cRXP_WARN_,|r [Renvoyer le familier], et [Appel du familier] sur vos barres d'action
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Achetez de la|r [Viande séchée coriace] |cRXP_BUY_à Grimtak|r. |cRXP_BUY_Vous l'utiliserez pour nourrir votre familier plus tard|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #label ConscriptH
    #xprate >1.49 << !Hunter
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Rendez la quêteLe vétéran Uzzek
    .accept 1498 >>Acceptez la quête La voie de la défense
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Rendez la quête L'appel du feu
    .accept 1525 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Hunter/Shaman/Warrior
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acceptez la quête L'égaré
    .target Misha Tor'kren
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Entrez dans les falaises du Tonnerre et tuez |cRXP_ENEMY_Foudroyants|r. Dépouillez-les pour leurs |cRXP_ENEMY_Écailles|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Sautez dans les Falaises du Tonnerre
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>|cRXP_WARN_N'ayez pas peur de mourir pour la |cRXP_LOOT_Griffe|r comme vous réapparaîtrez au |cRXP_FRIENDLY_Gardien des âmes|r après|r
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
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
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
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 806
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Sortez des falaises du Tonnerre en combattant les mobs
    .isQuestComplete 806
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Voyagez à Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step << Warrior
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Harpies Terrevent|r. Dépouillez-les pour une |cRXP_LOOT_Tête de harpie coupée|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
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
step << Warrior
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tuez les |cRXP_ENEMY_Harpies Terrevent|r. Dépouillez-les pour une |cRXP_LOOT_Tête de harpie coupée|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step
    #xprate >1.49
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .target Rezlak
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Voyagez vers la Caverne des Terrevent
    >>|cRXP_WARN_Voyagez à l'est autour des collines pour atteindre la grotte. Suivez la flèche jusqu'au point de repère|r
step << Shaman
    #xprate >1.49
    #loop
    .goto Durotar,53.18,29.15,0
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
step
    #xprate <1.5 << Shaman/Warrior
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Sautez dans les Falaises du Tonnerre << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Renvoyez votre|r |T136218:0|t[Diablotin] |cRXP_WARN_en faisant un clic droit sur son portrait et en cliquant sur renvoyer|r << Warlock
    .cast 2641 >> |cRXP_WARN_Lancez|r |T136095:0|t[Renvoyer le familier] |cRXP_WARN_et ensuite sautez dans les falaises du Tonnerre|r << Hunter
step
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>|cRXP_WARN_N'ayez pas peur de mourir pour la |cRXP_LOOT_Griffe|r comme vous réapparaîtrez au |cRXP_FRIENDLY_Gardien des âmes|r après|r
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
step
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
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
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Sortez des falaises du Tonnerre en combattant les mobs
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Sortez des falaises du Tonnerre en combattant les mobs
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .target Rhinag
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    .xp 9+2930 >>Tuez des mobs jusqu'à avoir 2930+/6500 xp dans le niveau 9
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    +Tuez des mobs jusqu'à ce qu'il reste moins de 5 minutes à votre Pierre de foyer
    .cooldown item,6948,<0
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    #label EnterOrg
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
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
    #completewith FindAntidote
    +Mettez [Dressage des bêtes] (sous l'onglet Général), [Ressusciter le familier], et [Nourrir le familier] sur vos barres d'actions
    >>N'oubliez pas d'entraîner votre familier dès qu'il récupère des points dans le [Dressage des bêtes]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure] |cRXP_WARN_lorsque vous êtes niveau 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #label FindAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'ghan|r dans la Faille de l'Ombre
    .accept 813 >>Acceptez la quête La recherche de l'antidote
    .target Kor'ghan
    .isOnQuest 812
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #completewith RazorTurnins2
    #label NeedACure
    >>Abandonnez Besoin d'un remède. Ceci enlèvera le chronomètre de la quête mais vous pourrez toujours la faire
    .abandon 812 >>Abandonnez Besoin d'un remède
    .isOnQuest 812
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamja|r et |cRXP_FRIENDLY_Gru'ark|r
    +Tuez |cRXP_ENEMY_Gru'ark|r lorsqu'il devient hostile
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamja|r
    >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r]
    .use 204716
    .itemcount 204716,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #completewith RazorTurnins2
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #requires NeedACure
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grosk l'aubergiste|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vahi|r
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Utilisez les |T134455:0|t[Fragments de rune] pour créer des |T134419:0|t[|cRXP_FRIENDLY_Runes de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1
step << Hunter
    #xprate <1.5
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
step << !Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r, à |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 825 >>Rendez la quête Des épaves
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter/Shaman/Warrior
    #xprate >1.49
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Rendez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .accept 1505 >>Acceptez la quête Le vétéran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Swart
step << Warlock
    #xprate <1.5
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    #xprate <1.5
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate <1.5
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acceptez la quête Le maléfice de faiblesse << Troll
    .accept 5660 >> Acceptez la quête Toucher de faiblesse << Undead
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entrez à l'intérieur du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r à l'intérieur
    .train 13549 >> Apprenez vos sorts de classe
    .target Thotar
step << Rogue
    #xprate <1.5
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal << Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-17 Les Tarides << Troll !Rogue !Mage !Priest/Orc !Rogue !Warlock


step << Warrior/Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step << Warrior/Shaman
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Warrior/Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Warrior
    #xprate <1.5
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Rendez la quêteLe vétéran Uzzek
    .accept 1498 >>Acceptez la quête La voie de la défense
    .target Uzzek
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Rendez la quête La voie de la défense
    .accept 1502 >>Acceptez la quête Thun'grim Mirefeu
    .target Uzzek
step << Shaman
    #xprate <1.5
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << Warrior/Shaman
    #hardcore
    #completewith PoolsPickup
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Voyagez à la Croisée
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warrior/Shaman
    #label PoolsPickup
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acceptez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << Warrior/Shaman
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step << Warrior/Shaman
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step << Warrior/Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target Gazrog
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Warrior/Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
step << Warrior/Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    >>Ne volez PAS vers Orgrimmar !
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Acceptez la quête Spores fongiques
    .accept 1492 >>Acceptez Maître des quais Dizzywig
    .target Apothecary Helbrim
step << Warrior/Shaman
    #completewith next
    >>Récupérez les |cRXP_LOOT_Laden Mushrooms|r autour des Bassins oubliés
    >>|cRXP_WARN_Restez le plus possible à distance des |cRXP_ENEMY_Kolkar|r en ramassant les champignons. Ils sont niveau 12-14
    >>|cRXP_WARN_La quête suivante a le très puissant |cRXP_FRIENDLY_Cauldron Stirrer|r en récompense. Vous pouvez passer cette quête pour l'instant si vous ne prévoyez pas de l'utiliser
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    .goto The Barrens,45.06,22.54
    >>Plongez dans l'eau vers la |cRXP_PICK_Fissure bouillonnante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
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
step << Warrior/Shaman
    #hardcore
    #completewith FungalSporesComplete
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Voyagez à la Croisée
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warrior/Shaman
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helbrim|r
    >>Attendez que le RP se termine
    >>Cette quête est une quête chronométrée de 45 minutes
    .turnin 848 >> Rendez la quête Spores fongiques
    .timer 7,Spores fongiques RP
    .accept 853 >> Acceptez la quête L'apothicaire Zamah
    .target Apothecary Helbrim
step << Warrior/Shaman
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Achetez une ou plusieurs|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Shaman
    #sticky
    #completewith ZamahTurnin2
    +|cRXP_WARN_Vous faites une quête chronométrée, ne passez pas ABS. Elle sera rendue à peu près 30 minutes après qu'elle soit prise|r
    .isOnQuest 853
step << Warrior/Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Rendez la quête Les Bassins oubliés
    .target Tonga Runetotem
step << Warrior/Shaman
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Voyagez vers le sud par la route vers le Camp Taurajo
step << Warrior/Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Prenez le chemin de vol du Camp Taurajo
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .accept 749 >>Acceptez la quête La caravane ravagée
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.715,59.325
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Acceptez la quête Chasse aux rapaces
    .target Harken Windtotem
step << Warrior/Shaman
    .goto Mulgore,47.513,60.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .accept 767 >>Acceptez la quête Le Rite de vision
    .accept 746 >>Acceptez la quête Les fouilles des nains
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.3,62.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Acceptez la quête Le danger des Furies-des-vents
    .target Ruul Eagletalon
step << Warrior/Shaman
    .goto Mulgore,47.8,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Rendez la quête Le Rite de vision
    .accept 771 >>Acceptez la quête Le Rite de vision
    .target Zarlman Two-Moons
step << Warrior/Shaman
    .goto Mulgore,47.0,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Acceptez la quête Mazzranache
    .target Maur Raincaller
step << Warrior/Shaman
    #xprate <1.5
    #completewith EnterTB
    >>Tuez les |cRXP_ENEMY_Loups|r, les |cRXP_ENEMY_Pumas|r, les |cRXP_ENEMY_Trotteurs|r et les |cRXP_ENEMY_Rapaces|r en faisant des quêtes dans toute la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith EnterTB
    >>Tuez les |cRXP_ENEMY_Loups|r, les |cRXP_ENEMY_Pumas|r, les |cRXP_ENEMY_Trotteurs|r et les |cRXP_ENEMY_Rapaces|r en faisant des quêtes dans toute la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith EnterTB
    >>Gardez un œil ouvert sur le |cRXP_ENEMY_Hurleur fantomatique|r. Dépouillez-le pour sa |T134358:0|t[|cRXP_LOOT_Cape griffée par les démons|r]. Utilisez la pour commencer la quête
    >>|cRXP_WARN_N'acceptez pas encore la quête|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step << Warrior/Shaman
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Ramassez les |cRXP_PICK_Pommes de pin|r. Elles se trouvent sur le sol sous les arbres
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Récupérez les |cRXP_PICK_Well Stones|r autour du puits
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarlman|r
    >>Ne suivez pas le loup qui va apparaître
    .turnin 771 >>Rendez la quête Le Rite de vision
    .accept 772 >>Acceptez la quête Le Rite de vision
    .target Zarlman Two-Moons
step << Warrior/Shaman
    #label EnterTB
    #completewith ZamahTurnin2
    .goto Thunder Bluff,32.0,66.9,60,0
    .zone Thunder Bluff >> Voyagez jusqu'à Pitons-du-Tonnerre
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .train 199 >>Achetez la compétence pour porter des Masses à deux mains
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Ansekhwa
    .money <0.010
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .accept 76156 >>Acceptez la quête La traque de la Terre-Mère
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Prenez le chemin de vol des Pitons-du-Tonnerre << !Tauren
    .target Tal
step << Warrior/Shaman
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Voyagez à la Cote des Esprits et entrez dans le bassin des Visions
step << Warrior/Shaman
    #label ZamahTurnin2
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Rendez la quête L'apothicaire Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Warrior/Shaman
    #optional
    #completewith RiteofWisdomTurnin
    +|cRXP_WARN_Équipez le|r |T135145:0|t[Touille-chaudron]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40 >> Sortez de la grotte, puis quittez les Pitons-du-Tonnerre en sautant sous le pont
    .zoneskip Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #completewith SacredBurialTurnIn
    >>Tuez les |cRXP_ENEMY_Loups|r, les |cRXP_ENEMY_Pumas|r, les |cRXP_ENEMY_Trotteurs|r et les |cRXP_ENEMY_Rapaces|r en faisant des quêtes dans toute la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith SacredBurialTurnIn
    >>Tuez les |cRXP_ENEMY_Loups|r, les |cRXP_ENEMY_Pumas|r, les |cRXP_ENEMY_Trotteurs|r et les |cRXP_ENEMY_Rapaces|r en faisant des quêtes dans toute la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith SacredBurialTurnIn
    >>Gardez l'oeil ouvert pour le |cRXP_ENEMY_Hurleur fantomatique|r. Dépouillez-le pour sa |T134358:0|t[|cRXP_LOOT_Cape griffée par les démons|r]
    >>|cRXP_WARN_N'acceptez pas encore la quête|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .unitscan Ghost Howl
step << Warrior/Shaman
    #label RiteofWisdomTurnin
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiserunner|r
    >>|cRXP_WARN_Il se trouve dans la grotte au sud-ouest des Pitons-du-Tonnerre|r
    .turnin 772 >>Rendez la quête Le Rite de vision
    .accept 773 >>Acceptez la quête Le Rite de sagesse
    .target Seer Wiserunner
step << Warrior/Shaman
    #completewith next
    .destroy 4823 >>Détruisez l' |T134712:0|t[Eau des Prophètes] comme vous n'en avez plus besoin
step << Warrior/Shaman
    #loop
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Tuez |cRXP_ENEMY_Windfury Wind Witches|r et les |cRXP_ENEMY_Windfury Harpies|r. Dépouillez-les pour leur |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step << Shaman
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Terrassiers de Bael'dun|r et les |cRXP_ENEMY_Experts de Bael'dun|r. Dépouillez-les pour la |cRXP_LOOT_Clé de l’entrepôt d’artéfact|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    .goto Mulgore,31.27,49.87
    >>Tuez les |cRXP_ENEMY_Terrassiers de Bael'dun|r et les |cRXP_ENEMY_Experts de Bael'dun|r. Dépouillez-les pour leur |cRXP_LOOT_Piolets de prospecteur|r
    .use 4702 >> Détruisez les |T134707:0|t[Piolets] à la Forge
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,33.10,47.69,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Tuez les |cRXP_ENEMY_Terrassiers de Bael'dun|r et les |cRXP_ENEMY_Experts de Bael'dun|r. Dépouillez-les pour la |cRXP_LOOT_Clé de l’entrepôt d’artéfact|r
    >>|cRXP_WARN_Faites attention les |cRXP_ENEMY_Bael'dun Appraisers|r lancent|r [Soins Inférieurs] (Sort à distance: Se soignent eux-mêmes ou un allié à moins 50% de vie pour environ 75 points de vie)
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Ouvrez le coffre de l' |cRXP_PICK_Entrepôt de l’Artéfact|r. Récupérez l' |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Équipez|r l' |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith SacredBurialTurnIn
    .aura 408828 >>|cRXP_WARN_Tuez les ennemis ayant subi des dégâts de votre|r |T136026:0|t[Horion de terre] |cRXP_WARN_au moins une fois. Faites-le 10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTE: Vous devez le faire sur les ennemis donnant de l'expérience pour obtenir des stacks|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior/Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Acceptez la quête Cimetière sacré
    .target Lorekeeper Raintotem
step << Warrior/Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Rendez la quête Le Rite de sagesse
    .target Ancestral Spirit
step << Warrior/Shaman
    #loop
	.goto Mulgore,61.12,22.88,0
	.goto Mulgore,59.85,25.62,40,0
	.goto Mulgore,61.14,22.93,40,0
	.goto Mulgore,61.77,22.49,40,0
	.goto Mulgore,62.18,22.05,40,0
	.goto Mulgore,62.32,20.89,40,0
	.goto Mulgore,61.62,19.50,40,0
	.goto Mulgore,60.44,19.50,40,0
	.goto Mulgore,60.16,21.06,40,0
	.goto Mulgore,60.41,21.96,40,0
	.goto Mulgore,61.12,22.88,40,0
    >>Tuez les |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    #label SacredBurialTurnIn
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Rendez la quête Cimetière sacré
    .target Lorekeeper Raintotem
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Utilisez l'|r |T134918:0|t|cRXP_LOOT_[Icône sulfureuse]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Éclair de lave)]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Loups|r, les |cRXP_ENEMY_Pumas|r, les |cRXP_ENEMY_Trotteurs|r et les |cRXP_ENEMY_Rapaces|r en faisant des quêtes dans toute la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith next
    >>Tuez les |cRXP_ENEMY_Loups|r, les |cRXP_ENEMY_Pumas|r, les |cRXP_ENEMY_Trotteurs|r et les |cRXP_ENEMY_Rapaces|r en faisant des quêtes dans toute la zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
    .goto Mulgore,53.74,48.17
    >>Cliquez sur les |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Rendez la quête La caravane ravagée
    .accept 751 >>Acceptez la quête La caravane ravagée
step << Warrior/Shaman
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Rendez la quête Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior/Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skorn|r
    .accept 770 >>Acceptez la quête La cape griffée par les démons
    .turnin 770 >>Rendez la quête La cape griffée par les démons
    .target Skorn
    .target Skorn Whitecloud
    .use 4854
    .itemcount 4854,1
step << Warrior/Shaman
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .turnin 746 >>Rendez la quête Les fouilles des nains
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.35,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target Ruul Eagletalon
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target Harken Windtotem
    .isQuestComplete 761
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm|r
    .train 547 >> Apprenez vos sorts de classe
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
    .xp <12,1
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 751 >> Rendez la quête La caravane ravagée
    .accept 764 >> Acceptez la quête La KapitalRisk
    .accept 765 >> Acceptez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Voyagez à la Mine de la KapitalRisk
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Ouvrez les |cRXP_PICK_Fournitures pour dynamitage|r à l'intérieur et à l'extérieur de la mine de l'autre côté. Récupérez-les pour les |cRXP_LOOT_Charges d’hydroglycérine excavatrices|r
    >>|cRXP_WARN_Restez sur les niveaux supérieurs de la grotte si cela est possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #completewith next
    >>Tuez les |cRXP_ENEMY_Venture Co. Workers|r et les |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Warrior/Shaman
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Entrez dans la mine et collez le mur de droite/à l'est. Tuez |cRXP_ENEMY_Supervisor Fizsprocket|r. Dépouillez-le pour son |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step << Warrior/Shaman
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
step << Shaman
    #season 2
    #loop
    .goto Mulgore,61.72,35.15,0
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Ouvrez les |cRXP_PICK_Fournitures pour dynamitage|r à l'intérieur et à l'extérieur de la mine de l'autre côté. Récupérez-les pour les |cRXP_LOOT_Charges d’hydroglycérine excavatrices|r
    >>|cRXP_WARN_Restez sur les niveaux supérieurs de la grotte si cela est possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >> Montez votre expérience jusqu'à 7150+/8700xp
step << Warrior/Shaman
    #optional
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >> Montez votre expérience jusqu'à 6375+/8700xp
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    >>Il patrouille le long de la route à l'est
    .turnin 764 >>Rendez la quête La KapitalRisk
    .turnin 765 >>Rendez la quête Le superviseur Vibrouage
	.unitscan Morin Cloudstalker
step << Warrior
    #xprate >1.49
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Voyagez jusqu'à Pitons-du-Tonnerre
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 76156 >>Rendez la quête La traque de la Terre-Mère
    .accept 76160 >>Acceptez la quête La traque de la Terre-Mère
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Acceptez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    #completewith next
    .zone Mulgore >>Prenez l'ascenseur nord pour descendre à Mulgore
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Windfury Sorceresses|r. Dépouillez-les pour leur |cRXP_LOOT_Azure Feathers|r
    >>Tuez les |cRXP_ENEMY_Windfury Matriarchs|r. Dépouillez-les pour leur |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    #loop
    .goto Mulgore,30.89,22.41,0
    .goto Mulgore,30.89,22.41,20,0
    .goto Mulgore,29.57,23.43,20,0
    .goto Mulgore,29.63,26.32,20,0
    >>Ramassez les |cRXP_LOOT_Cônes de Furie-des-vents|r sur le sol
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
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
    .train 410104,1
step << Shaman
    #season 2
    >>Utilisez le |T133748:0|t[Mortier et pilon] pour créer l' |T133213:0|t[Onguent de pin]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Rendez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 76160 >>Rendez la quête La traque de la Terre-Mère
    .accept 76240 >>Acceptez la quête La traque de la Terre-Mère
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Achetez un|r |T133894:0|t[Goujon brillant cru] |cRXP_BUY_de l'Hôtel des ventes|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Voyagez vers |cRXP_FRIENDLY_Sewa Cours-la-brume|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kah Cours-la-brume|r
    .train 7734 >>Apprenez la |T136245:0|t[Pêche]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sewa Cours-la-brume|r
    >>|cRXP_BUY_Achetez une|r |T132932:0|t[Canne à pêche] |cRXP_BUY_et une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_chez elle|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Équipez la|r |T132932:0|t[Canne à pêche]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Attachez la|r |T134335:0|t[Verroterie brillante] |cRXP_WARN_à votre|r |T132932:0|t[Canne à pêche]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pêchez dans l'étang jusqu'à obtenir un |T133894:0|t[|cRXP_LOOT_Goujon brillant cru|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Utilisez l' |T132147:0|t[Ensemble de couteaux] pour créer les |T134007:0|t[Morceaux de poissons]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boarton Ombre-Totem|r
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 76240 >>Rendez la quête La traque de la Terre-Mère
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    .abandon 766 >> Abandonnez la quête Mazzranache
step << Warrior/Shaman
    #xprate >1.49
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .subzoneskip 380
    .bindlocation 380,1
    .use 6948
step << Warrior/Shaman
    #xprate <1.5
    #completewith MargozTurnIn
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .subzoneskip 362
    .bindlocation 362,1
    .use 6948
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Swart
    .xp <12,1
step << Shaman
    #xprate <1.5
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
    #xprate <1.5
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Rendez la quête L'appel du feu
    .accept 1525 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Warrior
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    .vendor >>|cRXP_BUY_Achetez-lui les|r |T133634:0|t[Petites sacoches marron] |cRXP_BUY_|r |cRXP_BUY_|r
    .target Jark
step << Hunter
    #completewith MargozTurnIn
    +Domptez un |cRXP_ENEMY_Venomtail Scorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate <1.5
    #completewith next
    .subzone 371 >>Voyagez vers la Caverne des Terrevent
step << Shaman
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
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
step
    #xprate <1.5 << !Hunter
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #xprate <1.5 << !Hunter
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Rendez la quête Margoz
    .accept 827 >>Acceptez la quête Rocher du crâne
    .target Margoz
    .isQuestTurnedIn 806
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Voyagez vers la Caverne des Terrevent
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la grotte du rocher du Crâne. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .train 401768,1
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Mage
    #season 2
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la grotte du rocher du Crâne. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate <1.5
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
    .itemcount 203752,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,55.12,10.10,60 >> Voyagez vers le rocher du Crâne
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Tuez |cRXP_ENEMY_Gazz'uz|r. Dépouillez-le pour son [|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Eye of Burning Shadow|r] pour commencer la quête|r
    >>|cRXP_WARN_Utilisez votre|r |T134712:0|t[Colle très collante] |cRXP_WARN_sur le|r |cRXP_ENEMY_Marcheur du Vide|r |cRXP_WARN_pour éviter d'être touché, et vos|r |T134829:0|t[Potions de soin] |cRXP_WARN_pour vous soigner. N'hésitez à vous cacher (LoS) pour éviter |rles Traits de l'ombre|cRXP_ENEMY_|r de |cRXP_WARN_Gazz'uz|r 
    >>Vous pouvez aller dans les points d'eau dans la grotte pour vous échapper (evade) des |cRXP_ENEMY_Voidwalker|r après avoir tué |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Faites attention comme il est TRÈS difficile. Vous pouvez passer cette quête si vous en avez besoin|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Acceptez la quête Ombres ardentes
    .use 4903
	.unitscan Gazz'uz
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
    .goto Durotar,53.77,8.87,15,0
    >>Tuez les |cRXP_ENEMY_Burning Blade Orcs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r et pour un |cRXP_LOOT_Lieutenant's Insignia|r
    >>Arrêtez de cherche une |cRXP_LOOT_Lieutenant's Insignia|r si vous n'avez pas de chance et qu'il ne tombe pas
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Ravine
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << !Hunter
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Rendez la quête Rocher du crâne
    .accept 829 >>Acceptez la quête Neeru Lamefeu
    .target Margoz
    .isQuestTurnedIn 806
step
    #xprate <1.5
    #label Ravine
    #completewith next
    .subzone 370 >> Descendez dans le Ravin Asséché
step
    #xprate <1.5
    #loop
    .goto Durotar,53.98,23.70,0
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
    #xprate <1.5
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 813 << Warrior/Shaman/Hunter
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Avancez dans la grotte vers |cRXP_FRIENDLY_Rezlak|r
step
    #xprate <1.5
    #label SecuringLinesTurnIn
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto Durotar,38.73,22.04,0
    .goto Durotar,42.64,20.45,60,0
    .goto Durotar,40.43,19.72,60,0
    .goto Durotar,40.59,16.41,60,0
    .goto Durotar,38.79,17.00,60,0
    .goto Durotar,38.73,22.04,60,0
    >>Terminez de tuer les |cRXP_ENEMY_Scorpides queue-venin|r. Dépouillez-les pour leur |cRXP_LOOT_Glandes à venin|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << Warrior/Shaman/Hunter
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
step << !Rogue
    #xprate <1.5 << Shaman/Warrior
    .goto Orgrimmar,47.21,70.27,15,0
    .goto Orgrimmar,47.55,68.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendez et réparez
    .target Urtharo
step << Shaman/Warrior
    #xprate <1.5
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
step << Shaman/Warrior
    #xprate <1.5
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
step << Shaman
    #xprate <1.5
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez-lui une |r |T135419:0|t[Hache de jet aiguisée] |cRXP_BUY_|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >> Vendez au marchand
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Équipez la|r |T135421:0|t[Hache de jet aiguisée] |cRXP_WARN_lorsque vous passez au niveau 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Apprenez vos sorts de classe
    .target Pephredo
step << Warrior
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Voyagez jusqu'à la Vallée de l'Honneur
step << Warrior
    #xprate <1.5
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
step << !Warrior !Shaman !Hunter
    #label Admiralorders1
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .accept 5727 >>Acceptez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Rendez la quête Ennemis cachés
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acceptez la quête La Main brisée << Orc Rogue/Troll Rogue
    .target Therzok
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Rendez la quête La recherche de l'antidote
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Mirket
step
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .turnin 832 >>Rendez la quête Ombres ardentes
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #xprate <1.5 << !Hunter
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_Elle se trouve à l'étage supérieur de la Herse|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Durotar,47.05,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Warrior !Shaman !Hunter
    #hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entrez dans le Gouffre de Ragefeu
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .turnin 812 >>Rendez la quête Besoin d'un remède
    .target Rhinag
step << Warrior
    #xprate <1.5 << !Hunter
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Descendez dans les falaises du Tonnerre et tuez les |cRXP_ENEMY_Foudroyants|r. Dépouillez-les pour leurs |cRXP_ENEMY_Écailles|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,34.80,32.84,50,0 << !Warrior
    .goto Durotar,34.81,37.02,50,0 << !Warrior
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Voyagez au sud le long de la rivière vers le poste de Guet-Lointain
    >>Tuez les |cRXP_ENEMY_Dreadmaw Crocolisks|r sur le chemin. Dépouillez-les pour la |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Passez et abandonnez cette quête si elle ne tombe pas|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Rendez la quête L'égaré
    .target Misha Tor'kren
    .isQuestComplete 816
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Rendez la quête Ak'Zeloth
    .accept 924 >>Acceptez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
step << Mage
    #xprate >1.49
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la grotte du rocher du Crâne. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate >1.49
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
    .itemcount 203752,1
step << Rogue/Mage/Priest/Warlock
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    >>|cRXP_WARN_Invoquez de l'eau en attendant|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandonnez la quête L'égaré
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate <1.99
#name 10-12 Tirisfal
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-14 Forêt des Pins argentés << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip dans le Quartier Magique en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>Quittez Undercity
    .zoneskip Undercity,1
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >> Voyagez jusqu'à Brill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .accept 354 >>Acceptez la quête Morts dans la famille
    .accept 362 >>Acceptez la quête Les moulins hantés
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
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
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .accept 1885 >>Acceptez la quête Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .accept 1881 >> Acceptez la quête Parler à Anastasia
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Mme Winters|r
    >>|cRXP_BUY_Achetez-lui une ou plusieurs|r |T133634:0|t[Petites sacoches marron] |cRXP_BUY_|r |cRXP_FRIENDLY_|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #season 0,1
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #season 2
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .maxlevel 10 << !Warlock !Rogue
    .maxlevel 11 << Warlock
    .train 400095,1 << Rogue
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .maxlevel 10
step
    #season 0,1
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Avis de recherche|r.
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    #season 2
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Avis de recherche|r.
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
    .maxlevel 11 << !Warrior !Warlock !Rogue
    .maxlevel 12 << Warlock/Rogue
    .maxlevel 13 << Warrior
    .train 400095,1 << Rogue
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sevren|r à l'intérieur du bâtiment
    .accept 358 >>Acceptez la quête Les Profanateurs
    .target Magistrate Sevren
    .maxlevel 10
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .accept 367 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Acceptez la quête Une tâche putride
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Cliquez sur le|r |cRXP_WARN_Déclencheur du mausolée|r |cRXP_WARN_au sol. Cela va invoquer|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #optional
    #completewith Pumpkins
    >>Tuez tous les |cRXP_ENEMY_Sombredogues|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Vous recevrez le|r |T133849:0|t[Sable de léthargie] |cRXP_WARN_à la suite de cette quête|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
step
    #optional
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Tuez les |cRXP_ENEMY_Morts pourrissants|r et |cRXP_ENEMY_Cadavres décomposés|r. Dépouillez-les pour leurs |cRXP_LOOT_Griffes|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .accept 365 >>Acceptez la quête Les champs du Chagrin
    .target Deathguard Simmer
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrogarde Simmer|r
    .accept 365 >>Acceptez la quête Les champs du Chagrin
    .target Deathguard Simmer
    .maxlevel 10
step << Mage
    #season 2
    #completewith next
    .goto Tirisfal Glades,36.72,50.94,0
    .goto Tirisfal Glades,34.78,51.24,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Ramassez les |cRXP_LOOT_Citrouilles|r dans le champ.
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r.
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Tuez tous les |cRXP_ENEMY_Sombredogues|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 427
step
    #optional
    #hardcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >> Retournez à Brill
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Acceptez la quête La chute des moulins
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .isQuestComplete 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 365 >> Rendez la quête Les champs du Chagrin
    .accept 407 >> Acceptez la quête Les champs du Chagrin
    .isQuestComplete 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 407 >> Acceptez la quête Les champs du Chagrin
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .accept 370 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    #label ProofofDemiseTurnin
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1478 >> Rendez la quête Les invocations de Halgar
    .accept 1473 >> Acceptez la quête La créature du Vide
    .isQuestAvailable 1504
step << Mage
    #optional
    .abandon 1883 >> Abandonnez la quête Parler à Un'thuwa, sinon vous ne pourrez pas accepter la quête suivante
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1881 >> Rendez la quête Parler à Anastasia
    .accept 1882 >> Acceptez la quête La ferme des Balnir
    .target Anastasia Hartwell
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Acceptez la quête Toucher de faiblesse
    .turnin 5658 >> Rendez la quête Toucher de faiblesse
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .zoneskip Undercity,1
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith KillDevlin
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Sortez de Fossoyeuse par les Égouts
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Sortez de Fossoyeuse par les Égouts
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>Récupérez les |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    >>|cRXP_WARN_Vous n'avez pas besoin de compléter cette étape pour l'instant|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Ouvrez le |cRXP_PICK_Coffre de Perrine|r sur le sol pour le |T133733:0|t[Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step
    #optional
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,51.03,69.55,0
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Tuez le |cRXP_ENEMY_Capitaine Perrine|r, les |cRXP_ENEMY_Zélotes|r et les |cRXP_ENEMY_Missionnaires|r.
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Ramassez le |cRXP_PICK_Perrine's Chest|r sur le sol pour le [Grimoire d'Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Retournez dans Fossoyeuse par les égoûts
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r dans le Quartier Magique
    .turnin 1473 >> Rendez la quête La créature du Vide
    .accept 1471 >> Acceptez la quête Le lien
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>Utilisez les [Runes d'invocation] au cercle d'invocation
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Rendez la quête Le lien
    .target Carendin Halgar
    .isQuestAvailable 1504
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Undercity,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> Quittez Undercity
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >> Voyagez vers le nord-ouest en direction des Moulins d'Agamand
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>La |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r] |cRXP_WARN_peut tomber sur ces mobs. Acceptez la quête si vous la récupérez|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
step
    #completewith ThurmanGregor
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Tuez |cRXP_ENEMY_Devlin|r. Dépouillez-le pour ses |cRXP_LOOT_Restes|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>Tuez |cRXP_ENEMY_Nissa|r. Dépouillez-la pour ses |cRXP_LOOT_Restes|r. Elle peut être à l'intérieur du bâtiment
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tuez |cRXP_ENEMY_Thurman|r et |cRXP_ENEMY_Gregor|r. Dépouillez-les pour leur |cRXP_LOOT_Restes|r. Ils peuvent patrouiller aux alentours
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
    .isOnQuest 354
step
    #loop
    #label MillsOverun
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tuez les |cRXP_ENEMY_Soldats|r et les |cRXP_ENEMY_Ossomanciens|r. Dépouillez-les pour leur |cRXP_LOOT_Côtes|r et leurs |cRXP_LOOT_Crânes|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #requires MillsOverun
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Descendez les collines.
    >>|cRXP_WARN_Soyez prudent. Ne prenez pas trop de dégâts de chute. Suivez le point de repère pour rester en sécurité|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnolls|r et les |cRXP_ENEMY_Bâtards|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Tuez |cRXP_ENEMY_Oeil-de-ver|r. Dépouillez-le pour sa |cRXP_LOOT_Patte|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #optional
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    >>Tuez les |cRXP_ENEMY_Murlocs|r. Dépouillez-les pour leurs |cRXP_LOOT_Écailles|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    #optional
    #completewith RotHideGnolls
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #season 2
    #optional
    #completewith RotHideGnolls
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    >>Tuez les |cRXP_ENEMY_Bâtards|r et |cRXP_ENEMY_Les profanateurs|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    #softcore
    #completewith MillsTurnin
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #optional
    #hardcore
    #completewith MillsTurnin
    .subzone 159 >> Voyagez jusqu'à Brill
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .turnin 370 >>Rendez la quête En guerre avec la Croisade écarlate
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .isQuestComplete 370
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Utilisez la |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r] pour créer |T134328:0|t[|cRXP_LOOT_Note de service écarlate urgente falsifiée|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jamie Nore|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r |cRXP_FRIENDLY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,61.58,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette Farthing|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target Yvette Farthing
    .isOnQuest 361
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
    .isQuestComplete 362
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Rendez la quête Parler à Coleman << Warrior
    .accept 1821 >>Acceptez la quête L'héritage des Agamand << Warrior
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r au deuxième étage de l'auberge
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_Achetez-lui du|r |T132815:0|t[Lait glacé] |cRXP_BUY_et des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r << Warlock/Hunter
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 359 >>Rendez la quête En mission pour les Réprouvés
    .accept 360 >>Acceptez la quête Retourner voir le Magistrat
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    #completewith HorrorsandSpirits
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Cueillez n'importe laquelle des plantes au sol pour obtenir les |cRXP_PICK_Gueules-de-loup de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Tuez les |cRXP_ENEMY_Horreurs sanguinolentes|r et les |cRXP_ENEMY_Esprits vagabonds|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>Utilisez le |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r pour créer les |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_LOOT_[Notes de sort : Illumination]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Illumination)]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Priest
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Récupérez les |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Tuez le |cRXP_ENEMY_Capitaine Vachon|r et les |cRXP_ENEMY_Frères écarlates|r
    >>|cRXP_WARN_Attention !|r Les |cRXP_ENEMY_Frères écarlates|r |cRXP_WARN_peuvent lancer|r |T135929:0|t[Soins inférieurs]
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Récupérez les |cRXP_LOOT_Anneaux de la Croisade écarlate|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Tuez les |cRXP_ENEMY_Tisse-nuits vicieuses|r. Dépouillez-les pour leur |cRXP_LOOT_Toxines|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> Retournez vers |cRXP_FRIENDLY_Linnea|r
step
    #optional
    #completewith next
    >>Terminez de tuer les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    >>|cRXP_WARN_Vous pouvez passer cette quête si vous n'avez pas eu chance|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .turnin 356 >>Rendez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Achetez-lui une|r |T132891:0|t[Bobine de fil grossier] |cRXP_BUY_|r |cRXP_FRIENDLY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .isQuestComplete 371
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .target Magistrate Sevren
    .isQuestTurnedIn 359
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 355 >>Rendez la quête Parler à Sevren
    .accept 408 >>Acceptez la quête La crypte familiale
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step
    #optional
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gretchen|r à l'étage
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588,1 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145,1 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766,1 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Voyagez à la crypte des Moulins d'Agamand
    .isOnQuest 1821
step << Warrior
    #completewith CaptainDargol
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ancêtres gémissantes|r et les |cRXP_ENEMY_Ancêtres pourrissants|r.
    >>|cRXP_WARN_Soyez prudent ! Les mobs de cette crypte réapparaissent dynamiquement !|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Tuez le |cRXP_ENEMY_Capitaine Dargol|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r. Il est au fond de la crypte
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step << Warrior
    #completewith next
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Tuez les |cRXP_ENEMY_Ancêtres gémissantes|r et les |cRXP_ENEMY_Ancêtres pourrissants|r.
    >>|cRXP_WARN_Soyez prudent ! Les mobs de cette crypte réapparaissent dynamiquement !|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << skip --Warrior
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Sautez sur l'un des râteliers d'armes. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .isQuestComplete 408
step << Warrior
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Warrior
    #hardcore
    #completewith next
    .subzone 159 >>Voyagez jusqu'à Brill
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 408 >>Rendez la quête La crypte familiale
    .target Magistrate Sevren
    .isQuestComplete 408
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1821 >>Rendez la quête L'héritage des Agamand
    .target Coleman Farthing
    .isQuestComplete 1821
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1822 >>Une arme en héritage
    .target Coleman Farthing
    .isQuestTurnedIn 1821
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Montagnard capturé|r en bas des escaliers au fond de l'auberge
    .turnin 492 >> Rendez la quête Une Peste nouvelle
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 588,1 >>Apprenez |T135926:0|t[Feu intérieur]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beryl|r au deuxième étage
	.train 6074 >> Apprenez vos sorts de classe
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 145,1 >> Apprenez |T135812:0|t[Boule de feu (Rang 3)]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r au second étage
    .train 2137 >> Apprenez vos sorts de classe
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Apprenez |T132223:0|t[Fulgurance]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Apprenez vos sorts de classe
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1766,1 >> Apprenez |T132219:0|t[Coup de pied]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r au second étage
    .train 1758 >> Apprenez vos sorts de classe
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Apprenez [Captation de vie]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r au Quartier Magique
    .turnin 1882 >>Rendez la quête La ferme des Balnir
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Fossoyeuse
    >>|cRXP_WARN_Passez cette étape si vous avez déjà pris le chemin de vol !|r
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Louis Warren|r dans le Quartier des Marchands
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Rhyker|r
    >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lavinia Crowe|r
    .train 7411 >> Apprenez |T136244:0|t[Enchantement]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.77,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Josef Gregorian|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Transformez toutes vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en|r |T132890:0|t[Rouleaux d'étoffe de lin]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Josef Gregorian|r
    .train 7623 >> Apprenez |T132662:0|t[Robe marron en lin]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Millie Gregorian|r
    >>|cRXP_BUY_Achetez-lui des|r |T132891:0|t[Bobines de fil grossier] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Fabriquez autant de|r |T132662:0|t[Robes marron en lin] |cRXP_WARN_que possible|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Achetez-lui un|r |T133942:0|t[Bâtonnet en cuivre] |cRXP_BUY_et du|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Désenchantez tous les|r |T132662:0|t[Robe marron en lin] |cRXP_WARN_que vous avez tissé et fabriqué un|r |T135225:0|t[Bâtonnet runique en cuivre]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malcomb Wynn|r
    .train 14293 >> Apprenez |T135139:0|t[Baguette magique inférieure]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Créez une|r |T135139:0|t[Baguette magique inférieure]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Équipez la|r |T135139:0|t[Baguette magique inférieure]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <1.5
    #optional
    .abandon 806 >> Abandonnez la quête De sombres orages
step
    #optional
    .abandon 408 >> Abandonnez la quête La crypte familiale
step << Warrior
    #optional
    .abandon 1821 >> Abandonnez la quête L'héritage des Agamand
step
    #optional
    #xprate >1.49
    .abandon 830 >> Abandonnez la quête Les ordres de l'amiral
step
    #label LeaveUndercity3
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
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .zoneskip Silverpine Forest
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 1-7 Durotar
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 7-13 Durotar


step << !Orc !Troll
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Orcs et les Trolls. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Acceptez la quête Votre place en ce monde
    .target Kaltunk
step
    #season 2
    .xp 2 >> Tuez quatre |cRXP_ENEMY_Sangliers tachetés|r pour atteindre le niveau 2
    >>|cRXP_WARN_Tuez des créatures jusqu'à avoir 15 pièces de cuivre à vendre au marchand << !Warlock !Priest
    >>|cRXP_WARN_Tuez des créatures jusqu'à avoir 30 pièces de cuivre à vendre au marchand << Warlock/Priest
    .goto Durotar,44.32,71.16
    .mob Mottled Boar
step
    #season 2
    .goto Durotar,42.73,68.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >>|cRXP_BUY_Vendez les objets marchands et achetez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] et la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r] << Orc Warrior
    >>|cRXP_BUY_Vendez les objets marchands et achetez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] << Troll Warrior
    >>|cRXP_BUY_Vendez les objets marchands et achetez l'|r |T134920:0|t[|cRXP_FRIENDLY_Icône kajarique|r] |cRXP_BUY_et l'|r |T134918:0|t[|cRXP_FRIENDLY_Icône dyadique|r] << Shaman
    >>|cRXP_BUY_Vendez les objets au marchand et achetez toutes les runes importantes pour AoE|r << Mage
    >>|cRXP_BUY_Vendez votre surplus et achetez toutes les runes suivantes:|r << Hunter/Warlock/Rogue/Priest
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Orc Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >> Javelot de glace n'est utile que pour rendre une quête plus tard << Mage
    >>|cRXP_WARN_Vous obtiendrez le reste des runes plus tard|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] pour apprendre |T132342:0|t[Ivresse de la victoire]<< Warrior
    .train 415936 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Bombe vivante|r] pour apprendre |T236220:0|t[Bombe vivante] << Mage
    .train 401759 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Incandescence|r] pour apprendre |T236207:0|t[Incandescence] << Mage
    .train 440858 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Orbe gelé|r] pour apprendre |T135851:0|t[Orbe gelé] << Mage
    .train 401760 >> Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Javelot de glace|r] pour apprendre |T135844:0|t[Javelot de glace] << Mage
    .train 401768 >> Utilisez le |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Flamme vivante|r] pour apprendre |T135820:0|t[Flamme vivante]  << Mage
    .train 410121 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r] pour apprendre |T236176:0|t[Tir de la chimère] << Hunter
    .train 410122 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] pour apprendre |T132266:0|t[Loup solitaire] << Hunter
    .train 416086 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de combat rapproché|r] pour apprendre |T132394:0|t[Spécialiste de la mêlée] << Hunter
    .train 440563 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de guérilla|r] pour apprendre |T132171:0|t[Attaque éclair] << Hunter
    .train 415423 >> Utilisez le |T133739:0|t[|cRXP_FRIENDLY_Traité sur l’aspect de la vipère|r] pour apprendre |T132160:0|t[Aspect de la vipère]|r] << Hunter
    .train 416009 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r] pour apprendre |T136150:0|t[Tactique démoniaque] << Warlock
    .train 425476 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] pour apprendre |T237562:0|t[Pacte démoniaque] << Warlock
    .train 416015 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Incinérer|r] pour apprendre |T135789:0|t[Incinérer] << Warlock
    .train 403919 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r] pour apprendre |T236298:0|t[Hanter] << Warlock
    .train 403619 >> Utilisez le |T133733:0|t[|cRXP_FRIENDLY_Grimoire de Gangrarmure|r] pour apprendre |T136156:0|t[Gangrarmure] |cRXP_WARN_ce sera votre armure principale|r << Warlock
    .train 402852 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] pour apprendre |T237570:0|t[Homoncules] << Priest
    .train 425447 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r] pour apprendre |T236317:0|t[Assaut frénétique] << Orc Warrior
    .train 410111 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ordre de tuer|r] pour apprendre |T236174:0|t[Tir mortel] << Hunter
    .train 409580 >> Utilisez le |T133739:0|t[|cRXP_FRIENDLY_Traité sur Cœur de lion|r] pour apprendre |T132185:0|t[Cœur de lion] << Hunter
    .train 400101 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Pas de l'ombre|r] pour apprendre |T132303:0|t[Pas de l'ombre] << Rogue
    .train 432301 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup bas|r] pour apprendre |T236285:0|t[Avantage déloyal] << Rogue
    .train 400105 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r] pour apprendre |T132323:0|t[Frappe-ténèbres] << Rogue
    .train 424984 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] pour apprendre |T132375:0|t[Coup de sabre] << Rogue
    .train 415922 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Bretteur|r] pour apprendre |T134538:0|t[Tromblon] << Rogue
    .equip 18 >> Équipez l'|T134920:0|t[|cRXP_FRIENDLY_Icône kajarique|r], vous pourrez l'utiliser après 30 secondes pour apprendre |T237582:0|t[Explosion de lave] << Shaman
    .train 431663 >> Utilisez la |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] pour apprendre |T136181:0|t[Pointe mentale] << Priest
    .train 425216 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] pour apprendre |T237514:0|t[Fléau du Vide] << Priest
    .train 402862 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r] pour apprendre |T237545:0|t[Pénitence] << Priest
    .train 402849 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] pour apprendre |T136149:0|t[Mot de l'ombre : Mort] << Priest
    .use 206387 << Shaman --Kajaric Icon
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >> Assurez-vous d'activer votre |T136156:0|t[Gangrarmure]
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Acceptez la quête Les vils quasits
    .target Ruzan
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >> Utilisez l'|T134920:0|t[|cRXP_FRIENDLY_Icône kajarique|r] sur la page de votre personnage pour apprendre |T237582:0|t[Explosion de lave]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >> Équipez l' |T134918:0|t[|cRXP_FRIENDLY_Icône dyadique|r]
    .train 410094 >> Utilisez-le après 30 secondes pour apprendre |T136050:0|t[Surcharge]
    .use 206381
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Rendez la quête Votre place en ce monde
    .accept 788 >>Acceptez la quête La dent tranchante
    .target Gornek
step << Priest
    #season 2
    .goto Durotar,40.61,67.81
    >>|cRXP_WARN_Avancez plus profondément dans la tanière|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Vendeur votre surplus. Achetez-lui une |r |T132513:0|t[Ceinture en étoffe rapiécée] |cRXP_BUY_pour graver une rune dessus|r
    .collect 3595,1 --Tattered Cloth Belt
    .target Huklah
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Acceptez la quête La sagesse des Loa
    .turnin 77642 >>Rendez la quête La sagesse des Loa
    .target Ken'jai
step << Priest
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .equip 6,3595 >> |cRXP_WARN_Équipez la|r |T132513:0|t[Ceinture en étoffe rapiécée]
    .use 711
    .use 3595
    .engrave 6 >> Gravez |T136181:0|t[Pointe mentale] sur votre ceinture
    .engrave 10 >> Gravez |T136149:0|t[Mot de l'ombre : Mort] sur vos gants
    .engrave 7 >> Gravez |T237570:0|t[Homoncules] sur votre pantalon
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Acceptez la quête Recherches sur les sorts << Troll Mage
    .turnin 77643 >>Rendez la quête Recherches sur les sorts << Troll Mage
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Mai'ah
step << Mage
    #season 2
    #optional
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .engrave 10 >>|cRXP_WARN_Gravez vos|r gants avec|r |T236220:0|t[Bombe vivante]
    .engrave 7 >>|cRXP_WARN_Gravez votre pantalon avec|r |T135820:0|t[Flamme vivante]
    .engrave 5 >>|cRXP_WARN_Gravez votre plastron avec|r |T236207:0|t[Incandescence]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >> Soyez à l'affut des capes qui pourrait tomber. Une fois que vous en obtenez une, gravez |T135851:0|t[Orbe gelé] dessus
    >>|cRXP_WARN_Ce sort est extrêmement puissant|r
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .accept 77590 >>Acceptez la quête Terrain difficile << Troll Hunter
    .accept 77584 >>Acceptez la quête Chasse à la rune << Orc Hunter
    .turnin 77590 >>Rendez la quête Terrain difficile << Troll Hunter
    .turnin 77584 >>Rendez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r à l'intérieur
    .accept 77592 >>Acceptez la quête Au sommet des falaises << Troll Rogue
    .accept 77583 >>Acceptez la quête Au sommet des falaises << Orc Rogue
    .turnin 77592 >>Rendez la quête Au sommet des falaises << Troll Rogue
    .turnin 77583 >>Rendez la quête Au sommet des falaises << Orc Rogue
    .train 1784 >>Apprenez [Camouflage]
    .target Rwag
step << Rogue
    #season 2
    #optional
    .equip 10 >> Équipez les |T132952:0|t[Gants en cuir craquelé]
    .engrave 10 >> Gravez |T132375:0|t[Coup de sabre] sur vos gants
    .use 2125 --Cracked Leather Gloves
step << Warrior/Shaman
    #season 0
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Apprenez [Cri de guerre] << Warrior
    .train 8017 >>Apprenez [Arme Croque-roc] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior/Shaman
    #season 2
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Apprenez [Cri de guerre] << Warrior
    .train 8017 >>Apprenez [Arme Croque-roc] << Shaman
    .accept 77588 >>Acceptez la quête Une épreuve d’endurance << Troll Warrior
    .accept 77582 >>Acceptez la quête Une épreuve d’endurance << Orc Warrior
    .turnin 77588 >>Rendez la quête Une épreuve d’endurance << Troll Warrior
    .turnin 77582 >>Acceptez la quête Une épreuve d’endurance << Orc Warrior
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior
    #season 2
    .equip 10 >> Équipez les |T132938:0|t[Gants en anneaux ternis] << Warrior
    .engrave 10 >> Gravez |T132342:0|t[Ivresse de la victoire] sur vos gants << Warrior
    .engrave 7 >> Gravez |T236317:0|t[Assaut frénétique] sur votre pantalon << Orc Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
step << Warlock
    #softcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Acceptez la quête Puissance dérobée
    .turnin 77586 >>Rendez la quête Puissance dérobée
    .target Nartok
step << Warlock
    #season 2
    .goto Durotar,40.61,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Vendez votre surplus. Achetez-lui une paire de |r [Brassards en étoffe rapiécés] |cRXP_BUY_pour graver une rune dessus|r
    .collect 3596,1 --Tattered Cloth Bracers
    .target Huklah
step << Warlock
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .equip 9,3596 >> |cRXP_ENEMY_Équipez les|r |T132606:0|t[Brassards en étoffe rapiécés]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Gravez sur vos|r gants|r |T133816:0|t[Hanter] << Warlock
    .engrave 9 >> |cRXP_WARN_Gravez sur vos|r brassards |T135789:0|t[Incinérer]
    .engrave 7 >> Gravez sur votre pantalon |T237562:0|t[Pacte démoniaque]|cRXP_WARN_
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Apprenez [Immolation]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
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
    .goto Durotar,43.57,67.28,25,0
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r. Dépouillez-les pour leur |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step << Hunter
    #season 2
    #optional
    #completewith sarkoth
    .equip 10 >> Équipez les |T132952:0|t[Gants en cuir craquelé]
    .engrave 7 >> Gravez |T236174:0|t[Tir mortel] sur votre pantalon
    .engrave 10 >> Gravez |T236176:0|t[Tir de la chimère] sur vos gants
    .aura 409583 >> N'oubliez pas d'activer |T132185:0|t[Cœur de lion]
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Soyez à l'affût de tout|r Plastron/Ceinture/Cape |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-les et gravez les runes respectives|r
    .engrave 5 >> Gravez |T132266:0|t[Loup solitaire] sur votre |T132724:0|t[Torse]
    .engrave 6 >> Gravez |T132394:0|t[Spécialiste de la mêlée] sur votre |T132513:0|t[Ceinture]
    .engrave 15 >> Gravez |T132171:0|t[Attaque éclair] sur votre |T133771:0|t[Cape]
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Soyez à l'affût de tout|r Ceinture/Cape/Brassards |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-les et gravez les runes correspondantes|r
    .engrave 6 >> Gravez |T132303:0|t[Pas de l'ombre] sur votre |T132513:0|t[Ceinture]
    .engrave 15 >> Gravez |T134538:0|t[Tromblon] sur votre |T133771:0|t[Cape]
    .engrave 9 >> Gravez |T236285:0|t[Avantage déloyal] sur vos |T133830:0|t[Brassards]
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Tuez les |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez en boucle les |cRXP_ENEMY_Sangliers tachetés|r. Dépouillez-les jusqu'à avoir 2 pièces d'argent d'objets vendables|r << Warrior
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent et 75 pièces de cuivre à vendre au marchand|r << Warlock
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent et 10 pièces de cuivre à vendre au marchand|r << Hunter
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Voyagez vers |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Rendez la quête Tablette codée << Troll Rogue
    .turnin 3088 >>Rendez la quête Parchemin codé << Orc Rogue
    .train 53 >> Apprenez [Attaque sournoise]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    .goto Durotar,40.65,68.52,12 >>Allez jusqu'à |cRXP_FRIENDLY_Nartok|r
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Rendez la quête Parchemin contaminé
    .target Nartok
step << Warlock
    #season 0
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
    .xp >4,1
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.01 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    #season 0 << Mage
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Duokna|r
    >>|cFF0E8312Achetez-lui de l'|r |T132794:0|t[Eau de source] |cFF0E8312|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Achetez-lui des|r |T132382:0|t[Flèches grossières] |cFF0E8312|r << Hunter
    >>|cRXP_WARN_Gardez 10 pièces de cuivre pour apprendre|r |T135932:0|t[Intelligence des arcanes] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .accept 77587 >>Acceptez la quête Icônes de puissance << Troll Shaman
    .accept 77585 >>Acceptez la quête Icônes de puissance << Orc Shaman
    .train 8042 >>Apprenez [Horion de terre]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .accept 77587 >>Acceptez la quête Icônes de puissance << Troll Shaman
    .accept 77585 >>Acceptez la quête Icônes de puissance << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Rendez la quête Tablette glyphée << Troll
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Rendez la quête Tablette glyphée << Troll
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acceptez la quête Les vils quasits
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'sha
step << Warrior
    #xprate >1.49
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Rendez la quête Tablette bénie
    .accept 77642 >>Acceptez la quête La sagesse des Loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kzan Trancheronce|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acceptez la quête Les péons paresseux
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Tuez les |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Tuez les |cRXP_ENEMY_Scorpid Workers|r. Dépouillez-les pour leur |cRXP_LOOT_Queue de scorpide ouvrier|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>Utilisez la [Masse de contremaître] sur les |cRXP_FRIENDLY_Lazy Peons qui dorment|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Rendez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Rendez la quête L'aiguillon du scorpide << Shaman
    .turnin 789 >>Rendez la quête L'aiguillon du scorpide << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .turnin 77587 >>Rendez la quête Icônes de puissance << Troll Shaman
    .turnin 77585 >>Rendez la quête Icônes de puissance << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Apprenez [Eclair de givre]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez vos sorts de classe
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez vos sorts de classe
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .turnin 3085 >>Rendez la quête Tablette bénie
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Rendez la quête Les vils quasits
    .accept 794 >>Acceptez la quête Le médaillon de la Lame-Ardente
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Apprenez [Morsure de serpent]
    .turnin 77590 >>Rendez la quête Terrain difficile << Troll Hunter
    .turnin 77584 >>Rendez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
    .xp <4,1
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Rendez la quête Terrain difficile << Troll Hunter
    .turnin 77584 >>Rendez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #loop
    .goto Durotar,44.67,64.92,0
    .goto Durotar,44.67,64.92,25,0
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
    >>Ramassez les |cRXP_LOOT_Cactus Apples|r près des cactus
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
	.goto Durotar,42.70,52.99,25,0
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
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage au bord du rocher jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLIQUEZ ICI pour un exemple vidéo
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r près de la flèche|r
    .target Gardien des âmes
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target Gar'thok
step
    #softcore
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Acceptez la quête Des œufs pour l'omelette
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith BurningBladeTurnin
    .hs >>Utilisez votre Pierre de foyer pour revenir à la Vallée des Épreuves
    .use 6948
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Rendez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Rendez la quête Surprise aux pommes de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.03
step
    #season 2
    .goto Durotar,42.74,68.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r dont vous avez besoin|r
    .target Rune Broker
    .skipgossip
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Rendez la quête Le médaillon de la Lame-Ardente
    .accept 805 >>Acceptez la quête Faire un rapport au Village de Sen'jin
    .target Zureetha Fargaze
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acceptez la quête Au service de la spiritualité
	.train 591 >>Apprenez [Châtiment]
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acceptez la quête Au service de la spiritualité
    .train 17 >>Apprenez [Mot de pouvoir : Bouclier]
    .target Ken'jai
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Apprenez [Boule de feu]
    .train 2136 >>Apprenez [Trait de feu]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Apprenez [Vague de soins]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Rendez la quête L'appel de la terre
    .accept 1517 >>Acceptez la quête L'appel de la terre
    .target Canaga Earthcaller
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Apprenez [Marque du chasseur]
--    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.01
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Apprenez [Attaque Pernicieuse]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Hraug|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .turnin 77586 >>Rendez la quête Puissance dérobée
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .turnin 77586 >>Rendez la quête Puissance dérobée
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .target Nartok
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
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Durotar
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 13-20 Les Tarides

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
step
    #completewith next
    .subzone 367 >>Voyagez vers le Village de Sen'jin
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .accept 786 >>Acceptez la quête Déjouer l'agression des Kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r et |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acceptez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Acceptez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Rendez la quête Faire un rapport au Village de Sen'jin
    .accept 808 >>Acceptez la quête Crâne de Minshina
    .accept 826 >>Acceptez la quête Zalazane
    .accept 823 >>Acceptez la quête Un rapport à Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entrez dans la grande hutte
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez-lui une |r |T132414:0|t[Hache de jet lestée] |cRXP_BUY_|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money >0.001
    .money <0.005
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
    .collect 2495,1,786,1 --Collect Walking Stick (1)
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
    .collect 2494,1,786,1 --Collect Stiletto (1)
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
    .collect 2491,1,786,1 --Collect Large Axe (1)
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
    .collect 2490,1,786,1 --Collect Tomahawk (1)
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
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
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
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Tuez les |cRXP_ENEMY_Manoeuvres kolkars|r et les |cRXP_ENEMY_Estafettes kolkars|r. Dépouillez-les pour une |cRXP_LOOT_Tête de centaure coupée|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #completewith MainIsle
    >>Tuez les |cRXP_ENEMY_Crawlers|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leur |cRXP_LOOT_Eyes|r
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MainIsle
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #softcore
    #completewith MainIsle
    >>Ramassez les |cRXP_PICK_Taillasher Eggs|r sur le sol
    >>Ils sont gardés en général par un |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label MainIsle
    .goto Durotar,66.94,84.41,150 >>Nagez vers l'île principale
    .isOnQuest 826
step
    #completewith ZalazaneKill1
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Ramassez l'un des |cRXP_LOOT_Skulls|r sur le sol
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill1
    .goto Durotar,67.4,87.8
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r] |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre].
    .use 203753
step
    #completewith TrollsDone
    >>Tuez les |cRXP_ENEMY_Durotar Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith TigerFur
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith CrawlMakru
    >>Ramassez les |cRXP_PICK_Taillasher Eggs|r sur le sol
    >>Ils sont gardés en général par un |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label TrollsDone
    #loop
    .goto Durotar,67.23,88.76,0
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
step << Priest
    #season 2
    #loop
    .goto Durotar,67.23,88.76,0
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
    >>Tuez les |cRXP_ENEMY_Trolls vaudou|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step
    #label TigerFur
    #loop
    .goto Durotar,59.79,83.44,0
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
    #label CrawlMakru
    #loop
    .goto Durotar,62.88,93.48,0
    .goto Durotar,59.48,86.33,0
    .goto Durotar,59.92,80.80,0
    .goto Durotar,57.90,78.13,0
    .goto Durotar,53.27,83.05,0
    .goto Durotar,62.88,93.48,50,0
    .goto Durotar,59.48,86.33,50,0
    .goto Durotar,59.92,80.80,50,0
    .goto Durotar,57.90,78.13,50,0
    .goto Durotar,53.27,83.05,50,0
    >>Tuez |cRXP_ENEMY_Pygmy Surf Crawlers|r et les |cRXP_ENEMY_Surf Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r
    >>Tuez les |cRXP_ENEMY_Coquillards makrura|r et les |cRXP_ENEMY_Claqueur makrura|r. Dépouillez-les pour leurs |cRXP_LOOT_Yeux|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    .goto Durotar,59.86,89.64,0
    .goto Durotar,59.51,83.64,0
    .goto Durotar,60.94,78.75,0
    .goto Durotar,63.54,74.33,0
    .goto Durotar,67.04,71.40,0
    .goto Durotar,59.86,89.64,40,0
    .goto Durotar,59.51,83.64,40,0
    .goto Durotar,60.94,78.75,40,0
    .goto Durotar,63.54,74.33,40,0
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
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r, ou revenez à la marche
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Voyagez vers le Village de Sen'jin
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
    .turnin 826,2 >>Rendez la quête Zalazane << Shaman
    .turnin 826 >>Rendez la quête Zalazane << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Rendez la quête Proie nécessaire
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .train 402852,1
step << Priest
    #season 2
    #completewith TravelToTiragarde
    .aura 418459 >>|cRXP_WARN_Vous devez maintenant trouver un Prêtre mort-vivant avec un buff Loa. Vous devez vous agenouiller (/kneel) devant lui et il doit /prier pour vous.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    .itemcount 205947,1
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Mettez dans vos barres votre|r |T133728:0|t[Crâne au faible rougeoiement] |cRXP_WARN_et la|r |T134712:0|t[Colle très collante]. |cRXP_WARN_Gardez-les pour les situations d'urgence|r
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ba'so|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    >>|cRXP_WARN_Il est camouflé !|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #hardcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target Gar'thok
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #softcore
    #xprate <1.5
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    >>Tuez des mobs sur la route
    .isOnQuest 784
step
    #softcore
    #xprate >1.49
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Voyagez vers le Donjon de Tiragarde
    .isOnQuest 784
    .maxlevel 11
step
    #sticky
    #completewith AgedEnvelope
    +Faites attention si |cRXP_ENEMY_Watch Commander Zalaphil|r est présent, c'est un rare de niveau 9. Vous allez peut-être devoir utiliser une [Potions de soins mineure] si vous en avez une
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Allez au deuxième étage du donjon
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Tuez les |cRXP_ENEMY_Marins|r et les |cRXP_ENEMY_Soldats de marine|r. Dépouillez-les pour obtenir le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
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
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
    .maxlevel 11
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>Montez les escaliers dans le donjon
    >>Ouvrez |cRXP_PICK_Benedict's Chest|r. Ramassez la [|cRXP_LOOT_Aged Envelope|r]
    >>Utilisez l'[|cRXP_LOOT_Aged Envelope|r] pour commencer la quête
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acceptez la quête Les ordres de l'amiral
    .use 4881
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
step
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
    .maxlevel 11
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tuez les |cRXP_ENEMY_Marins|r et les |cRXP_ENEMY_Soldats de marine|r. Dépouillez-les pour obtenir le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .maxlevel 11
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Mourez à la tour nord à l'extérieur du Donjon de Tiragarde et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #xprate <2.1
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .accept 806 >>Acceptez la quête De sombres orages
    .target Orgnil Soulscar
step
    #xprate >2.09
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
    .target Orgnil Soulscar
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 831 >>Acceptez la quête Les ordres de l'amiral << !Mage !Shaman
    .accept 837 >>Acceptez la quête Empiètement
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Acceptez la quête Les ordres de l'amiral << !Mage !Shaman
    .accept 837 >>Acceptez la quête Empiètement
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Rendez la quête Vaincre les traîtres
    .turnin 830 >>Rendez la quête Les ordres de l'amiral
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Acceptez la quête Les ordres de l'amiral
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target Cook Torka
    .isQuestComplete 815
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Équipez la|r |T132414:0|t[Hache de jet lestée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèche pointue] |cRXP_BUY_et un|r [Carquois moyen] |cRXP_BUY_à Ghrawt|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|cRXP_FRIENDLY_Ghrawt|r. Achetez des|r [Flèches pointue] |cRXP_BUY_à Ghrawt|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .home >> Liez votre Pierre de Foyer à Tranchecolline
    .turnin 2161 >>Rendez la quête Un Fardeau de Péon
    .target Innkeeper Grosk
    .bindlocation 362
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Acceptez la quête Le vétéran Uzzek
    .trainer >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Acceptez la quête Les invocations de Gan'rul
    .trainer >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acceptez la quête Le maléfice de faiblesse << Troll
    .accept 5660 >> Acceptez la quête Toucher de faiblesse << Undead
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step << Rogue
    #xprate >1.49
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
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
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
    +Mettez [Appriovoiser une bête]|cRXP_WARN_,|r [Renvoyer le familier], et [Appel du familier] sur vos barres d'action
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
step
    #label ConscriptH
    #xprate >1.49
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
step
    #xprate <2.1
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Tuez les |cRXP_ENEMY_Razormane Dustrunners|r et les |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior
    #season 2
    #loop
    .goto Durotar,49.22,48.96,0
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
    >>Tuez les |cRXP_ENEMY_Hurans Tranchecrins|r et les |cRXP_ENEMY_Eclaireurs Tranchecrins|r. Dépouillez-les pour une |cRXP_LOOT_Tête de huran coupée|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step << Warrior/Shaman
    #xprate <2.1
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step
    #xprate >2.09
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Rendez la quêteLe vétéran Uzzek
    .accept 1498 >>Acceptez la quête La voie de la défense
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Rendez la quête L'appel du feu
    .accept 1525 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Entrez dans les falaises du Tonnerre et tuez |cRXP_ENEMY_Foudroyants|r. Dépouillez-les pour leurs |cRXP_ENEMY_Écailles|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << !Warrior
    #xprate <2.1
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Sautez dans les Falaises du Tonnerre << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Renvoyez votre|r |T136218:0|t[Diablotin] |cRXP_WARN_en faisant un clic droit sur son portrait et en cliquant sur renvoyer|r << Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Lancez|r |T136095:0|t[Renvoyer le familier] |cRXP_WARN_et ensuite sautez dans les falaises du Tonnerre|r << Hunter
step
    #xprate <2.1
    #softcore
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>|cRXP_WARN_N'ayez pas peur de mourir pour la |cRXP_LOOT_Griffe|r comme vous réapparaîtrez au |cRXP_FRIENDLY_Gardien des âmes|r après|r
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
step
    #xprate <2.1
    #hardcore
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
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
step
    #xprate <2.1
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isQuestComplete 806
step
    #xprate <2.1
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Sortez des falaises du Tonnerre en combattant les mobs
    .isQuestComplete 806
step
    #xprate <2.1
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Voyagez à Rezlak
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step << Warrior
    #xprate <2.1
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Harpies Terrevent|r. Dépouillez-les pour une |cRXP_LOOT_Tête de harpie coupée|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
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
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tuez les |cRXP_ENEMY_Harpies Terrevent|r. Dépouillez-les pour une |cRXP_LOOT_Tête de harpie coupée|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .target Rezlak
step << Shaman
    #xprate <2.1
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Voyagez vers la Caverne des Terrevent
    >>|cRXP_WARN_Voyagez à l'est autour des collines pour atteindre la grotte. Suivez la flèche jusqu'au point de repère|r
step << Shaman
    #xprate <2.1
    #loop
    .goto Durotar,53.18,29.15,0
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
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la grotte du rocher du Crâne. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step << Warrior/Shaman
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Warrior
    #xprate >2.09
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Rendez la quête La voie de la défense
    .accept 1502 >>Acceptez la quête Thun'grim Mirefeu
    .target Uzzek
step
    #xprate >2.09
    #softcore
    #completewith
    .goto The Barrens,50.72,32.61
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 380
step
    #xprate >2.09
    #hardcore
    #completewith
    .goto The Barrens,52.34,29.27,150 >> Voyagez à la Croisée
step
    #xprate >2.09
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target Thork
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target Zargh
step
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >> Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Prenez le chemin de vol de la Croisée
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar

    --Mage/Shaman dont need to go ORG 100% route
step
    #xprate >2.09
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Achetez-lui une |r |T135419:0|t[Hache de jet aiguisée] |cRXP_BUY_|r
    .collect 3135,200 --Sharp Throwing Axe (200)
    .vendor >> Vendez au marchand
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith AdmiralTurnin
    +|cRXP_WARN_Équipez la|r |T135421:0|t[Hache de jet aiguisée].
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #xprate >2.09
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #completewith AdmiralTurnin
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Rendez la quête Le maléfice de faiblesse
    .trainer >>Apprenez vos sorts de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Rendez la quête Le maléfice de faiblesse
    .trainer >>Apprenez vos sorts de classe
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acceptez la quête La Main brisée << Orc Rogue/Troll Rogue
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Achetez-lui une ou deux|r |T135640:0|t[Jambiya] |cRXP_BUY_|r
    .collect 2207,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Kareth
step << Rogue
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Équipez la|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_Elle se trouve à l'étage supérieur de la Herse|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step
    #xprate >2.09
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acceptez la quête Ennemis cachés
    .target Thrall
step << Shaman/Hunter
    #season 2
    .goto Orgrimmar,38.923,38.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor Arbre-solitaire|r
    .train 409580 >>|cRXP_WARN_Achetez et utilisez le|r |T133739:0|t|cRXP_LOOT_[Traité sur Cœur de lion]|r |cRXP_WARN_pour apprendre|r |T132185:0|t[Cœur de lion] << Hunter
    .train 425336 >>|cRXP_WARN_Achetez et utilisez la|r |T133747:0|t|cRXP_LOOT_[Révélation de Rage du chaman]|r |cRXP_WARN_pour apprendre|r |T136088:0|t[Rage du chaman] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .xp <10,1
    .money <0.5
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamja|r et |cRXP_FRIENDLY_Gru'ark|r
    +Tuez |cRXP_ENEMY_Gru'ark|r lorsqu'il devient hostile
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamja|r
    >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r]
    .use 204716
    .itemcount 204716,1
step << Troll Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
    .money <0.100
step << Troll Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,1502,1 --Collect Quarter Staff (1)
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Zendo'jian
    .train 227,3
step << Troll Warrior
    #optional
    #completewith RazorTurnins2
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 227,3
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
    #season 0
    #completewith RazorTurnins2
    +Mettez [Dressage des bêtes] (sous l'onglet Général), [Ressusciter le familier], et [Nourrir le familier] sur vos barres d'actions
    >>N'oubliez pas d'entraîner votre familier dès qu'il récupère des points dans le [Dressage des bêtes]
step << Hunter
    #season 2
    #completewith End
    +Mettez [Dressage des bêtes] (sous l'onglet Général), [Ressusciter le familier], et [Nourrir le familier] sur vos barres d'actions
    >>N'oubliez pas d'entraîner votre familier dès qu'il récupère des points dans le [Dressage des bêtes]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure] |cRXP_WARN_lorsque vous êtes niveau 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
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
    .destroy 14544 >>|cRXP_WARN_Détruisez l'|r |T134417:0|t[Insigne de lieutenant] |cRXP_WARN_comme vous n'en avez plus besoin|r
step << Shaman/Mage/Hunter
    #xprate >2.09
    #completewith next
    .goto Durotar,45.54,12.14
    .zone Durotar >>Quittez Orgrimmar
step << Hunter
    #xprate >2.09
    #completewith next
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Domptez un |cRXP_ENEMY_Venomtail Scorpid|r
    >>Ceci vous permettra d'apprendre [Griffe Rang 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate >2.09
    #completewith next
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Voyagez vers la Caverne des Terrevent
    >>|cRXP_WARN_Voyagez à l'est autour des collines pour atteindre la grotte. Suivez la flèche jusqu'au point de repère|r
step << Shaman
    #xprate >2.09
    #loop
    .goto Durotar,53.18,29.15,0
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
step << Mage
    #xprate >2.09
    #season 2
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la grotte du rocher du Crâne. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step
    #xprate >2.09
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .subzoneskip 380
    .bindlocation 380,1
    .cooldown item,6948,>0
step
    #xprate >2.09
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Volez à la Croisée
    .target Doras
    .subzoneskip 380
    .cooldown item,6948,<0
step
    #xprate <2.1
    #completewith RazorTurnins2
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <2.1
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vahi|r
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Utilisez les |T134455:0|t[Fragments de rune] pour créer des |T134419:0|t[|cRXP_FRIENDLY_Runes de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1
step
    #xprate <2.1
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Orgnil|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Rendez la quête De sombres orages
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <2.1
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <2.1
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Swart
    .xp <12,1
step << Hunter
    #xprate <2.1
    #completewith next
    .goto Durotar,36.29,47.38,0
    .goto Durotar,36.29,52.09,0
    .goto Durotar,36.29,47.38,40,0
    +Domptez un |cRXP_ENEMY_Venomtail Scorpid|r
    >>Ceci vous permettra d'apprendre [Griffe Rang 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step
    #xprate <2.1
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Warrior
    #xprate <2.1
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Rendez la quête La voie de la défense
    .accept 1502 >>Acceptez la quête Thun'grim Mirefeu
    .target Uzzek
step
    #optional
    #label End
]])
