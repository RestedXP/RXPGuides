if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Fury of Stormrage - 4 (Nightglen)
#title Fury of Stormrage

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Living Seed - 10 (Teldrassil)
#title Living Seed

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Lifebloom - 8 (Teldrassil)
#title Lifebloom

step << Druid
    #sticky
    +|cRXP_WARN_You must have a helper to collect this rune! It cannot be soloed as they must assist in clicking a summoning ritual which requires a second player!|r
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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Savage Roar - 20 (Darkshore)
#title Savage Roar

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Savage Roar - 20 (Westfall)
#title Savage Roar

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Sunfire - 6 (Teldrassil)
#title Sunfire

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Lacerate - 10 (Loch Modan)
#title Lacerate

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Fury of Stormrage - 4 (Mulgore)
#title Fury of Stormrage


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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Mangle - 10 (Mulgore)
#title Mangle


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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Sunfire - 5 (Mulgore)
#title Sunfire


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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Lifebloom - 10 (Mulgore)
#title Lifebloom

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Living Seed - 8 (Mulgore)
#title Living Seed

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Lacerate - 15 (The Barrens)
#title Lacerate

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Savage Roar - 15 (The Barrens)
#title Savage Roar

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

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Berserk - 28 (Thousand Needles)
#title Berserk

step
    #optional
    +|cRXP_WARN_You must be level at least level 28 to learn|r |T236149:0|t[Berserk]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >> |cRXP_WARN_You must have|r |T132117:0|t[Challenging Roar] |cRXP_WARN_trained in order to aquire the|r |T236149:0|t[Berserk] |cRXP_WARN_rune|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>Travel to Thousand Needles
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >> |cRXP_WARN_Stand next to the |cRXP_PICK_Beastly Effigy|r statue to receive the|r |T134912:0|t[Beastly Effigy] |cRXP_WARN_buff|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >> |cRXP_WARN_Go into|r |T132276:0|t[Bear Form] |cRXP_WARN_and cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to summon|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(lvl 28 elite)|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>Kill |cRXP_ENEMY_Zai'enki|r. Loot it for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
    .use 213594
step
    #title Gain 5x |T237556:0|t[Building Inspiration]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >> |cRXP_WARN_Cast|r |T132117:0|t[Challenging Roar] |cRXP_WARN_to taunt at least 2 enemies and kill one of them while they have the|r |T132117:0|t[Challenging Roar] |cRXP_WARN_debuff. This will give you a stack of the|r |T237556:0|t[Building Inspiration] |cRXP_WARN_buff. Repeat this 5 times until you gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    *|cRXP_WARN_It's recommened you fight one mob and almost kill it, then pull a 2nd and cast|r |T132117:0|t[Challenging Roar]|cRXP_WARN_, then kill the low health mob. You will lose all stacks of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_if you die|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r] |cRXP_WARN_to train|r |T236149:0|t[Berserk]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Dreamstate - 33 (Desolace)
#title Dreamstate

