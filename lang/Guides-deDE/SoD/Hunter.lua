if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schimärenschuss - 2 (Dun Morogh)
#title Schimärenschuss


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 2 sein, um|r |T133816:0|t[Handschuhe prägen - Schimärenschuss] |cRXP_WARN_in Dun Morogh allein zu erwerben|r
    .train 410121,1
    .xp >2,1
step
    #completewith Rune
    #label Dun1
    .zone Dun Morogh >> Reist nach Dun Morogh
    .train 410121,1
step
    #optional
    #requires Dun1
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Betretet die Höhle der Frostmähnen
    .train 410121,1
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Reist zum |cRXP_PICK_Frostmane Beute Beutelager der Frostmane|r im Inneren
    .train 410121,1
step
    #label Rune
    .goto Dun Morogh,30.773,80.063
    >>Öffnet |cRXP_PICK_Frostmane Beute Beutelager der Frostmane|r auf dem Boden drinnen. Plündert es für die |T134419:0|t|cRXP_LOOT_[Rune der Chimäre]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Benutzt|r |T134419:0|t|cRXP_LOOT_[Rune der Chimäre]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schimärenschuss] zu lernen
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schimärenschuss - 3 (Teldrassil)
#title Schimärenschuss

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 3 sein, um|r |T133816:0|t[Handschuhe prägen - Schimärenschuss] |cRXP_WARN_in Teldrassil allein zu erwerben|r
    .train 410121,1
    .xp >3,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >> Reist nach Teldrassil
    .train 410121,1
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,56.694,31.485
    .subzone 25 >> Betretet die Schattenweberhöhle
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
    .goto 1438,56.874,26.323,10 >> Reist zu |cRXP_ENEMY_Githyiss die Üble|r im Inneren
    .train 410121,1
step
    #label Rune
    .goto Teldrassil,56.68,26.12
    >>Tötet |cRXP_ENEMY_Githyiss die Üble|r. Plündert sie für die |T134419:0|t|cRXP_LOOT_[Rune der Chimäre]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Benutzt|r |T134419:0|t|cRXP_LOOT_[Rune der Chimäre]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schimärenschuss] zu lernen
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Explosivschuss - 5 (Dun Morogh)
#title Explosivschuss

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 5 sein, um|r |T133816:0|t[Handschuhe prägen - Explosivschuss] |cRXP_WARN_in Dun Morogh allein zu erwerben|r
    .train 410123,1
    .xp >5,1
step
    #completewith Rune
    .zone Dun Morogh >>Reist nach Dun Morogh
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
    >>Tötet |cRXP_ENEMY_Fyodi|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune des Explosivschusses]|r
    >>|cRXP_WARN_Obwohl |cRXP_ENEMY_Fyodi|r als Elite angezeigt wird, sind seine Leben-, Schaden- und Rüstungswerte die eines Standard-Mobs|r
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T132337:0|t[Sturmangriff] wirkt |cRXP_WARN_Erhöht sofort die Bewegungsgeschwindigkeit für 3 Sek., verursacht 35-80 Nahkampfschaden bei Treffer. Nur aus der Ferne wirkbar|r
    >>|cRXP_WARN_HINWEIS: Die|r |T134419:0|t|cRXP_LOOT_[Rune des Explosivschusses]|r |cRXP_WARN_kann auch von jedem seltenen Mob in Dun Morogh fallen gelassen werden, sowie von |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Marterklaue|r, und|r |cRXP_ENEMY_Eisbart der Alte|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Fyodi
    .train 410123,1
    .xp >10,1
step
    #label Rune
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für |T134419:0|t|cRXP_LOOT_[Rune des Explosivschusses]|r
    >>|cRXP_WARN_HINWEIS: Die|r |T134419:0|t|cRXP_LOOT_[Rune des Explosivschusses]|r |cRXP_WARN_kann auch von jedem seltenen Mob in Dun Morogh fallen, sowie von |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Marterklaue|r, und|r |cRXP_ENEMY_Eisbart der Alte|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Vagash
    .train 410123,1
    .xp <10,1
step
    .train 410123 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_LOOT_Rune des Explosivschusses|r] |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Explosivschuss] zu erlernen
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Explosivschuss - 2 (Durotar)
#title Explosivschuss


    --Rune of Explosive Shot

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Tötet |cFFFF5722Sarkoth|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosivschuss|r]
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Sarkoth
    .train 410123,1
step
    #season 2
    .train 410123 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Explosivschusses|r]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schimärenschuss - 2 (Durotar)
#title Schimärenschuss


    --Rune of Chimera Shot

