if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Eislanze - 2 (Wald von Elwynn)
#title Eislanze
<< Human Mage SoD


step
    +|cRXP_WARN_Ihr müsst mindestens Stufe 2 sein, um|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu erwerben, da dies die Stufenvoraussetzung für den Erhalt von|r |T133736:0|t[Verständnis Primer]
    >>|cRXP_WARN_Ihr braucht eine höhere Stufe, bevor ihr versucht zu erwerben|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>Betretet Abtei von Nordhain
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Research
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Reist Richtung |cRXP_FRIENDLY_Khelden Bremen|r oben
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r innerhalb
    .accept 77620 >> Akzeptiert die Quest Zauberforschung
    .target Khelden Bremen
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>Verlassen Abtei von Nordhain
    .train 401760,1
    .xp <2,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Tötet |cRXP_ENEMY_Defias Thugs|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Betretet Abtei von Nordhain
    .isOnQuest 77620
    .xp <2,1
step
    #optional
    #requires IceLance2
    #completewith Research2
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Reist Richtung |cRXP_FRIENDLY_Khelden Bremen|r oben
    .isQuestComplete 77620
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r innerhalb
    .turnin 77620 >> Gebt die Quest Zauberforschung ab
    .target Khelden Bremen
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Eislanze - 2 (Dun Morogh)
#title Eislanze

<< Gnome Mage SoD


step
    +|cRXP_WARN_Ihr müsst mindestens Stufe 2 sein, um|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu erwerben, da dies die Stufenvoraussetzung für den Erhalt von|r |T133736:0|t[Verständnis Primer]
    >>|cRXP_WARN_Ihr müsst noch höher leveln, bevor ihr versucht, zu erwerben|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >> Reist nach Dun Morogh
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .accept 77667 >> Akzeptiert die Quest Zauberforschung
    .target Marryk Nurribit
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >> Verlasst Ambossar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>Öffnet |cRXP_PICK_Felsenkiefertrogg Schließkiste|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >> Betretet Ambossar
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 77667 >> Gebt die Quest Zauberforschung ab
    .target Marryk Nurribit
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Eislanze - 2 (Durotar)
#title Eislanze

<< Troll Mage SoD


step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 2 sein, um zu erwerben|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_da es die Stufenvoraussetzung zum Erwerben des|r |T133736:0|t[Verständnis Primer]
    >>|cRXP_WARN_Ihr müsst noch höher leveln, bevor ihr versucht, zu erwerben|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >> Reist nach Durotar
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Akzeptiert die Quest Zauberforschung
    .target Mai'ah
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>Betretet den Koven der Brennenden Klinge
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>Reist zur |cRXP_PICK_Durchnässte Lagertruhe|r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>Öffnet |cRXP_PICK_Durchnässte Lagertruhe|r unter Wasser in der Höhle. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>Verlasst den Koven der Brennenden Klinge
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77643 >> Gebt die Quest Zauberforschung ab
    .target Mai'ah
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Eislanze - 2 (Tirisfal)
#title Eislanze
<< Undead Mage SoD


step
    +|cRXP_WARN_Ihr müsst mindestens Stufe 2 sein, um|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu erwerben, da dies die Stufenvoraussetzung für den Erhalt von|r |T133736:0|t[Verständnis Primer]
    >>|cRXP_WARN_Ihr müsst noch höher leveln, bevor ihr versucht, zu erwerben|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >> Reist nach Tirisfal
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Betretet Deathknell's chapel
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .accept 77671 >>Akzeptiert die Quest Zauberforschung
    .target Isabella
    .xp <2,1
step
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>Tötet |cRXP_ENEMY_Scarlet Initiates|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: NSZEIELA]|r |cRXP_WARN_um zu erlernen|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Betretet Deathknell's chapel
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Gebt die Quest Zauberforschung ab
    .target Isabella
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Regeneration - 12 (Westfall)
#title Regeneration

<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 12 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Regeneration] |cRXP_WARN_allein in Westfall|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Lauf nach Sturmwind
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Betretet Pestle's Apothecary
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Boucher|r innerhalb
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihr|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401767,1
step
    #completewith next
    .zone Westfall >>Lauf nach Westfall
    .train 401767,1
step
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>Tötet |cRXP_ENEMY_Defias Pillagers|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zauber Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Benutzt|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: TENGI RONEERA]|r |cRXP_WARN_zum Erlernen von|r |T133815:0|t[Brustteil prägen - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Regeneration - 13 (Loch Modan)
#title Regeneration

<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 13 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Regeneration] |cRXP_WARN_allein in Loch Modan|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Lauf nach Ironforge
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Betretet |cRXP_FRIENDLY_Ginny Longberry|r's house
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihr|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Reist nach Loch Modan
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >> Betretet das Zelt
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Öffnet |cRXP_PICK_Pile of Stolen Books|r drinnen. Sammelt sie für |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notes: TENGI RONEERA|r] |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Regeneration - 12 (The Barrens)
#title Regeneration

<< Horde Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 12 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Regeneration] |cRXP_WARN_allein in The Barrens|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Kauft|r |T134237:0|t[Kolkar Booty Schlüssel] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Das wird euch später ein paar Minuten ersparen|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft|r |T134237:0|t[Kolkar Booty Schlüssel] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Das wird euch später ein paar Minuten ersparen|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>Reist nach Das Brachland
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hula'mahi|r
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihm|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Hula'mahi
    .train 401767,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Tötet |cRXP_ENEMY_Kolkar Wranglers|r und |cRXP_ENEMY_Kolkar Stormers|r. Plündert sie für |T134237:0|t[Kolkar Booty Schlüssel]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>Öffnet |cRXP_PICK_Kolkars' Booty|r auf dem Boden. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Benutzt das|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: TENGIRONEERA|r] |cRXP_WARN_zum Trainieren von|r |T132869:0|t[Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Regeneration - 12 (Silberwald)
#title Regeneration
<< Horde Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 12 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Regeneration] |cRXP_WARN_allein in Silberwald|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Reist zur Unterstadt
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihm|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>Reist nach Silberwald
    .train 401767,1
step
    #loop
    .goto 1421,52.375,56.808,0
    .goto 1421,49.614,60.886,0
    .goto 1421,51.556,64.300,0
    .goto 1421,52.689,71.258,0
    .goto 1421,52.375,56.808,45,0
    .goto 1421,51.644,57.939,45,0
    .goto 1421,50.539,59.184,45,0
    .goto 1421,50.826,59.697,45,0
    .goto 1421,50.053,60.021,45,0
    .goto 1421,49.614,60.886,45,0
    .goto 1421,50.449,60.894,45,0
    .goto 1421,50.914,61.289,45,0
    .goto 1421,51.749,61.612,45,0
    .goto 1421,50.566,62.991,45,0
    .goto 1421,51.556,64.300,45,0
    .goto 1421,52.412,63.834,45,0
    .goto 1421,51.969,65.028,45,0
    .goto 1421,52.850,66.113,45,0
    .goto 1421,51.986,66.138,45,0
    .goto 1421,52.689,71.258,45,0
    >>Tötet |cRXP_ENEMY_Dalaran Apprentices|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zauber Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Benutzt das|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: TENGIRONEERA|r] |cRXP_WARN_zum Trainieren von|r |T132869:0|t[Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Eisige Finger - 10 (Wald von Elwynn)
#title Eisige Finger

<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 10 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Eisige Finger] |cRXP_WARN_allein in Wald von Elwynn|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Lauf nach Sturmwind
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Betretet Pestle's Apothecary
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Boucher|r innerhalb
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihr|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>Reist in den Wald von Elwynn
    .train 401765,1
step
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,25.2,92.7,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan Hogger
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Eisige Finger]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Eisige Finger - 5 (Dun Morogh)
#title Eisige Finger
<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 5 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Eisige Finger] |cRXP_WARN_allein in Dun Morogh|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Lauf nach Ironforge
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Betretet |cRXP_FRIENDLY_Ginny Longberry|r's house
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihr|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>Reist nach Dun Morogh
    .train 401765,1
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
    >>Tötet |cRXP_ENEMY_Fyodi|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r
    >>|cRXP_WARN_Obwohl |cRXP_ENEMY_Fyodi|r als Elite angezeigt wird, sind seine Leben-, Schaden- und Rüstungswerte die eines Standard-Mobs|r
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T132337:0|t[Sturmangriff] wirkt |cRXP_WARN_Erhöht sofort die Bewegungsgeschwindigkeit für 3 Sek., verursacht 35-80 Nahkampfschaden bei Treffer. Nur aus der Ferne wirkbar|r
    >>|cRXP_WARN_HINWEIS:|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_kann auch von jedem Rare-Mob in Dun Morogh droppen, sowie von|cRXP_ENEMY_ |rVagash|cRXP_ENEMY_, |rMarterklaue|r, und |cRXP_ENEMY_Eisbart der Alte|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r
    >>|cRXP_WARN_HINWEIS:|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_kann auch von jedem Rare-Mob in Dun Morogh droppen, sowie von|cRXP_ENEMY_ |rFyodi|cRXP_ENEMY_, |rMarterklaue|r, und |cRXP_ENEMY_Eisbart der Alte|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Vagash
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Eisige Finger]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Eisige Finger - 8 (Tirisfal)
#title Eisige Finger
<< Horde Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 8 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Eisige Finger] |cRXP_WARN_allein in Tirisfal|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Reist zur Unterstadt
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihm|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>Reisen toward |cRXP_ENEMY_Gillgar|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>Tötet |cRXP_ENEMY_Gillgar|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Eisige Finger]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Eisige Finger - 8 (Durotar)
#title Eisige Finger


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 8 haben, um zu erwerben|r |T133815:0|t[Brustteil prägen - Eisige Finger] |cRXP_WARN_allein in Durotar|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >> Reist nach Orgrimmar
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Horthus|r innerhalb
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_von ihm|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Horthus
    .train 401765,1
step
    #completewith next
    .zone Durotar >>Reist nach Durotar
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Zalazane
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>Tötet |cRXP_ENEMY_Fizzle Darkstorm|r. Plündert sie für |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fizzle Darkstorm
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Eisige Finger]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Ausgebrannt - 6 (Dun Morogh)
#title Ausgebrannt

<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 haben, um zu erwerben|r |T132686:0|t[Brustteil prägen - Feuerfontäne] |cRXP_WARN_in Dun Morogh mit einem anderen Spieler|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>Reist nach Dun Morogh
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Sucht nach anderen Magiern oder Hexenmeistern in der Nähe des|cRXP_ENEMY_ Eingefrorenen Troggs|r oder im allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen ein)|r
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf den |cRXP_ENEMY_Eingefrorener Trogg|r, um einen Stapel|r |T135805:0|t[Erhitzen]|cRXP_WARN_ anzuwenden. Wendet 5 Stapel gleichzeitig an, um den |cRXP_ENEMY_Eingefrorener Trogg|r zu töten. Plündert ihn für den|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r |cRXP_WARN_zum Lernen|r |T132686:0|t[Brustteil prägen - Feuerfontäne]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Ausgebrannt - 6 (Wald von Elwynn)
#title Ausgebrannt

