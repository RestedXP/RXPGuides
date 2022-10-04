RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 20-23 Stonetalon / The Barrens
#version 1
#group RestedXP Horde 1-30
#next 23-27 Hillsbrad / Ashenvale
step << wotlk
    #completewith next
    +If you have access to gold on this server, mail yourself gold for mount training soon!
step
    .zone Orgrimmar >> Run into Orgrimmar
step << !Troll !Orc
    >>Go to the top of the tower
    .goto Orgrimmar,45.1,63.9
    .fp Orgrimmar >> Get the Orgrimmar flight path
step
    .goto Orgrimmar,39.8,37.0,20 >>Run into the Keep
    .zoneskip Orgrimmar,1
step << BloodElf
    .isOnQuest 9626
    .goto Orgrimmar,31.8,38.1
    .turnin 9626 >> Turn in Meeting the Warchief
    .accept 9627 >> Accept Allegiance to the Horde
step << !BloodElf
    .isOnQuest 9813
    .goto Orgrimmar,31.8,38.1
    .turnin 9813 >> Turn in Meeting the Warchief
step
    .goto Orgrimmar,39.0,38.3
    .accept 1061 >> Accept The Spirits of Stonetalon
step << Warlock tbc
    #sticky
    >>You must abandon the quest Carendin's Summons to be able to accept Devourer of Souls
    .abandon 10605 >>Abandon Carendin Summons
    .isOnQuest 10605
step << Warlock tbc
    .goto Orgrimmar,48.2,45.3
    .accept 1507 >>Accept Devourer of Souls
step << Warlock tbc
    .goto Orgrimmar,47.0,46.5
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
step << Warlock tbc
    .goto Orgrimmar,37.0,59.4
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
step << BloodElf
    #xprate <1.5
    .goto Orgrimmar,31.8,38.2
    .accept 9428 >> Accept Report to Splintertree Post
    .maxlevel 21
step << Mage
    .goto Orgrimmar,38.7,85.4
    .train 11417 >> Go and train Portal: Orgrimmar
step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step
    .goto Orgrimmar,52.5,85.1,50,0
    .goto Orgrimmar,49.1,94.3,50 >>Exit Orgrimmar
    .zoneskip Orgrimmar,1
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step
    >>Run all the way down to Ratchet and get the flight path.
    .goto The Barrens,63.1,37.1
    .fp Ratchet >> Get the Ratchet flight path
step
    #xprate <1.5
    >> Accept quest around Ratchet
    .accept 1483 >>Accept Ziz Fizziks
    .goto The Barrens,63.0,37.2
    .accept 959 >>Accept Trouble at the Docks
    .goto The Barrens,63.1,37.6
    .accept 865 >>Accept Raptor Horns
    .goto The Barrens,62.4,37.6
    .maxlevel 21
step
    .goto The Barrens,62.4,37.6
    .accept 1069 >>Accept Deepmoss Spider Eggs
step << Rogue
	.goto The Barrens,65.0,45.4
    >>Run to the boat then go down to the 2nd floor. Start picking lockboxes until you're at 80 lockpicking skill.
	.skill lockpicking,>80
step
    #xprate <1.5
    .maxlevel 21
    >>Run to the Crossroads
    .accept 870 >>Accept The Forgotten Pools
    .goto The Barrens,52.3,31.9
step
    .goto The Barrens,51.9,31.6
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
step
    #completewith next    
    .goto The Barrens,52.0,29.9
	.home >> Set your Hearthstone to The Crossroads
step << Warlock tbc
    .goto The Barrens,51.9,30.3
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
step
    .goto The Barrens,51.5,30.3
    .fp The Crossroads >> Get the The Crossroads flight path
step
    #xprate <1.5
    .goto The Barrens,51.5,30.1
    .accept 848 >> Accept Fungal Spores
    .maxlevel 21
step
    #xprate <1.5
    >> Head west out of the Crossroads
    .goto The Barrens,45.4,28.4
    .accept 850 >> Accept Kolkar Leaders
    .maxlevel 21
step
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
    .isOnQuest 848
step
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
    .isOnQuest 870
step
    >>Finish collecting the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,45.0,22.7
    .complete 848,1 --Collect Fungal Spores (x4)
    .isOnQuest 848
step
    >>Kill Kodobane. Loot him for his head
    .goto The Barrens,42.9,23.5
    .complete 850,1 --Collect Kodobane's Head (x1)
	.unitscan Barak Kodobane
    .isOnQuest 850
step
    #sticky
    #completewith next
    .goto The Barrens,35.3,27.9
    >>Kill & Loot level 16+ raptors as you see them en route to the next step
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    .isOnQuest 1061
    .goto The Barrens,35.3,27.9
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
step
    #xprate <1.5
    .goto The Barrens,35.3,27.9
    .accept 6548 >> Accept Avenge My Village
    .maxlevel 21
step
    .goto Stonetalon Mountains,81.8,96.1
    .zone Stonetalon Mountains >> Head to Stonetalon Mountains
step
    >>Kill Grimtotems in the area
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .isOnQuest 6548
step
    .goto The Barrens,35.2,27.8
    >> Head back to the quest giver in The Barrens
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .isOnQuest 6548
step
    #sticky
    #completewith next
	.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
step << Warlock tbc
    .goto Stonetalon Mountains,73.2,95.1
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
step
    .goto Stonetalon Mountains,71.4,95.1
    >> Talk to Xen'Zilla in the hut
    .accept 6461 >> Accept Blood Feeders
step
    #sticky
    #completewith next
	.goto Stonetalon Mountains,71.7,86.7,40 >>Run to the path here
    .isOnQuest 6629
step
    >>Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
	.goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
	.unitscan Grundig Darkcloud
    .isOnQuest 6629
step
    >>Start the Kaya Escort
    .goto Stonetalon Mountains,73.5,85.8
    .accept 6523 >> Accept Protect Kaya
    .isOnQuest 6629
step
       >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .isOnQuest 6523
step
    #sticky
    #completewith next
    >> Kill Deepmoss Creepers en route to the wanted poster. You do not have to finish the quest now.
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
step
    >>Click the Wanted poster up the road
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step
    .goto Stonetalon Mountains,57.5,76.2,30 >>Run up the path here to Sishir Canyon
step
    #sticky
    #label deepmossegg
    #completewith spiderend
    >>Click the spider eggs near the trees. Be careful as mobs can spawn from the eggs
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .isOnQuest 1069
step
    #sticky
    #label besseleth
    #completewith spiderend
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    >> Kill and loot Besseleth for his fang
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .isOnQuest 6284
step
    >>Kill the Deepmoss Spiders and Besseleth in the area. Loot Besseleth for his fang
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .isOnQuest 6461
step
    #requires besseleth
step
    #label spiderend
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1483 >> Turn in Ziz Fizziks
    .isOnQuest 1483
step
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,59.0,62.6
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    >>Kill Venture Co. Operators until you get the Blueprints
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Finish killing Loggers
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
step
    #requires deepmossegg
    .goto The Barrens,52.2,31.9
    .hs >> Hearth to Crossroads
step
    .isOnQuest 870
    .goto The Barrens,52.2,31.9
    .turnin 870 >> Turn in The Forgotten Pools
step
    .isQuestTurnedIn 870
    .goto The Barrens,52.2,31.9
    .accept 877 >> Accept The Stagnant Oasis
step
    .goto The Barrens,52.3,31.9
    .vendor >> Vendor trash & repair your gear.
step
    .isOnQuest 848
    >>Turning this in will start a timed quest. Log out here if you're going to be busy in the next 45+ minutes.
    .goto The Barrens,51.5,30.2
    .turnin 848 >> Turn in Fungal Spores
step
    .isQuestTurnedIn 848
    >> Wait for the roleplay then accept the quest
    .goto The Barrens,51.5,30.2
    .accept 853 >> Accept Apothecary Zamah
step
    .isOnQuest 853
    #sticky
    #completewith Zamah
    +You have 45 minutes to complete the Apothecary quest so keep an eye on the timer. Skip the quest if you fail it
step
    #completewith next
    >>Kill & Loot any level 16+ Raptors you see
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    >>Click the Bubble Fissure underwater
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Collect Test the Dried Seeds (x1)
    .isOnQuest 877
step
    #label Horns
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1
    >>Finish looting the rest of the Raptor Horns
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    .goto The Barrens,49.3,50.4
    >> Head to the small outpost by the road to the south
    .complete 4921,1 --Find Mankrik's Wife
    .skipgossip
step
    #sticky
    #label Lakota1
    #completewith weapons
	.goto The Barrens,50.0,53.1,75,0
    .goto The Barrens,46.0,49.2,75,0
    .goto The Barrens,45.3,52.5	
    .unitscan Lakota'mani
    >>Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
    .collect 5099,1,883 --Collect Hoof of Lakota'Mani
    .use 5099
    .accept 883 >>Accept Lakota'Mani
    .unitscan Lakota'Mani
step
    #requires Lakota1
    #label weapons
step
    #xprate <1.5
    .goto The Barrens,45.1,57.7
    .accept 893 >>Accept Weapons of Choice
    .maxlevel 25
step
    .isOnQuest 883
    .goto The Barrens,44.7,59.1
    .turnin 883 >> Turn in Lakota'mani
step
    .goto The Barrens,44.8,59.1
    .accept 1130 >> Accept Melor Sends Word
step << Warlock tbc
    .goto The Barrens,44.6,59.3
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
step
    .goto The Barrens,44.5,59.2
    .accept 878 >> Accept Tribes at War
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
step << Warlock tbc
    >>Kill Quillboars en route to here
    .goto The Barrens,43.3,47.9
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
step
    >>Kill a LOT of Quillboars. Prioritize Thornweavers, Water Seekers, and Geomancers where you can. Loot them for their tusks. Save the Blood Shards you get
    *Water Seekers only spawn in the south western most camps. Go East or North West for Geomancers / Thornweavers.
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,42.2,48.3,50,0
    .goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,53.2,54.3,50,0
    .goto The Barrens,53.3,51.3,50,0
    .goto The Barrens,53.2,54.3,50,0
    .goto The Barrens,53.3,51.3,50,0
    .goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3
    .complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    .goto The Barrens,44.2,62.1,75,0
    .goto The Barrens,49.2,62.6,75,0
    .goto The Barrens,49.6,60.0,75,0
    .goto The Barrens,44.2,62.1,75,0
    .goto The Barrens,49.2,62.6,75,0
    .goto The Barrens,49.6,60.0
    >>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. Skip this quest if you can't find him
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .use 5102
    .accept 884 >>Accept Owatanka
    .unitscan Owatanka
step    
    .goto The Barrens,44.6,59.2
    .turnin 878 >> Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
	>> Use your Blood Shards on Spirit of the Wind
    .accept 889 >> Accept Spirit of the Wind
    .turnin 889 >> Turn in Spirit of the Wind
step
    #completewith tbroute
    .destroy 5075 >> Destroy any leftover Blood Shards
    .itemcount 5075,1
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
    .turnin 884 >> Turn in Owatanka
step
	.isOnQuest 883
        .goto The Barrens,44.9,59.1
    .turnin 883 >> Turn in Lakota'mani
step << !Tauren
    #label tbroute
    .goto Thunder Bluff,32.1,67.2,30 >>Run to Thunder Bluff
step << !Tauren
    #completewith next
    .goto Thunder Bluff,45.8,64.7
	.home >> Set your Hearthstone to Thunder Bluff
step << Warlock
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << Tauren
    #completewith next
    .goto The Barrens,44.4,59.2
	.fly Thunder Bluff >>Fly or run to Thunder Bluff
step << Druid
	#completewith next
	.goto Thunder Bluff,76.5,27.2
	.accept 27 >>Accept A Lesson to Learn << tbc
	.trainer >> Go and train your class spells
step
    #xprate <1.5
    .goto Thunder Bluff,30.1,30.0,25 >>Go into The Pools of Vision below the Spirit Rise