step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Jen'shan|r
    .accept 77590 >>Akzeptiert die Quest Unwegsames Terrain << Troll Hunter
    .accept 77584 >>Akzeptiert die Quest Jagd auf die Rune << Orc Hunter
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
    >>Tötet |cFFFF5722Scorpid Workers|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .train 410121 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Chimäre|r]
    .use 206168
    .itemcount 206168,1
step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Jen'shan|r
    .turnin 77590 >>Gebt die Quest Unwegsames Terrain ab << Troll Hunter
    .turnin 77584 >>Gebt die Quest Jagd auf die Rune ab << Orc Hunter
    .target Jen'shan
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schimärenschuss - 2 (Mulgore)
#title Schimärenschuss


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Akzeptiert die Quest Die Stärke eines Jägers
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
    >>Tötet |cRXP_ENEMY_Bristleback Battleboars|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #season 2
    .train 410121 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Chimäre|r]
    .use 206168
    .itemcount 206168,1
step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 77649 >>Gebt die Quest Die Stärke eines Jägers ab
    .target Lanka Farshot
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterschütze - 6 (Durotar)
#title Meisterschütze


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Wilderer der Grimmhauer|r welche spawnen. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterschütze - 6 (Mulgore)
#title Meisterschütze


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Wilderer der Venture Co.|r welche erscheinen. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterschütze - 6 (Dun Morogh)
#title Meisterschütze


    --Rune of Master Marksman

step
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Wilderer der Grimmhauer|r welche spawnen. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Meisterschütze - 6 (Teldrassil)
#title Meisterschütze


    --Rune of Master Marksman

step
    #season 2
    .goto Teldrassil,46.6,46.3
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Fallenroot Poacher|r that spawns. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Flankieren - 6 (Mulgore)
#title Flankieren


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>Tötet |cRXP_ENEMY_Plainstriders|r und |cRXP_ENEMY_Swoops|r. Plündert sie für |T134025:0|t[|cRXP_LOOT_Mulgore Bird Fleisch|r]
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
    >>Benutzt |T134025:0|t[|cRXP_LOOT_Mulgore-Vogel-Fleisch|r] beim Kadaver, um |cRXP_ENEMY_Mokwa|r zu beschwören
    >>Tötet ihn und plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Flankierens|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .use 205961
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Flankierens|r] |cRXP_WARN_um zu trainieren|r |T132175:0|t[Flankenangriff]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Flankieren - 6 (Durotar)
#title Flankieren


    --Rune of Flanking

step
    #season 2
    .goto Durotar,53.43,48.62,70,0
    .goto Durotar,51.77,56.01,70,0
    .goto Durotar,54.04,67.14
    >>Tötet |cRXP_ENEMY_Dire Mottled Boars|r. Plündert sie für |T134026:0|t[|cRXP_LOOT_Durotar Pig Fleisch|r]
    .collect 207590,1 --Durotar Pig Meat (1)
    .mob Dire Mottled Boar
    .train 425762,1
step
    #season 2
    .goto Durotar,68.67,71.68
    .use 207590 >>Benutzt |T134026:0|t[|cRXP_LOOT_Durotar-Schwein-Fleisch|r] beim Kadaver, um |cRXP_ENEMY_Raluk|r zu beschwören
    >>Tötet ihn und plündert ihn für |T134419:0|t[|cRXP_FRIENDLY_Rune des Flankierens|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Raluk
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Flankierens|r] |cRXP_WARN_um zu trainieren|r |T132175:0|t[Flankenangriff]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Zerlegen - 10 (Durotar)
#title Zerlegen


    --Rune of Carve

step
    #season 2
    #completewith n`t
    +|cRXP_WARN_Ihr müsst|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_gelernt haben, um diese Rune zu erhalten|r
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
    >>Tötet |cRXP_ENEMY_Razormane Quilboars|r. Plündert sie für |T134743:0|t[|cRXP_LOOT_Adder Pheromone|r]
    .collect 207631,1 --Adder Pheromone (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 425758,1
step
    #season 2
    #completewith next
    +Find an |cRXP_ENEMY_Adder|r (critter). Benutzen von Euch |T134743:0|t[|cRXP_LOOT_Adder Pheromone|r] und wirkt |T132164:0|t[Wildtier zähmen]
    >>|cRXP_WARN_Sie sind leichter rund um Klingenhügel zu finden|r
    .use 207631
    .unitscan Adder
step
    #season 2
    .goto Durotar,52.15,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzil|r
    >>Bringt |cRXP_ENEMY_Otter|r, um |T134419:0|t[|cRXP_FRIENDLY_Rune des Zerlegens|r] zu erhalten
    .collect 206032,1 --Rune of Carve (1)
    .target Razzil
    .train 425758,1
step
    #season 2
    .train 425758 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Zerlegen|r]
    .use 206032
    .itemcount 206032,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Zerlegen - 10 (Mulgore)