<< Alliance Mage SoD

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um das zu erwerben|r |T132686:0|t[Brustteil prägen - Feuerfontäne] |cRXP_WARN_im Wald von Elwynn mit einem anderen Spieler|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>Reist in den Wald von Elwynn
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_Sucht nach anderen Magiern oder Hexenmeistern in der Nähe des |cRXP_ENEMY_Eingefrorenen Murlocs|r oder im Allgemeinen Chatfunktionen (Gib /1 in den Chatfunktionen ein)|r
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf den |cRXP_ENEMY_Eingefrorenen Murloc|r, um einen Stapel von|r |T135805:0|t[Erhitzen]|cRXP_WARN_ anzuwenden. Wendet 5 Stapel gleichzeitig an, um den |cRXP_ENEMY_Eingefrorenen Murloc|r zu töten. Plündert ihn für das|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notes: Ausgebrannt]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r |cRXP_WARN_zum Lernen|r |T132686:0|t[Brustteil prägen - Feuerfontäne]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Ausgebrannt - 6 (Durotar)
#title Ausgebrannt

<< Horde Mage SoD

step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um das zu erwerben|r |T132686:0|t[Brustteil prägen - Feuerfontäne] |cRXP_WARN_in Durotar mit einem anderen Spieler|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>Reist nach Durotar
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Sucht nach anderen Magiern, Hexenmeistern oder Schamanen in der Nähe des |cRXP_ENEMY_Eingefrorenen Makrura|r oder im Allgemeinen Chatfunktionen (Gib /1 in den Chatfunktionen ein)|r
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf den |cRXP_ENEMY_Eingefrorenen Makrura|r, um einen Stapel von|r |T135805:0|t[Erhitzen]|cRXP_WARN_ anzuwenden. Wendet 5 Stapel gleichzeitig an, um den |cRXP_ENEMY_Eingefrorenen Makrura|r zu töten. Plündert ihn für das|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notes: Ausgebrannt]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r |cRXP_WARN_zum Lernen|r |T132686:0|t[Brustteil prägen - Feuerfontäne]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Ausgebrannt - 6 (Tirisfal)
#title Ausgebrannt

<< Horde Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 6 sein, um das zu erwerben|r |T132686:0|t[Brustteil prägen - Feuerfontäne] |cRXP_WARN_in Tirisfal mit einem anderen Spieler|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_Sucht nach anderen Magiern oder Hexenmeistern in der Nähe von |cRXP_ENEMY_Eingefrorener Murloc|r oder im Allgemeinen Chatfunktionen (Tippt /1 in den Chatfunktionen)|r
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf den |cRXP_ENEMY_Eingefrorener Murloc|r, um einen Stapel von|r |T135805:0|t[Erhitzen]|cRXP_WARN_ zu erzeugen. Wendet 5 Stapel auf einmal an, um den |cRXP_ENEMY_Eingefrorenen Murloc|r zu töten. Plündert ihn für|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notes: Ausgebrannt]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r |cRXP_WARN_zum Lernen|r |T132686:0|t[Brustteil prägen - Feuerfontäne]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Erleuchtung - 8 (Wald von Elwynn)
#title Erleuchtung

<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 8 sein, um zu erwerben|r |T133815:0|t[Brustteil prägen - Erleuchtung] |cRXP_WARN_da dies die Stufenvoraussetzung des Trainings ist|r |T136071:0|t[Verwandlung]
    >>|cRXP_WARN_Ihr müsst noch mehr leveln, bevor ihr versucht, das zu erwerben|r |T133815:0|t[Brustteil prägen - Erleuchtung]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>Reist in den Wald von Elwynn
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>BETRETET die Goldhain-Taverne. Geht nach oben
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .train 118 >> Erlernt |T136071:0|t[Verwandlung]
    .target Zaldimar Wefhellt
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1429,49.68,73.74,0
    .goto 1429,79.92,64.51,0
    .goto 1429,83.61,83.86,0
    .goto 1429,77.54,40.05,0
    .goto 1429,83.67,83.53,0
    .goto 1429,49.68,73.74,40,0
    .goto 1429,49.04,55.23,40,0
    .goto 1429,58.93,59.8,40,0
    .goto 1429,62.95,63.3,40,0
    .goto 1429,70.46,63.41,40,0
    .goto 1429,79.92,64.51,40,0
    .goto 1429,85.79,65.94,40,0
    .goto 1429,82.89,70.69,40,0
    .goto 1429,79.07,79.02,40,0
    .goto 1429,82.61,86.35,40,0
    .goto 1429,83.61,83.86,40,0
    .goto 1429,87.27,82.16,40,0
    .goto 1429,90.67,77.25,40,0
    .goto 1429,86.02,66.26,40,0
    .goto 1429,80.6,50.21,40,0
    .goto 1429,77.54,40.05,40,0
    .goto 1429,73.96,41.08,40,0
    .goto 1429,65.67,41.75,40,0
    .goto 1429,58.87,59.97,40,0
    .goto 1429,79.37,78.84,40,0
    .goto 1429,83.67,83.53,40,0
    >>Wirkt |T136071:0|t[Verwandlung] auf die folgenden ungewöhnlichen Critter: |cRXP_ENEMY_Gazelles|r, |cRXP_ENEMY_Maden|r, |cRXP_ENEMY_Parrots|r, |cRXP_ENEMY_Fire Beetles|r, |cRXP_ENEMY_Rams|r, |cRXP_ENEMY_Larvas|r und |cRXP_ENEMY_Cats|r. Wartet auf das Ende des Rollenspiels
    >>Öffnet |cRXP_PICK_Zauber Notizen|r auf dem Boden. Plündert es für |T134332:0|t|cRXP_LOOT_[Azora Lehrling Notizen]|r
    .collect 204864,6 --Azora Apprentice Notes (6)
    .mob Gazelle
    .mob Maggot
    .mob Parrot
    .mob Fire Beetle
    .mob Ram
    .mob Larva
    .mob Cat
    .train 415942,1
    .xp <8,1
step
    >>Benutzt |T134332:0|t|cRXP_LOOT_[Azora Lehrling Notizen]|r um |T134332:0|t|cRXP_FRIENDLY_[Zaubernotizen: Erleuchtung]|r zu erstellen
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_Benutzt|r |T134332:0|t|cRXP_FRIENDLY_[Zaubernotizen: Erleuchtung]|r |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Erleuchtung]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Erleuchtung - 8 (Tirisfal)
#title Erleuchtung

<< Horde Mage SoD

