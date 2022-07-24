RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 1-11 Tirisfal Glades
#version 1
#group RestedXP Horde 1-22
#defaultfor Undead
#next 11-14 Silverpine Forest
#next 12-17 Barrens

step << !Scourge
    #sticky
    #completewith next
    .goto Tirisfal Glades,30.2,71.7
    +You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in
step
    >>Drop your Hearthstone
	.destroy 6948
     >>Run out of the crypt
    .goto Tirisfal Glades,30.2,71.7
    .accept 363 >> Accept Rude Awakening
step << Warrior
    #sticky
    #completewith vendorWar
    +Grind mobs toward town until you have 10c of vendorables
    .goto Tirisfal Glades,31.5,69.8
step << Warlock
    #sticky
    #completewith vendorLock
    +Grind mobs toward town until you have 10c of vendorables
    .goto Tirisfal Glades,31.5,69.8
step << Priest/Mage
    #sticky
    #completewith vendorCaster
    +Grind mobs toward town until you have 35c of vendorables
    .goto Tirisfal Glades,31.5,69.8
step << Warrior
    #label vendorWar
    .goto Tirisfal Glades,32.3,65.4
    .vendor >> Vendor trash
step << Warrior
    .goto Tirisfal Glades,32.7,65.6
    .train 6673 >>Train Battle Shout
step << Priest/Mage
    #label vendorCaster
    .goto Tirisfal Glades,32.3,65.4
    .vendor >> Vendor Trash and then purchase 10 Refreshing Spring Water
	.collect 159,10 --Collect Refreshing Spring Water (x10)
step << Warlock
    #label vendorLock
    .goto Tirisfal Glades,30.8,66.4
    .vendor >>vendor trash at Demon Trainer
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
    .train 348 >>Train Immolate
step << Warlock
    .goto Tirisfal Glades,31.0,66.4
    .accept 1470 >>Accept Piercing the Veil
step << Warlock
    .goto Tirisfal Glades,30.8,66.2
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
step << Warlock
    .goto Tirisfal Glades,32.5,61.4
    >> Kill Rattlecage Skeletons in the area for Skulls
    .complete 1470,1 --Rattlecage Skull (3)
step << Warlock
    #completewith next
    .goto Tirisfal Glades,32.3,65.4,30 >> Grind on your way back to town until 25c+ of vendorables
step << Warlock
    .goto Tirisfal Glades,32.3,65.4
    .vendor >> vendor trash, buy 5 water from Joshua
	.collect 159,5 --Collect Refreshing Spring Water (x5)
step << Warlock
    >>Summon your Imp after you turnin
    .goto Tirisfal Glades,31.0,66.4
    .turnin 1470 >>Turn in Piercing the Veil
step << Warlock
    .xp 2 >> Grind to level 2
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .trainer >> Train your class spells
step << Priest
    .goto Tirisfal Glades,31.1,66.0
    .trainer >> Train your class spells
step << !Warlock
    .goto Tirisfal Glades,30.8,66.2
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
step
    >> Kill Zombies in the area
    .goto Tirisfal Glades,32.4,62.8
    .complete 364,1 --Kill Mindless Zombie (x8)
    .complete 364,2 --Kill Wretched Zombie (x8)
step
	.goto Tirisfal Glades,32.4,62.8
	.xp 2 >> Grind to level 2
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash, buy 10 more water
	.collect 159,10 --Collect Refreshing Spring Water (x10)
step << Warrior/Rogue
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash
step
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
step
    #era/som
    .goto Tirisfal Glades,30.8,66.2
    .accept 3095 >> Accept Simple Scroll << Warrior
    .accept 3096 >> Accept Encrypted Scroll << Rogue
    .accept 3097 >> Accept Hallowed Scroll << Priest
    .accept 3098 >> Accept Glyphic Scroll << Mage
    .accept 3099 >> Accept Tainted Scroll << Warlock
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step
    #som
    #phase 3-6
    .goto Tirisfal Glades,30.8,66.2
    .accept 3095 >> Accept Simple Scroll << Warrior
    .accept 3096 >> Accept Encrypted Scroll << Rogue
    .accept 3097 >> Accept Hallowed Scroll << Priest
    .accept 3098 >> Accept Glyphic Scroll << Mage
    .accept 3099 >> Accept Tainted Scroll << Warlock
    .accept 376 >> Accept The Damned
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .turnin 3098 >> Turn in Glyphic Scroll
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
    .turnin 3099 >> Turn in Tainted Scroll
step << Priest
    .goto Tirisfal Glades,31.1,66.0
    .turnin 3097 >> Turn in Hallowed Scroll
step
    .goto Tirisfal Glades,29.5,67.2,40,0
    .goto Tirisfal Glades,29.6,61.3,50,0
    .goto Tirisfal Glades,32.5,56.7,50,0
    .goto Tirisfal Glades,35.2,57.0,50,0
    .goto Tirisfal Glades,29.5,67.2,40,0
    .goto Tirisfal Glades,29.6,61.3,50,0
    .goto Tirisfal Glades,32.5,56.7,50,0
    .goto Tirisfal Glades,35.2,57.0,50,0
    >>Grind Wolves and Duskbats
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
step
    #era/som
    .goto Tirisfal Glades,33.15,60.70
    >> Kill Skeletons in the town
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
step
    .xp 3+980 >>Grind mobs en route back to town to 980+/1400xp
step << Mage/Warlock
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash, buy water down to no lower than 95c
step << Priest
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash, buy water down to no lower than 1s 90c
step
     #era/som
    .goto Tirisfal Glades,30.9,66.2
    .turnin 3901 >> Turn in Rattling the Rattlecages
step
    #label BatsWolves
    .goto Tirisfal Glades,30.9,66.1
    .turnin 376 >> Turn in The Damned
step
	.goto Tirisfal Glades,30.9,66.1
    .accept 6395 >> Accept Marla's Last Wish
step << Priest
    .goto Tirisfal Glades,31.1,66.0
    .trainer >> Train your class spells
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
    .trainer >> Train your class spells
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .trainer >> Train your class spells
step
    .goto Tirisfal Glades,32.2,66.0
    .accept 380 >> Accept Night Web's Hollow
step << Rogue/Warrior
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>vendor trash
step << Rogue
    .goto Tirisfal Glades,32.5,65.7
    .turnin 3096 >> Turn in Encrypted Scroll
step << Warrior
    .goto Tirisfal Glades,32.7,65.6
    .turnin 3095 >> Turn in Simple Scroll
    .trainer >> Train your class spells
step
    .goto Tirisfal Glades,31.6,65.6
    .accept 3902 >> Accept Scavenging Deathknell
step
    #sticky
    #label Goods
    >>Collect bundles of brown boxes whilst grinding level 2+ mobs en route. You can find these on the outside walls/inside of buildings
    .goto Tirisfal Glades,33.84,64.09
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
	#hardcore
    #requires Goods
    .goto Tirisfal Glades,27.1,59.0,80,0
    .goto Tirisfal Glades,26.8,59.4,30,0
    .goto Tirisfal Glades,24.0,58.2,60,0
	.goto Tirisfal Glades,27.1,59.0
    >>Kill all but 2-3 Young Spiders outside the cave and then enter the cave and kill the Night Web Spiders inside. Kill the remaining 2-3 Young Spiders as you leave.
    .complete 380,1 --Kill Young Night Web Spider (10)
	complete 380,2 --Kill Night Web Spider (x8)
