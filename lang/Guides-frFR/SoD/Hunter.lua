if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Tir de la chimère - 2 (Dun Morogh)
#title Tir de la chimère


step
    +|cRXP_WARN_Vous devriez être au moins au niveau 2 pour obtenir la|r |T133816:0|t[Gravure de gants (Tir de la chimère)] |cRXP_WARN_seul dans Dun Morogh|r
    .train 410121,1
    .xp >2,1
step
    #completewith Rune
    #label Dun1
    .zone Dun Morogh >> Voyagez vers Dun Morogh
    .train 410121,1
step
    #optional
    #requires Dun1
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Entrez dans la Grotte des Frostmane
    .train 410121,1
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Voyagez vers le |cRXP_PICK_Cache à butin crins-de-givre|r à l'intérieur
    .train 410121,1
step
    #label Rune
    .goto Dun Morogh,30.773,80.063
    >>Ouvrez la |cRXP_PICK_Cache à butin crins-de-givre|r au sol à l'intérieur. Ouvrez-la pour la |T134419:0|t|cRXP_LOOT_[Rune de la chimère]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de la chimère]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Tir de la chimère)]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Tir de la chimère - 3 (Teldrassil)
#title Tir de la chimère

step
    +|cRXP_WARN_Vous devriez être au moins au niveau 3 pour obtenir la|r |T133816:0|t[Gravure de gants (Tir de la chimère)] |cRXP_WARN_seul dans Teldrassil|r
    .train 410121,1
    .xp >3,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >> Voyagez à Teldrassil
    .train 410121,1
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,56.694,31.485
    .subzone 25 >> Entrez dans la Grotte de Sombrefil
    .train 410121,1
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,56.137,24.971,15,0
    .goto 1438,55.785,25.341,15,0
    .goto 1438,56.137,24.971,15,0
    .goto 1438,56.358,25.242,20,0
    .goto 1438,56.654,26.430,50,0
    .goto 1438,56.874,26.323,10 >> Voyagez vers |cRXP_ENEMY_Githyiss la Vile|r à l'intérieur
    .train 410121,1
step
    #label Rune
    .goto Teldrassil,56.68,26.12
    >>Tuez |cRXP_ENEMY_Githyiss la Vile|r. Dépouillez-la pour la |T134419:0|t|cRXP_LOOT_[Rune de la chimère]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de la chimère]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Tir de la chimère)]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Tir explosif - 5 (Dun Morogh)
#title Tir explosif

step
    +|cRXP_WARN_Vous devriez être au moins au niveau 5 pour obtenir la|r |T133816:0|t[Gravure de gants (Tir explosif)] |cRXP_WARN_seul dans Dun Morogh|r
    .train 410123,1
    .xp >5,1
step
    #completewith Rune
    .zone Dun Morogh >>Voyagez vers Dun Morogh
    .train 410123,1
step
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Tuez |cRXP_ENEMY_Fyodi|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r
    >>|cRXP_WARN_Bien que |cRXP_ENEMY_Fyodi|r s'affiche en tant qu'élite, ses points de vie, dégâts et valeurs d'armure correspondent à ceux d'un mob Normal|r
    >>|cRXP_WARN_Attention, il lance|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 35-80 dégâts de mêlée en touchant. Uniquement à distance)|r
    >>|cRXP_WARN_NOTE :|r La |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r |cRXP_WARN_peut aussi tomber sur chaque mob rare à Dun Morogh, ainsi que de |cRXP_ENEMY_Vagash|r, de |cRXP_ENEMY_Griffe galeuse|r, et du|r |cRXP_ENEMY_Vieux Barbeglace|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Fyodi
    .train 410123,1
    .xp >10,1
step
    #label Rune
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r
    >>|cRXP_WARN_NOTE: La|r |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r |cRXP_WARN_peut aussi tomber sur tous les mobs rares de Dun Morogh, ainsi que sur |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Griffe galeuse|r et le |rVieux Barbeglace|cRXP_ENEMY_|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Vagash
    .train 410123,1
    .xp <10,1
step
    .train 410123 >> |cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Tir explosif)]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Tir explosif - 2 (Durotar)
#title Tir explosif


    --Rune of Explosive Shot

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Tuez |cFFFF5722Sarkoth|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tir explosif|r]
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Sarkoth
    .train 410123,1
step
    #season 2
    .train 410123 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tir explosif|r]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Tir de la chimère - 2 (Durotar)
#title Tir de la chimère


    --Rune of Chimera Shot

step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Jen'shan|r
    .accept 77590 >>Acceptez la quête Terrain difficile << Troll Hunter
    .accept 77584 >>Acceptez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
step
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Tuez |cFFFF5722Scorpides ouvriers|r. Dépouillez-les pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .train 410121 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r]
    .use 206168
    .itemcount 206168,1
step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cFF00FF25Jen'shan|r
    .turnin 77590 >>Rendez la quête Terrain difficile << Troll Hunter
    .turnin 77584 >>Rendez la quête Chasse à la rune << Orc Hunter
    .target Jen'shan
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Tir de la chimère - 2 (Mulgore)
#title Tir de la chimère


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Acceptez la quête La force d’un chasseur
    .target Lanka Farshot