step
    +|cRXP_WARN_Ihr MÜSST mindestens Stufe 8 sein, um das zu erwerben|r |T133815:0|t[Brustteil prägen - Erleuchtung] |cRXP_WARN_da dies die Stufenanforderung für Training ist|r |T136071:0|t[Verwandlung]
    >>|cRXP_WARN_Ihr müsst eure Stufe noch erhöhen, bevor ihr versucht zu erwerben|r |T133815:0|t[Brustteil prägen - Erleuchtung]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>Reist nach Tirisfal
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>BETRETET die Taverne von Brill. Geht nach oben
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain Firesong|r
    .train 118 >> Erlernt |T136071:0|t[Verwandlung]
    .target Cain Firesong
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1420,58.840,58.321,0
    .goto 1420,52.861,57.885,0
    .goto 1420,47.292,50.612,0
    .goto 1420,58.840,58.321,30,0
    .goto 1420,54.062,60.058,30,0
    .goto 1420,53.920,58.332,30,0
    .goto 1420,54.000,56.767,30,0
    .goto 1420,52.861,57.885,30,0
    .goto 1420,51.611,57.241,30,0
    .goto 1420,50.303,61.941,30,0
    .goto 1420,49.885,59.576,30,0
    .goto 1420,50.073,50.644,30,0
    .goto 1420,49.573,46.473,30,0
    .goto 1420,47.292,50.612,30,0
    >>Wirkt |T136071:0|t[Verwandlung] auf |cRXP_ENEMY_Odd Melons|r und wartet dann auf das Ende des Rollenspiels
    >>Plündert die |T134332:0|t[|cRXP_LOOT_Apothekernotizen|r] vom Boden
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>Benutzt |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r um |T134332:0|t|cRXP_FRIENDLY_[Zaubernotizen: Erleuchtung]|r zu erstellen
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_Benutzt|r |T134332:0|t|cRXP_FRIENDLY_[Zaubernotizen: Erleuchtung]|r |cRXP_WARN_um|r |T133815:0|t[Brustteil prägen - Erleuchtung] zu erlernen
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune & Books Dungeonführer
<<Alliance Mage SoD
#subgroup Beine/Stiefel/Helm
#name Eisige Adern/Zaubermacht/Tieffrieren - 40 (Azeroth)
#title Eisige Adern & Zaubermacht & Tieffrieren

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >> Reist zu |cFFfa9602Stormwind.|r
    .cast 3561 >>Benutzt [Nach Sturmwind teleportieren] |cRXP_WARN_falls ihr|r |T134419:0|t[Rune der Teleportation]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >> Kauft |T134419:0|t[Rune of Teleportations] von einem |cRXP_FRIENDLY_Reagenzien-, Arkane-Waren-, Schriftrollen- und Trank-Verkäufer|r |cRXP_WARN_Dies wird die Reisezeit stark reduzieren.|r
    >>|cRXP_WARN_Überspringt diesen Schritt manuell, falls ihr ohne auskommen wollt.|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >> |cRXP_WARN_Überprüft eure Bank auf Bücher, die möglicherweise eingezahlt wurden.|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >> |cRXP_WARN_Repariert eure Ausrüstung, da wir Todesfallen nutzen werden.|r
    >>|cFFFF0000Falls ihr keine Todesfallen verwenden möchtet, überspringt diesen Schritt manuell.|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>Klickt auf |cRXP_PICK_Bibliotheks Buch|r auf einem Regal im Wald von Elwynn um |T133744:0|t[Forschungstagebuch von Erzmagier Theocritus] zu erhalten
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>Reist zu |cFFfa9602Westfall|r zu Fuß, falls ihr |cRXP_WARN_in|r |cFFfa9602Elwynn Forest.|r seid|r
    .fly Westfall >>Nehmt eine Flugroute zu |cFFfa9602Westfall|r, falls ihr |cRXP_WARN_nicht|r im |cFFfa9602Wald von Elwynn seid.|r
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
--     >>|cRXP_WARN_manually skip this step if you are on a flightpath.|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0
    .goto 1436,52.64,53.83
    >>Klickt auf |cRXP_PICK_Gnomic Foliant|r auf dem Tisch in der Westfall-Taverne um |T133744:0|t[Die gesammelten Werke von Rumi aus Gnomeregan] zu erhalten
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Reist nach |cFFfa9602Westfall|r |cRXP_WARN_mit einer Flugroute.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Klickt das |cRXP_PICK_Zauberbuch|r, das sich |cFFfa9602auf dem Alchemieschrank in einem kleinen Haus in Mondniedergang, Westfall|r befindet, um |T133733:0|t[Betörungen und Verzauberungen.] zu erhalten.
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Reist nach |cFFfa9602Dämmerwald|r
    .fly Westfall >>Erlernt die Flugroute zum |cFFfa9602Westfall|r, |cRXP_WARN_falls ihr sie freigeschaltet habt und ihr noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Klickt |cRXP_PICK_Buch|r |cFFfa9602in den Katakomben des Morgenwaldes auf dem Alchemie-Tisch in Dämmerwald|r an, um |T133738:0|t[Verbrechen gegen die Anatomie] zu erhalten.
    >>|cRXP_WARN_Lauft zum Ende der Katakomben und sterbt. Erwägt, eine Gruppe zu bilden.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Reist in die |cFFfa9602Sümpfe des Elends|r
    .fly Swamp of Sorrows >>Erlernt die Flugroute nach |cFFfa9602Sümpfe des Elends|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt und noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Tötet |cRXP_ENEMY_Lost Eins Jäger|r, |cRXP_ENEMY_Lost Eins Matschwirbler|r,|cRXP_ENEMY_Lost Eins Kochen|r und |cRXP_ENEMY_Lost Eins Seer|r . Plündert sie für |cRXP_LOOT_|T237379:0|t[Rostiger Käfigschlüssel]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Klickt den |cRXP_PICK_Verrosteter Käfig|r um das Buch |T133742:0|t[Anleitung zur Pflege eines dämonischen Begleiters für Anfänger] zu erhalten
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>Klickt das |cRXP_PICK_Buch|r um |T133738:0|t[Blutige Zauberei] zu erhalten
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Reist nach |cFFfa9602Verwüstete Lande|r
    .fly Blasted Lands >>Erlernt die Flugroute nach |cFFfa9602Verwüstete Lande|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt und noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Klickt das |cRXP_PICK_Buch|r um |T133736:0|t[Beschwörerkodex] zu erhalten
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach |cFFfa9602Schlingendorntal|r
    .fly Stranglethorn Vale >>Erlernt die Flugroute nach |cFFfa9602Schlingendorntal|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Klickt |cRXP_PICK_Forschung Notizen|r auf der Bank, um das Buch |T237162:0|t[Basilisken: Muss man Angst vor der Versteinerung haben?] zu erhalten
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Reist nach |cFFfa9602Sengende Schlucht|r
    .fly Searing Gorge >>Erlernt die Flugroute nach |cFFfa9602Sengende Schlucht|r |cRXP_WARN_falls ihr sie bereits freigeschalten habt.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Klickt auf das |cRXP_PICK_Buch|r um |T133743:0|t[Steinwerkentwürfe] zu erhalten
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Reist nach |cFFfa9602Sengende Schlucht|r
    .fly Searing Gorge >>Erlernt die Flugroute nach |cFFfa9602Sengende Schlucht|r |cRXP_WARN_falls ihr sie bereits freigeschalten habt.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Klickt auf das |cRXP_PICK_Buch|r um |T133743:0|t[Steinwerkentwürfe] zu erhalten
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>Reisen |cFFfa9602to Eisenschmiede.|r
    .cast 3562 >>Benutzt [Teleporter Eisenschmiede] |cRXP_WARN_Falls ihr|r |T134419:0|t[Rune der Teleportation] habt
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >> |cRXP_WARN_"Es wird dringend empfohlen zu reparieren, da wir Todes-Skips nutzen werden.|r
    >>|cFFFF0000Falls ihr keine Todesfallen verwenden möchtet, überspringt diesen Schritt manuell.|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>Klickt das |cRXP_PICK_Bibliotheks-Buch|r |cFFfa9602auf dem Tisch in Eisenschmiede, Halle der Forscher|r um |T133744:0|t[Archmage Antonidas the Unabridged Autobiography] zu erhalten
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>Reist nach |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Erlernt die Flugroute nach |cFFfa9602Loch Modan|r |cRXP_WARN_falls ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>Klickt den |cRXP_PICK_Gnomischer Foliant|r |cFFfa9602auf dem Tisch in der Gasthalle von Loch Modan|r um |T133744:0|t[Rumi of Gnomeregan the Gesammelt Works.] zu erhalten
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>Reist nach |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Erlernt die Flugroute nach |cFFfa9602Loch Modan|r |cRXP_WARN_falls ihr sie habt.|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>Klickt die |cRXP_PICK_Rolle|r in der |cFFfa9602Höhle der Elite-Oger in Loch Modan|r um |T134938:0|t[Runen of the Sorcerer Kings.] zu erhalten
    >>|cRXP_WARN_Es wird empfohlen, zum Ende der Höhle zu laufen und zu sterben. Außerdem könntet ihr erwägen, euch einer Gruppe anzuschließen.|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>Sterbt und respawnt beim |cFF00FF25Geistheiler|r |cRXP_WARN_Zusätzlich könnt ihr Todes-Skips nach Wahl überspringen, wenn ihr Reparaturkosten sparen wollt!|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>Reist nach |cFFfa9602Ödland|r
    .fly >> Benutzt die Flugroute nach |cFFfa9602Ödland|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>Klickt auf |T134937:0|t[Mumien: Ein Ratgeber zu unappetitlichen Untoten]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>Fliegt nach |cFFfa9602Menethil Harbor|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>Klickt |cRXP_PICK_Rolle|r |cFFfa9602in der Vase in Sumpfland|r um |T237450:0|t[Goaz' Schriftrollen.] zu erhalten.
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >> |cRXP_WARN_Repariert eure Ausrüstung, da wir Todesfallen nutzen werden.|r
    >>|cFFFF0000Falls ihr keine Todesfallen verwenden möchtet, überspringt diesen Schritt manuell.|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>Reist mit dem Boot nach |cFFfa9602Dunkelküste|r
    .fly Menethil Harbor >>Fliegt nach |cFFfa9602Hafen von Menethil|r |cRXP_WARN_falls ihr nicht bereits dort seid.|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>Ertrinkt im Wasser und respawnt dann beim |cFF00FF25Geistheiler|r |cRXP_WARN_Zusätzlich könnt ihr Todes-Skips nach Wahl überspringen, wenn ihr Reparaturkosten sparen wollt!|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Klickt |cRXP_PICK_Rolle|r in |cFFfa9602Dunkelküste|r um |T237447:0|t[Narthalas Almanac vol 74.] zu erhalten.
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>Sterbt absichtlich und werdet beim |cFF00FF25Geistheiler|r wieder belebt.
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>Reist nach |cFFfa9602Azshara|r
    .fly Ashenvale >>Fliegt nach |cFFfa9602Ashenvale|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>Klickt |cRXP_PICK_Buch|r um |T133740:0|t[Alltägliche Etikette.] zu erhalten.
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>Reist nach |cFFfa9602Steinkrallengebirge|r |cRXP_WARN_zu Fuß, falls keine Flugroute freigeschaltet ist|r
    .fly Stonetalon Mountains >>Fliegt nach |cFFfa9602Steinkrallengebirge|r |cRXP_WARN_falls ihr die Flugroute freigeschaltet habt.|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Klickt die |cRXP_PICK_Rolle|r |cFFfa9602im Zelt auf einem Fass in Steinkrallengebirge|r um |T133209:0|t[Zorn des Landes] zu erhalten
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
    .fly Desolace >>Erlernt die Flugroute nach |cFFfa9602Desolace|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Klickt auf die Rolle|cRXP_PICK_, um das Buch |T133733:0|t[Dämonen und Ihr]|r zu erhalten.
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Reist nach |cFFfa9602Das Brachland|r |cRXP_WARN_zu Fuß, wenn ihr keine Flugroute habt.|r
    .fly Ratchet >>Erlernt die Flugroute nach |cFFfa9602Ratschet|r |cRXP_WARN_falls ihr sie bereits freigeschalten habt.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Klickt |cRXP_PICK_Goblin Foliant|r |cFFfa9602in Ratschet neben|r |cRXP_FRIENDLY_Gazlowe|r um |T133744:0|t[Baxtan on Destructive Magics.] zu erhalten.
    .collect 208800,1
    .isQuestAvailable 79097
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Klickt |cRXP_PICK_Rolle|r |cFFfa9602auf dem Boden nahe beim Portal der Höhlen des Wehklagens im Brachland|r um |T135142:0|t[Geheimnisse der Träumer.] zu erhalten.
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>Sterbt absichtlich und werdet beim |cFF00FF25Geistheiler|r wieder belebt.
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>Klickt |cRXP_PICK_Manuell|r |cFFfa9602oben auf der Ölanlage im Brachland|r um |T134509:0|t[Handbuch arkanischer Systeme.] zu erhalten.
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
    .fly Dustwallow Marsh >>Erlernt die Flugroute nach |cFFfa9602Düstermarschen|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Klickt |cRXP_PICK_Durchnässtes Buch|r um |T133740:0|t[RwlRwlRwlRwl!]. zu erhalten.
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
    .fly Thousand Needles >>Erlernt die Flugroute nach |cFFfa9602Tausend Nadeln|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Klickt |cRXP_PICK_Rolle|r um das Buch |T133740:0|t[Geomantie: Der steinige Weg zur Wahrheit] im Zelt neben einem Sack zu erhalten.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Reist nach |cFFfa9602Tanaris|r
    .fly Tanaris >>Erlernt die Flugroute nach |cFFfa9602Tanaris|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Klickt |cRXP_PICK_Buch|r um |T134941:0|t[Legenden der Gezeitenweisen] zu erhalten.
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>Reisen |cFFfa9602to Eisenschmiede.|r
    .cast 3562 >>Benutzt |T135757:0|t[Teleporter Eisenschmiede] |cRXP_WARN_Falls ihr|r |T134419:0|t[Rune der Teleportation] habt
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    -- .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    -- .disablecheckbox
    .fly Arathi Highlands >> |cRXP_WARN_Fliegt nach Arathihochland, falls ihr nicht die Flugroute nach Hügellandhof Foothils freigeschaltet habt.|r
    .disablecheckbox
    .fly Wetlands >> |cRXP_WARN_Fliegt nach Sumpfland, falls ihr Arathihochland nicht freigeschaltet habt.|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>Reist nach |cFFfa9602Arathihochland|r
    .fly Arathi Highlands >>Erlernt die Flugroute nach |cFFfa9602Arathihochland|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Klickt |cRXP_PICK_Rolle|r um |T134331:0|t[A Gespinst of Lies: Debunking Myths and Legends] zu erhalten.
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>Reist nach |cFFfa9602Das Hinterland|r
    .fly The Hinterlands >>Erlernt die Flugroute nach |cFFfa9602Das Hinterland|r |cRXP_WARN_falls ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>Klickt |cRXP_PICK_Buch|r um |T134942:0|t[Giftige Reisen] zu erhalten.
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>Reist nach |cFFfa9602Alteracgebirge|r
    .fly Alterac Mountains >>Erlernt die Flugroute zum |cFFfa9602Alteracgebirge|r |cRXP_WARN_falls ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Klickt |cRXP_PICK_Manuell|r im Turm auf den Kisten an, um das Buch |T133736:0|t[Das Einmaleins der Verteidigungsmagie] zu erhalten.
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Klickt |cRXP_PICK_Book|r |cFFfa9602inside the Mühlenbern Main Schloss auf dem Bücherregal in Silberwald|r, um |T134917:0|t[Die Dalaranauswahl vol 23.] zu erhalten
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>Reist zu |cFFfa9602Stormwind.|r
    .cast 3561 >>Benutzt [Nach Sturmwind teleportieren] |cRXP_WARN_Falls ihr habt|r |T134419:0|t[Rune der Teleportation]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Sturmwind, Magierturm.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Gebt die Quest Almanach von Nar'thalas ab
    .accept 78127 >>Gebt die Quest Die Dalaranauswahl ab
    .accept 78142 >>Gebt die Quest Betörungen und Verzauberungen ab
    .accept 78143 >>Gebt die Quest Geheimnisse der Träumer ab
    .accept 78145 >>Gebt die Quest Handbuch arkanischer Systeme ab
    .accept 78146 >>Gebt die Quest Goaz' Schriftrollen ab
    .accept 78147 >>Gebt die Quest Verbrechen gegen die Anatomie ab
    .accept 78148 >>Gebt die Quest Runen der Zaubererkönige ab
    .accept 78149 >>Gebt die Quest Zorn des Landes ab
    .accept 79091 >>Gebt die Quest Erzmagier Antonidas: Die ungekürzte Autobiografie ab.
    .accept 79092 >>Gebt die Quest Forschungsaufzeichnungen von Erzmagier Theocritus ab.
    .accept 79093 >>Gebt die Quest Rumi von Gnomeregan: Die gesammelten Werke ab.
    .accept 79094 >>Gebt die Quest Die Lehren von Ta'zo ab
    .accept 79095 >>Gebt die Quest Metaphysische Fibel des Apothekers ab
    .accept 79096 >>Gebt die Quest Ataeric: Arkane Merkwürdigkeiten ab
    .accept 79097 >>Gebt Baxtan ab: Über zerstörerische Magie
    .accept 79535 >>Gebt die Quest Basilisken: Muss man Angst vor der Versteinerung haben? ab
    .accept 79947 >>Gebt die Quest Geomantie: Der steinige Weg zur Wahrheit ab
    .accept 79948 >>Gebt die Quest Das Einmaleins der Verteidigungsmagie ab
    .accept 77949 >>Gebt die Quest Ein Netz von Lügen: Mythen und Legenden widerlegt ab
    .accept 79950 >>Gebt die Quest Dämonen und Ihr ab
    .accept 79951 >>Gebt die Quest Mumien: Ein Ratgeber zu unappetitlichen Untoten ab
    .accept 79952 >>Gebt die Quest RwlRwlRwlRwl! ab
    .accept 81947 >>Gebt die Quest Blutige Zauberei ab
    .accept 81949 >>Gebt die Quest Legenden der Gezeitenweisen ab
    .accept 81951 >>Gebt die Quest Die Schwelle und das Arkane ab
    .accept 81952 >>Gebt die Quest Alltägliche Etikette ab
    .accept 81953 >>Gebt die Quest Steinwerkentwürfe ab
    .accept 81954 >>Gebt die Quest Giftige Reisen ab
    .accept 81955 >>Gebt die Quest Möglichkeiten des Metalls ab
    .accept 81956 >>Gebt die Quest Beschwörerkodex ab
    .accept 79953 >>Gebt die Quest Anleitung zur Pflege eines dämonischen Begleiters für Anfänger ab
    .accept 78150 >>Gebt die Quest Freund der Bibliothek ab
    .accept 79536 >>Gebt die Quest Großer Freund der Bibliothek ab
    .accept 82208 >>Gebt die Quest Großer Freund der Bibliothek ab
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Newton Burnside|r.
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Einzahlen die verbleibenden Bücher.|r
    .target Newton Burnside
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine/Stiefel
#subgroup Beine/Stiefel/Helm
#name Eisige Adern/Zaubermacht/Tieffrieren - 40 (Azeroth)
#title Eisige Adern & Zaubermacht & Tieffrieren

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
    .cast 3567 >>Benutzt [Nach Orgrimmar teleportieren], |cRXP_WARN_falls ihr die|r |T134419:0|t[Rune der Teleportation] habt.
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >> Kauft |T134419:0|t[Rune of Teleportations] von einem |cRXP_FRIENDLY_Reagenzien-, Arkane-Waren-, Schriftrollen- und Trank-Verkäufer|r |cRXP_WARN_Dies wird die Reisezeit stark reduzieren.|r
    >>|cRXP_WARN_Überspringt diesen Schritt manuell, falls ihr ohne auskommen wollt.|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bankier|r
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Überprüft eure Bank auf alle Bücher, die möglicherweise eingezahlt wurden.|r
    .target Karus
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >> |cRXP_WARN_Repariert eure Ausrüstung, da wir Todesfallen nutzen werden.|r
    >>|cFFFF0000Falls ihr keine Todesfallen verwenden möchtet, überspringt diesen Schritt manuell.|r
step
    .goto 1454,38.66,78.43
    >>Klickt den |cRXP_PICK_riesigen Stein|r |cFFfa9602an der Wand in Orgrimmar|r, um |T134938:0|t[Die Lehren von Ta'zo.] zu erhalten.
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>Reist nach |cFFfa9602The Barrens|r |cRXP_WARN_zu Fuß, falls ihr keine Flugrouten habt.|r
    .fly Ratchet >>Erlernt die Flugroute nach |cFFfa9602Ratschet|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .fly Crossroads >>Erlernt die Flugroute nach |cFFfa9602Kreuzweg|r |cRXP_WARN_wenn ihr die nach Ratschet noch nicht habt.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Klickt |cRXP_PICK_Goblin Foliant|r |cFFfa9602in Ratschet neben|r |cRXP_FRIENDLY_Gazlowe|r um |T133744:0|t[Baxtan on Destructive Magics.] zu erhalten.
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>Erlernt die Flugroute zum |cRXP_WARN_Kreuzweg|r, falls ihr sie freigeschaltet habt, |cRXP_WARN_andernfalls geht zu Fuß.|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Klickt |cRXP_PICK_Rolle|r |cFFfa9602auf dem Boden nahe beim Portal der Höhlen des Wehklagens im Brachland|r um |T135142:0|t[Geheimnisse der Träumer.] zu erhalten.
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Sterbt absichtlich und werdet beim |cFF00FF25Geistheiler|r wieder belebt.
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>Reist nach |cFFfa9602The Barrens|r
    .fly Crossroads >>Erlernt die Flugroute nach |cRXP_WARN_Kreuzweg|r, wenn ihr sie freigeschaltet habt, |cRXP_WARN_ansonsten geht zu Fuß.|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>Klickt |cRXP_PICK_Manuell|r |cFFfa9602oben auf der Ölanlage im Brachland|r um |T134509:0|t[Handbuch arkanischer Systeme.] zu erhalten.
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
    .fly Desolace >>Erlernt die Flugroute nach |cFFfa9602Desolace|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Klickt auf die Rolle|cRXP_PICK_, um das Buch |T133733:0|t[Dämonen und Ihr]|r zu erhalten.
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Reist nach |cFFfa9602Das Brachland|r |cRXP_WARN_zu Fuß, wenn ihr keine Flugroute habt.|r
    .fly Ratchet >>Erlernt die Flugroute nach |cFFfa9602Ratschet|r |cRXP_WARN_falls ihr sie bereits freigeschalten habt.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>Reist zu Fuß nach |cFFfa9602Steinkrallengebirge|r, wenn ihr im |cFFfa9602Brachland|r seid.
    .fly Stonetalon Mountains >>Erlernt die Flugroute ab |cFFfa9602Orgrimmar|r, wenn ihr sie freigeschaltet habt.
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Klickt |cRXP_PICK_Rolle|r |cFFfa9602in Stonetalon Mountain|r um |T133209:0|t[Zorn des Landes] zu erhalten.
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>Reist nach |cFFfa9602Azshara|r
    .fly Ashenvale >>Fliegt nach |cFFfa9602Ashenvale|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>Klickt |cRXP_PICK_Buch|r um |T133740:0|t[Alltägliche Etikette.] zu erhalten.
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>Reist nach |cFFfa9602Dunkelküste|r zu Fuß |cRXP_WARN_falls ihr keine Flugroute habt.|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Klickt |cRXP_PICK_Rolle|r in |cFFfa9602Dunkelküste|r um |T237447:0|t[Narthalas Almanac vol 74.] zu erhalten.
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
    .fly Dustwallow Marsh >>Erlernt die Flugroute nach |cFFfa9602Düstermarschen|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Klickt |cRXP_PICK_Durchnässtes Buch|r um |T133740:0|t[RwlRwlRwlRwl!]. zu erhalten.
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
    .fly Thousand Needles >>Erlernt die Flugroute nach |cFFfa9602Tausend Nadeln|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Klickt |cRXP_PICK_Rolle|r um das Buch |T133740:0|t[Geomantie: Der steinige Weg zur Wahrheit] im Zelt neben einem Sack zu erhalten.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Reist nach |cFFfa9602Tanaris|r
    .fly Tanaris >>Erlernt die Flugroute nach |cFFfa9602Tanaris|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Klickt |cRXP_PICK_Buch|r um |T134941:0|t[Legenden der Gezeitenweisen] zu erhalten.
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>Reist nach |cFFfa9602Unterstadt|r
    .cast 3563 >>Benutzt [Teleporter Unterstadt] |cRXP_WARN_wenn ihr|r |T134419:0|t[Rune der Teleportation] habt.
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >> |cRXP_WARN_Repariert eure Ausrüstung, da wir Todesfallen nutzen werden.|r
    >>|cFFFF0000Falls ihr keine Todesfallen verwenden möchtet, überspringt diesen Schritt manuell.|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>Klickt |cRXP_PICK_The Apothecary's Society Primer|r |cFFfa9602in Tirisfal, Brill|r um |T133737:0|t[Metaphysische Fibel des Apothekers] zu erhalten.
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>Reist zu Fuß nach |cFFfa9602Silberwald|r, |cRXP_WARN_falls ihr in|r |cFFfa9602Tirisfal|r seid.
    .fly Silverpine Forest >>Erlernt die Flugroute zu |cFFfa9602Silberwald|r |cRXP_WARN_falls ihr in|r |cFFfa9602Unterstadt seid.|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>Klickt |cRXP_PICK_Arkane Geheimnisse|r |cFFfa9602in Silberwald|r um |T133744:0|t[Ataeric: Arkane Merkwürdigkeiten] zu erhalten.
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>Reist nach |cFFfa9602Silberwald.|r
    .fly Silverpine Forest >>Erlernt die Flugroute nach |cFFfa9602Silberwald|r |cRXP_WARN_wenn ihr in|r |cFFfa9602Unterstadt|r seid.
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Klickt |cRXP_PICK_Book|r |cFFfa9602inside the Mühlenbern Main Schloss in Silberwald|r, um |T134917:0|t[Die Dalaranauswahl vol 23.] zu erhalten
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>Reist nach |cFFfa9602Alteracgebirge|r
    .fly Alterac Mountains >>Erlernt die Flugroute zum |cFFfa9602Alteracgebirge|r |cRXP_WARN_falls ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Klickt |cRXP_PICK_Manuell|r im Turm auf den Kisten an, um das Buch |T133736:0|t[Das Einmaleins der Verteidigungsmagie] zu erhalten.
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>Reist nach |cFFfa9602Das Hinterland|r
    .fly Hinterlands >>Erlernt die Flugroute nach |cFFfa9602Hinterland|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>Klickt |cRXP_PICK_Buch|r um |T134942:0|t[Giftige Reisen] zu erhalten.
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>Reist nach |cFFfa9602Arathihochland|r
    .fly Arathi Highlands >>Erlernt die Flugroute nach |cFFfa9602Arathihochland|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Klickt |cRXP_PICK_Rolle|r um |T134331:0|t[A Gespinst of Lies: Debunking Myths and Legends] zu erhalten.
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>Reist nach |cFFfa9602Ödland|r
    .fly >> Benutzt die Flugroute nach |cFFfa9602Ödland|r |cRXP_WARN_wenn ihr sie freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>Klickt auf |T134937:0|t[Mumien: Ein Ratgeber zu unappetitlichen Untoten]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>Klickt |cRXP_PICK_Rolle|r |cFFfa9602in der Vase in Sumpfland|r um |T237450:0|t[Goaz' Schriftrollen.] zu erhalten.
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Reist nach |cFFfa9602Westfall|r |cRXP_WARN_mit einer Flugroute.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Klickt das |cRXP_PICK_Zauberbuch|r, das sich |cFFfa9602auf dem Alchemieschrank in einem kleinen Haus in Mondniedergang, Westfall|r befindet, um |T133733:0|t[Betörungen und Verzauberungen.] zu erhalten.
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Reist nach |cFFfa9602Dämmerwald|r
    .fly Westfall >>Erlernt die Flugroute zum |cFFfa9602Westfall|r, |cRXP_WARN_falls ihr sie freigeschaltet habt und ihr noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Klickt |cRXP_PICK_Buch|r |cFFfa9602in den Katakomben des Morgenwaldes auf dem Alchemie-Tisch in Dämmerwald|r an, um |T133738:0|t[Verbrechen gegen die Anatomie] zu erhalten.
    >>|cRXP_WARN_Lauft zum Ende der Katakomben und sterbt. Erwägt, eine Gruppe zu bilden.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Reist in die |cFFfa9602Sümpfe des Elends|r
    .fly Swamp of Sorrows >>Erlernt die Flugroute nach |cFFfa9602Sümpfe des Elends|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt und noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Tötet |cRXP_ENEMY_Lost Eins Jäger|r, |cRXP_ENEMY_Lost Eins Matschwirbler|r,|cRXP_ENEMY_Lost Eins Kochen|r und |cRXP_ENEMY_Lost Eins Seer|r . Plündert sie für |cRXP_LOOT_|T237379:0|t[Rostiger Käfigschlüssel]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Klickt den |cRXP_PICK_Verrosteter Käfig|r um das Buch |T133742:0|t[Anleitung zur Pflege eines dämonischen Begleiters für Anfänger] zu erhalten
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>Reist in die |cFFfa9602Sümpfe des Elends|r
    .fly Swamp of Sorrows >>Erlernt die Flugroute nach |cFFfa9602Sümpfe des Elends|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt und noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>Klickt das |cRXP_PICK_Buch|r um |T133738:0|t[Blutige Zauberei] zu erhalten
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Reist nach |cFFfa9602Verwüstete Lande|r
    .fly Blasted Lands >>Erlernt die Flugroute nach |cFFfa9602Verwüstete Lande|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt und noch nicht dort seid.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Klickt das |cRXP_PICK_Buch|r um |T133736:0|t[Beschwörerkodex] zu erhalten
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Reist nach |cFFfa9602Schlingendorntal|r
    .fly Stranglethorn Vale >>Erlernt die Flugroute nach |cFFfa9602Schlingendorntal|r |cRXP_WARN_falls ihr sie bereits freigeschaltet habt.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Klickt auf die |cRXP_PICK_Forschungsnotizen|r auf der Bank, um das Buch |T237162:0|t[Basilisken: Muss man Angst vor der Versteinerung haben?] zu erhalten.
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Reist nach |cFFfa9602Sengende Schlucht|r
    .fly Searing Gorge >>Erlernt die Flugroute nach |cFFfa9602Sengende Schlucht|r |cRXP_WARN_falls ihr sie bereits freigeschalten habt.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Klickt auf das |cRXP_PICK_Buch|r um |T133743:0|t[Steinwerkentwürfe] zu erhalten
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Reist nach |cFFfa9602Sengende Schlucht|r
    .fly Searing Gorge >>Erlernt die Flugroute nach |cFFfa9602Sengende Schlucht|r |cRXP_WARN_falls ihr sie bereits freigeschalten habt.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Klickt auf das |cRXP_PICK_Buch|r um |T133743:0|t[Steinwerkentwürfe] zu erhalten
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>Reist nach |cFFfa9602Unterstadt|r
    .cast 3563 >>Benutzt |T135766:0|t[Teleporter Unterstadt] |cRXP_WARN_falls ihr|r |T134419:0|t[Rune der Teleportation] habt.
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Unterstadt, magischer Schaden Quarter.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Gebt die Quest Almanach von Nar'thalas ab
    .accept 78127 >>Gebt die Quest Die Dalaranauswahl ab
    .accept 78142 >>Gebt die Quest Betörungen und Verzauberungen ab
    .accept 78143 >>Gebt die Quest Geheimnisse der Träumer ab
    .accept 78145 >>Gebt die Quest Handbuch arkanischer Systeme ab
    .accept 78146 >>Gebt die Quest Goaz' Schriftrollen ab
    .accept 78147 >>Gebt die Quest Verbrechen gegen die Anatomie ab
    .accept 78148 >>Gebt die Quest Runen der Zaubererkönige ab
    .accept 78149 >>Gebt die Quest Zorn des Landes ab
    .accept 79094 >>Gebt die Quest Die Lehren von Ta'zo ab
    .accept 79095 >>Gebt die Quest Metaphysische Fibel des Apothekers ab
    .accept 79096 >>Gebt die Quest Ataeric: Arkane Merkwürdigkeiten ab
    .accept 79097 >>Gebt Baxtan ab: Über zerstörerische Magie
    .accept 79535 >>Gebt die Quest Basilisken: Muss man Angst vor der Versteinerung haben? ab
    .accept 79947 >>Gebt die Quest Geomantie: Der steinige Weg zur Wahrheit ab
    .accept 79948 >>Gebt die Quest Das Einmaleins der Verteidigungsmagie ab
    .accept 77949 >>Gebt die Quest Ein Netz von Lügen: Mythen und Legenden widerlegt ab
    .accept 79950 >>Gebt die Quest Dämonen und Ihr ab
    .accept 79951 >>Gebt die Quest Mumien: Ein Ratgeber zu unappetitlichen Untoten ab
    .accept 79952 >>Gebt die Quest RwlRwlRwlRwl! ab
    .accept 81947 >>Gebt die Quest Blutige Zauberei ab
    .accept 81949 >>Gebt die Quest Legenden der Gezeitenweisen ab
    .accept 81951 >>Gebt die Quest Die Schwelle und das Arkane ab
    .accept 81952 >>Gebt die Quest Alltägliche Etikette ab
    .accept 81953 >>Gebt die Quest Steinwerkentwürfe ab
    .accept 81954 >>Gebt die Quest Giftige Reisen ab
    .accept 81955 >>Gebt die Quest Möglichkeiten des Metalls ab
    .accept 81956 >>Gebt die Quest Beschwörerkodex ab
    .accept 79953 >>Gebt die Quest Anleitung zur Pflege eines dämonischen Begleiters für Anfänger ab
    .accept 78150 >>Gebt die Quest Freund der Bibliothek ab
    .accept 79536 >>Gebt die Quest Großer Freund der Bibliothek ab
    .accept 82208 >>Gebt die Quest Großer Freund der Bibliothek ab
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Bankier|r
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Zahlt die verbleibenden Bücher ein.|r
    .target Karus
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Lebende Flamme - 6 (Wald von Elwynn)
#title Lebende Flamme

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4,56.6,-1
    >>Kauft ein oder mehrere |T135933:0|t[Verständnis Bezauberung] beim |cRXP_FRIENDLY_Reagenzhändler|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>Reist nach |cFFfa9602Wald von Elwynn.|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Tötet den |cRXP_ENEMY_Kobold Geomant|r und plündert sie für |cRXP_LOOT_|T134939:0|t[Zaubernotizen: DEELFANE LMEBM]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401768 >>|cRXP_WARN_Benutzt|r|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r] |cRXP_WARN_um|r |T135820:0|t[Lebende Flamme] zu erlernen
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Lebende Flamme - 7 (Dun Morogh)
#title Lebende Flamme

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Kauft ein oder mehrere |T135933:0|t[Verständnis Bezauberung] beim |cRXP_FRIENDLY_Reagenzhändler|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>Reist nach |cFFfa9602Dun Morogh.|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>Tötet den |cRXP_ENEMY_Schattenzauberer der Frostmähnen|r und den |cRXP_ENEMY_Seher der Frostmähnen|r für |cRXP_LOOT_|T134939:0|t[Zaubernotizen: DEELFANE LMEBM]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401768 >>|cRXP_WARN_Benutzt|r|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r] |cRXP_WARN_um|r |T135820:0|t[Lebende Flamme] zu erlernen
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Lebende Flamme - 6 (Durotar)
#title Lebende Flamme

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Kauft ein oder mehrere |T135933:0|t[Verständnis Bezauberung] beim |cRXP_FRIENDLY_Reagenzhändler|r
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>Reist nach |cFFfa9602Durotar|r
step
    .train 401768,1
    >>Tötet |cRXP_ENEMY_Burning Blade Orcs|r in der Staubwindhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r in der Knochenhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401768 >>|cRXP_WARN_Benutzt|r|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r] |cRXP_WARN_um|r |T135820:0|t[Lebende Flamme] zu erlernen
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Lebende Flamme - 6 (Tirisfal)
#title Lebende Flamme

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Kauft ein oder mehrere |T135933:0|t[Verständnis Bezauberung] beim |cRXP_FRIENDLY_Reagenzhändler|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Reist nach |cFFfa9602Tirisfal|r
step
    .train 401768,1
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
    >>Tötet |cRXP_ENEMY_Scarlet Humans|r. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401768 >>|cRXP_WARN_Benutzt|r|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r] |cRXP_WARN_um|r |T135820:0|t[Lebende Flamme] zu erlernen
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Arkanschlag - 18 (Eschental)
#title Arkanschlag

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Kauft ein oder mehrere |T135933:0|t[Verständnis Bezauberung] beim |cRXP_FRIENDLY_Reagenzhändler|r
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Kauft ein oder mehrere |T135933:0|t[Verständnis Bezauberung] beim |cRXP_FRIENDLY_Reagenzhändler|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>Reist nach |cFFfa9602Eschental|r
step
    .aura 430139,1 >>|cRXP_WARN_Wirkt|r |T136116:0|t[Arkane Explosion] |cRXP_WARN_neben dem|r |cRXP_PICK_Violett Kristall|r |cRXP_WARN_um die|r |T135734:0|t[Arkane Aufladung] |cRXP_WARN_Stärkungszauber|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_Benutzt|r |T136116:0|t[Arkane Explosion] |cRXP_WARN_neben dem|r |cRXP_PICK_Violett Kristall|r |cRXP_WARN_um einen weiteren Stack der|r |T135734:0|t[Arkane Aufladung] |cRXP_WARN_Stärkungszauber|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_Wirkt|r |T136116:0|t[Arkane Explosion] |cRXP_WARN_neben dem|r |cRXP_PICK_Violett Kristall|r |cRXP_WARN_um einen weiteren Stack der|r |T135734:0|t[Arkane Aufladung] |cRXP_WARN_Stärkungszauber|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401757 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notizen: Arkanschlag|r] |cRXP_WARN_um zu erlernen|r |T135820:0|t[Arkanschlag]
    .use 211691