step
	#softcore
    #requires Goods
    .goto Tirisfal Glades,27.1,59.0,80,0
    .goto Tirisfal Glades,26.8,59.4,30,0
    .goto Tirisfal Glades,24.0,58.2,60,0
	.goto Tirisfal Glades,27.1,59.0
    >>Kill Young Spiders outside the cave and then enter the cave and kill the Night Web Spiders inside. We're deathskipping in the cave, make sure you're done with Young Spiders before entering.
    .complete 380,1 --Kill Young Night Web Spider (10)
	complete 380,2 --Kill Night Web Spider (x8)
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,31.2,64.9,120 >> Run out of the cave, back to Deathknell
step
    .goto Tirisfal Glades,31.6,65.6
	>> Resummon your imp << Warlock
    .turnin 3902 >> Turn in Scavenging Deathknell
step << Rogue/Warrior
    .goto Tirisfal Glades,32.41,65.66
    .vendor >>Vendor trash. Repair your weapon
step << Priest/Mage/Warlock
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash, buy up to 15 water
	.collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Tirisfal Glades,32.2,66.0
    .turnin 380 >> Turn in Night Web's Hollow
step
	.goto Tirisfal Glades,32.2,66.0
    .accept 381 >> Accept The Scarlet Crusade
step
    .goto Tirisfal Glades,37.45,67.93
    >>Kill Scarlet mobs for Armbands
    .complete 381,1 --Collect Scarlet Armband (12)
step
    >>Kill Samuel Fipps and loot him for his remains
    .goto Tirisfal Glades,36.7,61.6
    .collect 16333,1 --Collect Samuel's Remains
step
    #softcore
	.goto Tirisfal Glades,36.7,61.6
    .deathskip >> Die and respawn at the Spirit Healer
step
    .goto Tirisfal Glades,31.2,65.1
	>> Bury Samuel's remains by clicking on the grave in the graveyard
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
step
    .goto Tirisfal Glades,30.9,66.1
    .turnin 6395 >> Turn in Marla's Last Wish
step << Priest
    .goto Tirisfal Glades,31.11,66.03
    .accept 5651 >> Accept In Favor of Darkness
step
    #completewith next
    .goto Tirisfal Glades,32.4,65.6
    .vendor >>Vendor trash and repair
step
    .goto Tirisfal Glades,32.1,66.0
    .turnin 381 >> Turn in The Scarlet Crusade
step
	.goto Tirisfal Glades,32.1,66.0
    .accept 382 >> Accept The Red Messenger
step
    >>Kill Meven and loot him for the documents << !Rogue !Warrior
    >>Kill Meven whilst kiting him back to town. Loot him for the documents << Rogue/Warrior
    .goto Tirisfal Glades,36.5,68.8
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
step
    .goto Tirisfal Glades,32.2,66.0
    .turnin 382 >> Turn in The Red Messenger
    .accept 383 >> Accept Vital Intelligence
step
    .goto Tirisfal Glades,38.1,56.6
    .xp 5+2350 >>Grind to 2350+/2800xp en route
step
    .goto Tirisfal Glades,38.2,56.8
    .accept 8 >> Accept A Rogue's Deal
step
    .goto Tirisfal Glades,40.91,54.17
    .accept 365 >>Accept Fields of Grief
step
    #era/som
    .unitscan Gordo
    .goto Tirisfal Glades,40.79,54.47,40,0
    .goto Tirisfal Glades,42.67,54.97,40,0
    .goto Tirisfal Glades,43.75,54.29,40,0
    .goto Tirisfal Glades,45.27,56.45,40,0
    .goto Tirisfal Glades,49.19,58.07,40,0
    .goto Tirisfal Glades,50.87,59.01,60,0
    .goto Tirisfal Glades,51.84,55.31,40,0
    .goto Tirisfal Glades,54.20,52.72,40,0
    .goto Tirisfal Glades,55.67,52.46,40,0
    .goto Tirisfal Glades,54.20,52.72,40,0
    .goto Tirisfal Glades,51.84,55.31,40,0
    .goto Tirisfal Glades,50.87,59.01,60,0
    .goto Tirisfal Glades,49.19,58.07,40,0
    .goto Tirisfal Glades,45.27,56.45,40,0
    .goto Tirisfal Glades,43.75,54.29,40,0
    .goto Tirisfal Glades,42.67,54.97,40,0
    .goto Tirisfal Glades,40.79,54.47,40,0
    >>Talk to Gordo. He's an abomination that patrols along the road to Brill
    .accept 5481 >>Accept Gordo's Task
step << Priest
    #softcore
    .goto Tirisfal Glades,52.59,55.51
    .trainer >> Train Tailoring. Save your linen to skill up, then create greens later for disenchanting for a Wand
    >> You can skip this step if you're an alt/think it'd be easier to buy one from the AH later
step << Priest
    #hardcore
    .goto Tirisfal Glades,52.59,55.51
    .trainer >> Train Tailoring. Save your linen to skill up, then create greens later for disenchanting for a Wand
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at Brill if you found Gordo pretty early
step
    .goto Tirisfal Glades,60.6,51.8
    .turnin 383 >> Turn in Vital Intelligence
    .accept 427 >>Accept At War With The Scarlet Crusade
step << Rogue
    .goto Tirisfal Glades,61.16,52.59
    .vendor >> Buy the level 3 thrown from Mrs. Winters. Equip it
step
    .goto Tirisfal Glades,61.7,52.0
    .turnin 8 >>Turn in A Rogue's Deal
    .home >> Set your Hearthstone to Brill
    .vendor >> vendor trash. Buy some level 5 food << !Mage !Priest !Warlock
    .vendor >> Vendor trash. Buy some level 5 water << Mage/Priest/Warlock
    >>Save at least 1.3 silver for training << Warrior
    >>Save at least 2 silver for training << Mage
    >>Save at least 2.3 silver for training << Rogue
    >>Save at least 3 silver for training << Warlock/Priest
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your class spells
step << Mage
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Go upstairs and train your class spells
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Go upstairs and train your class spells
    .goto Tirisfal Glades,61.55,52.61
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Priest
    .goto Tirisfal Glades,61.77,51.56
    .trainer >> Train Enchanting. Disenchant Greens you find (or craft through tailoring) to eventually make a Wand
    >> You can skip this step if you're an alt/think it'd be easier to buy one from the AH later
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .trainer >> Go upstairs and train your class spells
    .turnin 5651 >> Turn in In Favor of Darkness
    .accept 5650 >> Accept Garments of Darkness
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Go upstairs and train your class spells
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >> Use Lesser Heal (Rank 2) on Deathguard Kel. Then buff him with Power Word: Fortitude
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step
    .goto Tirisfal Glades,59.45,52.40
    .accept 367 >>Accept A New Plague