step
    #season 2
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>Tuez les |cRXP_ENEMY_Sanglier de guerre Dos-hirsute|r. Dépouillez-les pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r] sur leurs corps
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #season 2
    .train 410121 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r]
    .use 206168
    .itemcount 206168,1
step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanka|r
    .turnin 77649 >>Rendez la quête La force d’un chasseur
    .target Lanka Farshot
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maître tireur - 6 (Durotar)
#title Maître tireur


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>Utilisez |T132212:0|t[Marque du chasseur] sur le |cRXP_ENEMY_Buisson frémissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier tranchecrin|r qui apparaît. Dépouillez-le pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maître tireur - 6 (Mulgore)
#title Maître tireur


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>Utilisez |T132212:0|t[Marque du chasseur] sur le |cRXP_ENEMY_Buisson frémissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier de la KapitalRisk|r qui apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maître tireur - 6 (Dun Morogh)
#title Maître tireur


    --Rune of Master Marksman

step
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>Utilisez |T132212:0|t[Marque du chasseur] sur le |cRXP_ENEMY_Buisson frémissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier tranchecrin|r qui apparaît. Dépouillez-le pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maître tireur - 6 (Teldrassil)
#title Maître tireur


    --Rune of Master Marksman

step
    #season 2
    .goto Teldrassil,46.6,46.3
    >>Utilisez |T132212:0|t[Marque du chasseur] sur le |cRXP_ENEMY_Buisson frémissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier sans-racines|r qui apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Frappe latérale - 6 (Mulgore)
#title Frappe latérale


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>Tuez les |cRXP_ENEMY_Trotteurs des plaines|r et les |cRXP_ENEMY_Rapaces|r. Dépouillez-les pour la |T134025:0|t[|cRXP_LOOT_Viande d’oiseau de Mulgore|r]
    .collect 205961,1 --Mulgore Bird Meat (1)
    .mob Elder Plainstrider
    .mob Adult Plainstrider
    .mob Swoop
    .mob Wiry Swoop
    .mob Taloned Swoop
    .train 425762,1
step
    #season 2
    .goto Mulgore,35.22,57.42
    >>Utilisez la |T134025:0|t[|cRXP_LOOT_Viande d’oiseau de Mulgore|r] sur la carcasse pour invoquer |cRXP_ENEMY_Mokwa|r
    >>Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .use 205961
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r] |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Frappe latérale - 6 (Durotar)
#title Frappe latérale


    --Rune of Flanking

step
    #season 2
    .goto Durotar,53.43,48.62,70,0
    .goto Durotar,51.77,56.01,70,0
    .goto Durotar,54.04,67.14
    >>Tuez les |cRXP_ENEMY_Sangliers tachetés redoutables|r. Dépouillez-les pour la |T134026:0|t[|cRXP_LOOT_Viande de cochon de Durotar|r]
    .collect 207590,1 --Durotar Pig Meat (1)
    .mob Dire Mottled Boar
    .train 425762,1
step
    #season 2
    .goto Durotar,68.67,71.68
    .use 207590 >>Utilisez la |T134026:0|t[|cRXP_LOOT_Viande de cochon de Durotar|r] sur la carcasse pour invoquer |cRXP_ENEMY_Raluk|r
    >>Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Raluk
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r] |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Écharper - 10 (Durotar)
#title Écharper


    --Rune of Carve