step
    #xprate <1.5
    #label Zamah
    >>Talk to Clarice Foster
    .goto Thunder Bluff,27.5,24.7
    .accept 264 >> Accept Until Death Do Us Part
    .maxlevel 21
step
    .isOnQuest 853
    .goto Thunder Bluff,23.0,20.9
    >> If you failed the Zamah quest, just abandon it
    .turnin 853 >> Turn in Apothecary Zamah
step
    .isOnQuest 853
    .abandon 853 >> Abandon Apothecary Zamah
step
    #xprate <1.5
    .goto Thunder Bluff,23.0,20.9
    .accept 962 >> Accept Serpentbloom
    .maxlevel 21
step << Tauren
    #completewith next
    .goto Thunder Bluff,45.8,64.7
    .home >> Set your Hearthstone to Thunder Bluff
step
    .goto Thunder Bluff,61.4,80.9
    >> Head to Hunter's Rise
    .turnin 1130 >> Turn in Melor Sends Word
    .accept 1131 >> Accept Steelsnap
step
    .goto Thunder Bluff,54.9,51.4
    .accept 1195 >> Accept The Sacred Flame
step << !Tauren
    >>Go up the tower
    .goto Thunder Bluff,47.0,49.8
    .fp Thunder Bluff >>Get the Thunder Bluff Flight Path
step
    #completewith ratchetanchor1
    .goto Thunder Bluff,47.0,49.8
    .fly Ratchet >> Fly to Ratchet
step
    .isOnQuest 865
    .goto The Barrens,62.4,37.6
    .turnin 865 >> Turn in Raptor Horns
step
    #xprate <1.5
    .isQuestTurnedIn 865
    .goto The Barrens,62.4,37.6
    .accept 1491 >>Accept Smart Drinks
step
    #label ratchetanchor1
    .goto The Barrens,62.4,37.6
    .turnin 1069 >> Turn in Deepmoss Spider Eggs
step
    #sticky
    #completewith next
    .itemcount 5570,1
    .destroy 5570 >> Destroy any leftover Deepmoss Spider Eggs
step
    .goto The Barrens,63.0,37.2
    .turnin 1094 >> Turn in Further Instructions
    .accept 1095 >> Accept Further Instructions
step
    #completewith next
    .goto The Barrens,63.1,37.2
    .fly Crossroads >> Fly to Crossroads
step
    .goto The Barrens,52.0,31.6
    .turnin 4921 >> Turn in Lost in Battle
    .turnin 899 >> Turn in Consumed by Hatred
step
    #sticky
    #completewith next
    .destroy 5085 >> Destroy any leftover Quilboar Tusks
    .itemcount 5085,1
step
    .goto The Barrens,52.2,31.9
    .turnin 877 >> Turn in The Stagnant Oasis
    .isOnQuest 877
step
    .goto The Barrens,47.0,34.7,15,0
    .goto The Barrens,46.4,34.9,15,0
    .goto The Barrens,46.6,34.8,10 >>Go up the mountain here
    .isOnQuest 959
step
    .goto Kalimdor,51.9,55.4,30,0
    .goto Kalimdor,51.9,55.6,15 >> Drop down carefully to the eye of the cave (you may have to walk or backpedal off)
    .isOnQuest 959
step
    >>Go into the eye of the cave
    .goto Kalimdor,51.9,55.4
    .accept 1486 >>Accept Deviate Hides
    .isOnQuest 959
step
    .goto The Barrens,46.1,36.7,35 >>Leave the eye. Go to the mouth of the cave
    .isOnQuest 959
step
    #sticky
    #label Deviate
    >>Kill Deviate mobs. Loot them for their hides
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
step
    #sticky
    #label Serpentbloom
    >>Look for green and red flowers on the ground
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
step
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.2,55.2
    >>Look for Mad Magglish (a goblin). He's stealthed, and has multiple spawnpoints. Kill and loot him for 99-Year-Old Port
    .complete 959,1 --Collect 99-Year-Old Port (1)
    .unitscan Mad Magglish
    .isOnQuest 959
step
    .goto Kalimdor,51.9,54.9,20 >>Enter the deeper part of the cave
    .isOnQuest 1491
step
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
	.goto Kalimdor,52.6,54.5
    >>Kill Ectoplasms for Wailing Essences. Keep an eye out for the 2 rares in the deeper part of the cave (Trigore and Boahn), as they can drop blue BoE items
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #requires Serpentbloom
    .isOnQuest 962
step
    #requires Deviate
    >>Run back to the eye of the cave
    .goto Kalimdor,51.9,55.4
    .turnin 1486 >>Turn in Deviate Hides
    .isOnQuest 1486
step
    >> Head back to the Kolkar outpost
    .goto The Barrens,45.4,28.4
    .turnin 850 >> Turn in Kolkar Leaders
    .isOnQuest 850
step
    .isQuestComplete 1062
    >> Head towards Stonetalon. Talk to Seereth
    .goto The Barrens,35.3,27.8
    .turnin 1062 >> Turn in Goblin Invaders
step
    .goto The Barrens,35.3,27.8
    .accept 1063 >> Accept The Elder Crone
    .isQuestTurnedIn 1062
step
    .isOnQuest 6523
    >> Head towards Stonetalon
    .goto The Barrens,35.3,27.8
    .turnin 6629 >> Turn in Kill Grundig Darkcloud
    .turnin 6523 >> Turn in Protect Kaya
step
    .isQuestTurnedIn 6523
    .goto The Barrens,35.3,27.8
    .accept 6401 >> Accept Kaya's Alive 
step
	.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
    .isOnQuest 6461
step
    .goto Stonetalon Mountains,71.3,95.0
    .turnin 6461 >> Turn in Blood Feeders
    .isOnQuest 6461 
step
    #xprate >1.499
    .isOnQuest 1095
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1095 >> Turn in Further Instructions
step << !Rogue
    #xprate <1.5
    >> Head to Sun Rock Retreat
    >> Head up the side mountain path to your left once you reach Sun Rock
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
    .accept 6562 >> Accept Trouble in the Deeps
    .maxlevel 23
step << Rogue
    >> Head to Sun Rock Retreat
    >> Head up the side mountain path to your left once you reach Sun Rock
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
    .accept 6562 >> Accept Trouble in the Deeps
step
    .goto Stonetalon Mountains,47.2,61.1
    .turnin 6284 >> Turn in Arachnophobia
    .isOnQuest 6284
step
    #xprate <1.5
    .goto Stonetalon Mountains,45.1,59.8
    .fp Sun Rock >>Get the Sun Rock Retreat Flight Path
    .maxlevel 23
step
    .goto Stonetalon Mountains,47.5,58.3
    .turnin 6401 >> Turn in Kaya's Alive
    .isOnQuest 6401
step
    .isOnQuest 1095
    >> Head back to the goblin hut behind the hill
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1095 >> Turn in Further Instructions
    .maxlevel 23
step
    #xprate <1.5
    #sticky
    #completewith next
    .goto Stonetalon Mountains,78.2,42.8,30 >>Go to Talondeep Path
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,42.3,71.0,20 >>Run through the cave to Ashenvale
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,12.3,33.8
    .fp Zoram >> Get the Zoram'gar Outpost flight path
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,11.8,34.7
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .maxlevel 23
step
    #xprate <1.5
    >> Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
    .accept 6442 >> Accept Naga at the Zoram Strand
    .accept 6462 >> Accept Troll Charm
    .maxlevel 23
step
    #xprate <1.5
    .isQuestComplete 6562
    .goto Ashenvale,11.6,34.3
    .turnin 6562 >> Turn in Trouble in the Deeps
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
    .accept 6563 >> Accept The Essence of Aku'Mai
    .maxlevel 23
step
    #xprate <1.5
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
    .accept 6641 >> Accept Vorsha the Lasher
    .maxlevel 23
step
    #xprate <1.5
    #sticky
    #label wrathtailhead
    >>Kill the Nagas around the beach. Loot them for their heads
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
    .isOnQuest 6442
step
    #xprate <1.5
    >>Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
    #xprate <1.5
    .goto Ashenvale,14.2,14.7,40 >>Drop down the hole into Blackfathom Deeps
    .isOnQuest 6442
step
    #xprate <1.5
    #sticky
    #label Sapphires
    #completewith zoramend
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .use 16790 >>Swim under the water and enter Blackfathom Deeps. Kill the Priestess' until a Damp Note drops(quest). Then right click it and accept the quest.
    .collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >> Accept Allegiance to the Old Gods
    .isOnQuest 6442
step
    #xprate <1.5
    #requires Sapphires
    >> Loot the Sapphires from the walls in the tunnel.
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
    .isOnQuest 6563
step
    #xprate <1.5
    #label zoramend
    #requires wrathtailhead
    >>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.2,34.2
    .turnin 6641 >> Turn in Vorsha the Lasher
    .isQuestComplete 6641
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
    .turnin 6563 >> Turn in The Essence of Aku'Mai
    .isQuestComplete 6563
step
    #xprate <1.5
    #sticky
    #completewith next
    .destroy 16784 >> Destroy any leftover Sapphires of Aku'Mai
    .itemcount 16784,1
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
    .turnin 6564 >> Turn in Allegiance to the Old Gods
    .isOnQuest 6564
step
    #xprate <1.5
    .goto Ashenvale,11.7,34.9
    .turnin 6442 >> Turn in Naga at the Zoram Strand
    .isQuestComplete 6442
step << Druid tbc
    #sticky
    #completewith next
     +Grind or log off until your hearthstone cooldown is less than 5 minutes
    .cooldown item,6948,<5m
step << Druid tbc
    .cast 18960 >> Use the spell Teleport: Moonglade once your hearthstone is available
    >>Go Upstairs
     .goto Moonglade,56.2,30.6
    .turnin 27 >>Turn in A Lesson to Learn
    .accept 28 >>Accept Trial of the Lake
step << Druid tbc
	#completewith next
    .goto Moonglade,52.5,40.5
    .trainer >> Go and train your class spells
step << Druid tbc
    >>Search for a vase in the lake. Loot it for a Shrine Bauble
    .goto Moonglade,54.6,46.5,25,0
    .goto Moonglade,53.0,48.4
    .collect 15877,1
step << Druid tbc
    .use 15877 >>Use the Shrine Bauble
    .goto Moonglade,36.2,41.8
    .complete 28,1 --Complete the Trial of the Lake. (1)
step << Druid tbc
    .goto Moonglade,36.5,40.1
    .turnin 28 >>Turn in Trial of the Lake
    .accept 30 >>Accept Trial of the Sea Lion
step
    #completewith next
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
    .zoneskip Stonetalon Mountains
step
    #completewith next
    .goto Stonetalon Mountains,45.1,59.8
    .fly Thunder Bluff >> Fly to Thunder Bluff 
    .zoneskip Stonetalon Mountains,1
step
    .isOnQuest 1063
    .goto Thunder Bluff,69.8,30.8
    .turnin 1063 >> Turn in The Elder Crone
    >> Wait for the roleplay to finish
    .accept 1064 >> Accept Forsaken Aid
step
    .isOnQuest 1064
    >> Head to the pools under the Spirit Rise
    .goto Thunder Bluff,22.9,21.1
    .turnin 1064 >> Turn in Forsaken Aid
    .accept 1065 >> Accept Journey to Tarren Mill
step
    .isOnQuest 1489
    .goto Thunder Bluff,78.4,28.4
    .turnin 1489 >> Turn in Hamuul Runetotem
    .accept 1490 >> Accept Nara Runetotem
step
    .isQuestTurnedIn 1489
    .goto Thunder Bluff,75.6,31.2
    .turnin 1490 >> Turn in Nara Runetotem
step
    .isOnQuest 962
    >> Head to the pools under the Spirit Rise
    .goto Thunder Bluff,22.9,21.1
    .turnin 962 >> Turn in Serpentbloom
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << !Druid
	#completewith troubleatdocks1
    .isOnQuest 959
    .goto Thunder Bluff,47.0,49.9
    .fly Ratchet >> Fly to Ratchet
step << Druid
	#completewith next
    .goto Thunder Bluff,47.0,49.9
    .fly Ratchet >> Fly to Ratchet