#title Zerlegen


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr müsst|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_gelernt haben, um diese Rune zu erhalten|r
step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Tötet |cRXP_ENEMY_Palemane Gnolls|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Prairie Hund Musk|r]
    .collect 205995,1 --Prairie Dog Musk (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 425758,1
step
    #season 2
    #completewith next
    +Find a |cRXP_ENEMY_Prairie Hund|r (critter). Benutzen von Euch |T134419:0|t[|cRXP_LOOT_Prairie Hund Musk|r] und wirkt |T132164:0|t[Wildtier zähmen]
    >>|cRXP_WARN_Sie sind leichter entlang der Straße südlich/östlich von Das Dorf der Bluthufe zu finden|r
    .use 205995
    .unitscan Prairie Dog
step
    #season 2
    .goto Mulgore,46.19,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takoda|r
    >>Bringt |cRXP_ENEMY_Präriehund|r, um |T134419:0|t[|cRXP_FRIENDLY_Rune des Zerlegens|r] zu erhalten
    .collect 206032,1 --Rune of Carve (1)
    .target Takoda Sunmane
    .train 425758,1
step
    #season 2
    .train 425758 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Zerlegen|r]
    .use 206032
    .itemcount 206032,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Zerlegen - 10 (Dun Morogh)
#title Zerlegen


    --Rune of Carve
step
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr müsst|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_gelernt haben, um diese Rune zu erhalten|r
step
    #season 2
    #loop
    .goto Dun Morogh,68.2,56.2,20,0
    .goto Dun Morogh,68.8,58.2,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,72.6,52.6,20,0
    >>Tötet |cRXP_ENEMY_Rockjaw Troggs|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rabbit Musk.|r]
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
    >>Benutzt |T134419:0|t[Kaninchenmoschus] on a |cRXP_ENEMY_Rabbit|r |cRXP_WARN_Don't dismiss von Euch current Streicheln.|r
    .use 208180
    .unitscan Rabbit
step
    #season 2
    .goto Dun Morogh,63.40,50.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Toby|r
    >>Bringt |cRXP_ENEMY_Rabit|r, um |T134419:0|t[|cRXP_FRIENDLY_Rune des Zerlegens|r] zu erhalten
    .collect 206032,1 --Rune of Carve (1)
    .target Toby
    .train 425758,1
step
    #season 2
    .cast 402265 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune of Zerlegen|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Zerlegen - 10 (Teldrassil)
#title Zerlegen


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr müsst erlernt haben|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_um diese Rune erhalten zu können|r
step
    #season 2
    .goto Teldrassil,46.2,51.2,20,0
    .goto Teldrassil,46.8,54.6,20,0
    .goto Teldrassil,48.8,55.4,20,0
    .goto Teldrassil,71.0,58.0,20,0
    .goto Teldrassil,44.8,61.2
    >>Tötet |cRXP_ENEMY_Gnarlpines|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Deer Musk|r]
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
    >>Benutzt |T134419:0|t[Dear Musk] on a |cRXP_ENEMY_Deer|r |cRXP_WARN_Don't dismiss von Euch current Streicheln.|r
    .use 208607,1
    .unitscan Deer
step
    #season 2
    .goto Teldrassil,39.8,9.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Relaeron <Pfleger>|r in |cFFfa9602Darnassus|r
    >>Bringt den |cRXP_ENEMY_Reh|r herbei, um |T134419:0|t[|cRXP_FRIENDLY_Rune of Zerlegen|r] zu erhalten
    .collect 206032,1 --Rune of Carve (1)
    .target Relaeron
    .train 425758,1
step
    #season 2
    .cast 402265 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune of Zerlegen|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Meister der Tiere - 16 (The Barrens)
#title Meister der Tiere

    --Rune of Beast Mastery

step
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr müsst|r |T135813:0|t[Feuerbrandfalle] erlernt haben |cRXP_WARN_oder eine andere beliebig Falle, um diese Rune zu erhalten|r
step
    #season 2
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Benutzt |T135813:0|t[Feuerbrandfalle] auf dem Patrouillenpfad des |cRXP_ENEMY_Patrouillierender Gepard|r, um seinen Buff zu entfernen
    >>Tötet ihn und plündert ihn, um |T134419:0|t[|cRXP_FRIENDLY_Rune des Meisters der Tiere|r] zu erhalten
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step
    #season 2
    .train 410110 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Meister der Tiere|r] |cRXP_WARN_zum Trainieren von|r |T132270:0|t[Meister der Tiere]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Meister der Tiere - 16 (Silverpine)