step
    #season 2
    #completewith n`t
    +|cRXP_WARN_Vous devez avoir appris|r |T132164:0|t[Apprivoiser une bête] |cRXP_WARN_afin d'obtenir cette rune|r
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Tuez les |cRXP_ENEMY_Hurans Tranchecrins|r. Dépouillez-les pour la |T134743:0|t[|cRXP_LOOT_Phéromone d’aspic|r]
    .collect 207631,1 --Adder Pheromone (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 425758,1
step
    #season 2
    #completewith next
    +Trouvez une |cRXP_ENEMY_Vipère|r (bestiole). Utilisez votre |T134743:0|t[|cRXP_LOOT_Phéromone d’aspic|r] et lancez |T132164:0|t[Apprivoiser une bête]
    >>|cRXP_WARN_Ils se trouvent plus facilement autour de Tranchecolline|r
    .use 207631
    .unitscan Adder
step
    #season 2
    .goto Durotar,52.15,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzil|r
    >>Livrez la |cRXP_ENEMY_Vipère|r afin d'obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Razzil
    .train 425758,1
step
    #season 2
    .train 425758 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .use 206032
    .itemcount 206032,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Écharper - 10 (Mulgore)
#title Écharper


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devez avoir appris|r |T132164:0|t[Apprivoiser une bête] |cRXP_WARN_afin d'obtenir cette rune|r
step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Tuez les |cRXP_ENEMY_Gnolls crin-pâles|r. Dépouillez-les pour le |T134419:0|t[|cRXP_LOOT_Musc de chien de prairie|r]
    .collect 205995,1 --Prairie Dog Musk (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 425758,1
step
    #season 2
    #completewith next
    +Trouvez un |cRXP_ENEMY_Chien de prairie|r (bestiole). Utilisez votre |T134419:0|t[|cRXP_LOOT_Musc de chien de prairie|r] et lancez |T132164:0|t[Apprivoiser une bête]
    >>|cRXP_WARN_Vous les trouverez plus facilement le long de la route juste au sud-est de Sabot-de-Sang|r
    .use 205995
    .unitscan Prairie Dog
step
    #season 2
    .goto Mulgore,46.19,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takoda Crin-de-Soleil|r
    >>Livrez le |cRXP_ENEMY_Chien de prairie|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Takoda Sunmane
    .train 425758,1
step
    #season 2
    .train 425758 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .use 206032
    .itemcount 206032,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Écharper - 10 (Dun Morogh)
#title Écharper


    --Rune of Carve
step
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devez avoir appris|r |T132164:0|t[Apprivoiser une bête] |cRXP_WARN_afin d'obtenir cette rune|r
step
    #season 2
    #loop
    .goto Dun Morogh,68.2,56.2,20,0
    .goto Dun Morogh,68.8,58.2,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,72.6,52.6,20,0
    >>Tuez les |cRXP_ENEMY_Troggs Mâcherocs|r. Dépouillez-le pour |T134419:0|t[|cRXP_LOOT_Musc de lapin.|r]
    .collect 208180,1 --Rabbit Musk (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .mob Rockjaw Backbreaker
    .mob Rockjaw Ambusher
    .train 425758,1
step
    #season 2
    #completewith next
    .goto Dun Morogh,44.4,56.2,20,0
    .goto Dun Morogh,44.8,59.8,20,0
    .goto Dun Morogh,47.4,54.4,20,0
    .goto Dun Morogh,49.2,46.0,20,0
    .goto Dun Morogh,47.0,44.6,20,0
    .goto Dun Morogh,46.8,47.8
    >>Utilisez le |T134419:0|t[Musc de lapin] sur un |cRXP_ENEMY_Lapin|r |cRXP_WARN_Ne renvoyez pas votre familier actuel.|r
    .use 208180
    .unitscan Rabbit
step
    #season 2
    .goto Dun Morogh,63.40,50.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toby|r
    >>Livrez le |cRXP_ENEMY_Lapin|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Toby
    .train 425758,1
step
    #season 2
    .cast 402265 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Écharper - 10 (Teldrassil)
#title Écharper


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devez avoir appris|r |T132164:0|t[Apprivoiser une bête] |cRXP_WARN_afin d'obtenir cette rune|r
step
    #season 2
    .goto Teldrassil,46.2,51.2,20,0
    .goto Teldrassil,46.8,54.6,20,0
    .goto Teldrassil,48.8,55.4,20,0
    .goto Teldrassil,71.0,58.0,20,0
    .goto Teldrassil,44.8,61.2
    >>Tuez les |cRXP_ENEMY_Pin-tordus|r. Dépouillez-les pour le |T134419:0|t[|cRXP_LOOT_Musc de daim|r]
    .collect 208607,1 --Deer Musk (1)
    .train 425758,1
    .mob Gnarlpine Augur
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Totemic
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Defender
    .mob Gnarlpine Avenger
    .mob Gnarlpine Shaman
step
    #season 2
    #completewith next
    .goto Teldrassil,42.2,71.6,20,0
    .goto Teldrassil,43.2,74.2,20,0
    .goto Teldrassil,47.6,74.0,20,0
    .goto Teldrassil,53.4,77.0,20,0
    .goto Teldrassil,54.8,58.4
    >>Utilisez le |T134419:0|t[Musc de daim] sur un |cRXP_ENEMY_Daim|r |cRXP_WARN_Ne renvoyez pas votre familier actuel.|r
    .use 208607,1
    .unitscan Deer
step
    #season 2
    .goto Teldrassil,39.8,9.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Relaeron|r à |cFFfa9602Darnassus|r
    >>Livrez le |cRXP_ENEMY_Daim|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Relaeron
    .train 425758,1
step
    #season 2
    .cast 402265 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Découpe|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Maîtrise des bêtes - 16 (Les Tarides)
#title Maîtrise des bêtes

    --Rune of Beast Mastery

step
    #season 2
    #completewith next
    +|cRXP_WARN_Vous devez avoir le sort|r |T135813:0|t[Piège d'immolation] |cRXP_WARN_ou n'importe quel autre piège afin d'obtenir cette rune|r
step
    #season 2
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Utilisez le |T135813:0|t[Piège d'immolation] sur le chemin de la patrouille du |cRXP_ENEMY_Guépard patrouilleur|r pour lui retirer son buff
    >>Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step
    #season 2
    .train 410110 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r] |cRXP_WARN_pour apprendre|r |T132270:0|t[Maîtrise des bêtes]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Maîtrise des bêtes - 16 (Forêt des Pins argentés)
#title Maîtrise des bêtes

    --Rune of Beast Mastery

step
    #season 2
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>Kill |cRXP_ENEMY_Ferocious Grizzled Bears|r until a |cRXP_ENEMY_Grizzled Protector|r (16 elite) spawns
    >>Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Ferocious Grizzled Bear
    .mob Grizzled Protector
step
    #season 2
    .train 410110 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Maîtrise des bêtes|r] |cRXP_WARN_pour apprendre|r |T132270:0|t[Maîtrise des bêtes]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entraînement de sniper - 18 (Sombrivage)
#title Entraînement de sniper


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Darkshore >>Voyagez à Sombrivage
step
    #season 2
    .goto 1439,44.081,20.739
    >>Récupérez le |T135129:0|t[Harpon noueux] dans l’œil du squelette
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 416091,1
step
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Utilisez le|r |T135129:0|t[Harpon noueux] |cRXP_WARN_sur |cRXP_ENEMY_Paxnozz|r pour réduire sa vie maximale à 743|r
    .train 416091,1
step
    #season 2
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Tuez |cRXP_ENEMY_Paxnozz|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de tir de précision]|r
    >>|cRXP_WARN_Soyez prudent, c'est un élite de niveau 20|r
    .collect 208777,1 --Rune of the Sniper (1)
    .train 416091,1
    .use 209047
    .mob Paxnozz
step
    #season 2
    .train 416091 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de tir de précision|r] |cRXP_WARN_pour apprendre|r |T132212:0|t[Entraînement de sniper]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entraînement de sniper - 16 (Marche de l’Ouest)
#title Entraînement de sniper


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Westfall >>Voyagez vers les Marches de l'Ouest
step
    #season 2
    #loop
    .goto Westfall,51.2,47.0,20,0
    .goto Westfall,50.2,48.6,20,0
    .goto Westfall,51.6,55.6,20,0
    >>Tuez l' |cRXP_ENEMY_Eclaireur défias|r. Dépouillez-le pour la |T134419:0|t[|cRXP_LOOT_Rune de tir de précision|r]
    .collect 208777,1
    .train 416091,1
    .mob Defias Scout
step
    #season 2
    .train 416091 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de tir de précision|r] |cRXP_WARN_pour apprendre|r |T132212:0|t[Entraînement de sniper]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entraînement de sniper - 16 (Loch Modan)
