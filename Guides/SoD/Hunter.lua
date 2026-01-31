if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Chimera Shot - 2 (Dun Morogh)
#title Chimera Shot


step
    +|cRXP_WARN_You should be at least level 2 in order to acquire|r |T133816:0|t[Engrave Gloves - Chimera Shot] |cRXP_WARN_in Dun Morogh alone|r
    .train 410121,1
    .xp >2,1
step
    #completewith Rune
    #label Dun1
    .zone Dun Morogh >> Travel to Dun Morogh
    .train 410121,1
step
    #optional
    #requires Dun1
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave
    .train 410121,1
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Travel towards the |cRXP_PICK_Frostmane Loot Cache|r inside
    .train 410121,1
step
    #label Rune
    .goto Dun Morogh,30.773,80.063
    >>Open the |cRXP_PICK_Frostmane Loot Cache|r on the ground inside. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of the Chimera]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of the Chimera]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Chimera Shot]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Chimera Shot - 3 (Teldrassil)
#title Chimera Shot

step
    +|cRXP_WARN_You should be at least level 3 in order to acquire|r |T133816:0|t[Engrave Gloves - Chimera Shot] |cRXP_WARN_in Teldrassil alone|r
    .train 410121,1
    .xp >3,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >> Travel to Teldrassil
    .train 410121,1
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,56.694,31.485
    .subzone 25 >> Enter the Shadowthread Cave
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
    .goto 1438,56.874,26.323,10 >> Travel towards |cRXP_ENEMY_Githyiss the Vile|r inside
    .train 410121,1
step
    #label Rune
    .goto Teldrassil,56.68,26.12
    >>Kill |cRXP_ENEMY_Githyiss the Vile|r. Loot her for the |T134419:0|t|cRXP_LOOT_[Rune of the Chimera]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of the Chimera]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Chimera Shot]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Explosive Shot - 5 (Dun Morogh)
#title Explosive Shot

step
    +|cRXP_WARN_You should be at least level 5 in order to acquire|r |T133816:0|t[Engrave Gloves - Explosive Shot] |cRXP_WARN_in Dun Morogh alone|r
    .train 410123,1
    .xp >5,1
step
    #completewith Rune
    .zone Dun Morogh >>Travel to Dun Morogh
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
    >>Kill |cRXP_ENEMY_Fyodi|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r
    >>|cRXP_WARN_Even though |cRXP_ENEMY_Fyodi|r shows as an elite, his health, damage, and armor values are that of a standard mob|r
    >>|cRXP_WARN_Be careful as he casts|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-80 melee damage on hit. Only castable at range)|r
    >>|cRXP_WARN_NOTE: The|r |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r |cRXP_WARN_can also drop off every rare mob in Dun Morogh, as well as |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Mangeclaw|r, and|r |cRXP_ENEMY_Old Icebeard|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Fyodi
    .train 410123,1
    .xp >10,1
step
    #label Rune
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r
    >>|cRXP_WARN_NOTE: The|r |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r |cRXP_WARN_can also drop off every rare mob in Dun Morogh, as well as |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Mangeclaw|r, and|r |cRXP_ENEMY_Old Icebeard|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Vagash
    .train 410123,1
    .xp <10,1
step
    .train 410123 >> |cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Explosive Shot]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Explosive Shot - 2 (Durotar)
#title Explosive Shot


    --Rune of Explosive Shot

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Kill |cFFFF5722Sarkoth|r. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Sarkoth
    .train 410123,1
step
    #season 2
    .train 410123 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Chimera Shot - 2 (Durotar)
#title Chimera Shot


    --Rune of Chimera Shot

step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .accept 77590 >>Accept Rugged Terrain << Troll Hunter
    .accept 77584 >>Accept Hunt for the Rune << Orc Hunter
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
    >>Kill |cFFFF5722Scorpid Workers|r. Loot them for |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .train 410121 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .use 206168
    .itemcount 206168,1
step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Chimera Shot - 2 (Mulgore)
#title Chimera Shot


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Accept A Hunter's Strength
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
    >>Kill |cRXP_ENEMY_Bristleback Battleboars|r. Loot them for |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #season 2
    .train 410121 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .use 206168
    .itemcount 206168,1
