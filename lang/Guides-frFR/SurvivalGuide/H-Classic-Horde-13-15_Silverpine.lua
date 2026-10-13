if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 13-15 Forêt des Pins argentés
#version 1
#group RestedXP Guide de Survie (H)
#subgroup RestedXP Guide de Survie 1-20
#next 15-19 Les Tarides

step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Si vous voyez|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, parlez-lui et tuez-le. Dépouillez-le pour la lettre. Il patrouille la route entre Brill et le Sépulcre|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Tuez les |cRXP_ENEMY_Worgs|r sur la route vers |cRXP_FRIENDLY_Erland|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrotraqueur Erland|r
    >>|cRXP_WARN_Assurez-vous d'avoir toute votre vie et votre mana avant de commencer cette quête !|r
    .accept 435 >>Acceptez la quête Une escorte pour Erland
    .target Deathstalker Erland
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Worgs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Escortez |cRXP_FRIENDLY_Erland|r en toute sécurité auprès de |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_WARN_Attention !|r Plusieurs |cRXP_ENEMY_Worgs|r |cRXP_WARN_peuvent apparaître en même temps, mangez et buvez dès que possible|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Rendez la quête Une escorte pour Erland
    .accept 429 >>Acceptez la quête Cœurs sauvages
    .accept 449 >>Acceptez la quête Le rapport des nécrotraqueurs
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Tuez les |cRXP_ENEMY_Worgs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >> Voyagez au Sépulcre
    .subzoneskip 228
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Acceptez la quête Prouver votre valeur
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et au |cRXP_FRIENDLY_Nécrogarde Podrig|r
    .accept 477 >>Acceptez la quête Frontières
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Acceptez la quête Approvisionner le Sépulcre
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .accept 477 >>Acceptez la quête Frontières
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entrez dans la crypte
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 449 >>Rendez la quête Le rapport des nécrotraqueurs
    .accept 3221 >>Acceptez la quête Parler à Renferrel
    .accept 437 >>Acceptez la quête Le Champ des morts
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Rendez la quête Cœurs sauvages
    .turnin 445 >>Rendez la quête Livraison dans la forêt des Pins argentés
    .turnin 3221 >>Rendez la quête Parler à Renferrel
    .accept 1359 >>Acceptez la quête Une livraison pour Zinge
    .accept 447 >>Acceptez la quête Une recette mortelle
    .accept 430 >>Acceptez la quête Retour vers Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Tuez les |cRXP_ENEMY_Poil-blancs Ragelunes|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Rendez la quête Prouver votre valeur
    .accept 422 >>Acceptez la quête La folie d'Arugal
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >> Voyagez jusqu'au champ de Valgan
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Entrez dans la maison et allez au deuxième étage. Ramassez les |cRXP_PICK_Livres de sorts poussiéreux|r sur le sol
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >> Voyagez jusqu'au lopin d'Ivar
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quinn Yorick|r au deuxième étage de la maison
    .turnin 430 >>Rendez la quête Retour vers Quinn
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r à l'extérieur
    .accept 425 >>Acceptez la quête Ivar l'Infect
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Tuez |cRXP_ENEMY_Ivar l'Infect|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Attention ! Nettoyez toute la zone devant la grange et engagez les|r |cRXP_ENEMY_Esclaves Serres-de-corbeau|r |cRXP_WARN_un par un en les amenant à l'extérieur.|r
    >>|cRXP_WARN_Ivar est protégé par deux|r |cRXP_ENEMY_Esclaves Serres-de-corbeau|r |cRXP_WARN_dans la grange. Vous pouvez en engager un seul à la fois lorsqu'il patrouille|r
    >>|cRXP_WARN_Ils sont immunisés contre la peur !|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Rendez la quête Ivar l'Infect
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Soyez prudent ! Il peut y avoir un|r |cRXP_ENEMY_Fils d'Arugal|r |cRXP_WARN_dans la zone ! C'est un élite de niveau 25, éloignez-vous de lui !|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Tuez les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r autour du champ des Morts jusqu'à ce que |cRXP_ENEMY_Cinglenuit|r apparaisse. Tuez-la et dépouillez-la pour son |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_Ils sont immunisés contre la peur !|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Tuez les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Araignées|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Faites attention si|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_est présente, ELLE VOUS TUERA ! Elle a un bouclier de 130 points de dégâts avec 15s de récupération, et une capacité d'horion instantané infligeant 110 points de dégâts|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Killian|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Tuez les |cRXP_ENEMY_Araignées|r. Dépouillez-les pour leur |cRXP_LOOT_Sang|r
    >>|cRXP_WARN_Faites attention si|r |cRXP_ENEMY_Krethis Tisse-l'ombre|r |cRXP_WARN_est présente, ELLE VOUS TUERA ! Elle a un bouclier de 130 points de dégâts avec 15s de récupération, et une capacité d'horion instantané infligeant 110 points de dégâts|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Finissez de tuer les |cRXP_ENEMY_Ours|r. Dépouillez-les pour leur |cRXP_LOOT_Cœurs|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> Retournez au Sépulcre
    .subzoneskip 228
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Rendez la quête La folie d'Arugal
    .accept 423 >> Acceptez la quête La folie d'Arugal
    .target Dalar Dawnweaver
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entrez dans la crypte
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 437 >> Rendez la quête Le Champ des morts
    .accept 438 >> Acceptez la quête Le bac délabré
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    >>|cRXP_BUY_Achetez-lui des|r |T134532:0|t[Champignons à pois rouges] |cRXP_BUY_|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Kauth|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .collect 1179,20,421,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andrea|r
    .vendor >> Achetez-lui une |T132491:0|t[|cRXP_FRIENDLY_Ceinture de grand sage|r] si elle est disponible
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nadia Vernon|r
    >>Achetez-lui un |T135490:0|t[|cRXP_FRIENDLY_Arc long élégant|r] si il est disponible
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >> Achetez-lui des |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r] si elles sont disponibles
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >> Achetez-lui des |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r] ou des |T132537:0|t[|cRXP_FRIENDLY_Bottes d'écurie|r] si l'une d'entre elles est disponible
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez la|r |T132491:0|t[|cRXP_FRIENDLY_Ceinture de grand sage|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Hunter
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez l'|r |T135490:0|t[|cRXP_FRIENDLY_Arc long élégant|r]
    .use 11304
    .itemcount 11304,1
    .xp <14,1
    .equip 18,11304
step << Hunter/Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez les|r |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez les|r |T132539:0|t[|cRXP_FRIENDLY_Bottes agiles|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Équipez les|r |T132537:0|t[|cRXP_FRIENDLY_Bottes d'écurie|r]
    .use 4789
    .itemcount 4789,1
    .equip 8,4789
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >> Descendez la colline
step
    #completewith DecrepitFerry
    +|cRXP_WARN_Soyez prudent ! Il peut y avoir un|r |cRXP_ENEMY_Fils d'Arugal|r |cRXP_WARN_dans la zone ! C'est un élite de niveau 25, éloignez-vous de lui !|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
	.goto Silverpine Forest,43.83,31.00,0
	.goto Silverpine Forest,44.22,31.55,50,0
	.goto Silverpine Forest,43.51,32.38,50,0
	.goto Silverpine Forest,42.61,31.12,50,0
	.goto Silverpine Forest,41.28,30.25,50,0
	.goto Silverpine Forest,39.70,30.24,50,0
	.goto Silverpine Forest,38.96,29.15,50,0
	.goto Silverpine Forest,38.28,27.10,50,0
	.goto Silverpine Forest,37.60,24.16,50,0
	.goto Silverpine Forest,38.07,23.13,50,0
	.goto Silverpine Forest,38.56,21.93,50,0
	.goto Silverpine Forest,39.73,23.26,50,0
	.goto Silverpine Forest,41.49,23.51,50,0
	.goto Silverpine Forest,41.14,25.50,50,0
	.goto Silverpine Forest,41.17,28.26,50,0
	.goto Silverpine Forest,42.01,29.27,50,0
	.goto Silverpine Forest,43.83,31.00,50,0
    >>Tuez les |cRXP_ENEMY_Gloutons Ragelunes|r et les |cRXP_ENEMY_Ténébreux Ragelunes|r. Dépouillez-les pour leurs |cRXP_LOOT_Bracelets|r
    >>|cRXP_WARN_Attention !|r Les |cRXP_ENEMY_Ténébreux Ragelunes|r |cRXP_WARN_s'enragent quand ils sont en dessous de 25% de points de vie. Tuez-les rapidement quand ils sont affaiblis.|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Cliquez sur le |cRXP_PICK_Bateau|r sur le côté des quais
    >>|cRXP_WARN_Attention !|r Les |cRXP_ENEMY_Mains de Serres-de-corbeau|r |cRXP_WARN_peuvent être du niveau 16 et ont une capacité d'étourdissement de 5 secondes en mêlée.|r
    .turnin 438 >>Rendez la quête Le bac délabré
    .accept 439 >>Acceptez la quête Un indice vers les Poils-putrides
step
    .goto Silverpine Forest,49.89,60.33
    >>Cliquez sur la |cRXP_PICK_Caisse|r dans le camp
    >>|cRXP_WARN_Attention ! Ces mobs lancent|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et s'enfuient lorsqu'ils ont peu de vie. Engagez-les et tuez-les un par un jusqu'à ce que vous puissiez cliquer en toute sécurité sur la caisse.|r
    .turnin 477 >>Rendez la quête Frontières
    .accept 478 >>Acceptez la quête Des cartes et des runes
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> Retournez au Sépulcre
    .subzoneskip 228
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et à |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Rendez la quête Des cartes et des runes
    .accept 481 >>Acceptez la quête L'analyse de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Rendez la quête La folie d'Arugal
    .turnin 481 >>Rendez la quête L'analyse de Dalar
    .accept 482 >>Acceptez la quête Les intentions de Dalaran
    .accept 424 >>Acceptez la quête La folie d'Arugal
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r et à |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Rendez la quête Des cartes et des runes
    .accept 481 >>Acceptez la quête L'analyse de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Rendez la quête La folie d'Arugal
    .turnin 481 >>Rendez la quête L'analyse de Dalar
    .accept 482 >>Acceptez la quête Les intentions de Dalaran
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .turnin 482 >>Rendez la quête Les intentions de Dalaran
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .accept 479 >>Acceptez la quête Enquête à Moulin-de-l'Ambre
    .target Shadow Priest Allister
    .group
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .turnin 482 >>Rendez la quête Les intentions de Dalaran
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entrez dans la crypte
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand exécuteur Hadrec|r dans la crypte
    .turnin 439 >>Rendez la quête Un indice vers les Poils-putrides
    .accept 440 >>Acceptez la quête L'anneau ciselé
    .target High Executor Hadrec
step << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Rendez la quête Approvisionner le Sépulcre
    .accept 6323 >>Acceptez la quête Voyage vers Fossoyeuse
    .target Karos Razok
step
    #completewith ZingeAndFaranell
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Prenez le chemin de vol pour le Sépulcre << !Undead
    .fly Undercity >> Volez à Undercity
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Rendez la quête Voyage vers Fossoyeuse
    .accept 6322 >> Acceptez la quête Michael Garrett
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Achetez-lui|r |T135147:0|t[Bâton noueux] |cRXP_BUY_|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +Équipez le |T135147:0|t[Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Achetez-lui une|r |T132394:0|t[Hache barbue] |cRXP_BUY_|r
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +Équipez la |T132394:0|t[Hache barbue]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Achetez-lui un|r |T133046:0|t[Marteau en pierre] |cRXP_BUY_|r
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith PyrewoodAmbush
    +Équipez le [Marteau en pierre] lorsque vous passez niveau 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Achetez-lui|r |T135147:0|t[Bâton noueux] |cRXP_BUY_|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith PyrewoodAmbush
    +Équipez le [Bâton noueux]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Achetez-lui une|r |T135343:0|t[Cimeterre] |cRXP_BUY_.|r
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith PyrewoodAmbush
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #completewith ZingeAndFaranell
    .goto Undercity,47.20,59.69,0
    .goto Undercity,47.20,59.69,12,0
    .goto Undercity,43.55,68.11,12,0
    .goto Undercity,45.20,71.67,12 >>Allez vers l' |cRXP_FRIENDLY_Apothicaire Zinge|r et le |cRXP_FRIENDLY_Maître apothicaire Faranell|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître apothicaire Faranell|r et à l' |cRXP_FRIENDLY_Apothicaire Zinge|r à l'Apothicarium
    .turnin 447 >>Rendez la quête Une recette mortelle
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Rendez la quête Une livraison pour Zinge
    .accept 1358 >>Acceptez la quête Un échantillon pour Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître apothicaire Faranell|r et à l' |cRXP_FRIENDLY_Apothicaire Zinge|r à l'Apothicarium
    .turnin 447 >>Rendez la quête Une recette mortelle
    .accept 450 >>Acceptez la quête Une recette mortelle
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Rendez la quête Une livraison pour Zinge
    .accept 1358 >>Acceptez la quête Un échantillon pour Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .group
step
    #optional
    #label ZingeAndFaranell
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Mage
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Apprenez vos sorts de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Apprenez vos sorts de classe
    .target Carolyn Ward
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Parlez à|r |cRXP_FRIENDLY_Zane Bradford|r|cRXP_BUY_. Achetez-lui une|r |T133718:0|t[Baguette fumante] |cRXP_BUY_|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Rendez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Rendez la quête Les nécrotraqueurs
    .accept 1899 >>Acceptez la quête Les nécrotraqueurs
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Ramassez les |cRXP_PICK_Livres d'Andron|r derrière |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Rendez la quête Les nécrotraqueurs
    .accept 1978 >>Acceptez la quête Les nécrotraqueurs
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Rendez la quête Les nécrotraqueurs
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Mary Edras|r
    .train 3276 >> Apprenez [Bandage épais en lin]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|r |cRXP_FRIENDLY_Mary Edras|r
    .train 3274 >> Apprenez Premiers soins compagnon
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Angela|r
    .train 1160 >> Apprenez vos sorts de classe
    .target Angela Curthas
    .xp <14,1
    .xp >16,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Angela|r
    .train 285 >> Apprenez vos sorts de classe
    .target Angela Curthas
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 6074 >> Apprenez vos sorts de classe
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Lazarus|r
	.train 8102 >> Apprenez vos sorts de classe
    .target Father Lazarus
    .xp <16,1
    .group
step << Undead Rogue
    #optional
    #completewith GrimsonthePale
    .abandon 1886 >>Abandonnez la quête Les nécrotraqueurs, vous n'aurez plus l'occasion de la faire
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Acceptez la quête Le pouvoir de détruire...
    .target Varimathras
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Rendez la quête Michael Garrett
    .accept 6324 >>Acceptez la quête Retour vers Podrig
    .target Michael Garrett
step
    #completewith GrimsonthePale
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fly The Supulcher >> Volez au Sépulcre
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .group
step << Undead
    #completewith next
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fly The Supulcher >> Volez au Sépulcre
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .solo
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Podrig|r
    .turnin 6324 >>Rendez la quête Retour vers Podrig
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwyn Farrow|r
    .vendor >> |cRXP_BUY_Achetez-lui des|r |T134830:0|t[Potions de soins inférieure] |cRXP_BUY_si elles sont disponibles|r
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >> Entrez dans la mine
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>Tuez |cRXP_ENEMY_Grimson le Pâle|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r.
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2
step << skip
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_Sautez sur la roue en bois. Effectuez un Logout skip en vous déconnectant puis en vous reconnectant. Si vous n'y parvenez pas, retournez au Sépulcre|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >> |cRXP_WARN_CLIQUEZ ICI pour un exemple|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 424 >>Rendez la quête La folie d'Arugal
    .accept 99 >> La folie d'Arugal
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120,0
    .subzone 233 >> Voyagez jusqu'au Moulin-de-l'Ambre
    .group
step
    #loop
	.goto Silverpine Forest,57.12,63.39,0
	.goto Silverpine Forest,57.91,62.48,50,0
	.goto Silverpine Forest,59.10,61.88,50,0
	.goto Silverpine Forest,59.79,63.08,50,0
	.goto Silverpine Forest,60.79,62.55,50,0
	.goto Silverpine Forest,61.98,62.56,50,0
	.goto Silverpine Forest,61.00,64.89,50,0
	.goto Silverpine Forest,60.10,65.93,50,0
	.goto Silverpine Forest,59.02,67.10,50,0
	.goto Silverpine Forest,57.56,67.57,50,0
	.goto Silverpine Forest,57.62,65.17,50,0
	.goto Silverpine Forest,57.12,63.39,50,0
    >>Tuez les |cRXP_ENEMY_Protecteurs de Dalaran|r et les |cRXP_ENEMY_Mages de Dalaran|r. Dépouillez-les pour leur |cRXP_LOOT_Pendentifs|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >> Voyagez jusqu'à Bois-du-Bûcher
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>Tuez les ennemis de |cRXP_ENEMY_Bois-du-Bûcher|r. Dépouillez-les pour leurs |cRXP_LOOT_Chaînes|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>Entrez dans l'auberge et montez au deuxième étage
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>Tuez l' |cRXP_ENEMY_Apothicaire Berard|r. Ramassez son |cRXP_LOOT_Livre|r situé sur l'étagère
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >> Entrez dans la chapelle
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrotraqueur Faerleia|r
    .accept 452 >>Acceptez la quête Embuscade à Bois-du-Bûcher
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>Tuez le |cRXP_ENEMY_Conseiller|r et le |cRXP_ENEMY_Maire Morrison|r qui apparaissent
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Nécrotraqueur Faerleia|r
    .turnin 452 >>Rendez la quête Embuscade à Bois-du-Bûcher
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    #loop
    .goto Silverpine Forest,45.48,73.43,0
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43,40,0
    >>Terminez de tuer les ennemis de |cRXP_ENEMY_Bois-du-Bûcher|r. Dépouillez-les pour leurs |cRXP_LOOT_Chaînes|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >> Retournez au Sépulcre
    .subzoneskip 228
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalar|r
    .turnin 99 >> Rendez la quête La folie d'Arugal
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renferrel|r
    .turnin 450 >> Rendez la quête Une recette mortelle
    .target Apothecary Renferrel
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prêtre des ombres Allister|r
    .turnin 479 >>Rendez la quête Enquête à Moulin-de-l'Ambre
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nadia Vernon|r
    >>Achetez-lui un |T135490:0|t[|cRXP_FRIENDLY_Arc long élégant|r] si il est disponible
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
    .group
step << Druid
    #completewith next
    .cast 18960 >>Lancez [Téléportation : Reflet-de-lune]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
    #optional
    .abandon 424 >> Abandonnez la quête La folie d'Arugal
    .isOnQuest 424
step
    #optional
    .abandon 479 >> Abandonnez la quête Enquête à Moulin-de-l'Ambre
    .isOnQuest 479
step
    #optional
    .abandon 99 >> Abandonnez la quête La folie d'Arugal
    .isOnQuest 99
step
    #optional
    .abandon 450 >> Abandonnez la quête Une recette mortelle
    .isOnQuest 450
step
    #optional
    .abandon 452 >> Abandonnez la quête Embuscade à Bois-du-Bûcher
    .isOnQuest 452
step << Tauren/Shaman/Hunter
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Tauren !Shaman !Hunter
    .hs >> Utilisez votre Pierre de foyer pour vous revenir à Tranchecolline
    .use 6948
    .bindlocation 362,1
    .subzoneskip 362

    ]])