step
    .goto Tirisfal Glades,58.20,51.45
    .accept 404 >>Accept A Putrid Task
step
    #era/som
    #sticky
    #completewith next
    >>Loot the small purple Weeds on the ground
    .complete 5481,1 --Gloom Weed (3)
step
    .goto Tirisfal Glades,52.14,52.39
    >> Kill Zombies in the area. Loot them for their Claws
    .complete 404,1 --Putrid Claw (7)
step
    #sticky
    #completewith Warriors
    >>Kill any Decrepit Darkhounds you see. Loot them for their Blood
    .complete 367,1 --Darkhound Blood (5)
step
    #era/som
    .goto Tirisfal Glades,40.06,51.10
    >>Finish looting the small purple Weeds on the ground. They can be found all the way en route west to the field
    .complete 5481,1 --Gloom Weed (3)
step
    >>Loot the Pumpkins found in the field. Try to also save a Minor Healing Potion you get from now on too for later
    .goto Tirisfal Glades,35.92,50.61
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #label Warriors
    >>Kill Scarlet Warriors << !Rogue !Warrior
    >>Kill Scarlet Warriors. Be careful as they have 50% increased parry for 8 seconds after they do their defense stance animation << Rogue/Warrior
    .goto Tirisfal Glades,30.26,50.70
    .complete 427,1 --Scarlet Warrior (10)
step
    #softcore
    #completewith next
     .deathskip >> Die and respawn at Brill
step
    #hardcore
    #completewith next
     .hs >> Hearth to Brill
step
    #era/som
    >>Turn in at the Junior Apothecary. He patrols around the Graveyard
    .goto Tirisfal Glades,57.68,48.96
    .turnin 5481 >>Turn in Gordo's Task
    .accept 5482 >>Accept Doom Weed
step
    .goto Tirisfal Glades,58.20,51.45
    .turnin 404 >>Turn in A Putrid Task
    .accept 426 >>Accept The Mills Overrun
step
    .goto Tirisfal Glades,59.45,52.40
    .turnin 365 >> Turn in Fields of Grief
    .accept 407 >> Accept Fields of Grief
step
    .goto Tirisfal Glades,59.45,52.40
    .isQuestComplete 367
    .turnin 367 >>Turn in A New Plague
step
    .goto Tirisfal Glades,59.45,52.40
    .accept 368 >>Accept A New Plague
	.isQuestTurnedIn 367
step
    .goto Tirisfal Glades,59.45,52.40
    .turnin 365 >> Turn in Fields of Grief
    .accept 407 >> Accept Fields of Grief
step
    .goto Tirisfal Glades,60.58,51.77
    .turnin 427 >>Turn in At War With The Scarlet Crusade
    .accept 370 >>Accept At War With The Scarlet Crusade
step
    .goto Tirisfal Glades,60.73,51.52
    .accept 398 >>Accept Wanted: Maggot Eye
step
    >>Go inside the building
    .goto Tirisfal Glades,61.26,50.84
    .accept 358 >>Accept Graverobbers
step
    .goto Tirisfal Glades,60.93,52.01
    .accept 374 >>Accept Proof of Demise
step
    .xp 7
    .goto Tirisfal Glades,59.47,56.40
step
    .goto Tirisfal Glades,61.72,52.29
    .accept 354 >>Accept Deaths in the Family
    .accept 362 >>Accept The Haunted Mills
step
    #completewith next
    .vendor >> Buy food/water if needed
step
    >>Go in the room behind the innkeeper, then go downstairs
    .goto Tirisfal Glades,61.97,51.29
    .turnin 407 >>Turn in Fields of Grief
step
    #era/som
    >>Go upstairs
    .goto Tirisfal Glades,61.89,52.73
    .accept 375 >>Accept The Chill of Death
step << Priest
    #level 8
    .goto Tirisfal Glades,61.57,52.19
    .turnin 5650 >>Turn in Garments of Darkness
    .trainer >> Train your class spells.
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .turnin 5650 >>Turn in Garments of Darkness
step << Warrior
    #level 8
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your class spells
step << Mage
    #level 8
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Train your class spells
step << Warlock
    #level 8
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Train your class spells
    .goto Tirisfal Glades,61.55,52.61
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Rogue
    #level 8
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Train your class spells
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step
    #era/som
    #sticky
    #completewith NewPlague
    >>Kill Duskbats that you see. Loot them for their Pelts
    .complete 375,1 --Duskbat Pelt (5)
step
    >>Finish killing Darkhounds and looting them for their blood
    .complete 367,1 --Darkhound Blood (5)
    .goto Tirisfal Glades,59.47,56.40,100,0
    .goto Tirisfal Glades,64.35,55.26,100,0
    .goto Tirisfal Glades,67.48,54.85,100,0
    .goto Tirisfal Glades,63.34,50.88,100,0
       .goto Tirisfal Glades,59.47,56.40
step
    #label NewPlague
    .goto Tirisfal Glades,59.45,52.40
    .turnin 367 >>Turn in A New Plague
    .accept 368 >>Accept A New Plague
step
    #era/som
    >>Kill Duskbats that you see. Loot them for their Pelts
    .goto Tirisfal Glades,58.60,57.13,100,0
    .goto Tirisfal Glades,66.16,53.62,100,0
    .goto Tirisfal Glades,62.17,35.64,100,0
       .goto Tirisfal Glades,58.60,57.13
    .complete 375,1 --Duskbat Pelt (5)
step << Rogue/Warrior
    #era/som
    .xp 7+3800 >> Grind to 3800+/4500
step << Rogue/Warrior
    #era/som
    .goto Tirisfal Glades,61.03,52.38
    >>Purchase a Coarse Thread from Abigail
    .complete 375,2 --Coarse Thread (1)
step << Rogue/Warrior
    #era/som
    >>Go upstairs
    .goto Tirisfal Glades,61.89,52.73
    .turnin 375 >>Turn in The Chill of Death
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your level 8 spells
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Train your level 8 spells
step
    #era/som
    #sticky
    #completewith Eye
    >>Loot the small purple Weeds on the ground. They're found near trees in the Gnoll area
    .complete 5482,1 --Doom Weed (10)
step
    #sticky
    #completewith Eye
    >>Kill any type of Gnoll. Loot them for their Ichor
    .complete 358,3 --Embalming Ichor (8)
step
    .goto Tirisfal Glades,55.15,42.26
    .complete 358,1 --Rot Hide Graverobber (8)
step
    .goto Tirisfal Glades,58.86,31.41
    .complete 358,2 --Rot Hide Mongrel (5)
step
    #label Eye
    >>Kill Maggot Eye. Be careful as he can be VERY difficult. Use health potions here if you got one earlier
    .goto Tirisfal Glades,58.66,30.76
    .complete 398,1 --Maggot Eye's Paw (1)
step
   #sticky
    #label IchorAndy
    .goto Tirisfal Glades,59.61,37.09
    >>Kill any type of Gnoll. Loot them for their Ichor
    .complete 358,3 --Embalming Ichor (8)
