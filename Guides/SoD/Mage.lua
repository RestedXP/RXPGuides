if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Ice Lance - 2 (Elwynn Forest)
#title Ice Lance
<< Human Mage SoD


step
    +|cRXP_WARN_You MUST be at least level 2 in order to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_as it is the level requirement of obtaining the|r |T133736:0|t[Comprehension Primer]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>Enter Northshire Abbey
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
    .goto Elwynn Forest,49.661,39.402,12 >>Travel toward |cRXP_FRIENDLY_Khelden Bremen|r upstairs
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside
    .accept 77620 >> Accept Spell Research
    .target Khelden Bremen
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>Exit Northshire Abbey
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
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Enter Northshire Abbey
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
    .goto Elwynn Forest,49.661,39.402,12 >>Travel toward |cRXP_FRIENDLY_Khelden Bremen|r upstairs
    .isQuestComplete 77620
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside
    .turnin 77620 >> Turn in Spell Research
    .target Khelden Bremen
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Ice Lance - 2 (Dun Morogh)
#title Ice Lance

<< Gnome Mage SoD


step
    +|cRXP_WARN_You MUST be at least level 2 in order to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_as it is the level requirement of obtaining the|r |T133736:0|t[Comprehension Primer]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >> Travel to Dun Morogh
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .accept 77667 >> Accept Spell Research
    .target Marryk Nurribit
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >> Exit Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r. Loot it for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >> Enter Anvilmar
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 77667 >> Turn in Spell Research
    .target Marryk Nurribit
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Ice Lance - 2 (Durotar)
#title Ice Lance

<< Troll Mage SoD


step
    +|cRXP_WARN_You MUST be at least level 2 in order to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_as it is the level requirement of obtaining the|r |T133736:0|t[Comprehension Primer]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >> Travel to Durotar
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Accept Spell Research
    .target Mai'ah
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>Enter the Burning Blade Covern
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>Travel toward the |cRXP_PICK_Waterlogged Stashbox|r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>Open the |cRXP_PICK_Waterlogged Stashbox|r underwater inside the cave. Loot it for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>Exit the Burning Blade Covern
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77643 >> Turn in Spell Research
    .target Mai'ah
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Ice Lance - 2 (Tirisfal)
#title Ice Lance
<< Undead Mage SoD


step
    +|cRXP_WARN_You MUST be at least level 2 in order to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_as it is the level requirement of obtaining the|r |T133736:0|t[Comprehension Primer]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >> Travel to Tirisfal Glades
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Enter Deathknell's chapel
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .accept 77671 >>Accept Spell Research
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
    >>Kill |cRXP_ENEMY_Scarlet Initiates|r. Loot them for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Enter Deathknell's chapel
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Turn in Spell Research
    .target Isabella
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Regeneration - 12 (Westfall)
#title Regeneration

<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 12 in order to acquire|r |T133815:0|t[Engrave Chest - Regeneration] |cRXP_WARN_in Westfall alone|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Travel to Stormwind City
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Enter Pestle's Apothecary
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r inside
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from her|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401767,1
step
    #completewith next
    .zone Westfall >>Travel to Westfall
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
    >>Kill |cRXP_ENEMY_Defias Pillagers|r. Loot them for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: TENGI RONEERA]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Regeneration - 13 (Loch Modan)
#title Regeneration

<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 13 in order to acquire|r |T133815:0|t[Engrave Chest - Regeneration] |cRXP_WARN_in Loch Modan alone|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Travel to Ironforge
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Enter |cRXP_FRIENDLY_Ginny Longberry|r's house
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r inside
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from her|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Travel to Loch Modan
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >> Enter the tent
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Open the |cRXP_PICK_Pile of Stolen Books|r inside. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Regeneration - 12 (The Barrens)
#title Regeneration

<< Horde Mage SoD


step
    +|cRXP_WARN_You should be at least level 12 in order to acquire|r |T133815:0|t[Engrave Chest - Regeneration] |cRXP_WARN_in The Barrens alone|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Wabang|r
    >>|cRXP_BUY_Buy a|r |T134237:0|t[Kolkar Booty Key] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_This will save you a few minutes later|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T134237:0|t[Kolkar Booty Key] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_This will save you a few minutes later|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>Travel to The Barrens
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hula'mahi|r
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from him|r
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
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for a |T134237:0|t[Kolkar Booty Key]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>Open the |cRXP_PICK_Kolkars' Booty|r on the ground. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to train|r |T132869:0|t[Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Regeneration - 12 (Silverpine Forest)
#title Regeneration
<< Horde Mage SoD


step
    +|cRXP_WARN_You should be at least level 12 in order to acquire|r |T133815:0|t[Engrave Chest - Regeneration] |cRXP_WARN_in Silverpine Forest alone|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Travel to the Undercity
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from him|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>Travel to Silverpine Forest
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
    >>Kill |cRXP_ENEMY_Dalaran Apprentices|r. Loot them for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to train|r |T132869:0|t[Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Fingers of Frost - 10 (Elwynn Forest)
#title Fingers of Frost

<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T133815:0|t[Engrave Chest - Fingers of Frost] |cRXP_WARN_in Elwynn Forest alone|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Travel to Stormwind City
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Enter Pestle's Apothecary
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r inside
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from her|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>Travel to Elwynn Forest
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
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan Hogger
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Fingers of Frost]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Fingers of Frost - 5 (Dun Morogh)
#title Fingers of Frost
<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 5 in order to acquire|r |T133815:0|t[Engrave Chest - Fingers of Frost] |cRXP_WARN_in Dun Morogh alone|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Travel to Ironforge
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Enter |cRXP_FRIENDLY_Ginny Longberry|r's house
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r inside
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from her|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>Travel to Dun Morogh
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
    >>Kill |cRXP_ENEMY_Fyodi|r. Loot him for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r
    >>|cRXP_WARN_Even though |cRXP_ENEMY_Fyodi|r shows as an elite, his health, damage, and armor values are that of a standard mob|r
    >>|cRXP_WARN_Be careful as he casts|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-80 melee damage on hit. Only castable at range)|r
    >>|cRXP_WARN_NOTE: The|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_can also drop off every rare mob in Dun Morogh, as well as |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Mangeclaw|r, and|r |cRXP_ENEMY_Old Icebeard|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r
    >>|cRXP_WARN_NOTE: The|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_can also drop off every rare mob in Dun Morogh, as well as |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Mangeclaw|r, and|r |cRXP_ENEMY_Old Icebeard|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Vagash
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Fingers of Frost]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Fingers of Frost - 8 (Tirisfal Glades)
#title Fingers of Frost
<< Horde Mage SoD


step
    +|cRXP_WARN_You should be at least level 8 in order to acquire|r |T133815:0|t[Engrave Chest - Fingers of Frost] |cRXP_WARN_in Tirisfal Glades alone|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Travel to the Undercity
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from him|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>Travel toward |cRXP_ENEMY_Gillgar|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>Kill |cRXP_ENEMY_Gillgar|r. Loot him for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Fingers of Frost]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Fingers of Frost - 8 (Durotar)
#title Fingers of Frost