#title Meister der Tiere

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
    >>Tötet ihn und plündert ihn, um |T134419:0|t[|cRXP_FRIENDLY_Rune des Meisters der Tiere|r] zu erhalten
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Ferocious Grizzled Bear
    .mob Grizzled Protector
step
    #season 2
    .train 410110 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Meister der Tiere|r] |cRXP_WARN_zum Trainieren von|r |T132270:0|t[Meister der Tiere]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Heckenschützentraining - 18 (Dunkelküste)
#title Heckenschützentraining


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Darkshore >>Reist zur Dunkelküste
step
    #season 2
    .goto 1439,44.081,20.739
    >>Plündert die |T135129:0|t[Knorrige Harpune] aus dem Auge des Skeletts
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 416091,1
step
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Benutzt|r |T135129:0|t[Knorrige Harpune] |cRXP_WARN_auf |cRXP_ENEMY_Paxnozz|r, um seine maximale Gesundheit auf 743 zu reduzieren|r
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
    >>Tötet |cRXP_ENEMY_Paxnozz|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune of the Sniper]|r
    >>|cRXP_WARN_Seid vorsichtig, das ist ein Stufe-20-Elite|r
    .collect 208777,1 --Rune of the Sniper (1)
    .train 416091,1
    .use 209047
    .mob Paxnozz
step
    #season 2
    .train 416091 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_zum Trainieren|r |T132212:0|t[Heckenschützentraining]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Heckenschützentraining - 16 (Westfall)
#title Heckenschützentraining


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Westfall >>Lauf nach Westfall
step
    #season 2
    #loop
    .goto Westfall,51.2,47.0,20,0
    .goto Westfall,50.2,48.6,20,0
    .goto Westfall,51.6,55.6,20,0
    >>Tötet die |cRXP_ENEMY_Defias Späher|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rune of the Sniper|r]
    .collect 208777,1
    .train 416091,1
    .mob Defias Scout
step
    #season 2
    .train 416091 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_zum Trainieren|r |T132212:0|t[Heckenschützentraining]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Heckenschützentraining - 16 (Loch Modan)
#title Heckenschützentraining


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Loch Modan >>Reist nach Loch Modan
step
    #season 2
    #loop
    .goto Loch Modan,55.6,52.2,20,0
    .goto Loch Modan,55.8,54.4,20,0
    .goto Loch Modan,54.2,56.8,20,0
    .goto Loch Modan,53.8,54.4,20,0
    >>Tötet |cRXP_ENEMY_Kackle|r. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rune of the Sniper|r]
    .collect 208777,1
    .train 416091,1
    .mob Kackle
step
    #season 2
    .train 416091 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_um zu trainieren|r |T132212:0|t[Heckenschützentraining]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Flankieren - 7 (Dun Morogh)
#title Flankieren


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
    >>Tötet |cRXP_ENEMY_Schweine|r. Plündert sie für |T134026:0|t[Schweinefleisch aus Dun Morogh]
    .collect 208192,1
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #season 2
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Benutzt |T134026:0|t[Dun Morogh Pig Fleisch] neben der Leiche in |cFFfa9602Iceflow Cavern|r, um |cRXP_ENEMY_Jorul|r zu beschwören
    >>Tötet |cRXP_ENEMY_Jorul|r und plündert ihn, um |T135142:0|t|cRXP_LOOT_[Rune des Flankierens]|r zu erhalten
    .collect 205979,1
    .use 208192
    .mob Jorul
step
    #season 2
    .train 425762 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flankieren|r] |cRXP_WARN_um zu trainieren|r |T132175:0|t[Flankenangriff]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Flankieren - 7 (Teldrassil)
#title Flankieren


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
    >>Tötet |cRXP_ENEMY_Birds|r in |cFFfa9602Teldrassil|r und plündert sie, um |T134025:0|t[Teldrassil Bird Fleisch] zu erhalten
    .collect 208608,1
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Benutzt |T134025:0|t[Teldrassil Bird Fleisch] neben der Leiche, um |cRXP_ENEMY_Mowgh|r zu beschwören
    >>Tötet |cRXP_ENEMY_Mowgh|r und plündert ihn, um |T134419:0|t|cRXP_LOOT_[Rune des Flankierens]|r zu erhalten
    .collect 205979,1
    .use 208608
    .mob Mowgh
step
    #season 2
    .train 425762 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flankieren|r] |cRXP_WARN_zum Trainieren|r |T132175:0|t[Flankenangriff]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#title Schwäche aufdecken
#name Schwäche aufdecken - 40 (Azeroth)


-- Expose Weakness

step
    #optional
    .train 426445,1
    +|cRXP_WARN_Ihr müsst mindestens Stufe 26 sein, bevor ihr die|r |T132353:0|t[Schwäche aufdecken] |cRXP_WARN_Rune erhalten könnt|r
    .xp >26,1