step
    #era/som
   .goto Tirisfal Glades,56.81,40.19
    >>Finish looting the small purple Weeds on the ground. They're found near trees in the Gnoll area
    .complete 5482,1 --Doom Weed (10)
step
    #requires IchorAndy
    >>Kill Murlocs. Loot them for their Scales - Take care around here, these mobs are semi-difficult
       .goto Tirisfal Glades,58.68,27.35,0
    .goto Tirisfal Glades,58.68,27.35,100,0
    .goto Tirisfal Glades,64.25,29.66,100,0
       .goto Tirisfal Glades,58.68,27.35
    .complete 368,1 --Vile Fin Scale (5)
step
    #softcore
    #completewith next
     .deathskip >> Die and respawn at Brill
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,58.40,47.76,250 >> Run back to Brill. Hearth if its up
step
    #era/som
    .goto Tirisfal Glades,58.40,47.76
    .turnin 5482 >>Turn in Doom Weed
step
    .goto Tirisfal Glades,59.45,52.40
    .turnin 368 >>Turn in A New Plague
    .accept 369 >>Accept A New Plague
step
    .goto Tirisfal Glades,60.58,51.77
    .turnin 398 >>Turn in Wanted: Maggot Eye
step
    .goto Tirisfal Glades,61.26,50.84
    .turnin 358 >>Turn in Graverobbers
    .accept 405 >>Accept The Prodigal Lich
    .accept 359 >>Accept Forsaken Duties
step
    #era/som
    .goto Tirisfal Glades,61.03,52.38
    >>Purchase a Coarse Thread from Abigail
    .complete 375,2 --Coarse Thread (1)
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your level 8 spells
step
    #era/som
    >>Go upstairs
    .goto Tirisfal Glades,61.89,52.73
    .turnin 375 >>Turn in The Chill of Death
step << !Warrior !Rogue
    #completewith next
    +Buy Food and Water if needed
step << Warrior/Rogue
    #completewith next
    +Buy Food if needed
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .trainer >> Train your level 8 spells
step << Mage
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Train your level 8 spells
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Train your level 8 spells
    .goto Tirisfal Glades,61.55,52.61
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Train your class spells
step << Rogue/Warrior
    .goto Tirisfal Glades,61.82,52.82
    .trainer >> Train First Aid to make Bandages. Try to make them during points at which you're waiting for things, such as Zeppelins
step
    .goto Tirisfal Glades,61.7,52.0
    .vendor >> vendor trash. Buy food/water if needed
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Oliver. Otherwise, skip this step
    .collect 2494,1
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step
    .collect 2488,1
step
    #sticky
    #completewith Letter
    >>Keep an eye out for a rare quest start drop from mobs in the area
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Accept A Letter Undelivered
step
    #sticky
    #label RibSkull
    >>Kill Skeleton Warriors for Ribs, kill Skeleton Casters for Skulls
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
step
    >>Grind to Agamand Mills. Kill Devlin and loot him for his remains
    .complete 362,1 --Devlin's Remains (1)
    .goto Tirisfal Glades,47.34,40.78
step
    >>Kill Nissa. She can be inside the building
    .goto Tirisfal Glades,49.34,36.02
    .complete 354,2 --Nissa's Remains (1)
step
   .unitscan Gregor Agamand
    >>Kill Gregor (a ghoul). He can patrol around a bit
    .goto Tirisfal Glades,45.85,29.23
    .complete 354,1 --Gregor's Remains (1)
step
    #label Letter
    .unitscan Thurman Agamand
    >>Kill Thurman (a zombie). He can patrol around a bit
    .goto Tirisfal Glades,42.89,32.26
    .complete 354,3 --Thurman's Remains (1)
step
    .isOnQuest 361
    .xp 9+3765 >> Grind to 9 3765+/6500xp
step
    .xp 9+4245 >> Grind to 9 4245+/6500xp
--N needs fixing
step
    #requires RibSkull
    #softcore
     .deathskip >> Die and respawn at Brill
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,58.20,51.44,250 >> Run back to Brill. Hearth if its up
step
    .goto Tirisfal Glades,58.20,51.44
    .turnin 426 >>Turn in The Mills Overrun
step
    .isOnQuest 361
    .goto Tirisfal Glades,61.58,52.60
    .turnin 361 >>Turn in A Letter Undelivered
step
    .goto Tirisfal Glades,61.72,52.29
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
step
    .xp 10
step
    .goto Tirisfal Glades,61.7,52.0
    .vendor >> vendor trash. Buy food/water if needed
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    .trainer >> Train your class spells
    .accept 1818 >> Accept Speak with Dillinger
step << Warrior
    .goto Tirisfal Glades,58.20,51.44
    .turnin 1818 >> Turn in Speak with Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>Click on the skull on the ground. This will summon Ulag. Kill him
    .complete 1819,1 --Ulag the Cleaver (1)
step << Warrior
    .goto Tirisfal Glades,58.20,51.44
    .turnin 1819 >> Turn in Ulag the Cleaver
    .accept 1820 >> Accept Speak with Coleman
step << Mage
    .goto Tirisfal Glades,61.97,52.48
    .trainer >> Go upstairs and train your class spells
    .accept 1881 >> Accept Speak with Anatasia
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    .trainer >> Go upstairs and train your class spells
     .goto Tirisfal Glades,61.62,52.68
    .accept 1478 >> Accept Halgar's Summons
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    .trainer >> Go upstairs and train your class spells
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    .trainer >> Go upstairs and train your class spells
    .accept 1885 >> Accept Mennet Carkad
step << Rogue
    .goto Tirisfal Glades,60.12,53.39
    .vendor >> Repair your weapon. If you have enough money (4s 1c) buy another Stiletto from Oliver.
step << Warrior
    .goto Tirisfal Glades,60.12,53.39
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Oliver. Otherwise, skip this step
    .collect 2488,1
step << !Warlock
    #sticky
    #completewith next
    >>Loot rings from scarlet mobs in the area. You'll finish this later
    .complete 374,1 --Scarlet Insignia Ring (10)
step << !Warlock
    .goto Tirisfal Glades,51.13,67.80
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
step
    .goto Undercity,15.06,32.86,50 >> Go into Undercity via the Sewers
step
    >>Take one of the lifts down to the main part of Undercity
    .goto Undercity,67.72,37.88
    .home >> Set your Hearthstone to Undercity
step << Warlock
    .goto Undercity,85.07,25.99
    .turnin 1478 >> Turn in Halgar's Summons
    .accept 1473 >> Accept Creature of the Void
step << Rogue
    .goto Undercity,83.53,69.09
    .turnin 1885 >> Turn in Mennet Carkad
    .accept 1886 >> Accept The Deathstalkers
step << Rogue
    .goto Undercity,77.50,49.63
    .vendor >> Buy your level 11 thrown from Nathaniel. Equip it when you're level 11
step << Rogue
    .money <0.3200
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). You'll train Swords soon. Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << Warrior
    .money <0.3950
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Claymore from him (26s 76c). You'll train 2h Swords soon. Skip this if your weapon is better, or there's something better on the AH
    .collect 1198,1 --Collect Claymore (1)