step
    +|cRXP_WARN_You should be at least level 8 in order to acquire|r |T133815:0|t[Engrave Chest - Fingers of Frost] |cRXP_WARN_in Durotar alone|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >> Travel to Orgrimmar
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horthus|r inside
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from him|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Horthus
    .train 401765,1
step
    #completewith next
    .zone Durotar >>Travel to Durotar
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Zalazane
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r. Loot him for the |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fizzle Darkstorm
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Fingers of Frost]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Burnout - 6 (Dun Morogh)
#title Burnout

<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T132686:0|t[Engrave Chest - Burnout] |cRXP_WARN_in Dun Morogh with another player|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>Travel to Dun Morogh
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Look for other Mages or Warlocks near the |cRXP_ENEMY_Frozen Trogg|r or in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Trogg|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Trogg|r. Loot it for the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r |cRXP_WARN_to learn|r |T132686:0|t[Engrave Chest - Burnout]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Burnout - 6 (Elwynn Forest)
#title Burnout

<< Alliance Mage SoD

step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T132686:0|t[Engrave Chest - Burnout] |cRXP_WARN_in Elwynn Forest with another player|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>Travel to Elwynn Forest
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_Look for other Mages or Warlocks near the |cRXP_ENEMY_Frozen Murloc|r or in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Murloc|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Murloc|r. Loot it for the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r |cRXP_WARN_to learn|r |T132686:0|t[Engrave Chest - Burnout]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Burnout - 6 (Durotar)
#title Burnout

<< Horde Mage SoD

step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T132686:0|t[Engrave Chest - Burnout] |cRXP_WARN_in Durotar with another player|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>Travel to Durotar
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Look for other Mages, Warlocks, or Shamans near the |cRXP_ENEMY_Frozen Makrura|r or in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Makrura|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Makrura|r. Loot it for the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r |cRXP_WARN_to learn|r |T132686:0|t[Engrave Chest - Burnout]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Burnout - 6 (Tirisfal Glades)
#title Burnout

<< Horde Mage SoD


step
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T132686:0|t[Engrave Chest - Burnout] |cRXP_WARN_in Tirisfal Glades with another player|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_Look for other Mages or Warlocks near the |cRXP_ENEMY_Frozen Murloc|r or in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Murloc|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Murloc|r. Loot it for the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r |cRXP_WARN_to learn|r |T132686:0|t[Engrave Chest - Burnout]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Enlightenment - 8 (Elwynn Forest)
#title Enlightenment

<< Alliance Mage SoD


step
    +|cRXP_WARN_You MUST be at least level 8 in order to acquire|r |T133815:0|t[Engrave Chest - Enlightenment] |cRXP_WARN_as it is the level requirement of training|r |T136071:0|t[Polymorph]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Enlightenment]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>Travel to Elwynn Forest
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>Enter the Goldshire Inn. Go upstairs
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .train 118 >> Train |T136071:0|t[Polymorph]
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
    >>Cast |T136071:0|t[Polymorph] on the following unusual critters: |cRXP_ENEMY_Gazelles|r, |cRXP_ENEMY_Maggots|r, |cRXP_ENEMY_Parrots|r, |cRXP_ENEMY_Fire Beetles|r, |cRXP_ENEMY_Rams|r, |cRXP_ENEMY_Larvas|r, and |cRXP_ENEMY_Cats|r. Wait out the RP
    >>Open the |cRXP_PICK_Spell Notes|r on the ground. Loot it for |T134332:0|t|cRXP_LOOT_[Azora Apprentice Notes]|r
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
    >>Use the |T134332:0|t|cRXP_LOOT_[Azora Apprentice Notes]|r to create |T134332:0|t|cRXP_FRIENDLY_[Spell Notes: Enlightenment]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_Use the|r |T134332:0|t|cRXP_FRIENDLY_[Spell Notes: Enlightenment]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Enlightenment]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Enlightenment - 8 (Tirisfal Glades)
#title Enlightenment

<< Horde Mage SoD

