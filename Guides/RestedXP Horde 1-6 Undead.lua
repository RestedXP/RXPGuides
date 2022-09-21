RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 1-6 Tirisfal Glades
#version 1
#group RestedXP Horde 1-30
#defaultfor Scourge
#next 6-10 Eversong Woods
step << !Scourge
    #sticky
    #completewith next
    .goto Tirisfal Glades,30.2,71.7
    +You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in
step
	.destroy 6948
    >>Run out of the crypt and delete your Hearthstone << tbc
    .goto Tirisfal Glades,30.2,71.7 << tbc
    .goto Tirisfal Glades,29.99,71.86 << wotlk
    .accept 363 >> Accept Rude Awakening
step << Warrior
    #sticky
    #completewith vendorWar
    +Grind mobs toward town until you have 10c worth of vendorables
    .goto Tirisfal Glades,31.5,69.8
step << Warlock tbc
    #sticky
    #completewith vendorLock
    +Grind mobs toward town until you have 10c worth of vendorables
    .goto Tirisfal Glades,31.5,69.8
step << Priest/Mage
    #sticky
    #completewith vendorCaster
    +Grind mobs toward town until you have 35c worth of vendorables
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
    .vendor >> Vendor Trash and then purchase 10 Refreshing Spring Water << tbc
    .vendor >> Vendor Trash << wotlk	
	.collect 159,10 << tbc --Collect Refreshing Spring Water (x10)
step << Warlock tbc
    #label vendorLock
    .goto Tirisfal Glades,30.8,66.4
    .vendor >>Vendor trash at Demon Trainer
step << Warlock tbc
    .goto Tirisfal Glades,30.9,66.3
    .train 348 >>Train Immolate
step << Warlock tbc
    .goto Tirisfal Glades,31.0,66.4
    .accept 1470 >>Accept Piercing the Veil
step << Warlock
    .goto Tirisfal Glades,30.8,66.2
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
step << Warlock tbc
    .goto Tirisfal Glades,32.5,61.4
    >> Kill Rattlecage Skeletons in the area for Skulls
    .complete 1470,1 --Rattlecage Skull (3)
step << Warlock tbc
    #completewith next
    .goto Tirisfal Glades,32.3,65.4,30 >> Grind on your way back to town until you have 25c+ of vendorables
step << Warlock tbc
    .goto Tirisfal Glades,32.3,65.4
    .vendor >> Vendor trash & buy 5 water from Joshua
	.collect 159,5 --Collect Refreshing Spring Water (x5)
step << Warlock tbc
    >>Summon your Imp after you turnin your quest
    .goto Tirisfal Glades,31.0,66.4
    .turnin 1470 >>Turn in Piercing the Veil
step << Warlock tbc
    .xp 2 >> Grind to level 2
step << Mage
    #completewith next
    .goto Tirisfal Glades,30.9,66.1
    .trainer >> Train your class spells
step << Priest
    #completewith next
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
step !Warlock tbc
	.goto Tirisfal Glades,32.4,62.8
	.xp 2 >> Grind to level 2
step << Mage tbc/Warlock tbc/Priest tbc
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash & buy 10 more waters
	.collect 159,10 --Collect Refreshing Spring Water (x10)
step << Mage wotlk/Priest wotlk
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash
step << Warrior/Rogue
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash
step << Warlock wotlk
    .goto Tirisfal Glades,32.3,65.4
	.money >0.0054
	.vendor >>Grind mobs until you get a total of 54 copper. (From items after vendoring everything)
	*We will get 17c from a the next quest turn in and 12c from starting gear
--95c for imp
step
    .goto Tirisfal Glades,30.8,66.2
    .turnin 364 >> Turn in The Mindless Ones
step
    .goto Tirisfal Glades,30.8,66.2
    .accept 3095 >> Accept Simple Scroll << Warrior
    .accept 3096 >> Accept Encrypted Scroll << Rogue
    .accept 3097 >> Accept Hallowed Scroll << Priest
    .accept 3098 >> Accept Glyphic Scroll << Mage
    .accept 3099 >> Accept Tainted Scroll << Warlock
    .accept 3901 >> Accept Rattling the Rattlecages
    .accept 376 >> Accept The Damned
step << Mage
    .goto Tirisfal Glades,30.9,66.1
    .turnin 3098 >> Turn in Glyphic Scroll
step << Warlock
    .goto Tirisfal Glades,30.9,66.3
    .turnin 3099 >> Turn in Tainted Scroll
step << Warlock wotlk
	#completewith next
    .goto Tirisfal Glades,32.3,65.4
	.money >0.0095
	.vendor >>Grind mobs until you get a total of 95 copper. Vendor anything you can if it helps you get 95 copper.
--95c for imp	
step << Warlock wotlk
	#label impcheck
	.goto Tirisfal Glades,30.9,66.3
	.train 688 >> Train Summon Imp
step << Priest
    .goto Tirisfal Glades,31.1,66.0
    .turnin 3097 >> Turn in Hallowed Scroll
step << Warlock wotlk
	#completewith next
	.cast 688 >> Summon your Imp
