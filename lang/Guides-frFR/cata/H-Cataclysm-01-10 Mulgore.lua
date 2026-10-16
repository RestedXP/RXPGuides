if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Mulgore
#next 6-10 Mulgore
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Tauren
    #completewith next
    +|cRXP_WARN_Vous avez sélectionné un guide prévu pour les Taures. Nous ne recommandons pas cette zone car il y a des quêtes verrouillées par race uniquement pour les Taures. Il est recommandé de choisir la même zone de départ dans laquelle vous commencez|r
step
    .goto 7,45.15,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hawkwind|r
    .accept 14449 >>Acceptez la quête La première étape
    .target Chief Hawkwind
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r
    .turnin 14449 >>Rendez la quête La première étape
    .accept 14452 >>Acceptez la quête Le rite de force
    .target Grull Hawkwind
step
    .goto 7,49.20,78.98,30,0
    .goto 7,49.56,78.24,30,0
    .goto 7,49.33,77.59,30,0
    .goto 7,50.23,78.31,30,0
    .goto 7,50.92,78.32,30,0
    .goto 7,50.31,77.25,30,0
    .goto 7,49.56,78.24
    >>Tuez les |cRXP_ENEMY_Bristleback Invaders|r
    .complete 14452,1 --Bristleback Invaders (6)
    .mob Bristleback Invader
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r
    .turnin 14452 >>Rendez la quête Le rite de force
    .accept 24852 >>Acceptez la quête Notre tribu, captive
    .target Grull Hawkwind
step
    .goto 7,52.06,80.48,30,0
    .goto 7,52.15,79.93,30,0
    .goto 7,52.06,78.28,30,0
    .goto 7,52.17,77.75,30,0
    .goto 7,52.21,76.72,30,0
    .goto 7,52.57,74.81,30,0
    .goto 7,50.89,82.37,30,0
    .goto 7,50.67,83.12,30,0
    .goto 7,52.06,80.48
    >>Cliquez sur les |cRXP_PICK_Cages|r pour libérer les |cRXP_FRIENDLY_Captured Braves|r
    .complete 24852,1 --Braves Freed (4)
    .target Captured Brave
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grull|r
    .turnin 24852 >>Rendez la quête Notre tribu, captive
    .accept 14458 >>Acceptez la quête Allez voir Adana
    .target Grull Hawkwind
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adana|r
    .turnin 14458 >>Rendez la quête Allez voir Adana
    .accept 14455 >>Acceptez la quête Mort aux mande-épines !
    .accept 14456 >>Acceptez la quête Le rite de courage
    .target Adana Thunderhorn
step
    #loop
    .goto 7,46.72,87.92,0
    .goto 7,47.05,87.38,30,0
    .goto 7,46.72,87.92,30,0
    .goto 7,46.45,88.75,30,0
    .goto 7,47.33,89.49,30,0
    .goto 7,47.90,89.03,30,0
    .goto 7,47.90,88.05,30,0
    >>Tuez les |cRXP_ENEMY_Bristleback Gun Thiefs|r. Ramassez-les pour leurs |cRXP_LOOT_Rifles|r
    >>Tuez les |cRXP_ENEMY_Bristleback Thorncallers|r
    .complete 14456,1 --Stolen Rifle (7)
    .mob +Bristleback Gun Thiefs
    .complete 14455,1 --Bristleback Thorncaller (7)
    .mob +Bristleback Thorncaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adana|r et |cRXP_FRIENDLY_Rohaku|r
    .turnin 14456 >>Rendez la quête Le rite de courage
    .turnin 14455 >>Rendez la quête Mort aux mande-épines !
    .accept 14459 >>Acceptez la quête Les sangliers de guerre apprivoisés
    .accept 14461 >>Acceptez la quête Les auges du mal
    .goto 7,46.18,82.61
    .accept 31165 >>Acceptez la quête Remarque calligraphiée << Monk
    .accept 3092 >>Acceptez la quête Note gravée << Hunter
    .accept 3091 >>Acceptez la quête Note simple << Warrior
    .accept 27015 >>Acceptez la quête La note consacrée << Paladin
    .accept 3094 >>Acceptez la quête Note verdoyante << Druid
    .accept 3093 >>Acceptez la quête Note runique << Shaman
    .accept 27014 >>Acceptez la quête La note bénie << Priest
    .goto 7,46.15,82.32
    .target Adana Thunderhorn
    .target Rohaku Stonehoof