step
    +|cRXP_WARN_You MUST be at least level 8 in order to acquire|r |T133815:0|t[Engrave Chest - Enlightenment] |cRXP_WARN_as it is the level requirement of training|r |T136071:0|t[Polymorph]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Enlightenment]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>Enter the Brill Inn. Go upstairs
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain Firesong|r
    .train 118 >> Train |T136071:0|t[Polymorph]
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
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Odd Melons|r, then wait out the RP
    >>Loot the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r on the ground
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>Use the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r to create |T134332:0|t|cRXP_FRIENDLY_[Spell Notes: Enlightenment]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_Use the|r |T134332:0|t|cRXP_FRIENDLY_[Spell Notes: Enlightenment]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Enlightenment]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune & Books Guide
<<Alliance Mage SoD
#subgroup Legs/Boots/Helm
#name Icy Veins/Spell Power/Deep Freeze - 40 (Azeroth)
#title Icy Veins & Spell Power & Deep Freeze

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >> Travel to |cFFfa9602Stormwind.|r
    .cast 3561 >>Use [Teleport Stormwind] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >> Purchase |T134419:0|t[Rune of Teleportations] from a |cRXP_FRIENDLY_Reagent, Arcane Goods, Scrolls & Potion Vendor.|r |cRXP_WARN_This will greatly reduce travel time.|r
    >>|cRXP_WARN_manually skip this step if you want to go without.|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >> |cRXP_WARN_Check your bank for any books that might have been deposited.|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>Click on the |cRXP_PICK_Library Book|r located |cFFfa9602on a shelf in Elwynn Forest|r to obtain |T133744:0|t[Archmage Theocrituss Research Journal.]
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>Travel to |cFFfa9602Westfall|r on foot if you are |cRXP_WARN_in|r |cFFfa9602Elwynn Forest.|r|r
    .fly Westfall >>Take a Flightpath to |cFFfa9602Westfall|r if you are |cRXP_WARN_ not in|r |cFFfa9602Elwynn Forest.|r|r
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
    >>Click the |cRXP_PICK_Gnomish Tome|r |cFFfa9602on the table in the Westfall Inn|r to obtain |T133744:0|t[Rumi of Gnomeregan the Collected Works.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Travel to |cFFfa9602Westfall|r |cRXP_WARN_by taking a flight path.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Click the |cRXP_PICK_Spellbook|r located |cFFfa9602on the Alchemy Cabinet in a small house in Moonbrook, Westfall|r to obtain |T133733:0|t[Bewitchments and Glamours.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Travel to |cFFfa9602Duskwood|r
    .fly Westfall >>Take a flight path to |cFFfa9602Westfall|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Click the |cRXP_PICK_Book|r |cFFfa9602inside the Dawning Wood Catacombs on the Alchemy Table in Duskwood|r to obtain |T133738:0|t[Crimes Against Anatomy.]
    >>|cRXP_WARN_It's recommended run to the end of the catacombs and die. Additionally you might want to consider grouping up.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to |cFFfa9602Swamp of Sorrows|r
    .fly Swamp of Sorrows >>Take a flight path to |cFFfa9602Swamp of Sorrows|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Kill |cRXP_ENEMY_Lost One Hunter|r, |cRXP_ENEMY_Lost One Muckdweller|r,|cRXP_ENEMY_Lost One Cook|r and |cRXP_ENEMY_Lost One Seer|r . Loot them for |cRXP_LOOT_|T237379:0|t[Rusted Cage Key]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Click on the |cRXP_PICK_Rusted Cage|r to receive the Book |T133742:0|t[A Ludite's Guide to Caring for Your Demonic Pet]
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>Click on the |cRXP_PICK_Book|r to obtain |T133738:0|t[Sanguine Sorcery]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Travel to |cFFfa9602Blasted Lands|r
    .fly Blasted Lands >>Take a flight path to |cFFfa9602Blasted Lands|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Click on the |cRXP_PICK_Book|r to obtain |T133736:0|t[Conjurer's Codex]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to |cFFfa9602Stranglethorn Vale|r
    .fly Stranglethorn Vale >>Take a flight path to |cFFfa9602Stranglethorn Vale|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Click on the |cRXP_PICK_Researchnotes|r on the bench to receive the Book |T237162:0|t[Basilisks: Should Petrification be Feared?]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Travel to |cFFfa9602Searing Gorge|r
    .fly Searing Gorge >>Take a flight path to |cFFfa9602Searing Gorge|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Click on the |cRXP_PICK_Book|r to obtain |T133743:0|t[Stonewrought Design]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Travel to |cFFfa9602Searing Gorge|r
    .fly Searing Gorge >>Take a flight path to |cFFfa9602Searing Gorge|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Click on the |cRXP_PICK_Book|r to obtain |T133743:0|t[Stonewrought Design]
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>Travel |cFFfa9602to Ironforge.|r
    .cast 3562 >>Use [Teleport Ironforge] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >> |cRXP_WARN_"It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>Click the |cRXP_PICK_Library Book|r |cFFfa9602on the table in Ironforge, Hall of Explorers|r to obtain |T133744:0|t[Archmage Antonidas the Unabridged Autobiography.]
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>Travel to |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Use a flight path to |cFFfa9602Loch Modan|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>Click the |cRXP_PICK_Gnomish Tome|r |cFFfa9602on the table in the Loch Modan Inn|r to obtain |T133744:0|t[Rumi of Gnomeregan the Collected Works.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>Travel to |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Take a flight path to |cFFfa9602Loch Modan|r |cRXP_WARN_if you have it.|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>Click the |cRXP_PICK_Scroll|r in the |cFFfa9602Elite Ogre Cave in Loch Modan|r to obtain |T134938:0|t[Runes of the Sorcerer Kings.]
    >>|cRXP_WARN_It's recommended to run to end of the cave and die. Additionally you might want to consider grouping up.|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>Travel to |cFFfa9602Badlands|r
    .fly >> Use a flight path to |cFFfa9602Badlands|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>Click on the Book |T134937:0|t[Mummies: A Guide to the Unsavory Undead]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>Fly to |cFFfa9602Menethil Harbor|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602 in the vase in Wetlands|r to obtain |T237450:0|t[Goaz Scrolls.]
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
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>Travel to |cFFfa9602Darkshore|r by taking the Boat.
    .fly Menethil Harbor >>Fly to |cFFfa9602Menethil Harbor|r |cRXP_WARN_if you are not already there.|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>Drown in the Water then respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Click the |cRXP_PICK_Scroll|r in |cFFfa9602Darkshore|r to obtain |T237447:0|t[Narthalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>Travel to |cFFfa9602Azshara|r
    .fly Ashenvale >>Fly to |cFFfa9602Ashenvale|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>Click on the |cRXP_PICK_Book|r to obtain |T133740:0|t[Everyday Etiquette.]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>Travel to |cFFfa9602Stonetalon Mountains|r |cRXP_WARN_on foot if neither flight path is unlocked|r
    .fly Stonetalon Mountains >>Fly to |cFFfa9602Stonetalon Mountains|r |cRXP_WARN_if you have the flight path unlocked.|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602in the tent, located on a barrel in Stonetalon Mountains|r to obtain |T133209:0|t[Fury of the Land.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
    .fly Desolace >>Take a flight path to |cFFfa9602Desolace|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Click on the |cRXP_PICK_Scroll|r to receive the book |T133733:0|t[Demons and You]r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r |cRXP_WARN_on foot if you have neither flight path.|r
    .fly Ratchet >>Take a flight path to |cFFfa9602Ratchet|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Click on the |cRXP_PICK_Goblin Tome|r |cFFfa9602in Ratchet next to|r |cRXP_FRIENDLY_Gazlowe|r to obtain |T133744:0|t[Baxtan on Destructive Magics.]
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
    >>Click on the |cRXP_PICK_Scroll|r located |cFFfa9602on the ground near the Wailing Caverns Portal in the Barrens|r to obtain |T135142:0|t[Secrets of the Dreamers.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>Click the |cRXP_PICK_Manual|r |cFFfa9602at the top of the Oil Rig in the Barrens|r to obtain |T134509:0|t[Arcanic Systems Manual.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
    .fly Dustwallow Marsh >>Take a flight path to |cFFfa9602Dustwallow Marsh|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Click on the |cRXP_PICK_Waterlogged Book|r to receive the book |T133740:0|t[RwlRwlRwlRwl!].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
    .fly Thousand Needles >>Take a flight path to |cFFfa9602Thousand Needles|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Click on the |cRXP_PICK_Scroll|r to receive the book|T133740:0|t[Geomancy: The Stone-Cold Truth] inside the tent next to a sack.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Travel to |cFFfa9602Tanaris|r
    .fly Tanaris >>Take a flight path to |cFFfa9602Tanaris|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Click on the |cRXP_PICK_Book|r to obtain |T134941:0|t[Legends of the Tidesages]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>Travel |cFFfa9602to Ironforge.|r
    .cast 3562 >>Use |T135757:0|t[Teleport Ironforge] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    -- .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    -- .disablecheckbox
    .fly Arathi Highlands >> |cRXP_WARN_Fly to Arathi Highlands if you don't have the Hillsbrad Foothils flight path unlocked.|r
    .disablecheckbox
    .fly Wetlands >> |cRXP_WARN_Fly to Wetlands if you don't have Arathi Highlands unlocked.|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>Travel to |cFFfa9602Arathi Highlands|r
    .fly Arathi Highlands >>Take a flight path to |cFFfa9602Arathi Highlands|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Click on the |cRXP_PICK_Scroll|r to receive the Book |T134331:0|t[A Web of Lies: Debunking Myths and Legends]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>Travel to |cFFfa9602The Hinterlands|r
    .fly The Hinterlands >>Take a flight path to |cFFfa9602The Hinterlands|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>Click on the |cRXP_PICK_Book|r to obtain |T134942:0|t[Venomous Journeys]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>Travel to |cFFfa9602Alterac Mountains|r
    .fly Alterac Mountains >>Take a flight path to |cFFfa9602Alterac Mountains|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Click on the |cRXP_PICK_Manual|r inside the tower on crates to receive the Book |T133736:0|t[Defensive Magics 101].
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Click on the |cRXP_PICK_Book|r |cFFfa9602inside the Amber Hill Main Castle on a book shelf in Silverpine Forest|r to obtain |T134917:0|t[The Dalaran Digest vol 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>Travel to |cFFfa9602Stormwind.|r
    .cast 3561 >>Use [Teleport Stormwind] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Stormwind, Mage Tower.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Turn in Nar'thalas Almanac
    .accept 78127 >>Turn in The Dalaran Digest
    .accept 78142 >>Turn in Bewitchments and Glamours
    .accept 78143 >>Turn in Secrets of the Dreamers
    .accept 78145 >>Turn in Arcanic Systems Manual
    .accept 78146 >>Turn in Goaz Scrolls
    .accept 78147 >>Turn in Crimes Against Anatomy
    .accept 78148 >>Turn in Runes of the Sorceror-Kings
    .accept 78149 >>Turn in Fury of the Land
    .accept 79091 >>Turn in Archmage Antonidas: The Unabridged Autobiography
    .accept 79092 >>Turn in Archmage Theocritus's Research Journal
    .accept 79093 >>Turn in Rumi of Gnomeregan: The Collected Works
    .accept 79094 >>Turn in The Lessons of Ta'zo
    .accept 79095 >>Turn in The Apothecary's Metaphysical Primer
    .accept 79096 >>Turn in Ataeric: On Arcane Curiosities
    .accept 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .accept 79535 >>Turn in Basilisks: Should Petrification be Feared?
    .accept 79947 >>Turn in Geomancy: The Stone-Cold Truth
    .accept 79948 >>Turn in Defensive Magics 101
    .accept 77949 >>Turn in A Web of Lies: Debunking Myths and Legends
    .accept 79950 >>Turn in Demons and You
    .accept 79951 >>Turn in Mummies: A Guide to the Unsavory Undead
    .accept 79952 >>Turn in RwlRwlRwlRwl!
    .accept 81947 >>Turn in Sanguine Sorcery
    .accept 81949 >>Turn in Legends of the Tidesages
    .accept 81951 >>Turn in The Liminal and the Arcane
    .accept 81952 >>Turn in Everyday Etiquette
    .accept 81953 >>Turn in Stonewrought Design
    .accept 81954 >>Turn in Venomous Journeys
    .accept 81955 >>Turn in A Mind of Metal
    .accept 81956 >>Turn in Conjurer's Codex
    .accept 79953 >>Turn in A Ludite's Guide to Caring for Your Demonic Pet
    .accept 78150 >>Turn in Friend of the Library
    .accept 79536 >>Turn in Greater Friend of the Library
    .accept 82208 >>Turn in Greater Friend of the Library
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r.
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Deposit the remaining Books .|r
    .target Newton Burnside
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune & Books Guide
#subgroup Legs/Boots
#subgroup Legs/Boots/Helm
#name Icy Veins/Spell Power/Deep Freeze - 40 (Azeroth)
#title Icy Veins & Spell Power & Deep Freeze

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
    .cast 3567 >>Use [Teleport Orgrimmar] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >> Purchase |T134419:0|t[Rune of Teleportations] from a |cRXP_FRIENDLY_Reagent, Arcane Goods, Scrolls & Potion Vendor.|r |cRXP_WARN_This will greatly reduce travel time.|r
    >>|cRXP_WARN_manually skip this step if you want to go without.|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Banker|r
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Check your bank for any books that may have been deposited|r
    .target Karus
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    .goto 1454,38.66,78.43
    >>Click on the |cRXP_PICK_Giant Stone|r |cFFfa9602on the wall in Orgrimmar|r to obtain |T134938:0|t[The Lessons of Ta'zo.]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r |cRXP_WARN_on foot if you have neither flight path.|r
    .fly Ratchet >>Take a flight path to |cFFfa9602Ratchet|r |cRXP_WARN_if you have it unlocked.|r
    .fly Crossroads >>Take a Flightpath to |cFFfa9602Crossroads|r |cRXP_WARN_if you don't have the Ratchet one.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Click on the |cRXP_PICK_Goblin Tome|r |cFFfa9602in Ratchet next to|r |cRXP_FRIENDLY_Gazlowe|r to obtain |T133744:0|t[Baxtan on Destructive Magics.]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>Take a flight path to the |cRXP_WARN_Crossroads|r if you have it unlocked, |cRXP_WARN_otherwise go on foot.|r
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
    >>Click on the |cRXP_PICK_Scroll|r located |cFFfa9602on the ground near the Wailing Caverns Portal in the Barrens|r to obtain |T135142:0|t[Secrets of the Dreamers.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r
    .fly Crossroads >>Take a flight path to the |cRXP_WARN_Crossroads|r if you have it unlocked, |cRXP_WARN_otherwise go on foot.|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>Click the |cRXP_PICK_Manual|r |cFFfa9602at the top of the Oil Rig in the Barrens|r to obtain |T134509:0|t[Arcanic Systems Manual.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
    .fly Desolace >>Take a flight path to |cFFfa9602Desolace|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Click on the |cRXP_PICK_Scroll|r to receive the book |T133733:0|t[Demons and You]r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r |cRXP_WARN_on foot if you have neither flight path.|r
    .fly Ratchet >>Take a flight path to |cFFfa9602Ratchet|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>Travel to |cFFfa9602Stonetalon Mountains|r on foot if you are in the |cFFfa9602Barrens.|r
    .fly Stonetalon Mountains >>Take a flight path from |cFFfa9602Orgrimmar|r if you have it unlocked.
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602in Stonetalon Mountain|r to obtain |T133209:0|t[Fury of the Land.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>Travel to |cFFfa9602Azshara|r
    .fly Ashenvale >>Fly to |cFFfa9602Ashenvale|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>Click on the |cRXP_PICK_Book|r to obtain |T133740:0|t[Everyday Etiquette.]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>Travel to |cFFfa9602Darkshore|r on foot|cRXP_WARNif you have neither flightpath. _|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Click the |cRXP_PICK_Scroll|r in |cFFfa9602Darkshore|r to obtain |T237447:0|t[Narthalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>Travel to |cFFfa9602Dustwallow Marsh|r
    .fly Dustwallow Marsh >>Take a flight path to |cFFfa9602Dustwallow Marsh|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Click on the |cRXP_PICK_Waterlogged Book|r to receive the book |T133740:0|t[RwlRwlRwlRwl!].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
    .fly Thousand Needles >>Take a flight path to |cFFfa9602Thousand Needles|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Click on the |cRXP_PICK_Scroll|r to receive the book|T133740:0|t[Geomancy: The Stone-Cold Truth] inside the tent next to a sack.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Travel to |cFFfa9602Tanaris|r
    .fly Tanaris >>Take a flight path to |cFFfa9602Tanaris|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Click on the |cRXP_PICK_Book|r to obtain |T134941:0|t[Legends of the Tidesages]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>Travel to |cFFfa9602Undercity|r
    .cast 3563 >>Use [Teleport Undercity] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>Click on the |cRXP_PICK_The Apothecary's Society Primer|r |cFFfa9602in Tirisfal Glades, Brill|r to obtain |T133737:0|t[The Apothecary's Metaphysical Primer.]
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r on foot |cRXP_WARN_if you are in|r |cFFfa9602Tirisfal Glades.|r
    .fly Silverpine Forest >>Take a flight path to |cFFfa9602Silverpine Forest|r |cRXP_WARN_if you are in|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>Click on the |cRXP_PICK_Arcane Secrets|r |cFFfa9602in Silverpine Forest|r to obtain |T133744:0|t[Ataeric: On Arcane Curiosities.]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>Travel to |cFFfa9602The Silverpine Forest.|r
    .fly Silverpine Forest >>Take a flight path to |cFFfa9602Silverpine Forest|r |cRXP_WARN_if you are in|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Click on the |cRXP_PICK_Book|r |cFFfa9602inside the Amber Hill Main Castle in Silverpine Forest|r to obtain |T134917:0|t[The Dalaran Digest vol 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>Travel to |cFFfa9602Alterac Mountains|r
    .fly Alterac Mountains >>Take a flight path to |cFFfa9602Alterac Mountains|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Click on the |cRXP_PICK_Manual|r inside the tower on crates to receive the Book |T133736:0|t[Defensive Magics 101].
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>Travel to |cFFfa9602The Hinterlands|r
    .fly Hinterlands >>Take a flight path to |cFFfa9602Hinterlands|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>Click on the |cRXP_PICK_Book|r to obtain |T134942:0|t[Venomous Journeys]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>Travel to |cFFfa9602Arathi Highlands|r
    .fly Arathi Highlands >>Take a flight path to |cFFfa9602Arathi Highlands|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Click on the |cRXP_PICK_Scroll|r to receive the Book |T134331:0|t[A Web of Lies: Debunking Myths and Legends]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>Travel to |cFFfa9602Badlands|r
    .fly >> Use a flight path to |cFFfa9602Badlands|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>Click on the Book |T134937:0|t[Mummies: A Guide to the Unsavory Undead]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602 in the vase in Wetlands|r to obtain |T237450:0|t[Goaz Scrolls.]
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Travel to |cFFfa9602Westfall|r |cRXP_WARN_by taking a flight path.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Click the |cRXP_PICK_Spellbook|r located |cFFfa9602on the Alchemy Cabinet in a small house in Moonbrook, Westfall|r to obtain |T133733:0|t[Bewitchments and Glamours.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Travel to |cFFfa9602Duskwood|r
    .fly Westfall >>Take a flight path to |cFFfa9602Westfall|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Click the |cRXP_PICK_Book|r |cFFfa9602inside the Dawning Wood Catacombs on the Alchemy Table in Duskwood|r to obtain |T133738:0|t[Crimes Against Anatomy.]
    >>|cRXP_WARN_It's recommended run to the end of the catacombs and die. Additionally you might want to consider grouping up.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to |cFFfa9602Swamp of Sorrows|r
    .fly Swamp of Sorrows >>Take a flight path to |cFFfa9602Swamp of Sorrows|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Kill |cRXP_ENEMY_Lost One Hunter|r, |cRXP_ENEMY_Lost One Muckdweller|r,|cRXP_ENEMY_Lost One Cook|r and |cRXP_ENEMY_Lost One Seer|r . Loot them for |cRXP_LOOT_|T237379:0|t[Rusted Cage Key]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Click on the |cRXP_PICK_Rusted Cage|r to receive the Book |T133742:0|t[A Ludite's Guide to Caring for Your Demonic Pet]
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to |cFFfa9602Swamp of Sorrows|r
    .fly Swamp of Sorrows >>Take a flight path to |cFFfa9602Swamp of Sorrows|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>Click on the |cRXP_PICK_Book|r to obtain |T133738:0|t[Sanguine Sorcery]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Travel to |cFFfa9602Blasted Lands|r
    .fly Blasted Lands >>Take a flight path to |cFFfa9602Blasted Lands|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Click on the |cRXP_PICK_Book|r to obtain |T133736:0|t[Conjurer's Codex]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to |cFFfa9602Stranglethorn Vale|r
    .fly Stranglethorn Vale >>Take a flight path to |cFFfa9602Stranglethorn Vale|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Click on the |cRXP_PICK_Researchnotes|r on the bench to receive the Book |T237162:0|t[Basilisks: Should Petrification be Feared?]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Travel to |cFFfa9602Searing Gorge|r
    .fly Searing Gorge >>Take a flight path to |cFFfa9602Searing Gorge|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Click on the |cRXP_PICK_Book|r to obtain |T133743:0|t[Stonewrought Design]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Travel to |cFFfa9602Searing Gorge|r
    .fly Searing Gorge >>Take a flight path to |cFFfa9602Searing Gorge|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Click on the |cRXP_PICK_Book|r to obtain |T133743:0|t[Stonewrought Design]
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>Travel to |cFFfa9602Undercity|r
    .cast 3563 >>Use |T135766:0|t[Teleport Undercity] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Undercity, Magic Quarter.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Turn in Nar'thalas Almanac
    .accept 78127 >>Turn in The Dalaran Digest
    .accept 78142 >>Turn in Bewitchments and Glamours
    .accept 78143 >>Turn in Secrets of the Dreamers
    .accept 78145 >>Turn in Arcanic Systems Manual
    .accept 78146 >>Turn in Goaz Scrolls
    .accept 78147 >>Turn in Crimes Against Anatomy
    .accept 78148 >>Turn in Runes of the Sorceror-Kings
    .accept 78149 >>Turn in Fury of the Land
    .accept 79094 >>Turn in The Lessons of Ta'zo
    .accept 79095 >>Turn in The Apothecary's Metaphysical Primer
    .accept 79096 >>Turn in Ataeric: On Arcane Curiosities
    .accept 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .accept 79535 >>Turn in Basilisks: Should Petrification be Feared?
    .accept 79947 >>Turn in Geomancy: The Stone-Cold Truth
    .accept 79948 >>Turn in Defensive Magics 101
    .accept 77949 >>Turn in A Web of Lies: Debunking Myths and Legends
    .accept 79950 >>Turn in Demons and You
    .accept 79951 >>Turn in Mummies: A Guide to the Unsavory Undead
    .accept 79952 >>Turn in RwlRwlRwlRwl!
    .accept 81947 >>Turn in Sanguine Sorcery
    .accept 81949 >>Turn in Legends of the Tidesages
    .accept 81951 >>Turn in The Liminal and the Arcane
    .accept 81952 >>Turn in Everyday Etiquette
    .accept 81953 >>Turn in Stonewrought Design
    .accept 81954 >>Turn in Venomous Journeys
    .accept 81955 >>Turn in A Mind of Metal
    .accept 81956 >>Turn in Conjurer's Codex
    .accept 79953 >>Turn in A Ludite's Guide to Caring for Your Demonic Pet
    .accept 78150 >>Turn in Friend of the Library
    .accept 79536 >>Turn in Greater Friend of the Library
    .accept 82208 >>Turn in Greater Friend of the Library
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Banker|r
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Deposit the remaining Books .|r
    .target Karus
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Living Flame - 6 (Elwynn Forest)
#title Living Flame

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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>Travel to |cFFfa9602Elwynn Forest.|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Kill |cRXP_ENEMY_Kobold Geomancer|r loot them for |cRXP_LOOT_|T134939:0|t[Spell Notes: MILEGIN VALF]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Living Flame - 7 (Dun Morogh)
#title Living Flame

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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>Travel to |cFFfa9602Dun Morogh.|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>Kill |cRXP_ENEMY_Frostmane Shadowcaster|r and |cRXP_ENEMY_Frostmane Seer|r for |cRXP_LOOT_|T134939:0|t[Spell Notes: MILEGIN VALF]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Living Flame - 6 (Durotar)
#title Living Flame

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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>Travel to |cFFfa9602Durotar|r
step
    .train 401768,1
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Dustwind Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Living Flame - 6 (Tirisfal Glades)
#title Living Flame

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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
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
    >>Kill |cRXP_ENEMY_Scarlet Humans|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Arcane Blast - 18 (Ashenvale)
#title Arcane Blast

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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>Travel to |cFFfa9602Ashenvale|r
step
    .aura 430139,1 >>|cRXP_WARN_Cast|r |T136116:0|t[Arcane Explosion] |cRXP_WARN_next to the|r |cRXP_PICK_Purple Crystal|r |cRXP_WARN_to gain the|r |T135734:0|t[Arcane Charge] |cRXP_WARN_buff|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_Cast|r |T136116:0|t[Arcane Explosion] |cRXP_WARN_next to the|r |cRXP_PICK_Purple Crystal|r |cRXP_WARN_to gain another stack of the|r |T135734:0|t[Arcane Charge] |cRXP_WARN_buff|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_Cast|r |T136116:0|t[Arcane Explosion] |cRXP_WARN_next to the|r |cRXP_PICK_Purple Crystal|r |cRXP_WARN_to gain another stack of the|r |T135734:0|t[Arcane Charge] |cRXP_WARN_buff|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401757 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Arcane Blast|r] |cRXP_WARN_to train|r |T135820:0|t[Arcane Blast]
    .use 211691
step
    #optional
    .destroy 211777 >> Destroy the |T133737:0|t[Naga Manuscript]. You no longer need it
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Living Bomb - 11 (Loch Modan)
#title Living Bomb

<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 11 in order to acquire|r |T236220:0|t[Living Bomb] |cRXP_WARN_in Loch Modan alone|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Travel to Ironforge
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Enter |cRXP_FRIENDLY_Ginny Longberry|r's house
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r inside
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from her|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Travel to Loch Modan
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
    >>Kill |cRXP_ENEMY_Stonesplinter Seer|r and loot them for |cRXP_LOOT_|T134939:0|t[Chewed Spell Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r] to learn |T236220:0|t[Living Bomb]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Living Bomb - 18 (Westfall)
#title Living Bomb

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
    >>Purchase one or more |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>Travel to |cFFfa9602Westfall|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Kill |cRXP_ENEMY_Harvest Watcher|r for |cRXP_LOOT_|T132996:0|t[Spare Reaper Parts]|r
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
    >>Kill |cRXP_ENEMY_Dust Devils|r for |cRXP_LOOT_|T132842:0|t[Elemental Core]|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>Use |T132996:0|t[Spare Reaper Parts]|r| to create |T133000:0|t[Prototype Engine]
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>Find a |cRXP_FRIENDLY_Harvest Reaper Prototype|r and use the |T133000:0|t[Prototype Engine] on it. Proceed to kill |cRXP_ENEMY_Harvest Reaper Prototype.|r
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r] to learn |T236220:0|t[Living Bomb]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Living Bomb - 17 (Silverpine Forest)
#title Living Bomb

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r
step
    .train 415936,1
    >>Kill the |cRXP_ENEMY_Rot Hides|r |cFFfa9602on Fenris Isle.|r Loot them for |T134173:0|t[A Talking Head]. |cRXP_WARN_Click it in your bags.|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Accept Resting in Pieces
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Interact with the |cRXP_PICK_Shallow Grave|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Turn in Resting in Pieces
    .accept 461 >>Accept The Hidden Niche
    .target Shallow Grave
step
    .train 415936,1
    >>Interact with the |cRXP_PICK_Dusty Shelf|r |cRXP_WARN_inside the castle in the top left tower (go left after the first staircase)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Turn in The Hidden Niche
    .accept 491 >>Accept Want to Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Travel to |cFFfa9602Undercity|r (if you have the Undercity FP you could deathskip to The Sepulcher and fly from there)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Turn in Want to Bethor
    .accept 78277 >>Accept A Token of Gratitude
    .turnin 78277 >>Turn in A Token of Gratitude
    .train 415936 >>|cRXP_WARN_You will automatically train the rune by turning in the quest|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Living Bomb - 20 (The Barrens)
#title Living Bomb

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_You must train|r |T135736:0|t[Blink] |cRXP_WARN_to acquire the|r |T236220:0|t[Living Bomb] |cRXP_WARN_rune|r
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
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charm] |cRXP_BUY_from a|r |cRXP_FRIENDLY_Reagent Vendor|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_Blink against the|r |cRXP_PICK_Etched Carving|r |cRXP_WARN_on the wall to obtain the|r |T236168:0|t[Path of no Steps] |cRXP_WARN_buff|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_Cast|r |T135736:0|t[Blink] |cRXP_WARN_onto the green circles one by one. At the end, blink against the|r |cRXP_PICK_Etched Carving|r |cRXP_WARN_to train|r |T236220:0|t[Living Bomb]
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#title Spellfrost Bolt/Frostfire Bolt
#name Spellfrost Bolt/Frostfire Bolt - 37 (Stranglethorn Vale)

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
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charm] |cRXP_BUY_from a|r |cRXP_FRIENDLY_Reagent Vendor|r
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
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charm] |cRXP_BUY_from a|r |cRXP_FRIENDLY_Reagent Vendor|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>Travel to |cFFfa9602Stranglethorn Vale|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
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
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charm] |cRXP_BUY_from a |cRXP_FRIENDLY_Reagent Vendor|r to decipher the rune|r
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
    >>|cRXP_BUY_Buy one or more|r |T135933:0|t[Comprehension Charm] |cRXP_BUY_from a |cRXP_FRIENDLY_Reagent Vendor|r to decipher the rune|r
    .collect 211779,1
step
    .train 415948 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS|r] |cRXP_WARN_to train|r |T135780:0|t[Spellfrost Bolt]
    .train 401762 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r] |cRXP_WARN_to train|r |T236217:0|t[Frostfire Bolt]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Hot Streak - 32 (Alterac Mountains)
#title Hot Streak

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >> |cRXP_WARN_You must have|r |T135826:0|t[Flamestrike] |cRXP_WARN_trained in order to aquire the|r |T236218:0|t[Hot Streak] |cRXP_WARN_rune|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >> Travel to the Alterac Mountains
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_Cast|r |T135826:0|t[Flamestrike] |cRXP_WARN_on the two bellows attached to the blacksmith building in Strahnbrad. Once one of the bellows starts glowing red and fiery, cast|r |T135826:0|t[Flamestrike] |cRXP_WARN_again on the second bellow to ignite it as well. This will trigger the |cRXP_ENEMY_Ancient Fire Elemental|r to spawn|r
    >>Kill the |cRXP_ENEMY_Ancient Fire Elemental|r. Loot it for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r] |cRXP_WARN_to train|r |T236218:0|t[Hot Streak]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Hot Streak - 37 (Arathi Highlands)
#title Hot Streak

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >> Travel to Arathi Highlands
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r]
    >>|cRXP_WARN_Note: This has been reported to have a relatively low drop rate. You may want to consider getting it from Alterac Mountains instead|r
    .collect 213113,1
    .mob Burning Exile
step
    .train 401749 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Hot Streak|r] |cRXP_WARN_to train|r |T236218:0|t[Hot Streak]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Chronostatic Preservation - 30 (Thousand Needles)
#title Chronostatic Preservation

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_Ensure to bring at least one other |cFF69CCF0Mage|r friend for the following steps! This next part cannot be completed solo!|r
step
    .train 425189,1
    .zone Thousand Needles >>Travel to Thousand Needles
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>Kill |cRXP_ENEMY_Galak Marauders|r, |cRXP_ENEMY_Galak Maulers|r and |cRXP_ENEMY_Galak Stormers|r. Loot them for the |cRXP_LOOT_Cougar Cage Key|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +Open the |cRXP_PICK_Cougar Cage|r to release the |cRXP_ENEMY_Seared Needles Cougar|r
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>Kill the |cRXP_ENEMY_Seared Needles Cougar|r. Loot her for the |T134943:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You must only use Frost spells to weaken it so it can be damaged|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Kill the |cRXP_ENEMY_Singed Highperch Consort|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You must only use Frost spells to weaken it so it can be damaged|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>Kill the |cRXP_ENEMY_Scorched Screeching Roguefeather|r. Loot it for the |T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r]
    >>|cRXP_WARN_You must only use Frost spells to weaken it so it can be damaged|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>|cRXP_WARN_Use the|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Partial Spell Notes|r] |cRXP_WARN_to create the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chronostatic Preservation|r |cRXP_WARN_to train|r |T135729:0|t[Chronostatic Preservation]
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Temporal Anomaly - 42 (Azeroth)


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>Travel to Feralas
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>Kill |cRXP_ENEMY_Zukk'ash Forces.|r Loot them for |T237070:0|t[Zukk'ash Resin.]
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>Travel to The Hinterlands
step
    .train 429306,1
    >>Kill |cRXP_ENEMY_Owlbeast.|r Loot them for |cRXP_LOOT_|T132914:0|tPristine Owlbeast Quill.|r
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>Travel to Tanaris
step
    .train 429306,1
    >>Kill |cRXP_ENEMY_Zul'Farrak Zombie|r. Loot them for |cRXP_LOOT_|T237132:0|tFarraki Papyrus.|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Undercity, Magic Quarter.|r
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Stormwind, Mage Tower.|r
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 15 (Westfall)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Travel to Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Travel to Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Travel to Westfall
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 35 (Desolace)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Travel to Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Travel to Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >> Travel to Desolace
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 45 (Feralas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Travel to Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Travel to Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >> Travel to Feralas
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 45 (Azshara)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Travel to Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Travel to Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >> Travel to Azshara
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 35 (Blasted Lands)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>> Travel to Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Travel to Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >> Travel to Blasted Lands
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 15 (Barrens)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Travel to Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Travel to Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Travel to Westfall
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 15 (Darkshore)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Travel to Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Travel to Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >> Travel to Darkshore
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 15 (Silverpine Forest)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >> Travel to Ironforge
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Travel to Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Travel to Westfall
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 35 (Swamp of Sorrows)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Travel to Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Travel to Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >> Travel to Swamp of Sorrows
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
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt - 28 (Redridge Mountains)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Travel to Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Travel to Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Buy a|r |T134945:0|t[Scroll of Spatial Mending] |cRXP_BUY_from the Auction House.|r |cRXP_WARN_Alternatively an enchanter can craft it for you.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >> Travel to Redridge Mountains
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>Use |cRXP_FRIENDLY_Scroll of Spatial Mending|r on the |cRXP_PICK_Portal|r to summon a |cRXP_ENEMY_Fel Interloper.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Kill |cRXP_ENEMY_Fel Interloper|r. Loot him for |cRXP_LOOT_|T134939:0|tSpell Notes: Balefire Bolt.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Overheat - 55 (Western Plaguelands)
#title Overheat

step
    .train 401764,1
    .zone Western Plaguelands >> Travel to Western Plaguelands
step
    .train 401764,1
    #loop -- not sure which coord is tied to which itemid, update in future
    .goto Western Plaguelands,36.8,54.7,30,0
    .goto Western Plaguelands,64.2,57.7,30,0
    .goto Western Plaguelands,53.3,64.5,30,0
    .goto Western Plaguelands,45.1,51.9,30,0
    >>|cRXP_WARN_Using Fire spells, unfreeze the|r |cRXP_FRIENDLY_Novice Frost Mages|r|cRXP_WARN_. DO NOT KILL THEM!|r
    >>|cRXP_WARN_Afterwards cast|r |T136082:0|t[Remove Lesser Curse] |cRXP_WARN_on them and talk to them to receive their|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r]
    >>|cRXP_WARN_Repeat this for each |cRXP_FRIENDLY_Novice Frost Mage|r in each of the Western Plaguelands Fields|r
    .collect 225938,1 --Felstone Field
    .collect 225939,1
    .collect 225940,1
    .collect 225941,1
    .target Novice Frost Mage
    .skipgossip
step
    .train 401764,1
    .use 225938 >> |cRXP_WARN_Use any of the|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Torn Spell Notes|r] |cRXP_WARN_to combine them into|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Overheat|r]
    .use 225939
    .use 225940
    .use 225941
    .collect 225691,1
step
    .train 401764 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Overheat|r] |cRXP_WARN_to train|r |T135813:0|t[Overheat]
    .use 225691
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Frozen Orb - 55 (Felwood/Winterspring)
#title Frozen Orb

step
    #completewith next
    .train 440858,1
    .zone Felwood >> Travel to Felwood
step
    .train 440858,1
    .goto Felwood,63.0,9.0
    >>Kill |cRXP_ENEMY_Deadwood Avengers|r and |cRXP_ENEMY_Deadwood Shamans|r. Loot them for the |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Scroll|r]
    .collect 227796,1 -- Mysterious Darnassian Scroll 1/1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