#title Entraînement de sniper


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Loch Modan >>Voyagez jusqu'au Loch Modan
step
    #season 2
    #loop
    .goto Loch Modan,55.6,52.2,20,0
    .goto Loch Modan,55.8,54.4,20,0
    .goto Loch Modan,54.2,56.8,20,0
    .goto Loch Modan,53.8,54.4,20,0
    >>Tuez |cRXP_ENEMY_Rikane|r. Dépouillez-le pour la |T134419:0|t[|cRXP_LOOT_Rune de tir de précision|r]
    .collect 208777,1
    .train 416091,1
    .mob Kackle
step
    #season 2
    .train 416091 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de tir de précision|r] |cRXP_WARN_pour apprendre|r |T132212:0|t[Entraînement de sniper]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Frappe latérate - 7 (Dun Morogh)
#title Frappe latérale


    --Rune of Flanking

step
    #season 2
    #loop
    .goto Dun Morogh,43.4,65.6,20,0
    .goto Dun Morogh,49.2,61.4,20,0
    .goto Dun Morogh,51.0,51.8,20,0
    .goto Dun Morogh,45.8,50.0,20,0
    .goto Dun Morogh,42.6,60.2,20,0
    .goto Dun Morogh,38.2,60.6,20,0
    .train 425762,1
    >>Tuez les |cRXP_ENEMY_Sangliers|r. Dépouillez-les pour la |T134026:0|t[Viande de cochon de Dun Morogh]
    .collect 208192,1
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #season 2
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Utilisez la |T134026:0|t[Viande de cochon de Dun Morogh] près du cadavre dans la grotte du |cFFfa9602Lac Glacial|r afin d'invoquer |cRXP_ENEMY_Jorul|r
    >>Tuez |cRXP_ENEMY_Jorul|r et dépouillez-le pour la |T135142:0|t|cRXP_LOOT_[Rune de Contournement]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r] |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Frappe latérale - 7 (Teldrassil)
#title Frappe latérale


    --Rune of Flanking
step
    #season 2
    #loop
    .goto Teldrassil,42.6,52.6,20,0
    .goto Teldrassil,39.8,53.2,20,0
    .goto Teldrassil,39.4,36.2,20,0
    .goto Teldrassil,40.8,31.6,20,0
    .goto Teldrassil,46.6,31.2,20,0
    .train 425762,1
    >>Tuez des |cRXP_ENEMY_Oiseaux|r dans |cFFfa9602Teldrassil|r et dépouillez-les pour la |T134025:0|t[Viande d’oiseau de Teldrassil]
    .collect 208608,1
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Utilisez la |T134025:0|t[Viande d’oiseau de Teldrassil] près du cadavre pour invoquer |cRXP_ENEMY_Mowgh|r
    >>Tuez |cRXP_ENEMY_Mowgh|r et dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Contournement]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r] |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#title Perce-faille
#name Perce-faille - 40 (Azeroth)