step
    #optional
    .destroy 211777 >> Zerstört das |T133737:0|t[Naga-Manuskript]. Ihr benötigt es nicht mehr.
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Lebende Bombee - 11 (Loch Modan)
#title Lebende Bombe

<< Alliance Mage SoD


step
    +|cRXP_WARN_Ihr solltet mindestens Stufe 11 sein, um|r |T236220:0|t[Lebende Bombe] |cRXP_WARN_in Loch Modan allein|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Lauf nach Ironforge
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Betretet |cRXP_FRIENDLY_Ginny Longberry|r's house
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    >>|cRXP_BUY_Kauft ein oder mehrere|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_bei ihr|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Reist nach Loch Modan
    .train 415936,1
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Tötet den |cRXP_ENEMY_Seher der Splittersteintroggs|r und plündert sie für die |cRXP_LOOT_|T134939:0|t[Genagte Zaubernotizen]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Zerknaute Zaubernoten|r] zum Erlernen von |T236220:0|t[Lebende Bombe]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Lebende Bombee - 18 (Westfall)
#title Lebende Bombe

<< Alliance Mage SoD


step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Kauft ein oder mehr |T135933:0|t[Verständnis Bezauberung] von einem |cRXP_FRIENDLY_Reagent Verkäufer|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>Reist nach |cFFfa9602Westfall|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Tötet den |cRXP_ENEMY_Erntebehüter|r für die |cRXP_LOOT_|T132996:0|t[Spare Schnitter Parts]|r
    .train 401417,1
    .collect 209056,1
    .mob Harvest Golem
    .mob Harvest Repair
    .mob Harvest Watcher
    .mob Rusty Harvest Golem
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Tötet die |cRXP_ENEMY_Staubteufel|r für den |cRXP_LOOT_|T132842:0|t[Elementarkern]|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>Benutzt |T132996:0|t[Spare Schnitter Parts]|r| um |T133000:0|t[Prototyp Engine] zu erstellen
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>Findet einen |cRXP_FRIENDLY_Ernteschnitterprototyp|r und benutzt das |T133000:0|t[Prototyp Engine] auf ihm. Fahrt fort und tötet den |cRXP_ENEMY_Ernteschnitterprototyp.|r
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Zerknaute Zaubernoten|r] zum Erlernen von |T236220:0|t[Lebende Bombe]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Lebende Bombee - 17 (Silberwald)
#title Lebende Bombe

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>Reist nach |cFFfa9602Silberwald|r
step
    .train 415936,1
    >>Tötet |cRXP_ENEMY_Rot Hides|r |cFFfa9602auf Insel Fenris.|r Sammelt Beute für |T134173:0|t[Ein sprechender Kopf]. |cRXP_WARN_Zwickt es in von Euch Taschen.|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Akzeptiert die Quest In Stücken begraben
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Klickt |cRXP_PICK_Hastig ausgehobenes Grab|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Gebt die Quest In Stücken begraben ab
    .accept 461 >>Akzeptiert die Quest Die versteckte Nische
    .target Shallow Grave
