RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Victory Rush - 1 (Elwynn Forest)
#title Victory Rush

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
<< Alliance Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Victory Rush - 3 (Dun Morogh)
#title Victory Rush

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
<< Alliance Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Victory Rush - 3 (Shadowglen)
#title Victory Rush

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Blood Frenzy - 10 (Elwynn Forest)
#title Blood Frenzy

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Blood Frenzy - 10 (Dun Morogh)
#title Blood Frenzy

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Blood Frenzy - 10 (Teldrassil)
#title Blood Frenzy

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Furious Thunder - 6 (Elwynn Forest)
#title Furious Thunder

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Furious Thunder - 9 (Dun Morogh)
#title Furious Thunder

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Kill |cRXP_ENEMY_Fyodi|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r
    >>|cRXP_WARN_Even though |cRXP_ENEMY_Fyodi|r shows as an elite, his health, damage, and armor values are that of a standard mob|r
    >>|cRXP_WARN_Be careful as he casts|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-80 melee damage on hit. Only castable at range)|r
    >>|cRXP_WARN_NOTE: The|r |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r |cRXP_WARN_can also drop off every rare mob in Dun Morogh, as well as |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Mangeclaw|r, and|r |cRXP_ENEMY_Old Icebeard|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r
    >>|cRXP_WARN_NOTE: The|r |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r |cRXP_WARN_can also drop off every rare mob in Dun Morogh, as well as |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Mangeclaw|r, and|r |cRXP_ENEMY_Old Icebeard|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Vagash
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Frenzied Assault - 10 (Stormwind)
#title Frenzied Assault

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Frenzied Assault - 10 (Ironforge)
#title Frenzied Assault

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Frenzied Assault - 10 (Teldrassil)
#title Frenzied Assault

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Endless Rage - 20 (Westfall)
#title Endless Rage

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Endless Rage - 16 (Darkshore)
#title Endless Rage

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Devastate - 8 (Elwynn Forest)
#title Devastate

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Devastate - 6 (Teldrassil)
#title Devastate

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Devastate - 6 (Dun Morogh)
#title Devastate

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

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Victory Rush - 2 (Durotar)
#title Victory Rush


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .accept 77588 >>Accept A Trial of Fitness << Troll
    .accept 77582 >>Accept A Trial of Fitness << Orc
    .target Frang
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Loot the |cRXP_PICK_Hidden Cache|r for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    >>|cRXP_WARN_Walk around past|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_and jump down to reach the chest|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 77588 >>Turn in A Trial of Fitness << Troll
    .turnin 77582 >>Turn in A Trial of Fitness << Orc
    .target Frang

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Victory Rush - 2 (Mulgore)
#title Victory Rush


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .accept 77651 >>Accept Into the Brambles
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Loot the |cRXP_PICK_Bristleback Loot Cache|r for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 77651 >>Turn in Into the Brambles
    .target Harutt Thunderhorn

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Victory Rush - 2 (Tirisfal)
#title Victory Rush

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .accept 77668 >>Accept The Lost Rune
    .target Dannal Stern
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Loot the |cRXP_PICK_Lost Stache|r inside the cave for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Turn in The Lost Rune
    .target Dannal Stern

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Furious Thunder - 2 (Durotar)
#title Furious Thunder

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Sarkoth
    .train 403476,1
step
    #season 2
    .train 403476 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Furious Thunder - 10 (Tirisfal)
#title Furious Thunder


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>Kill |cRXP_ENEMY_Gillgar|r. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    >>|cRXP_WARN_This is a level 7 elite|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Frenzied Assault - 10 (Orgrimmar)
#title Frenzied Assault


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamja|r and |cRXP_FRIENDLY_Gru'ark|r
    +Kill |cRXP_ENEMY_Gru'ark|r when he becomes hostile
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamja|r
    >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Frenzied Assault - 10 (Thunder Bluff)
#title Frenzied Assault


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r and |cRXP_FRIENDLY_Mooart|r on the Spirit Rise
    +Kill |cRXP_FRIENDLY_Mooart|r when he becomes hostile
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r
    >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Frenzied Assault - 10 (Tirisfal)
#title Frenzied Assault


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Talk to |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Blueheart|r (downstairs) inside the inn
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Kill |cRXP_ENEMY_Blueheart|r, then talk to |cRXP_FRIENDLY_Penny|r upstairs
    .gossipoption 110751 >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Devastate - 8 (Durotar)