step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .turnin 77649 >>Turn in A Hunter's Strength
    .target Lanka Farshot
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Marksman - 6 (Durotar)
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Razormane Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Marksman - 6 (Mulgore)
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Venture Co. Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Marksman - 6 (Dun Morogh)
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Razormane Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Marksman - 6 (Teldrassil)
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Teldrassil,46.6,46.3
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Fallenroot Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Flanking - 6 (Mulgore)
#title Flanking


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>Kill |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r. Loot them for |T134025:0|t[|cRXP_LOOT_Mulgore Bird Meat|r]
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
    >>Use the |T134025:0|t[|cRXP_LOOT_Mulgore Bird Meat|r] at the carcass to summon |cRXP_ENEMY_Mokwa|r
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .use 205961
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r] |cRXP_WARN_to train|r |T132175:0|t[Flanking Strike]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Flanking - 6 (Durotar)
#title Flanking


    --Rune of Flanking

step
    #season 2
    .goto Durotar,53.43,48.62,70,0
    .goto Durotar,51.77,56.01,70,0
    .goto Durotar,54.04,67.14
    >>Kill |cRXP_ENEMY_Dire Mottled Boars|r. Loot them for |T134026:0|t[|cRXP_LOOT_Durotar Pig Meat|r]
    .collect 207590,1 --Durotar Pig Meat (1)
    .mob Dire Mottled Boar
    .train 425762,1
step
    #season 2
    .goto Durotar,68.67,71.68
    .use 207590 >>Use the |T134026:0|t[|cRXP_LOOT_Durotar Pig Meat|r] at the carcass to summon |cRXP_ENEMY_Raluk|r
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Raluk
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r] |cRXP_WARN_to train|r |T132175:0|t[Flanking Strike]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Carve - 10 (Durotar)
#title Carve


    --Rune of Carve