step
    #completewith ThirdTrough
    >>Tuez le |cRXP_ENEMY_Sanglier de guerre cuirassé|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,44.70,87.82
    >>|cRXP_WARN_Utilisez|r |T135432:0|t[Adana's Torche] |cRXP_WARN_à côté du premier abreuvoir|r
    .complete 14461,1 --First Trough (1)
    .use 49539
step
    .goto 7,44.32,88.71
    >>|cRXP_WARN_Utilisez|r |T135432:0|t[Adana's Torche] |cRXP_WARN_à côté du deuxième abreuvoir|r
    .complete 14461,2 --Second Trough (1)
    .use 49539
step
    #label ThirdTrough
    .goto 1412/1,-265.00000,-3405.80005
    >>|cRXP_WARN_Utilisez|r |T135432:0|t[Adana's Torche] |cRXP_WARN_à côté du troisième abreuvoir|r
    .complete 14461,3 --Third Trough (1)
    .use 49539
step
#loop
	.line 7,45.73,88.52,44.76,89.60,44.23,88.74,44.22,87.98,44.72,87.69,45.20,87.83,45.73,88
	.goto 7,45.73,88.52,30,0
	.goto 7,44.76,89.60,30,0
	.goto 7,44.23,88.74,30,0
	.goto 7,44.22,87.98,30,0
	.goto 7,44.72,87.69,30,0
	.goto 7,45.20,87.83,30,0
	.goto 7,45.73,88.00,30,0
    >>Tuez le |cRXP_ENEMY_Sanglier de guerre cuirassé|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adana|r
    .turnin 14459 >>Rendez la quête Les sangliers de guerre apprivoisés
    .turnin 14461 >>Rendez la quête Les auges du mal
    .accept 14460 >>Acceptez la quête Le rite d'honneur
    .target Adana Thunderhorn
step
    .goto 7,41.08,81.42
    >>Tuez le |cRXP_ENEMY_Chef hurleur Mantépine|r. Ramassez-le pour sa |cRXP_LOOT_Mane|r
    .complete 14460,1 --Mane of Thornmantle (1)
    .mob Chief Squealer Thornmantle
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Narache
    .cooldown item,6948,>0
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hawkwind|r
    .turnin 14460 >>Rendez la quête Le rite d'honneur
    .accept 24861 >>Acceptez la quête Derniers rites, premiers rites
    .target Chief Hawkwind
step
    .goto 7,45.11,75.39
    >>|cRXP_WARN_Utilisez le|r |T132813:0|t[Eau Pitcher]
    .complete 24861,1 --Offering Placed (1)
    .use 50465
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hawkwind|r
    .turnin 24861 >>Rendez la quête Derniers rites, premiers rites
    .accept 23733 >>Acceptez la quête Les rites de la Terre-Mère
    .target Chief Hawkwind
step << Monk
    .goto 462/1,-260.800,-2910.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoyu|r
    .turnin 31165 >>Rendez la quête Remarque calligraphiée
    .accept 31166 >>Acceptez la quête Paume du tigre
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Rendez la quête Note gravée
    .accept 27021 >>Acceptez la quête L'assurance de bien tirer
    .train 56641 >> S'entraîner |T132213:0|t[Veilleur du puits Solanian] << Cata
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Rendez la quête Note simple
    .accept 27020 >>Acceptez la quête La première leçon
    .train 100 >> Apprenez [Charge] << Cata
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helaku|r
    .turnin 27015 >>Rendez la quête La note consacrée
    .accept 27023 >>Acceptez la quête L'art des marche-soleil
    .train 20271 >>Apprenez [Jugement] << Cata
    .train 20154 >>S'entraîner |T135960:0|t[Sceau de piété] << Cata
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Rendez la quête Note verdoyante
    .accept 27067 >>Acceptez la quête Régénérant Toucher
    .train 774 >>Apprenez |T136081:0|t[Récupération] << Cata
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Rendez la quête Note verdoyante
    .accept 27067 >>Acceptez la quête Éclat lunaire
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Rendez la quête Note runique
    .accept 27027 >>Acceptez la quête La frappe primordiale
    .train 73899 >>S'entraîner |T460956:0|t[La frappe primordiale] << Cata
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27014 >>Rendez la quête La note bénie
    .accept 27066 >>Acceptez la quête Soins en un éclair
    .train 2061 >>Entraînez-vous |T135907:0|t[Soins rapides] << Cata
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27014 >>Rendre la quête La note bénie
    .accept 27066 >>Acceptez la quête Apprendre la parole
    .target Seer Ravenfeather
step << Monk
    .goto 7,45.43,75.39
	>>Lancez |T606551:0|t[Paume du tigre] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
    .complete 31166,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Hunter
    .goto 7,45.43,75.39
	>>Lancez |T132213:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 27021,2 << !Cata --Steady Shot (x3)
	.complete 27021,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Warrior
    .goto 7,45.43,75.39
	>>Lancez |T132337:0|t[À la charge !] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 27020,2 << !Cata --Cast Charge (x3)
	.complete 27020,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Paladin cata
    .goto 7,45.43,75.39
	>>Lancez |T135959:0|t[Jugement] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 27023,1 --Cast Judgement (x3)
	.mob Training Dummy
step << Paladin !cata
    .goto 7,45.43,75.39
	>>Lancez |T135961:0|t[Sceau d'autorité], ensuite attaquez un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 27023,2
    .mob Training Dummy
step << Druid cata
    .goto 7,45.65,75.35
	>>Lancez |T136081:0|t[Récupération] sur un |cRXP_FRIENDLY_Brave blessé|r
	.complete 27067,1 << Cata --Cast Rejuvenation (x1)
	.target Wounded Brave
step << Druid !cata
    .goto 7,45.43,75.39
	>>Lancez |T136096:0|t[Eclat lunaire] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 27067,2 --Cast Moonfire
	.mob Training Dummy
step << Shaman
    .goto 7,45.43,75.39
	>>Lancez |T460956:0|t[La frappe primordiale] sur un |cRXP_ENEMY_Mannequin d'entraînement|r
	.complete 27027,2 << !Cata --Cast Primal Strike (x3)
	.complete 27027,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Priest
    .goto 7,45.65,75.35
	>>Lancez |T135907:0|t[Soins rapides] sur un |cRXP_FRIENDLY_Brave blessé|r
	.complete 27066,2 << !Cata --Cast Flash Heal (x5)
	.complete 27066,1 << Cata --Cast Flash Heal (x5)
	.target Wounded Brave
step << Monk
    .goto 462/1,-261.100,-2910.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoyu|r
    .turnin 31166 >>Rendre la quête Paume du tigre
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .turnin 27021 >>Rendre la quête L'assurance de bien tirer
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .turnin 27020 >>Rendre la quête La première leçon
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helaku|r
    .turnin 27023 >>Rendre la quête L'art des marche-soleil
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Rendre la quête Régénérant Toucher
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Rendre la quête Eclat lunaire
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meela|r
    .turnin 27027 >>Rendre la quête La frappe primordiale
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27066 >>Rendre la quête Soins dans un Éclair
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27066 >>Rendre la quête Veilleur du puits Solanian
    .target Seer Ravenfeather
step
    #completewith next
    .goto 1412/1,-114.60000,-2976.90015,12,0
    .goto 1412/1,-48.40000,-2907.10010,12,0
    .goto 1412/1,7.20000,-2900.60010,12,0
    .goto 1412/1,-42.80000,-2933.50000,30 >>Suivez le chemin jusqu'au sommet de la montagne
step
    .goto 1412/1,-42.80000,-2933.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dyami|r
    .turnin 23733 >>Rendez la quête Les rites de la Terre-Mère
    .accept 24215 >>Acceptez la quête Le rite des vents
    .target Dyami Windsoar
step
    #completewith next
    .goto 7,41.27,75.22,15,0
    .goto 7,41.36,74.10,15,0
    .deathskip >>Suivez la flèche en sautant de la montagne. Mourez et réapparaissez auprès du |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acceptez la quête Kyle a disparu !
    .target Ahab Wheathoof
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Mulgore
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Cataclysme 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acceptez la quête Kyle a disparu !
    .target Ahab Wheathoof
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <6,1
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Acceptez la quête Mazzranache
    .target Maur Raincaller
    .xp <6,1
step << Tauren
    .goto 7,46.06,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varg|r
    .accept 6361 >>Acceptez la quête Un tas de peaux
    .vendor >> Vendez ce dont vous n'avez pas besoin, et réparez votre équipement << Paladin/Priest
    .target Varg Windwhisper
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un |T133053:0|t[Maillet en bois] (6 argent 66 cuivre). Vous reviendrez plus rien si vous n'avez pas encore assez d'argent
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Parlez à|r |cRXP_FRIENDLY_Mahnott|r
    >>|cFF0E8312Achetez une|r |T133053:0|t[Massette en bois] |cFF0E8312chez lui|r
    .collect 2493,1,14438,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendeur trash. Vendez votre arme si elle vous rapporte assez d'argent pour acheter un |T135611:0|t[Tromblon orné] (3s 93c). Revenez plus tard si vous n'avez pas assez d'argent.
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Parlez à|r |cRXP_FRIENDLY_Kennah|r
    >>|cFF0E8312Achetez un|r |T135611:0|t[Tromblon orné] |cFF0E8312chez lui|r
    .collect 2509,1,14438,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith PalemaneGnolls
    +Équipez le |T133053:0|t[Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith PalemaneGnolls
    +Équipez le |T135611:0|t[Tromblon orné]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Tauren
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak|r
    .turnin 6361 >>Rendez la quête Un tas de peaux
    .accept 6362 >>Acceptez la quête Voyage vers les Pitons-du-Tonnerre
    .target Tak
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kauth|r
    .vendor >>|cRXP_BUY_Achetez jusqu'à 20|r |T132815:0|t[Lait glacé] |cRXP_BUY_et|r |T133968:0|t[Pain sorti du four] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Achetez jusqu'à 20|r [Pain sorti du four] << Warrior/Hunter
    .target Innkeeper Kauth
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahmo|r
    .turnin 24215 >>Rendez la quête Le rite des vents
    .accept 14438 >>Acceptez la quête Partager la terre
    .target Ahmo Thunderhorn
step
    .goto 7,48.77,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Acceptez la quête Chasse aux rapaces
    .target Harken Windtotem
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarl|r
    .train 8042 >> Apprenez vos sorts de classe
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alsoomse|r
    .train 589 >> Apprenez vos sorts de classe
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 8921 >> Apprenez vos sorts de classe
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iopi|r
    .train 465 >> Apprenez vos sorts de classe
    .target Sunwalker Iopi
step
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .accept 20440 >>Acceptez la quête L'eau empoisonnée
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 34428 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
step
    #completewith WCleansing1
    >>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    >>Cette quête n'a pas à être terminée à ce moment
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Wolfs|r. Ramassez-les pour leurs |cRXP_LOOT_Paws|r
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Ramassez-les pour leurs |cRXP_LOOT_Grif|r et |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #label PalemaneGnolls
#loop
	.line 7,47.96,69.82,47.20,70.68,47.71,71.57,48.37,71.84,48.83,72.00,49.84,70.48,49.24,70.24,48.87,69.80,47.96,69.82
	.goto 7,47.96,69.82,30,0
	.goto 7,47.20,70.68,30,0
	.goto 7,47.71,71.57,30,0
	.goto 7,48.37,71.84,30,0
	.goto 7,48.83,72.00,30,0
	.goto 7,49.84,70.48,30,0
	.goto 7,49.24,70.24,30,0
	.goto 7,48.87,69.80,30,0
	.goto 7,47.96,69.82,30,0
#loop
	.line 7,51.94,69.95,52.07,70.98,52.52,71.73,52.92,72.36,53.62,72.44,53.84,72.04,54.25,72.15,55.07,72.12,55.52,71.26,55.22,70.65,54.55,70.22,53.92,70.07,53.15,69.85,52.58,70.17,51.94,69
	.goto 7,51.94,69.95,30,0
	.goto 7,52.07,70.98,30,0
	.goto 7,52.52,71.73,30,0
	.goto 7,52.92,72.36,30,0
	.goto 7,53.62,72.44,30,0
	.goto 7,53.84,72.04,30,0
	.goto 7,54.25,72.15,30,0
	.goto 7,55.07,72.12,30,0
	.goto 7,55.52,71.26,30,0
	.goto 7,55.22,70.65,30,0
	.goto 7,54.55,70.22,30,0
	.goto 7,53.92,70.07,30,0
	.goto 7,53.15,69.85,30,0
	.goto 7,52.58,70.17,30,0
	.goto 7,51.94,69.00,30,0
    >>Tuez les |cRXP_ENEMY_Palemane Skinners|r, les |cRXP_ENEMY_Palemane Poachers|r et les |cRXP_ENEMY_Palemane Tanners|r
    .complete 14438,1 --Palemane Gnolls (15)
    .mob Palemane Skinner
    .mob Palemane Poacher
    .mob Palemane Tanner
step
    #loop
    .goto 7,48.25,67.61,0
    .goto 7,50.61,68.08,40,0
    .goto 7,50.23,66.00,40,0
    .goto 7,51.06,64.06,40,0
    .goto 7,52.38,63.49,40,0
    .goto 7,52.98,62.11,40,0
    .goto 7,54.02,61.22,40,0
    .goto 7,55.23,62.26,40,0
    .goto 7,56.63,62.25,40,0
    .goto 7,56.75,64.83,40,0
    .goto 7,56.06,67.30,40,0
    .goto 7,48.25,67.61,40,0
    >>Tuez les |cRXP_ENEMY_Wolfs|r. Ramassez-les pour leurs |cRXP_LOOT_Paws|r
    >>Tuez les |cRXP_ENEMY_Plainstriders|r. Ramassez-les pour leurs |cRXP_LOOT_Grif|r et |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #completewith AcceptDangers
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r] pour le nourrir
    >>|cRXP_WARN_Il tourne en cercles autour de Sabot-de-Sang|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label WCleansing1
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 20440 >>Rendez la quête L'eau empoisonnée
    .accept 24440 >>Acceptez la quête La purification de Sabot-d'hiver
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target Harken Windtotem
    .isQuestComplete 761
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahmo|r
    .turnin 14438 >>Rendez la quête Partager la terre
    .accept 14491 >>Acceptez la quête La terre s'agite
    .accept 24459 >>Acceptez la quête Morin Traqueur-de-Nuage
    .target Maur Raincaller
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Acceptez la quête Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendeur. Vendez votre arme si cela vous donne assez d'argent pour une |T133053:0|t[Massette en bois] (6s 65c). Vous reviendrez plus tard si vous n'avez pas assez d'argent pour l'instant
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Parlez à|r |cRXP_FRIENDLY_Mahnott|r|cFF0E8312. Achetez une|r |T133053:0|t[Massette en bois] |cFF0E8312chez lui|r
    .collect 2493,1,24440,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendeur. Vendez votre arme si cela vous donne assez d'argent pour une |T135611:0|t[Tromblon orné] (3s 93c). Vous reviendrez plus tard si vous n'avez pas assez d'argent pour l'instant
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Parlez à|r |cRXP_FRIENDLY_Kennah|r|cFF0E8312. Achetez un|r |T135611:0|t[Tromblon orné] |cFF0E8312chez lui|r
    .collect 2509,1,24440,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith WinterhoofWell
    +Équipez le |T133053:0|t[Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith WinterhoofWell
    +Équipez le |T135611:0|t[Tromblon orné]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    #label AcceptDangers
    .goto 1412/1,-384.80002,-2397.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Acceptez la quête Le danger des Furies-des-vents
    .target Ruul Eagletalon
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    >>Cette quête n'a pas à être terminée à ce moment
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label WinterhoofWell
    .goto 7,53.46,65.34
    >>|cRXP_WARN_Utilisez le|r |T135139:0|t[La purification de Sabot-d'hiver Totem] |cRXP_WARN_à côté du puits|r
    .use 5411
    .complete 24440,1 --Well Cleansed (1)
step
    #completewith next
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r] pour le nourrir
    >>|cRXP_WARN_Il tourne en cercles autour de Sabot-de-Sang|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 24440 >>Rendez la quête La purification de Sabot-d'hiver
    .accept 24441 >>Acceptez la quête Le totem de Corne-tonnerre
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
    .xp <7,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Apprenez vos sorts de classe
    .target Tarl Cloudsong
    .xp <8,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Apprenez vos sorts de classe
    .target Seer Alsoomse
    .xp <8,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Apprenez vos sorts de classe
    .target Gennia Runetotem
    .xp <8,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Apprenez vos sorts de classe
    .target Sunwalker Iopi
    .xp <7,1
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kauth|r
    .vendor >>|cRXP_BUY_Achetez jusqu'à 20|r |T132815:0|t[Lait glacé] |cRXP_BUY_et|r |T133968:0|t[Pain sorti du four] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Achetez jusqu'à 20|r [Pain sorti du four] << Warrior/Hunter
    .itemcount 1179,<20 << !Warrior !Hunter
    .itemcount 4541,<20
    .target Innkeeper Kauth
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    .turnin 24459 >>Rendez la quête Morin Traqueur-de-Nuage
    .accept 749 >>Acceptez la quête La caravane ravagée
    .target Morin Cloudstalker
step
    #completewith VentureCoCave
    >>Tuez |cRXP_ENEMY_Prairie Stalkers|r. Ramassez-les pour leurs |cRXP_LOOT_Claws|r
    >>Tuez |cRXP_ENEMY_Flatland Cougars|r. Ramassez-les pour leurs |cRXP_LOOT_Claws|r et un |cRXP_LOOT_Fémur de puma des basses plaines|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith VentureCoCave
    >>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    .goto 7,53.52,48.29
    >>Cliquez sur la |cRXP_PICK_Caisse de fournitures scellée|r
    .turnin 749 >>Rendez la quête La caravane ravagée
    .accept 751 >>Acceptez la quête La caravane ravagée
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    .turnin 751 >>Rendez la quête La caravane ravagée
    .accept 26179 >>Acceptez la quête La KapitalRisk
    .accept 26180 >>Acceptez la quête Le superviseur Vibrouage
    .target Morin Cloudstalker
step
    #label VentureCoCave
    #completewith FizsprocketKill
    .goto 7,60.86,47.47,10 >> Entrez dans la grotte
step
    #completewith FizsprocketKill
    >>Tuez |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #label FizsprocketKill
    .goto 7,61.21,46.29
    >>Tuez |cRXP_ENEMY_Fizsprocket|r. Ramassez-le pour son |cRXP_LOOT_Écritoire|r
    .complete 26180,1 --Fizsprocket's Clipboard (1)
    .mob Le superviseur Vibrouage
step
    #loop
    .goto 7,59.30,48.85,0
    .goto 7,62.21,45.13,20,0
    .goto 7,61.81,44.74,20,0
    .goto 7,61.29,43.64,20,0
    .goto 7,60.73,48.13,40,0
    .goto 7,60.47,49.63,40,0
    .goto 7,59.30,48.85,40,0
    >>Tuez |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #completewith FizsprocketTurnin
    >>Tuez |cRXP_ENEMY_Prairie Stalkers|r. Ramassez-les pour leurs |cRXP_LOOT_Claws|r
    >>Tuez |cRXP_ENEMY_Flatland Cougars|r. Ramassez-les pour leurs |cRXP_LOOT_Claws|r et un |cRXP_LOOT_Fémur de puma des basses plaines|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith FizsprocketTurnin
    >>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label FizsprocketTurnin
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morin|r
    .turnin 26179 >>Rendez la quête La KapitalRisk
    .turnin 26180 >>Rendez la quête Le superviseur Vibrouage
    .target Morin Cloudstalker
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #loop
    .goto 7,56.14,57.59,0
    .goto 7,57.94,60.08,40,0
    .goto 7,58.60,58.93,40,0
    .goto 7,59.73,57.46,40,0
    .goto 7,60.31,56.44,40,0
    .goto 7,61.03,55.56,40,0
    .goto 7,59.21,54.50,40,0
    .goto 7,58.44,53.38,40,0
    .goto 7,57.87,50.87,40,0
    .goto 7,57.23,50.07,40,0
    .goto 7,56.00,51.41,40,0
    .goto 7,55.66,53.73,40,0
    .goto 7,55.60,55.55,40,0
    .goto 7,56.14,57.59,40,0
    >>Tuez |cRXP_ENEMY_Prairie Stalkers|r. Ramassez-les pour leurs |cRXP_LOOT_claws|r
    >>Tuez |cRXP_ENEMY_Flatland Cougars|r. Ramassez-les pour leurs |cRXP_LOOT_claws|r et pour un |cRXP_LOOT_Femur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #loop
    .goto 7,54.70,67.69,0
    .goto 7,54.11,62.03,40,0
    .goto 7,51.77,66.37,40,0
    .goto 7,51.06,67.33,40,0
    .goto 7,50.01,68.11,40,0
    .goto 7,54.70,67.69,40,0
    >>Tuez les |cRXP_ENEMY_Swoops|r. Dépouillez-les pour leur |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #xprate <1.2
    #completewith ThunderHornTotem
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r] pour le nourrir
    >>|cRXP_WARN_Il tourne en cercles autour de Sabot-de-Sang|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #xprate >1.19
    #completewith FlyTB
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r] pour le nourrir
    >>|cRXP_WARN_Il tourne en cercles autour de Sabot-de-Sang|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label ThunderHornTurnin
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 24441 >>Rendez la quête Le totem de Corne-tonnerre
    .accept 24456 >>Acceptez la quête Purification de Corne-tonnerre
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Rendez la quête Chasse aux rapaces
    .target Harken Windtotem
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Apprenez vos sorts de classe
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Apprenez vos sorts de classe
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Apprenez vos sorts de classe
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Apprenez vos sorts de classe
    .target Sunwalker Iopi
step
    .goto 7,47.16,56.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maur|r
    .turnin 26188 >>Rendez la quête Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
step
    #xprate <1.2
    #label ThunderHornTotem
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Utilisez le|r |T135139:0|t[La purification de Corne-tonnerre Totem] |cRXP_WARN_à côté du puits|r
    .complete 24456,1 --Well Cleansed (1)
step
    #xprate >1.19
    #label FlyTB
    #completewith next
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak|r
    .fly Thunder Bluff >>Volez à Thunder Bluff
    .target Tak
step << Tauren
    #xprate >1.19
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Rendez la quête Voyage vers les Pitons-du-Tonnerre
    .accept 6363 >>Acceptez la quête Tal, le maître des coursiers du vent
    .target Ahanu
step << Tauren
    #xprate >1.19
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Rendez la quête Tal, le maître des coursiers du vent
    .accept 6364 >>Acceptez la quête Retourner voir Varg
    .target Tal
step << skip
    #xprate >1.19
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Définissez votre foyer aux Pitons-du-Tonnerre
    .target Innkeeper Pala
step
    #optional
    .maxlevel 9,MulgoreEnd
step
    #xprate >1.19
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Prenez l'ascenseur pour quitter Les Pitons-du-Tonnerre
    .zoneskip Mulgore
step
    #loop
    .goto 7,35.869,42.670,0
    .waypoint 7,36.260,44.783,40,0
    .waypoint 7,35.869,42.670,40,0
    .waypoint 7,34.946,40.825,40,0
    .waypoint 7,33.934,41.928,40,0
    .waypoint 7,32.540,41.483,40,0
    .waypoint 7,33.616,43.231,40,0
    >>Tuez |cRXP_ENEMY_Windfury Wind Witches|r et les |cRXP_ENEMY_Windfury Harpies|r. Dépouillez-les pour leur |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witches
    .mob Windfury Harpies
step
    #loop
    .goto 1412/1,416.10001,-1917.40002,0
    .goto 1412/1,377.89999,-1940.70007,20,0
    .goto 1412/1,416.10001,-1917.40002,20,0
    .goto 1412/1,447.89999,-1953.59998,20,0
    .goto 1412/1,414.30002,-1983.80005,20,0
    >>Utilisez le |T133841:0|t[Tambour of the Apaisée Terre] sur |cRXP_ENEMY_Agitated Terre Esprits|r
    >>|cRXP_WARN_Tuez-les s'ils résistent et vous attaquent|r
    .complete 14491,1 --Spirits Calmed (6)
    .use 49647
    .mob Agitated Earth Spirit
step
    #xprate >1.19
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Utilisez le|r |T135139:0|t[La purification de Corne-tonnerre Totem] |cRXP_WARN_à côté du puits|r
    .complete 24456,1 --Well Cleansed (1)
step
    #completewith DangerTurnin
    .deathskip >>Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #loop
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .waypoint 1412/1,-368.10001,-2296.19995,30,0
    .waypoint 1412/1,-354.10001,-2318.40015,30,0
    .waypoint 1412/1,-378.39999,-2339.10010,30,0
    .waypoint 1412/1,-406.39999,-2348.90015,30,0
    .waypoint 1412/1,-437.50000,-2394.40015,30,0
    .waypoint 1412/1,-444.80002,-2440.80005,30,0
    .waypoint 1412/1,-483.70001,-2458.30005,30,0
    .waypoint 1412/1,-455.30002,-2395.69995,30,0
    .waypoint 1412/1,-488.20001,-2347.90015,30,0
    .waypoint 1412/1,-487.00000,-2295.30005,30,0
    .waypoint 1412/1,-452.50000,-2256.69995,30,0
    .waypoint 1412/1,-421.60001,-2256.00000,30,0
    .waypoint 1412/1,-377.10001,-2257.30005,30,0
    .waypoint 1412/1,-368.80002,-2275.90015,30,0
    .use 33009>> Trouvez |cRXP_FRIENDLY_Kyle|r. Utilisez le |T134343:0|t[|cRXP_LOOT_Viande de trotteur tendre|r] pour le nourrir
    >>|cRXP_WARN_Il tourne en cercles autour de Sabot-de-Sang|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Rendez la quête Kyle a disparu !
    .target Ahab Wheathoof
step << Tauren
    #xprate >1.19
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varg|r
    .turnin 6364 >>Rendez la quête Retourner voir Varg
    .target Varg Windwhisper
step
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahmo|r
    .turnin 14491 >>Rendez la quête La terre s'agite
    .target Ahmo Thunderhorn
step
    #label DangerTurnin
    .goto 7,47.51,61.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Rendez la quête Le danger des Furies-des-vents
    .target Ruul Eagletalon
step
    #xprate <1.2
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Rendez la quête Purification de Corne-tonnerre
    .accept 24457 >>Acceptez la quête Le Rite de vision
    .target Mull Thunderhorn
step
    #xprate >1.19
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Rendez la quête Purification de Corne-tonnerre
    .target Mull Thunderhorn
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yaw|r
    .train 1978 >> Apprenez vos sorts de classe
    .target Yaw Sharpmane
    .xp <10,1
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krang|r
    .train 71 >> Apprenez vos sorts de classe
    .target Krang Stonehoof
    .xp <10,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarl|r
    .train 3599 >> Apprenez vos sorts de classe
    .target Tarl Cloudsong
    .xp <10,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alsoomse|r
    .train 8092 >> Apprenez vos sorts de classe
    .target Seer Alsoomse
    .xp <10,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gennia|r
    .train 5215 >> Apprenez vos sorts de classe
    .target Gennia Runetotem
    .xp <10,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iopi|r
    .train 82242 >> Apprenez vos sorts de classe
    .target Sunwalker Iopi
    .xp <10,1
step
    #xprate <1.2
    .goto 7,47.889,57.097
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarlman|r
    .turnin 24457 >>Rendez la quête Le Rite de vision
    .accept 20441 >>Acceptez la quête Le Rite de vision
    .target Zarlman Two-Moons
step
    #xprate <1.2
    .goto 7,47.850,56.961
    .use 49651 >>|cRXP_WARN_Utilisez l'|r |T134712:0|t[Eau de vision] |cRXP_WARN_au feu tribal|r
    .complete 20441,1 --Water of Vision consumed (1x)
    .timer 86,Le Rite de vision - Jeu de rôle
step
    #xprate <1.2
    #completewith next.
    .subzone 4835 >>Attendez jusqu'à votre arrivée au Camp Frôle-Soleil
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Una|r
    .turnin 20441 >>Rendez la quête Le Rite de vision
    .accept 24523 >>Acceptez la quête Le Totem de Crin-sauvage
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien du savoir Totem-de-Pluie|r
    .accept 833 >>Acceptez la quête Cimetière sacré
    .accept 773 >>Acceptez la quête Le Rite de sagesse
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Acceptez la quête Le chemin du chasseur
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Acceptez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
step
    #xprate <1.2
    #completewith RedRocks
    >>Tuez |cRXP_ENEMY_Prairie Loup Alphas|r. Dépouillez-les pour leurs |cRXP_LOOT_Teeth|r
    >>Tuez les |cRXP_ENEMY_Flatland Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    #loop
    .goto 7,52.476,8.126,0
    .waypoint 7,54.950,13.407,0
    .waypoint 7,51.782,11.187,50,0
    .waypoint 7,52.476,8.126,50,0
    .waypoint 7,53.252,12.366,50,0
    .waypoint 7,54.950,13.407,50,0
    .waypoint 7,55.939,16.542,50,0
    >>Tuez |cRXP_ENEMY_Windfury Sorceresses|r et |cRXP_ENEMY_Windfury Matriarchs|r. Dépouillez-les pour leurs |cRXP_LOOT_Plumes|r
    .complete 744,1 --Azure Feather (x6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (x6)
    .mob +Windfury Matriarch
step
    #xprate <1.2
    #label RedRocks
    .goto 7,60.828,22.737
    .subzone 225 >>Voyagez vers Rochers Rouges
    .isOnQuest 833
step
    #xprate <1.2
    #completewith next
    >>Tuez |cRXP_ENEMY_Bristleback Interlopers|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    .goto 7,60.787,22.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahanu|r
    .turnin 773 >>Rendez la quête Le Rite de sagesse
    .target Ancestral Spirit
step
    #xprate <1.2
    #loop
    .goto 7,60.374,21.638,0
    .waypoint 7,61.344,24.848,50,0
    .waypoint 7,59.935,24.400,50,0
    .waypoint 7,59.122,22.210,50,0
    .waypoint 7,60.374,21.638,50,0
    >>Tuez |cRXP_ENEMY_Bristleback Interlopers|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    #loop
    .goto 7,54.646,24.065,0
    .goto 7,46.777,18.984,0
    .waypoint 7,56.422,25.128,80,0
    .waypoint 7,54.646,24.065,80,0
    .waypoint 7,51.223,24.232,80,0
    .waypoint 7,49.326,21.378,80,0
    .waypoint 7,46.777,18.984,80,0
    .waypoint 7,47.051,13.915,80,0
    .waypoint 7,48.849,13.184,80,0
    >>Tuez |cRXP_ENEMY_Prairie Loup Alphas|r. Dépouillez-les pour leurs |cRXP_LOOT_Teeth|r
    >>Tuez les |cRXP_ENEMY_Flatland Prowlers|r. Dépouillez-les pour leur |cRXP_LOOT_Claws|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Una|r
    .turnin 24523 >>Rendez la quête Le Totem de Crin-sauvage
    .accept 24524 >>Acceptez la quête Purification de Crin-sauvage
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien du savoir Totem-de-Pluie|r
    .turnin 833 >>Rendez la quête Cimetière sacré
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skorn|r
    .turnin 861 >>Rendez la quête Le chemin du chasseur
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Rendez la quête Préparation à la cérémonie
    .target Eyahn Eagletalon
step
    #xprate <1.2
    .goto 7,43.204,16.050
    .use 5416 >>|cRXP_WARN_Utilisez l'|r |T135139:0|t[Totem de purification de Crin-sauvage] |cRXP_WARN_à côté du puits|r
    .complete 24524,1 --Well Cleansed (1)
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Una|r
    .turnin 24524 >>Rendez la quête Purification de Crin-sauvage
    .accept 24550 >>Acceptez la quête Voyage aux Pitons du Tonnerre
    .target Una Wildmane
step
    #xprate <1.2
    #completewith next
    .deathskip >>Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    #xprate <1.2
    #completewith next
    .goto 88,54.766,26.571,15,0
    .goto 88,50.038,34.337,20 >>Prenez l'ascenseur pour monter à Thunder Bluff
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .turnin 24550 >>Rendez la quête Voyage aux Pitons du Tonnerre
    .accept 24540 >>Acceptez la quête La danse de guerre
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Rendez la quête Voyage vers les Pitons-du-Tonnerre
    .accept 6363 >>Acceptez la quête Tal, le maître des coursiers du vent
    .target Ahanu
step
    #xprate <1.2
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pala l'aubergiste|r
    .home >>Définissez votre foyer à Les Pitons-du-Tonnerre
    .target Innkeeper Pala
    .isQuestAvailable 24540
step
    #xprate <1.2
    #completewith next
    .goto 88,51.937,26.573,15,0
    .goto 7,37.883,13.834,50 >>Prenez l'ascenseur nord vers Mulgore
    .zoneskip Mulgore
step
    #xprate <1.2
    .goto 7,36.975,11.910
    >>Attaquez |cRXP_ENEMY_Orno Totem-Sinistre|r
    >>|cRXP_WARN_La quête se terminera quand il sera à 90% de santé|r
    .complete 24540,1 --Orno Grimtotem Defeated (1x)
    .mob Orno Grimtotem
step
    #xprate <1.2
    #completewith next
    .hs >>Utilisez votre Pierre de foyer pour revenir aux Pitons-du-Tonnerre
    .use 6948
    .zoneskip Thunder Bluff
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baine|r
    .turnin 24540 >>Rendez la quête La danse de guerre
    .accept 26397 >>Acceptez la quête Marcher avec la Terre-Mère
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Rendez la quête Tal, le maître des coursiers du vent
    .target Tal
    .zoneskip Orgrimmar
step
    #optional
    #label MulgoreEnd
step << !Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >> Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .gossipoption 111516 >>Volez à Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak|r
    .fly Orgrimmar >>Volez à Orgrimmar
    .target Tak
    .zoneskip Mulgore,1
step
    #optional
    .abandon 743 >>Abandonnez la quête Le danger des Furies-des-vents
step
    #optional
    .abandon 14491 >>Abandonnez la quête La terre s'agite
step
    #optional
    .abandon 24456 >>Abandonnez la quête La purification de Corne-tonnerre
step
    #optional
    .abandon 11129 >>Abandonnez la quête Kyle a disparu !
step
    #optional
    .abandon 6364 >>Abandonnez la quête Retourner voir Varg
step
    #xprate <1.2
    #completewith next
    .goto 85,49.886,75.613,8 >>Entrez dans le fort Grommash
step
    #xprate <1.2
    .goto 1454/1,-4343.10010,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garrosh Hurlenfer|r.
    .turnin 26397 >>Rendez la quête Marcher avec la Terre-Mère
    .target Garrosh Hellscream
    .isOnQuest 26397
    ]])