step
    #label troubleatdocks1
    .isOnQuest 959
    .goto The Barrens,63.1,37.6
    .turnin 959 >>Turn in Trouble at the Docks
step
    .isOnQuest 1491
    .goto The Barrens,62.4,37.6
    .turnin 1491 >>Turn in Smart Drinks
step << Druid tbc
    >>Loot the gray chest underwater
    .goto The Barrens,56.7,8.3
    .collect 15883,1
step << Druid tbc
    #sticky
    #completewith next
    .goto Orgrimmar,12.4,66.1,40 >>Enter Orgrimmar through the west entrance
step << Druid wotlk/!Druid
    #completewith next
    .goto The Barrens,63.1,37.1,-1    
    .goto Thunder Bluff,47.0,49.9,-1
    .fly Orgrimmar >> Fly to Orgrimmar
step << Paladin
    #completewith next
    .goto Orgrimmar,32.4,35.8
    .trainer >> Go and train your class spells
step << Shaman
    #completewith next
    .goto Orgrimmar,38.6,36.0
    .trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.1,18.5
    .trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.3,14.8
    .trainer >> Go and train your pet spells
step << Warrior
    #completewith next
    .goto Orgrimmar,79.7,31.4
    .trainer >> Go and train your class spells
step << Rogue
    #completewith next
    .goto Orgrimmar,44.0,54.6
    .trainer >> Go and train your class spells
step << Warlock
    #completewith next
    .goto Orgrimmar,48.0,46.0
    .trainer >> Go and train your class spells
step << Warlock tbc
	#completewith next
	.goto Orgrimmar,47.5,46.7
    .vendor >> Buy a Grimoire of Soothing Kiss
	.collect 16375,1
    >>You can buy the Voidwalker books too if you prefer the Voidwalker.
step << Mage
    #completewith next
    .goto Orgrimmar,38.8,85.6
        .trainer >> Go and train your class spells
step << Priest
    #completewith next
    .goto Orgrimmar,35.6,87.8
    .trainer >> Go and train your class spells
step << Rogue tbc
    .goto Orgrimmar,43.1,53.7
    .accept 2460 >>Accept The Shattered Salute
step << Rogue tbc
    >>Target Shenthul and type /salute
	.emote SALUTE,3401
    .complete 2460,1 --Shattered Salute Performed (1)
step << Rogue
    .goto Orgrimmar,43.1,53.7
    .turnin 2460 >>Turn in The Shattered Salute << tbc
    .accept 2458 >>Accept Deep Cover << tbc
    .train 1725 >>Train Distract
    .train 1856 >>Train Vanish
    .train 1759 >>Train Sinister Strike r4
step << Rogue tbc
	#completewith next
    .goto Orgrimmar,42.1,49.5
    .vendor >> Buy at least 1 Flash Powder from Rekkul
    .collect 5140,1 --Collect Flash Powder
step << Rogue tbc
    #sticky
    #completewith next
    +Make sure you have a dagger in your inventory. If you don't, buy the cheapest one you can find
step << Rogue tbc
    .use 8051 >>Use the Flare Gun when you're about 50 yards from Taskmaster Fizzule. Then /salute him. Speak to him when he turns friendly
	.emote SALUTE,7233
.goto The Barrens,55.4,5.6
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Mission: Possible But Not Probable
step << Rogue tbc
	.cast 5967 >>Stealth and pickpocket Silixiz for his Tower Key. Make you hug the tower wall as much as possible then go behind him to pickpocket him. If he says something, back up, then approach from a different angle to try to pickpocket him again. Do NOT kill him
    .goto The Barrens,54.8,5.9
    .complete 2478,5 --Silixiz's Tower Key (1)
step << Rogue tbc
    .cast 8676 >>Go into the tower & equip your dagger. Ambush one of the Drones. This will instantly kill them. Run away, come back, and do the same to the other Drone
    .goto The Barrens,54.7,5.7
    .complete 2478,1 --Mutated Venture Co. Drone (2)
step << Rogue tbc
    .cast 1943 >>Go upstairs to the next floor. Re-equip your main weapon. Use a 1 Combo Point Rupture to kill the mobs. This should do 50% of their health each time
    .goto The Barrens,54.7,5.8
.complete 2478,3 --Venture Co. Patroller (2)
step << Rogue tbc
    .cast 6761 >>Go onto the third floor of the tower. Use a 1 Combo Point Eviscerate to kill the mobs. This should do 50% of their health each time
    .goto The Barrens,54.6,5.6
    .complete 2478,2 --Venture Co. Lookout (2)
step << Rogue tbc
    >>Go to the top floor of the tower. Equip your dagger again (make sure your cooldowns are up). Ambush Gallywix then re-equip your main weapon in your main hand. Use all of your cooldowns & potions to kill Gallywix. Loot his head after you kill him.
    .goto The Barrens,54.8,5.6
    .complete 2478,4 --Gallywix's Head (1)
step << Rogue tbc
    >>Lockpick the box in front of Gallywix in the top floor to loot the Altered Mixture
	.goto The Barrens,54.8,5.6
	.complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue tbc
    #sticky
    #completewith next
	>>Run back to Orgrimmar through the West Entrance
    .goto Orgrimmar,11.6,66.9,30
step << Rogue tbc
	>>You're now going to get a week long debuff making you unable to use stealth. Simply continue following the route.
	.goto Orgrimmar,43.1,53.7
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
step << Warlock tbc
    .goto Orgrimmar,48.2,45.3
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
step << Warlock tbc
    .use 6626 >>Use Dogran's Pendant to summon the Succubus at the circle in the building. Kill her
	.goto Orgrimmar,49.4,50.0
    .complete 1513,1 --Summoned Succubus (1)
step << Warlock tbc
    >>Use the Succubus from now on
    .goto Orgrimmar,48.2,45.3
    .turnin 1513 >>Turn in The Binding
    .isQuestComplete 1513
step << Warlock
    .goto Orgrimmar,48.2,45.3
    .trainer >> Train your class spells
step << wotlk
    +If you have access to gold on this server, mail yourself gold for mount training soon!
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 23-27 Hillsbrad / Ashenvale
#version 1
#group RestedXP Horde 1-30
#next 27-30 Lower Barrens / Thousand Needles

step << !Shaman
    #completewith Zeppelin
    .goto Orgrimmar,54.1,68.5
    .home >> Set your Hearthstone to Orgrimmar
step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step
    #label Zeppelin
	>>Go to the Zeppelin tower. Take the zeppelin to Tirisfal
	.goto Durotar,50.8,13.8
	.zone Tirisfal Glades >>Arrive in Tirisfal Glades
step << Undead !Warlock wotlk
    .money <5.00
    .goto Tirisfal Glades,60.1,52.6
    .train 554 >> Train riding and purchase your mount
    .zoneskip Tirisfal Glades,1
step << Blood Elf !Warlock wotlk
    .money <5.00
    .goto Undercity,66.3,4.5,30,0
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >> Click on the Orb of Translocation to head to Silvermoon City
step << Blood Elf !Warlock wotlk
    .money <5.00
    .goto Eversong Woods,61.1,54.7,5,0
    .goto Eversong Woods,61.4,54.0
    .train 33388 >> Leave Silvermoon City, then train riding and purchase your mount.
step << Blood Elf !Warlock wotlk
    .goto Silvermoon City,49.4,14.3
    >> Teleport to The Undercity if you can << Mage
    .zone Undercity >> Click on the Orb of Translocation to head to the Undercity
step << Druid tbc
    >>Loot the gray chest underwater next to the bubble fissure (in the fatigue).
    .goto Silverpine Forest,30.0,29.1
    .collect 15882,1
    --Video link in future?
    .isOnQuest 30
step
    >>Run to The Sepulcher
	.goto Silverpine Forest,42.9,40.9
    .accept 493 >> Accept Journey to Hillsbrad Foothills
step
    >>Click the stone grave on the ground
    .goto Silverpine Forest,44.1,42.5
    .turnin 264 >> Turn in Until Death Do Us Part
    .isOnQuest 264
step
    .isOnQuest 3301
    .goto Silverpine Forest,43.0,42.0
    .turnin 3301 >> Turn in Mara Runetotem
step
    .goto Silverpine Forest,45.6,42.6
    .fp The Sepulcher >> Get the The Sepulcher flight path
step
    .goto Hillsbrad Foothills,20.80,47.40
    .accept 494 >> Accept Time To Strike
step
    .goto Hillsbrad Foothills,60.10,18.60
    .fp Tarren Mill>> Get the Tarren Mill Flight Path
step << Shaman
	.goto Hillsbrad Foothills,62.2,20.8
    >>Fill the Waterskin at the well
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,61.5,19.2
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
step
    .isOnQuest 1065
    .goto Hillsbrad Foothills,61.5,19.2
    .turnin 1065 >> Turn in Journey to Tarren Mill
    .accept 1066 >> Accept Blood of Innocents
step
    .goto Hillsbrad Foothills,61.50,19.20
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
step
    .goto Hillsbrad Foothills,62.50,19.70
     >> Click the Wanted poster just outside of the Inn
    .accept 567 >> Accept Dangerous!
step
    .goto Hillsbrad Foothills,62.20,20.50
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
step
    .goto Hillsbrad Foothills,62.60,20.70
    >>Click the Wanted poster next to Melisara
    .accept 549 >> Accept WANTED: Syndicate Personnel
step
    .goto Hillsbrad Foothills,63.20,20.70
    .accept 498 >> Accept The Rescue
step << Hunter
	#completewith next
	.goto Hillsbrad Foothills,62.56,19.91
	.vendor >> Buy arrows until your quiver is full
step
    .goto Hillsbrad Foothills,62.79,19.05
	.vendor 2388 >> Go inside the Inn. Vendor trash, and buy Food/Water from Shay
step << Shaman
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> Go buy a Merciless Axe from the vendor if you have enough money. It's not always in the shop.
    .collect 12249,1
step << Rogue/Warrior
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> Go buy a Broad Bladed Knife from the vendor if you have enough money. It's not always in the shop.
    .collect 12247,1
step
	#era
	#completewith next
	>>Kill Bears and Spiders en route to the syndicates
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .complete 496,2 --Collect Creeper Ichor (x1) 
step
	#era
	    .goto Hillsbrad Foothills,78.46,43.06,200 >> Run to Dornholde Keep
step
    #sticky
	#label syndicateq
	>>Kill Syndicates in the area
	.goto Hillsbrad Foothills,77.8,44.1,0
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
step
    #sticky
    #label shadowmage
    .goto Hillsbrad Foothills,80.61,45.40,0
    >>Kill Shadow Mages. Loot them for Vials of Innocent Blood
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
step << !Rogue !Hunter !Shaman
    #completewith next
	.goto Hillsbrad Foothills,80.1,38.9
    .vendor >> vendor trash, repair if needed
step << Rogue/Hunter/Shaman
	#completewith Drull
	.goto Hillsbrad Foothills,80.1,38.9
    .vendor >> Vendor & repair if needed. If Stalking Pants and/or Wolf Bracers are in the shop, buy them
step
	#completewith next
	.goto Hillsbrad Foothills,79.8,39.3
    .unitscan Jailor Marlgen
	>>Kill Jailor Marlgen. Loot him for his Burnished Gold Key
    .collect 3499,1
step
    >>Click the ball and chain
	.goto Hillsbrad Foothills,79.8,39.6
    .complete 498,2 --Rescue Tog'thar (1)
step
	#completewith next
    >>Kill Jailor Eston. Loot him for his Dull Iron Key, he can either spawn up top or inside one of the lodges at the bottom floor
	.goto Hillsbrad Foothills,79.4,41.6
	.collect 3467,1
	.unitscan Jailor Eston
step
	#label Drull
    >>Click the ball and chain
	.goto Hillsbrad Foothills,75.3,41.5
    .complete 498,1 --Rescue Drull (1)
step
	#som
	#requires shadowmage
step
        #requires shadowmage
	#completewith next
	>>Kill Bears. Loot them for their Tongues
	.complete 496,1 --Collect Gray Bear Tongue (x10)