step
    .train 440858,1
    >>|cRXP_WARN_Use a|r |T135933:0|t[|cRXP_LOOT_Comprehension Charm|r] |cRXP_WARN_on the|r |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Scroll|r] |cRXP_WARN_to decipher it into the|r |T134937:0|t[|cRXP_LOOT_Deciphered Darnassian Scroll|r]
    .collect 227797,1 -- Deciphered Darnassian Scroll 1/1
    .use 211779
    .use 227796
step
    .train 440858,1
    .goto Felwood,61.0,12.0
    .use 227797 >>|cRXP_WARN_Use the|r |T134937:0|t[|cRXP_LOOT_Deciphered Darnassian Scroll|r] |cRXP_WARN_on |cRXP_FRIENDLY_Calyx Greenglow|r and accept his quest|r
    >>|cRXP_FRIENDLY_Calyx Greenglow|r |cRXP_WARN_patrols around slightly|r
    .accept 84369 >> Accept Healing the Healer
    .unitscan Calyx Greenglow
step
    .train 440858,1
    .goto Winterspring,55.0,22.0
    >>Kill |cRXP_ENEMY_Irontree Stompers|r. Loot them for the |cRXP_LOOT_Unusual Flask|r
    .collect 227924,1,84369,1 -- Unusual Flask 1/1
    .mob Irontree Stomper