step
    #season 2
    #completewith n`t
    +|cRXP_WARN_You need to have learned|r |T132164:0|t[Tame Beast] |cRXP_WARN_to be able to obtain this rune|r
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
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r. Loot them for |T134743:0|t[|cRXP_LOOT_Adder Pheromone|r]
    .collect 207631,1 --Adder Pheromone (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 425758,1
step
    #season 2
    #completewith next
    +Find an |cRXP_ENEMY_Adder|r (critter). Use your |T134743:0|t[|cRXP_LOOT_Adder Pheromone|r] and cast |T132164:0|t[Tame Beast]
    >>|cRXP_WARN_They are more easily found around Razor Hill|r
    .use 207631
    .unitscan Adder
step
    #season 2
    .goto Durotar,52.15,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzil|r
    >>Deliver the |cRXP_ENEMY_Adder|r  to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Razzil
    .train 425758,1
step
    #season 2
    .train 425758 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .itemcount 206032,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Carve - 10 (Mulgore)
#title Carve


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_You need to have learned|r |T132164:0|t[Tame Beast] |cRXP_WARN_to be able to obtain this rune|r
step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Kill |cRXP_ENEMY_Palemane Gnolls|r. Loot them for |T134419:0|t[|cRXP_LOOT_Prairie Dog Musk|r]
    .collect 205995,1 --Prairie Dog Musk (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 425758,1
step
    #season 2
    #completewith next
    +Find a |cRXP_ENEMY_Prairie Dog|r (critter). Use your |T134419:0|t[|cRXP_LOOT_Prairie Dog Musk|r] and cast |T132164:0|t[Tame Beast]
    >>|cRXP_WARN_They are more easily found along the road just south/east of Bloodhoof Village|r
    .use 205995
    .unitscan Prairie Dog
step
    #season 2
    .goto Mulgore,46.19,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takoda|r
    >>Deliver the |cRXP_ENEMY_Prairie Dog|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Takoda Sunmane
    .train 425758,1
step
    #season 2
    .train 425758 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .itemcount 206032,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Carve - 10 (Dun Morogh)
#title Carve


    --Rune of Carve
step
    #season 2
    #completewith next
    +|cRXP_WARN_You need to have learned|r |T132164:0|t[Tame Beast] |cRXP_WARN_to be able to obtain this rune|r
step
    #season 2
    #loop
    .goto Dun Morogh,68.2,56.2,20,0
    .goto Dun Morogh,68.8,58.2,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,72.6,52.6,20,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r. Loot them for |T134419:0|t[|cRXP_LOOT_Rabbit Musk.|r]
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
    >>Use |T134419:0|t[Rabbit Musk] on a |cRXP_ENEMY_Rabbit|r |cRXP_WARN_Don't dismiss your current Pet.|r
    .use 208180
    .unitscan Rabbit
step
    #season 2
    .goto Dun Morogh,63.40,50.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toby|r
    >>Deliver the |cRXP_ENEMY_Rabit|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Toby
    .train 425758,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Carve - 10 (Teldrassil)
#title Carve


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_You need to have learned|r |T132164:0|t[Tame Beast] |cRXP_WARN_to be able to obtain this rune|r
step
    #season 2
    .goto Teldrassil,46.2,51.2,20,0
    .goto Teldrassil,46.8,54.6,20,0
    .goto Teldrassil,48.8,55.4,20,0
    .goto Teldrassil,71.0,58.0,20,0
    .goto Teldrassil,44.8,61.2
    >>Kill |cRXP_ENEMY_Gnarlpines|r. Loot them for |T134419:0|t[|cRXP_LOOT_Deer Musk|r]
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
    >>Use |T134419:0|t[Dear Musk] on a |cRXP_ENEMY_Deer|r |cRXP_WARN_Don't dismiss your current Pet.|r
    .use 208607,1
    .unitscan Deer
step
    #season 2
    .goto Teldrassil,39.8,9.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Relaeron|r in |cFFfa9602Darnassus|r
    >>Deliver the |cRXP_ENEMY_Deer|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Relaeron
    .train 425758,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Beast Mastery - 16 (The Barrens)
#title Beast Mastery

    --Rune of Beast Mastery

step
    #season 2
    #completewith next
    +|cRXP_WARN_You need to have learned|r |T135813:0|t[Immolation Trap] |cRXP_WARN_or any other trap to be able to obtain this rune|r
step
    #season 2
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Use |T135813:0|t[Immolation Trap] on the patrol path of the |cRXP_ENEMY_Patrolling Cheetah|r to remove his buff
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step
    #season 2
    .train 410110 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] |cRXP_WARN_to train|r |T132270:0|t[Beast Mastery]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Beast Mastery - 16 (Silverpine)
#title Beast Mastery

    --Rune of Beast Mastery

step
    #season 2
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>Kill |cRXP_ENEMY_Ferocious Grizzled Bears|r until a |cRXP_ENEMY_Grizzled Protecter|r (16 elite) spawns
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Ferocious Grizzled Bear
    .mob Grizzled Protecter
step
    #season 2
    .train 410110 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] |cRXP_WARN_to train|r |T132270:0|t[Beast Mastery]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Sniper Training - 18 (Darkshore)
#title Sniper Training


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Darkshore >>Travel to Darkshore
step
    #season 2
    .goto 1439,44.081,20.739
    >>Loot the |T135129:0|t[Gnarled Harpoon] in the eye of the skeleton
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 416091,1
step
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Use the|r |T135129:0|t[Gnarled Harpoon] |cRXP_WARN_on |cRXP_ENEMY_Paxnozz|r to reduce his max health to 743|r
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
    >>Kill |cRXP_ENEMY_Paxnozz|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of the Sniper]|r
    >>|cRXP_WARN_Be careful as he is a level 20 elite|r
    .collect 208777,1 --Rune of the Sniper (1)
    .train 416091,1
    .use 209047
    .mob Paxnozz
step
    #season 2
    .train 416091 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_to train|r |T132212:0|t[Sniper Training]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Sniper Training - 16 (Westfall)
#title Sniper Training


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Westfall >>Travel to Westfall
step
    #season 2
    #loop
    .goto Westfall,51.2,47.0,20,0
    .goto Westfall,50.2,48.6,20,0
    .goto Westfall,51.6,55.6,20,0
    >>Kill the |cRXP_ENEMY_Defias Scout|r. Loot him for the |T134419:0|t[|cRXP_LOOT_Rune of the Sniper|r]
    .collect 208777,1
    .train 416091,1
    .mob Defias Scout
step
    #season 2
    .train 416091 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_to train|r |T132212:0|t[Sniper Training]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Sniper Training - 16 (Loch Modan)