step << Warrior/Rogue
    .goto Undercity,60.18,29.10
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Warrior/Rogue
    .goto Undercity,61.41,30.06
     >> Buy a Mining Pick from Samuel
    .collect 2901,1 --Mining Pick (1)
    >> If you want to go for your own professions, skip this step
step << Warrior
    .goto Undercity,57.32,32.77
    .trainer >> Train 2h Swords
step << Rogue
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords
step << Warrior/Rogue
    .goto Undercity,56.04,37.47
    .trainer >> Train Mining. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Mage
    .goto Undercity,85.13,10.03
    .turnin 1881 >> Turn in Speak with Anatasia
    .accept 1882 >> Accept The Balnir Farmstead
step
    >>Remember to turn on Find Minerals after every death/logout if you trained Mining << Rogue/Warrior
    .goto Undercity,84.06,17.44
    .turnin 405 >>Turn in The Prodigal Lich
    .accept 357 >>Accept The Lich's Identity
step
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Rogue
    #sticky
    #completewith UnluckyRogue
    .unitscan Astor Hadren
    >>If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher
    .complete 1886,1 --Astor's Letter of Introduction (1)
step << Warlock
    #sticky
    #completewith next
    >>Loot rings from scarlet mobs in the area. You'll finish this later
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Warlock
    .goto Tirisfal Glades,51.13,67.80
    >> Loot the chest inside. Kill Scarlet mobs
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    >>Go back into Undercity
    .goto Undercity,85.07,25.99
    .turnin 1473 >> Turn in Creature of the Void
    .accept 1471 >> Accept The Binding
step << Warlock
    >>Use the Runes of Summoning in your bag on top of the summoning circle. Kill the Voidwalker
    .goto Undercity,86.60,26.95
    .complete 1471,1 --Summoned Voidwalker (1)
step << Warlock
    >>It's recommended to use Voidwalker until you get your Succubus
    .goto Undercity,85.07,25.99
    .turnin 1471 >> Turn in The Binding
step << Warlock
    #sticky
    #completewith next
    .goto Undercity,85.26,19.89
    +Go above the Relic Vendor and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Warlock
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
    .goto Tirisfal Glades,60.58,51.76
    .turnin 370 >>Turn in At War With The Scarlet Crusade
    .accept 371 >>Accept At War With The Scarlet Crusade
step
    #completewith next
    .vendor >> If you have spare money and need bags, you can buy 6 slots from Mrs.Winters next to the Inn entrance. Otherwise, skip this step
step
    .goto Tirisfal Glades,61.7,52.0
    .vendor 5688 >> Buy food/water inside the Inn if needed
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    .turnin 359 >>Turn in Forsaken Duties
    .accept 360 >>Accept Return to the Magistrate
    .accept 356 >>Accept Rear Guard Patrol
step << Mage
    #sticky
    #label Snapdragon
    >>Click any of the plants nearby
    .goto Tirisfal Glades,77.53,61.83
    .complete 1882,1 --Balnir Snapdragons (1)
step
    .goto Tirisfal Glades,75.88,60.90
    >>Kill Undead in the field
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
step
    #sticky
    #completewith next
    >>Loot rings from scarlet mobs in the area. You'll finish this later
    .complete 374,1 --Scarlet Insignia Ring (10)
step
    >>Be careful as the Friars heal. Kill Captain Vachon inside
    .complete 371,1 --Captain Vachon (1)
    .complete 371,2 --Scarlet Friar (5)
    .goto Tirisfal Glades,79.47,55.92
step
    >>Kill Spiders. Loot them for their venom
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .goto Tirisfal Glades,86.19,52.00
step
    .complete 357,1 --The Lich's Spellbook (1)
    .goto Tirisfal Glades,67.97,42.09
step
    #softcore
    #completewith next
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >> Die ON THE SMALLER ISLAND and respawn at Brill
step
    #softcore
    #era/som
    .goto Tirisfal Glades,59.45,52.39
    .turnin 369 >>Turn in A New Plague
    .accept 492 >>Accept A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
step
    #hardcore
    #era/som
    >>Run back to Brill
    .goto Tirisfal Glades,59.45,52.39
    .turnin 369 >>Turn in A New Plague
    .accept 492 >>Accept A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
step
    #softcore
    #som
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    .turnin 369 >>Turn in A New Plague
    .accept 492 >>Accept A New Plague
--  .accept 445 >>Accept Delivery to Silverpine Forest
step
    #hardcore
    #som
    #phase 3-6
    >>Run back to Brill
    .goto Tirisfal Glades,59.45,52.39
    .turnin 369 >>Turn in A New Plague
    .accept 492 >>Accept A New Plague
--   .accept 445 >>Accept Delivery to Silverpine Forest
step
    .goto Tirisfal Glades,60.58,51.77
    .turnin 371 >>Turn in At War With The Scarlet Crusade
    .accept 372 >>Accept At War With The Scarlet Crusade
step
    .goto Tirisfal Glades,61.26,50.84
    .turnin 360 >>Turn in Return to the Magistrate
    .turnin 355 >>Turn in Speak with Sevren
step
    .isQuestComplete 374
    .goto Tirisfal Glades,60.93,52.01
    .turnin 374 >>Turn in Proof of Demise
step
    #completewith next
    .vendor >> If you have spare money and need bags, you can buy 6 slots from Mrs.Winters next to the Inn entrance. Otherwise, skip this step
step
    .goto Tirisfal Glades,61.7,52.0
    .vendor 5688 >> Buy food/water inside the Inn if needed
step
    .goto Tirisfal Glades,61.94,51.40
    .turnin 492 >>Turn in A New Plague
step
    .hs >> Hearth to Undercity
step << Mage
    >>Choose any reward. Personal preference
    .goto Undercity,85.15,10.04
    .turnin 1882 >>Turn in The Balnir Farmstead
step << Rogue
    .isQuestComplete 1886
    .goto Undercity,84.06,17.46
    .turnin 357 >>Turn in The Lich's Identity
    .accept 366 >>Accept Return the Book
step << Rogue
    .money <0.2200
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << Warrior
    .money <0.2950
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Claymore from him (26s 76c). Skip this if your weapon is better, or there's something better on the AH
    .collect 1198,1 --Collect Claymore (1)
step << Rogue
    .goto Undercity,83.52,69.10
    .turnin 1886 >> Turn in The Deathstalkers
    .isQuestComplete 1886
step
    .goto Undercity,83.52,69.10
    .accept 1898 >>Accept The Deathstalkers
    .isQuestTurnedIn 1886
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,54.84,76.31
    .turnin 1898 >> Turn in The Deathstalkers
    .accept 1899 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,55.43,76.87
    >>Loot the Bookshelf behind Andron
    .complete 1899,1
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,83.53,69.12
    .turnin 1899 >> Turn in The Deathstalkers
    .accept 1978 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    .turnin 1978 >>Turn in The Deathstalkers
    >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
    .goto Undercity,84.06,17.46
    .turnin 357 >>Turn in The Lich's Identity
    .accept 366 >>Accept Return the Book
