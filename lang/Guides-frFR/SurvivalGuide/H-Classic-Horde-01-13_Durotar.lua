if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 1-6 Orc/Troll
#version 1
#group RestedXP Guide de Survie (H)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor Troll/Orc
#next 6-13 Orc/Troll

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
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Rendez la quête Votre place en ce monde
    .accept 788 >>Acceptez la quête La dent tranchante
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.4 << Warrior
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
    .goto Durotar,40.56,68.44,12 >>Voyagez vers |cRXP_FRIENDLY_Hraug|r
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Hraug
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Apprenez [Immolation]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Hunter
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
step << !Warlock !Rogue !Mage
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
    .xp 3+1120 >> Montez votre expérience jusqu'à 1120+/1400xp
    .mob Mottled Boar
step << Warlock
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
    .xp 3+760 >> Montez votre expérience jusqu'à 760+/1400xp
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Tuez les |cRXP_ENEMY_Mottled Boars|r. Dépouillez-les jusqu'à avoir l'équivalent de 1 pièce d'argent à vendre au marchand|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
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
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Warrior !Hunter
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Warrior
    .itemcount 159,<15 << !Warrior !Hunter
step << Shaman
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Rendez la quête Tablette runique << Troll
    .turnin 3089 >>Rendez la quête Parchemin runique << Orc
    .train 8042 >>Apprenez [Horion de terre]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <4,1
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
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acceptez la quête Les vils quasits
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .train 1978 >> Apprenez [Morsure de serpent]
    .target Jen'shan
    .xp <4,1
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Rendez la quête Tablette gravée << Troll
    .turnin 3087 >>Rendez la quête Parchemin gravé << Orc
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Rendez la quête Parchemin simple << Orc
    .turnin 3065 >>Rendez la quête Tablette simple << Troll
    .target Frang
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
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>Utilisez la |T133486:0|t[Matraque du contremaître] sur les |cRXP_FRIENDLY_Péons fainéants|r endormis
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
    >>Utilisez la |T133486:0|t[Matraque du contremaître] sur les |cRXP_FRIENDLY_Péons fainéants|r endormis
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
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
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r << !Rogue !Warrior !Hunter
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Duokna|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shikrik|r et |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Apprenez [Horion de terre]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acceptez la quête L'appel de la terre
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .train 116,1 >> Apprenez [Eclair de givre]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Apprenez vos sorts de classe
    .money <0.021
    .target Ken'jai
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
    .train 589,1 >> Apprenez [Mot de l'ombre : Douleur]
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
    .train 1978,1 >> Apprenez [Morsure de serpent]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 772 >> Apprenez [Pourfendre]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.4
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
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Tuez les |cRXP_ENEMY_Felstalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Ramassez la |cRXP_PICK_Pioche de Thazz'ril|r contre le mur
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.3,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>Voyagez vers |cRXP_ENEMY_Yarrog Plaie-d'ombre|r
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
    .xp 6 >> Montez jusqu'au niveau 6 << !Shaman
    .xp 5+1810 >> Montez votre expérience jusqu'à 1810+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
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
    .xp 6 >> Montez jusqu'au niveau 6 << !Shaman
    .xp 5+1430 >> Montez votre expérience jusqu'à 1430+/2800xp << Shaman
    .isQuestComplete 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Effectuez un Logout skip en positionnant votre personnage au bord du rocher jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> |cRXP_WARN_Cliquez ici pour un exemple vidéo|r
step << skip
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target Gar'thok
step << skip --Hunter
    #completewith next
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Grimtak
step << skip
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Voyagez vers la tour
step << skip
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Montez la tour vers Furl
step << skip
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acceptez la quête Assumer ses responsabilités
    .target Furl Scornbrow
step << skip --Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Apprenez [Minage]
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << skip --Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << skip --Warrior/Rogue
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
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Rendez la quête Le médaillon de la Lame-Ardente
    .accept 805 >>Acceptez la quête Faire un rapport au Village de Sen'jin
    .target Zureetha Fargaze
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
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acceptez la quête Au service de la spiritualité << Troll Priest
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
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Apprenez [Parade]
    .train 6343 >>Apprenez [Coup de tonnerre]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Apprenez [Parade]
    .target Frang
step << Rogue
    #completewith Rwag2
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
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Apprenez [Trait de l'ombre]
    .train 1454 >> Apprenez [Connexion]
    .target Nartok
    .money <0.02
step << Warlock
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
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Rendez la quête La pioche de Thazz'ril
    .target Foreman Thazz'ril
step
    #label Leave
    #completewith next
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Quittez la Vallée des Épreuves
    .isOnQuest 805
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acceptez la quête Un Fardeau de Péon
    .target Ukor
    ]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 6-13 Orc/Troll
#version 1
#group RestedXP Guide de Survie (H)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor Troll/Orc
#next 13-15 Forêt des Pins argentés

step
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Achetez une |r [Hache de lancer équilibrée] |cRXP_BUY_à K'waii|r
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
    +Équipez la [Hache de lancer équilibrée]
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
step
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
    .goto Durotar,52.20,83.00,75 >> Allez au bout de la plage
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>Entrez dans la base des Kolkar
    .isOnQuest 786
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Commencez à récolter de 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en complétant des quêtes à travers Durotar. Ils sera utilisé pour fabriquer votre baguette plus tard|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +Faites attention si |cRXP_ENEMY_Kolkanis|r est présent, c'est un mob rare de niveau 9. Vous allez peut-être utiliser une [Potion de soins mineure] si vous en avez
    .unitscan Warlord Kolkanis
step
    >>Brûlez les |cRXP_PICK_Plans d'attaque|r au sol à l'intérieur de la tente
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Brûlez les |cRXP_PICK_Attack Plan|r sur le sol
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Quittez la base Kolkar
    .isQuestComplete 786
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. Il patrouille dans le coin
    .turnin 786,1 >>Rendez la quête Déjouer l'agression des Kolkar << Shaman
    .turnin 786 >>Rendez la quête Déjouer l'agression des Kolkar << !Shaman
    .target Lar Prowltusk
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Rendez la quête Un esprit parfaitement éduqué
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Achetez des|r [Refreshing Spring Water] |cRXP_BUY_à Duokna|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Hache de lancer équilibrée]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +Équipez la [Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>Vous pouvez lui parler de l'extérieur ou du haut du bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Acceptez la quête Vaincre les traîtres
    .target Gar'thok
step << Hunter
    #completewith next
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Grimtak
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
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krunn|r
    >>Ceci vous permettra de trouver des |cRXP_LOOT_[Rough Stones]|r sur les gisements pour fabriquer les [Pierre à aiguiser] (+2 dégâts aux armes pendant 30 minutes)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Achetez-lui une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_|r |cRXP_BUY_|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Apprenez [Forge]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +Lancez [Découverte de gisement] et minez tous les Filons de cuivre que vous trouvez pour les |cRXP_LOOT_[Rough Stones]|r. Fabriquez des [Pierre à aiguiser] avec elles
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
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
step
    #completewith AgedEnvelope
    >>Tuez les |cRXP_ENEMY_Kul Tiras Sailors|r et les |cRXP_ENEMY_Kul Tiras Marines|r
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
    .collect 4882,1 --Collect Benedict's Key (1)
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
step << !Priest !Mage
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >> Montez votre expérience jusqu'à 2200+/4500xp
step << Priest
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >> Montez votre expérience jusqu'à 1750+/4500xp
step
    #completewith next
    .subzone 362 >>Voyagez jusqu'à Tranchecolline
step
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
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_ Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r et |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Rendez la quête Un rapport à Orgnil
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
    .collect 2901,1,9144,1 --Mining Pick (1)
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
    .collect 2495,1,818,1 --Collect Walking Stick (1)
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
    .collect 2494,1,818,1 --Collect Stiletto (1)
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
    .collect 2491,1,818,1 --Collect Large Axe (1)
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
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +Équipez la [Hache de lancer équilibrée]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à |rGhrawt|cRXP_FRIENDLY_. Achetez des|r [Flèche grossières] |cRXP_BUY_à Ghrawt|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
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
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r
    .train 5116 >> Apprenez vos sorts de classe
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Apprenez vos sorts de classe
    .target Kaplak
step << Troll Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Rendez la quête Au service de la spiritualité
    .accept 5648 >> Acceptez la quête Vêtements de la spiritualité
    .train 2052 >> Apprenez [Soins inférieurs Rank 2]
    .target Tai'jin
step << Troll Priest
    .goto Durotar,53.10,46.46
    >>Lancez [Soins inférieurs] et [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Rendez la quête Vêtements de la spiritualité << Troll Priest
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Achetez une|r [Petite sacoche marron] |cRXP_BUY_à|r |cRXP_BUY_Jark|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Clampants|r et les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour leur |cRXP_LOOT_Mucus|r et leurs |cRXP_LOOT_Yeux|r. Vous n'avez pas besoin de terminer cette étape maintenant
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
    >>Tuez les |cRXP_ENEMY_Tigres|r. Dépouillez-les pour leur |cRXP_LOOT_Fourrure|r. Vous n'avez pas besoin de terminer cette étape maintenant
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
step
    #completewith ZalazaneKill
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Faites attention !|r Les |cRXP_ENEMY_Trolls vaudou|r |cRXP_WARN_peuvent lancer|r |T136052:0|t[Vague de soins]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Gardez votre [Horion de terre] pour quand il lance [Vague de soins] << Shaman
    >>Gardez votre [Suriner] pour lorsqu'il lance [Vague de soins] << Rogue
    >>Faites attention. Il peut lancer [Vague de soins]. Utilisez votre [Potion] si nécessaire << !Shaman !Rogue
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
    >>Faites attention. Il peut lancer [Vague de soins]. Utilisez votre [Potion] si nécessaire << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
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
    >>Tuez les |cRXP_ENEMY_Hexed Trolls|r et les |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Faites attention !|r Les |cRXP_ENEMY_Trolls vaudou|r |cRXP_WARN_peuvent lancer|r |T136052:0|t[Vague de soins]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
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
    >>Tuez les |cRXP_ENEMY_Tigers|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
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
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Voyagez vers le Village de Sen'jin
    .subzoneskip 367
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendez votre surplus et réparez. Vous pouvez lui parler de l'extérieur de la hutte
    .target Trayexir
    .isQuestAvailable 837
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
step
    #completewith Stolensupplies
    +|cRXP_WARN_Mettez dans vos barres votre|r |T133728:0|t[Crâne au faible rougeoiement] |cRXP_WARN_et la|r |T134712:0|t[Colle très collante]. |cRXP_WARN_Gardez-les pour les situations d'urgence|r
step
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
step << Shaman/Hunter
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
    >>|cRXP_WARN_Soyez prudent.|r Les |cRXP_ENEMY_Lève-poussières|r |cRXP_WARN_lancent Récupération (Soin) et les|r |cRXP_ENEMY_Gardes de guerre|r |cRXP_WARN_sont costauds|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Shaman/Hunter
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
    #completewith next
    .goto Durotar,51.12,42.46,150 >> Courez vers Tranchecolline
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Rendez la quête Des épaves
    .turnin 837 >>Rendez la quête Empiètement
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << !Shaman !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Torka|r et à |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Rendez la quête Des œufs pour l'omelette
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Rendez la quête Des épaves
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r
    .accept 6062 >>Acceptez la quête Dompter la bête
    .trainer >> Apprenez vos sorts de classe
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ghrawt|r
    .collect 2515,1200,837,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Apprenez [Premiers soins]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .accept 2983 >>Acceptez la quête L'appel du feu
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kitha|r et achetez [Éclair de feu Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acceptez la quête Le maléfice de faiblesse << Troll
    .accept 5660 >> Acceptez la quête Toucher de faiblesse << Undead
    .trainer >> Apprenez vos sorts de classe
    .target Tai'jin
    .xp <10,1
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r
    .turnin 6062 >>Rendez la quête Dompter la bête
    .accept 6083 >>Acceptez la quête Dompter la bête
    .target Thotar
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r
    .turnin 6083 >>Rendez la quête Dompter la bête
    .accept 6082 >>Acceptez la quête Dompter la bête
    .target Thotar
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r
    .turnin 6082 >>Rendez la quête Dompter la bête
    .accept 6081 >>Acceptez la quête Entraîner la bête
    .target Thotar
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Achetez de la|r [Viande séchée coriace] |cRXP_BUY_à Grimtak|r. |cRXP_BUY_Vous l'utiliserez pour nourrir votre familier plus tard|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
step
    #optional
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acceptez la quête Sous les drapeaux de la Horde
    .target Takrin Pathseeker
    .xp <10,1
step
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
    >>|cRXP_WARN_Soyez prudent.|r Les |cRXP_ENEMY_Lève-poussières|r |cRXP_WARN_lancent Récupération (Soin) et les|r |cRXP_ENEMY_Gardes de guerre|r |cRXP_WARN_sont costauds|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Shaman
    #completewith next
    .zone The Barrens >> Voyagez jusqu'aux Tarides
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Rendez la quête L'appel du feu
    .accept 1524 >>Acceptez la quête L'appel du feu
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> Retournez à Durotar
    .zoneskip Durotar
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
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Prenez le chemin pour descendre de la montagne
    >>Faites attention à ne pas tomber de la montagne, le chemin est très étroit. Vous pourriez tomber et mourir
step << Shaman
    #completewith next
    .zone The Barrens >> Retournez jusqu'aux Tarides
    .zoneskip The Barrens
step << Shaman
    #loop
    .goto The Barrens,53.57,25.51,0
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51,50,0
    >>Tuez un |cRXP_ENEMY_Razormane Water Seeker|r ou un |cRXP_ENEMY_Razormane Thornweaver|r. Dépouillez-les pour un |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> Voyagez à la Croisée
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Zargh|r, à |cRXP_FRIENDLY_Sergra|r, à |cRXP_FRIENDLY_Thork|r et à |cRXP_FRIENDLY_Gazrog|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step << Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Shaman
    #completewith NeedforaCureAccept
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith NeedforaCureAccept
    +Équipez le [Bâton] quand vous êtes niveau 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
step << Shaman
    #label LeaveOrg
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Shaman
    #label NeedforaCureAccept
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .target Rhinag
step << Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acceptez la quête L'égaré
    .target Misha Tor'kren
step
    #label Stolensupplies
    #loop
    .goto Durotar,49.05,22.49,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Ramassez les |cRXP_PICK_Stolen Supply Sacks|r sur le sol
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step << !Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Voyagez à Rezlak
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step << !Hunter
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
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step << Hunter
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .target Rhinag
step << Hunter
    #completewith BeastTraining
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << Hunter
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Acceptez la quête La recherche de l'antidote
    .target Kor'ghan
    .isOnQuest 812
step << Hunter
    #completewith BeastTraining
    >>Abandonnez Besoin d'un remède. Ceci enlèvera le chronomètre de la quête mais vous pourrez toujours la faire
    .abandon 812 >>Abandonnez Besoin d'un remède
    .isOnQuest 812
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Voyagez jusqu'à la Vallée de l'Honneur
step << Hunter
    #label BeastTraining
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
    #completewith Rezlak
    +Mettez [Dressage des bêtes] sur vos barres d'action. Pour apprendre des compétences à votre familier
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
    #completewith Rezlak
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure] |cRXP_WARN_lorsque vous êtes niveau 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HuntLeaveOrg
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Hunter
    #completewith Rezlak
    .goto Durotar,43.8,17.20,40,0
    .goto Durotar,43.53,18.35,40,0
    .goto Durotar,42.19,19.70,40,0
    .goto Durotar,41.08,20.42,40,0
    .goto Durotar,42.76,21.08,40,0
    .goto Durotar,40.44,17.51,40,0
    +Apprivoisez un familier. Un |cRXP_ENEMY_Scorpide|r ou un |cRXP_ENEMY_Raptor|r aura le DPS le plus haut
    .mob Venomtail Scorpid
    .mob Bloodtalon Scythemaw
step << Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Voyagez à Rezlak
step << Hunter
    #label Rezlak
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acceptez la quête Des vents dans le désert
    .target Rezlak
step << Hunter
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
step << Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Rendez la quête Des vents dans le désert
    .accept 835 >>Acceptez la quête Des lignes sécurisées
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Avancez dans la grotte
    .solo
step
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
    >>|cRXP_WARN_Ces mobs s'enfuient. Faites attention à ne pas faire un double pull|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Choisissez le|r |T135158:0|t[Bâton défectueux en bois] |cRXP_WARN_en tant que récompense de quête et conservez-le. Vous obtiendrez la compétence pour porter les Bâtons à Orgrimmar|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
    .solo
step << Shaman
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acceptez la quête L'égaré
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Sautez dans les Falaises du Tonnerre << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Lancez|r |T136095:0|t[Renvoyer le familier] |cRXP_WARN_et ensuite sautez dans les falaises du Tonnerre|r << Hunter
    +|cRXP_WARN_Renvoyez votre diablotin puis sautez dans les falaises du Tonnerre|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r et dépouillez-le pour sa |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Soyez très prudent. Tuez le|r |cRXP_ENEMY_Fanatique de la Lame ardente|r |cRXP_WARN_en patrouille et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_au fond avant de l'engager|r
    >>|cRXP_WARN_Attirez-le vers l'arrière et les|r |cRXP_ENEMY_Foudroyants|r |cRXP_WARN_que vous venez de tuer. Sinon, vous risquez d'engager des mobs supplémentaires de la Lame ardente|r
    >>Tuez le diablotin en premier. Utilisez [Suriner] lorsqu'il lance [Siphon d'âme] << Rogue
    >>Tuez le diablotin en premier. Utilisez [Horion de terre] lorsqu'il lance [Siphon d'âme] << Shaman
    >>Vous pouvez lancer [Métamorph|cRXP_WARN_on|re] sur |cRXP_ENEMY_Fizzle|r et tuez le |cRXP_ENEMY_Imp|r en premier << Mage
    >>|cRXP_WARN_Tuez le diablotin en premier.|r << Warrior/Warlock/Priest
    >>Utilisez une [Potion de soins mineur] si vous en avez une et votre [Crâne au faible rougeoiement] si nécessaire << !Warlock
    >>Utilisez une [Potion de soins mineur], [Pierre de soins mineure] si vous l'avez et votre [Crâne au faible rougeoiement] si nécessaire << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .group