#title Sniper Training


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Loch Modan >>Travel to Loch Modan
step
    #season 2
    #loop
    .goto Loch Modan,55.6,52.2,20,0
    .goto Loch Modan,55.8,54.4,20,0
    .goto Loch Modan,54.2,56.8,20,0
    .goto Loch Modan,53.8,54.4,20,0
    >>Kill |cRXP_ENEMY_Kackle|r. Loot him for the |T134419:0|t[|cRXP_LOOT_Rune of the Sniper|r]
    .collect 208777,1
    .train 416091,1
    .mob Kackle
step
    #season 2
    .train 416091 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_to train|r |T132212:0|t[Sniper Training]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Flanking - 7 (Dun Morogh)
#title Flanking


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
    >>Kill |cRXP_ENEMY_Boars|r. Loot them for |T134026:0|t[Dun Morogh Pig Meat]
    .collect 208192,1
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #season 2
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Use |T134026:0|t[Dun Morogh Pig Meat] near the corpse in the |cFFfa9602Iceflow Cavern|r to summon |cRXP_ENEMY_Jorul|r
    >>Kill |cRXP_ENEMY_Jorul|r and loot him for |T135142:0|t|cRXP_LOOT_[Rune of Flanking]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r] |cRXP_WARN_to train|r |T132175:0|t[Flanking Strike]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Flanking - 7 (Teldrassil)
#title Flanking


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
    >>Kill |cRXP_ENEMY_Birds|r in |cFFfa9602Teldrassil|r and loot them for |T134025:0|t[Teldrassil Bird Meat]
    .collect 208608,1
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Use |T134025:0|t[Teldrassil Bird Meat] near the corpse to summon |cRXP_ENEMY_Mowgh|r
    >>Kill |cRXP_ENEMY_Mowgh|r and loot him for |T134419:0|t|cRXP_LOOT_[Rune of Flanking]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r] |cRXP_WARN_to train|r |T132175:0|t[Flanking Strike]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#title Expose Weakness
#name Expose Weakness - 40 (Azeroth)


-- Expose Weakness

step
    #optional
    .train 426445,1
    +|cRXP_WARN_You must be at least level 26 before you can acquire the|r |T132353:0|t[Expose Weakness] |cRXP_WARN_rune|r
    .xp >26,1
step
    #completewith next
    .zone Badlands >>Travel to Badlands
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
    .use 211269 >>Kill any |cRXP_ENEMY_Dustbelcher Ogre|r or |cRXP_ENEMY_Stonevault Trogg|r. Loot them for the |T237388:0|t[|cRXP_LOOT_Primitive Drawing|r]
    >>|cRXP_WARN_Use the|r |T237388:0|t[|cRXP_LOOT_Primitive Drawing|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_Their locations are marked on your map|r
    .collect 211269,1,78823,1 --Primitive Drawing
    .accept 78823 >> Accept Terror of the Desert Skies
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
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >> Turn in Terror of the Desert Skies
    .accept 78830 >> Accept Terror of the Desert Skies
    .target Hemet Nesingwary
    .train 410114,1
step
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    .use 211272 >>|cRXP_WARN_Use the|r |T132599:0|t[Empty Bait Cage] |cRXP_WARN_on a |cRXP_ENEMY_Arbor Tarantula|r critter in STV. They're found on top of tree stumps|r
    >>|cRXP_WARN_You may also use it on any other critter you see in the world|r
    .collect 211273,1 --Trapped Critter
    .mob Arbor Tarantula
    .mob Rat
    .mob Black Rat
    .mob Chicken
    .train 410114,1
step
    #completewith next
    .zone Badlands >>Travel to Badlands
    .train 410114,1
step
    #completewith next
    .goto Badlands,22.352,67.733
    +Click the |cRXP_PICK_Large Nest|r atop the mountain to summon |cRXP_ENEMY_Gharik|r
    .itemcount 211272,<1
step
    .goto Badlands,22.352,67.733
    >>Kill |cRXP_ENEMY_Gharik|r. Loot her for the |cRXP_LOOT_Crimson Trophy Quill|r
    .complete 78830,1 --Crimson Trophy Quill (1)
    .mob Gharik
    .train 410114,1
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78830 >> Turn in Terror of the Desert Skies
    .target Hemet Nesingwary
    .train 410114,1
step
    #season 2
    .train 410114 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Expose Weakness|r] |cRXP_WARN_to train|r |T132353:0|t[Expose Weakness]
    .use 211301
    .itemcount 211301,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#title Steady Shot