step
    .train 440858,1
    #completewith next
    .zone Winterspring >> Travel to Winterspring
step
    .train 440858,1
    .goto Winterspring,29.0,35.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calyx Greenglow|r
    >>|cRXP_WARN_You will need to kill |cRXP_ENEMY_Calyx Greenglow|r after turning this quest in|r
    .turnin 84369 >> Turn in Healing the Healer
    .unitscan Calyx Greenglow
step
    .train 440858,1
    >>Kill the |cRXP_ENEMY_Enraged Shade|r. Loot it for the |T134939:0|t[|cRXP_LOOT_Spell Notes: Frozen Orb|r]
    .collect 225690,1 -- Spell Notes: Frozen Orb 1/1
    .mob Enraged Shade
step
    .train 440858 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Frozen Orb|r] |cRXP_WARN_to train|r |T135851:0|t[Frozen Orb]
    .use 225690
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Arcane Barrage - 60 (Azeroth)
#title Arcane Barrage

<< Mage SoD

step
    .train 401722,1
    #completewith Necromancy101
    .zone Western Plaguelands >> Travel to Western Plaguelands
step
    .train 401722,1
    .goto Western Plaguelands,38.3,54.6
    >>Loot the |cRXP_LOOT_Undead Potatoes|r book in the Felstone Field farmhouse upstairs
    .collect 228132,1
    .isQuestAvailable 84395
