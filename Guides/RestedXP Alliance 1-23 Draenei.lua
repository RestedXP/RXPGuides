RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance
#name 1-12 Azuremyst Isle
#next 11-20 Bloodmyst (Draenei)
step
    .goto Azuremyst Isle,82.9,44.0
    .accept 9279 >> Accept You Survived!
step
    .goto Azuremyst Isle,80.4,45.9
    .turnin 9279 >> Turn in You Survived!
    .accept 9280 >> Accept Replenishing the Healing Crystals
step
    .goto Azuremyst Isle,79.1,46.5
    .accept 10302 >> Accept Volatile Mutations
step << Shaman
    #sticky
    .goto Azuremyst Isle,79.3,49.1
    >>Kill a few mobs and sell trash items, you will need 10c to train
    .train 8017 >> Train Rockbiter Weapon
step
	#sticky
    #label mothblood
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
step
    .goto Azuremyst Isle,78.4,44.3
    .complete 10302,1 --Kill Volatile Mutation (x8)
step
    .goto Azuremyst Isle,79.1,46.4
    .turnin 10302 >> Turn in Volatile Mutations
    .accept 9293 >> Accept What Must Be Done...
    .accept 9799 >> Accept Botanical Legwork
step
    .goto Azuremyst Isle,74.5,48.5
	>>Kill lashers/loot the small flowers on the ground
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .complete 9293,1 --Collect Lasher Sample (x10)
step
	#sticky
	.xp 4-420 >>Grind until you are 420xp away from level 4 (980/1400)
step
    .goto Azuremyst Isle,79.1,46.5
    .turnin 9293 >> Turn in What Must Be Done...
    .accept 9294 >> Accept Healing the Lake
    .turnin 9799 >> Turn in Botanical Legwork
step
    #requires mothblood
    .goto Azuremyst Isle,80.4,45.8
    .turnin 9280 >> Turn in Replenishing the Healing Crystals
    .accept 9409 >> Accept Urgent Delivery!
step
    .xp 4
step
    .goto Azuremyst Isle,79.9,49.2
    .turnin 9409 >> Turn in Urgent Delivery!
    .accept 9283 >> Accept Rescue the Survivors!
step << Shaman
    .goto Azuremyst Isle,79.3,49.1
    .accept 9449 >> Accept Call of Earth
step << Shaman
    .goto Azuremyst Isle,71.3,39.1
    .turnin 9449 >> Turn in Call of Earth
    .accept 9450 >> Accept Call of Earth
step
    #sticky
    #label survivors
	>>Use your Gift of the Naaru spell on one of the injured survivors scattered all around the starting zone
    .complete 9283,1 --Draenei Survivors Saved
step
    #sticky
    #label survivors2
    #requires survivors
    .goto Azuremyst Isle,80.1,49.0,0
    .turnin 9283 >> Turn in Rescue the Survivors!
step << Shaman
    .goto Azuremyst Isle,70.1,36.6
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
step << Shaman
    .goto Azuremyst Isle,71.3,39.1
    .accept 9451 >> Accept Call of Earth
    .turnin 9450 >> Turn in Call of Earth
step << Shaman
    .goto Azuremyst Isle,79.3,49.1
    .turnin 9451 >> Turn in Call of Earth
step << Hunter
	.goto Azuremyst Isle,79.86,49.67
	.train 1978>> Train Serpent Sting
step
    .goto Azuremyst Isle,79.4,51.3
    .accept 9305 >> Accept Spare Parts
step
    .goto Azuremyst Isle,79.5,51.7
    .accept 9303 >> Accept Inoculation
step
    .goto Azuremyst Isle,85.3,66.2
	>>Use the item in your bags to innoculate the neutral Owlbeasts
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
	#sticky
	#completewith next
	.hs >> Hearth back to the starting area
step
    .goto Azuremyst Isle,79.4,51.3
    .turnin 9305 >> Turn in Spare Parts
step
    .goto Azuremyst Isle,79.5,51.5
    .turnin 9303 >> Turn in Inoculation
    .accept 9309 >> Accept The Missing Scout
step
    .goto Azuremyst Isle,77.3,58.7
	>>Click on the big crystal inside  the lake
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    .goto Azuremyst Isle,72.0,60.8
    .turnin 9309 >> Turn in The Missing Scout
    .accept 10303 >> Accept The Blood Elves
step
    .goto Azuremyst Isle,70.1,63.5
    .complete 10303,1 --Kill Blood Elf Scout (x10)
step
    .goto Azuremyst Isle,72.0,61.0
    .turnin 10303 >> Turn in The Blood Elves
    .accept 9311 >> Accept Blood Elf Spy
step
    .goto Azuremyst Isle,69.2,65.5
    .complete 9311,1 --Kill Surveyor Candress (x1)
	>>Loot the plans from the Surveyor and right click it
    .accept 9798 >> Accept Blood Elf Plans
step
	#sticky
    .xp 6-1485 >>Grind elves until you are 1485xp away from level 6 (1315/2800)
step
	Die and talk to the spirit healer to respawn at the graveyard
    .goto Azuremyst Isle,79.2,46.4
    .turnin 9294 >> Turn in Healing the Lake
step
    .goto Azuremyst Isle,79.5,51.6
    .turnin 9311 >> Turn in Blood Elf Spy
    .turnin 9798 >> Turn in Blood Elf Plans
    .accept 9312 >> Accept The Emitter
step
    .goto Azuremyst Isle,79.4,51.2
    .turnin 9312 >> Turn in The Emitter
    .accept 9313 >> Accept Travel to Azure Watch
step
    #requires survivors2
    .goto Azuremyst Isle,64.6,54.2
    .accept 9314 >> Accept Word from Azure Watch
step
    .goto Azuremyst Isle,61.1,54.2
    .accept 9452 >> Accept Red Snapper - Very Tasty!
step
	#sticky
	#completewith next
	>>Run north along the river using the fishing net on the fishing pools, try to get at least 50% of this quest done, you will have another opportunity to finish it later
	.collect 23614,10
step
    .goto Azuremyst Isle,53.9,34.4
    >>Loot a glowing crystal from an Infected Nightstalker
    .accept 9455 >> Accept Strange Findings
step
	#sticky
	#completewith next
    .goto Azuremyst Isle,56.1,39.3
	.deathskip >>Die on purpose and rez at Azure Watch
    >>Make sure to die near the pond close to the mountain side
step
    #completewith next
    .goto Azuremyst Isle,49.0,51.6,150 >> Head to Azure Watch
step
    .goto Azuremyst Isle,48.4,51.6
    .accept 9463 >> Accept Medicinal Purpose
step
    #sticky
    .trainer >> Train your level 6 spells
step << Shaman
    #sticky
    .goto Azuremyst Isle,49.6,53.1,0
    >>Buy a Walking stick if you have 5s to spare
    .collect 2495,1
step
    .goto Azuremyst Isle,47.2,50.6
    .turnin 9455 >> Turn in Strange Findings
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
step
    .goto Azuremyst Isle,48.7,50.2
    .turnin 9313 >> Turn in Travel to Azure Watch
step
    .goto Azuremyst Isle,48.4,49.3
    .turnin 9314 >> Turn in Word from Azure Watch
step << !Shaman
    .goto Azuremyst Isle,48.4,49.3
    .home >> Set your Hearthstone to Azure Watch
step << Priest
    .goto Azuremyst Isle,48.6,49.3
    .accept 9586 >> Accept Help Tavara