#name Steady Shot - 30 (Arathi Highlands)

step
    #completewith next
    .zone Arathi Highlands >>Travel to Arathi Highlands
step
    .train 410109,1
    #loop
    .goto Arathi Highlands,67.8,66.0,0
    .goto Arathi Highlands,69.4,63.2,25,0
    .goto Arathi Highlands,67.8,66.0,25,0
    .goto Arathi Highlands,68.4,68.2,25,0
    >>Kill |cRXP_ENEMY_Needletooth|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r]
    >>|cRXP_ENEMY_Needletooth|r |cRXP_WARN_is a fish that swims in the Witherbark Village lake|r
    .collect 213122,1
    .mob Needletooth
step
    .train 410109 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Steady Shot|r] |cRXP_WARN_to train|r |T132213:0|t[Steady Shot]
    .use 213122
    .itemcount 213122,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#title Dual-Wield Specialization
#name Dual-Wield Specialization - 32 (Stranglethorn Vale)

step
    #optional
    .train 410116,1
    +|cRXP_WARN_You must be at least level 32 before you can acquire the|r |T132147:0|t[Dual-Wield Specialization] |cRXP_WARN_rune|r
    .xp >32,1
step
    .train 410116,1
    #optional
    .train 1543 >>|cRXP_WARN_You must train|r |T135815:0|t[Flare] |cRXP_WARN_to acquire the|r |T132147:0|t[Dual-Wield Specialization] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_Travel to the arrow location and run around until the buff called|r |T132118:0|t[Danger!] |cRXP_WARN_appears on you|r
    .aura 435548
    .aura 435428
    .aura 435546
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_Cast|r |T135815:0|t[Flare] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Bloodscalp Guerrilla|r
    .usespell 1543
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>Kill the |cRXP_ENEMY_Bloodscalp Guerrilla|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r]
    .collect 213126,1
    .mob Bloodscalp Guerrilla
step
    .itemcount 213126,1
    .use 213126
    .train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual-Wield Specialization]
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Focus Fire
#name Focus Fire - 40 (Searing Gorge)

step
    #completewith next
    +|cRXP_WARN_You will have to kill a level 45 mob in a hostile area to acquire this rune. Make sure to bring help if you're lower level|r
    .xp <45,1
step
    .goto Searing Gorge,53.10,55.85
    >>Carefully walk along the tree branch towards the bird nest. Loot the |cRXP_PICK_Stormcrow Egg|r from it.
    .collect 221544,1 --Stormcrow Egg
step
    .goto 1427/0,-1532.400,-6953.600
    >>Walk back along the tree branch. Wait a couple seconds for |cRXP_ENEMY_Enraged Stormcrow|r to spawn. Kill it and loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of Focused Fire|r]
    .collect 221445,1
    .mob Enraged Stormcrow
    .train 431601,1
step
    .itemcount 221445,1
    .use 221445
    .train 431601 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Focused Fire|r] |cRXP_WARN_to train|r |T135548:0|t[Focus Fire]
 ]])

 RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Guide
    #subgroup Bracers
    #title Raptor Fury
    #name Raptor Fury - 40 (Tanaris)

step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
step
    #loop
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>Kill |cRXP_ENEMY_Zopilote|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Raptor|r]
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r
    >>TIP: Instead of running around you can use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to scout for his position. If you can't find him he's probably dead and should respawn arond the spot marked with "2+" on your map
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step
    .train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
    .use 2220687
    .itemcount 220687,1

    ]])
RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Guide
    #subgroup Helmet
    #title Catlike Reflexes
    #name Catlike Reflexes - 40 (Feralas)

step
    #completewith next
    .zone Feralas >>Travel to Feralas
step
    +|cRXP_WARN_You will need one of either |T133951:0|t|cRXP_PICK_Soft Banana Bread|r or |T133980:0|t|cRXP_PICK_Tel'Abim Banana|r to acquire this rune. |cRXP_FRIENDLY_Madrack Greenwell|r sells the bread in Feathermoon for Alliance. |cRXP_FRIENDLY_Innkeeper Greul|r sells it in Camp Mojache for Horde.
    .itemcount 4601,<1 --Soft Banana Bread
    .itemcount 4537,<1 --Tel'Abim Banana
    .target Innkeeper Greul
    .target Madrack Greenwell
    .train 416083,1