step
        #requires syndicateq
	>>Kill Spiders. Loot them until Creeper Ichor drops
	.goto Hillsbrad Foothills,63.5,33.0,100,0
    .goto Hillsbrad Foothills,57.9,34.5,100,0
    .goto Hillsbrad Foothills,57.2,22.1,100,0
	.goto Hillsbrad Foothills,63.5,33.0,100,0
    .goto Hillsbrad Foothills,57.9,34.5,100,0
    .goto Hillsbrad Foothills,57.2,22.1,100,0
	.goto Hillsbrad Foothills,63.5,33.0
    .complete 496,2 --Collect Creeper Ichor (x1) 
step
	#completewith next
    >>Kill Bears and Mountain Lions en route to the Fields. Loot them for Tongues and Blood
	.complete 496,1 --Collect Gray Bear Tongue (x10)
	.complete 501,1 --Collect Mountain Lion Blood (x10)
step
    .goto Hillsbrad Foothills,36.02,39.19,150 >> Run to the Hillsbrad Fields
step
	#sticky
	#label Farmers
	>>Kill Farmers in and around the fields
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
step
    #sticky
    #label Getz
    >>Kill Farmer Getz. He can be in the house, barn, or field
    .goto Hillsbrad Foothills,36.7,39.4,60,0
    .goto Hillsbrad Foothills,35.2,37.6,45,0
    .goto Hillsbrad Foothills,35.1,41.0,60,0
    .goto Hillsbrad Foothills,36.7,39.4,60,0
    .goto Hillsbrad Foothills,35.2,37.6,45,0
    .goto Hillsbrad Foothills,35.1,41.0,60,0
    .goto Hillsbrad Foothills,36.7,39.4
    .complete 527,4 --Farmer Getz (1)
step
    >>Kill Farmer Ray. He can be in the 1st or 2nd floor of the house. He can also be outside under the grapevine (hut)
    .goto Hillsbrad Foothills,33.7,35.5,20,0
    .goto Hillsbrad Foothills,33.2,34.8,20,0
    .goto Hillsbrad Foothills,33.7,35.5,20,0
    .goto Hillsbrad Foothills,33.2,34.8,20,0
    .goto Hillsbrad Foothills,33.7,35.5,20,0
    .goto Hillsbrad Foothills,33.2,34.8,20,0
    .goto Hillsbrad Foothills,33.7,35.5,20,0
    .goto Hillsbrad Foothills,33.2,34.8,20,0
    .goto Hillsbrad Foothills,33.7,35.5,20,0
    .goto Hillsbrad Foothills,33.2,34.8,20,0
    .goto Hillsbrad Foothills,33.2,34.8
    .complete 527,3 --Farmer Ray (1)
step
	#requires Getz
step
	#requires Farmers
	#completewith next
    >>Kill Bears and Mountain Lions. Loot them for Tongues and Blood
	.complete 496,1 --Collect Gray Bear Tongue (x10)
	.complete 501,1 --Collect Mountain Lion Blood (x10)
--N Claw rank 3?
step
	#requires syndicateq
    .goto Hillsbrad Foothills,61.5,19.1
    .turnin 1066 >> Turn in Blood of Innocents
step
    .goto Hillsbrad Foothills,62.38,20.52
	.turnin 549 >> Turn in WANTED: Syndicate Personnel
step
    .goto Hillsbrad Foothills,63.2,20.7
    .turnin 498 >> Turn in The Rescue
step << Hunter
	#completewith next
	.goto Hillsbrad Foothills,62.56,19.91
	.vendor >> Buy arrows until your quiver is full
step
    .goto Hillsbrad Foothills,62.79,19.05
	.vendor 2388 >> Go inside the Inn. Vendor trash, and buy Food/Water from Shay	
step
	#requires Farmers
	>>Return to Tarren Mill
    .goto Hillsbrad Foothills,62.3,20.2
    .turnin 527 >> Turn in Battle of Hillsbrad
step
    .goto Hillsbrad Foothills,62.5,20.3
    .accept 528 >> Accept Battle of Hillsbrad
    .accept 546 >> Accept Souvenirs of Death
step
	#completewith next
    >>Kill Bears and Mountain Lions. Loot them for Tongues and Blood
	.goto Hillsbrad Foothills,54.9,29.8,90,0
    .goto Hillsbrad Foothills,50.5,37.7,90,0
    .goto Hillsbrad Foothills,43.7,39.9,90,0
    .goto Hillsbrad Foothills,38.4,34.9,90,0
    .goto Hillsbrad Foothills,39.1,45.4,90,0
	.goto Hillsbrad Foothills,54.9,29.8
	.complete 496,1 --Collect Gray Bear Tongue (x10)
	.complete 501,1 --Collect Mountain Lion Blood (x10)
step
    .goto Hillsbrad Foothills,36.02,39.19,150 >> Run to the Hillsbrad Fields
step
    #sticky
    #label Wilkes
	.unitscan Citizen Wilkes
    >>Kill Citizen Wilkes. He patrols every road in the town
	.complete 567,2 --Kill Citizen Wilkes (x1)
step
    #sticky
    #label Kalaba
	.unitscan Farmer Kalaba
    >>Kill Farmer Kalaba. She patrols the field of Peasants
	.goto Hillsbrad Foothills,35.2,46.5
    .complete 567,4 --Kill Farmer Kalaba (x1)
step
    #label Peasants
	>>Kill Peasants in and around the field
	.goto Hillsbrad Foothills,35.2,46.5
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
step
    #requires Wilkes
step
    #requires Kalaba
    >>Finish killing Bears and Mountain Lions. Loot them for Tongues and Blood
    .goto Hillsbrad Foothills,39.1,45.4,90,0
    .goto Hillsbrad Foothills,38.4,34.9,90,0
    .goto Hillsbrad Foothills,43.7,39.9,90,0
    .goto Hillsbrad Foothills,50.5,37.7,90,0
	.goto Hillsbrad Foothills,54.9,29.8,90,0
    .goto Hillsbrad Foothills,39.1,45.4
	.complete 496,1 --Collect Gray Bear Tongue (x10)
	.complete 501,1 --Collect Mountain Lion Blood (x10)
step
	>>Run back to Tarren Mill
	.goto Hillsbrad Foothills,62.4,20.3
    .turnin 528 >> Turn in Battle of Hillsbrad
    .accept 529 >> Accept Battle of Hillsbrad
step
    .goto Hillsbrad Foothills,61.5,19.1
    .turnin 496 >> Turn in Elixir of Suffering
    .accept 499 >> Accept Elixir of Suffering
    .turnin 501 >> Turn in Elixir of Pain
    .accept 502 >> Accept Elixir of Pain
    .turnin 499 >> Turn in Elixir of Suffering
    .accept 1067 >> Accept Return to Thunder Bluff
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> If you didn't get the Merciless Axe the first time, go buy it in the shop now.
    .collect 12249,1
step << Rogue
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> If you didn't get the Broad Bladed Knife the first time, go buy it in the shop now.
    .collect 12247,1
step
    #sticky
    #completewith next
    +While turning in Elixir of Pain, you can kill Stanley after for a bunch of extra XP
step
	.goto Hillsbrad Foothills,32.6,35.6
    .turnin 502 >> Turn in Elixir of Pain
step
	.isOnQuest 546
	#sticky
    #label humanskull
	>>Kill Humans. Loot them for their skulls
    .complete 546,1 --Collect Hillsbrad Human Skull (x30)
step
	>>Kill Blacksmith Verringtan and his Apprentices
	.goto Hillsbrad Foothills,32.1,45.3
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .complete 529,3 --Collect Shipment of Iron (x1)
step
    #xprate >1.499 
	.goto Hillsbrad Foothills,62.4,20.3
    #requires humanskull
    .turnin 529 >> Turn in Battle of Hillsbrad
    .turnin 546 >> Turn in Souvenirs of Death
step << Druid
#completewith next
	.cast 18960 >> Use the spell Teleport: Moonglade
    .goto Moonglade,52.5,40.5
	.trainer >> Go and train your class spells
step << Druid tbc
    .use 15883 >>Click the Half Pendant (blue) in your bag to craft the Pendant
	.goto Moonglade,36.2,41.8
    .complete 30,1 --Pendant of the Sea Lion (1)
step << Druid tbc
    >>Go Upstairs
    .goto Moonglade,56.2,30.6
    .turnin 30 >>Turn in Trial of the Sea Lion
    .accept 31 >>Accept Aquatic Form
step << !Shaman
	#completewith next
	#requires Crate
	>>We're not going to turn these quests in until later on.
	.hs >> Hearth to Orgrimmar
step << Shaman
	#completewith next
	#requires Crate
	>>We're not going to turn these quests in until later on.
	.hs >> Hearth to Camp Taurajo
step << Shaman
	.goto The Barrens,43.4,77.4
	.turnin 1536 >>Turn in Call of Water
	.accept 1534 >>Accept Call of Water
step << Shaman
	#completewith next
	.goto The Barrens,44.5,59.1
	.fly Orgrimmar >>Fly to Orgrimmar
step
    .goto Orgrimmar,54.2,68.4
    .vendor >>Talk to Innkeeper Gryshka and buy some food/water if needed. Also, be sure to check the auction house for any weapon upgrades. You're going to do a lot of running shortly.
step << Paladin
    #completewith next
    .goto Orgrimmar,32.4,35.8
.trainer >> Go and train your class spells
step << Shaman
    #completewith next
    .goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.1,18.5
.trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.3,14.8
.trainer >> Go and train your pet spells
step << Warrior
    #completewith next
    .goto Orgrimmar,79.7,31.4
.trainer >> Go and train your class spells
step << Rogue
    #completewith next
    .goto Orgrimmar,44.0,54.6
.trainer >> Go and train your class spells
step << Warlock
    #completewith next
    .goto Orgrimmar,48.0,46.0
.trainer >> Go and train your class spells
step << Mage
    #completewith next
    .goto Orgrimmar,38.8,85.6
.trainer >> Go and train your class spells
step << Priest
    #completewith next
    .goto Orgrimmar,35.6,87.8
.trainer >> Go and train your class spells
step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step
    #completewith fp12
    .goto Orgrimmar,16.2,62.2,30  >> Exit Orgrimmar through the west exit
step
    #completewith fp12
    .goto Ashenvale,94.7,76.8,30  >> Run along the side of the river
step
    #completewith fp12
    .goto Ashenvale,90.8,66.9,30  >> Run up the ramp here
step
    #completewith fp12
    .goto Ashenvale,89.2,68.4,30  >> Go up the ramp. Be careful of the level 28/29 spider mobs
step
    #completewith fp12
    .goto Ashenvale,88.5,64.9,40  >> Run to the Lumber Camp
step
    #completewith fp12
    .goto Ashenvale,81.7,62.9,80  >> Run through the camp to here
step
    #label fp12
    .goto Ashenvale,73.2,61.6
    .fp Splintertree >> Get the Splintertree Post flight path
step
    .goto Orgrimmar,45.1,63.9
    .fly Splintertree >> Fly to Splintertree Post
    .zoneskip Ashenvale
step
    .accept 6441 >> Accept Satyr Horns
    .goto Ashenvale,73.1,61.5
    .turnin 6383 >> Turn in The Ashenvale Hunt
    .goto Ashenvale,73.8,61.5
step
    #completewith next
    .isOnQuest 216
    .goto Ashenvale,74.0,60.6
	.home >> Set your Hearthstone to Splintertree Post
step
    .goto Ashenvale,73.6,60.0
    .accept 25 >> Accept Stonetalon Standstill
step << BloodElf
    .goto Ashenvale,71.3,67.8
    .turnin 9428 >> Turn in Report to Splintertree Post
    .isOnQuest 9428
step
    .goto Ashenvale,71.1,68.1
    .accept 6503 >> Accept Ashenvale Outrunners
step
 >>Kill Ashenvale Outrunners that are stealthed around the area.