step
    #completewith next
    .zone Badlands >>Reist ins Ödland
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
    .use 211269 >>Tötet beliebig |cRXP_ENEMY_Dustbelcher Oger|r oder |cRXP_ENEMY_Stonevault Trogg|r. Plündert sie für |T237388:0|t[|cRXP_LOOT_Primitive Zeichnung|r]
    >>|cRXP_WARN_Benutzt|r |T237388:0|t[|cRXP_LOOT_Primitive Zeichnung|r] |cRXP_WARN_um die Quest zu starten|r
    >>|cRXP_WARN_Ihre Standorte sind auf eurer Karte gekennzeichnet|r
    .collect 211269,1,78823,1 --Primitive Drawing
    .accept 78823 >> Akzeptiert die Quest Schrecken des Wüstenhimmels
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
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal.
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >> Gebt die Quest Schrecken des Wüstenhimmels ab
    .accept 78830 >> Akzeptiert die Quest Schrecken des Wüstenhimmels
    .target Hemet Nesingwary
    .train 410114,1
step
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    .use 211272 >>|cRXP_WARN_Benutzt|r |T132599:0|t[Leer Köder Käfig] |cRXP_WARN_auf ein |cRXP_ENEMY_Arbor Tarantel|r Getier in STV. Sie sind oben auf Baumstümpfen zu finden|r
    >>|cRXP_WARN_Ihr könnt es auch auf jedes andere Getier verwenden, das ihr in der Welt findet|r
    .collect 211273,1 --Trapped Critter
    .mob Arbor Tarantula
    .mob Rat
    .mob Black Rat
    .mob Chicken
    .train 410114,1
step
    #completewith next
    .zone Badlands >>Reist ins Ödland
    .train 410114,1
step
    #completewith next
    .goto Badlands,22.352,67.733
    +Klickt |cRXP_PICK_Großes Nest|r oben auf dem Berg, um |cRXP_ENEMY_Gharrik|r zu beschwören
    .itemcount 211272,<1
step
    .goto Badlands,22.352,67.733
    >>Tötet |cRXP_ENEMY_Gharrik|r. Plündert sie für |cRXP_LOOT_Crimson Trophy Quill|r
    .complete 78830,1 --Crimson Trophy Quill (1)
    .mob Gharrik
    .train 410114,1
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal.
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78830 >> Gebt die Quest Schrecken des Wüstenhimmels ab
    .target Hemet Nesingwary
    .train 410114,1
step
    #season 2
    .train 410114 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Schwäche aufdecken|r] |cRXP_WARN_um zu trainieren|r |T132353:0|t[Schwäche aufdecken]
    .use 211301
    .itemcount 211301,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#title Zuverlässiger Schuss
#name Zuverlässiger Schuss - 30 (Arathihochland)

step
    #completewith next
    .zone Arathi Highlands >>Reist nach Arathihochland
step
    .train 410109,1
    #loop
    .goto Arathi Highlands,67.8,66.0,0
    .goto Arathi Highlands,69.4,63.2,25,0
    .goto Arathi Highlands,67.8,66.0,25,0
    .goto Arathi Highlands,68.4,68.2,25,0
    >>Tötet |cRXP_ENEMY_Needletooth|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Brunnenbehüter Solanian|r]
    >>|cRXP_ENEMY_NPCs|r |cRXP_WARN_ist ein Fisch, der im Lager der Bleichborken See schwimmt|r
    .collect 213122,1
    .mob Needletooth
step
    .train 410109 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des zuverlässigen Schusses|r] |cRXP_WARN_zum Trainieren|r |T132213:0|t[Brunnenbehüter Solanian]
    .use 213122
    .itemcount 213122,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#title Dual-Wield Spezialisierung
#name Dual-Wield Spezialisierung - 32 (Schlingendorntal)

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
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal.
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_Reist zum Pfeil-Ort und lauft umher bis das Buff namens|r |T132118:0|t[Gefahr!] |cRXP_WARN_bei euch erscheint|r
    .aura 435548
    .aura 435428
    .aura 435546
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_Zaubert|r |T135815:0|t[Leuchtfeuer] |cRXP_WARN_um die|r |cRXP_ENEMY_Bloodscalp NPCs|r zu offenbaren
    .usespell 1543
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>Tötet die |cRXP_ENEMY_Bloodscalp Guerrilla|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of the Verschrotter|r]
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
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Feuer konzentrieren
#name Feuer konzentrieren - 40 (Sengende Schlucht)