-- Expose Weakness

step
    #optional
    .train 426445,1
    +|cRXP_WARN_Vous devez être au moins au niveau 26 avant de pouvoir obtenir la rune de|r |T132353:0|t[Perce-faille] |cRXP_WARN_|r
    .xp >26,1
step
    #completewith next
    .zone Badlands >>Voyagez aux Terres ingrates
step
    .goto Badlands,66.6,23.4,0
    .goto Badlands,51.2,69.4,0
    .goto Badlands,29.6,56.8,0
    .goto Badlands,62.6,69.2,0
    .goto Badlands,9.6,77.6,0
    .goto Badlands,66.6,23.4,50,0
    .goto Badlands,51.2,69.4,50,0
    .goto Badlands,29.6,56.8,50,0
    .goto Badlands,62.6,69.2,50,0
    .goto Badlands,9.6,77.6
    .use 211269 >>Tuez n'importe quel |cRXP_ENEMY_Ogre Crache-poussières|r ou |cRXP_ENEMY_Trogg Cavepierre|r. Dépouillez-les pour le |T237388:0|t[|cRXP_LOOT_Dessin primitif|r]
    >>|cRXP_WARN_Utilisez le|r |T237388:0|t[|cRXP_LOOT_Dessin primitif|r] |cRXP_WARN_pour lancer une quête|r
    >>|cRXP_WARN_Leurs localisations sont marqués sur votre carte|r
    .collect 211269,1,78823,1 --Primitive Drawing
    .accept 78823 >> Acceptez la quête Terreur des cieux désertiques
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
    .mob Dustbelcher Mauler
    .mob Dustbelcher Mystic
    .mob Dustbelcher Shaman
    .mob Dustbelcher Warrior
    .mob Dustbelcher Wyrmhunter
    .mob Stonevault Bonesnapper
    .mob Stonevault Shaman
    .train 410114,1
step
    #optional
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >> Rendez la quête Terreur des cieux désertiques
    .accept 78830 >> Acceptez la quête Terreur des cieux désertiques
    .target Hemet Nesingwary
    .train 410114,1
step
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    .use 211272 >>|cRXP_WARN_Utilisez la|r |T132599:0|t[Cage vide] |cRXP_WARN_sur la bestiole |cRXP_ENEMY_Tarentule arborescente|r dans la Vallée de Strangleronce. Vous les trouverez sur les souches d'arbres|r
    >>|cRXP_WARN_Vous pouvez aussi l'utiliser sur n'importe quelle autre bestiole que vous croisez dans le monde|r
    .collect 211273,1 --Trapped Critter
    .mob Arbor Tarantula
    .mob Rat
    .mob Black Rat
    .mob Chicken
    .train 410114,1
step
    #completewith next
    .zone Badlands >>Voyagez aux Terres ingrates
    .train 410114,1
step
    #completewith next
    .goto Badlands,22.352,67.733
    +Cliquez sur le |cRXP_PICK_Grand nid|r au sommet de la montagne pour invoquer |cRXP_ENEMY_Gharrik|r
    .itemcount 211272,<1
step
    .goto Badlands,22.352,67.733
    >>Tuez |cRXP_ENEMY_Gharrik|r. Dépouillez-la pour obtenir la |cRXP_LOOT_Plume trophée écarlate|r
    .complete 78830,1 --Crimson Trophy Quill (1)
    .mob Gharrik
    .train 410114,1
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78830 >> Rendez la quête Terreur des cieux désertiques
    .target Hemet Nesingwary
    .train 410114,1
step
    #season 2
    .train 410114 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Perce-faille|r] |cRXP_WARN_pour apprendre|r |T132353:0|t[Perce-faille]
    .use 211301
    .itemcount 211301,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#title Tir assuré
#name Tir assuré - 30 (Hautes-terres d'Arathi)

step
    #completewith next
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    .train 410109,1
    #loop
    .goto Arathi Highlands,67.8,66.0,0
    .goto Arathi Highlands,69.4,63.2,25,0
    .goto Arathi Highlands,67.8,66.0,25,0
    .goto Arathi Highlands,68.4,68.2,25,0
    >>Tuez |cRXP_ENEMY_Dent-pointue|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de tir assuré|r]
    >>|cRXP_ENEMY_Dent-pointue|r |cRXP_WARN_est un poisson nageant dans le lac du Village Witherbark|r
    .collect 213122,1
    .mob Needletooth
step
    .train 410109 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de tir assuré|r] |cRXP_WARN_pour apprendre|r |T132213:0|t[Tir assuré]
    .use 213122
    .itemcount 213122,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#title Spécialisation Ambidextrie
#name Spécialisation Ambidextrie - 32 (Vallée de Strangleronce)

step
    #optional
    .train 410116,1
    +|cRXP_WARN_You must be at least level 32 before you can acquire the|r |T132147:0|t[Dual Wield Specialization] |cRXP_WARN_rune|r
    .xp >32,1