step << Shaman
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step << Shaman
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Achetez des|r [Cuissot] |cRXP_BUY_à Hai'zan|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Rendez la quête De sombres orages
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    #optional
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Acceptez la quête Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step << !Shaman
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    .turnin 837 >>Rendez la quête Empiètement
    .target Gar'Thok
    .group
step << Shaman
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gar'thok|r
    .turnin 837 >>Rendez la quête Empiètement
    .target Gar'Thok
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Tarshaw Jaggedscar
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Apprenez vos sorts de classe
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Dhugru Gorelust
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thotar|r
    .train 13549 >> Apprenez vos sorts de classe
    .target Thotar
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Apprenez vos sorts de classe
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Apprenez vos sorts de classe
    .target Tai'jin
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendez votre surplus. Vendez votre arme si cela vous donne assez d'argent pour un |T135489:0|t[Arc laminé à double courbure] (17s 51c). Vous reviendrez plus tard si vous n'en avez pas assez
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,828,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Ghrawt|r
    .collect 2515,1200,828,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
    .group
step << Hunter
    #optional
    #completewith MargozTurnIn
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Rendez la quête Margoz
    .accept 827 >>Acceptez la quête Rocher du crâne
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >> Voyagez vers la Caverne des Terrevent
step << !Shaman
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Voyagez vers la Caverne des Terrevent
    .isQuestTurnedIn 806
    .group