step
    .train 415936,1
    >>Klickt |cRXP_PICK_Staubiges Regal|r |cRXP_WARN_im Schloss im oberen linken Turm (geht nach links nach der ersten Treppe)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Gebt die Quest Die versteckte Nische ab
    .accept 491 >>Akzeptiert die Quest Zauberstab an Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Reist nach |cFFfa9602Unterstadt|r (falls ihr die Unterstadt-Flugroute habt, könnt ihr zum Grabmal sterben und von dort ausfliegen)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bethor Iceshard|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Gebt die Quest Zauberstab an Bethor ab
    .accept 78277 >>Akzeptiert die Quest Ein Zeichen der Dankbarkeit
    .turnin 78277 >>Gebt die Quest Ein Zeichen der Dankbarkeit ab
    .train 415936 >>|cRXP_WARN_Ihr werdet die Rune automatisch trainieren, indem ihr die Quest abgebt|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Lebende Bombe - 20 (Das Brachland)
#title Lebende Bombe

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_Ihr müsst trainieren|r |T135736:0|t[Blinzeln] |cRXP_WARN_um zu erwerben|r |T236220:0|t[Lebende Bombe] |cRXP_WARN_Rune|r
step
    #optional
    .train 415936,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Kauft ein oder mehr|r |T135933:0|t[Verständnis Bezauberung] |cRXP_BUY_von einem|r |cRXP_FRIENDLY_Reagenz-Verkäufer|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>Reist nach |cFFfa9602The Barrens|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_Blinzelt gegen|r |cRXP_PICK_Etched Tranchieren|r |cRXP_WARN_an der Wand, um den|r |T236168:0|t[Pfad ohne Schritte] |cRXP_WARN_Stärkungszauber zu erhalten|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_Wirkt|r |T135736:0|t[Blinzeln] |cRXP_WARN_der Reihe nach auf die grünen Kreise. Blinzelt am Ende gegen|r |cRXP_PICK_Etched Tranchieren|r |cRXP_WARN_zum Trainieren von|r |T236220:0|t[Lebende Bombe]
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#title Zauberfrostblitz/Frostfeuerblitz
#name Zauberfrostblitz/Frostfeuerblitz - 37 (Schlingendorntal)