step
    .train 410116,1
    #optional
    .train 1543 >>|cRXP_WARN_You must train|r |T135815:0|t[Flare] |cRXP_WARN_to acquire the|r |T132147:0|t[Dual Wield Specialization] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_Allez jusqu'à l'emplacement indiqué par la flèche et tournez en rond jusqu'à ce que le buff|r |T132118:0|t[Danger !] |cRXP_WARN_apparaisse sur vous|r
    .aura 435548
    .aura 435428
    .aura 435546
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_Lancez|r |T135815:0|t[Fusée éclairante] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Guerroyeur scalp-rouge|r
    .usespell 1543
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>Tuez le |cRXP_ENEMY_Guerroyeur scalp-rouge|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de ferrailleuse|r]
    .collect 213126,1
    .mob Bloodscalp Guerrilla
step
    .itemcount 213126,1
    .use 213126
    .train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual Wield Specialization]
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Focalisation du feu
#name Focalisation du feu - 40 (Gorges des Vents brûlants)

step
    #completewith next
    +|cRXP_WARN_Vous devrez tuer un mob de niveau 45 dans une zone hostile afin d'obtenir cette rune. N'hésitez pas à demander de l'aide si vous êtes bas en niveau|r
    .xp <45,1
step
    .goto Searing Gorge,53.10,55.85
    >>Marchez prudemment le long de la branche d'arbre vers le nid d'oiseau. Récupérez-y l' |cRXP_PICK_Œuf du corbeau des tempêtes|r.
    .collect 221544,1 --Stormcrow Egg
step
    .goto 1427/0,-1532.400,-6953.600
    >>Revenez le long de la branche d'arbre. Patientez quelques secondes que le |cRXP_ENEMY_Corbeau des tempêtes enragé|r apparaisse. Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de feu focalisé|r]
    .collect 221445,1
    .mob Enraged Stormcrow
    .train 431601,1
step
    .itemcount 221445,1
    .use 221445
    .train 431601 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de feu focalisé|r] |cRXP_WARN_pour apprendre|r |T135548:0|t[Focalisation du feu]
 ]])

 RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guide des runes et des livres
    #subgroup Brassards
    #title Fureur du raptor
    #name Fureur du raptor - 40 (Tanaris)

step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    #loop
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>Tuez |cRXP_ENEMY_Zopilote|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune du raptor|r]
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_est un oiseau charognard patrouillant de l'est vers ouest dans une grande zone s'étendant du sud du Guet de Tristesable à Gadgetzan|r
    >>ASTUCE: Au lieu de le chercher partout, vous pouvez utiliser |T132172:0|t[|cRXP_FRIENDLY_Oeil d'aigle|r] pour trouver sa position. Si vous n'arrivez pas à le trouver, il est sûrement mort et devrait réapparaître aux environs de l'emplacement marqué "2+" sur votre carte
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step
    .train 416093 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du raptor|r] |cRXP_WARN_pour apprendre|r |T132253:0|t[Fureur du raptor]
    .use 2220687
    .itemcount 220687,1

    ]])
RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guide des runes et des livres
    #subgroup Casque
    #title Réflexes félins
    #name Réflexes félins - 40 (Féralas)

step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
step
    +|cRXP_WARN_Vous aurez besoin soit du |T133951:0|t|cRXP_PICK_Pain de banane doux|r, soit de la |T133980:0|t|cRXP_PICK_Banane de Tel'Abim|r afin d'obtenir cette rune. |cRXP_FRIENDLY_Mardrack Greenwell|r vend le pain à Feathermoon pour l'Alliance. L' |cRXP_FRIENDLY_Aubergiste Greul|r le vend au Camp Mojache pour la Horde.
    .itemcount 4601,<1 --Soft Banana Bread
    .itemcount 4537,<1 --Tel'Abim Banana
    .target Innkeeper Greul
    .target Mardrack Greenwell
    .train 416083,1
step
    >>Allez dans la grotte des Yéti dans les Plateaux Sauvages
    .goto 1444/1,1599.300,-4977.800,10
    .train 416083,1
step
    .goto 1444/1,1778.900,-5179.100,
    >>Prenez le chemin du milieu au carrefour après votre entrée dans la deuxième grotte. Au fond de celle-ci, vous trouverez une |cRXP_FRIENDLY_Enfant groddoc|r
    .gossip 222376,1 >>Complétez le dialogue du singe pour le nourrir avec le |T133951:0|t|cRXP_PICK_Pain de banane doux|r ou la |T133980:0|t|cRXP_PICK_Banane de Tel'Abim|r. Une nouvelle version de celui-ci apparaîtra pour vous suivre.
    .target Groddoc Infant
    .train 416083,1
step
    .goto 1444/1,1330.900,-5078.100
    >>Escortez l' |cRXP_FRIENDLY_Enfant groddoc|r jusqu'à une |cRXP_FRIENDLY_Matriarche groddoc|r indiquée sur votre carte. Faites attention, l'enfant est agressif et va attaquer les ennemis à proximité, y compris les joueurs de la faction adverse.
    .gossip 222406,1 >>Quand vous arrivez, parlez à la Matriarche et complétez son dialogue afin d'obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune du félin de la jungle|r]
    .collect 220791,1 -- Rune of the Jungle Cat
    .train 416083,1