step << !Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tuez les |cRXP_ENEMY_Nervis de la Lame ardente|r, les |cRXP_ENEMY_Néophytes de la Lame ardente|r et les |cRXP_ENEMY_Sectateurs de la Lame ardente|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tuez les |cRXP_ENEMY_Nervis|r et les |cRXP_ENEMY_Néophytes|r. Dépouillez-les pour leur |cRXP_LOOT_Colliers|r
    >>Tuez les |cRXP_ENEMY_Cultists|r. Dépouillez-les pour un |cRXP_LOOT_Reagent Pouch|r
    .complete 827,1 --Searing Collar (6)
    .mob +Burning Blade Thug
    .mob +Burning Blade Neophyte
    .mob +Burning Blade Cultist
    .complete 1525,2 --Reagent Pouch (1)
    .mob +Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tuez les |cRXP_ENEMY_Cultists|r. Dépouillez-les pour un |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
    .solo
step
    #optional
    #label Collars1
step << skip --Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_Sautez sur le rocher. Effectuez un Logout skip en positionnant votre personnage jusqu'à ce qu'il semble flotter, puis déconnectez-vous et reconnectez-vous|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Voyagez vers |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Rendez la quête Rocher du crâne
    .accept 829 >>Acceptez la quête Neeru Lamefeu
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Avancez dans la grotte
    .group