step
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step
    .goto Tirisfal Glades,65.49,60.25
    .turnin 356 >>Turn in Rear Guard Patrol
step
    #sticky
    #label Rings
    >>Loot rings from scarlet mobs you see
    .complete 374,1 --Scarlet Insignia Ring (10)
step
    .goto Tirisfal Glades,79.52,25.14
    >>Kill Captain Melrache and his guards in the tower
    >>Grind mobs en route << Warrior/Mage
    .complete 372,1 --Captain Melrache (1)
    .complete 372,2 --Scarlet Bodyguard (2)
step << Mage/Warrior
    .isOnQuest 374
    .xp 11+5300 >> Grind to 5300+/8800xp
step << Mage/Warrior
    .isQuestTurnedIn 374
    .xp 11+5925 >> Grind to 5925+/8800xp
step
    #requires Rings
    .goto Tirisfal Glades,68.19,41.92
    .turnin 366 >>Turn in Return the Book
    .accept 409 >>Accept Proving Allegiance
step
    .goto Tirisfal Glades,68.16,42.01
    >>Loot the box of candles on the ground
    .collect 3080,1 --Collect Candle of Beckoning (1)
step
    .goto Tirisfal Glades,66.64,44.89
    >>Right click on the table in the middle of the island. Kill Nefara when she spawns
    .turnin 410 >> Turn in The Dormant Shade
    .complete 409,1 --Lillith Nefara (1)
step << Mage/Warrior
    .isOnQuest 374
    .xp 11+5900 >> Grind to 5900+/8800xp
step << Mage/Warrior
    .isQuestTurnedIn 374
    .xp 11+6525 >> Grind to 6525+/8800xp
step
    .goto Tirisfal Glades,68.20,41.92
    .turnin 409 >>Turn in Proving Allegiance
    .accept 411 >>Accept The Prodigal Lich Returns
step
    #softcore
    #completewith next
    .deathskip >> Swim west, die to mobs, and respawn at Brill
    .goto Tirisfal Glades,64.40,42.65
step
    #softcore
    .goto Tirisfal Glades,60.58,51.77
    .turnin 372 >>Turn in At War With The Scarlet Crusade
step
    #hardcore
    >>Run back to Brill
    .goto Tirisfal Glades,60.58,51.77
    .turnin 372 >>Turn in At War With The Scarlet Crusade
step
    .goto Tirisfal Glades,60.93,52.01
    .turnin 374 >>Turn in Proof of Demise
step << Rogue
    #sticky
    #completewith next
    .unitscan Astor Hadren
    >>If you see Astor, talk to him and kill him. Loot him for the letter. He patrols the road between Brill and The Sepulcher
    .complete 1886,1 --Astor's Letter of Introduction (1)
step
    .goto Undercity,66.36,0.36
    .zone Undercity >> Run to Undercity
step << Rogue/Warrior
    .isQuestComplete 1886 << Rogue
    .goto Undercity,84.06,17.46
    .turnin 411 >>Turn in The Prodigal Lich Returns
step << Rogue
    .money <0.2200
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << Warrior
    #level 12
    .goto Undercity,46.93,15.23
    .trainer >> Train your class spells
step << Warrior
    .money <0.2950
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Claymore from him (26s 76c). Skip this if your weapon is better, or there's something better on the AH
    .collect 1198,1 --Collect Claymore (1)
step << Warrior
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Perform a Logout Skip by positioning your character until it looks like they're floating on the edge of a bridge, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Warrior
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Rogue
    .goto Undercity,83.52,69.10
    .turnin 1886 >> Turn in The Deathstalkers
    .isQuestComplete 1886
step << Rogue
    .goto Undercity,83.52,69.10
    .accept 1898 >>Accept The Deathstalkers
    .isQuestTurnedIn 1886
step << Rogue
    #level 12
    .goto Undercity,83.87,72.08
    .trainer >> Train your class spells
step << Priest
     #level 12
    .goto Undercity,48.98,18.33
    .trainer >> Train your class spells
    .turnin 5663 >> Turn in Touch of Weakness
step << Priest
    .goto Undercity,48.98,18.33
    .turnin 5663 >> Turn in Touch of Weakness
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,54.84,76.31
    .turnin 1898 >> Turn in The Deathstalkers
    .accept 1899 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,55.43,76.87
    >>Loot the Bookshelf behind Andron
    .complete 1899,1
step << Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,83.53,69.12
    .turnin 1899 >> Turn in The Deathstalkers
    .accept 1978 >> Accept The Deathstalkers
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    .turnin 1978 >>Turn in The Deathstalkers
    >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << !Warrior
    .goto Undercity,84.07,17.45
    .turnin 411 >>Turn in The Prodigal Lich Returns
step << Mage
    #level 12
    .goto Undercity,85.14,10.04
    .trainer >> Train your class spells
step << Warlock
    #level 12
    .goto Undercity,86.20,15.92
    .trainer >> Train your class spells inside the building
step << !Warrior
    #era/som
    .goto Undercity,46.16,43.97,50,0
    .goto Undercity,41.04,33.26,50,0
    .goto Undercity,23.86,35.90,50,0
    .goto Undercity,15.06,32.86,50 >> Exit Undercity via the Sewers
step << !Warrior
    #som
    #phase 3-6
    #sticky
    #completewith next
    .goto Undercity,82.36,15.31
    +Perform a Logout Skip by positioning your character until it looks like they're floating on the edge of a bridge, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << !Warrior
    #som
    #phase 3-6
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Undead
    #som
    #phase 3-6
    #sticky
    #completewith next
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Make Sharpening Stones/Bandages while you wait << Warrior/Rogue
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Conjure Food/water while you wait << Mage
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. << !Warrior !Rogue !Mage
    .goto Tirisfal Glades,60.74,58.74
step << Undead
    #som
    #phase 3-6
    .goto Tirisfal Glades,60.89,59.06,30,0
    .goto Tirisfal Glades,60.73,58.76
    .zone Durotar >> Take the zeppelin to Durotar
step << Undead
    #som
    #phase 3-6
    >>Run to Razor Hill
    .goto Durotar,50.85,43.59
    .accept 840 >>Accept Conscript of the Horde
step << Undead
    #som
    #phase 3-6
    >>Run to The Barrens
    .goto The Barrens,62.26,19.38
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step << Undead
    #som
    #phase 3-6
    .goto The Barrens,52.23,31.01
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
step << Mage
    #som
    #phase 3-6
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, complete this step
]])