step
    >>Go to the Yeti cave in The High Wilderness
    .goto 1444/1,1599.300,-4977.800,10
    .train 416083,1
step
    .goto 1444/1,1778.900,-5179.100,
    >>Take the middle path at the crossroads after you enter the second cave. At the back of it you'll find a |cRXP_FRIENDLY_Groddoc Infant|r
    .gossip 222376,1 >>Complete the monkeys dialogue to feed it the |T133951:0|t|cRXP_PICK_Soft Banana Bread|r or |T133980:0|t|cRXP_PICK_Tel'Abim Banana|r. It will spawn a version of it that follows you around.
    .target Groddoc Infant
    .train 416083,1
step
    .goto 1444/1,1330.900,-5078.100
    >>Escort the |cRXP_FRIENDLY_Groddoc Infant|r to a |cRXP_FRIENDLY_Groddoc Matriarch|r marked on your map. Be careful, the infant is agressive and will attack nearby enemies including opposing faction players.
    .gossip 222406,1 >>Once you're there talk to the Matriarch and complete her dialogue to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat|r]
    .collect 220791,1 -- Rune of the Jungle Cat
    .train 416083,1
step
    .train 416083 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat|r] |cRXP_WARN_to train|r |T132167:0|t[Catlike Reflexes]
    .use 220791
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Guide
    #subgroup Helmet
    #title Rapid Killing
    #name Rapid Killing - 45 (Searing Gorge & Blasted Lands)
step
    #completewith next
    .zone Searing Gorge >>Travel to Searing Gorge
step
    .goto 1427/0,-832.800,-6647.500,10
    >>Travel to the cave entrance in Firewatch Ridge. Note that you'll need to enter a cave filled with lvl 47-48 elites. That being said it is possible to complete this part using deathruns.
    .train 416090,1
step
    .goto Searing Gorge,14.5,36.5
    >>|cRXP_WARN_As you enter the cave take the path to the right. You'll quickly see a large tablet called |cRXP_FRIENDLY_Weathered Etching|r atop a rise in the middle section of the cave. Run to it and accept the quest.
    >>TIP: If you're alone try using traps and your pet to get as far as you can before using |T132293:0|t[|cRXP_FRIENDLY_Feign Death|r] to drop aggro from the mobs. Alternatively you can corpse run to the item.
    .accept 81900 >> Accept The Burning Beast
step
    #completewith next
    .zone Blasted Lands >>Travel to Blasted Lands
step
    .goto Blasted Lands,50.6,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81900 >>Turnin The Burning Beast
    .accept 81917 >>Accept Chains That Bind
    .target Bloodmage Lynnore
step
    .goto Blasted Lands,64.24,32.36
    >>Travel to the Shadowsworn cave area and kill any |cRXP_ENEMY_Shadowsworn Cultist, Thug or Adept|r for |cRXP_LOOT_Infernal Chains|r
    .complete 81917,1 --Infernal Chains 5/5
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
step
    .goto Blasted Lands,50.6,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81917 >>Turnin Chains That Bind
    .accept 81919 >>Accept Brought to Heel
    .target Bloodmage Lynnore
step
    #loop
    .goto 1419/0,-2976.500,-11483.101
    .goto 1419/0,-2778.300,-11420.800
    .goto 1419/0,-2821.900,-11353.700
    .goto 1419/0,-2934.700,-11419.101
    >>Look for |cRXP_ENEMY_Calefactus the Unleashed|r a level 50 green Corehound. He has multiple spawn points around the southern edge of the red part of the map. Try using |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to look for him. Once you find him, use the |T136091:0|t|cRXP_LOOT_Infernal Lasso|r on him, kill him and then loot him for his blood.
    .complete 81919,1 --Fel Lifeblood 1/1
    .use 220216
    .unitscan Calefactus the Unleashed
step
    .goto Blasted Lands,50.6,14.2
    >>Talk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81919 >>Turnin Brought to Heel
    .target Bloodmage Lynnore
