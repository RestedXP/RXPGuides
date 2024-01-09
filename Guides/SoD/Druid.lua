RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Fury of Stormrage - 4 (Nightglen)

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .accept 77571 >> Accept Relics of the Kaldorei
    .trainer >> Train your class spells. Ensure you learn |T136096:0|t[Moonfire]
    .target Mardant Strongoak
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>Kill |cRXP_ENEMY_Grell|r and |cRXP_ENEMY_Grellkin|r. Loot them for the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .collect 208414,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Equip the|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Kill a foe 6 times while they are afflicted with|r |T136096:0|t[Moonfire] |cRXP_WARN_to gain stacks of|r |T237556:0|t[Inspiration]
    >>|cRXP_WARN_Once you have the|r |T136116:0|t[Inspired] |cRXP_WARN_buff after 6 kills, use the|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] |cRXP_WARN_again which you just equiped|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 77571 >> Turn in Relics of the Kaldorei
    .target Mardant Strongoak
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Living Seed - 10 (Teldrassil)

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52 
    >>Loot |T133941:0|t|cRXP_LOOT_Glade Flowers|r on the ground
    >>|cRXP_WARN_These are found all over Teldrassil|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_Use the|r |T133941:0|t|cRXP_LOOT_Glade Flowers|r |cRXP_WARN_to combine them into a|r |T132767:0|t[Glade Crown]
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >> Travel to Starbreeze Village
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_Use the|r |T132767:0|t[Glade Crown] |cRXP_WARN_on the |cRXP_ENEMY_Wooden Effigy|r. This will spawn a|r |cRXP_ENEMY_Unleashed Nature Spirit|r
    >>|cRXP_WARN_You may need to wait a few minutes for it to respawn|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>Kill the |cRXP_ENEMY_Unleashed Nature Spirit|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r]
    >>|cRXP_WARN_This is a level 7 elite|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r] |cRXP_WARN_to train|r |T136152:0|t[Living Seed]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Lifebloom - 8 (Teldrassil)

step << Druid
    #sticky
    +|cRXP_WARN_You must have a helper to collect this rune! It cannot be solo'd as they must assist in clicking a summoning ritual which requires a second player!|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Adventurer's Remains|r
    >>|cRXP_WARN_This will start the summoning ritual which another player needs to also click|r
    >>Loot the |cRXP_FRIENDLY_Adventurer's Remains|r for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Life|r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Life|r] |cRXP_WARN_to train|r |T134206:0|t[Lifebloom]
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Savage Roar - 20 (Darkshore)

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Note: You must be level 20 in order to equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_which is required to learn|r |T236167:0|t[Savage Roar]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r. Loot her for the |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Deal 20 instances of bleeding damage from|r |T132152:0|t[Rip] |cRXP_WARN_or|r |T132122:0|t[Rake] |cRXP_WARN_to humanoids, then use the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_again to learn|r |T236167:0|t[Savage Roar]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Savage Roar - 20 (Westfall)

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Note: You must be level 20 in order to equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_which is required to learn|r |T236167:0|t[Savage Roar]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r, |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Mongrels|r. Loot them for the |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Deal 20 instances of bleeding damage from|r |T132152:0|t[Rip] |cRXP_WARN_or|r |T132122:0|t[Rake] |cRXP_WARN_to humanoids, then use the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_again to learn|r |T236167:0|t[Savage Roar]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Sunfire - 6 (Teldrassil)

step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_On the massive tree branch you will see 3|r |cRXP_ENEMY_Lunar Stones|r
    >>|cRXP_WARN_Cast|r |T136096:0|t[Moonfire] |cRXP_WARN_on all 3|r |cRXP_ENEMY_Lunar Stones|r |cRXP_WARN_on the branch, then loot the chest at the arrow location which spawns after|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] |cRXP_WARN_to train|r |T236216:0|t[Sunfire]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Lacerate - 10 (Loch Modan)

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khara Deepwater|r inside the building
    >>|cRXP_BUY_Buy a|r |T237270:0|t[Rainbow Fin Albacore Chum]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >> |cRXP_WARN_Use the|r |T237270:0|t[Rainbow Fin Albacore Chum] |cRXP_WARN_on a |cRXP_ENEMY_Young Threshadon|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] |cRXP_WARN_to train|r |T132131:0|t[Lacerate]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Fury of Stormrage - 4 (Mulgore)


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Accept Relics of the Tauren
    .trainer >> Train your class spells. Ensure you learn |T136096:0|t[Moonfire]
    .target Gart Mistrunner
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Loot the |cRXP_PICK_Bristleback Loot Cache|r for the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Equip the|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Kill a foe 6 times while they are afflicted with|r |T136096:0|t[Moonfire] |cRXP_WARN_to gain stacks of|r |T237556:0|t[Inspiration]
    >>|cRXP_WARN_Once you have the|r |T136116:0|t[Inspired] |cRXP_WARN_buff after 6 kills, use the|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] |cRXP_WARN_again which you just equiped|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 77648 >>Turn in Relics of the Tauren
    .target Gart Mistrunner

    ]])
    
RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Mangle - 10 (Mulgore)


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] 
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Equip the|r |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] 
    .use 206954
    .train 410025,1
step
    #completewith next
    +|cRXP_WARN_Maintain 50+ rage for at least 60 seconds to be able to learn|r |T132135:0|t[Mangle]
step
    #season 2
    .train 410025 >> |cRXP_WARN_Use the|r |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] |cRXP_WARN_to train|r |T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1

    ]])
    
RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Sunfire - 5 (Mulgore)


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>Cast |T136096:0|t[Moonfire] on the three |cRXP_ENEMY_Lunar Stones|r. A chest will appear in between the stones
    >>Open the |cRXP_PICK_Lunar Chest|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] 
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] |cRXP_WARN_to train|r |T236216:0|t[Sunfire]
    .use 206989
    .itemcount 206989,1

    ]])
    
RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Lifebloom - 10 (Mulgore)


    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r outside of the Venture Co. Mine
    >>|cRXP_WARN_Another players needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Life|r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Life|r] |cRXP_WARN_to train|r |T134206:0|t[Lifebloom]
    .use 206970
    .itemcount 206970,1

    ]])
    
RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Living Seed - 8 (Mulgore)


    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>Loot |T133941:0|t|cRXP_LOOT_Prairie Flowers|r on the ground
    >>|cRXP_WARN_These are found all over Mulgore|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_Use the|r |T133941:0|t|cRXP_LOOT_Prairie Flowers|r |cRXP_WARN_to combine them into a|r |T132767:0|t[Prairie Crown]
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_Use the|r |T132767:0|t[Glade Crown] |cRXP_WARN_on the |cRXP_ENEMY_Wooden Effigy|r. This will spawn a|r |cRXP_ENEMY_Unleashed Nature Spirit|r
    >>|cRXP_WARN_You may need to wait a few minutes for it to respawn|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>Kill the |cRXP_ENEMY_Unleashed Nature Spirit|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r]
    >>|cRXP_WARN_This is a level 7 elite|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r] |cRXP_WARN_to train|r |T136152:0|t[Living Seed]
    .use 206963
    .itemcount 206963,1


    ]])
    
    
    
RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Lacerate - 15 (The Barrens)


    --Rune of Lacerate
    
step
    #season 2
    #completewith next
    .subzone 386 >>Travel to the Forgotten Pools
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>Loot the |cRXP_PICK_Abandoned Snapjaw Nest|r on the ground for |T294479:0|t[|cRXP_LOOT_Abandoned Snapjaw Egg|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>Travel to the Lushwater Oasis
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>Open the |cRXP_PICK_Empty Snapjaw Nest|r on the ground for |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] |cRXP_WARN_to train|r |T132131:0|t[Lacerate]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
    ]])
    
    
RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Savage Roar - 15 (The Barrens)


    --Rune of Savage Roar

step
    #season 2
    #sticky
    +|cRXP_WARN_Note: You must be level 20 in order to equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_which is required to learn|r |T236167:0|t[Savage Roar]
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for a |T134237:0|t[|cRXP_LOOT_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>Open a |cRXP_PICK_Kolkar Booty|r chest for |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_Deal 20 instances of bleeding damage from|r |T132152:0|t[Rip] |cRXP_WARN_or|r |T132122:0|t[Rake] |cRXP_WARN_to humanoids, then use the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_again to learn|r |T236167:0|t[Savage Roar]
    .use 208689
    .itemcount 208689,1


    ]])