step
	#sticky
	#completewith azuremyst1
    >>Kill Root Trappers/Moongraze Stags as you quest
    .complete 9463,1
	.collect 23676,6 --Collect Moongraze Stag Tenderloin (x6)
step << Priest
    .goto Azuremyst Isle,56.1,48.9
    .complete 9586,1 --Heal Tavara
step
    .goto Azuremyst Isle,47.0,70.1
    .accept 9506 >> Accept A Small Start
step
    .goto Azuremyst Isle,46.9,70.3
    .accept 9512 >> Accept Cookie's Jumbo Gumbo
step
    .goto Azuremyst Isle,58.5,66.3
	>>Loot the map located in one of the tents
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.5,67.6
	>>Loot the compass located in one of the tents
    .complete 9506,1 --Collect Nautical Compass (x1)
step << !Hunter
    .goto Azuremyst Isle,48.8,72.7
	>>Kill crabs along the coast
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
step << !Hunter
    .goto Azuremyst Isle,46.7,70.5
    .turnin 9512 >> Turn in Cookie's Jumbo Gumbo
step
    .goto Azuremyst Isle,47.0,70.3
    .turnin 9506 >> Turn in A Small Start
    .accept 9530 >> Accept I've Got a Plant
    .accept 9513 >> Accept Reclaiming the Ruins
step
    .goto Azuremyst Isle,47.2,70.1
    .accept 9523 >> Accept Precious and Fragile Things Need Special Handling
step
    #sticky
    .goto Azuremyst Isle,48.1,63.2
	>>Find a hollowed out tree stump next to the area with peasants doing lumber work
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
step
    .goto Azuremyst Isle,46.9,66.1
	>>Look for piles of purple leaves on the outskirts of Odesyus' Landing
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
	#label azuremyst1
    .goto Azuremyst Isle,47.1,70.1
    .turnin 9530 >> Turn in I've Got a Plant
    .accept 9531 >> Accept Tree's Company
step
    .goto Azuremyst Isle,39.4,73.9
	>>Finish off Root Trappers/Stags
    .complete 9463,1 --Collect Root Trapper Vine (x8)
	.complete 9454,1 --Collect Moongraze Stag Tenderloin (x6)
step
	.xp 8-950 >> Grind until you are 950xp away from level 8 (3550/4500)
	>>Do the crab quest southeast of Odesyus' Landing if you're not quite there yet << Hunter
step
    #sticky
    .trainer >>Train your level 8 spells
step
    .goto Azuremyst Isle,49.8,51.9
    >>Die and respawn at Azure Watch
	.accept 9454 >> Accept The Great Moongraze Hunt
    .turnin 9454 >> Turn in The Great Moongraze Hunt
    .accept 10324 >> Accept The Great Moongraze Hunt
step
    .goto Azuremyst Isle,48.4,51.8
    .turnin 9463 >> Turn in Medicinal Purpose
    .accept 9473 >> Accept An Alternative Alternative
step << Priest
    .goto Azuremyst Isle,48.6,49.4
    .turnin 9586 >> Turn in Help Tavara

step
    .goto Azuremyst Isle,48.9,51.1
    .accept 10428 >> Accept The Missing Fisherman
step
    .goto Azuremyst Isle,49.4,51.1
    .accept 9538 >> Accept Learning the Language
	>>Click on the item in your bags
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.4,51.1
    .turnin 9538 >> Turn in Learning the Language
    .accept 9539 >> Accept Totem of Coo
step
	#sticky
	#completewith azuremyst2
	>>Kill Nightstalkers/Moongraze Bucks as you quest
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
	.complete 10324,1
step
    .goto Azuremyst Isle,55.2,41.6
    .turnin 9539 >> Turn in Totem of Coo
    .accept 9540 >> Accept Totem of Tikti
step
    .goto Azuremyst Isle,53.0,34.0
	>>Loot the small blue flowers next to tree trunks
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    .goto Azuremyst Isle,64.4,39.8
    .turnin 9540 >> Turn in Totem of Tikti
    .accept 9541 >> Accept Totem of Yor
    >>Once you turn in this quest, follow the furbolg spirit and wait until you get the swim speed buff before entering the water
step
    .goto Azuremyst Isle,61.0,54.2
    >>Follow the furbolg spirit and wait until you get the swim speed buff before entering the water
    >>Use the fish net on the fish pools along the river, if a murloc spawns from the pool, run away
    .complete 9452,1 --Collect Red Snapper (x10)
	>>Avoid fighting mobs, you'll lose the swim speed if you do any hostile action
step
    .goto Azuremyst Isle,61.0,54.2
    .turnin 9452 >> Turn in Red Snapper - Very Tasty!
    .accept 9453 >> Accept Find Acteon!
step
    .goto Azuremyst Isle,63.2,68.0
    >>Click on the totem underwater
    .turnin 9541 >> Turn in Totem of Yor
    .accept 9542 >> Accept Totem of Vark
step
	>>Follow the furbolg spirit and wait until he transform you into a ghostsaber
    .goto Azuremyst Isle,28.1,62.5
    .turnin 9542 >> Turn in Totem of Vark
    .accept 9544 >> Accept The Prophecy of Akida
step
	#label azuremyst2
    .goto Azuremyst Isle,27.3,63.9
	>>Furbolgs around this area drop the cage keys you need
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    .goto Azuremyst Isle,28.6,70.0
	Finish off Nightstalkers/Moongraze Bucks
	.complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .complete 10324,1 --Collect Moongraze Buck Hide (x6)
step
    .goto Azuremyst Isle,31.4,79.3
	>>Kill Nagas/Loot the light bulb looking things on the ground
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .complete 9523,1 --Collect Ancient Relic (x8)
    .collect 23759,1,9514 --rune covered tablet
step
    #sticky
    >>Click on the Rune Covered Tablet in your bags
    .accept 9514>> Rune Covered Tablet
step
    .goto Azuremyst Isle,18.4,84.1
	>>Use the tree disguise at the naga flag
    .complete 9531,1

step
    .goto Azuremyst Isle,16.5,94.4
    .turnin 10428 >> Turn in The Missing Fisherman
    .accept 9527 >> Accept All That Remains
step
    .goto Azuremyst Isle,15.0,89.4
	>>Kill Owlbeasts
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
step
    .goto Azuremyst Isle,16.5,94.3
    .turnin 9527 >> Turn in All That Remains
step
	#sticky
	#completewith next
    .deathskip >>Die and respawn at Azure Watch
step
    .goto Azuremyst Isle,47.0,70.3
    .turnin 9513 >> Turn in Reclaiming the Ruins
    .turnin 9523 >> Turn in Precious and Fragile Things Need Special Handling
    .turnin 9531 >> Turn in Tree's Company
    .accept 9537 >> Accept Show Gnomercy
    >>Don't turn in the Rune Covered tablet yet, otherwise a long RP sequence will start
step << Hunter
	#sticky
    .goto Azuremyst Isle,48.8,72.7
	>>Kill crabs along the coast
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
step
    .goto Azuremyst Isle,50.2,70.6
	>>Speak with the gnome npc patrolling the beach southeast, wait for his dialogue sequence and kill him
    .complete 9537,1 --Collect Traitor's Communication (x1)
step << Hunter
    .goto Azuremyst Isle,46.7,70.5
    .turnin 9512 >> Turn in Cookie's Jumbo Gumbo