.goto Ashenvale,72.5,72.5,40,0
    .goto Ashenvale,76.3,71.1,40,0
    .goto Ashenvale,76.3,67.3,40,0
    .goto Ashenvale,72.5,72.5
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .unitscan Ashenvale Outrunner
step
    .goto Ashenvale,68.3,75.3
    .accept 6544 >> Accept Torek's Assault
    >> If he is not there he can take a few minutes to respawn
step
    >>Follow Torek. This quest can get a bit hard. It will spawn a wave enemies inside the building. You may need to skip.
    >> Run as far into the building as you can. Have Torek tank some of the mobs. Abandon this quest if you die. 
    * Use your voidwalker here << Warlock
    .goto Ashenvale,64.6,75.3
    .complete 6544,1 --Take Silverwing Outpost.
step
    #sticky
    #completewith next
	.goto Ashenvale,72.3,49.8,50 >>Run along the side of the river to here
step
    >>Kill Satyrs in the area. Loot them for their Horns
.goto Ashenvale,68.2,54.0
    .complete 6441,1 --Collect Satyr Horns (x16)
step
    #sticky
    #completewith next
    >>Kill Laughing Sisters until they drop an Etched Phial
    .collect 5867 --Collect Etched Phial (x1)
step
    .use 16304 >>Look for Shadumbra (a panther) and loot her for Shadumbra's Head, then accept the quest from clicking it.
	.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5,40,0
	.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
step
    >>Kill Laughing Sisters until they drop Etched Phial
    .goto Ashenvale,61.3,51.9
    .collect 5867 --Collect Etched Phial (x1)
step << Rogue
    .goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
step << Rogue
    .goto Ashenvale,12.3,33.8
    .fp Zoram >> Get the Zoram'gar Outpost flight path
step << Rogue
    .goto Ashenvale,11.8,34.7
    .accept 216 >> Accept Between a Rock and a Thistlefur
step << Rogue
    >> Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
    .accept 6462 >> Accept Troll Charm
step << Rogue
    .isQuestComplete 6562
    .goto Ashenvale,11.6,34.3
    .turnin 6562 >> Turn in Trouble in the Deeps
step << Rogue
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
    .accept 6641 >> Accept Vorsha the Lasher
step << Rogue
    >>Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
    #requires Phial
	.goto Ashenvale,38.5,36.1,50 >>Run to Thistlefur Village
    .isOnQuest 216
step
    #sticky
    #completewith next
    >>Kill some of the Furbolgs en route to the cave
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step
    .goto Ashenvale,38.4,30.6,30 >>Run into Thistlefur Hold
    .isOnQuest 216
step
    #sticky
    #label Charms
    >>Loot the tiny chests inside the tunnel.
    .complete 6462,1 --Collect Troll Charm (x8)
    .isOnQuest 6462
step
    >>This starts an escort. Start it when ready.
    .goto Ashenvale,41.5,34.5
    .accept 6482 >> Accept Freedom to Ruul
    .isOnQuest 216
step
    .goto Ashenvale,38.5,36.4
    .complete 6482,1 --Escort Ruul from the Thistlefurs.
    .isOnQuest 6482
step
    #requires Charms
    >>Finish killing the Furbolgs
	.goto Ashenvale,35.9,36.7
    .complete 216,2 --Kill Thistlefur Shaman (x8)
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step << Shaman
    .use 7767 >>Fill the Waterskin
    .goto Ashenvale,33.5,67.5
    .complete 1534,1 --Filled Blue Waterskin (1)
step
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,44.3,68.6
    .use 16303 >>Look for Ursangous (Bear). He patrols clockwise. Kill and loot him for Ursangous's Paw then click it to accept the quest.
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
	.unitscan Ursangous
step
    #sticky
    #label Tideress
    .use 16408 >>Kill Tideress who is located around the middle of the lake. Loot her for a Befouled Water Globe, then click it to accept the quest
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Accept The Befouled Element
	.unitscan Tideress
step
    #sticky
    #completewith next
    >>Kill Water Elementals throughout the lake
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    >>Run under the Gazebo in the middle of the lake
	.goto Ashenvale,48.9,69.6
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
step
    >>Kill Water Elementals throughout the lake
	.goto Ashenvale,48.9,69.6
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    #requires Tideress
	.use 5867 >>Use the Etched Phial from earlier at the moonwell
	.goto Ashenvale,60.2,72.9
    .complete 1195,1 --Collect Filled Etched Phial (x1)
step << !Rogue
    #xprate >1.499 
    .hs >> Hearth to Splintertree Post
	>> Buy food/water if needed
step
    #xprate <1.5
    .goto Ashenvale,71.2,68.1
    .turnin 6503 >> Turn in Ashenvale Outrunners
step
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,75.3,72.0,0
	.use 16305 >>Look for Sharptalon (big bird). He Patrols clockwise. Kill and loot him for Sharptalon's Claw. Accept the quest from it. Solo him down to about 60% health then kite him to the undead camp to kill him.
    .collect 16305,1,2 --Collect Sharptalon's Claw
    .accept 2 >> Accept Sharptalon's Claw
	.unitscan Sharptalon
step
    .isQuestComplete 6544
    >>Go back to town
    .turnin 6544 >> Turn in Torek's Assault
    .goto Ashenvale,73.1,62.5
step    
    .goto Ashenvale,73.8,61.5
    .turnin 2 >> Turn in Sharptalon's Claw
    .turnin 24 >> Turn in Shadumbra's Head
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 247 >> Turn in The Hunt Completed
step
    .goto Ashenvale,73.7,60.0
    .turnin 25 >> Turn in Stonetalon Standstill
    .turnin 1918 >> Turn in The Befouled Element
step
    .goto Ashenvale,73.1,61.5
    .turnin 6441 >> Turn in Satyr Horns
step
    .goto Ashenvale,73.7,60.0
    .abandon 1918 >> Abandon The Befouled Element
    .destroy 16408 >> Destroy Befouled Water Globe
step
    #xprate <1.5
    .goto Ashenvale,73.7,60.0
    .isOnQuest 216
    .accept 824 >> Accept Je'neu of the Earthen Ring
step
    >> Head into the inn
    .goto Ashenvale,74.1,60.9
    .turnin 6482 >> Turn in Freedom to Ruul
    .isOnQuest 6482
step
    #xprate >1.499 
    .goto Ashenvale,71.2,68.1
    .turnin 6503 >> Turn in Ashenvale Outrunners
step
    #xprate <1.5
	#completewith next
    .isOnQuest 216
    .goto Ashenvale,73.2,61.5
    .fly Zoram'gar >> Fly to Zoram'gar Outpost
step
    #xprate <1.5
    .goto Ashenvale,11.9,34.5
    .turnin 216 >> Turn in Between a Rock and a Thistlefur
    .isOnQuest 216
step
    #xprate <1.5
    .goto Ashenvale,11.7,34.8
    .turnin 6462 >> Turn in Troll Charm
    .isOnQuest 6462
step
    #xprate <1.5
    .isQuestTurnedIn 6462
    .goto Ashenvale,11.6,34.3
    .turnin 824 >> Turn in Je'neu of the Earthen Ring
step << Rogue
    #label zoramend
    #requires wrathtailhead
    >>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.2,34.2
    .turnin 6641 >> Turn in Vorsha the Lasher
    .isQuestComplete 6641
step << Rogue
    .goto Ashenvale,11.59,34.27
    .accept 6921 >>Accept Amongst the Ruins
    .accept 6563 >>Accept The Essence of Aku'Mai
step << Rogue
    .goto Ashenvale,14.0,15.0,100 >> Go to the entrance of Blackfathom Deeps
step << Rogue
    .goto Ashenvale,13.15,12.96
	>> Kill Blackfathom Tide Priestesses until Damp Note drops. Start the quest
	.collect 16790,1,6564
    .accept 6564 >> Accept Allegiance to the Old Gods
step << Rogue
    .goto Ashenvale,17.04,12.29
	>> Stealth towards the dungeon while looting the 20 Sapphires on the walls
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step << Rogue
	#completewith next
	+To solo this quest you need to play correctly in 2 ways. First of all you need to not die to breath, that means before you aggro the boss you should have full breath. The second thing to be aware of is that you need to kick EVERY frostbolt you can and use evasion after a kick. Most of his damage will be from frostbolts. Remember you can vanish and try again 5 mins later, aslong as you don't die to breath.
	.link https://youtu.be/ehXV0stmDrM?t=202 >> CLICK HERE for a guide on this section
step << Rogue
	>> Stealth all the way to the Moonshine Ruins, then swim under the Bridge and prepare for the boss (Use all buffs you have)
	>> Loot the Fathom Core, this spawns the boss.
	>> Loot the Globe from Baron Aquanis. Accept the quest
	.collect 16762,1,6922 
	.accept 6922 >> Accept Baron Aquanis
step << Rogue
    .hs >> Hearth to Splintertree Post
	>> Buy food/water if needed
step << Druid
#completewith next
    .cast 18960 >> Use the spell Teleport to Moonglade
    .goto Moonglade,52.5,40.5
	.trainer >> Go and train your class spells
step
    #completewith next
    .hs >> Use your hearthstone
step << !Warrior !Hunter !Shaman !Druid !Mage !Priest
    .goto Ashenvale,73.2,61.6
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Ashenvale,1
step << Paladin
	#completewith flytimebabyyy
    .goto Orgrimmar,32.4,35.8
	.trainer >> Go and train your class spells
step << Warlock
	#completewith flytimebabyyy
    .goto Orgrimmar,48.0,46.0
	.trainer >> Go and train your class spells
step << Warlock tbc
	#completewith flytimebabyyy
    .goto Orgrimmar,47.5,46.7
	.vendor >> Buy Grimoire of Seduction
	.collect 16379,1
step << Rogue
    #completewith flytimebabyyy
    .goto Orgrimmar,44.0,54.6
	.trainer >> Go and train your class spells
step
    #label flytimebabyyy
	.goto Orgrimmar,45.2,63.8,-1
    .goto Ashenvale,73.2,61.6,-1
    .fly Thunder Bluff >> Fly to Thunder Bluff
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 27-30 Lower Barrens / Thousand Needles
#version 1
#group RestedXP Horde 1-30
#next RestedXP Horde 30-45\30-34 Hillsbrad / Arathi / Shimmering Flats

step
	.goto Thunder Bluff,55.2,51.5
    .turnin 1195 >> Turn in The Sacred Flame
    .accept 1196 >> Accept The Sacred Flame
step << Warrior tbc/Paladin/Shaman
    .goto Thunder Bluff,54.0,57.3
    .vendor >> Buy a Merciless Axe if you didn't get one in Hillsbrad
    .collect 12249,1
step << Hunter
    .goto Thunder Bluff,46.9,45.7
    .vendor >> Go and buy a Sturdy Recurve if it's in the shop.
    .collect 11306,1
step << Druid
    .goto Thunder Bluff,77.0,29.9
	.trainer >> Go and train your class spells
	.turnin 31 >>Turn in Aquatic Form << tbc
step << Hunter
	#completewith hearth
    .goto Thunder Bluff,59.1,86.9
	.trainer >> Go and train your class spells
step << Hunter
	#completewith hearth
    .goto Thunder Bluff,54.1,83.9
	.trainer >> Go and train your pet spells
step << Warrior
	#completewith hearth
    .goto Thunder Bluff,57.6,85.5
	.trainer >> Go and train your class spells
step << Shaman
	#completewith hearth
    .goto Thunder Bluff,22.8,21.0
	.trainer >> Go and train your class spells
step << Priest
	#completewith hearth
    .goto Thunder Bluff,24.6,22.6
	.trainer >> Go and train your class spells
step << Mage
	#completewith hearth
    .goto Thunder Bluff,25.2,20.9
	.trainer >> Go and train your class spells
step
    .goto Thunder Bluff,61.0,81.0
    .accept 1131 >> Accept Steelsnap
step
    >>In the pools below the Spirit Rise
	.goto Thunder Bluff,23.1,21.0
    .turnin 1067 >> Turn in Return to Thunder Bluff
    .isOnQuest 1067
