RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior
#group RestedXP Rune Guide
#subgroup Gloves
#name Victory Rush - 1 (Elwynn Forest)

step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>Open the |cRXP_PICK_Kobold Stashbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    #label RoVR
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior
#group RestedXP Rune Guide
#subgroup Gloves
#name Victory Rush - 3 (Dun Morogh)

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1
    .mob Frostmane Troll Whelp
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior
#group RestedXP Rune Guide
#subgroup Gloves
#name Victory Rush - 3 (Shadowglen)

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>Kill |cRXP_ENEMY_Webwood Spiders|r. Loot them for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Blood Frenzy - 10 (Elwynn Forest)

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Elwynn Forest
    >>Defeat the |cRXP_ENEMY_Wandering Swordsman|r in a duel
    >>Open the |cRXP_PICK_Swordsman's Reward|r it drops on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    >>|cRXP_WARN_Note: The |cRXP_FRIENDLY_Wandering Swordsman|r can spawn anywhere throughout Elwynn Forest|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T136012:0|t[Blood Frenzy]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Blood Frenzy - 10 (Dun Morogh)

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Dun Morogh
    >>Defeat the |cRXP_ENEMY_Wandering Swordsman|r in a duel
    >>Open the |cRXP_PICK_Swordsman's Reward|r it drops on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T136012:0|t[Blood Frenzy]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Blood Frenzy - 10 (Teldrassil)

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Teldrassil
    >>Defeat the |cRXP_ENEMY_Wandering Swordsman|r in a duel
    >>Open the |cRXP_PICK_Swordsman's Reward|r it drops on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    >>|cRXP_WARN_Note: The |cRXP_FRIENDLY_Wandering Swordsman|r can spawn anywhere throughout Teldrassil|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T136012:0|t[Blood Frenzy]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Furious Thunder - 6 (Elwynn Forest)

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Enter Fargodeep Mine
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Goldtooth
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Furious Thunder - 9 (Dun Morogh)

step << Warrior
    #season 2
    .goto Dun Morogh,31.87,38.45,60,0
    .goto Dun Morogh,30.42,39.84,60,0
    .goto Dun Morogh,30.02,39.08,60,0
    .goto Dun Morogh,33.82,37.26
    >>Kill |cRXP_ENEMY_Fyodi|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    >>|cRXP_ENEMY_Fyodi|r |cRXP_WARN_is a level 7 elite boar|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .unitscan Fyodi
    .train 403476,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Furious Thunder - 8 (Teldrassil)

step << Warrior
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Enter the Ban'ethil Barrow Den
    .train 403476,1
step << Warrior
    #season 2
    .goto Teldrassil,44.401,60.655
    >>Open the |cRXP_PICK_Gnarlpine Cache|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    >>|cRXP_WARN_Note: The |cRXP_PICK_Gnarlpine Cache|r can have multiple spawn locations within the Ban'ethil Barrows|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .train 403476,1 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 204809
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Frenzied Assault - 10 (Stormwind)

step << Warrior
    #season 2
    .gossipoption 109045 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>If |cRXP_ENEMY_Stuart|r is not there wait for him to respawn
    .gossipoption 109044 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    >>|cRXP_WARN_Note: This can be quite difficult solo depending on your level. Look for some help if needed|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Frenzied Assault - 10 (Ironforge)

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r at the Military Ward
    >>Talk to |cRXP_ENEMY_Bruart|r by the doorway, then beat him up. He will pass out at 0%
    >>If |cRXP_ENEMY_Bruart|r is not there wait for him to respawn
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r again after knocking out |cRXP_ENEMY_Bruart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .train 425447,1 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    >>|cRXP_WARN_Note: This can be quite difficult solo depending on your level. Look for some help if needed|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Frenzied Assault - 10 (Teldrassil)

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>Talk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r at Dolanaar
    >>Talk to |cRXP_ENEMY_Syllart|r upstairs, then beat him up. He will pass out at 0%
    >>If |cRXP_ENEMY_Syllart|r is not there wait for him to respawn
    >>Talk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r again after knocking out |cRXP_ENEMY_Syllart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .train 425447,1 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    >>|cRXP_WARN_Note: This can be quite difficult solo depending on your level. Look for some help if needed|r
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Endless Rage - 10 (Westfall)

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for the |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Endless Rage - 10 (Darkshore)

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >> Enter the Cliffspring Naga cave
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>Kill |cRXP_ENEMY_Lady Sedorax|r. Loot her for the |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_is a level 18 elite which also has other mobs around it. You may instead opt to get it from Westfall which is much easier|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Devastate - 8 (Elwynn Forest)

step << Warrior
    #season 2
    >>Kill |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for their |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r]
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for their |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r]
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .mob Murloc
	.mob Murloc Streamrunner
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >> Travel to Stormwind
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r] to receive |T134455:0|t[Monster Hunter's First Rune Fragment]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r] to receive |T134455:0|t[Monster Hunter's Second Rune Fragment]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r] to receive |T134455:0|t[Monster Hunter's Third Rune Fragment]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Use any of the|r |T134455:0|t[Monster Hunter's Rune Fragments] |cRXP_WARN_to create the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T135291:0|t[Devastate]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Devastate - 6 (Teldrassil)

step << Warrior
    #season 2
    >>Kill |cRXP_ENEMY_Nightsabers|r or |cRXP_ENEMY_Nightsaber Stalkers|r. Loot them for their |cRXP_LOOT_Severed Tiger Head|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r or |cRXP_ENEMY_Strigid Screechers|r. Loot them for their |cRXP_LOOT_Severed Owl Head|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r or |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Severed Spider Head|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >> Travel to Darnassus
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_After turning in the three |cRXP_LOOT_Severed Heads|r you will receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T135291:0|t[Devastate]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Devastate - 6 (Dun Morogh)

step << Warrior
    #season 2
    >>Kill |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Severed Wendigo Paw|r
    >>Kill |cRXP_ENEMY_Frostmane Trolls|r. Loot them for their |cRXP_LOOT_Severed Troll Head|r
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r. Loot them for their |cRXP_LOOT_Pristine Trogg Heart|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Young Wendigo
    .mob Wendigo
    .mob Frostmane Troll
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junni Steelpass|r
    >>|cRXP_WARN_After turning in the three items, you will receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T135291:0|t[Devastate]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])