step
    .goto Azuremyst Isle,47.0,70.2
    .turnin 9537 >> Turn in Show Gnomercy
    .accept 9602 >> Accept Deliver Them From Evil...
step
    .goto Azuremyst Isle,47.0,70.3
    .turnin 9514 >> Turn in Rune Covered Tablet
    .accept 9515 >> Warlord Sriss'tiz
step << !Hunter !Shaman
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >> The path to Warlord Sriss'tiz starts here
step << !Hunter !Shaman
    >>Enter the naga cave and kill Warlord Sriss'tiz
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
step
    #sticky
    #completewith next
    .deathskip >> Death skip back to Azure Watch
step
    .goto Azuremyst Isle,49.9,51.9
    .turnin 9453 >> Turn in Find Acteon!
    .turnin 10324 >> Turn in The Great Moongraze Hunt
step
    .goto Azuremyst Isle,49.5,51.2
    .turnin 9544 >> Turn in The Prophecy of Akida
    .accept 9559 >> Accept Stillpine Hold
step
    .goto Azuremyst Isle,48.5,51.5
    .turnin 9473 >> Turn in An Alternative Alternative
step
    .goto Azuremyst Isle,47.2,50.7
    .turnin 9456 >> Turn in Nightstalker Clean Up, Isle 2...
    .turnin 9602 >> Turn in Deliver Them From Evil...
    .accept 9623 >> Accept Coming of Age
step << Shaman
    .goto Azuremyst Isle,48.4,49.3
    .home >> Set your Hearthstone to Azure Watch
step
    .xp 10
step
    #sticky
    .trainer >> Train your level 10 spells
step << Warrior
    .goto Azuremyst Isle,49.9,50.6
    .accept 9582 >> Accept Strength of One
step << Shaman
    .goto Azuremyst Isle,48.1,50.5
    .accept 9464 >> Accept Call of Fire
step << Hunter
    .goto Azuremyst Isle,49.7,51.9
    .accept 9757 >> Accept Seek Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,24.2,54.3
    .turnin 9757 >> Turn in Seek Huntress Kella Nightbow
    .accept 9591 >> Accept Taming the Beast
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
    .complete 9591,1 --Tame a Barbed Crawler
step << Hunter
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >> The path to Warlord Sriss'tiz starts here
step << Hunter
    >>Enter the naga cave and kill Warlord Sriss'tiz
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
step << Hunter
    .goto Azuremyst Isle,24.2,54.3
    .turnin 9591 >> Turn in Taming the Beast
    .accept 9592 >> Accept Taming the Beast
step
    .goto The Exodar,81.5,51.6
    .turnin 9623 >> Turn in Coming of Age
    .accept 9625 >> Accept Elekks Are Serious Business
    --?
step << Hunter
    .goto Azuremyst Isle,35.4,35.0
    .complete 9592,1 --Tame a Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.2,54.3
    .turnin 9592 >> Turn in Taming the Beast
    .accept 9593 >> Accept Taming the Beast
step << Hunter
    .goto Azuremyst Isle,35.0,33.9
    .complete 9593,1 --Tame a Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.2,54.3
    .turnin 9593 >> Turn in Taming the Beast
    .accept 9675 >> Accept Beast Training
step << Hunter
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,35
    >>Enter The Exodar through the backdoor
step << Hunter
    .goto The Exodar,44.1,86.6
    .turnin 9675 >> Turn in Beast Training
step << Hunter
	#sticky
	#completewith next
    >>Speak with the weapon master upstairs
    .goto The Exodar,53.3,85.7
    .train 202 >>Train 2h swords
step
	>>Head out of The Exodar
    .goto Azuremyst Isle,44.7,23.5
    .accept 9562 >> Accept Murlocs... Why Here? Why Now?
step
    .goto Azuremyst Isle,44.8,23.8
    .accept 9560 >> Accept Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,46.6,20.7
    .turnin 9559 >> Turn in Stillpine Hold
step << Shaman
    .goto Azuremyst Isle,59.6,18.0
    .turnin 9464 >> Turn in Call of Fire
    .accept 9465 >> Accept Call of Fire
step
    .goto Azuremyst Isle,54.7,18.4
	>>Kill Ravagers
    .complete 9560,1 --Collect Ravager Hide (x8)
step << Warrior
    .goto Azuremyst Isle,54.1,9.8
    >>Click on the Ravager cage
    .complete 9582,1 --Kill Death Ravager (x1)
step
    .goto Azuremyst Isle,44.8,23.8
    .turnin 9560 >> Turn in Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,46.8,21.2
    .accept 9573 >> Accept Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.6,20.6
    .accept 9565 >> Accept Search Stillpine Hold
step
    .goto Azuremyst Isle,47.4,14.0
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .complete 9573,2 --Kill Crazed Wildkin (x9)
step << Shaman
    .goto Azuremyst Isle,46.1,16.8
    >>Keep killing owlbeasts
    .complete 9465,1 --Collect Ritual Torch (x1)
step
    .goto Azuremyst Isle,50.6,11.6
    .turnin 9565 >> Turn in Search Stillpine Hold
    .accept 9566 >> Accept Blood Crystals
step
    .goto Azuremyst Isle,46.7,20.8
    .turnin 9566 >> Turn in Blood Crystals
step
    .goto Azuremyst Isle,47.0,22.2
    .accept 9570 >> Accept The Kurken is Lurkin'
step
    .goto Azuremyst Isle,46.8,21.2
    .turnin 9573 >> Turn in Chieftain Oomooroo
step
    .goto Azuremyst Isle,49.9,12.8
	>>Kill The Kurken
    .complete 9570,1 --Collect The Kurken's Hide (x1)
step
    .goto Azuremyst Isle,47.0,22.2
    .turnin 9570 >> Turn in The Kurken is Lurkin'
    .accept 9571 >> Accept The Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,46.7,20.8
    .accept 9622 >> Accept Warn Your People
step
    .goto Azuremyst Isle,44.8,23.8
    .turnin 9571 >> Turn in The Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,59.6,17.9
    .turnin 9465 >> Turn in Call of Fire
    .accept 9467 >> Accept Call of Fire
step << Shaman
    .hs >> Hearth to Azure Watch
step << Shaman
    .goto Azuremyst Isle,47.1,50.6
    .turnin 9622 >> Turn in Warn Your People
step << Shaman
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >> The path to Warlord Sriss'tiz starts here
step << Shaman
    >>Enter the naga cave and kill Warlord Sriss'tiz
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
step << Shaman
    #sticky
	#completewith next
    >>Click on the Fireproof Satchel in your bags
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    .goto Azuremyst Isle,11.3,82.3
    >>Click on the wicker man to summon Hauteur
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
step << Shaman
    .goto Azuremyst Isle,59.5,18.0
    >>Use the orb in your bag to teleport back to the Emberglade
    .turnin 9467 >> Turn in Call of Fire
    .accept 9468 >> Accept Call of Fire
step
    .goto Azuremyst Isle,34.1,18.0
    .complete 9562,1 --Collect Stillpine Grain (x5)
    >>Kill and loot the named Murloc
    .accept 9564 >> Accept Gurf's Dignity
]],"Draenei")

RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance
#name 11-20 Bloodmyst (Draenei)
#next RestedXP Alliance 20-32\20-21 Darkshore (Draenei)
step
    .goto Bloodmyst Isle,63.5,88.8
    .accept 9624 >> Accept A Favorite Treat