step
    #completewith next
    .train 410060,1
    .zone Desolace >>Travel to Desolace
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>Kill |cRXP_ENEMY_Kolkars|r and loot them for |T134187:0|t[Desiccated Seed Pod]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>Swim in the water and wait until the pod turns into |T134208:0|t[Satyrweed Bulb]
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>Click on the |cRXP_PICK_Sandy Loam|r to plant the seed to learn |T136090:0|t[Dreamstate]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Nourish - 35 (Azeroth)
#title Nourish

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>Travel to Dustwallow Marsh
step
    .train 410059,1
    >>Kill the |cRXP_ENEMY_Rotting Ancient|r. Loot it for the |T134217:0|t[Rotten Seed]. |cRXP_WARN_Click it in your bags|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >> Accept The Lost Ancient
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Use |T135758:0|t[Teleport Moonglade]
step
    #completewith next
    +|cRXP_WARN_You have to strictly follow every upcoming instruction. Dying, getting phased, summoned, using teleportation or getting the "Honorless Target" buff can fail the quest (you loose the buff), so don't use any Flight Point into contested areas.|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orokai|r
    *|cRXP_WARN_Accepting the next quest start a 1 hour timer. Make sure that you can commit the whole hour.|r
    .turnin 79348 >>Turn in The Lost Ancient
    .accept 79377 >>Accept The Lost Saplings
    .timer 3600,Water Duration
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>Fly to Auberdine
    .target Sindrayl
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Take the boat to Menethil Harbor. |cRXP_WARN_LOG OUT AFTER THE BOAT STARTS MOVING. WAIT 40 SECONDS AND THEN LOG BACK IN|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>Travel to Arathi Highlands. |cRXP_WARN_DON'T USE THE FLIGHT MASTER|r
step << Alliance
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>Travel to Alterac Mountains. |cRXP_WARN_DON'T USE THE FLIGHT MASTER|r
step << Alliance
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>Follow the way to Western Plaguelands
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>Fly to Stormwind
    .target Bibilfaz Featherwhistle
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>Travel to the Deadwind Pass
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>Follow the way to Swamp of Sorrows
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>Follow the way to Stranglethorn Vale
step << Alliance
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen Plainswind|r
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>Fly to Thunder Bluff
    .target Bunthen Plainswind
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>Fly to Ratchet
    .target Tal
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >> Take the boat to Booty Bay. |cRXP_WARN_LOG OUT AFTER THE BOAT STARTS MOVING. WAIT 40 SECONDS AND THEN LOG BACK IN.|r
step << Horde
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>Go North through Duskwood and Deadwind Pass into Swamp of Sorrows. |cRXP_WARN_Avoid Darkshire|r
step << Horde
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breyk|r
    .fly Undercity >>Fly to Undercity
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_Leave Undercity, go to Silverpine Forest and swim through the lake to Alterac Mountains|r
step << Horde
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>Run to Arathi Highlands.
step << Horde
    .train 410059,1
    >>Use the |T132852:0|t[Water of Elun'ara] on the |cRXP_FRIENDLY_Ancient Sapling|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Use |T135758:0|t[Teleport Moonglade]
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orokai|r
    .turnin 79377 >>Turn in The Lost Saplings
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of Nourishing|r] to learn |T236162:0|t[Nourish]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#name Efflorescence - 45 (Azeroth)

step
    #optional
    .train 431468,1
    .train 2728 >> |cRXP_WARN_You must have|r |T135952:0|t[Remove Curse] |cRXP_WARN_trained in order to aquire the|r |T134222:0|t[Efflorescence] |cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 8946 >> |cRXP_WARN_You must have|r |T136067:0|t[Cure Poison] |cRXP_WARN_trained in order to aquire the|r |T134222:0|t[Efflorescence] |cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 16914 >> |cRXP_WARN_You must have|r |T136018:0|t[Hurricane] |cRXP_WARN_trained in order to aquire the|r |T134222:0|t[Efflorescence] |cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 740 >> |cRXP_WARN_You must have|r |T136107:0|t[Tranquility] |cRXP_WARN_trained in order to aquire the|r |T134222:0|t[Efflorescence] |cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 768 >> |cRXP_WARN_You must have|r |T132115:0|t[Cat Form] |cRXP_WARN_trained in order to aquire the|r |T134222:0|t[Efflorescence] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Feralas >>Travel to Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_inside the tower|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>Accept Wisdom of the Guardians
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>Click on the |cRXP_PICK_Shrine of the Warden|r to get the |T132145:0|t[Duty of the Warden] buff
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>Follow the following steps to get the |T236157:0|t[Mark of the Warden] buff
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>Attack a |cRXP_ENEMY_Gordunni Warlock|r. |cRXP_WARN_Wait until they use|r |T136121:0|t[Shrink] |cRXP_WARN_on you.|r
    .cast 2728 >>|cRXP_WARN_Use|r |T135952:0|t[Remove Curse] |cRXP_WARN_to remove the|r |T136121:0|t[Shrink] |cRXP_WARN_debuff|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>Attack a |cRXP_ENEMY_Zukk'ash Wasp|r. |cRXP_WARN_Wait until they use|r |T136016:0|t[Poison] |cRXP_WARN_on you.|r
    .cast 526 >>|cRXP_WARN_Use|r |T135952:0|t[Cure Poison] |cRXP_WARN_to remove the|r |T136016:0|t[Poison] |cRXP_WARN_debuff|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_Click on/Run to the|r |cRXP_PICK_Shrine of the Warden|r |cRXP_WARN_to summon the |cRXP_ENEMY_Treant Avatar|r|r
    >>Kill the |cRXP_ENEMY_Treant Avatar|r.
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>Travel to Azshara (Moonglade Teleport -> Azshara Flight Path)
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>Click on the |cRXP_PICK_Shrine of the Beast|r
    *|cRXP_WARN_Skip this step manually if it doesn't complete|r