step
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
    >>|cRXP_WARN_Ces mobs s'enfuient. Faites attention à ne pas faire un double pull|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Choisissez le|r |T135158:0|t[Bâton défectueux en bois] |cRXP_WARN_en tant que récompense de quête et conservez-le. Vous obtiendrez la compétence pour porter les Bâtons à Orgrimmar|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Rendez la quête Des lignes sécurisées
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >> Montez jusqu'au niveau 10
    --VV Enter loop coords
step << Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
    .isOnQuest 829
    .group
step << !Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entrez dans Orgrimmar
    .zoneskip Orgrimmar
step << !Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Trak'gen|r
    .vendor >> Vendez au marchand
    .target Trak'gen
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
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
    .isOnQuest 6385
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Rendez la quête Le maléfice de faiblesse
    .trainer >> Apprenez vos sorts de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    #optional
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
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Rendez la quête Les ordres de l'amiral
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acceptez la quête La Main brisée << Orc Rogue/Troll Rogue
    .trainer >> Apprenez vos sorts de classe
    .target Therzok
step << Shaman
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Acceptez la quête La recherche de l'antidote
    .target Kor'ghan
    .isOnQuest 812
step << Shaman
    #completewith CallofFire3
    >>Abandonnez Besoin d'un remède. Ceci enlèvera le chronomètre de la quête mais vous pourrez toujours la faire
    .abandon 812 >>Abandonnez Besoin d'un remède
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Rendez la quête Neeru Lamefeu
    .accept 809 >>Acceptez la quête Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Apprenez vos sorts de classe
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >> Voyagez jusqu'à la Vallée de l'Honneur
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Apprenez vos sorts de classe
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ZeptoUC1
    +Équipez le [Bâton] quand vous êtes niveau 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendez votre surplus. Vendez votre arme si cela vous donne assez d'argent pour un |T132395:0|t[Tabar] (22s 14c). Vous reviendrez plus tard si vous n'avez pas assez d'argent.
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Achetez-lui un|r |T132395:0|t[Tabar] |cRXP_BUY_|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Équipez le|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith ZeptoUC1
    +Équipez le [Bâton] quand vous êtes niveau 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << !Hunter !Shaman
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Hunter
    #completewith HunterCrossRoadsVisit1
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
    .group