step
    .goto Bloodmyst Isle,63.1,88.0
    .turnin 9625 >> Turn in Elekks Are Serious Business
    .accept 9634 >> Accept Alien Predators
step
    >>Do Alien Predators/A Favorite Treat while you grind
    .xp 12-2000
step
    #completewith next
    .deathskip>>Die and respawn at Blood Watch
step
    .goto Bloodmyst Isle,55.7,59.7
    .accept 9603 >> Accept Beds, Bandages, and Beyond
step
    .goto Bloodmyst Isle,55.7,59.7
    .home >> Set your Hearthstone to Blood Watch
step
    .goto Bloodmyst Isle,56.4,56.8
    .accept 9648 >> Accept Mac'Aree Mushroom Menagerie
step
    .goto Bloodmyst Isle,57.6,54.0
    .fp >> Get the Blood Watch flight path
step
    .goto Bloodmyst Isle,57.6,54.0
    .turnin 9603 >> Turn in Beds, Bandages, and Beyond
step
    .goto Bloodmyst Isle,52.7,53.3
    .accept 9693 >> Accept What Argus Means to Me
    .accept 9581 >> Accept Learning from the Crystals
step
    .goto Bloodmyst Isle,55.4,55.2
    .turnin 9693 >> Turn in What Argus Means to Me
    .accept 9694 >> Accept Blood Watch
step
    .goto Bloodmyst Isle,48.4,47.9
    .complete 9694,1 --Kill Sunhawk Spy (x10)
step
    .goto Bloodmyst Isle,55.4,55.3
    .turnin 9694 >> Turn in Blood Watch
step
    .goto Bloodmyst Isle,53.3,57.7
    .accept 9629 >> Accept Catch and Release
step
	#sticky
    .goto Bloodmyst Isle,51.1,81.4,0
	>>Look for small red mushrooms while you quest through Bloodmyst
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    .goto Bloodmyst Isle,58.2,83.4
	>>Use the pick in your bags to collect the small red crystal
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
	#sticky
    .goto Bloodmyst Isle,59.3,89.1
	>>Collect the small fruits on the ground
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,59.3,89.1
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
step
    .goto Bloodmyst Isle,63.4,88.7
    .turnin 9624 >> Turn in A Favorite Treat
step
    .goto Bloodmyst Isle,63.1,87.9
    .turnin 9634 >> Turn in Alien Predators
step
    .goto Bloodmyst Isle,63.1,87.6
    .accept 9663 >> Accept The Kessel Run
step
    .goto Azuremyst Isle,46.6,20.7
	.accept 9622 >> Accept Warn Your People << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
	*IMPORTANT: Do not engage any mobs, attacking or casting spells will dismount you, if you get dazed by getting hit from behind you will also dismount

step
    .goto Azuremyst Isle,44.7,23.5
    .turnin 9564 >> Turn in Gurf's Dignity
    .turnin 9562 >> Turn in Murlocs... Why Here? Why Now?
step << !Paladin
	#sticky
	#completewith kesselrun
	.trainer >> Train your level 12 spells in Azure Watch
step << Warrior
    .goto Azuremyst Isle,50.0,50.6
    .turnin 9582 >> Turn in Strength of One
    .accept 10350 >> Accept Behomat
step << !Shaman
    .goto Azuremyst Isle,47.1,50.5
    .turnin 9622 >> Turn in Warn Your People
step << Shaman
    .goto Azuremyst Isle,48.1,50.5
    .turnin 9468 >> Turn in Call of Fire
    .accept 9461 >> Accept Call of Fire
step
    .goto Azuremyst Isle,47.1,50.5
    .complete 9663,2 --Exarch Menelaous Warned
step
	#label kesselrun
    .goto Azuremyst Isle,46.9,70.3
    .complete 9663,3 --Admiral Odesyus Warned
step
    .goto Azuremyst Isle,46.9,70.3    
    .turnin 9515 >> Warlord Sriss'tiz
    .isQuestComplete 9515
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.4,30
    >>Enter The Exodar through the backdoor
step << Paladin
    .goto The Exodar,38.5,82.5
    .accept 9598 >>Accept Redemption
    .turnin 9598 >>Turn in Redemption
    .accept 9600 >>Accept Redemption
step
    .hs >> Hearth to Blood Watch
step
    .goto Bloodmyst Isle,52.7,53.3
    .turnin 9581 >> Turn in Learning from the Crystals
    .accept 9620 >> Accept The Missing Survey Team
step
    .goto Bloodmyst Isle,48.4,47.9
    .xp 13
step
    .goto Bloodmyst Isle,54.9,58.0
    .accept 9567 >> Accept Know Thine Enemy
step
    .goto Bloodmyst Isle,63.1,87.7
    .turnin 9663 >> Turn in The Kessel Run
    .accept 9666 >> Accept Declaration of Power
step
    .goto Bloodmyst Isle,68.2,81.1
    .accept 9667 >> Accept Saving Princess Stillpine
step << Paladin
    .goto Bloodmyst Isle,65.0,77.5
    >>Use the symbol of life on a dead furbolg shaman
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
step
	#sticky
    .goto Bloodmyst Isle,66.8,69.2,0
	>>Loot a small blue mushroom around the naga ruins
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    .goto Bloodmyst Isle,68.8,68.7
    .complete 9666,2 --Kill Lord Xiz (x1)
	>>Use the quest item provided on his corpse
    .complete 9666,1
step
	#sticky
	#completewith next
    .goto Bloodmyst Isle,64.2,76.8
    >>Kill furbolgs until the high chief spawns
    .collect 24099,1 --Collect The High Chief's Key (x1)
step
    .goto Bloodmyst Isle,68.2,81.1
    .complete 9667,1 --Free Saving Princess Stillpine
step
    .goto Bloodmyst Isle,63.0,87.6
    .turnin 9666 >> Turn in Declaration of Power
    .accept 9668 >> Accept Report to Exarch Admetius
step
    .goto Bloodmyst Isle,56.0,79.5
	>>Loot a big red mushroom underwater
    .complete 9648,1 --Collect Aquatic Stinkhorn (x1)
step
    .goto Bloodmyst Isle,45.4,94.3
	>>Kill and loot the named murloc that patrols the around the murloc camps
    .accept 9576 >> Accept Cruelfin's Necklace
	>>Use the Blacksilt tagger in your bags to tag scouts
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
step
	#sticky
	#label greenmushroom
	>>Look for small green mushrooms close to the satyr area
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#sticky
	#label monument
    .goto Bloodmyst Isle,36.5,71.5
	>>Click on the small sign at the monument
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,38.2,81.7
    >>Kill and loot the named Felguard that roams the area
	>>Right click on Tzerak's Armor Plate
    .accept 9594 >> Accept Signs of the Legion
	*Skip this step if you can't find the felguard
step
	#requires monument
    .goto Bloodmyst Isle,37.0,78.7
	>>Finish off Signs of the Legion
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
	>>Skip this step if you can't find Tzerak around this area
	.isOnQuest 9594
step
	#requires greenmushroom
    .goto Bloodmyst Isle,53.3,57.6
    .turnin 9576 >> Turn in Cruelfin's Necklace
    .turnin 9629 >> Turn in Catch and Release
    .accept 9574 >> Accept Victims of Corruption 
step
    .goto Bloodmyst Isle,50.6,74.4
	>>Kill treants around this area
    .complete 9574,1 --Collect Crystallized Bark (x6)