step
    .train 431468,1
    >>Kill |cRXP_ENEMY_Child of Apa'ro|r |cRXP_WARN_with Melee Abilities (go into Cat or Bear Form)|r. Loot it for the |T134338:0|t[|cRXP_LOOT_Sacred Stag Heart|r]
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_Use the|r |T134338:0|t[|cRXP_LOOT_Sacred Stag Heart|r] |cRXP_WARN_next to the|r |cRXP_PICK_Shrine of the Beast|r |cRXP_WARN_to summon the|r |cRXP_ENEMY_Hippogryph Avatar|r
    .train 431468,1
step
    .train 431468,1
    >>Kill the |cRXP_ENEMY_Hippogryph Avatar|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>Travel to The Hinterlands
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>Click on the |cRXP_PICK_Shrine of the Moon|r at the top of the Hill
    *|cRXP_WARN_Skip this step manually if it doesn't complete|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_Use|r |T136107:0|t[Tranquility]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_Use|r |T136018:0|t[Hurricane]
step
    .train 431468,1
    >>Kill the |cRXP_WARN_Moonkin Avatar|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>Travel to Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_inside the tower|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>Turn in Wisdom of the Guardians
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of Efflorescence|r] to learn |T134222:0|t[Efflorescence]

]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Frenzied Regeneration
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Gale Winds - 40 (Feralas)

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>Travel to Feralas
step
    #label NamidaGrimtotem
    .train 431451,1
    >>Kill |cRXP_ENEMY_Namida Grimtotem|r. Loot her for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r]
    .goto Feralas,66.8,38.6
    .collect 220754,1
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r] |cRXP_WARN_to train|r |T236154:0|t[Gale Winds]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#name Elune's Fire - 45 (Azshara)

step
    #completewith next
    .zone Azshara >>Travel to Azshara
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>Click on the |cRXP_PICK_Traveller's Knapsack|r to loot the |T236229:0|t[|cRXP_LOOT_Field Medicine Kit|r] and |T133741:0|t[|cRXP_LOOT_Kelara's Log|r]
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>Pick up 3 |T134218:0|t[|cRXP_PICK_Satyrweed Samples|r]
    .collect 221019,3
step
    >>|cRXP_WARN_Use the|r |T236229:0|t[|cRXP_LOOT_Field Medicine Kit|r] |cRXP_WARN_to combine the samples into the|r |T236868:0|t[Satyrweed Tincture]
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>Look for a |cRXP_ENEMY_Thunderhead Hyppogryph|r with the |T136134:0|t[Satyr Corruption] debuff
    *|cRXP_WARN_If it has the debuff then it emits a green poison cloud|r.
    .cast 2637 >>Use |T136090:0|t[Hybernate] on the |cRXP_ENEMY_Thunderhead Hyppogryph|r
    .mob Thunderhead Hyppogryph
step
    .train 416051,1
    >>|cRXP_WARN_Use the|r |T236868:0|t[Satyrweed Tincture] |cRXP_WARN_on the |cRXP_ENEMY_Thunderhead Hyppogryph|r to remove the|r |T136134:0|t[Satyr Corruption] |cRXP_WARN_debuff|r and get the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Moon Goddess|r]
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hyppogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r] |cRXP_WARN_to train|r |T236163:0|t[Elune's Fires]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Improved Barkskin - 44 (Tanaris)

step
    #optional
    .train 431449,1
    .train 22812 >> |cRXP_WARN_You must have|r |T136097:0|t[Barkskin] |cRXP_WARN_trained in order to aquire the|r |T136097:0|t[Improved Barkskin] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>Kill |cRXP_ENEMY_Thistleshrub Dew Collector|r and |cRXP_ENEMY_Thistleshrub Rootshaper|r. Loot them for the |T136061:0|t[|cRXP_LOOT_Idol of the Raging Shambler|r]
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
step
    .equip 18,220915 >>|cRXP_WARN_Equip the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r]
    .train 431449,1