step
    .train 416090 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Ravenous|r] |cRXP_WARN_to train|r |T132205:0|t[Rapid Killing]
    >>You also received an |T136091:0|t|cRXP_LOOT_Infernal Lasso|r trinket which can be used to tame Corehounds
    .use 220217
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Guide
    #subgroup Cloak
    #title Hit and Run
    #name Hit and Run - 50 (Burning Steppes)
step
    #completewith next
    .zone Burning Steppes >>Travel to Burning Steppes
step
    >>Look for an |cRXP_ENEMY_Escaped Core Hound|r he can spawn in multiple spots in the zone, |cRXP_WARN_check your map for waypoints for possible spawn locations|r. Loot him for the rune
    >>TIP: Instead of running around you can use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to scout for his position
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
    .train 440563 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guerrilla|r] |cRXP_WARN_to train|r |T132171:0|t[Hit and Run]
    .use 226252
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Guide
    #subgroup Cloak
    #title Resourcefulness
    #name Resourcefulness - 58 (Eastern Plaguelands)
step
    #completewith next
    .zone Eastern Plaguelands >>Travel to Eastern Plaguelands
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
    >>Kill and loot any |cRXP_ENEMY_Rotting Sludges|r and |cRXP_ENEMY_Living Decay|r untill you loot a |T132108:0|t[|cRXP_LOOT_Bubbling Green Ichor|r]
    >>|cRXP_WARN_The ichor is a gray item, be careful not to vendor it!|r
    .collect 20770,1 --Bubbling Green Ichor (1)
    .mob Living Decay
    .mob Rotting Sludge
step
    .goto Eastern Plaguelands,17.8,30.2
    >>Head to Terrordale and kill |cRXP_ENEMY_Plagued Swines|r untill you loot a |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r]
    .collect 225942,1 --Tainted Boar Meat (1)
    .mob Plagued Swine
step
    >>Use the |T134046:0|t[|cRXP_LOOT_Tainted Boar Meat|r] to combine it with the |T132108:0|t[|cRXP_LOOT_Bubbling Green Ichor|r] and create a |T134047:0|t[Rancid Hunk of Flesh]
    .collect 225943,1 --Rancid Hunk of Flesh (1)
    .use 225942
step
    .goto Eastern Plaguelands,22.68,37.12,-1
    .goto Eastern Plaguelands,19.37,26.42,-1
    .goto Eastern Plaguelands,29.83,39.05,-1
    >>Look for a |cRXP_ENEMY_Carrion Grub|r or a |cRXP_ENEMY_Carrion Devourer|r. The closest possible spawns to Terrordale are just north and south of it
    >>Use the |T134047:0|t[Rancid Hunk of Flesh] on it to feed it. |cRXP_WARN_The grub will spawn a skeleton after a short animation, loot it for|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Resourceful|r]
    .use 225943
    .collect 225955,1 --Rune of the resourceful (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    .train 440557 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Resourceful|r] |cRXP_WARN_to train|r |T132178:0|t[Resourcefulness]
    .use 225955
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Guide
    #subgroup Cloak
    #title Improved Volley
    #name Improved Volley - 60 (Silithus)
step
    #completewith next
    .zone Silithus >>Travel to Silithus
step
    >>Kill |cRXP_WARN_ANY mobs|r in silithus untill you loot a |T132997:0|t[|cRXP_LOOT_Busted Gizmo|r]. The droprate is relatively low but it can drop from all mobs in the zone
    .collect 226526,1
    .itemcount 226546,<1
step
    .goto Silithus,41.2,88.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwi Copperbolt|r at the Bronzebeard Encampment. Go through his dialogue to receive a |T133878:0|t[Desert Sonar]
    .collect 226546,1 --Desert Sonar (1)
    .itemcount 226546,<1
step
    .goto Silithus,36.00,71.00
    >>|cRXP_WARN_Run around the spot marked on your map untill you see the ground moving. When you do, use the|r |T133878:0|t[Desert Sonar] |cRXP_WARN_to summon a |cRXP_ENEMY_Sandworm|r. Kill it and loot for the rune|r
    >>The worm has a solid amount of HP and a burrow ability allowing it to disappear for a while. Make sure you're ready for a fight before spawning it
    .collect 226587,1 --rune of shelling
    .mob Sandworm
step
    .train 440560 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shelling|r] to train |T236179:0|t[|cRXP_FRIENDLY_Improved Volley|r]
    .use 226587
]])