step
    .goto Bloodmyst Isle,53.3,57.8
    .turnin 9574 >> Turn in Victims of Corruption 
step
    .goto Bloodmyst Isle,55.1,59.2
    .accept 9646 >> Accept WANTED: Deathclaw
step
    .goto Bloodmyst Isle,55.0,58.1
    .turnin 9594 >> Turn in Signs of the Legion
	.isQuestComplete 9594
step
    .goto Bloodmyst Isle,55.0,58.1
    .turnin 9567 >> Turn in Know Thine Enemy
step
    .goto Bloodmyst Isle,55.2,56.0
    .turnin 9667 >> Turn in Saving Princess Stillpine
step
    .goto Bloodmyst Isle,56.4,56.7
    .turnin 9648 >> Turn in Mac'Aree Mushroom Menagerie
step
    .goto Bloodmyst Isle,55.4,55.3
    .accept 9641 >> Accept Irradiated Crystal Shards
    .accept 9779 >> Accept Intercepting the Message
step
    .goto Bloodmyst Isle,61.1,48.6
    .turnin 9620 >> Turn in The Missing Survey Team
    .accept 9628 >> Accept Salvaging the Data
step
    .goto Bloodmyst Isle,62.7,47.6
	>>Kill nagas until you get the survey data crystal
    .complete 9628,1 --Collect Survey Data Crystal (x1)
step
    .goto Bloodmyst Isle,52.7,53.3
    .turnin 9628 >> Turn in Salvaging the Data
    .accept 9584 >> Accept The Second Sample
    .turnin 9668 >> Turn in Report to Exarch Admetius
step
    .goto Bloodmyst Isle,45.7,47.8
	>>Use the pick in your bags to collect the small red crystal
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,48.1,47.6
	>>Kill elves around this area
    .complete 9779,1 --Collect Sunhawk Missive (x1)
step
	.goto Bloodmyst Isle,48.1,47.6
	.xp 15-1200
step
	#sticky
	#label mailbox
	>>Speak to Messenger Hermesius, he patrols around Blood Watch
    .accept 9671
	.turnin 9671
step
    .goto Bloodmyst Isle,52.7,53.2
    .turnin 9584 >> Turn in The Second Sample
    .accept 9585 >> Accept The Final Sample
step
    .goto Bloodmyst Isle,55.3,55.3
    .turnin 9779 >> Turn in Intercepting the Message
    .accept 9696 >> Accept Translations...
step
    .goto Bloodmyst Isle,54.5,54.6
    .turnin 9696 >> Turn in Translations...
    .accept 9698 >> Accept Audience with the Prophet
step
	#requires mailbox
	>>Open your mailbox, retrieve the note and accept the quest
    .goto Bloodmyst Isle,55.1,59.1
    .accept 9672 >> Accept The Bloodcurse Legacy
step
    .goto Bloodmyst Isle,55.0,57.8
    .accept 9569 >> Accept Containing the Threat
step
    .goto Bloodmyst Isle,55.8,57.0
    .accept 9580 >> Accept The Bear Necessities
    .accept 9643 >> Accept Constrictor Vines
step
    .goto Bloodmyst Isle,56.3,56.8
    .accept 9649 >> Accept Ysera's Tears
step
    .goto Bloodmyst Isle,74.7,33.7
    .accept 9687 >> Accept Restoring Sanctity
step
	#sticky
	#label yserasTear
	>>Collect the small green mushrooms around the island
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.1,22.6
    .turnin 9672 >> Turn in The Bloodcurse Legacy
    .accept 9674 >> Accept The Bloodcursed Naga
step
    .goto Bloodmyst Isle,80.0,16.9
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
step
    .goto Bloodmyst Isle,79.1,22.6
    .turnin 9674 >> Turn in The Bloodcursed Naga
    .accept 9682 >> Accept The Hopeless Ones...
step
    .goto Bloodmyst Isle,87.3,16.6
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
step
    .goto Bloodmyst Isle,79.2,22.7
    .turnin 9682 >> Turn in The Hopeless Ones...
    .accept 9683 >> Accept Ending the Bloodcurse
step << Shaman
	.xp 16-3000
step
	#requires yserasTear
    .goto Bloodmyst Isle,86.0,54.5
    >>Swim to the island south, climb the mountain and click on the statue to summon Atoph
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    *Atoph is level 19, proceed with caution
step << Shaman
	.xp 16-2190 --Making sure we get to level 16 before going into exodar for training
step
	#sticky
	#completewith next
	.deathskip >> Death skip to Blood Watch
step
    .goto Bloodmyst Isle,56.4,56.7
    .turnin 9649 >> Turn in Ysera's Tears
step
    .goto Bloodmyst Isle,57.6,53.9
    .accept 9604 >> Accept On the Wings of a Hippogryph
step
    .fly The Exodar>> Fly to The Exodar
step
    .goto The Exodar,56.9,50.2
    .turnin 9604 >> Turn in On the Wings of a Hippogryph
    .accept 9605 >> Accept Hippogryph Master Stephanos
step << Warrior
    .turnin 10350 >> Turn in Behomat
    .goto The Exodar,55.6,82.1
    >>Talk to the weapon master upstairs
    .train 199 >>Train 2h Maces
    .goto The Exodar,53.3,85.7
step
    #sticky
    #completewith exit1
    .goto Azuremyst Isle,27.8,53.6,0
    >>Buy a Bronze Tube from Feera (limited supply), skip this step if she doesn't have it or if you already have one
    .collect 4371,1,175
step << Shaman
    >>Talk to the weapon master upstairs
    .goto The Exodar,53.3,85.7
    .train 199 >>Train 2h Maces
step << Paladin
    >>Talk to the weapon master upstairs
    .goto The Exodar,53.3,85.7
    .train 202 >>Train 2h swords
step << Shaman
    .goto The Exodar,32.7,54.5
    .turnin 9461 >> Turn in Call of Fire
    .accept 9555 >> Accept Call of Fire
step << Paladin
    .goto The Exodar,38.8,82.6
    .turnin 9600 >>Turn in Redemption
step
    .goto The Exodar,32.9,54.6
    .turnin 9698 >> Turn in Audience with the Prophet
    .accept 9699 >> Accept Truth or Fiction
step << Shaman
    .goto The Exodar,30.0,33.1
    .turnin 9555 >> Turn in Call of Fire
step
    .goto The Exodar,68.6,63.3
    >>Run back to the flight master
    .turnin 9605 >> Turn in Hippogryph Master Stephanos
    .accept 9606 >> Accept Return to Topher Loaal
step
    .fly Blodmyst Isle>> Fly to Blodmyst Isle
step
    #label exit1
    .goto Bloodmyst Isle,55.5,55.4
    .turnin 9699 >> Turn in Truth or Fiction
    .accept 9700 >> Accept I Shoot Magic Into the Darkness
step
    .goto Bloodmyst Isle,56.2,54.3
    .accept 10063 >> Accept Explorers' League, Is That Something for Gnomes?
step
	#sticky
    .goto Bloodmyst Isle,41.3,30.6
	>>Use the pick in your bags to collect the small red crystal
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    .goto Bloodmyst Isle,41.9,29.6
    .complete 9569,1 --Kill Zevrax (x1)
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
	#sticky
	#label constrictors
    >>Kill Mutated Constrictors
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
step
	#sticky
	#completewith bloodmyst2
	>>Kill bears as you quest
	.complete 9580,1