RXPGuides.RegisterGuide([[
#group RestedXP Horde 1-22
<< Horde
#version 1
#defaultfor Undead/Troll Rogue/Orc Rogue
#classic
#era/som
#name 11-14 Silverpine Forest
#next 12-17 The Barrens

step << !Undead Rogue
    .goto Tirisfal Glades,61.87,65.02,40 >> Run to Undercity
step << !Undead Rogue
    .goto Tirisfal Glades,61.81,74.42,30 >> Run to the Elevator room
step << !Undead Rogue
    >>Take one of the elevators down
    .goto Undercity,63.25,48.56
    .fp Undercity >> Get the Undercity flight path
step << !Undead Rogue
    .money <0.3023
    .goto Tirisfal Glades,64.16,75.54
    >>Talk to Charles. Buy a Cutlass from him (20s 23c). You'll train Swords soon. Skip this if your weapon is better, or there's something better on the AH
    .collect 851,1 --Collect Cutlass (1)
step << !Undead Rogue
    #softcore
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords. If you didn't have enough to buy a cutlass earlier, check the AH for a weapon after
step << !Undead Rogue
    #hardcore
    .goto Undercity,57.32,32.77
    .trainer >> Train Swords. If you didn't have enough to buy a cutlass earlier, then buy a cheap weapon from the next vendor you see or wait for one to drop whilst questing
step << !Undead Rogue
    .goto Undercity,46.5,44.0,90 >> Exit Undercity via the Sewers
step
    .goto Tirisfal Glades,54.90,72.42,120,0
    .zone Silverpine Forest >> Run to Silverpine
step
    #sticky
    #completewith Rane
    .goto Silverpine Forest,57.42,9.80
    >>Kill Worgs, loot them for their hearts.
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
step
    .unitscan Gorefang
    >>Talk to Erland to start his escort. Start at full health/mana
    .goto Silverpine Forest,56.19,9.18
    .accept 435 >>Accept Escorting Erland
step
    >>Be careful as up to 2 wolves can pull at once. Eat/drink as soon as you're out of combat
    .goto Silverpine Forest,54.12,13.45
    .complete 435,1 --Erland must reach Rane Yorick (1)
step
    #label Rane
    .goto Silverpine Forest,53.46,13.43
    .turnin 435 >>Turn in Escorting Erland
    .accept 429 >> Accept Wild Hearts
    .accept 449 >>Accept The Deathstalkers' Report
step
    >>Kill Worgs, loot them for their hearts.
    .goto Silverpine Forest,57.42,9.80
    .collect 3164,6 --Collect Discolored Worg Heart (6)
step
    #completewith next
    .goto Silverpine Forest,45.01,39.30
    .vendor >> vendor trash. Repair
step
    #sticky
    #completewith next
    #softcore
    .deathskip >> Die and respawn at The Sepulcher
step
    .goto Silverpine Forest,44.21,39.81
    .accept 421 >>Accept Prove Your Worth
    #softcore
step
    >>Run to The Sepulcher
    .goto Silverpine Forest,44.21,39.81
    .accept 421 >>Accept Prove Your Worth
    #hardcore
step
    .goto Silverpine Forest,43.98,40.93
    .accept 477 >>Accept Border Crossings
step << Undead
    .goto Silverpine Forest,43.43,41.67
    .accept 6321 >>Accept Supplying the Sepulcher
step
    #sticky
    #completewith next
    .goto Silverpine Forest,43.17,41.28
    .vendor >> Buy food/water if needed
step
    >>Go downstairs into the Crypt
    .goto Silverpine Forest,43.43,40.87
    .turnin 449 >>Turn in The Deathstalkers' Report
    .accept 3221 >>Accept Speak with Renferrel
    .accept 437 >>Accept The Dead Fields
step
    .goto Silverpine Forest,42.80,40.86
    .turnin 429 >> Turn in Wild Hearts
    .turnin 445 >>Turn in Delivery to Silverpine Forest
    .turnin 3221 >>Turn in Speak with Renferrel
    .accept 1359 >>Accept Zinge's Delivery
    .accept 447 >>Accept A Recipe For Death
    .accept 430 >>Accept Return to Quinn
step
    .goto Silverpine Forest,43.98,39.89
    .vendor >> Finish filling your bag slots with 6 slots from Edwin. Buy potions if you have spare money
step << Warlock/Mage/Priest
    #completewith next
    .money <0.1400
    .goto Silverpine Forest,44.80,39.24
    .vendor >> Talk to Andrea and check for a Wise Man's Belt. Buy it if its up
step
    .unitscan Son of Arugal
    .goto Silverpine Forest,50.00,39.46,70,0
    .goto Silverpine Forest,49.19,34.42,70,0
    .goto Silverpine Forest,50.00,39.46
    >>Kill Moonrage Whitescalps in the area. Avoid Sons of Arugal
    .complete 421,1 --Moonrage Whitescalp (5)
step
    .goto Silverpine Forest,44.19,39.78
    .turnin 421 >>Turn in Prove Your Worth
    .accept 422 >>Accept Arugal's Folly
step
    #sticky
    #completewith Nightlash
    >>Kill Bears. Loot them for their hearts
    .complete 447,1 --Grizzled Bear Heart (6)
step
    >>Go into the 2nd floor of the house in Valgan's Field. Loot the books on the floor
    .goto Silverpine Forest,52.82,28.58
    .complete 422,1 --Remedy of Arugal (1)
step
    >>Go upstairs in the building
    .goto Silverpine Forest,53.43,12.59
    .turnin 430 >>Turn in Return to Quinn
step
    >>Go back outside
    .goto Silverpine Forest,53.46,13.43
    .accept 425 >>Accept Ivar the Foul
step
    >>Kill Ivar in the Barn. Loot his Head
    .goto Silverpine Forest,51.51,13.90
    .complete 425,1 --Ivar's Head (1)
step
    .goto Silverpine Forest,53.46,13.43
    .turnin 425 >>Turn in Ivar the Foul
step
    #label Nightlash
    .unitscan Nightlash
    >>Kill Gnolls around The Dead Field until Nightlash spawns. Kill and Loot her for her Essence
    .goto Silverpine Forest,45.44,21.01
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
step
    .unitscan Son of Arugal
    >>Kill Bears in the area. Loot them for their hearts. Avoid Sons of Arugal
    .goto Silverpine Forest,41.73,17.83
    .complete 447,1 --Grizzled Bear Heart (6)
step
    .unitscan Krethis Shadowspinner
    >>Kill Spiders in the area. Loot them for their Blood.
    >> Be careful of the rare in the area, as it's impossibly difficult << !Mage !Warlock
    >> Be careful of the rare in the area, as it's difficult but doable. She has a 130 damage shield on a 15s cooldown, and 110 damage instant shock ability << Mage/Warlock
    .goto Silverpine Forest,35.81,14.44
    .complete 447,2 --Skittering Blood (6)
step
    #softcore
    .deathskip >> Die and respawn at The Sepulcher
step
    #era
    #hardcore
    >>Run back to The Sepulcher
    .goto Silverpine Forest,44.20,39.75
    .turnin 422 >> Turn in Arugal's Folly
    .accept 423 >> Accept Arugal's Folly
step
    #som
    #hardcore
    >>Run back to The Sepulcher
    .goto Silverpine Forest,44.20,39.75
    .turnin 422 >> Turn in Arugal's Folly
step << Warlock/Mage/Priest
    #completewith next
    .money <0.1400
    .goto Silverpine Forest,44.80,39.24
    >> Talk to Andrea and check for a Wise Man's Belt. Buy it if its up
    .collect 4786,1
step
    #era
    #softcore
    .goto Silverpine Forest,44.20,39.75
    .turnin 422 >> Turn in Arugal's Folly
    .accept 423 >> Accept Arugal's Folly
step
    #som
    #softcore
    .goto Silverpine Forest,44.20,39.75
    .turnin 422 >> Turn in Arugal's Folly
step
    >>Go down into the Crypt
    .goto Silverpine Forest,43.43,40.87
    .turnin 437 >> Turn in The Dead Fields
    .accept 438 >> Accept The Decrepit Ferry
step << Undead
    .goto Silverpine Forest,45.62,42.60
    >>DO NOT go Undercity yet
    .turnin 6321 >>Turn in Supplying the Sepulcher
    .accept 6323 >>Accept Ride to the Undercity
    .fp Sepulcher >> Get the Sepulcher flight path
step
    >>Click on the Boat
    .goto Silverpine Forest,58.39,34.79
    .turnin 438 >>Turn in The Decrepit Ferry
    .accept 439 >>Accept Rot Hide Clues
step
    #era
    #label Shackles
    >>Kill Worgen in the area. Loot them for their Shackles
    .goto Silverpine Forest,56.24,46.61
    .complete 423,1 --Glutton Shackle (6)
    .complete 423,2 --Darksoul Shackle (3)
step
    #softcore
    .goto Silverpine Forest,49.89,60.33
    >>Run into the camp and click on the crate. Turn in, pick up the quest, and die. Be careful as the mobs cast Frostbolt
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
    .deathskip >> Die and respawn in The Sepulcher
step
    #hardcore
    .goto Silverpine Forest,49.89,60.33
    >>Click on the crate in the camp. Be careful killing the mobs in the area, as they cast Frostbolt and can easily run away and aggro other mobs
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
step
    #softcore
    .goto Silverpine Forest,43.98,40.93
    .turnin 478 >>Turn in Maps and Runes
    .accept 481 >>Accept Dalar's Analysis
step
    #hardcore
    >>Run back to The Sepulcher
    .goto Silverpine Forest,43.98,40.93
    .turnin 478 >>Turn in Maps and Runes
    .accept 481 >>Accept Dalar's Analysis
step
    #era
    .goto Silverpine Forest,44.18,39.77
    .turnin 423 >>Turn in Arugal's Folly
    .turnin 481 >>Turn in Dalar's Analysis
    .accept 482 >>Accept Dalaran's Intentions
--    .accept 424 >>Accept Arugal's Folly
step
    #som
    .goto Silverpine Forest,44.18,39.77
    .turnin 481 >>Turn in Dalar's Analysis
    .accept 482 >>Accept Dalaran's Intentions
--    .accept 424 >>Accept Arugal's Folly
step
    .goto Silverpine Forest,43.98,40.93
    .turnin 482 >>Turn in Dalaran's Intentions
--   .accept 479 >>Accept Ambermill Investigations
step
    >>Go downstairs into the crypt
    .goto Silverpine Forest,43.43,40.87
    .turnin 439 >>Turn in Rot Hide Clues
    .accept 440 >>Accept The Engraved Ring << Undead
--   .accept 443 >>Accept Rot Hide Ichor
-- Engraved ring q line worth it depending on class?
step << Undead
    .xp 14
step << Undead
    .hs >> Hearth to Undercity
step << !Undead Rogue
   .goto Silverpine Forest,45.62,42.60
    .fp Sepulcher >> Get the Sepulcher flight path
    .fly Undercity >> Fly to Undercity
step << Undead
    .goto Undercity,61.48,41.81
    .turnin 6323 >> Turn in Ride to the Undercity
    .accept 6322 >> Accept Michael Garrett
step << Undead
    .goto Undercity,63.27,48.55
    .turnin 6322 >>Turn in Michael Garrett
--    .accept 6324 >>Accept Return to Podrig
step << Warrior
    .goto Undercity,46.93,15.23
    .trainer >> Train your class spells
step << Undead Rogue
    .isQuestComplete 1886
    .goto Undercity,83.52,69.10
    .turnin 1886 >> Turn in The Deathstalkers
step << Undead Rogue
    .goto Undercity,83.52,69.10
    .accept 1898 >>Accept The Deathstalkers
    .isQuestTurnedIn 1886
step << Rogue
    .goto Undercity,83.87,72.08
    .trainer >> Train your class spells
step << Priest
    .goto Undercity,48.98,18.33
    .trainer >> Train your class spells
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,54.84,76.31
    .turnin 1898 >> Turn in The Deathstalkers
    .accept 1899 >> Accept The Deathstalkers
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,55.43,76.87
    >>Loot the Bookshelf behind Andron
    .complete 1899,1
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Undercity,83.53,69.12
    .turnin 1899 >> Turn in The Deathstalkers
    .accept 1978 >> Accept The Deathstalkers
step << Mage
    .goto Undercity,85.15,10.04
    .trainer >> Train your class spells
step << Warlock
    .goto Undercity,86.20,15.92
    .trainer >> Train your class spells inside the building
step
    .goto Undercity,52.86,77.72,40,0
    .goto Undercity,48.83,69.28
    .turnin 447 >>Turn in A Recipe For Death
step
    .goto Undercity,50.15,67.98
    .turnin 1359 >> Turn in Zinge's Delivery
    .accept 1358 >> Accept Sample for Helbrim
step << Undead Rogue
    .isQuestTurnedIn 1886
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    .turnin 1978 >>Turn in The Deathstalkers
    >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Undead Rogue
    .isOnQuest 1886
    >>Abandon The Deathstalkers, there's no opportunity left to do it
    .abandon 1886 >> Abandon The Deathstalkers
step << Undead !Rogue
    #sticky
    #completewith next
    +Perform a Logout Skip by jumping on the Bookshelf behind you, then logging out and back in.
    .link https://www.youtube.com/watch?v=c0DFOlRQrKs >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << !Undead Rogue
    .hs >> Hearth to Crossroads
step << Undead
    .goto Tirisfal Glades,61.85,66.59,60 >> Exit Undercity
step << Undead
    .goto Tirisfal Glades,61.26,50.84
    .turnin 440 >>Turn in The Engraved Ring
    .accept 441 >>Accept Raleigh and the Undercity
step << Undead
    #sticky
    #completewith next
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Make Sharpening Stones/Bandages while you wait << Warrior/Rogue
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. Conjure Food/water while you wait << Mage
    +Go up the Zeppelin Tower. Take the Zeppelin to Orgrimmar. << !Warrior !Rogue !Mage
    .goto Tirisfal Glades,60.74,58.74
step << Undead
    .zone Durotar >> Take the zeppelin to Durotar
step << Undead
    .goto Durotar,50.85,43.59
    .accept 840 >>Accept Conscript of the Horde
step << Undead
    .goto The Barrens,62.26,19.38
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step << Undead
    >>Grind mobs en route << Warrior/Rogue
    .goto The Barrens,52.23,31.01
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
step << Mage
    +If you're planning on leveling via AoE, choose the Barrens AoE Guide manually. Otherwise, complete this step
]])