step << Shaman/Hunter
    #label VenomPoisonSacs
    #loop
    .goto Durotar,36.40,30.95,0
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    >>Tuez les |cRXP_ENEMY_Venomtail Scorpids|r. Dépouillez-les pour leur |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << Hunter
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Voyagez au sud le long de la rivière vers le poste de Guet-Lointain
    >>Tuez les |cRXP_ENEMY_Dreadmaw Crocolisks|r sur le chemin. Dépouillez-les pour la |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Passez et abandonnez cette quête si elle ne tombe pas|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>Voyagez au sud le long de la rivière. Tuez les |cRXP_ENEMY_Crocilisques Gueule-d'effroi|r sur le chemin. Dépouillez-les pour l' |cRXP_LOOT_Amulette de Kron|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
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
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Rendez la quête L'appel du feu
    .accept 1526 >>Acceptez la quête L'appel du feu
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>Utilisez le [Sapta de feu]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Tuez la |cRXP_ENEMY_Minor Manifestation of Fire|r. Dépouillez-la pour son |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Cliquez sur le |cRXP_PICK_Brazier|r sur le sol
    .turnin 1526 >>Rendez la quête L'appel du feu
    .accept 1527 >>Acceptez la quête L'appel du feu
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Prenez le chemin pour descendre de la montagne
    >>Faites attention à ne pas tomber de la montagne, le chemin est très étroit. Vous pourriez tomber et mourir
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>Tuez les |cRXP_ENEMY_Crocilisques Gueule-d'effrois|r. Dépouillez-les pour l' |cRXP_LOOT_Amulette de Kron|r
    >>|cRXP_WARN_Passez et abandonnez cette quête si elle ne tombe pas|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Rendez la quête L'égaré
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Voyagez jusqu'au poste de Guet-Lointain
    .zoneskip The Barrens
step << Shaman/Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Rendez la quête Sous les drapeaux de la Horde
    .accept 842 >>Acceptez la quête Conscription à la Croisée
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Rendez la quête Ak'Zeloth
    .accept 924 >>Acceptez la quête La Graine démoniaque
    .target Ak'Zeloth
    .isQuestTurnedIn 829
    .group
step << Shaman/Hunter
    .goto The Barrens,62.34,20.03
    >>Ramassez la [Pierre de puissance imparfaite] près de |cRXP_FRIENDLY_Ak'Zeloth|r. Cet objet a une durée de 30 minutes, donc soyez sûr d'être rapide
    .turnin 926 >>Rendez la quête Pierre de puissance imparfaite
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Rendez la quête L'appel du feu
    .target Kranal Fiss
step << Hunter
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> Voyagez à la Croisée
step << Hunter
    #label HunterCrossRoadsVisit1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Zargh|r, à |cRXP_FRIENDLY_Sergra|r, à |cRXP_FRIENDLY_Thork|r et à |cRXP_FRIENDLY_Gazrog|r
    .accept 6365 >>Acceptez la quête De la viande pour Orgrimmar
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 842 >>Rendez la quête Conscription à la Croisée
    .accept 844 >>Acceptez la quête La menace des trotteurs des plaines
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 871 >>Acceptez la quête Stopper les attaques des hurans
    .accept 5041 >>Acceptez la quête Ravitaillement pour la Croisée
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 869 >>Acceptez la quête Les raptors voleurs
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parler à|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Ramassez le |cRXP_PICK_Tonneau vide de Chen|r sur le sol et commencez la quête. Si il n'est pas disponible, vous l'obtiendrez plus tard
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step << Shaman/Hunter
    #completewith DemonSeed
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman/Hunter
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> Montez au sommet de la montagne
    .isOnQuest 924