step
    .goto Bloodmyst Isle,42.0,21.2
    .turnin 10063 >> Turn in Explorers' League, Is That Something for Gnomes?
    .accept 9548 >> Accept Pilfered Equipment
    .accept 9549 >> Accept Artifacts of the Blacksilt
step
    #sticky
    #completewith gnome
    .goto Bloodmyst Isle,42.1,21.2,0
    >>Buy a Bronze Tube from Clopper Wizbang (limited supply), skip this step if he doesn't have it or if you already have one
    .collect 4371,1,175
step
    .goto Bloodmyst Isle,40.4,20.4
    >>Loot the crate that can spawn in any of the murloc camps
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    .goto Bloodmyst Isle,39.5,20.7
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
step
    .goto Bloodmyst Isle,42.1,21.2
    .turnin 9548 >> Turn in Pilfered Equipment
    .turnin 9549 >> Turn in Artifacts of the Blacksilt
    >>Click on the map in your bags
    .accept 9550 >> Accept A Map to Where?
step
    #label gnome
    .goto Bloodmyst Isle,52.3,22.9
    .complete 9700,2 --Kill Void Anomaly (x5)
	>>Get close to the spaceship like bulding
	.complete 9700,1
step
    .goto Bloodmyst Isle,57.0,34.3
	>>Loot the Dragon Bones on the ground
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.1,41.9
    .turnin 9550 >> Turn in A Map to Where?
    .accept 9557 >> Accept Deciphering the Book
step
    .goto Bloodmyst Isle,54.7,54.1
    .turnin 9557 >> Turn in Deciphering the Book
step
    .goto Bloodmyst Isle,52.6,53.3
    .turnin 9585 >> Turn in The Final Sample
    .accept 10064 >> Accept Talk to the Hand
step
    .goto Bloodmyst Isle,54.7,54.0
    .accept 9561 >> Accept Nolkai's Words
step
    .goto Bloodmyst Isle,55.4,55.2
    .turnin 9700 >> Turn in I Shoot Magic Into the Darkness
    .accept 9703 >> Accept The Cryo-Core
step
	#label flutterers
	#sticky
	#requires constrictors
    .goto Bloodmyst Isle,55.9,56.9
    .turnin 9643 >> Turn in Constrictor Vines
    .accept 9647 >> Accept Culling the Flutterers
step
    .goto Bloodmyst Isle,55.0,58.1
    .turnin 9569 >> Turn in Containing the Threat
step
    .goto Bloodmyst Isle,53.2,57.7
    .accept 9578 >> Accept Searching for Galaen
step
	#requires flutterers
	#sticky
	#completewith bloodmyst2
	>>Kill flutterers as you quest
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
step
    .goto Bloodmyst Isle,37.5,61.3
    .turnin 9578 >> Turn in Searching for Galaen
    .accept 9579 >> Accept Galaen's Fate
    .accept 9706 >> Accept Galaen's Journal - The Fate of Vindicator Saruan
step
    .goto Bloodmyst Isle,37.8,58.9
	>>Kill and loot blood elves around this area
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
step
	#requires constrictors
    .goto Bloodmyst Isle,53.3,57.7
    .turnin 9579 >> Turn in Galaen's Fate
step
    .goto Bloodmyst Isle,53.3,57.2
    .accept 9669 >> Accept The Missing Expedition
step
    #level 18
    #label whatweknow
    #sticky
    .goto Bloodmyst Isle,55.6,55.1,0
    .accept 9753 >> Accept What We Know...
step
    .goto Bloodmyst Isle,55.6,55.1
    .turnin 9703 >> Turn in The Cryo-Core
    .turnin 9706 >> Turn in Galaen's Journal - The Fate of Vindicator Saruan
    .accept 9711 >> Accept Matis the Cruel
    .accept 9748 >> Accept Don't Drink the Water
step
    #level 18
    #requires whatweknow
    #label whatwedontknow
    #sticky
    .goto Bloodmyst Isle,52.6,53.3
    .turnin 9753 >> Turn in What We Know...
    .accept 9756 >> Acccept What We Don't Know...
step
    #sticky
    #level 18
    #requires whatwedontknow
    >>Open the cage and speak to the prisoner
    .complete 9756,1
    .goto Bloodmyst Isle,54.36,54.30
    .turnin 9756 >> Turn in What We Don't Know...
    .goto Bloodmyst Isle,52.6,53.3
    .accept 9760 >> Accept Vindicator's Rest
step
    .goto Bloodmyst Isle,30.3,45.8
    .turnin 10064 >> Turn in Talk to the Hand
    .accept 10065 >> Accept Cutting a Path
    .accept 9741 >> Accept Critters of the Void
step
    .goto Bloodmyst Isle,30.8,46.8
    .accept 10066 >> Accept Oh, the Tangled Webs They Weave
    .accept 10067 >> Accept Fouled Water Spirits
step
    #sticky
    .goto Bloodmyst Isle,30.3,57.2,0
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .complete 10065,1 --Kill Enraged Ravager (x10)
step
    .goto Bloodmyst Isle,19.6,63.2
    .complete 9741,1 --Kill Void Critter (x12)
step
	#label bloodmyst2
	>>Finish off Ravagers/Tanglers
    .turnin 10066 >> Turn in Oh, the Tangled Webs They Weave
    .goto Bloodmyst Isle,30.7,46.9
    .turnin 10065 >> Turn in Cutting a Path
    .goto Bloodmyst Isle,30.3,46.0
step
	#sticky
    >>Look for Matis the Cruel, he patrols the main road next to Vindicator's Rest
    .complete 9711,1 --Capture Matis the Cruel
	*Once you find him, use the flare in your bags to summon a Draenei NPC to assist you
	*The flare gun only have 1 charge, if you fail this quest, you will have to abandon it
step
    .goto Bloodmyst Isle,33.4,43.8
	>>Finish off flutterers and bears
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
	.complete 9580,1 --Bear flanks
step
    .goto Bloodmyst Isle,29.6,39.5
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
step
    .goto Bloodmyst Isle,30.7,46.8
    .turnin 10067 >> Turn in Fouled Water Spirits
step
    .goto Bloodmyst Isle,24.9,34.3
    .accept 9670 >> Accept They're Alive! Maybe...
step
	#sticky
	>>Destroy the egg sacs around this area
    .goto Bloodmyst Isle,18.1,37.9,0
    .complete 9670,1 --Expedition Researcher Freed
step
    .goto Bloodmyst Isle,18.1,37.9
    .complete 9669,1 --Kill Myst Leecher (x8)
    .complete 9669,2 --Kill Myst Spinner (x8)
    .complete 9669,3 --Kill Zarakh (x1)
step
    .goto Bloodmyst Isle,24.9,34.4
    .turnin 9670 >> Turn in They're Alive! Maybe...
step
    .goto Bloodmyst Isle,34.3,33.6
	>>Use the sampling vial at the base of the waterfall
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .goto Bloodmyst Isle,37.4,30.1
	>>Kill the named bear
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
step
    .hs >> Hearth to Blood Watch
step
    .goto Bloodmyst Isle,53.4,57.1
    .turnin 9669 >> Turn in The Missing Expedition
step
    .goto Bloodmyst Isle,52.7,53.3
    .turnin 9646 >> Turn in WANTED: Deathclaw
step
    .goto Bloodmyst Isle,54.7,54.1
    .accept 9632 >> Accept Newfound Allies