step
    #completewith next
    +|cRXP_WARN_Ihr werdet einen Mob Level 45 in einem feindseligen Gebiet töten müssen, um diese Rune zu erwerben. Stellt sicher, dass ihr Hilfe mitbringt, wenn ihr einen niedrigeren Level habt.|r
    .xp <45,1
step
    .goto Searing Gorge,53.10,55.85
    >>Geht vorsichtig entlang des Baum-Astes zum Vogelnest. Plündert |cRXP_PICK_Sturmkrähe-Ei|r davon.
    .collect 221544,1 --Stormcrow Egg
step
    .goto 1427/0,-1532.400,-6953.600
    >>Geht den Ast wieder entlang. Wartet ein paar Sekunden, bis |cRXP_ENEMY_Enraged Sturmkrähe|r spawnt. Tötet sie und plündert |T134419:0|t[|cRXP_FRIENDLY_Rune des fokussierten Feuers|r]
    .collect 221445,1
    .mob Enraged Stormcrow
    .train 431601,1
step
    .itemcount 221445,1
    .use 221445
    .train 431601 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des fokussierten Feuers|r] |cRXP_WARN_zum Erlernen von|r |T135548:0|t[Feuer konzentrieren]
 ]])

 RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Dungeonführer
    #subgroup Armschienen
    #title Raptorenfuror
    #name Raptorenfuror - 40 (Tanaris)

step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
step
    #loop
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>Tötet |cRXP_ENEMY_Zopilote|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of The Raptor|r]
    >>|cRXP_ENEMY_NPCs|r |cRXP_WARN_ist ein Aasfresser, der von Osten nach Westen in einem großen Gebiet patrouilliert, das sich von südlich Sandmarterwaches bis Gadgetzan erstreckt|r
    >>TIPP: Anstatt herumzulaufen könnt ihr |T132172:0|t[|cRXP_FRIENDLY_Adlerauge|r] verwenden, um seinen Standort auszukundschaften. Falls ihr ihn nicht finden könnt, ist er wahrscheinlich tot und sollte um die mit "2+" auf der Karte von Euch markierte Stelle respawnen
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step
    .train 416093 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Raptors|r] |cRXP_WARN_zum Trainieren|r |T132253:0|t[Raptorenfuror]
    .use 2220687
    .itemcount 220687,1

    ]])
RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Dungeonführer
    #subgroup Helm
    #title Katzenhafte Reflexe
    #name Katzenhafte Reflexe - 40 (Feralas)

step
    #completewith next
    .zone Feralas >>Reist nach Feralas
step
    +|cRXP_WARN_Ihr benötigt eines von beiden, entweder |T133951:0|t|cRXP_PICK_Weiches Bananenbrot|r oder |T133980:0|t|cRXP_PICK_Tel'Abim Banane|r, um diese Rune zu erwerben. |cRXP_FRIENDLY_Mardrack Grünquell|r verkauft das Brot in Feathermoon für die Allianz. |cRXP_FRIENDLY_Gastwirtin Greul|r verkauft es in Camp Mojache für die Horde.
    .itemcount 4601,<1 --Soft Banana Bread
    .itemcount 4537,<1 --Tel'Abim Banana
    .target Innkeeper Greul
    .target Mardrack Greenwell
    .train 416083,1
step
    >>Geht zur Yeti-Höhle in der Oberen Wildnis
    .goto 1444/1,1599.300,-4977.800,10
    .train 416083,1
step
    .goto 1444/1,1778.900,-5179.100,
    >>Nehmt den Weg der Mitte an der Wegekreuzung, nachdem ihr die zweite Höhle betretet. Im hinteren Bereich findet ihr |cRXP_FRIENDLY_NPCs|r
    .gossip 222376,1 >>Vollendet den Dialog des Affen, um es mit |T133951:0|t|cRXP_PICK_Weiches Bananenbrot|r oder |T133980:0|t|cRXP_PICK_Tel'Abim-Banane|r zu füttern. Es wird eine Version erschaffen, die dir folgt.
    .target Groddoc Infant
    .train 416083,1
step
    .goto 1444/1,1330.900,-5078.100
    >>Geleitet den |cRXP_FRIENDLY_Groddoc Infant|r zu einem |cRXP_FRIENDLY_Groddoc Matriarch|r, der auf der Karte von Euch markiert ist. Seid vorsichtig, der Säugling ist aggressiv und wird in der Nähe befindliche Feinde angreifen, einschließlich gegnerischer Spieler.
    .gossip 222406,1 >>Sobald ihr dort seid, sprecht mit der Matriarchin und vollendet ihren Dialog, um |T134419:0|t[|cRXP_FRIENDLY_Rune der Dschungelkatze|r] zu erhalten
    .collect 220791,1 -- Rune of the Jungle Cat
    .train 416083,1