step << Alliance
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Kauft ein oder mehr|r |T135933:0|t[Verständnis Bezauberung] |cRXP_BUY_von einem|r |cRXP_FRIENDLY_Reagenz-Verkäufer|r
    .collect 211779,1
step << Horde
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Kauft ein oder mehr|r |T135933:0|t[Verständnis Bezauberung] |cRXP_BUY_von einem|r |cRXP_FRIENDLY_Reagent Verkäufer|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>Reist nach |cFFfa9602Schlingendorntal|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>Tötet |cRXP_ENEMY_Skullsplitter Mystics|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r und |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
step << Alliance
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Kauft ein oder mehr|r |T135933:0|t[Verständnis Bezauberung] |cRXP_BUY_von einem |cRXP_FRIENDLY_Reagent Verkäufer|r um die Rune zu entziffern|r
    .collect 211779,1
step << Horde
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Kauft ein oder mehr|r |T135933:0|t[Verständnis Bezauberung] |cRXP_BUY_von einem |cRXP_FRIENDLY_Reagenz-Verkäufer|r um die Rune zu entziffern|r
    .collect 211779,1
step
    .train 415948 >> |cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_LOOT_Zaubernotizen: BLAUBERZORFSTITZ|r] |cRXP_WARN_um zu trainieren|r |T135780:0|t[Zauberfrostblitz]
    .train 401762 >> |cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_LOOT_Zaubernotizen: TORFFRISTZBEULE|r] |cRXP_WARN_um zu trainieren|r |T236217:0|t[Frostfeuerblitz]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Kampfeshitze - 32 (Alteracgebirge)
#title Kampfeshitze

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >> |cRXP_WARN_Ihr müsst haben|r |T135826:0|t[Flammenstoß] |cRXP_WARN_trainiert, um die|r |T236218:0|t[Kampfeshitze] |cRXP_WARN_Rune|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >> Reist zum Alteracgebirge
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_Wirkt|r |T135826:0|t[Flammenstoß] |cRXP_WARN_auf die zwei Blasebälge am Schmiedegebäude in Strahnbrad. Wenn einer der Blasebälge rot und feurig leuchtet, wirkt|r |T135826:0|t[Flammenstoß] |cRXP_WARN_erneut auf den zweiten Blasebalg um ihn zu entzünden. Dies beschwört den |cRXP_ENEMY_Uralt Feuerelementar|r auf|r
    >>Tötet die |cRXP_ENEMY_Ancient Feuerelementar|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Spell Notes: Kampfeshitze|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >> |cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_LOOT_Zaubernotizen: Kampfeshitze|r] |cRXP_WARN_zum Trainieren|r |T236218:0|t[Kampfeshitze]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Kampfeshitze - 37 (Arathihochland)