step
    .train 401722,1
    #label Necromancy101
    .goto Western Plaguelands,69.41,72.84
    >>Loot the |cRXP_LOOT_Necromancy 101|r in the Scholomance Keep
    .collect 228141,1
    .isQuestAvailable 84402
step
    .train 401722,1
    #completewith UndeadMenace
    .zone Eastern Plaguelands >> Travel to Western Plaguelands
step
    .train 401722,1
    .goto Eastern Plaguelands,81.7,57.8
    >>Loot |cRXP_LOOT_A Study of the Light|r book
    .collect 228135,1
    .isQuestAvailable 84398
step
    .train 401722,1
    .goto Eastern Plaguelands,54.5,50.8
    >>Loot |cRXP_LOOT_The Knight and the Lady|r book
    .collect 228138,1
    .isQuestAvailable 84400
step
    .train 401722,1
    #label UndeadMenace
    .goto Eastern Plaguelands,31.250,21.000
    >>Loot the |cRXP_LOOT_Scourge: Undead Menace or Misunderstood?|r book
    .collect 228140,1
    .isQuestAvailable 84401
step
    .train 401722,1
    #completewith next
    .subzone 1445 >> Travel to Searing Gorge or Burning Steppes and head into Blackrock Mountain
step
    .train 401722,1
    .goto 1415,48.388,63.626
    >>|cRXP_WARN_Drop down the chain and head towards the Blackrock Depths enterance|r
    >>Loot the |cRXP_LOOT_Magma or Lava?|r book on the ground
    .collect 228133,1
    .isQuestAvailable 84396