step << Shaman/Hunter
    #completewith next
    +|cRXP_WARN_Soyez prudents si|r |cRXP_ENEMY_Rathorian|r |cRXP_WARN_est présent, c'est un rare de niveau 15. Soyez prêts à utiliser votre|r |T133728:0|t[Crâne au faible rougeoiement] |cRXP_WARN_et la|r |T134712:0|t[Colle très collante] |cRXP_WARN_si nécessaire|r
    .unitscan Rathorian
step << Shaman/Hunter
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Cliquez sur l'|cRXP_PICK_Altar|r
    >>Vérifiez que vous ayez une [Pierre de puissance imparfaite] (30 minutes de durée) sur vous
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >> Descendez la montagne d'où vous êtes venu
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    >>Tuez les |cRXP_ENEMY_Trotteurs|r. Dépouillez-les pour leur |cRXP_LOOT_Becs|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #completewith next
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Hunter
    .goto The Barrens,55.70,27.30
    .use 4926 >> Ramassez le |cRXP_PICK_Tonneau vide de Chen|r sur le sol et commencez la quête. Si il n'est pas disponible, vous l'obtiendrez plus tard
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acceptez la quête Tonneau vide de Chen
step << Shaman/Hunter
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Tuez les |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r et les |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman/Hunter
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Dépouillez-les pour leur |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #loop
	.goto The Barrens,53.12,28.72,0
	.goto The Barrens,53.12,28.72,60,0
	.goto The Barrens,53.97,28.10,60,0
	.goto The Barrens,54.64,27.09,60,0
	.goto The Barrens,55.47,26.94,60,0
	.goto The Barrens,55.44,25.70,60,0
	.goto The Barrens,55.51,24.54,60,0
	.goto The Barrens,54.75,23.51,60,0
	.goto The Barrens,53.74,23.66,60,0
	.goto The Barrens,53.35,25.16,60,0
	.goto The Barrens,52.99,26.88,60,0
    .xp 11+6980 >> Montez votre expérience jusqu'à 6980+/8800xp
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Zargh|r, à |cRXP_FRIENDLY_Sergra|r et à |cRXP_FRIENDLY_Thork|r
    .turnin 6386 >> Rendez la quête Retour à la Croisée
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Rendez la quête La perturbation cesse
    .accept 872 >>Acceptez la quête Stopper les attaques des hurans
    .target +Thork
    .goto The Barrens,51.50,30.87
    .isOnQuest 6386
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergra|r et |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Rendez la quête La menace des trotteurs des plaines
    .accept 845 >>Acceptez la quête Les zhévras
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Rendez la quête La perturbation cesse
    .accept 872 >>Acceptez la quête Stopper les attaques des hurans
    .target +Thork
    .goto The Barrens,51.50,30.87
step << Shaman/Hunter
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Boorand Vent-des-plaines l'aubergiste|r
    .home >>Liez votre Pierre de foyer à la Croisée
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Hunter
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Rendez la quête De la viande pour Orgrimmar
    .accept 6384 >>Acceptez la quête Trajet vers Orgrimmar
    .target Devrak
step << Hunter
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Hunter
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Rendez la quête Trajet vers Orgrimmar
    .accept 6385 >>Acceptez la quête Doras, le maître des coursiers du vent
    .target Innkeeper Gryshka
step << Hunter
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Rendez la quête Doras, le maître des coursiers du vent
    .accept 6386 >> Acceptez la quête Retour à la Croisée
    .target Doras