#title Devastate


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>Kill |cRXP_ENEMY_Kolkar Drudges|r and |cRXP_ENEMY_Kolkar Outrunners|r. Loot them for a |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>Kill |cRXP_ENEMY_Dustwind Harpies|r. Loot them for a |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
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
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahi|r
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Devastate - 8 (Mulgore)
#title Devastate


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Kill |cRXP_ENEMY_Palemane Gnolls|r. Loot them for a |cRXP_LOOT_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
    .loop 25,Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for a |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #season 2
    .loop 25,Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vateya|r in Bloodhoof Village
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475
step
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Devastate - 8 (Tirisfal)
#title Devastate


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>Kill |cRXP_ENEMY_Duskbats|r. Loot them for a |cRXP_LOOT_Severed Bat Head|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Kill |cRXP_ENEMY_Rot Hide Gnolls|r. Loot them for a |cRXP_LOOT_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Kill |cRXP_ENEMY_Murlocs|r. Loot them for a |cRXP_LOOT_Severed Murloc Head|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorac|r in the Undercity
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Blood Frenzy - 8 (Durotar)
#title Blood Frenzy


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>Find and duel the |cRXP_FRIENDLY_Wandering Swordsman|r. Loot the |cRXP_PICK_Box|r he drops for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    >>|cRXP_ENEMY_He patrols all over the zone and is difficult to find. The waypoint guides you past known spawn locations|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Blood Frenzy - 8 (Mulgore)
#title Blood Frenzy


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>Find and duel the |cRXP_FRIENDLY_Wandering Swordsman|r. Loot the |cRXP_PICK_Box|r he drops for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    >>|cRXP_ENEMY_He patrols all over the zone and is difficult to find. The waypoint guides you past known spawn locations|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Blood Frenzy - 8 (Tirisfal)
#title Blood Frenzy


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>Find and duel the |cRXP_FRIENDLY_Wandering Swordsman|r. Loot the |cRXP_PICK_Box|r he drops for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    >>|cRXP_ENEMY_He spawns just east of the Balnir Farmstead|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Quick Strike - 12 (Loch Modan)
#title Quick Strike

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Kill |cRXP_ENEMY_Troggs|r. Loot them for a |cRXP_LOOT_Skull-Shaped Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Kill a |cRXP_ENEMY_Stonesplinter Skullthumper|r
    >>|cRXP_WARN_During combat it'll give you a nice thumpin' which will turn the |cRXP_LOOT_Skull-Shaped Geode|r into a|r |T236489:0|t[|cRXP_LOOT_Cracked Skull-Shaped Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>|cRXP_WARN_Use the|r |T236489:0|t[|cRXP_LOOT_Cracked Skull-Shaped Geode|r] |cRXP_WARN_to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Endless Rage - 15 (The Barrens)
#title Endless Rage


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Click the |cRXP_PICK_Horde Warbanner|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fly to Ratchet
    .target Devrak
step
    #completewith next
    .subzone 385 >>Travel to Northwatch Hold
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>Click the |cRXP_PICK_Alliance Warbanner|r
    >>Kill |cRXP_ENEMY_Lieutenant Stonebrew|r as he spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Endless Rage - 15 (Silverpine Forest)
#title Endless Rage


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_Grouping up is recommended as you have to kill a level 17 elite|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>Attack the |cRXP_ENEMY_Webbed Victim|r and kill the |cRXP_ENEMY_Lost Adventurer|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_WARN_You have to burst the|r |cRXP_ENEMY_Webbed Victim|r |cRXP_WARN_since he regains health every few seconds|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Quick Strike - 20 (Darkshore)
#title Quick Strike

step << Warrior
    .goto Darkshore,48.2,15.6,70,0
    .goto Darkshore,50.2,12.6
    >>Kill |cRXP_ENEMY_Paxnozz|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]
    >>|cRXP_ENEMY_Paxnozz|r |cRXP_WARN_is a level 20 elite found patrolling in the water. Look for help before attemping to kill it|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .train 425443,1
step << Warrior
    .train 425443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Blood Surge - 30 (Azeroth)

-- Blood Surge

--x shiek better coordinates

step
    .train 416004,1
    #completewith IllegibleReciple
    .zone Arathi Highlands >>Travel to |cFFfa9602Arathi Highlands|r
step
    #completewith IllegibleReciple
    +|cRXP_WARN_Grouping up is recommended as you have to kill level 36-40 elites|r
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Ogres|r inside Stromgarde Keep. Loot them for |T237451:0|t[|cRXP_LOOT_Illegible Recipe|r]. Use it to start the quest
    >>|cRXP_WARN_Alternatively you can kill the|r |cRXP_ENEMY_Crushridge Ogres|r |cRXP_WARN_in Alterac Mountains as they are slightly lower level|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>Accept Anyone Can Cook
    .mob Boulderfist Shaman
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
step
    .train 416004,1
    .goto Arathi Highlands,57.45,72.00,15,0
    .goto Arathi Highlands,57.33,73.65,15,0
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Turn in Anyone Can Cook
    .accept 79677 >>Accept A Quick Grocery Run
    .target Skonk
step
    #completewith next
    .subzone 328 >>Travel to the sunken ship in |cFFfa9602The Drowned Reef|r just south of |cFFfa9602Faldir's Cove|r