step
    .train 401722,1
    #completewith next
    .zone Winterspring >> Travel to Winterspring
step
    .train 401722,1
    .goto Winterspring,60.7,37.7
    >>Loot the |cRXP_LOOT_Ka-Boom!|r book on the shelf
    .collect 228136,1
    .isQuestAvailable 84399
step
    .train 401722,1
    #completewith next
    .zone Felwood >> Travel to Felwood
    .subzoneskip 1216
step
    .train 401722,1
    .goto Felwood,65.214,3.248
    >>|cRXP_WARN_Head to the Timbermaw Hold tunnel. Note if you are not at least Unfriendly with Timbermaw Hold the furbolgs will attack you|r
    >>Loot the |cRXP_LOOT_Northern Kalimdor - A Comprehensive Guide|r book on the ground
    .collect 228134,1
    .isQuestAvailable 84397
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran Snakewrithe|r  << Horde
    .accept 84395 >> Turn in Undead Potatoes
    .accept 84402 >> Turn in Necromancy 101
    .accept 84398 >> Turn in A Study of the Light
    .accept 84400 >> Turn in The Knight and the Lady
    .accept 84401 >> Turn in Scourge: Undead Menace or Misunderstood?
    .accept 84396 >> Turn in Magma or Lava?
    .accept 84399 >> Turn in Ka-Boom!
    .accept 84397 >> Turn in Northern Kalimdor - A Comprehensive Guide
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran Snakewrithe|r << Horde
    >>|cRXP_WARN_IF YOU CANNOT ACCEPT THIS QUEST ENSURE YOU HAVE ACQUIRED THE RUNES FOR Icy Veins/Spell Power/Deep Freeze AS THIS IS A CONTINUATION OF THOSE RUNES AND IS REQUIRED|r
    .accept 84394 >> Accept Greater Friend of the Library
    .turnin 84394 >> Turn in Greater Friend of the Library
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
]])