step
    .goto Tirisfal Glades,29.5,67.2,40,0
    .goto Tirisfal Glades,29.6,61.3,50,0
    .goto Tirisfal Glades,32.5,56.7,50,0
    .goto Tirisfal Glades,35.2,57.0,50,0
    .goto Tirisfal Glades,29.5,67.2,40,0
    .goto Tirisfal Glades,29.6,61.3,50,0
    .goto Tirisfal Glades,32.5,56.7,50,0
    .goto Tirisfal Glades,35.2,57.0,50,0
    >>Kill & loot Wolves and Duskbats
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
step
    .goto Tirisfal Glades,33.15,60.70
    >> Kill Skeletons in the town
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
step
    .xp 3+980 >>Grind mobs en route back to town to 980+/1400xp
step << Mage tbc/Mage wotlk/Warlock tbc
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash & buy water down to no less than 95c
step << Warlock wotlk
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash
step << Priest
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash & buy water down to no less than 1s 90c
step
    .turnin 3901 >> Turn in Rattling the Rattlecages
    .goto Tirisfal Glades,30.9,66.2	
    .turnin 376 >> Turn in The Damned	
    .accept 6395 >> Accept Marla's Last Wish	
    .goto Tirisfal Glades,30.9,66.1	
step << Priest
    #completewith next
    .goto Tirisfal Glades,31.1,66.0
    .trainer >> Train your class spells
step << Warlock
    #completewith next
    .goto Tirisfal Glades,30.9,66.3
    .trainer >> Train your class spells
step << Mage
    #completewith next    
    .goto Tirisfal Glades,30.9,66.1
    .trainer >> Train your class spells
step
    .goto Tirisfal Glades,32.2,66.0
    .accept 380 >> Accept Night Web's Hollow
step << Rogue/Warrior
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash
step << Rogue
    .goto Tirisfal Glades,32.5,65.7
    .turnin 3096 >> Turn in Encrypted Scroll
step << Warrior
    .goto Tirisfal Glades,32.7,65.6
    .turnin 3095 >> Turn in Simple Scroll
step << Warrior
    .goto Tirisfal Glades,32.7,65.6    
    #completewith next    
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
    #requires Goods
    .goto Tirisfal Glades,27.1,59.0,80,0
    .goto Tirisfal Glades,26.8,59.4,30,0
    .goto Tirisfal Glades,24.0,58.2,60,0
	.goto Tirisfal Glades,27.1,59.0
    >>Kill Young Spiders outside the cave and then enter the cave and kill the Night Web Spiders inside. We're deathskipping in the cave, make sure you're done with Young Spiders before entering.
    .complete 380,1 --Kill Young Night Web Spider (10)
	.complete 380,2 --Kill Night Web Spider (x8)
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    .goto Tirisfal Glades,31.6,65.6
	.cast 688 >> Resummon your Imp << Warlock
    .turnin 3902 >> Turn in Scavenging Deathknell
step << Rogue/Warrior
    .goto Tirisfal Glades,32.41,65.66
    .vendor >>Vendor trash & repair your weapon
step << Priest tbc/Mage tbc/Warlock tbc
    .goto Tirisfal Glades,32.3,65.4
    .vendor >>Vendor trash & buy 15 water
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
    .unitscan Samuel Fipps
step
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
step << Warlock
	#completewith next
	.cast 688 >> Resummon your Imp
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
    >>Start making your way out of Deathknell
    .xp 5+2350 >>Grind to 2350+/2800xp en route
step
    .goto Tirisfal Glades,38.2,56.8
    .accept 8 >> Accept A Rogue's Deal
step
	.goto Tirisfal Glades,42.59,51.30,50,0
	.goto Tirisfal Glades,42.59,51.30	
    .deathskip >> Die and respawn at the Spirit Healer in Brill
step
    .goto Tirisfal Glades,60.6,51.8
    .turnin 383 >> Turn in Vital Intelligence
step
    .goto Tirisfal Glades,61.7,52.0
    .turnin 8 >>Turn in A Rogue's Deal
    .vendor >>Vendor trash
step << Warrior
    .xp 6 >> Grind to 6
step << Warrior
    .goto Tirisfal Glades,61.9,52.5
    .trainer >>Train Parry
step
    #completewith next
    .goto Undercity,66.2,1.1,25 >>Go to Undercity
step
    .goto Undercity,62.0,11.3,20 >>Go up the stairs here
step
    #completewith next
    .goto Undercity,54.9,11.3,20 >>Use the Orb of Translocation
step
    .zone Silvermoon City >>Go to Silvermoon City
step
    #completewith next
    .goto Eversong Woods,56.7,49.6,20 >>Run out of Silvermoon
step
    .goto Eversong Woods,54.4,50.7
    .fp Silvermoon City >> Get the Silvermoon City flight path
step
    .goto Eversong Woods,50.3,50.8
    .accept 8475 >> Accept The Dead Scar
step
    .goto Eversong Woods,46.5,49.2,35 >>Run to Falconwing Square
]])