step
    .train 416004,1
    .goto Arathi Highlands,20.8,82.2
    >>Click the |cRXP_PICK_Sealed Barrel|r located inside the deepest section of the sunken ship for |cRXP_LOOT_Smuggler's Spice Blend|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>Kill |cRXP_ENEMY_Gryphons|r. Loot them for their |cRXP_LOOT_Hybrid Haunch|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros
    .mob Granistad
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>Travel to |cFFfa9602Swamp of Sorrows|r
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>Kill |cRXP_ENEMY_Deathstrike Tarantulas|r. Loot them for |cRXP_LOOT_Viscous Venom|r
    >>|cRXP_WARN_They can be found in the South-Eastern area of Swamp of Sorrows|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith next
    .zone Badlands >>Travel to |cFFfa9602Badlands|r
step
    .train 416004,1
    .goto Badlands,41.2,27.8
    >>Click on the |cRXP_PICK_Tapped Shadowforge Keg|r in the basement of Angor Fortress for |cRXP_LOOT_Balmy Brew|r
    >>|cRXP_WARN_Keep maximum distance from|r |cRXP_ENEMY_Ambassador Infernus|r |cRXP_WARN_to avoid agro. This may not be possible if you are below level 40|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Arathi Highlands >>Travel to |cFFfa9602Arathi Highlands|r
step
    .train 416004,1
    .goto Arathi Highlands,57.45,72.00,15,0
    .goto Arathi Highlands,57.33,73.65,15,0
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79677 >>Turn in A Quick Grocery Run
    .accept 79678 >>Accept Taste Testing
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>Defeat |cRXP_ENEMY_Skonk|r as he becomes hostile
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79678 >>Turn in Taste Testing
    .target Skonk
step
    .train 416004 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Surge|r] to learn |T236306:0|t[Blood Surge]
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Focused Rage - 35 (Arathi Highlands)
#title Focused Rage

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_Considering looking for additional party members before trying to acquire the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_as it requires killing a level 35 elite and 2 mobs at the same time|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >> Travel to |cFFfa9602Arathi Highlands|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for the |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r]
    >>|cRXP_WARN_You may also buy the|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_WARN_from the Auction House|r
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>Enter the Witherbark Cave
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >> |cRXP_WARN_Use the|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_WARN_at the |cRXP_PICK_Gong|r inside the cave|r
    .use 216483 >>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Witherbark Goliath|r (lvl 35 elite) as well as 2 additional mobs|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>Kill the |cRXP_ENEMY_Witherbark Goliath|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r]
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Focused Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Focused Rage]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Intervene - 24 (Thousand Needles)
#title Intervene

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_You must be at least level 24 before you can acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_You must train|r |T132357:0|t[Shield Bash] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_You must train|r |T135358:0|t[Execute] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_You must train|r |T132357:0|t[Shield Bash] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_Before you head out to Thousand Needles, ensure you have the following (their strength doesn't matter)|r
    +A one-handed weapon
    +A shield
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >> Travel to the Rustmaul Digsite in |cFFfa9602Thousand Needles|r
step
    #completewith next
    +|cRXP_WARN_Ensure you have equiped your one-handed weapon and shield|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Cast|r |T135358:0|t[Execute] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_Cast|r |T136080:0|t[Taunt] |cRXP_WARN_on the |cRXP_ENEMY_Combat Dummy|r, then move across to the next|r |cRXP_ENEMY_Combat Dummy|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_Cast|r |T132357:0|t[Shield Bash] |cRXP_WARN_on the|r |cRXP_ENEMY_Combat Dummy|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>Open the |cRXP_PICK_Warrior's Bounty|r chest. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r] |cRXP_WARN_to train|r |T132365:0|t[Intervene]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Rallying Cry - 40 (Badlands)
#title Rallying Cry

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>Travel to Badlands
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Badlands
    >>Defeat the |cRXP_ENEMY_Wandering Swordsman|r in a duel
    >>Open the |cRXP_PICK_Swordsman's Reward|r it drops on the ground. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Commander|r]
    >>|cRXP_WARN_Note: The |cRXP_FRIENDLY_Wandering Swordsman|r can spawn throughout many locations in Badlands|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Commander|r] |cRXP_WARN_to learn|r |T132351:0|t[Rallying Cry]
    .use 213110
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warrior SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Rampage
-- for phase 3

-- Rampage

-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warrior SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Sword and Board
-- for phase 3

-- Sword and Board

-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warrior SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Wrecking Crew
-- for phase 3

-- Wrecking Crew

-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warrior SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Shield Mastery
-- for phase 3

-- Shield Mastery

-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warrior SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Taste for Blood
-- for phase 3

-- Taste for Blood

-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warrior SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Vigilance
-- for phase 3

-- Vigilance

-- ]])