step
    .goto Bloodmyst Isle,55.6,55.3
    .turnin 9741 >> Turn in Critters of the Void
    .turnin 9748 >> Turn in Don't Drink the Water
    .turnin 9711 >> Turn in Matis the Cruel
    .accept 9746 >> Accept Limits of Physical Exhaustion
step
    .goto Bloodmyst Isle,55.9,56.9
    .turnin 9647 >> Turn in Culling the Flutterers
    .turnin 9580 >> Turn in The Bear Necessities
step
    .goto Bloodmyst Isle,61.4,49.6
    .turnin 9561 >> Turn in Nolkai's Words
step
    .goto Bloodmyst Isle,74.6,33.6
    .turnin 9687 >> Turn in Restoring Sanctity
    .accept 9688 >> Accept Into the Dream
step
	#sticky
    .goto Bloodmyst Isle,71.5,27.8,0
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .complete 9688,2 --Kill Veridian Broodling (x5)
step
    .goto Bloodmyst Isle,79.1,22.7
    .turnin 9683 >> Turn in Ending the Bloodcurse
step
    .goto Bloodmyst Isle,74.3,33.4
    .turnin 9688 >> Turn in Into the Dream
    .accept 9689 >> Accept Razormaw
step
    #sticky
    #label razormaw
    .goto Bloodmyst Isle,73.0,21.0
	>>Climb to the top of the mountain and click on the bonfire to summon Razormaw
    .complete 9689,1 --Kill Razormaw (x1)
	>>This is an elite quest, if you can't kill Razormaw, skip this step
step
    #sticky
    #requires razormaw
    .goto Bloodmyst Isle,74.3,33.4
    .turnin 9689 >> Turn in Razormaw
	.isQuestComplete 9689
step << Hunter/Shaman/Mage
    #label limit1
    #completewith L20
    .goto Bloodmyst Isle,24.8,51.3
    >>Do Limits of Physical Exhaustion if you still need XP
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    >>Skip this quest if you are already past the XP checkpoint
step << Hunter/Shaman/Mage
    #label limit2
    #completewith L20
    #requires limit1
    .goto Bloodmyst Isle,55.6,55.3
    .turnin 9746 >> Turnin Limits of Physical Exhaustion
    .accept 9740 >> Accept The Sun Gate
    >>Skip this quest if you are already past the XP checkpoint
step << Hunter/Shaman/Mage
    #label sungate
    #completewith L20
    #requires limit2
    .goto Bloodmyst Isle,18.7,64.0
    >>Click on the purple crystals around the lake and then on the big portal in the middle
    .complete 9740,1
    >>Skip this quest if you are already past the XP checkpoint
step << Hunter/Shaman/Mage
    #completewith next
    #requires sungate
    .goto Bloodmyst Isle,55.6,55.3
    .turnin 9746 >> Turnin Limits of Physical Exhaustion
    .accept 9740 >> Accept The Sun Gate
    >>Skip this quest if you are already past the XP checkpoint

step << Hunter/Shaman/Mage
    #label L20
    .xp 20
    >>You'll need to hit level 20 before leaving Bloodmyst
step << !Shaman
    #completewith next
    .deathskip >> Death skip back to Blood Watch
step
    .fly the Exodar>> Fly to the Exodar
step << Shaman
    .goto The Exodar,31.3,30.7
    .accept 9501 >> Accept Call of Water
step << Shaman
    .fly Blood Watch>> Fly to Blood Watch
step << Shaman
    .goto Bloodmyst Isle,32.3,16.2
    .turnin 9501 >> Turn in Call of Water
    .accept 9503 >> Accept Call of Water
step << Shaman
    .goto Bloodmyst Isle,24.8,51.3
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .complete 9746,2 --Kill Sunhawk Defender (x10)
step << Shaman
    .goto Bloodmyst Isle,30.2,37.8
    .complete 9503,1 --Collect Foul Essence (x6)
step << Shaman
    .goto Bloodmyst Isle,32.4,16.2
    .turnin 9503 >> Turn in Call of Water
    .accept 9504 >> Accept Call of Water
step << Shaman
    .goto Bloodmyst Isle,30.4,45.8,120 >>Die on purpose, respawn and run to Blood Watch
step << Shaman
    .goto Bloodmyst Isle,55.5,55.4
    .turnin 9746 >> Turn in Limits of Physical Exhaustion
step << Shaman
    .fly The Exodar>> Fly to The Exodar
step << Hunter/Mage/Paladin
	.trainer >> Train spells in Exodar 
	.train 15147 >>Learn Growl Rank 3 from the pet trainer <<Hunter
step << Priest
    Enter The Exodar and buy a Burning Wand from the vendor
    .collect 5210,1
    .goto The Exodar,46.4,61.4
    .trainer >> Train your class spells
    .goto The Exodar,39.2,51.3
step
    .goto Azuremyst Isle,24.2,54.3
	>>Talk to the Night Elf just outside of The Exodar back entrance
    .turnin 9632 >> Turn in Newfound Allies
    .accept 9633 >> Accept The Way to Auberdine
]],"Draenei")

RXPGuides.RegisterGuide("RestedXP Alliance 20-32",[[
<< Alliance
#name 20-21 Darkshore (Draenei)
#next 21-23 Ashenvale (Draenei)
step
    .goto Darkshore,36.1,44.9
    .accept 1138 >> Accept Fruit of the Sea
step
	.goto Darkshore,36.35,45.57
	.fp >> Get the Darkshore flight path
step
    .goto Darkshore,37.3,44.3
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto Darkshore,37.4,43.7
    .accept 947 >> Accept Cave Mushrooms
step
    .goto Darkshore,39.1,43.5
    .accept 965 >> Accept The Tower of Althalaxx
step
    .goto Darkshore,38.1,41.2
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
    .goto Darkshore,37.4,40.2
	.turnin 9633 >> Turn in The Way to Auberdine
    .accept 10752 >> Accept Onward to Ashenvale
step
    .goto Darkshore,38.2,28.8
	>>Enter the sunken ship through the hole on the hull and loot the chest at the bottom floor
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
step
    .goto Darkshore,39.6,27.5
	>>Enter the sunken ship through the hole on the hull and loot the chest at the bottom floor
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
step
	#sticky
	>>Kill Reef Crawlers and Encrusted Tide Crawlers along the coast
    .complete 1138,1 --Collect Fine Crab Chunks (x6)
step
	>>Start heading north while grinding crabs along the coast
    .goto Darkshore,56.7,13.5
    .accept 2098 >> Accept Gyromast's Retrieval
step
	#sticky
    >>Kill Raging Reef Crawlers
    .complete 2098,3 --Collect Bottom of Gelkak's Key (x1)
step
    .goto Darkshore,59.5,12.6
	>>Kill Giant Foreststriders
    .complete 2098,1 --Collect Top of Gelkak's Key (x1)
step
    .goto Darkshore,55.4,12.6
	>>Kill murlocs next to the sunken ship
    .complete 2098,2 --Collect Middle of Gelkak's Key (x1)
step
    .goto Darkshore,56.7,13.5
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
step
    .goto Darkshore,55.8,18.2
	>>Talk to the big robot and escort him back to the quest giver and then kill it once it turns hostile
    .complete 2078,1 --Gelkak's First Mate
step
    .goto Darkshore,56.7,13.5
    .turnin 2078 >> Turn in Gyromast's Revenge
step << !Druid !Shaman !Warlock
	#sticky
	#completewith end
	+Make sure to save your water breathing potions, you will need them later to deal with a couple of underwater sections from 30-40
step
    .goto Darkshore,55.0,24.9
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
step
    .goto Darkshore,55.3,26.7
    .complete 966,1 --Collect Worn Parchment (x4)
step
    .goto Darkshore,55.0,24.9
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
step
    .goto Darkshore,55.3,34.0
    .complete 947,1 --Collect Scaber Stalk (x5)
    .complete 947,2 --Collect Death Cap (x1)

step
    .xp 20-3900
step << Hunter
	#sticky
	#completewith next
	.deathskip >> Death skip to Auberdine
step
    .goto Darkshore,38.1,41.3
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    .goto Darkshore,37.5,41.9
    .accept 729 >> Accept The Absent Minded Prospector
step
    .goto Darkshore,37.4,43.7
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
step
    .goto Darkshore,36.1,44.9
    .turnin 1138 >> Turn in Fruit of the Sea
step << Hunter
    .goto Darkshore,33.1,39.9,30>>Take the boat to Teldrassil
step << Hunter
	#sticky
	#completewith next
	.goto Darnassus,63.3,66.3
	Buy the level 20 weapon upgrade
	.collect 3027,1
step << Hunter
	.goto Teldrassil,29.2,56.7
	.train 264 >> Train Bows
    .train 227 >> Train Staves
step << Hunter
    .goto Teldrassil,58.4,94.0
    .fp >> Get the Rut'theran Village flight path
step << Hunter
    .fly Auberdine >>Fly back to Auberdine
step
    .goto Darkshore,43.5,76.2
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
step
    .goto Darkshore,36.6,76.6
    .complete 4740,1 --Kill Murkdeep (x1)
step
    .goto Darkshore,35.7,83.7
    .turnin 729 >> Turn in The Absent Minded Prospector
step
    .goto Darkshore,35.7,83.7
    .accept 731 >> Accept The Absent Minded Prospector
step
    .complete 731,1 --Escort Prospector Remtravel
step
    .goto Darkshore,39.0,86.4
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto Darkshore,39.0,86.4
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto Darkshore,38.7,87.3
    .accept 945 >> Accept Therylune's Escape
step
    .goto Darkshore,38.6,86.1
    .turnin 949 >> Turn in The Twilight Camp
step
	#label end
    .complete 945,1 --Escort Therylune

]],"Draenei")