step
    .train 416083 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du félin de la jungle|r] |cRXP_WARN_pour apprendre|r |T132167:0|t[Réflexes félins]
    .use 220791
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guide des runes et des livres
    #subgroup Casque
    #title Tueur rapide
    #name Tueur rapide - 45 (Gorges des Vents brûlants & Terres foudroyées)
step
    #completewith next
    .zone Searing Gorge >>Voyagez à la Gorge des Vents brûlants
step
    .goto 1427/0,-832.800,-6647.500,10
    >>Voyagez à l'entrée de la grotte à la Crête de Guet-du-Feu. Sachez que vous allez entrer dans une grotte remplie d'ennemis d'élite de niveaux 47-48. Ceci dit, vous pouvez compléter cette partie en avançant après chaque mort.
    .train 416090,1
step
    .goto Searing Gorge,14.5,36.5
    >>|cRXP_WARN_En entrant dans la grotte, prenez le chemin de droite. Vous remarquerez rapidement une grande tablette appelée |cRXP_FRIENDLY_Gravure dégradée par les intempéries|r sur une élévation dans le milieu de la grotte. Avancez vers elle et prenez-en la quête.
    >>ASTUCE: Si vous êtes seul, essayez d'utiliser vos pièges et votre familier pour avancer aussi loin que possible avant d'utiliser |T132293:0|t[|cRXP_FRIENDLY_Feindre la mort|r] pour sortir de combat. Sinon, vous pouvez mourir plusieurs fois jusqu'à cet objet.
    .accept 81900 >> Acceptez la quête La créature ardente
step
    #completewith next
    .zone Blasted Lands >>Voyagez jusqu'aux Terres foudroyées
step
    .goto Blasted Lands,50.6,14.2
    >>Parlez à la |cRXP_FRIENDLY_Mage de sang Lynnore|r
    .turnin 81900 >>Rendez la quête La créature ardente
    .accept 81917 >>Acceptez la quête Les chaînes du joug
    .target Bloodmage Lynnore
step
    .goto Blasted Lands,64.24,32.36
    >>Voyagez jusqu'à la zone de la grotte avec les Lige d'ombre et tuez n'importe quel |cRXP_ENEMY_Sectateur, nervi, ou adepte lige d'ombre|r pour les |cRXP_LOOT_Mailles infernales|r
    .complete 81917,1 --Infernal Chains 5/5
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
step
    .goto Blasted Lands,50.6,14.2
    >>Parlez à la |cRXP_FRIENDLY_Mage de sang Lynnore|r
    .turnin 81917 >>Rendez la quête Les chaînes du joug
    .accept 81919 >>Acceptez la quête Au pied
    .target Bloodmage Lynnore
step
    #loop
    .goto 1419/0,-2976.500,-11483.101
    .goto 1419/0,-2778.300,-11420.800
    .goto 1419/0,-2821.900,-11353.700
    .goto 1419/0,-2934.700,-11419.101
    >>Cherchez |cRXP_ENEMY_Calefactus le déchaîné|r, un Chien du magma vert de niveau 50. Il peut apparaître à plusieurs emplacements aléatoirement autour du bord sur de la partie rouge de la carte. Essayez d'utiliser |T132172:0|t[|cRXP_FRIENDLY_Oeil d'aigle|r] pour le trouver. Lorsque vous l'avez localisé, utilisez le |T136091:0|t|cRXP_LOOT_Lasso infernal|r sur lui, tuez-le et dépouillez-le pour son sang.
    .complete 81919,1 --Fel Lifeblood 1/1
    .use 220216
    .unitscan Calefactus the Unleashed
step
    .goto Blasted Lands,50.6,14.2
    >>Parlez à la |cRXP_FRIENDLY_Mage de sang Lynnore|r
    .turnin 81919 >>Rendez la quête Au pied
    .target Bloodmage Lynnore
step
    .train 416090 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du Vorace|r] |cRXP_WARN_pour apprendre|r |T132205:0|t[Tueur rapide]
    >>Vous allez aussi recevoir un bijou |T136091:0|t|cRXP_LOOT_Lasso infernal|r vous permettant de dompter les Chiens du magma
    .use 220217
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guide des runes et des livres
    #subgroup Cape
    #title Attaque éclair
    #name Attaque éclair - 50 (Steppes ardentes)
step
    #completewith next
    .zone Burning Steppes >>Voyagez jusqu'aux Steppes ardentes
step
    >>Cherchez un |cRXP_ENEMY_Chien du magma échappé|r, il peut apparaître à plusieurs emplacements aléatoirement dans la zone, |cRXP_WARN_vérifiez sur votre carte les points d'apparition possibles|r. Dépouillez-le pour la rune
    >>ASTUCE: Au lieu de le chercher partout, vous pouvez utiliser |T132172:0|t[|cRXP_FRIENDLY_Oeil d'aigle|r] pour le localiser
    .goto Burning Steppes,84.8,68.0,0
    .goto Burning Steppes,83.8,60.0,0
    .goto Burning Steppes,88.6,54.8
    .goto Burning Steppes,61.6,54.4,0
    .goto Burning Steppes,39.8,59.4,0
    .goto Burning Steppes,31.8,53.0,0
    .goto Burning Steppes,24.8,55.6,0
    .unitscan Escaped Core Hound
    .collect 226252,1 --rune of the guerrilla (1)
step
    .train 440563 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de guérilla|r] |cRXP_WARN_pour apprendre|r |T132171:0|t[Attaque éclair]
    .use 226252
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guide des runes et des livres
    #subgroup Cape
    #title Ingéniosité
    #name Ingéniosité - 58 (Maleterres de l’Est)