#title Kampfeshitze

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >> Reist nach Arathihochland
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Tötet |cRXP_ENEMY_Burning Exiles|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Spell Notes: Kampfeshitze|r]
    >>|cRXP_WARN_Hinweis: Dies hat einem Bericht zufolge eine relativ niedrige Drop-Rate. Ihr könntet es stattdessen von Alteracgebirge erhalten.|r
    .collect 213113,1
    .mob Burning Exile
step
    .train 401749 >> |cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_LOOT_Zaubernotizen: Kampfeshitze|r] |cRXP_WARN_zum Trainieren|r |T236218:0|t[Kampfeshitze]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Chronostatische Bewahrung - 30 (Tausend Nadeln)
#title Chronostatische Bewahrung

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_Bringt mindestens einen anderen |cFF69CCF0Magier|r Freund für die folgenden Schritte! Dieser nächste Teil kann nicht allein abgeschlossen werden!|r
step
    .train 425189,1
    .zone Thousand Needles >>Laufe nach Tausend Nadeln
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>Tötet |cRXP_ENEMY_Galak Marauders|r, |cRXP_ENEMY_Galak Maulers|r und |cRXP_ENEMY_Galak Stormers|r. Plündert sie für |cRXP_LOOT_Cougar Käfigschlüssel|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +Öffnet den |cRXP_PICK_Cougar Käfig|r, um den |cRXP_ENEMY_Seared Nadeln Cougar|r freizulassen
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>Tötet die |cRXP_ENEMY_Seared Nadeln Cougar|r. Plündert sie für |T134943:0|t[|cRXP_LOOT_Partial Zauber Notes|r]
    >>|cRXP_WARN_You must only use Frostschaden spells to weaken it so it can be verletzt|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Tötet die |cRXP_ENEMY_Singed Steilhangkonsort|r. Plündert sie für |T134938:0|t[|cRXP_LOOT_Partial Zauber Notes|r]
    >>|cRXP_WARN_You must only use Frostschaden spells to weaken it so it can be verletzt|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>Tötet die |cRXP_ENEMY_Scorched Kreischende Wildfeder|r. Plündert sie für |T134937:0|t[|cRXP_LOOT_Partial Zauber Notes|r]
    >>|cRXP_WARN_Ihr müsst nur Frostschadenzauber verwenden, um es zu schwächen, damit es verletzt werden kann|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>Benutzt |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_WARN_Partial Zauber Notes|r] |cRXP_LOOT_um|r |T134939:0|t[|cRXP_WARN_Zaubernotizen: Chronostatische Bewahrung|r] |cRXP_FRIENDLY_zu erstellen|r
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>Benutzt |T134939:0|t[|cRXP_WARN_Zaubernotizen: Chronostatische Bewahrung|r]|cRXP_FRIENDLY_, um|r |T135729:0|t[Chronostatische Bewahrung] |cRXP_WARN_zu erlernen|r
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Zeitanomalie - 42 (Azeroth)


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>Reist nach Feralas
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>Tötet |cRXP_ENEMY_Zukk'ash Forces.|r Plündert sie für |T237070:0|t[Zukk'ash Resin.]
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>Reise in die Hinterlande
step
    .train 429306,1
    >>Tötet |cRXP_ENEMY_Owlbeast.|r Plündert sie für |cRXP_LOOT_|T132914:0|tPristine Owlbeast Quill.|r
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>Lauf nach Tanaris
step
    .train 429306,1
    >>Tötet |cRXP_ENEMY_Zul'Farrak Zombie|r. Plündert sie für |cRXP_LOOT_|T237132:0|tFarraki Papyrus.|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Unterstadt, magischer Schaden Quarter.|r
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Sturmwind, Magierturm.|r
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 15 (Westfall)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Lauf nach Sturmwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Reist nach Unterstadt
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step
    .train 429311,1
    #loop
    .goto Westfall,47.0,39.4,40,0
    .goto Westfall,51.0,32.6,40,0
    .goto Westfall,47.6,22.0,40,0
    .goto Westfall,46.8,12.6,40,0
    .goto Westfall,41.6,15.2,40,0
    .goto Westfall,32.4,29.2,40,0
    .goto Westfall,29.8,34.4,40,0
    .goto Westfall,31.8,39.4,40,0
    .goto Westfall,28.6,44.0,40,0
    .goto Westfall,29.0,47.8,40,0
    .goto Westfall,29.0,58.8,40,0
    .goto Westfall,31.4,65.6,40,0
    .goto Westfall,29.6,69.4,40,0
    .goto Westfall,32.2,76.0,40,0
    .goto Westfall,32.2,80.2,40,0
    .goto Westfall,34.0,82.2,40,0
    .goto Westfall,37.8,85.4,40,0
    .goto Westfall,47.6,79.6,40,0
    .goto Westfall,51.6,71.4,40,0
    .goto Westfall,47.6,67.2,40,0
    .goto Westfall,62.6,26.6,40,0
    .goto Westfall,57.0,10.6,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_zum Trainieren von|r |T135809:0|t[Qualfeuerblitz]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 35 (Desolace)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Reist nach Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Reist nach Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >> Reist nach Desolace
step
    .train 429311,1
    #loop
    .goto Desolace,71.6,18.4,40,0
    .goto Desolace,73.6,24.8,40,0
    .goto Desolace,80.4,17.0,40,0
    .goto Desolace,74.6,10.4,40,0
    .goto Desolace,54.4,19.2,40,0
    .goto Desolace,47.4,22.2,40,0
    .goto Desolace,56.0,74.8,40,0
    .goto Desolace,52.0,85.6,40,0
    .goto Desolace,49.6,74.8,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 45 (Feralas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Reist nach Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Reist nach Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >> Reist nach Feralas
step
    .train 429311,1
    #loop
    .goto Feralas,74.2,50.8,40,0
    .goto Feralas,73.2,54.4,40,0
    .goto Feralas,74.2,56.8,40,0
    .goto Feralas,76.2,56.6,40,0
    .goto Feralas,74.2,60.0,40,0
    .goto Feralas,76.6,63.6,40,0
    .goto Feralas,72.6,63.8,40,0
    .goto Feralas,70.6,62.6,40,0
    .goto Feralas,68.2,58.8,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 45 (Azshara)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Reist nach Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Reist nach Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >> Reise nach Azshara
step
    .train 429311,1
    #loop
    .goto Azshara,17.6,58.8,40,0
    .goto Azshara,16.6,51.0,40,0
    .goto Azshara,21.2,54.0,40,0
    .goto Azshara,24.8,47.8,40,0
    .goto Azshara,33.0,81.6,40,0
    .goto Azshara,30.2,79.8,40,0
    .goto Azshara,25.2,81.6,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 35 (Verwüstete Lande)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>> Lauf nach Sturmwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Reist nach Unterstadt
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >> Reist nach Verwüstete Lande
step
    .train 429311,1
    #loop
    .goto Blasted Lands,56.2,36.6,40,0
    .goto Blasted Lands,62.0,39.2,40,0
    .goto Blasted Lands,60.2,46.8,40,0
    .goto Blasted Lands,49.0,48.2,40,0
    .goto Blasted Lands,46.8,39.2,40,0
    .goto Blasted Lands,41.4,33.6,40,0
    .goto Blasted Lands,43.8,25.0,40,0
    .goto Blasted Lands,35.0,54.8,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 15 (Barrens)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Reist nach Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Reist nach Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step
    .train 429311,1
    #loop
    .goto The Barrens,60.2,36.0,40,0
    .goto The Barrens,60.8,29.0,40,0
    .goto The Barrens,59.8,27.6,40,0
    .goto The Barrens,57.6,23.6,40,0
    .goto The Barrens,42.0,14.2,40,0
    .goto The Barrens,40.0,18.4,40,0
    .goto The Barrens,44.4,50.0,40,0
    .goto The Barrens,46.4,52.6,40,0
    .goto The Barrens,47.6,49.4,40,0
    .goto The Barrens,54.4,48.6,40,0
    .goto The Barrens,58.2,49.6,40,0
    .goto The Barrens,51.8,53.4,40,0
    .goto The Barrens,48.6,83.0,40,0
    .goto The Barrens,46.2,85.6,40,0
    .goto The Barrens,43.8,83.8,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 15 (Dunkelküste)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Reist nach Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Reist nach Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >> Reist zur Dunkelküste
step
    .train 429311,1
    #loop
    .goto Darkshore,43.2,27.0,40,0
    .goto Darkshore,47.4,28.8,40,0
    .goto Darkshore,56.4,24.8,40,0
    .goto Darkshore,59.8,21.8,40,0
    .goto Darkshore,49.8,36.8,40,0
    .goto Darkshore,46.2,46.8,40,0
    .goto Darkshore,37.6,63.8,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 15 (Silberwald)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >> Lauf nach Ironforge
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Reist nach Unterstadt
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step
    .train 429311,1
    #loop
    .goto Silverpine Forest,45.6,31.8,40,0
    .goto Silverpine Forest,44.6,25.8,40,0
    .goto Silverpine Forest,38.8,23.4,40,0
    .goto Silverpine Forest,38.8,18.4,40,0
    .goto Silverpine Forest,49.8,13.4,40,0
    .goto Silverpine Forest,55.6,24.6,40,0
    .goto Silverpine Forest,50.2,56.8,40,0
    .goto Silverpine Forest,50.2,65.2,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 35 (Sümpfe des Elends)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Lauf nach Sturmwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Reist nach Unterstadt
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >> Reist zu den Sümpfen des Elends
step
    .train 429311,1
    #loop
    .goto Swamp of Sorrows,36.6,50.0,40,0
    .goto Swamp of Sorrows,27.0,49.8,40,0
    .goto Swamp of Sorrows,22.8,64.6,40,0
    .goto Swamp of Sorrows,16.6,63.6,40,0
    .goto Swamp of Sorrows,10.6,60.2,40,0
    .goto Swamp of Sorrows,12.6,29.6,40,0
    .goto Swamp of Sorrows,34.6,28.0,40,0
    .goto Swamp of Sorrows,49.8,38.6,40,0
    .goto Swamp of Sorrows,61.0,43.4,40,0
    .goto Swamp of Sorrows,60.8,27.4,40,0
    .goto Swamp of Sorrows,72.8,10.4,40,0
    .goto Swamp of Sorrows,87.6,26.0,40,0
    .goto Swamp of Sorrows,81.4,34.6,40,0
    .goto Swamp of Sorrows,91.6,56.4,40,0
    .goto Swamp of Sorrows,91.0,65.6,40,0
    .goto Swamp of Sorrows,83.8,66.4,40,0
    .goto Swamp of Sorrows,77.4,89.6,40,0
    .goto Swamp of Sorrows,77.6,90.0,40,0
    .goto Swamp of Sorrows,69.8,78.0,40,0
    .goto Swamp of Sorrows,56.8,65.6,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Bracers(Qualfeuerblitz)
#name Qualfeuerblitz - 28 (Rotkammgebirge)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Lauf nach Sturmwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Reist nach Unterstadt
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Kauft eine|r |T134945:0|t[Schriftrolle der räumlichen Heilung] |cRXP_BUY_vom Auktionshaus.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>Benutzt |cRXP_FRIENDLY_Schriftrolle der räumlichen Heilung|r auf dem |cRXP_PICK_Portal|r, um einen |cRXP_ENEMY_Fel Interloper.|r zu beschwören
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tötet |cRXP_ENEMY_Fel Interloper|r. Plündert sie für |cRXP_LOOT_|T134939:0|tSpell Notes: Qualfeuerblitz.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Qualfeuerblitz|r |cRXP_WARN_um zu trainieren|r |T135809:0|t[Qualfeuerblitz.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Überhitzen - 55 (Westliche Pestländer)
#title Überhitzen

step
    .train 401764,1
    .zone Western Plaguelands >> Lauf in die Westlichen Pestländer
step
    .train 401764,1
    #loop -- not sure which coord is tied to which itemid, update in future
    .goto Western Plaguelands,36.8,54.7,30,0
    .goto Western Plaguelands,64.2,57.7,30,0
    .goto Western Plaguelands,53.3,64.5,30,0
    .goto Western Plaguelands,45.1,51.9,30,0
    >>|cRXP_WARN_Benutzt Feuerzauber, taut die|r |cRXP_FRIENDLY_Novice Frostschaden Mages|r|cRXP_WARN_ auf. TÖTET SIE NICHT!|r
    >>|cRXP_WARN_Danach wirkt|r |T136082:0|t[Geringen Fluch aufheben] |cRXP_WARN_auf sie und sprecht mit ihnen, um ihre|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Zerrissene Zaubernotizen|r]
    >>|cRXP_WARN_Wiederholt dies für jeden |cRXP_FRIENDLY_Novice Frostmagier|r in den Westlichen Pestländern|r
    .collect 225938,1 --Felstone Field
    .collect 225939,1
    .collect 225940,1
    .collect 225941,1
    .target Novice Frost Mage
    .skipgossip
step
    .train 401764,1
    .use 225938 >> Benutzt eine der |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_WARN_Zerrissene Zaubernotizen|r] |cRXP_LOOT_, um sie zu|r |T134939:0|t[|cRXP_WARN_Zaubernotizen: Überhitzen|r] |cRXP_LOOT_zu kombinieren|r
    .use 225939
    .use 225940
    .use 225941
    .collect 225691,1