step
    #label hearth
	#completewith next
	.goto Thunder Bluff,45.8,64.7
	.home >> Set your Hearthstone to Thunder Bluff
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step
    >> Head up the totem tower
    .goto Thunder Bluff,46.8,50.1
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << Warrior
    >>In the building
	.goto The Barrens,44.7,59.4
	.turnin 1823 >>Turn in Speak with Ruga
    .accept 1824 >>Accept Trial at the Field of Giants
step
    .maxlevel 28
    >> Speak to Mangletooth in the cage then pickup Weapons of Choice from Tatternack if you didn't grab it last time
    .accept 879 >> Accept Betrayal from Within
    .goto The Barrens,44.6,59.2
    .accept 893 >> Accept Weapons of Choice
    .goto The Barrens,45.0,57.6
step
	#sticky
	#label Owatanka2
	#completewith next
    .maxlevel 29
	.goto The Barrens,44.2,62.1,75,0
	.goto The Barrens,49.2,62.6,75,0
	.goto The Barrens,49.6,60.0,75,0
	>>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
	.collect 5102,1,884 --Collect Owatanka's Tailspike
    .use 5102
	.accept 884 >>Accept Owatanka
	.unitscan Owatanka
step << Warrior
    >>Kill Silithid mobs in the area. Loot them for Twitching Antennae. Be quick as they have a 15m duration
	.goto The Barrens,48.1,70.3
	.complete 1824,1 --Twitching Antenna (5)
step << Warrior
    >>In the building
	.goto The Barrens,44.7,59.4
    .turnin -1824 >>Turn in Trial at the Field of Giants
step << Warrior
    #xprate <1.5
    .goto The Barrens,44.7,59.4
    .accept 1825 >>Accept Speak with Thun'grim
step << Shaman
    .goto The Barrens,43.4,77.4
    .turnin 1534 >>Turn in Call of Water
    .accept 220 >>Accept Call of Water
step
    #sticky
    #label Washte
    #completewith next
    .goto The Barrens,44.7,74.7,0
    .goto The Barrens,44.7,77.8,0
    .goto The Barrens,47.6,79.8,0
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. 
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .accept 843 >> Accept Gann's Reclamation. He patrols along the road.
    .unitscan Gann Stonespire
    .maxlevel 28
step
    #sticky
    #label Washte
    #completewith next
    .goto The Barrens,44.7,74.7,0
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him in this last spot
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    #sticky
    #label Weapons
    .isOnQuest 893
    .goto The Barrens,43.4,78.8,30,0
    .goto The Barrens,40.4,80.8,30,0
    .goto The Barrens,43.8,83.5,30,0
    >>Kill mobs in the area for Weapons of Choice. Backstabber from Stalkers or Pathfinders, Wand from Seers, and Shield from Warfrenzies
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
step
	.goto The Barrens,43.4,78.8
    >> Kuz walks all around the ridge. Kill and loot her for her skull.
    .complete 879,1 --Collect Kuz's Skull (x1)
	.unitscan Kuz 
step
    .goto The Barrens,40.4,80.8
    >> Lok is in the building up from the ramp. Kill and loot him for his skull.
    .complete 879,3 --Collect Lok's Skull (x1)
	.unitscan Lok Orcbane
step
    .goto The Barrens,43.8,83.5
    >> Nak is on the southern part of the ridge. Kill and loot him for his skull.
    .complete 879,2 --Collect Nak's Skull (x1)
	.unitscan Nak
step
    #requires Weapons
    #sticky
    #label Baeldun
	.goto The Barrens,48.3,86.2,0,0
    >>Kill Dwarves in the area for Gann's Reclamation
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
step
    #requires Weapons
	>>Kill Prospector Khazgorm. Loot him for his Journal
	.goto The Barrens,48.3,86.2
	.complete 843,3 --Collect Khazgorm's Journal (x1)
step
    #sticky
    #label Washte
    #completewith next
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    .isOnQuest 843
    .unitscan Gann Stonespire
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >> Find Gann on the road again
    .turnin 843 >> Turn in Gann's Reclamation
step
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .accept 846 >> Accept Revenge of Gann
step << Hunter/Warlock
    .goto The Barrens,48.9,86.2
    >> Head up to the dwarven bunker
    .accept 857 >> Accept The Tear of the Moons
step
    >>Kill mobs and loot them for Revenge of Gann
	.goto The Barrens,49.4,84.3
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
step << Hunter/Warlock
    >>Go downstairs into the main room of the building. You can either try fighting the mobs by letting your pet tank. (Pull the closest mobs to you, don't directly pull Twinbraid). Alternatively, you can send your pet in, loot the chest, then die and run back.
    .goto The Barrens,49.1,84.3
    .complete 857,1 --Collect Tear of the Moons (x1)
step
    #sticky
    #label Washte
    #completewith wpscout1
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    #label wpscout1
    .isQuestComplete 846
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >> Find Gann on the road again
    .turnin 846 >> Turn in Revenge of Gann
    .unitscan Gann Stonespire
step
    .isQuestTurnedIn 846
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .accept 849 >> Accept Revenge of Gann
step << Hunter/Warlock
    .goto The Barrens,48.9,86.3
    >> Head up past the dwarven bunker
    .turnin 857 >> Turn in The Tear of the Moons
step
    .isOnQuest 849
    >>Right click the Flying Machine at the top of the launch pad
    .goto The Barrens,47.0,85.6
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
step
    #sticky
    #label Washte
    #completewith wpscout2
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    #label wpscout2
    .isOnQuest 849
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >> Find Gann once more
    .turnin 849 >> Turn in Revenge of Gann
    .unitscan Gann Stonespire
step
    .goto Thousand Needles,32.2,22.2
    >> Head south towards Thousand Needles
    .accept 4542 >> Accept Message to Freewind Post
step
    #sticky
    #completewith next
    .use 12564 >>Keep an eye out for the Galak Messenger. If you see it, kill him, loot the Note, and accept the quest. You can look for him later too if you can't find him.
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .unitscan Galak Messenger
step
    #sticky
    #completewith next
    >>Take the lift down, then run to Freewind Post
    .goto Thousand Needles,47.1,48.3,60
step
    >> Accept quests around Freewind Post
    .accept 9431 >> Accept A Different Approach
    .goto Thousand Needles,46.1,50.5
    .accept 5147 >> Accept Wanted - Arnak Grimtotem
    .goto Thousand Needles,45.9,50.9
step
    .goto Thousand Needles,46.1,51.7
    .isOnQuest 1196
    .turnin 1196 >> Turn in The Sacred Flame
    .accept 1197 >> Accept The Sacred Flame
step
    .goto Thousand Needles,45.6,50.8
    .turnin 4542 >> Turn in Message to Freewind Post
    .accept 4841 >> Accept Pacify the Centaur
step
    .goto Thousand Needles,45.1,49.2
    .fp Freewind Post >> Get the Freewind Post flight path
step
    .accept 4767 >> Accept Wind Rider
    .goto Thousand Needles,44.8,49.1
    .accept 4821 >> Accept Alien Egg
    .goto Thousand Needles,44.7,50.2
step << Hunter
#completewith next
    .goto Thousand Needles,44.9,50.7
    .vendor >> Go buy Dense Shortbow if it's in the shop.
    .collect 11305,1
step
    #sticky
    #completewith next
    .isOnQuest 1197
    >>Go into the Galak cave. Run along the left side. Kill centaurs en route
    .goto Thousand Needles,44.0,37.4,40
step
    #sticky
    #completewith next
    >>Kill Centaurs in the area
    .goto Thousand Needles,41.3,37.7,0,0
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)    
step
    >>Loot the Brazier at the end of the cave system. Take a left once you are at the crossroads of the cave.
    .goto Thousand Needles,42.0,31.5
    .complete 1197,1 --Collect Cloven Hoof (x1)
step
    >>Finish killing Centaurs in the area
    .goto Thousand Needles,41.3,37.7
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
step
    #sticky
    #completewith next
    >>Run up the path here, then go in the cave
    .goto Thousand Needles,54.6,44.3,30
step
    .goto Thousand Needles,53.9,41.5
    .accept 1149 >> Accept Test of Faith
step
    .isOnQuest 1149
    >>Jump off the end of the wooden platform, you don't die.
    .goto Thousand Needles,26.4,32.6,15
step
    .goto Thousand Needles,53.9,41.7
    .turnin 1149 >> Turn in Test of Faith
    .accept 1150 >> Accept Test of Endurance
step
    #sticky
    #label Egg5
    >>Look for the Alien Egg. It's a lootable object in one of the camps. It looks like spider eggs.
    .goto Thousand Needles,56.3,50.4,20,0
    .goto Thousand Needles,52.4,55.2,20,0
    .goto Thousand Needles,37.7,56.1,20,0
    .goto Thousand Needles,56.3,50.4,20,0
    .goto Thousand Needles,52.4,55.2,20,0
    .goto Thousand Needles,37.7,56.1
    .complete 4821,1 --Collect Alien Egg (x1)
step
    >>Kill Thundering Boulderkins. Loot them for Purifying Earth
    .goto Thousand Needles,65.2,62.4
    .complete 9431,1 --Collect Purifying Earth (x2)
step
    #requires Egg5
    >>Go back to Freewind Post
    .goto Thousand Needles,45.6,50.8
    .turnin 4841 >> Turn in Pacify the Centaur
    .accept 5064 >> Accept Grimtotem Spying
step << tbc
    #completewith exitfreewind33
    +If you have access to more gold on this server, mail yourself 35g. We will be buying your mount soon.
step
    .goto Thousand Needles,46.1,51.7
    .turnin 1197 >> Turn in The Sacred Flame
step
    .goto Thousand Needles,44.7,50.3
    .turnin 4821 >> Turn in Alien Egg
    .accept 4865 >> Accept Serpent Wild
step
    #label exitfreewind33
    .isOnQuest 1150
    .goto Thousand Needles,27.7,50.0,20 >> Make your way down from Freewind Point then run up the path here
step
    .isOnQuest 1150
    .goto Thousand Needles,27.3,51.2,20 >>Enter the cave
    >> Keep in mind the harpies here can do an aoe silence << Priest/Warlock/Druid/Paladin/Mage/Shaman
step
    >>Go to the end of the cave, and open the Crate. Kill Grenka and loot her
    .goto Thousand Needles,25.9,54.6
    .complete 1150,1 --Collect Grenka's Claw (x1)
step
    .isOnQuest 4767
    >>Exit the cave then run up the path here
    .goto Thousand Needles,13.9,31.7,25
step
    #sticky
    #label Eggs
    #completewith Paoka
    >>Loot the eggs on the ground in the area. Loot any you see
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    .isOnQuest 4767
    .goto Thousand Needles,13.2,39.7,20 >>Run up the path here
step
        >>This starts an Escort. Start it when ready. Try to have 5-6 eggs before starting so you can finish on the way out.
    .goto Thousand Needles,17.8,40.6
    .accept 4770 >> Accept Homeward Bound
step
    #label Paoka
    >>Escort Pao'ka down the mountain. 3 wyvern will spawn when he reaches the middle of the area.
    .goto Thousand Needles,14.6,32.7
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    .goto Thousand Needles,10.8,34.7
    >>Go back and loot the rest of the Wyvern eggs
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
.goto Thousand Needles,21.5,32.3
    .turnin 4865 >> Turn in Serpent Wild
    .accept 5062 >> Accept Sacred Fire
    .turnin 9431 >> Turn in A Different Approach
    .accept 5151 >> Accept Hypercapacitor Gizmo
    .accept 9433 >> A Dip in the Moonwell
    .turnin 4770 >> Turn in Homeward Bound
step
    #sticky
    #completewith steelsnap
 >>Keep an eye out for Steelsnap. He patrols around the zone.
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
#sticky
#completewith messenger
.use 12564 >>Find the Galak Messenger that patrols the zone. Kill him and loot his note.
    .collect 12564,1,4881 --Collect Assassination Note (x1)
