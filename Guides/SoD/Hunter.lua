RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Chimera Shot - 3 (Dun Morogh)

step << Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>Open the |cRXP_PICK_Frostmane Loot Cache|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .use 206168
    .itemcount 206168,1
    .train 410121,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Chimera Shot - 3 (Shadowglen)

step << Hunter
    #season 2
    .goto Teldrassil,56.68,26.12
    >>Kill |cRXP_ENEMY_Githyiss the Vile|r. Loot Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .use 206168
    .itemcount 206168,1
    .train 410121,1
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Explosive Shot - 2 (Durotar)


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
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .train 410123,1

]])



RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Chimera Shot - 2 (Durotar)


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
    .loop 25,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>Kill |cFFFF5722Scorpid Workers|r. Loot them for |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .use 206168
    .train 410121,1
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
#group RestedXP Rune Guide
#subgroup Gloves
#name Chimera Shot - 2 (Mulgore)


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Accept A Hunter's Strength
    .target Lanka Farshot
step
    #season 2
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
    .goto Mulgore,55.99,85.46
    >>Kill |cRXP_ENEMY_Battleboars|r. Loot them for |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Battleboar
    .train 410121,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .use 206168
    .train 410121,1
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
#group RestedXP Rune Guide
#subgroup Chest
#name Master Marksman - 6 (Durotar)


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Razormane Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Markmanship (1)
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
<< Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Master Marksman - 6 (Mulgore)


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Venture Co. Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Markmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
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
#group RestedXP Rune Guide
#subgroup Legs
#name Flanking - 6 (Mulgore)


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>Kill |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r. Loot them for |T134025:0|t[|cRXP_LOOT_Mulgore Bird Meat|r]
    .collect 205961,1 --Mulgore Bird Meat (1)
    .mob Wiry Swoop
    .mob Swoop
    .mob Adult Plainstrider
    .train 425762,1
step
    #season 2
    .goto Mulgore,35.22,57.42
    .use 205961 >>Use the |T134025:0|t[|cRXP_LOOT_Mulgore Bird Meat|r] at the carcass to summon |cRXP_ENEMY_Mokwa|r
    >>Kill him and loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .train 425762,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .use 205979
    .train 425762,1

]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Flanking - 6 (Durotar)


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
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .use 205979
    .train 425762,1

]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Carve - 10 (Durotar)


    --Rune of Carve

step
    #season 2
    #completewith next
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
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .train 425758,1

    ]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Carve - 10 (Mulgore)


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
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .train 425758,1

]])