step
    .aura 408828 >>Kill |cRXP_WARN_five enemies with a Nature spell (e.g. Wrath) while under the effect of |T136097:0|t[Barkskin].|r
    *|cRXP_WARN_Use |T136097:0|t[Barkskin] when the enemy is at low HP and finish him with a Wrath or another Nature spell|r
    .train 431449,1
step
    .itemcount 221020,1
    .use 221020
    .train 431449 >> |cRXP_WARN_Use the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r] |cRXP_WARN_to train|r |T136097:0|t[Improved Barkskin]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Improved Swipe - 50 (Un'Goro Crater)
#title Improved Swipe

step
    #completewith next
    .train 439765,1
    .zone Un'Goro Crater >>Travel to Un'Goro Crater
step
    .train 439765,1
    .goto Un'Goro Crater,68.0,51.4
    >>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .train 439765,1
    .equip 18,227444 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
    .use 227444
step
    .goto Un'Goro Crater,68.0,51.4
    #title Gain 5x |T237556:0|t[Building Inspiration]
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >> |cRXP_WARN_Attack a |cRXP_ENEMY_Ravasaur|r until they are down to roughly 5-10% HP and ensure you have 5 combo points on them|r
    >>|cRXP_WARN_Once they are 5-10% HP, cast|r |T136090:0|t[Hibernate] |cRXP_WARN_then switch into|r |T132115:0|t[Cat Form] |cRXP_WARN_and cast|r |T132127:0|t[Ferocious Bite] |cRXP_WARN_to kill them to gain a stack of|r |T237556:0|t[Building Inspiration]
    >>|cRXP_WARN_Repeat this process 5 times|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .itemcount 227444,1
    .use 227444
    .train 439765 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r] |cRXP_WARN_to train|r |T134296:0|t[Improved Swipe]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Tree of Life - 50 (Felwood)
#title Tree of Life

step
    #completewith next
    .train 439767,1
    .zone Felwood >>Travel to Felwood
step
    .train 439767,1
    #loop
    .goto Felwood,42,15,70,0
    .goto Felwood,42,19,70,0
    .goto Felwood,42,15,0
    .goto Felwood,42,19,0
    >>|cRXP_WARN_Talk to a|r |cRXP_FRIENDLY_Vengeful Wisp|r |cRXP_WARN_in northern Felwood, then follow it through Jadefire Run and kill any |cRXP_ENEMY_Satyrs|r it runs through|r
    >>|cRXP_WARN_The |cRXP_FRIENDLY_Vengeful Wisp|r has multiple spawn locations. If you see another Druid already with the |cRXP_FRIENDLY_Vengeful Wisp|r, you can help them and still receive credit|r
    >>Once completed, the |cRXP_FRIENDLY_Vengeful Wisp|r will drop the |cRXP_PICK_Gift of the Wisp|r on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the World Tree|r]
    .collect 227746,1
    .unitscan Vengeful Wisp
step
    .itemcount 227746,1
    .use 227746
    .train 439767 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the World Tree|r] |cRXP_WARN_to train|r |T132145:0|t[Tree of Life]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Starfall - 60 (Winterspring)
#title Starfall

step
    #completewith next
    .train 439770,1
    .zone Winterspring >>Travel to Winterspring
    >>|cRXP_WARN_Note that for this rune you must kill a level 58 Elite. Consider inviting friends to help you|r
step
    .train 439770,1
    #loop
    .goto Winterspring,64.8,19.4,50,0
    .goto Winterspring,63.8,16.4
    >>Kill |cRXP_ENEMY_Arcterris|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Falling Star|r]
    >>|cRXP_WARN_Note |cRXP_ENEMY_Arcterris|r is a level 58 Elite. Consider inviting friends to help you|r
    .collect 227749,1
    .mob Arcterris
step
    .itemcount 227749,1
    .use 227749
    .train 439770 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Falling Star|r] |cRXP_WARN_to train|r |T236168:0|t[Starfall]
]])