.accept 4881 >> Accept Assassination Plot
step
    #label steelsnap
    .use 23675 >>Use the Robotron Control Unit hiding in the bushes ontop of the ledge. 
    >> Once you're in the robot walk over to the moonwell and collect the water using the pet action bar button.
    * Note: the quest arrow won't move when controlling the robot. Click the buff off once you're done.
    .goto Thousand Needles,12.0,18.8,15,0
    .goto Thousand Needles,10.7,17.6,15,0
    .goto Thousand Needles,9.5,18.7,10,0
    .goto Feralas,89.6,46.3
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
step
    #xprate <1.5
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >> Grind to 500+/36300 xp
step
    #label messenger
>>Search for Steelsnap (Hyena). He patrols counter-clockwise
	.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,17.1,18.4,40,0
	.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5
	.complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,21.5,32.5
    .turnin 9433 >> Turn in A Dip in the Moonwell
    .accept 9434 >> Accept Testing the Tonic
step
.use 12564 >>Search for the Galak Messenger. He starts at a camp, goes on the road, then goes to the other camp
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6
    .collect 12564,1,4881 --Collect Assassination Note (x1)
    .accept 4881 >> Accept Assassination Plot
	.unitscan Galak Messenger
step
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4
    >>Go back and forth in the pool, collecting yellow plants near the edges of the water as well as underwater.
    >>The elementals are immune to frost damage and highly resistant to Fire. Try your best to avoid them << Mage
    .complete 5062,1 --Collect Incendia Agave (x10)
step
	#completewith next
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
step << Druid
	#completewith next
    .goto Thunder Bluff,77.0,29.9
    .trainer >> Go and train your class spells
step << Hunter
	#completewith next
    .goto Thunder Bluff,59.1,86.9
    .trainer >> Go and train your class spells
step << Hunter
	#completewith next
    .goto Thunder Bluff,54.1,83.9
    .trainer >> Go and train your pet spells
step << Warrior
	#completewith next
    .goto Thunder Bluff,57.6,85.5
    .trainer >> Go and train your class spells
step << Shaman
	#completewith next
    .goto Thunder Bluff,22.8,21.0
    .trainer >> Go and train your class spells
step << Priest
	#completewith next
    .goto Thunder Bluff,24.6,22.6
    .trainer >> Go and train your class spells
step << Mage
	#completewith next
    .goto Thunder Bluff,25.2,20.9
    .trainer >> Go and train your class spells
step
    .goto Thunder Bluff,61.4,80.8
    .turnin 1131 >> Turn in Steelsnap
step
    .goto Thunder Bluff,60.8,81.5
    .accept 1136 >> Accept Frostmaw
step
    .goto Thunder Bluff,69.7,30.9
    .turnin 5062 >> Turn in Sacred Fire
step
    .goto Thunder Bluff,70.1,30.9
    .accept 5088 >> Accept Arikara
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << Tauren tbc
    #level 30
    .money <35.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step
	#completewith next
    .goto Thunder Bluff,46.9,49.4
    .isOnQuest 879
    .fly Camp Taurajo >> Fly to Camp Taurajo
step
    .goto The Barrens,44.6,59.2
    >> Talk to Mangletooth in the cage
    .isOnQuest 879
    .turnin 879 >> Turn in Betrayal from Within
    .accept 906 >> Accept Betrayal from Within
step
    .goto The Barrens,45.1,57.7
    .isOnQuest 893
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
step
    .isOnQuest 885
    .goto The Barrens,44.9,59.1
    .turnin 885 >> Turn in Washte Pawne
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
    .turnin 884 >> Turn in Owatanka
step
    .isOnQuest 883
    .goto The Barrens,44.9,59.1
    .turnin 883 >> Turn in Lakota'mani
step
    #completewith next
    .goto The Barrens,44.4,59.0
    .fly Freewind Post >> Fly to Freewind Post
step
    #label flyskip
    .turnin 4767 >> Turn in Wind Rider
    .goto Thousand Needles,44.8,49.0
    .turnin 9434 >> Turn in Testing the Tonic
    .goto Thousand Needles,46.2,50.5
step << !Warrior
	#completewith next
    .goto Thousand Needles,46.1,51.5
    .home >> Set your Hearthstone to Freewind Post
step
    #sticky
    #completewith OreSample
    >>Kill Kobolds you see whilst doing other quests. Loot them for an Unrefined Ore Sample
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    .goto Thousand Needles,54.0,41.4
    >> Head to the northeastern cave
    .turnin 1150 >> Turn in Test of Endurance
    .accept 1151 >> Accept Test of Strength
step
    >>Kill Rok'Alim The Pounder (Rock Elemental). Loot him for his Fragments. He patrols a large circle around western Thousand Needles.
    .goto Thousand Needles,29.3,33.6,40,0
    .goto Thousand Needles,27.1,28.7,40,0
    .goto Thousand Needles,22.5,31.3,40,0
    .goto Thousand Needles,17.5,27.0,40,0
    .goto Thousand Needles,12.8,20.9,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,34.3,37.5,40,0
    .goto Thousand Needles,33.2,53.5,40,0
    .goto Thousand Needles,29.3,33.6,40,0
    .goto Thousand Needles,27.1,28.7,40,0
    .goto Thousand Needles,22.5,31.3,40,0
    .goto Thousand Needles,17.5,27.0,40,0
    .goto Thousand Needles,12.8,20.9,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,34.3,37.5,40,0
    .unitscan Rok'Alim the Pounder
    .complete 1151,1 --Collect Fragments of Rok'Alim (x1)
step
	.goto Thousand Needles,31.2,36.9,30 >>Run up the path here
    .isOnQuest 5064
step
>>Climb up the mountain and cross the bridges to find the notes. Loot the chests
    .goto Thousand Needles,32.0,32.6
    .complete 5064,1 --Collect Secret Note #1 (x1)
step
    .goto Thousand Needles,33.9,39.9
    .complete 5064,2 --Collect Secret Note #2 (x1)
step
    .goto Thousand Needles,39.3,41.6
    .complete 5064,3 --Collect Secret Note #3 (x1)
step
    .use 12785 >>Clear the mobs around the bonfire, then light it, then kill Arikara. Loot her
    .goto Thousand Needles,37.9,35.3
    .complete 5088,1 --Collect Arikara Serpent Skin (x1)
    .complete 5088,2 --Light the Sacred Fire of Life
step
    >>Kill Arnak Grimtotem. Loot him for his Hoof
.goto Thousand Needles,38.6,27.4
    .complete 5147,1 --Collect Arnak's Hoof (x1)
	.unitscan Arnak Grimtotem
step
    .goto Thousand Needles,38.1,26.6
    .accept 4904 >> Accept Free at Last
step
    >>Follow Lakota and protect her through the whole escort. Mobs will spawn periodically on the platforms.
    .goto Thousand Needles,30.7,37.1
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle.
step
>>Open the panther cage and kill it. Make sure to have your cooldowns/potions available
    .goto Thousand Needles,23.3,23.3
    .complete 5151,1 --Collect Hypercapacitor Gizmo (x1)
step
    .isOnQuest 4881
	>>Escort will start when you accept next part of the quest.
	.goto Thousand Needles,21.3,32.0
	.turnin 4881 >> Turn in Assassination Plot
step
    .isQuestTurnedIn 4881
	>>Escort will start when you accept next part of the quest.
	.goto Thousand Needles,21.3,32.0    
	.accept 4966 >> Accept Protect Kanati Greycloud
step
    .isOnQuest 4966
	>>3 mobs will spawn. Let Kanati get aggro, then simply kill them
	.goto Thousand Needles,21.4,31.8
    .complete 4966,1 --Protect Kanati Greycloud
step
    .isQuestComplete 4966
	.goto Thousand Needles,21.4,31.8    
    .turnin 4966 >> Turn in Protect Kanati Greycloud
step
    #label OreSample
.goto Thousand Needles,21.5,32.3
    .turnin 5088 >> Turn in Arikara
    .turnin 5151 >> Turn in Hypercapacitor Gizmo
step
    >>Kill Kobolds in the area. Loot them for an Unrefined Ore Sample
.goto Thousand Needles,9.2,21.0
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    >>Run to Feralas. We're getting the Flight Path for later
	.goto Feralas,88.9,41.2,50,0
    .goto Feralas,75.4,44.3
    .fp Mojache >> Get the Camp Mojache flight path
step
	#completewith next
    .goto Feralas,75.4,44.4
    .fly Freewind Post >> Fly to Freewind Post
step
    .goto Thousand Needles,45.7,50.8
    .turnin 5064 >> Turn in Grimtotem Spying
    .turnin 5147 >> Turn in Wanted - Arnak Grimtotem
step
    .goto Thousand Needles,46.0,51.5
    .turnin 4904 >> Turn in Free at Last
step
    .goto Thousand Needles,53.9,41.4
    .turnin 1151 >> Turn in Test of Strength
step
    .goto Thousand Needles,67.6,64.0
    .xp 30 >> Grind to level 30
step
    .isOnQuest 1146
    .goto Thousand Needles,67.6,64.0
    .turnin 1146 >> Turn in The Swarm Grows
    .accept 1147 >> Accept The Swarm Grows
step
    .xp <33,1
    >> Accept quests around the racetrack
	.accept 1110 >> Accept Rocket Car Parts
    .goto Thousand Needles,77.8,77.2
	.accept 1104 >> Accept Salt Flat Venom
    .goto Thousand Needles,77.9,77.2
    .accept 1105 >> Accept Hardened Shells
    .goto Thousand Needles,78.1,77.1
step
    .goto Thousand Needles,77.8,77.3
    .accept 1111 >> Accept Wharfmaster Dizzywig
    .accept 5762 >> Accept Hemet Nesingwary Jr.
step
    .xp <33,1
    .accept 1176 >> Accept Load Lightening
    .goto Thousand Needles,80.2,75.8
    .accept 1175 >> Accept A Bump in the Road
    .goto Thousand Needles,81.7,78.0
step
    .xp <33,1
	#sticky
	#completewith ShimmeringF
	>>Save the turtle meat for a quest later.
	.collect 3712,10
step
    .isOnQuest 1175
   >>Kill Gazers in the area. Also kill some Crystalhides that you see
	.goto Thousand Needles,78.4,89.1
	.complete 1175,3 --Kill Saltstone Gazer (x6)
step
	#label ShimmeringF
    .isOnQuest 1110
	>>Circle the area killing and collecting for the Shimmering Flats quests
	.complete -1110,1 --Collect Rocket Car Parts (x30)
	.complete -1104,1 --Collect Salty Scorpid Venom (x6)
	.complete -1176,1 --Collect Hollow Vulture Bone (x10)
    .complete -1105,1 --Collect Hardened Tortoise Shell (x9)
	.complete -1175,1 --Kill Saltstone Basilisk (x10)
	.complete -1175,2 --Kill Saltstone Crystalhide (x10)
step
	#sticky
	#label partsoftheswarm
    .isOnQuest 1110
	>>Grind the Silithid creatures until you get a Cracked Silithid Carapace. Click it to accept a quest.
	.collect 5877,1,1148
	.accept 1148 >> Accept Parts of the Swarm
step
    .isQuestTurnedIn 1146
    .goto Thousand Needles,67.8,85.7
	.complete -1148,1 --Collect Silithid Heart (x1)
    .complete -1148,2 --Collect Silithid Talon (x5)
    .complete -1147,3 --Kill Silithid Invader (x5)	
    .complete -1147,1 --Kill Silithid Searcher (x5)
    .complete -1148,3 --Collect Intact Silithid Carapace (x3)
    .complete -1147,2 --Kill Silithid Hive Drone (x5)	
step
	#requires partsoftheswarm
    .turnin -1147 >> Turn in The Swarm Grows
    .goto Thousand Needles,67.6,63.9
step
    .turnin -1110 >> Turn in Rocket Car Parts
    .goto Thousand Needles,77.8,77.2
    .turnin -1104 >> Turn in Salt Flat Venom
    .goto Thousand Needles,78.0,77.1
    .turnin -1105 >> Turn in Hardened Shells
    .goto Thousand Needles,78.1,77.1