step
    .train 401764 >> Benutzt die |T134939:0|t[|cRXP_WARN_Zaubernotizen: Überhitzen|r] |cRXP_LOOT_, um|r |T135813:0|t[Überhitzen] |cRXP_WARN_zu erlernen|r
    .use 225691
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Gefrorene Kugel - 55 (Teufelswald/Winterquell)
#title Gefrorene Kugel

step
    #completewith next
    .train 440858,1
    .zone Felwood >> Lauf zum Teufelswald
step
    .train 440858,1
    .goto Felwood,63.0,9.0
    >>Tötet |cRXP_ENEMY_Deadwood Avengers|r und |cRXP_ENEMY_Deadwood Shamans|r. Plündert sie für |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Rolle|r]
    .collect 227796,1 -- Mysterious Darnassian Scroll 1/1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
step
    .train 440858,1
    >>Benutzt eine |T135933:0|t[|cRXP_WARN_Comprehension Bezauberung|r] |cRXP_LOOT_auf der|r |T237446:0|t[|cRXP_WARN_Mysterious Darnassian Rolle|r] |cRXP_LOOT_um sie in die|r |T134937:0|t[|cRXP_WARN_Entzifferte darnassische Schriftrolle|r] |cRXP_LOOT_zu entziffern|r
    .collect 227797,1 -- Deciphered Darnassian Scroll 1/1
    .use 211779
    .use 227796
step
    .train 440858,1
    .goto Felwood,61.0,12.0
    .use 227797 >>|cRXP_WARN_Benutzt die|r |T134937:0|t[|cRXP_LOOT_Entzifferte darnassische Schriftrolle|r] |cRXP_WARN_bei |cRXP_FRIENDLY_Calyx Greenglow|r und akzeptiert seine Quest|r
    >>|cRXP_FRIENDLY_Calyx Greenglow|r |cRXP_WARN_patruliert in der Umgebung herum|r
    .accept 84369 >> Akzeptiert die Quest Die Heilung des Heilers
    .unitscan Calyx Greenglow
step
    .train 440858,1
    .goto Winterspring,55.0,22.0
    >>Tötet |cRXP_ENEMY_Irontree Stompers|r. Plündert sie für |cRXP_LOOT_Unusual Fläschchen|r
    .collect 227924,1,84369,1 -- Unusual Flask 1/1
    .mob Irontree Stomper
step
    .train 440858,1
    #completewith next
    .zone Winterspring >> Reist nach Winterquell
step
    .train 440858,1
    .goto Winterspring,29.0,35.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calyx Greenglow|r
    >>|cRXP_WARN_Ihr müsst |cRXP_ENEMY_Calyx Greenglow|r töten, nachdem ihr diese Quest abgebt|r
    .turnin 84369 >> Gebt die Quest Die Heilung des Heilers ab
    .unitscan Calyx Greenglow
step
    .train 440858,1
    >>Tötet die |cRXP_ENEMY_Enraged Schatten|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Spell Notes: Gefrorene Kugel|r]
    .collect 225690,1 -- Spell Notes: Frozen Orb 1/1
    .mob Enraged Shade
step
    .train 440858 >> |cRXP_WARN_Benutzt das|r |T134939:0|t[|cRXP_LOOT_Zauber-Notizen: Gefrorene Kugel|r] |cRXP_WARN_zum Lernen|r |T135851:0|t[Gefrorene Kugel]
    .use 225690
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Arkanbeschuss - 60 (Azeroth)
#title Arkanbeschuss

<< Mage SoD

step
    .train 401722,1
    #completewith Necromancy101
    .zone Western Plaguelands >> Lauf in die Westlichen Pestländer
step
    .train 401722,1
    .goto Western Plaguelands,38.3,54.6
    >>Plündert das Buch |cRXP_LOOT_Untote Kartoffeln|r im Obergeschoss des Bauernhofs im Teufelssteinfeld
    .collect 228132,1
    .isQuestAvailable 84395
step
    .train 401722,1
    #label Necromancy101
    .goto Western Plaguelands,69.41,72.84
    >>Plündert |cRXP_LOOT_Einmaleins der Nekromantie|r in der Scholomance
    .collect 228141,1
    .isQuestAvailable 84402
step
    .train 401722,1
    #completewith UndeadMenace
    .zone Eastern Plaguelands >> Lauf in die Westlichen Pestländer
step
    .train 401722,1
    .goto Eastern Plaguelands,81.7,57.8
    >>Plündert das Buch |cRXP_LOOT_Eine Studie des Lichts|r
    .collect 228135,1
    .isQuestAvailable 84398
step
    .train 401722,1
    .goto Eastern Plaguelands,54.5,50.8
    >>Plündert das Buch |cRXP_LOOT_Der Ritter und die Dame|r
    .collect 228138,1
    .isQuestAvailable 84400
step
    .train 401722,1
    #label UndeadMenace
    .goto Eastern Plaguelands,31.250,21.000
    >>Plündert das Buch |cRXP_LOOT_Die Geißel: Untote Plage oder bloß missverstanden?|r
    .collect 228140,1
    .isQuestAvailable 84401
step
    .train 401722,1
    #completewith next
    .subzone 1445 >> Reist nach Sengende Schlucht oder Brennende Steppe und geht in Den Schwarzfels
step
    .train 401722,1
    .goto 1415,48.388,63.626
    >>|cRXP_WARN_Lasst euch hinunter fallen und geht Richtung Schwarzfelstiefen-Eingang|r
    >>Beute |cRXP_LOOT_Magma oder Lava?|r Buch auf dem Boden
    .collect 228133,1
    .isQuestAvailable 84396
step
    .train 401722,1
    #completewith next
    .zone Winterspring >> Reist nach Winterquell
step
    .train 401722,1
    .goto Winterspring,60.7,37.7
    >>Beute |cRXP_LOOT_Ka-Bumm!|r Buch auf dem Regal
    .collect 228136,1
    .isQuestAvailable 84399
step
    .train 401722,1
    #completewith next
    .zone Felwood >> Lauf zum Teufelswald
    .subzoneskip 1216
step
    .train 401722,1
    .goto Felwood,65.214,3.248
    >>|cRXP_WARN_Begebt euch zum Tunnel der Holzschlundfeste. Hinweis: Wenn ihr nicht mindestens Unfreundlich mit der Holzschlundfeste seid, werden die Furbolgs euch angreifen.|r
    >>Plündert das Buch |cRXP_LOOT_Nordkalimdor - ein umfassender Reiseführer|r auf dem Boden
    .collect 228134,1
    .isQuestAvailable 84397
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jennea Kanone|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oran Snakewrithe|r  << Horde
    .accept 84395 >> Gebt die Quest Untote Kartoffeln ab
    .accept 84402 >> Gebt die Quest Einmaleins der Nekromantie ab
    .accept 84398 >> Gebt die Quest Eine Studie des Lichts ab
    .accept 84400 >> Gebt die Quest Der Ritter und die Dame ab
    .accept 84401 >> Gebt die Quest Die Geißel: Untote Plage oder bloß missverstanden? ab
    .accept 84396 >> Gebt die Quest Magma oder Lava? ab
    .accept 84399 >> Gebt die Quest Krabumm! ab
    .accept 84397 >> Gebt die Quest Nordkalimdor - ein umfassender Reiseführer ab
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jennea Kanone|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oran Snakewrithe|r << Horde
    >>|cRXP_WARN_Wenn ihr diese Quest nicht annehmen könnt, stellt sicher, dass ihr die Runen für Eisige Adern/Zaubermacht/Tieffrieren erworben habt, da dies eine erforderliche Fortsetzung dieser Runen ist|r
    .accept 84394 >> Akzeptiert die Quest Großer Freund der Bibliothek
    .turnin 84394 >> Gebt die Quest Großer Freund der Bibliothek ab
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
]])