step
    #completewith next
    .zone Eastern Plaguelands >>Voyagez aux Maleterres de l'Est
step
    .goto Eastern Plaguelands,74.4,62.7
    .goto Eastern Plaguelands,72.5,66.4,0
    .goto Eastern Plaguelands,72.6,63.7,0
    .goto Eastern Plaguelands,76.7,62.6,0
    .goto Eastern Plaguelands,74.8,58.9,0
    .goto Eastern Plaguelands,76.7,58.7,0
    .goto Eastern Plaguelands,55.6,67.0,0
    .goto Eastern Plaguelands,54.3,70.1,0
    .goto Eastern Plaguelands,51.9,70.0,0
    >>Tuez et dépouillez les |cRXP_ENEMY_Vases pourrissantes|r et les |cRXP_ENEMY_Pourritures vivantes|r jusqu'à obtenir un |T132108:0|t[|cRXP_LOOT_Ichor vert bouillonnant|r]
    >>|cRXP_WARN_L'ichor est un objet gris, attention à ne pas le vendre !|r
    .collect 20770,1 --Bubbling Green Ichor (1)
    .mob Living Decay
    .mob Rotting Sludge
step
    .goto Eastern Plaguelands,17.8,30.2
    >>Dirigez-vous au Val-Terreur et tuez les |cRXP_ENEMY_Pourceaux pestiférés|r jusqu'à obtenir une |T134046:0|t[|cRXP_LOOT_Viande de sanglier contaminée|r]
    .collect 225942,1 --Tainted Boar Meat (1)
    .mob Plagued Swine
step
    >>Utilisez le |T134046:0|t[|cRXP_LOOT_Viande de sanglier contaminée|r] pour le combiner avec l' |T132108:0|t[|cRXP_LOOT_Ichor vert bouillonnant|r] afin de créer un |T134047:0|t[Morceau de chair rance]
    .collect 225943,1 --Rancid Hunk of Flesh (1)
    .use 225942
step
    .goto Eastern Plaguelands,22.68,37.12,-1
    .goto Eastern Plaguelands,19.37,26.42,-1
    .goto Eastern Plaguelands,29.83,39.05,-1
    >>Cherchez une |cRXP_ENEMY_Larve putride|r ou un |cRXP_ENEMY_Dévoreur putride|r. Leur points d'apparition possibles au Val-Terreur sont juste au nord ou juste au sud de celui-ci
    >>Utilisez le |T134047:0|t[Morceau de chair rance] sur lui pour le nourrir. |cRXP_WARN_La larve fera apparaître un squelette après une petite animation, récupérez-la pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’ingéniosité|r]
    .use 225943
    .collect 225955,1 --Rune of the resourceful (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    .train 440557 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'ingéniosité|r] |cRXP_WARN_pour apprendre|r |T132178:0|t[Ingéniosité]
    .use 225955
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Guide des runes et des livres
    #subgroup Cape
    #title Salve améliorée
    #name Salve améliorée - 60 (Silithus)
step
    #completewith next
    .zone Silithus >>Voyagez à Silithus
step
    >>Tuez |cRXP_WARN_N'IMPORTE QUEL MOB|r à Silithus jusqu'à obtenir un |T132997:0|t[|cRXP_LOOT_Gadget cassé|r]. Il ne tombe pas souvent, mais sur tous les mobs de la zone
    .collect 226526,1
    .itemcount 226546,<1
step
    .goto Silithus,41.2,88.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwi Cuivreclou|r au Campement de Bronzebeard. Complétez son dialogue pour recevoir un |T133878:0|t[Sonar du désert]
    .collect 226546,1 --Desert Sonar (1)
    .itemcount 226546,<1
step
    .goto Silithus,36.00,71.00
    >>|cRXP_WARN_Courez autour du point indiqué sur votre carte jusqu'à ce que vous voyiez le sol bouger. Utilisez le|r |T133878:0|t[Sonar du désert] |cRXP_WARN_pour invoquer un |cRXP_ENEMY_Ver des sables|r. Tuez-le et dépouillez-le pour la rune|r
    >>Le ver a beaucoup de vie et une capacité lui permettant de s'enfouir et ainsi disparaître pendant un moment. Soyez prêt à combattre avant de l'invoquer
    .collect 226587,1 --rune of shelling
    .mob Sandworm
step
    .train 440560 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de bombardement|r] pour apprendre |T236179:0|t[|cRXP_FRIENDLY_Salve améliorée|r]
    .use 226587
]])