step << Shaman/Hunter
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Rendez la quête La recherche de l'antidote
    .target Kor'ghan
    .isQuestComplete 813
    .isQuestAvailable 812
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kardris|r
    .train 547 >> Apprenez vos sorts de classe
    .target Kardris Dreamseeker
    .xp <12,1
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T135154:0|t[Bâton de combat] (30s 22c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Achetez-lui un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith ZeptoUC1
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Voyagez jusqu'à la Vallée de l'Honneur
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormak|r
    .train 14281 >> Apprenez vos sorts de classe
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Apprenez les compétences de votre familier
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Achetez-lui un|r |T135499:0|t[Arc laminé à double courbure] |cRXP_BUY_|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Équipez l'|r |T135499:0|t[Arc laminé à double courbure]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman/Hunter
    #label Leaveorg2
    #completewith next
    .zone Durotar >> Quittez Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acceptez la quête Besoin d'un remède
    .turnin 812 >>Rendez la quête Besoin d'un remède
    .target Rhinag
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Montez la Tour des Zeppelins
    .zone Tirisfal Glades >>Prenez le Zeppelin pour les Clairières de Tirisfal
    >>|cRXP_WARN_Invoquez de l'eau en attendant|r << Mage
    .zoneskip Tirisfal Glades
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
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
	.collect 3164,6,429,1 >>|cRXP_BUY_Achetez six|r |T134339:0|t[Coeurs de worg décolorés] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Passez cette étape si vous voulez, c'est seulement un petit gain de temps|r
	.target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Effectuez un Logout skip dans le Quartier Magique en positionnant votre personnage sur la partie la plus élevée de l'escalier le plus bas jusqu'à ce qu'il semble flotter, puis en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    >>|cRXP_WARN_Si vous n'arrivez pas à le faire, sortez simplement de Fossoyeuse normalement|r
    .zoneskip Tirisfal Glades
step << Orc Rogue/Troll Rogue
    #completewith next
    .zone Tirisfal Glades >>Quittez Undercity
    .zoneskip Undercity,1
step
    #completewith next
    .goto Tirisfal Glades,61.52,53.20,80 >> Voyagez jusqu'à Brill
    .subzoneskip 159
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .accept 354 >>Acceptez la quête Morts dans la famille
    .accept 362 >>Acceptez la quête Les moulins hantés
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Acceptez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 12
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
    .xp <10,1
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ageron|r à l'intérieur de l'auberge
    .accept 1478 >> Acceptez la quête Les invocations de Halgar
    .target Ageron Kargal
    .isQuestAvailable 1504
    .xp <10,1
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marion|r à l'intérieur de l'auberge
    .accept 1885 >>Acceptez la quête Mennet Carkad
    .target Marion Call
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain|r à l'intérieur de l'auberge
    .accept 1881 >> Acceptez la quête Parler à Anastasia
    .target Cain Firesong
    .xp <10,1
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
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .maxlevel 11
step
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Avis de recherche|r.
    .accept 398 >>Acceptez la quête On recherche: Œil-de-ver
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sevren|r à l'intérieur du bâtiment
    .accept 358 >>Acceptez la quête Les Profanateurs
    .target Magistrate Sevren
    .maxlevel 12
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .accept 367 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Acceptez la quête Une tâche putride
    .target Deathguard Dillinger
    .maxlevel 11
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Cliquez sur le|r |cRXP_WARN_Déclencheur du mausolée|r |cRXP_WARN_au sol. Cela va invoquer|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Tuez-le|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step
    #completewith Pumpkins
    >>Tuez tous les |cRXP_ENEMY_Sombredogues|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Vous recevrez le|r |T133849:0|t[Sable de léthargie] |cRXP_WARN_à la suite de cette quête|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
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
    .maxlevel 11
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
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r.
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #completewith next
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Tuez tous les |cRXP_ENEMY_Sombredogues|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Vous recevrez le|r |T133849:0|t[Sable de léthargie] |cRXP_WARN_à la suite de cette quête|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step
    #completewith Brillturnins2
    .subzone 159 >> Retournez à Brill
step
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Rendez la quête Une tâche putride
    .accept 426 >>Acceptez la quête La chute des moulins
    .target Deathguard Dillinger
    .isQuestComplete 404
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Acceptez la quête La chute des moulins
    .target Deathguard Dillinger
    .isQuestTurnedIn 404
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .turnin 365 >>Rendez la quête Les champs du Chagrin
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target Apothecary Johaan
    .isQuestComplete 365
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .accept 407 >>Acceptez la quête Les champs du Chagrin
    .target Apothecary Johaan
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 367 >>Rendez la quête Une Peste nouvelle
    .accept 368 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
step
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
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler au |cRXP_FRIENDLY_Nécrogarde Burgess|r
    .accept 374 >>Acceptez la quête Preuves de la mort
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step
    #optional
    #label Brillturnins2
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
    #optional
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
    #optional
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
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Rendez la quête Mennet Carkad
    .accept 1886 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
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
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
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
    .zone Tirisfal Glades >> Quittez Undercity par les Égouts
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>Récoltez les |cRXP_LOOT_Anneaux de la Croisade écarlate|r. Vous n'avez pas besoin de terminer cette étape maintenant
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
    #completewith MillsOverun
    >>La |T134939:0|t[|cRXP_LOOT_Lettre de Thurman|r] |cRXP_WARN_peut tomber sur ces mobs. Acceptez la quête si vous la récupérez|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acceptez la quête Une lettre perdue
    .use 2839
    .isOnQuest 362
step
    #optional
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
    #optional
    #requires MillsOverun
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
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
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
step
    #optional
    #completewith RotHideGnolls
    >>Tuez tous les |cRXP_ENEMY_Chauve-souris|r que vous voyez. Dépouillez-les pour leur |cRXP_LOOT_Peaux|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,56.43,43.92,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Tuez les |cRXP_ENEMY_Bâtards|r et |cRXP_ENEMY_Les profanateurs|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Rendez la quête La chute des moulins
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 368 >>Rendez la quête Une Peste nouvelle
    .accept 369 >>Acceptez la quête Une Peste nouvelle
    .target Apothecary Johaan
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
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Rendez la quête On recherche: Œil-de-ver
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zygand|r
    .accept 371 >>Acceptez la quête En guerre avec la Croisade écarlate
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Rendez la quête Les Profanateurs
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r, à |cRXP_FRIENDLY_Johaan|r, à |cRXP_FRIENDLY_Zygand|r et à |cRXP_FRIENDLY_Sevren|r
    .accept 359 >>Acceptez la quête En mission pour les Réprouvés
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_Mettez le|r |T133849:0|t[Sable de léthargie] sur vos barres.|cRXP_WARN_. Gardez-le pour les urgences|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r, à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
    .isQuestComplete 354
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r, à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r et à |cRXP_FRIENDLY_Gretchen|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Rendez la quête Le frisson de la mort
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yvette|r et à |cRXP_FRIENDLY_Coleman|r à l'intérieur de l'auberge
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_est au deuxième étage|r
    .turnin 361 >>Rendez la quête Une lettre perdue
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 354 >>Rendez la quête Morts dans la famille
    .turnin 362 >>Rendez la quête Les moulins hantés
    .accept 355 >>Acceptez la quête Parler à Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .isQuestComplete 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .accept 1821 >>Acceptez la quête L'héritage des Agamand
    .group
    .isQuestTurnedIn 1819
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .solo
    .isQuestTurnedIn 1819
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
    .maxlevel 13
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Nécrogarde Linnea|r
    .accept 356 >>Acceptez la quête Patrouille d'arrière-garde
    .target Deathguard Linnea
    .maxlevel 13
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
step << Priest/Warlock
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Collectez 3 stacks d'|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour votre Baguette magique inférieure. C'est la dernière chance d'en obtenir avant la Forêt des Pins-Argentés|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 371
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
step << Priest/Warlock
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
    .isQuestComplete 356
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à |cRXP_FRIENDLY_Zygand|r, à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .accept 408 >>Acceptez la quête La crypte familiale
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isQuestComplete 371
    .isQuestComplete 374
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Burgess|r, à |cRXP_FRIENDLY_Zygand|r, à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Rendez la quête Preuves de la mort
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Rendez la quête En guerre avec la Croisade écarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isQuestComplete 371
    .isQuestComplete 374
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .accept 408 >>Acceptez la quête La crypte familiale
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
    .isQuestComplete 369
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sevren|r et à |cRXP_FRIENDLY_Johaan|r
    .turnin 360 >>Rendez la quête Retourner voir le Magistrat
    .turnin 355 >>Rendez la quête Parler à Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
    .accept 445 >>Acceptez la quête Livraison dans la forêt des Pins argentés
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
    .isQuestComplete 369
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Apothicaire Johaan|r
    .turnin 369 >>Rendez la quête Une Peste nouvelle
    .accept 492 >>Acceptez la quête Une Peste nouvelle
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
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Voyagez à la crypte des Moulins d'Agamand
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ancêtres gémissantes|r et les |cRXP_ENEMY_Ancêtres pourrissants|r.
    >>|cRXP_WARN_Soyez prudent ! Les mobs de cette crypte réapparaissent dynamiquement !|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Tuez le |cRXP_ENEMY_Capitaine Dargol|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r. Il est au fond de la crypte
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>Ramassez les |cRXP_PICK_Râtelier d'armes Agamand|r au sol
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
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
    .group 2
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
    .group 2
step << skip
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Sautez sur l'un des râteliers d'armes. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple vidéo|r
    .isQuestComplete 408
    .group
step
    #completewith NewPlagueFinal
    .subzone 159 >>Voyagez jusqu'à Brill
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Sevren|r
    .turnin 408 >>Rendez la quête La crypte familiale
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1821 >>Rendez la quête L'héritage des Agamand
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1822 >>Une arme en héritage
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Zélote écarlate capturé|r en bas des escaliers au fond de l'auberge
    .turnin 407 >>Rendez la quête Les champs du Chagrin
    .target Captured Scarlet Zealot
    .isOnQuest 407
step
    #label NewPlagueFinal
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
    #optional
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
    #optional
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
    #optional
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
    #optional
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
    #optional
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
step << !Undead
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entrez dans Undercity
    .zoneskip Undercity
step << !Undead
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
step << Rogue
    #label Swordtraining3
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Archibald|r au Quartier de la Guerre
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ au Quartier des Voleurs. Achetez-lui un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith Entersilverpine
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
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
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Apprenez |T136249:0|t[Couture]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Transformez toutes vos|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_en|r |T132890:0|t[Rouleaux d'étoffe de lin]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Apprenez |T132662:0|t[Robe marron en lin]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Millie Gregorian|r
    >>|cRXP_BUY_Achetez-lui des|r |T132891:0|t[Bobines de fil grossier] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Fabriquez autant de|r |T132662:0|t[Robes marron en lin] |cRXP_WARN_que possible|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Achetez-lui un|r |T133942:0|t[Bâtonnet en cuivre] |cRXP_BUY_et du|r |T135435:0|t[Simple Bois] |cRXP_BUY_|r
    >>|cRXP_WARN_Désenchantez tous les|r |T132662:0|t[Robe marron en lin] |cRXP_WARN_que vous avez tissé et fabriqué un|r |T135225:0|t[Bâtonnet runique en cuivre]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malcomb Wynn|r
    .train 14293 >> Apprenez |T135139:0|t[Baguette magique inférieure]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Créez une|r |T135139:0|t[Baguette magique inférieure]
    >>|cRXP_WARN_Si vous n'avez pas obtenu une|r |T132867:0|t[Essence de magie inférieure] |cRXP_WARN_alors achetez-en une à|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_s'il en a. Sinon, terminez cette étape plus tard|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Équipez la|r |T135139:0|t[Baguette magique inférieure]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #optional
    .abandon 806 >> Abandonnez la quête De sombres orages
    .isOnQuest 806
step
    #optional
    .abandon 408 >> Abandonnez la quête La crypte familiale
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >> Abandonnez la quête L'héritage des Agamand
    .isOnQuest 1821
step << Shaman/Hunter
    #optional
    .abandon 816 >>Abandonnez la quête L'égaré
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
    .zoneskip Silverpine Forest
step
    #label Entersilverpine
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .zoneskip Silverpine Forest
]])