step
    .train 416083 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Dschungelkatze|r] |cRXP_WARN_um zu trainieren|r |T132167:0|t[Katzenhafte Reflexe]
    .use 220791
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Dungeonführer
    #subgroup Helm
    #title Schneller Tod
    #name Schneller Tod - 45 (Sengende Schlucht & Verwüstete Lande)
step
    #completewith next
    .zone Searing Gorge >>Reist nach Sengende Schlucht
step
    .goto 1427/0,-832.800,-6647.500,10
    >>Reist zur Höhleneingang in Feuerwachtgrat. Hinweis, dass ihr eine Höhle betretet, die mit 47-48er Eliten gefüllt ist. Abgesehen davon ist es möglich, diesen Teil mit Deathruns abzuschließen.
    .train 416090,1
step
    .goto Searing Gorge,14.5,36.5
    >>Wenn ihr die Höhle betretet, nehmt den Pfad nach rechts. Ihr werdet schnell eine große Tafel sehen, die |cRXP_WARN_Weathered Etching|cRXP_FRIENDLY_ heißt, die auf einer Erhebung in der mittleren Sektion der Höhle steht. Lauft zu ihr und akzeptiert die Quest.|r
    >>TIPP: Wenn ihr allein seid, versucht, Fallen und euer Haustier zu nutzen, um so weit wie möglich zu kommen, bevor ihr |T132293:0|t[|cRXP_FRIENDLY_Totstellen|r] nutzt, um den Aggro der Mobs zu entfernen. Alternativ könnt ihr als Geist zum Gegenstand rennen.
    .accept 81900 >> Akzeptiert die Quest Die brennende Bestie
step
    #completewith next
    .zone Blasted Lands >>Reist nach Verwüstete Lande
step
    .goto Blasted Lands,50.6,14.2
    >>Sprecht mit |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81900 >>Gebt die Quest Die brennende Bestie ab
    .accept 81917 >>Akzeptiert die Quest Bindende Ketten
    .target Bloodmage Lynnore
step
    .goto Blasted Lands,64.24,32.36
    >>Reist zum Gebiet der Shadowsworn-Höhle und tötet alle |cRXP_ENEMY_Shadowsworn-Kultisten, Shadowsworn-Rohling oder Shadowsworn-Adepten|r für |cRXP_LOOT_Höllisch Ketten|r
    .complete 81917,1 --Infernal Chains 5/5
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
step
    .goto Blasted Lands,50.6,14.2
    >>Sprecht mit |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81917 >>Turnin Ketten That Binden
    .accept 81919 >>Akzeptiert die Quest Unter Kontrolle
    .target Bloodmage Lynnore
step
    #loop
    .goto 1419/0,-2976.500,-11483.101
    .goto 1419/0,-2778.300,-11420.800
    .goto 1419/0,-2821.900,-11353.700
    .goto 1419/0,-2934.700,-11419.101
    >>Sucht nach |cRXP_ENEMY_Calefactus der Entfesselte|r, einem grünen Kernhund der Stufe 50. Er hat mehrere Spawnpunkte rund um den südlichen Rand des roten Teils der Karte. Versucht |T132172:0|t[|cRXP_FRIENDLY_Adlerauge|r] zu verwenden, um ihn zu finden. Wenn ihr ihn gefunden habt, benutzt den |T136091:0|t|cRXP_LOOT_Höllenlasso|r auf ihn, tötet ihn und plündert sein Blut.
    .complete 81919,1 --Fel Lifeblood 1/1
    .use 220216
    .unitscan Calefactus the Unleashed
step
    .goto Blasted Lands,50.6,14.2
    >>Sprecht mit |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81919 >>Gebt die Quest Unter Kontrolle ab
    .target Bloodmage Lynnore
step
    .train 416090 >>|T134419:0|tBenutzt |T132205:0|t[|cRXP_FRIENDLY_Rune der Unersättlichen|r], |cRXP_WARN_um Schneller Tod zu trainieren|r
    >>Ihr habt auch ein |T136091:0|t|cRXP_LOOT_Höllenlasso|r-Schmuckstück erhalten, das zum Zähmen von Kernhunden verwendet werden kann
    .use 220217
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Dungeonführer
    #subgroup Verschleierung
    #title Drauf und weg
    #name Trefferwert und Rennen - 50 (Brennende Steppe)
step
    #completewith next
    .zone Burning Steppes >>Reise zur Brennenden Steppe