RXPGuides.RegisterGuide("RestedXP Alliance 20-32",[[
<< Alliance
#name 21-23 Ashenvale (Draenei)
#next 23-24 Wetlands
step
    .goto Ashenvale,26.2,38.6
    .turnin 967 >> Turn in The Tower of Althalaxx
    .accept 970 >> Accept The Tower of Althalaxx
step
    .goto Ashenvale,26.4,38.6
    .accept 1010 >> Accept Bathran's Hair
step
    .goto Ashenvale,31.3,23.2
    .complete 1010,1 --Collect Bathran's Hair (x5)
step
    .goto Ashenvale,31.4,31.0
    .complete 970,1 --Collect Glowing Soul Gem (x1)
step
    .goto Ashenvale,26.4,38.6
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
    .goto Ashenvale,26.2,38.6
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
    .goto Ashenvale,34.7,48.8
    .accept 1008 >> Accept The Zoram Strand
step
    .goto Ashenvale,36.6,49.6
    .accept 1054 >> Accept Culling the Threat
    .turnin 10752 >> Turn in Onward to Ashenvale
    .accept 991 >> Accept Raene's Cleansing
step
    .home >> Set your Hearthstone to Astranaar
step
    .goto Ashenvale,37.3,51.8
    .turnin 1020 >> Turn in Orendil's Cure
step << Warrior/Paladin
	#sticky
	.goto Ashenvale,35.8,52.0
	>>Buy the level 21 weapon upgrade
	.collect 922,1
step
	.goto Ashenvale,37.3,51.8
    .accept 1033 >> Accept Elune's Tear
step
    .goto Ashenvale,46.2,45.9
    .complete 1033,1 --Collect Elune's Tear (x1)
step
    .goto Ashenvale,37.8,34.7
    .complete 1054,1 --Collect Dal Bloodclaw's Skull (x1)
step
    .goto Ashenvale,36.6,49.6
    .turnin 1054 >> Turn in Culling the Threat
step
    .goto Ashenvale,37.3,51.8
    .turnin 1033 >> Turn in Elune's Tear
    .accept 1034 >> Accept The Ruins of Stardust
step << Shaman
    .goto Ashenvale,33.6,67.4
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.3,67.4
    .complete 1034,1 --Collect Handful of Stardust (x5)
step
    .goto Ashenvale,25.3,60.8
    .complete 973,1 --Collect Ilkrud Magthrull's Tome (x1)
step
    .goto Ashenvale,22.7,51.9
    .turnin 945 >> Turn in Therylune's Escape
step
    .goto Ashenvale,26.2,38.7
    .turnin 973 >> Turn in The Tower of Althalaxx
step
    .goto Ashenvale,20.3,42.4
    .turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
step
    .goto Ashenvale,20.3,42.4
    .complete 1023,1 --Collect Glowing Gem (x1)
step
    .goto Ashenvale,14.7,31.3
    .accept 1007 >> Accept The Ancient Statuette
step
    .goto Ashenvale,14.2,20.6
    .complete 1007,1 --Collect Ancient Statuette (x1)
step
    .goto Ashenvale,14.8,31.3
    .turnin 1007 >> Turn in The Ancient Statuette
    .accept 1009 >> Accept Ruuzel
step
    .goto Ashenvale,7.0,13.4
    .complete 1009,1 --Collect Ring of Zoram (x1)
step
    .goto Ashenvale,13.8,29.1
    .complete 1008,1 --Collect Wrathtail Head (x20)
step
    .goto Ashenvale,14.8,31.3
    .turnin 1009 >> Turn in Ruuzel
step
    #sticky
    #completewith next
    .hs >> Hearth to Astranaar
step
    .goto Ashenvale,36.6,49.6
    .turnin 1023 >> Turn in Raene's Cleansing
step
    .goto Ashenvale,37.3,51.8
    .turnin 1034 >> Turn in The Ruins of Stardust
step
    .goto Ashenvale,34.7,48.9
    .turnin 1008 >> Turn in The Zoram Strand
step
    .fly Auberdine>> Fly to Auberdine
step
    .goto Darkshore,37.7,43.4
    .turnin 4740 >> Turn in WANTED: Murkdeep!
step
    .goto Darkshore,37.5,41.9
    .turnin 731 >> Turn in The Absent Minded Prospector
	.accept 741 >> Accept The Absent Minded Prospector << !Hunter
step << !Hunter
    .goto Darkshore,33.1,39.9,30>>Take the boat to Teldrassil
step << !Hunter
	.goto Teldrassil,23.7,64.5
	.turnin 741 >> Turn in The Absent Minded Prospector
	.accept 942 >> Accept The Absent Minded Prospector
step << Mage/Warrior
	.goto Teldrassil,29.2,56.7
    .train 227 >> Train Staves
step << !Hunter
    .goto Teldrassil,58.4,94.0
    .fp >> Get the Rut'theran Village flight path
step << !Hunter
    .fly Auberdine >>Fly back to Auberdine
step
    .goto Darkshore,32.4,43.8,30 >> Take the boat to Wetlands
]],"Draenei")

