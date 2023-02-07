local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Shadowglen
#version 1
#group RestedXP Alliance 1-20
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +You have selected a guide meant for Night Elves. You should choose the same starter zone that you start in
step
    .goto Teldrassil,58.7,44.4
.target Conservator Ilthalaine
>>Talk to |cFF00FF25Conservator Ilthalaine|r
    .accept 456 >> Accept The Balance of Nature
step
    #sticky
    #label balance1
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
step
    .xp 2
step
.target Melithar Staghelm
>>Talk to |cFF00FF25Melithar Staghelm|r
    .accept 458 >> Accept The Woodland Protector
	.goto Teldrassil,59.924,42.474
.target Dirania Silvershine
>>Talk to |cFF00FF25Dirania Silvershine|r
    .accept 4495 >> Accept A Good Friend
    .goto Teldrassil,60.899,41.961
step << Hunter
    #era
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Grind until you are 610xp away from level 4 (790/1400)
step << Hunter
    #som
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >> Grind until you are 755xp away from level 4 (645/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
>>Talk to |cFF00FF25Iverron|r
    .turnin 4495 >> Turn in A Good Friend
.target Iverron
    .accept 3519 >> Accept A Friend in Need
step << Hunter
    #sticky
    #completewith next
    .hs >> Hearth back to the starting zone
step << Hunter
    .goto Teldrassil,57.9,45.1
>>Talk to |cFF00FF25Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
.target Tarindrella
    .accept 459 >> Accept The Woodland Protector
step
    #requires balance1
	.goto Teldrassil,58.7,44.2
>>Talk to |cFF00FF25Conservator Ilthalaine|r
    .turnin 456 >> Turn in The Balance of Nature
.target Conservator Ilthalaine
    .accept 457 >> Accept The Balance of Nature
	.accept 3116 >> Accept Simple Sigil << Warrior
	.accept 3117 >> Accept Etched Sigil << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Accept Hallowed Sigil << Priest
	.accept 3120 >> Accept Verdant Sigil << Druid
step << Warrior
    .goto Teldrassil,59.3,41.1
	.vendor >> Go inside and vendor trash
step << Warrior
	.goto Teldrassil,59.6,38.4
.target Alyissia
>>Talk to |cFF00FF25Alyissia|r
	.turnin 3116 >> Turn in Simple Sigil
	.trainer >> Run up the stairs behind the vendors. Train Battle Shout from the trainer
step << !Hunter
    .goto Teldrassil,59.8,34.1
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
step << !Hunter
    .goto Teldrassil,54.593,32.992
>>Talk to |cFF00FF25Iverron|r
    .turnin 4495 >> Turn in A Good Friend
.target Iverron
    .accept 3519 >> Accept A Friend in Need
step << !Hunter
    #sticky
    #completewith next
    .hs >> Hearth back to the starting zone
step << !Hunter
    .goto Teldrassil,57.9,45.1
>>Talk to |cFF00FF25Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
.target Tarindrella
    .accept 459 >> Accept The Woodland Protector
step << !Hunter
    .goto Teldrassil,58.6,44.3
.target Conservator Ilthalaine
>>Talk to |cFF00FF25Conservator Ilthalaine|r
    .turnin 457 >> Turn in The Balance of Nature
step
    .goto Teldrassil,60.899,41.961
>>Talk to |cFF00FF25Dirania Silvershine|r
    .turnin 3519 >> Turn in A Friend in Need
.target Dirania Silvershine
    .accept 3521 >> Accept Iverron's Antidote
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.3,41.1
	.vendor >> Go inside, vendor trash and buy 3 stacks of arrows
step
    .goto Teldrassil,57.8,41.7
.target Gilshalan Windwalker
>>Talk to |cFF00FF25Gilshalan Windwalker|r
    .accept 916 >> Accept Webwood Venom
step << Hunter
    #era
    .xp 4-40
step << Hunter
    #som
    .xp 4-50
step << Hunter
    .goto Teldrassil,58.6,40.4
    >>Climb the big tree and talk to the Hunter trainer
    .train 1978 >>Train Serpent Sting
.target Ayanna Everstride
>>Talk to |cFF00FF25Ayanna Everstride|r
    .turnin 3117 >> Turn in Etched Sigil
step
    .goto Teldrassil,58.1,36.7
	>> Loot the yellow flowers around the lake
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
	>>Kill Spiders. Loot them for Ichor and Sacs
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
step
    .goto Teldrassil,55.0,43.7
	>> Kill Grellkins. Loot them for Mushrooms and Moss
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
step
    .goto Teldrassil,57.8,45.1
.target Tarindrella
>>Talk to |cFF00FF25Tarindrella|r
    .turnin 459 >> Turn in The Woodland Protector
step
    .goto Teldrassil,60.899,41.961
>>Talk to |cFF00FF25Dirania Silvershine|r
    .turnin 3521 >> Turn in Iverron's Antidote
.target Dirania Silvershine
    .accept 3522 >> Accept Iverron's Antidote
step << !Priest
    .goto Teldrassil,59.3,41.1
	.vendor >> Go inside and vendor trash << !Hunter
	.vendor >> Go inside and vendor trash. Make sure you have at least 3 or 4 stacks of arrows for the next segment << Hunter
step << Warrior
    .goto Teldrassil,59.6,38.4
	.trainer >> Train your level 4 spells
step << Priest
    .goto Teldrassil,59.5,41.1
	.vendor >> Go inside, then upstairs and vendor trash
step << Priest
	.goto Teldrassil,59.2,40.4
.target Shanda
>>Talk to |cFF00FF25Shanda|r
	.turnin 3119 >> Turn in Hallowed Sigil
	.trainer >> Train your level 4 spells
step
    .goto Teldrassil,57.8,41.7
>>Talk to |cFF00FF25Gilshalan Windwalker|r
    .turnin 916 >> Turn in Webwood Venom
.target Gilshalan Windwalker
    .accept 917 >> Accept Webwood Egg
step << Druid
    .goto Teldrassil,58.626,40.287
	>>Run up the big ramp and into the small room
.target Mardant Strongoak
>>Talk to |cFF00FF25Mardant Strongoak|r
	.turnin 3120 >> Turn in Verdant Sigil
	.train 8921 >>Train Moonfire
step
    .goto Teldrassil,54.593,32.992
.target Iverron
>>Talk to |cFF00FF25Iverron|r
    .turnin 3522 >> Turn in Iverron's Antidote
step
    .goto Teldrassil,57.0,26.4
	>>Loot a spider egg at the back of the spider cave
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
	.goto Teldrassil,57.8,41.7,150    >>Die on purpose and respawn at the graveyard
step
	#hardcore
	#completewith next
	+Logout skip on the ledge behind the eggs. Move your character until it looks like they're floating, then log out, and back in.
	>>If you fall down, just run out the cave normally to the quest turn in
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLICK HERE for reference
step
	.goto Teldrassil,57.8,41.7
>>Talk to |cFF00FF25Gilshalan Windwalker|r
    .turnin 917 >> Turn in Webwood Egg
.target Gilshalan Windwalker
    .accept 920 >> Accept Tenaron's Summons
step
    .goto Teldrassil,59.1,39.4
    >>Take the ramp upwards and climb the big tree
>>Talk to |cFF00FF25Tenaron Stormgrip|r
    .turnin 920 >> Turn in Tenaron's Summons
.target Tenaron Stormgrip
    .accept 921 >> Accept Crown of the Earth
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	>>Fill the empty vial at the moonwell
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
step
    #requires vial1
    #sticky
    #completewith next
    .deathskip >> Die and respawn at the graveyard
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
.target Conservator Ilthalaine
>>Talk to |cFF00FF25Conservator Ilthalaine|r
    .turnin 457 >> Turn in The Balance of Nature
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
.target Shanda
>>Talk to |cFF00FF25Shanda|r
    .accept 5622 >> Accept In Favor of Elune
step
    #requires vial1
    .goto Teldrassil,59.1,39.4
	>>Take the ramp upwards and climb the big tree
>>Talk to |cFF00FF25Tenaron Stormgrip|r
    .turnin 921 >> Turn in Crown of the Earth
.target Tenaron Stormgrip
    .accept 928 >> Accept Crown of the Earth
step
    .goto Teldrassil,61.2,47.6
.target Porthannius
>>Talk to |cFF00FF25Porthannius|r
    .accept 2159 >> Accept Dolanaar Delivery
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 6-11 Teldrassil
#version 1
#group RestedXP Alliance 1-20
#defaultfor NightElf
#next 11-16 Darkshore
step
    .goto Teldrassil,60.5,56.3
.target Zenn Foulhoof
>>Talk to |cFF00FF25Zenn Foulhoof|r
    .accept 488 >> Accept Zenn's Bidding
step
    #sticky
    #completewith zenn
    >>Kill spiders/cats/owls as you quest
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
    #sticky
	#completewith spiderLegs
    >>Collect 7 Small Spider Legs for a quest later
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
    .goto Teldrassil,56.1,57.8
.target Syral Bladeleaf
>>Talk to |cFF00FF25Syral Bladeleaf|r
    .accept 997 >> Accept Denalan's Earth
step
    .goto Teldrassil,55.9,57.3
.target Athridas Bearmantle
>>Talk to |cFF00FF25Athridas Bearmantle|r
    .accept 475 >> Accept A Troubling Breeze
step << Priest
    .goto Teldrassil,55.6,56.8
>>Talk to |cFF00FF25Laurna Morninglight|r
    .turnin 5622 >> Turn in In Favor of Elune
.target Laurna Morninglight
    .accept 5621 >> Accept Garments of the Moon
	.trainer >> Train your level 6 spells
step << Rogue
    .goto Teldrassil,55.51,57.14
	>>Go to the second floor of the treehouse
    .vendor >> Buy the level 3 thrown from Aldia. Equip it
step
    #era
    .goto Teldrassil,55.5,57.0
    >>Go to the top of the treehouse
.target Tallonkai Swiftroot
>>Talk to |cFF00FF25Tallonkai Swiftroot|r
   .accept 932 >> Accept Twisted Hatred
    .accept 2438 >> Accept The Emerald Dreamcatcher
step
    #som
    .goto Teldrassil,55.5,57.0
    >>Go to the top of the treehouse
.target Tallonkai Swiftroot
>>Talk to |cFF00FF25Tallonkai Swiftroot|r
    .accept 932 >> Accept Twisted Hatred << !Hunter
    .accept 2438 >> Accept The Emerald Dreamcatcher
step << Hunter
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Jeena. Otherwise, skip this step (you'll come back later)
    >>Buy arrows until your Quiver is full (1000 arrows)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >> Train your level 6 spells
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >> Train your level 6 spells
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Walking Stick (1)
step
    .goto Teldrassil,55.7,59.8
.target Innkeeper Keldamyr
>>Talk to |cFF00FF25Innkeeper Keldamyr|r
    .turnin 2159 >> Turn in Dolanaar Delivery
step << Hunter
    .goto Teldrassil,56.676,59.489
	.train 3044>> Train Arcane Shot
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >> Train your level 6 spells
step
    .goto Teldrassil,56.2,61.7
>>Talk to |cFF00FF25Corithras Moonrage|r
    .turnin 928 >> Turn in Crown of the Earth
.target Corithras Moonrage
    .accept 929 >> Accept Crown of the Earth
step << Druid
    .goto Teldrassil,57.6,60.6
    .train 2366 >> Train Herbalism
    >>You'll need 5 Earthroot for a quest later. You can ditch Herbalism once you get 5 Earthroot
step << Druid
    #completewith end
    >>Level Herbalism to 15 and try to find 5 Earthroot for a level 15 quest later
    .collect 2449,5
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Sentinel Shaya
    .goto Teldrassil,57.2,63.5
    .complete 5621,1 --Heal and fortify Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
>>Talk to |cFF00FF25Denalan|r
    .turnin 997 >> Turn in Denalan's Earth
.target Denalan
    .accept 918 >> Accept Timberling Seeds
    .accept 919 >> Accept Timberling Sprouts
step
    .goto Teldrassil,56.1,66.6
    >>Run around the lake killing timberling mobs, and looting sprouts on the ground
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.900,68.489
>>Talk to |cFF00FF25Denalan|r
    .turnin 918 >> Turn in Timberling Seeds
.target Denalan
    .accept 922 >> Accept Rellian Greenspyre
    .turnin 919 >> Turn in Timberling Sprouts
step
    .goto Teldrassil,68.0,59.6
	>>Loot the dresser inside the house
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.3,58.6
	>>Go upstairs in the house
>>Talk to |cFF00FF25Gaerolas Talvethren|r
    .turnin 475 >> Turn in A Troubling Breeze
.target Gaerolas Talvethren
    .accept 476 >> Accept Gnarlpine Corruption
step
    #label zenn
    .goto Teldrassil,63.4,58.1
	>>Fill the empty vial at the moonwell
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    .goto Teldrassil,63.1,61.0
    >>Finish off Zenn's Bidding
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
    #era
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >> Grind to level 7 +3500xp
step
    #som
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >> Grind to level 7 +2900xp
step
    .goto Teldrassil,60.5,56.3
.target Zenn Foulhoof
>>Talk to |cFF00FF25Zenn Foulhoof|r
    .turnin 488 >> Turn in Zenn's Bidding
step
	.goto Teldrassil,56.078,57.723
.target Sentinel Shayla Nightbreeze
.target Moon Priestess Amara
.target Syral Bladeleaf
.target Sentinel Kyra Starsong
>>Talk to |cFF00FF25Sentinel Kyra Starsong|r
-->>Talk to |cFF00FF25Syral Bladeleaf|r
-->>Talk to |cFF00FF25Moon Priestess Amara|r
-->>Talk to |cFF00FF25Sentinel Shayla Nightbreeze|r
    .accept 489 >> Accept Seek Redemption!
step
    .goto Teldrassil,55.9,57.3
.target Athridas Bearmantle
>>Talk to |cFF00FF25Athridas Bearmantle|r
    .turnin 476 >> Turn in Gnarlpine Corruption
step << Priest
    .goto Teldrassil,55.5,56.7
.target Laurna Morninglight
>>Talk to |cFF00FF25Laurna Morninglight|r
    .turnin 5621 >> Turn in Garments of the Moon
	.trainer >> Train your level 8 spells
step
    .goto Teldrassil,55.6,56.9
>>Talk to |cFF00FF25Tallonkai Swiftroot|r
    .turnin 2438 >> Turn in The Emerald Dreamcatcher
.target Tallonkai Swiftroot
    .accept 2459 >> Accept Ferocitas the Dream Eater
step << Hunter
	#completewith next
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (2s 85c) buy a Hornwood Recurve Bow from Jeena. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >>Buy arrows up to 800 total
step << Hunter
    .goto Teldrassil,56.676,59.489
	.trainer >> Train your level 8 spells
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >> Train your level 8 spells
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >> Train your level 8 spells
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (5s 4c) buy a Walking Stick from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Walking Stick (1)
step << Druid
    .goto Teldrassil,56.2,61.7
>>Talk to |cFF00FF25Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
.target Corithras Moonrage
    .accept 933 >> Accept Crown of the Earth
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >> Train your level 8 spells
step
    #sticky
	#completewith jewel
    >>Look for Fel Cones, usually located next to tree trunks
    .complete 489,1 --Collect Fel Cone (x3)
step
    #label mystics
    #sticky
    .goto Teldrassil,69.2,53.3
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
	>>Mystics share spawns with Gnarlpine Warriors. You may have to kill them to make the Mystics spawn
step
    #label jewel
	.goto Teldrassil,69.2,53.3
	>>Kill Ferocitas. Loot the Necklace
    .collect 8049,1,2459,2 --Gnarlpine Necklace (1)
    >>Right Click the Necklace to loot the Jewel
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
step
    #requires mystics
    .goto Teldrassil,58.7,55.7
    >>Finish off Seek Redemption!
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
.target Zenn Foulhoof
>>Talk to |cFF00FF25Zenn Foulhoof|r
    .turnin 489 >> Turn in Seek Redemption!
step << Hunter
    #era
    .goto Teldrassil,51.2,50.6
    >>Kill Lord Melenas. He can be located in many different spawnpoints of the cave, and is quite difficult
    .complete 932,1 --Collect Melenas' Head (x1)
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>Kill Lord Melenas. He can be located in many different spawnpoints of the cave, and is quite difficult
    .complete 932,1 --Collect Melenas' Head (x1)
step
    #softcore
	#completewith next
	.deathskip >>Die on purpose and respawn at the graveyard
step << !Druid
    .goto Teldrassil,56.2,61.7
.target Corithras Moonrage
>>Talk to |cFF00FF25Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
step
	#era/som
    .goto Teldrassil,56.2,61.7
.target Corithras Moonrage
>>Talk to |cFF00FF25Corithras Moonrage|r
    .accept 933 >> Accept Crown of the Earth
step
	#era/som
	.goto Teldrassil,42.54,76.08
	>>Click on the big purple plant
	.accept 930 >> Accept The Glowing Fruit
step
	#era/som
	#label spiderLegs
	.goto Teldrassil,42.36,67.26
	>>Fill the empty vial at the moonwell
	.complete 933,1
step
	#era/som
    >>Finish off collecting 7 Small Spider Legs
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
	#era/som
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>Die on purpose and respawn at the Dolanaar graveyard, make sure to die east of the moonwell, otherwise you might end up in Darnassus
step
	#era/som
    .goto Teldrassil,56.2,61.7
>>Talk to |cFF00FF25Corithras Moonrage|r
    .turnin 933 >> Turn in Crown of the Earth
.target Corithras Moonrage
    .accept 7383 >> Accept Crown of the Earth
step
	#era/som
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Train Cooking
.target Zarrin
>>Talk to |cFF00FF25Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
step
    .goto Teldrassil,55.7,59.8
    .home >> Set your Hearthstone to Dolanaar
step << Warrior/Rogue
    .goto Teldrassil,55.2,56.8
    .train 3273 >> Train First Aid
step
    #som
    .goto Teldrassil,55.5,56.9
.target Tallonkai Swiftroot
>>Talk to |cFF00FF25Tallonkai Swiftroot|r
    .turnin 932 >> Turn in Twisted Hatred << !Hunter
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
step
    #era
    .goto Teldrassil,55.5,56.9
.target Tallonkai Swiftroot
>>Talk to |cFF00FF25Tallonkai Swiftroot|r
    .turnin 932 >> Turn in Twisted Hatred
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
step
    .goto Teldrassil,51.9,56.4
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
.target Moon Priestess Amara
>>Talk to |cFF00FF25Moon Priestess Amara|r
    .accept 487 >> Accept The Road to Darnassus
step
    .goto Teldrassil,46.6,53.0
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
step << Druid
    .goto Teldrassil,51.9,56.4
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
.target Moon Priestess Amara
>>Talk to |cFF00FF25Moon Priestess Amara|r
    .turnin 487 >> Turn in The Road to Darnassus
step
	#era/som
    .goto Teldrassil,38.3,34.3
.target Sentinel Arynia Cloudsbreak
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
	#era/som
    .goto Teldrassil,38.4,34.1
	>>Fill the empty phial at the moonwell
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#era/som
    #completewith xp10
	#label harpies
    >>Kill Harpies. Be careful of the Matriarchs as they heal and do a lot of damage. Try to burst them
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
	#era/som
    .goto Teldrassil,34.6,28.9
    .accept 931 >> Accept The Shimmering Frond
step << Hunter
	#era/som
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.6,31.7
    >>Start the escort quest
.target Mist
>>Talk to |cFF00FF25Mist|r
    .accept 938 >> Accept Mist
step << Hunter
    #era
    #sticky
    #label xp10
    .xp 10-2670 >> Grind until you are 2670 xp off level 10 (3830/6500)
    >>Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus, you will have another opportunity to finish those quests later
step << Hunter
    #era/som
    #sticky
    #label xp10
    .xp 10-3330 >> Grind until you are 3330 xp off level 10 (3170/6500)
    >>Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus, you will have another opportunity to finish those quests later
step << Hunter
	#era/som
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.3,34.4
.target Sentinel Arynia Cloudsbreak
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Turn in Mist
step << Hunter
	#era/som
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.3,34.4
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
.target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step << !Hunter
	#era/som
    #label mist1
    .goto Teldrassil,31.6,31.7
    >>Start the escort quest
.target Mist
>>Talk to |cFF00FF25Mist|r
    .accept 938 >> Accept Mist
step << !Hunter
	#era/som
    .goto Teldrassil,38.3,34.4
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
.target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
    .turnin 938 >> Turn in Mist
step << !Hunter
    #era
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#som
    #phase 1-2
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#som
    #phase 3-6
	.goto Teldrassil,38.6,58.0
	>>Finish off collecting 7 Small Spider Legs
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#som
	#phase 3-6
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>If you're still behind on xp do the harpy quest north
step << !Druid
	#som
	#phase 3-6
	#label xp10
	.xp 10-3300
step << !Rogue
	#era/som
    #requires xp10
    #completewith next
    .deathskip >>Die on purpose and respawn at the Darnassus graveyard
step << !Rogue
    #requires xp10
	>>Run to Darnassus
    .goto Darnassus,38.3,21.4
>>Talk to |cFF00FF25Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
.target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << !Hunter !Rogue
	#era/som
    .goto Darnassus,34.7,9.0
    >>Climb to the top of the tree house
.target Arch Druid Fandral Staghelm
>>Talk to |cFF00FF25Arch Druid Fandral Staghelm|r
    .turnin 940 >> Turn in Teldrassil
	.isOnQuest 940
step << Druid
    .goto Darnassus,35.2,8.0
    >>Head to the middle level of the tree house
.target Mathrengyl Bearwalker
>>Talk to |cFF00FF25Mathrengyl Bearwalker|r
    .accept 5921 >> Accept Moonglade
	.trainer >> Train your level 10 spells
step << !Rogue
    .goto Darnassus,36.5,86.0
.target Priestess A'moora
>>Talk to |cFF00FF25Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Druid
    .goto Moonglade,56.2,30.8
    >>Open your spellbook and teleport to Moonglade
>>Talk to |cFF00FF25Dendrite Starblaze|r
    .turnin 5921 >> Turn in Moonglade
.target Dendrite Starblaze
    .accept 5929 >> Accept Great Bear Spirit
step << Druid
    .goto Moonglade,39.1,27.5
    >>Talk to the bear spirit just outside Nighthaven
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
step << Druid
    .goto Moonglade,56.2,30.5
    >>Use your teleport spell to get back to the quest giver
>>Talk to |cFF00FF25Dendrite Starblaze|r
    .turnin 5929 >> Turn in Great Bear Spirit
.target Dendrite Starblaze
    .accept 5931 >> Accept Back to Darnassus
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >> Hearth to Dolanaar
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >> Buy 4 stacks of level 10 arrows. Equip them as soon as you get to level 10
step
	#som
	#phase 3-6
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Train Cooking
.target Zarrin
>>Talk to |cFF00FF25Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
step
	#som
	#phase 3-6
    .goto Teldrassil,51.9,56.4
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
.target Moon Priestess Amara
>>Talk to |cFF00FF25Moon Priestess Amara|r
    .turnin 487 >> Turn in The Road to Darnassus
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.7,59.6
.target Dazalar
>>Talk to |cFF00FF25Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.train 13165 >> Train your level 10 spells
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .complete 6063,1 --Tame a Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
>>Talk to |cFF00FF25Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
.target Dazalar
    .accept 6101 >> Accept Taming the Beast
step
	#era/som
    .goto Teldrassil,56.1,61.7
>>Talk to |cFF00FF25Corithras Moonrage|r
    .turnin 7383 >> Turn in Crown of the Earth
.target Corithras Moonrage
    .accept 935 >> Accept Crown of the Earth
step
	#era/som
	.goto Teldrassil,60.9,68.4
.target Denalan
>>Talk to |cFF00FF25Denalan|r
    .turnin 931 >> Turn in The Shimmering Frond
    .turnin 930 >> Turn in The Glowing Fruit
step
	#era/som
	.goto Teldrassil,60.9,68.4
.target Denalan
>>Talk to |cFF00FF25Denalan|r
	.turnin 927 >> Turn in The Moss-twined Heart
    .isOnQuest 927
step
	#era/som
	.goto Teldrassil,60.9,68.4
	>>Click on the plant vase right next to the quest giver
	.turnin 941 >> Turn in Planting the Heart
	.isQuestTurnedIn 927
step << Hunter
	#era/som
    .goto Teldrassil,62.6,72.2
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
step
    #label L10
    .xp 10
step
	#era/som
    #softcore
	#sticky
    #completewith next
    .deathskip >> Die and respawn at the graveyard
step << Priest
    .goto Teldrassil,55.5,56.7
	.trainer >> Train your level 10 spells
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >> Train your level 10 spells
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >> Train your level 10 spells
step << Hunter
    .goto Teldrassil,56.7,59.6
.target Dazalar
>>Talk to |cFF00FF25Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your level 10 spells
step << Hunter
    .goto Teldrassil,59.9,58.8
    .complete 6063,1 --Tame a Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
>>Talk to |cFF00FF25Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
.target Dazalar
    .accept 6101 >> Accept Taming the Beast
step << Hunter
    .goto Teldrassil,62.6,72.2
    .complete 6101,1 --Tame a Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
>>Talk to |cFF00FF25Dazalar|r
    .turnin 6101 >> Turn in Taming the Beast
.target Dazalar
    .accept 6102 >> Accept Taming the Beast
step << Hunter
    .goto Teldrassil,64.7,66.7
    .complete 6102,1 --Tame a Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
>>Talk to |cFF00FF25Dazalar|r
    .turnin 6102 >> Turn in Taming the Beast
.target Dazalar
    .accept 6103 >> Accept Training the Beast
step << Warrior
    .goto Teldrassil,56.221,59.198
.target Kyra Windblade
.target Moon Priestess Amara
>>Talk to |cFF00FF25Moon Priestess Amara|r
-->>Talk to |cFF00FF25Kyra Windblade|r
    .accept 1684 >> Accept Elanaria
step << Rogue
    .goto Teldrassil,56.2,60.0
.target Jannok Breezesong
>>Talk to |cFF00FF25Jannok Breezesong|r
    .accept 2241 >> Accept The Apple Falls
step << Hunter
    .goto Teldrassil,56.3,59.5
    .money <0.0504
    >>Buy a staff from the vendor, you'll equip it later.
    >>Skip this step if you happened to find a staff from a mob
    .collect 2495,1
step << !Druid
    .goto Teldrassil,51.8,56.4
.target Moon Priestess Amara
>>Talk to |cFF00FF25Moon Priestess Amara|r
    .turnin 487 >> Turn in The Road to Darnassus
step << Rogue
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Once you get past the furbolg area, die on purpose and respawn at the Darnassus graveyard
step << Rogue
    .goto Darnassus,38.3,21.4
>>Talk to |cFF00FF25Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
.target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << Rogue
    .goto Darnassus,34.7,9.0
    >>Climb to the top of the tree house
>>Talk to |cFF00FF25Arch Druid Fandral Staghelm|r
    .turnin 935 >> Turn in Crown of the Earth
    .turnin 940 >> Turn in Teldrassil
.target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << Rogue
    .goto Darnassus,36.8,21.8
>>Talk to |cFF00FF25Syurna|r
    .turnin 2241 >> Turn in The Apple Falls
.target Syurna
    .accept 2242 >> Accept Destiny Calls
step << Rogue
    .goto Darnassus,36.5,86.0
.target Priestess A'moora
>>Talk to |cFF00FF25Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    .train 2981 >> Tame a Strigid Hunter and learn claw rank 2
step
    .goto Teldrassil,43.1,32.9
    >>Exit Darnassus << Rogue
	>>Kill timberling mobs around the river
    .complete 923,1 --Collect Mossy Tumor (x5)
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0
    .goto Teldrassil,37.9,25.1
    .goto Teldrassil,40.7,25.4
    >>Kill Lady Sathrah, she has 3 possible spawn locations
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>Pick pocket Sethir the Ancient, he walks along the big tree branch
    >>You have to be sneaky, he hits hard and summon a bunch of adds if you fight him
    .complete 2242,1
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.3
.target Sentinel Arynia Cloudsbreak
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #sticky
	#label harpies2
    >>Kill Harpies
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,31.6,31.7
    >>Start the escort quest
.target Mist
>>Talk to |cFF00FF25Mist|r
    .accept 938 >> Accept Mist
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.4
.target Sentinel Arynia Cloudsbreak
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Turn in Mist
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
>>Talk to |cFF00FF25Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
.target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step
    #softcore
	#completewith next
    .deathskip >>Die and respawn at the Darnassus graveyard
step
    .goto Darnassus,70.679,45.379
.target Mydrannul
>>Talk to |cFF00FF25Mydrannul|r
    .accept 6344 >> Accept Nessa Shadowsong
step
	.abandon 927 >> Abandon The Moss-twined Heart. You never have an opportunity to turn it in
step << Warrior
    .goto Darnassus,57.4,34.8
>>Talk to |cFF00FF25Elanaria|r
    .turnin 1684 >> Turn in Elanaria
.target Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18
    >>The path to Vorlus Vilehoof starts here
step << Warrior
    .goto Teldrassil,47.2,63.7
    .complete 1683,1 --Collect Horn of Vorlus (x1)
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Die on purpose after you get past the furbolg area and respawn at Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
.target Elanaria
>>Talk to |cFF00FF25Elanaria|r
    .turnin 1683 >> Turn in Vorlus Vilehoof
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    .goto Darnassus,35.1,8.6
>>Talk to |cFF00FF25Mathrengyl Bearwalker|r
    .turnin 5931 >> Turn in Back to Darnassus
.target Mathrengyl Bearwalker
    .accept 6001 >> Accept Body and Heart
step
    .goto Darnassus,34.814,9.255
>>Talk to |cFF00FF25Arch Druid Fandral Staghelm|r
    .turnin 935 >> Turn in Crown of the Earth
    .turnin 940 >> Turn in Teldrassil << Hunter
.target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << Hunter
    .goto Darnassus,40.3,8.8
.target Jocaste
>>Talk to |cFF00FF25Jocaste|r
    .turnin 6103 >> Turn in Training the Beast
step << Rogue
    .goto Darnassus,36.8,21.8
.target Syurna
>>Talk to |cFF00FF25Syurna|r
    .turnin 2242 >> Turn in Destiny Calls
step
    .goto Darnassus,38.184,21.639
.target Rellian Greenspyre
>>Talk to |cFF00FF25Rellian Greenspyre|r
    .turnin 923 >> Turn in Tumors
step << Rogue
    .goto Darnassus,62.68,65.58
	>>Go to the second floor of the building
    .vendor >> Buy the level 11 thrown from Turian. Equip it when you're level 11
step
    .goto Darnassus,36.9,85.8
>>Talk to |cFF00FF25Priestess A'moora|r
    .turnin 2518 >> Turn in Tears of the Moon
.target Priestess A'moora
    .accept 2520 >> Accept Sathrah's Sacrifice
step
    .goto Darnassus,39.7,85.8
	>>Use Sathrah's Sacrifice in your bags at the fountain
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,36.653,85.930
.target Priestess A'moora
>>Talk to |cFF00FF25Priestess A'moora|r
    .turnin 2520 >> Turn in Sathrah's Sacrifice
step << Druid
    .goto Darnassus,48.0,68.6
    .train 2366 >> Train herbalism
    >>You'll need 5 Earthroot for a quest later, you can ditch Herbalism once you get 5 Earthroot
step << Hunter/Warrior/Priest
    .goto Darnassus,57.8,46.6
    .train 227 >>Train staves
    >>Equip a staff if you have one in your bags << Hunter
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
	.vendor >> Buy a Laminated Recurve Bow from Ariyell, as well as level 10 arrows if you have money. Equip it
	.collect 2507,1
step << Warrior
    .goto Darnassus,58.76,44.48
	.money <0.3022
    >> Buy a Quarter Staff from Ariyell if you have money. Equip it at level 11
	.collect 854,1
step << Warrior
    .goto Darnassus,58.76,44.48
	.money <0.2023
    >> Buy a Cutlass from Ariyell if you have money and couldn't afford the Quarter Staff. Equip it
	.collect 851,1
step
    #completewith next
    .goto Darnassus,30.41,41.40
    .goto Teldrassil,56.3,92.3,175 >> Go to Ruth'theran Village by taking the purple portal next to the bank
step
    .goto Teldrassil,56.3,92.3
>>Talk to |cFF00FF25Nessa Shadowsong|r
    .turnin 6344 >> Turn in Nessa Shadowsong
.target Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step
    .goto Teldrassil,58.399,94.016
>>Talk to |cFF00FF25Vesprystus|r
    .turnin 6341 >> Turn in The Bounty of Teldrassil
.target Vesprystus
    .accept 6342 >> Accept Flight to Auberdine
step
    .fly Darkshore >> Fly to Darkshore
]])