step
    >>Sucht nach dem |cRXP_ENEMY_Entkommenen Kernhund|r. Er kann an mehreren Stellen in der Zone spawnen. |cRXP_WARN_Prüft eure Karte auf Wegpunkte für mögliche Spawnorte|r. Plündert ihn für die Rune
    >>TIPP: Anstatt herumzulaufen könnt ihr |T132172:0|t[|cRXP_FRIENDLY_Adlerauge|r] verwenden, um seine Position zu erkunden
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
    .train 440563 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Guerrillas|r] |cRXP_WARN_um zu erlernen|r |T132171:0|t[Drauf und weg]
    .use 226252
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Dungeonführer
    #subgroup Verschleierung
    #title Improvisation
    #name Improvisation - 58 (Die Östlichen Pestländer)
step
    #completewith next
    .zone Eastern Plaguelands >>Lauf in die Östlichen Pestländer
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
    >>Tötet |cRXP_ENEMY_Rotting Sludges|r und |cRXP_ENEMY_Lebender Verfall|r, bis ihr einen |T132108:0|t[|cRXP_LOOT_Bubbling Grün Ichor|r] plündert
    >>|cRXP_WARN_Das Ichor ist ein grauer Gegenstand - passt auf, dass ihr ihn nicht an einen Händler verkauft!|r
    .collect 20770,1 --Bubbling Green Ichor (1)
    .mob Living Decay
    .mob Rotting Sludge
step
    .goto Eastern Plaguelands,17.8,30.2
    >>Geht zu Schreckenstal und tötet |cRXP_ENEMY_Plagued Swines|r, bis ihr ein |T134046:0|t[|cRXP_LOOT_Tainted Eber Fleisch|r] plündert.
    .collect 225942,1 --Tainted Boar Meat (1)
    .mob Plagued Swine
step
    >>Benutzt |T134046:0|t[|cRXP_LOOT_Tainted Eber Fleisch|r], um es mit |T132108:0|t[|cRXP_LOOT_Bubbling Grün Ichor|r] zu kombinieren und |T134047:0|t[Ranziger Fleischbrocken] zu erschaffen
    .collect 225943,1 --Rancid Hunk of Flesh (1)
    .use 225942
step
    .goto Eastern Plaguelands,22.68,37.12,-1
    .goto Eastern Plaguelands,19.37,26.42,-1
    .goto Eastern Plaguelands,29.83,39.05,-1
    >>Sucht nach |cRXP_ENEMY_Aaslarve|r oder |cRXP_ENEMY_Aasverschlinger|r. Die nächstmöglichen Spawnpunkte befinden sich direkt nördlich und südlich von Schreckenstal
    >>Benutzt |T134047:0|t[Ranziger Fleischbrocken] auf es, um es zu füttern. |cRXP_WARN_Die Larve wird nach einer kurzen Animation ein Skelett spawnen, plündert es für|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Einfallsreichen|r]
    .use 225943
    .collect 225955,1 --Rune of the resourceful (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    .train 440557 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Einfallsreichen|r] |cRXP_WARN_um zu trainieren|r |T132178:0|t[Improvisation]
    .use 225955
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune & Books Dungeonführer
    #subgroup Verschleierung
    #title Verbesserte Salve
    #name Verbesserte Salve - 60 (Silithus)
step
    #completewith next
    .zone Silithus >>Lauf nach Silithus
step
    >>Tötet |cRXP_WARN_ALLE Gegner|r in Silithus, bis ihr einen |T132997:0|t[|cRXP_LOOT_Busted Dingsbums|r] plündert. Die Drop-Chance ist relativ niedrig, aber er kann von allen Gegnern in der Zone fallen
    .collect 226526,1
    .itemcount 226546,<1
step
    .goto Silithus,41.2,88.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edwi Copperbolt|r im Bronzebarts Lager. Geht durch seinen Dialog, um ein |T133878:0|t[Wüstensonar] zu erhalten
    .collect 226546,1 --Desert Sonar (1)
    .itemcount 226546,<1
step
    .goto Silithus,36.00,71.00
    >>|cRXP_WARN_Lauft um die auf der Karte von Euch markierte Stelle herum, bis ihr seht, dass sich der Boden bewegt. Wenn das der Fall ist, benutzt|r |T133878:0|t[Wüstensonar] |cRXP_WARN_um einen |cRXP_ENEMY_Sandwurm|r zu beschwören. Tötet es und plündert die Rune|r
    >>Der Wurm hat eine beträchtliche Menge HP und eine Fähigkeit zum Vergraben, die es für eine Weile verschwinden lässt. Stellt sicher, dass ihr für einen Kampf bereit seid, bevor ihr ihn spawnt
    .collect 226587,1 --rune of shelling
    .mob Sandworm
step
    .train 440560 >> Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune of Shelling|r] um |T236179:0|t[|cRXP_FRIENDLY_Verbesserte Salve|r] zu trainieren
    .use 226587
]])
