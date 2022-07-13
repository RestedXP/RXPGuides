RXPGuides.RegisterGuide([[
#tbc
#wotlk
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
    .accept 456 >> Accept The Balance of Nature
step
    #sticky
    #label balance1
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
step
    .xp 2 >> Grind to level 2
step
    .accept 458 >> Accept The Woodland Protector
	.goto Teldrassil,59.9,42.5
    .accept 4495 >> Accept A Good Friend
    .goto Teldrassil,60.9,42.0
step << Hunter
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Grind en route until you are 610xp away from level 4 (790/1400)
step << Hunter
    .goto Teldrassil,54.6,33.0
    .turnin 4495 >> Turn in A Good Friend
    .accept 3519 >> Accept A Friend in Need
step << Hunter
    #sticky
    #completewith next
    .hs >> Hearth back to the starting zone
step << Hunter
    .goto Teldrassil,57.9,45.1
    .turnin 458 >> Turn in The Woodland Protector
    .accept 459 >> Accept The Woodland Protector
step << Priest/Druid
    .goto Teldrassil,59.6,40.7
	.vendor >> Vendor trash and purchase 15x Refreshing Spring Water x15 from Dellylah. Vendor armor if you need to.
	.collect 159,15 --Collect Refreshing Spring Water (x15)
step
    #requires balance1
	.goto Teldrassil,58.7,44.2
    .turnin 456 >> Turn in The Balance of Nature
    .accept 457 >> Accept The Balance of Nature
	.accept 3116 >> Accept Simple Sigil << Warrior
	.accept 3117 >> Accept Etched Sigil << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Accept Hallowed Sigil << Priest
	.accept 3120 >> Accept Verdant Sigil << Druid
step << Warrior
    .goto Teldrassil,59.3,41.1
	.vendor >> Go inside and vendor trash.
step << Warrior
	.goto Teldrassil,59.6,38.4
	.turnin 3116 >> Turn in Simple Sigil
	.trainer >> Run up the stairs behind the vendors. Train Battle Shout from the trainer
step << !Hunter
	.goto Teldrassil,57.6,40.2,100,0 >> Head north, around the big tree
    .goto Teldrassil,59.8,34.1
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
step << !Hunter
    .goto Teldrassil,54.6,33.0
    .turnin 4495 >> Turn in A Good Friend
    .accept 3519 >> Accept A Friend in Need
step << !Hunter
    #sticky
    #completewith next
    .hs >> Hearth back to the starting zone
step << !Hunter
    .goto Teldrassil,57.9,45.1
    .turnin 458 >> Turn in The Woodland Protector
    .accept 459 >> Accept The Woodland Protector
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .turnin 457 >> Turn in The Balance of Nature
step
    .goto Teldrassil,60.9,42.0
    .turnin 3519 >> Turn in A Friend in Need
    .accept 3521 >> Accept Iverron's Antidote
step
    #completewith htraining
    .goto Teldrassil,59.3,41.1
	.vendor >> Go inside, vendor trash and buy 3 stacks of arrows << Hunter
	.vendor >> Go inside, vendor trash << !Hunter
step
    .goto Teldrassil,57.8,41.7
    .accept 916 >> Accept Webwood Venom
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,58.6,40.4
    >>Climb the big tree and talk to the Hunter trainer
    .train 1978 >>Train Serpent Sting
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
	.goto Teldrassil,56.1,43.6,80,0
    .goto Teldrassil,57.8,45.1
    .turnin 459 >> Turn in The Woodland Protector
step
    .goto Teldrassil,60.9,42.0
    .turnin 3521 >> Turn in Iverron's Antidote
    .accept 3522 >> Accept Iverron's Antidote
step << !Priest
    .goto Teldrassil,59.3,41.1
	.vendor >> Go inside and vendor trash. Unequip and sell your weapon. << !Hunter
	.vendor >> Go inside and vendor trash. Unequip and sell your weapon. Make sure you have at least 3 or 4 stacks of arrows for the next segment << Hunter
step << Druid
    .goto Teldrassil,59.6,40.7
	.vendor >> Purchase Refreshing Spring Water (x10) from Dellylah.
	.collect 159,10 --Collect Refreshing Spring Water (x10)
step << Warrior
    .goto Teldrassil,59.6,38.4
	.trainer >> Train your level 4 spells
step << Priest
    .goto Teldrassil,59.5,41.1
	.vendor >> Go inside, then upstairs and vendor trash. Unequip and sell your weapon.
step << Priest
	.goto Teldrassil,59.5,41.1
	.vendor >> Buy 10 more water from Lyrai.
	.collect 159,10 --Collect Refreshing Spring Water (x10)
step << Priest
	.goto Teldrassil,59.2,40.4
	.turnin 3119 >> Turn in Hallowed Sigil
	.trainer >> Train your level 4 spells
step
    .goto Teldrassil,57.8,41.7
    .turnin 916 >> Turn in Webwood Venom
    .accept 917 >> Accept Webwood Egg
step << Druid
    .goto Teldrassil,58.6,40.3
	>>Run up the big ramp and into the small room
	.turnin 3120 >> Turn in Verdant Sigil
	.trainer >> Train your class spells
step
    .goto Teldrassil,54.6,33.0
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
    .turnin 917 >> Turn in Webwood Egg
    .accept 920 >> Accept Tenaron's Summons
step
    .goto Teldrassil,59.1,39.4
    >>Take the ramp upwards and climb the big tree
    .turnin 920 >> Turn in Tenaron's Summons
    .accept 921 >> Accept Crown of the Earth
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >>Fill the Crystal Phial in your bags at the moonwell
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
step
    #requires vial1
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the graveyard
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .turnin 457 >> Turn in The Balance of Nature
step << Priest
    #requires vial1
	.goto Teldrassil,60.0,42.2,80,0 >> Go inside and back to the priest trainer
    .goto Teldrassil,59.2,40.5
    .accept 5622 >> Accept In Favor of Elune
step
    #requires vial1
	.goto Teldrassil,57.6,41.6,60,0
    .goto Teldrassil,59.1,39.4
	>>Take the ramp upwards and climb the big tree
    .turnin 921 >> Turn in Crown of the Earth
    .accept 928 >> Accept Crown of the Earth
step
    .goto Teldrassil,61.2,47.6
    .accept 2159 >> Accept Dolanaar Delivery
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 6-11 Teldrassil
#version 1
#group RestedXP Alliance 1-20
#defaultfor NightElf
#next 11-14 Darkshore
step
    .goto Teldrassil,60.5,56.3
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
    .goto Teldrassil,56.1,57.8 >> Head to town killing any mobs near the road en route
    .accept 997 >> Accept Denalan's Earth
step
    .goto Teldrassil,55.9,57.3
    .accept 475 >> Accept A Troubling Breeze
step << Priest
    .goto Teldrassil,55.6,56.8
    .turnin 5622 >> Turn in In Favor of Elune
    .accept 5621 >> Accept Garments of the Moon
	.trainer >> Train your level 6 spells
step << Rogue
    .goto Teldrassil,55.51,57.14
	>>Go to the second floor of the treehouse
    .vendor >> Buy the level 3 thrown from Aldia. Equip it
step
    .goto Teldrassil,55.5,57.0
    >>Go to the top of the treehouse
   .accept 932 >> Accept Twisted Hatred
    .accept 2438 >> Accept The Emerald Dreamcatcher
step << Hunter
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (2s 70c) buy a Hornwood Recurve Bow from Jeena. Otherwise, skip this step (you'll come back later)
    >>Buy arrows until your Quiver is full (1000 arrows)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior
    .goto Teldrassil,56.2,59.2
	.trainer >> Train your level 6 spells
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >> Train your level 6 spells
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (5s 9c) buy a Gladius from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (3s 82c) buy a Stiletto from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (4s 80c) buy a Walking Stick from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Walking Stick (1)
step
    .goto Teldrassil,55.7,59.8
    .turnin 2159 >> Turn in Dolanaar Delivery
step << Hunter
    .goto Teldrassil,56.7,59.5
	.trainer >> Train your class spells
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >> Train your level 6 spells
step
    .goto Teldrassil,56.2,61.7
    .turnin 928 >> Turn in Crown of the Earth
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
    .goto Teldrassil,60.9,68.5
    .turnin 997 >> Turn in Denalan's Earth
    .accept 918 >> Accept Timberling Seeds
    .accept 919 >> Accept Timberling Sprouts
step
    .goto Teldrassil,56.1,66.6
    >>Run around the lake killing timberling mobs, and looting sprouts on the ground
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.9,68.5
    .turnin 918 >> Turn in Timberling Seeds
    .accept 922 >> Accept Rellian Greenspyre
    .turnin 919 >> Turn in Timberling Sprouts
step
	#sticky
	#completewith grindtime
	>>Grind heavily en route between quests. There is a large xp grind step coming up.
	.xp 7+3500 >> Grind to level 7 +3500xp
step
    .goto Teldrassil,68.0,59.6
	>>Loot the dresser inside the house
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.3,58.6
	>>Go upstairs in the house
    .turnin 475 >> Turn in A Troubling Breeze
    .accept 476 >> Accept Gnarlpine Corruption
step
    #label zenn
    .goto Teldrassil,63.4,58.1
	.use 5619 >>Fill the empty vial at the moonwell
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    .goto Teldrassil,63.1,61.0
    >>Finish off Zenn's Bidding
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
	#grindtime
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >> Grind to level 7 +3500xp
step
    .goto Teldrassil,60.5,56.3
    .turnin 488 >> Turn in Zenn's Bidding
step
	.goto Teldrassil,56.1,57.7
    .accept 489 >> Accept Seek Redemption!
step
    .goto Teldrassil,55.9,57.3
    .turnin 476 >> Turn in Gnarlpine Corruption
step << Priest
    .goto Teldrassil,55.5,56.7
    .turnin 5621 >> Turn in Garments of the Moon
	.trainer >> Train your level 8 spells
step
    .goto Teldrassil,55.6,56.9
    .turnin 2438 >> Turn in The Emerald Dreamcatcher
    .accept 2459 >> Accept Ferocitas the Dream Eater
step << Hunter
	#completewith next
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (2s 70c) buy a Hornwood Recurve Bow from Jeena. Otherwise, skip this step (you'll come back later)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >>Buy arrows up to 800 total
step << Hunter
    .goto Teldrassil,56.7,59.5
	.trainer >> Train your level 8 spells
step << Warrior
    .goto Teldrassil,56.2,59.2
	.trainer >> Train your level 8 spells
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >> Train your level 8 spells
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>Repair your weapon. If you have enough money (5s 9c) buy a Gladius from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Gladius (1)
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (3s 82c) buy a Stiletto from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>Repair your weapon. If you have enough money (4s 80c) buy a Walking Stick from Shalomon. Otherwise, skip this step (you'll come back later)
    .collect 2495,1 --Walking Stick (1)
step << Druid
    .goto Teldrassil,56.2,61.7
    .turnin 929 >> Turn in Crown of the Earth
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
	#completewith endmystics
    .goto Teldrassil,69.2,53.3
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
	>>Mystics share spawns with Gnarlpine Warriors. You may have to kill them to make the Mystics spawn
step
    #label jewel
	.goto Teldrassil,69.2,53.3
	>>Kill Ferocitas. Loot him for the Necklace
    .collect 8049,1,2459,2 --Gnarlpine Necklace (1)
step
    .goto Teldrassil,58.7,55.7
    .use 8049 >>Right Click the Necklace in your bags to loot the Jewel
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
step
    #requires mystics
    .goto Teldrassil,58.7,55.7
    >>Finish off Seek Redemption!
    .complete 489,1 --Collect Fel Cone (x3)
step
	#requires mystics
	#label endmystics
    .goto Teldrassil,60.4,56.4
    .turnin 489 >> Turn in Seek Redemption!
step
	.goto Teldrassil,57.0,54.7,80,0
	.goto Teldrassil,54.7,52.9,80,0
	.goto Teldrassil,53.3,49.0,80,0
	.goto Teldrassil,52.6,49.4,60,0
	.goto Teldrassil,51.5,50.2,60,0
    .goto Teldrassil,51.2,50.6
    >>Kill Lord Melenas. He can be located in many different spawnpoints of the cave, and is quite difficult. Loot him for his head
    .complete 932,1 --Collect Melenas' Head (x1)
step
    #softcore
	#completewith next
	.deathskip >> Die on purpose and respawn at the graveyard
step << !Druid
    .goto Teldrassil,56.2,61.7
    .turnin 929 >> Turn in Crown of the Earth
step
    .goto Teldrassil,56.2,61.7
    .accept 933 >> Accept Crown of the Earth
step
	.goto Teldrassil,42.54,76.08
	>>Click on the big purple plant
	.accept 930 >> Accept The Glowing Fruit
step
	#label spiderLegs
	.goto Teldrassil,42.36,67.26
	.use 5621 >>Fill the empty vial at the moonwell
	.complete 933,1
step
    .goto Teldrassil,44.5,74.5,70,0
    .goto Teldrassil,48.9,70.4
    >>Finish off collecting 7 Small Spider Legs from the spiders in the area
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
--X
step
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>Die on purpose and respawn at the Dolanaar graveyard, make sure to die east of the moonwell, otherwise you might end up in Darnassus
step
    .goto Teldrassil,56.2,61.7
    .turnin 933 >> Turn in Crown of the Earth
    .accept 7383 >> Accept Crown of the Earth
step
    .goto Teldrassil,57.1,61.3
    .train 2550 >>Train Cooking
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
step
    .goto Teldrassil,55.7,59.8
    .home >> Set your Hearthstone to Dolanaar
step << Warrior/Rogue
    .goto Teldrassil,55.2,56.8
    .train 3273 >> Train First Aid
step
    .goto Teldrassil,55.5,56.9
    .turnin 932 >> Turn in Twisted Hatred
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
step
    .goto Teldrassil,52.9,57.4,50,0
    .goto Teldrassil,50.6,56.2,50,0
    .goto Teldrassil,50.0,53.3,50,0
    .goto Teldrassil,46.9,49.4,50,0
    .goto Teldrassil,45.9,49.6
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
    .accept 487 >> Accept The Road to Darnassus
	.unitscan Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
	>>Kill Gnarlpine Ambushers in the area
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
step << Druid
    .goto Teldrassil,52.9,57.4,50,0
    .goto Teldrassil,50.6,56.2,50,0
    .goto Teldrassil,50.0,53.3,50,0
    .goto Teldrassil,46.9,49.4,50,0
    .goto Teldrassil,45.9,49.6
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
    .turnin 487 >> Turn in The Road to Darnassus
	.unitscan Moon Priestess Amara
step
    .goto Teldrassil,38.3,34.3
    .accept 937 >> Accept The Enchanted Glade
step
    .goto Teldrassil,38.4,34.1
	.use 18152 >>Fill the empty phial at the moonwell
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
    #completewith harpies
    .goto Teldrassil,34.6,28.9,0
    >>Kill Harpies and loot them for their Belts. Be careful of the Matriarchs as they heal and do a lot of damage. Try to burst them
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
    .goto Teldrassil,34.6,28.9
    .accept 931 >> Accept The Shimmering Frond
step
    .goto Teldrassil,31.6,31.7
    >>Talk to the panther to start the escort quest
    .accept 938 >> Accept Mist
step
	#label harpies
    .goto Teldrassil,38.3,34.4
	>>Run to Arynia. Be careful as the quest fails if you don't go back after 8 minutes (It only takes about 2 minutes to get back)
    .turnin 938 >> Turn in Mist
    .accept 940 >> Accept Teldrassil
step
    .goto Teldrassil,34.6,28.9
    >>Kill Harpies and loot them for their Belts. Be careful of the Matriarchs as they heal and do a lot of damage. Try to burst them
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
    .goto Teldrassil,38.3,34.4
    .turnin 937 >> Turn in The Enchanted Glade
step << Druid
    .xp 10-750 >> Grind to Level 9 + 5850xp
step
	#completewith next
	#softcore
    .goto Teldrassil,39.6,35.5
    .deathskip >>Die on purpose and respawn at the Darnassus graveyard
step
    .goto Darnassus,38.3,21.4
	>>Travel to Darnassus
    .turnin 922 >> Turn in Rellian Greenspyre
    .accept 923 >> Accept Tumors
step
    .goto Darnassus,34.7,9.0
    .turnin 940 >> Turn in Teldrassil
step << Druid
    .goto Darnassus,35.2,8.0
    >>Head to the middle level of the tree house
    .accept 5921 >> Accept Moonglade
	.trainer >> Train your level 10 spells
step
    .goto Darnassus,36.5,86.0
    .accept 2518 >> Accept Tears of the Moon
step << Druid
	#completewith next
	.cast 18960 >> Open your spellbook. Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.8
    .turnin 5921 >> Turn in Moonglade
    .accept 5929 >> Accept Great Bear Spirit
step << Druid
    .goto Moonglade,39.1,27.5
    >>Talk to the bear spirit just outside Nighthaven
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
	.skipgossip
step << Druid
	#completewith next
	.cast 18960 >> Open your spellbook. Cast Teleport: Moonglade
step << Druid
    .goto Moonglade,56.2,30.5
	>>Return to the questgiver
    .turnin 5929 >> Turn in Great Bear Spirit
    .accept 5931 >> Accept Back to Darnassus
step
    #sticky
    #completewith next
    .hs >> Hearth to Dolanaar
step
    .goto Teldrassil,56.1,61.7
    .turnin 7383 >> Turn in Crown of the Earth
    .accept 935 >> Accept Crown of the Earth
step << Priest
    .goto Teldrassil,55.5,56.7
	.trainer >> Train your level 10 spells
step << Warrior
    .goto Teldrassil,56.2,59.2
	.trainer >> Train your level 10 spells
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >> Train your level 10 spells
step << Hunter
    .goto Teldrassil,56.7,59.6
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your level 10 spells
step << Hunter
    .goto Teldrassil,59.9,58.8
	.use 15921 >> Use the Taming Rod in your bags on a Webwood Lurker
    .complete 6063,1 --Tame a Webwood Lurker
step << Hunter
    .goto Teldrassil,56.7,59.5
    .turnin 6063 >> Turn in Taming the Beast
    .accept 6101 >> Accept Taming the Beast
step
    .goto Teldrassil,60.9,68.4
    .turnin 930 >> Turn in The Glowing Fruit
    .turnin 931 >> Turn in The Shimmering Frond
step
	.goto Teldrassil,60.9,68.4
	.turnin 927 >> Turn in The Moss-twined Heart
    .isOnQuest 927
step << Hunter
    .goto Teldrassil,62.6,72.2
	.use 15922 >> Use the Taming Rod in your bags on a Nightsaber Stalker
    .complete 6101,1 --Tame a Nightsaber Stalker
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the graveyard
step << Hunter
    .goto Teldrassil,56.7,59.5
    .turnin 6101 >> Turn in Taming the Beast
    .accept 6102 >> Accept Taming the Beast
step << Hunter
    .goto Teldrassil,64.7,66.7
	.use 15923 >> Use the Taming Rod in your bags on a Strigid Screecher
    .complete 6102,1 --Tame a Strigid Screecher
step << Hunter
    .goto Teldrassil,56.7,59.5
    .turnin 6102 >> Turn in Taming the Beast
    .accept 6103 >> Accept Training the Beast
step << Warrior
    .goto Teldrassil,56.2,59.2
    .accept 1684 >> Accept Elanaria
step
    .goto Teldrassil,51.8,56.4
    .turnin 487 >> Turn in The Road to Darnassus
step << Hunter
    #sticky
    .train 2981 >> Tame a Strigid Hunter and learn claw rank 2
step
    .goto Teldrassil,43.1,32.9
	>>Kill timberling mobs around the river
    .complete 923,1 --Collect Mossy Tumor (x5)
step
    .goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,50,0
    .goto Teldrassil,37.9,25.1,50,0
    .goto Teldrassil,40.7,25.4
    >>Kill Lady Sathrah, she has 3 possible spawn locations. Loot her for her Spinnerets
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
	.unitscan Lady Sathrah
step
	#softcore
	#completewith next
    .goto Teldrassil,47.3,26.0,-1
    .goto Teldrassil,37.9,25.1,-1
    .goto Teldrassil,40.7,25.4,-1
	.deathskip >> Die and respawn at the Darnassus Graveyard
step
    .goto Darnassus,70.6,45.3
    >>Travel back to Darnassus
    .accept 6344 >> Accept Nessa Shadowsong
step
	.abandon 927 >> Abandon The Moss-twined Heart. You never have an opportunity to turn it in past here.
step << Warrior
    .goto Darnassus,57.4,34.8
    .turnin 1684 >> Turn in Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << Warrior
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>The path to Vorlus Vilehoof starts here
step << Warrior
    .goto Teldrassil,47.2,63.7
	>>Kill Vorlus. Loot him for his Horn
    .complete 1683,1 --Collect Horn of Vorlus (x1)
step << Warrior
    #softcore
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Die on purpose after you get past the furbolg area and respawn at Darnassus
step << Warrior
	#softcore
    .goto Darnassus,57.4,34.5
    .turnin 1683 >> Turn in Vorlus Vilehoof
step << Warrior
	#hardcore
    .goto Darnassus,57.4,34.5
	>>Run back to Darnassus
    .turnin 1683 >> Turn in Vorlus Vilehoof
step << Druid
    .goto Darnassus,35.1,8.6
    .turnin 5931 >> Turn in Back to Darnassus
    .accept 6001 >> Accept Body and Heart
step
    .goto Darnassus,34.8,9.2
    .turnin 935 >> Turn in Crown of the Earth
step << Hunter
    .goto Darnassus,40.3,8.8
    .turnin 6103 >> Turn in Training the Beast
step
    .goto Darnassus,38.3,21.7
    .turnin 923 >> Turn in Tumors
step
    .goto Darnassus,36.9,85.8
    .turnin 2518 >> Turn in Tears of the Moon
    .accept 2520 >> Accept Sathrah's Sacrifice
step
    .goto Darnassus,39.7,85.8
	.use 8155 >> Use Sathrah's Sacrifice in your bags at the fountain
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    .goto Darnassus,36.6,85.9
    .turnin 2520 >> Turn in Sathrah's Sacrifice
step << Hunter/Warrior/Priest
    .goto Darnassus,57.8,46.6
    .train 227 >>Train staves
step
    .goto Darnassus,28.8,41.2,40,0
    .goto Teldrassil,56.3,92.3
	>>Take the purple portal to Rut'theran
    .turnin 6344 >> Turn in Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step
    .goto Teldrassil,58.4,94.0
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .accept 6342 >> Accept Flight to Auberdine
step
    .goto Teldrassil,58.4,94.0
    .fly Darkshore >> Fly to Darkshore
]])