step
    .xp <33,1
    .isQuestTurnedIn 1104
    .accept 1107 >> Accept Encrusted Tail Fins
    .accept 1106 >> Accept Martek the Exiled
step
    .isOnQuest 1176
    .goto Thousand Needles,80.2,75.8
    .turnin 1176 >> Turn in Load Lightening
    .accept 1178 >> Accept Goblin Sponsorship
step
    .isOnQuest 1175
    .goto Thousand Needles,81.6,78.0
    .turnin 1175 >> Turn in A Bump in the Road
step
    .isOnQuest 1152
    .goto Tanaris,51.6,25.4
    .abandon 1152 >> Abandon Test of Lore
step
    .goto Tanaris,51.6,25.4
    .fp Gadgetzan >> Get the Gadgetzan flight path
step << tbc
    #completewith next
    +If you have access to gold on this server, mail yourself gold for mount training soon!
step
    .zoneskip Tanaris,1
	#completewith next
    .hs >> Hearth to Freewind Post << !Warrior
    .hs >> Hearth or fly to Thunder Bluff << Warrior
    .cooldown item,6948,>0
step << !Warrior
    .goto Thousand Needles,45.1,49.2,-1
    .goto Tanaris,51.6,25.4,-1
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << Warrior
    #completewith next
    .goto Thousand Needles,45.1,49.2,-1
    .goto Tanaris,51.6,25.4,-1
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .zoneskip Thunder Bluff
step << Warrior
    .isOnQuest 1145
	#completewith next
    .goto Thunder Bluff,57.4,87.2
    .accept 1718 >>Accept The Islander
    .trainer >> Go and train your class spells
step << Warrior
    .isOnQuest 1153
    .goto Thunder Bluff,47.0,49.8
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << !Warrior
    .isOnQuest 1153
    .goto The Barrens,44.9,59.1
    .zone The Barrens >> Arrive in the Barrens
step
    .isOnQuest 1153
    .goto The Barrens,45.1,57.7
    .turnin 1153 >> Turn in A New Ore Sample
step
    #completewith swarmgrows
    .goto The Barrens,44.4,59.1,-1
    .goto Thunder Bluff,47.0,49.8,-1
    .fly Crossroads >> Fly to Crossroads
step
    .isOnQuest 906
    .goto The Barrens,51.5,30.9
    .turnin 906 >> Turn in Betrayal from Within
step
    #label swarmgrows
    .isQuestAvailable 1145
    .goto The Barrens,51.1,29.7
    .accept 1145 >> Accept The Swarm Grows
step
    .isOnQuest 1148
    .goto The Barrens,51.1,29.6
    .turnin 1148 >> Turn in Parts of the Swarm
    .accept 1184 >> Accept Parts of the Swarm
step
	#completewith next
    .goto The Barrens,51.5,30.3
    .fly Ratchet >> Fly to Ratchet
step
    .goto The Barrens,63.3,38.4
    .turnin 1111 >> Turn in Wharfmaster Dizzywig
    .accept 1112 >> Accept Parts for Kravel
step << Warrior
    .isOnQuest 874
    .goto The Barrens,65.8,43.8
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
step << Warrior
    .isOnQuest 873
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2
    >>Look in the water for Isha Awak (Red Threshadon). Kill and loot it for its heart
    .complete 873,1 --Heart of Isha Awak (1)
	.unitscan Isha Awak
step << Warrior
    .isOnQuest 1718
    >>Swim to the island
    .goto The Barrens,68.6,49.2
    .turnin 1718 >>Turn in The Islander
    .accept 1719 >>Accept The Affray
step << Warrior
    .isOnQuest 1719
    .goto The Barrens,68.6,48.7
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
step << Warrior tbc
    .isOnQuest 1719
    .goto The Barrens,68.6,49.2
    .turnin 1719 >>Turn in The Affray
    .accept 1791 >>Accept The Windwatcher
step << Warrior wotlk
    #xprate >1.499 
    .isOnQuest 1719
    .goto The Barrens,68.6,49.2
    .turnin 1719 >>Turn in The Affray
step << Warrior
    .isOnQuest 873
    .goto The Barrens,65.8,43.8
    .turnin 873 >>Turn in Isha Awak
step << Warrior
    .abandon 1838 >>Abandon Brutal Armor
step
    .xp <33,1
    #completewith next
	+Go to the dock. Take the boat to Stranglethorn Vale
   .goto The Barrens,63.7,38.6,15,0
	.goto The Barrens,63.7,38.6
step
    .xp <33,1
	.maxlevel 36
	.zone Stranglethorn Vale >>Arrive in Stranglethorn Vale
step << Shaman
    .xp <33,1
	.maxlevel 36
	#label Protection
	#completewith BigStick
 .goto Stranglethorn Vale,28.3,75.5
    .vendor >> Go to the vendor and buy Staff of Protection or Big Stick if it's in the shop.
    .collect 12252,1
step << Shaman
    .xp <33,1
	.maxlevel 36
	#label BigStick
	#completewith Protection 
 .goto Stranglethorn Vale,28.3,75.5
    .collect 12251,1
step
    .xp <33,1
	.isQuestTurnedIn 1178
    .goto Stranglethorn Vale,26.4,73.5
    .turnin 1180 >> Turn in Goblin Sponsorship
    .accept 1181 >> Accept Goblin Sponsorship
step
    .xp <33,1
	.isQuestTurnedIn 1180
	>> Head to the second level of buildings
    .goto Stranglethorn Vale,28.3,77.6
    .accept 575 >> Accept Supply and Demand
step
    .xp <33,1
	.isQuestTurnedIn 1180
	>> Head into the inn, this quest is on the bottom floor
    .goto Stranglethorn Vale,27.0,77.2
    .accept 605 >> Accept Singing Blue Shards
step
    .xp <33,1
	.isQuestTurnedIn 1180
	>> These quests are on the top floors of the inn
	.goto Stranglethorn Vale,27.1,77.3
    .accept 189 >> Accept Bloodscalp Ears
    .accept 213 >> Accept Hostile Takeover
    .accept 201 >> Accept Investigate the Camp
step
    .xp <33,1
	.isQuestTurnedIn 1180
    .goto Stranglethorn Vale,27.2,76.9
    .turnin 1181 >> Turn in Goblin Sponsorship
    .accept 1182 >> Accept Goblin Sponsorship
step << Rogue
    .xp <33,1
	.isQuestTurnedIn 1180
	#completewith next
    .goto Stranglethorn Vale,26.8,77.2
	.trainer >> Go and train your class spells
step
    .xp <33,1
	.isQuestTurnedIn 1180
    .goto Stranglethorn Vale,26.9,77.0
    .fp Booty Bay >> Get the Booty Bay flight path
step
    .xp <33,1
    #completewith next
	+Go to the dock. Take the boat back to Ratchet.
   .goto The Barrens,63.7,38.6,15,0
	.goto The Barrens,63.7,38.6
step
    .xp <33,1
	.maxlevel 36
	.zone The Barrens >>Arrive in Ratchet
step
    .xp >33,1
    .goto Ashenvale,73.2,61.5,-1
    .goto The Barrens,63.1,37.1,-1
    .fly Orgrimmar >> Fly to Orgrimmar
step << Paladin
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,32.4,35.8
    .trainer >> Go and train your class spells
step << Shaman
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,38.6,36.0
    .trainer >> Go and train your class spells
step << Hunter
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,66.1,18.5
    .trainer >> Go and train your class spells
step << Hunter
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,66.3,14.8
    .trainer >> Go and train your pet spells
step << Rogue
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,44.0,54.6
    .trainer >> Go and train your class spells
step << Warlock
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,48.0,46.0
    .trainer >> Go and train your class spells
step << Warlock
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,47.5,46.7
    .vendor >> Buy your pet books
	.collect 16368,1
step << Mage
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,38.8,85.6
    .trainer >> Go and train your class spells
step << Priest
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,35.6,87.8
    .trainer >> Go and train your class spells
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,75.2,34.2
    .turnin 1145 >> Turn in The Swarm Grows
    .accept 1146 >> Accept The Swarm Grows
step << !Shaman !Warrior
    .maxlevel 32
    .goto Orgrimmar,54.1,68.4
    .home >>Set your Hearthstone to Valley of Strength
step << Orc !Warlock tbc
	#sticky
	#completewith next
	.money <35.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step << Troll !Warlock tbc
	#sticky
	#completewith next
	.money <35.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step << Shaman
    .isOnQuest 874
	#completewith next
    .goto Orgrimmar,45.1,63.9
    .fly Ratchet >>Fly to Ratchet
step << Shaman
    .isOnQuest 874
    .goto The Barrens,65.8,43.8
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
step << Shaman
    .isOnQuest 220
    .goto The Barrens,65.8,43.8
    .turnin 220 >>Turn in Call of Water
    .accept 63 >>Accept Call of Water
step << Shaman
    .isOnQuest 873
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2
    >>Look in the water for Isha Awak (Red Threshadon). Kill and loot it for its heart
    .complete 873,1 --Heart of Isha Awak (1)
	.unitscan Isha Awak
step << Shaman
    .isOnQuest 873
    .goto The Barrens,65.8,43.8
    .turnin 873 >>Turn in Isha Awak
step << Tauren tbc
    .money <35.00
    .goto The Barrens,63.1,37.1,-1
    .goto Orgrimmar,45.1,63.9,-1
    .fly Thunder Bluff >>Fly to Thunder Bluff, we're going to train riding
step << Tauren tbc
    .money <35.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Head down the lifts and then go to Bloodhoof Village. Train riding and buy your mount
step << Warrior/Shaman
	#completewith next
    .goto The Barrens,63.1,37.1,-1
    .goto Thunder Bluff,46.9,49.9,-1
    .fly Orgrimmar >>Fly to Orgrimmar
step << Tauren
    #completewith next
    .goto Thunder Bluff,46.9,49.9,-1
    .fly Orgrimmar >>Fly to Orgrimmar    
step << Shaman
    .isQuestAvailable 1531
    .goto Orgrimmar,38.0,37.7
    .accept 1531 >>Accept Call of Air
step << Warrior
	#completewith next
	.goto Orgrimmar,81.5,19.6
	.train 2567 >> Train Thrown from Hanashi
step << Warrior/Shaman
	#completewith next
    .xp <33,1
    .goto Orgrimmar,54.1,68.4
    .home >>Set your Hearthstone to Valley of Strength
step << Undead !Warlock tbc
    .money <35.00
    .goto Durotar,50.8,13.7
    .zone Tirisfal Glades >> Board the zeppelin to Tirisfal Glades, we're buying our mount.
    >> If you can teleport to the Undercity skip this step << Mage
step << Undead !Warlock tbc
    .money <35.00
    .goto Tirisfal Glades,60.1,52.6
    .train 554 >> Train riding and purchase your mount
    .zoneskip Tirisfal Glades,1
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Durotar,50.8,13.7
    .zone Tirisfal Glades >> Board the zeppelin to Tirisfal Glades, we're buying our mount.
    >> If you can teleport to Undercity or Silvermoon skip this step << Mage
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Undercity,66.3,4.5,30,0
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >> Click on the Orb of Translocation to head to Silvermoon City
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Eversong Woods,61.1,54.7,5,0
    .goto Eversong Woods,61.4,54.0
    .train 33388 >> Leave Silvermoon City, then train riding and purchase your mount.
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .goto Silvermoon City,49.4,14.3
    >> Teleport to The Undercity if you can << Mage
    .zone Undercity >> Click on the Orb of Translocation to head to the Undercity
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .goto Tirisfal Glades,61.9,59.1
    .zone Stranglethorn Vale >> Board the Zeppelin to Stranglethorn Vale
    .zoneskip Tirisfal Glades,1
step << Undead !Warlock tbc
    .goto Tirisfal Glades,61.9,59.1
    .zone Stranglethorn Vale >> Board the Zeppelin to Stranglethorn Vale
    .zoneskip Tirisfal Glades,1
]])
