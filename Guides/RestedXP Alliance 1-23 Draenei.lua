local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 1-12 Azuremyst Isle
#version 1
#group RestedXP Alliance 1-20
#defaultfor Draenei
#next 11-20 Bloodmyst (Draenei)
step
    .goto Azuremyst Isle,82.96,43.88 << tbc
    .goto Azuremyst Isle,84.19,43.03 << wotlk
.target Megelon
>>Talk to |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Accept You Survived!
step << Shaman
	#completewith next
	    .goto Azuremyst Isle,80.0,47.1
	.vendor >> Kill 2-3 mobs for vendor trash (worth 10c+), then vendor trash inside
step << Shaman
    .goto Azuremyst Isle,79.277,49.123
	.trainer >> Train Rockbiter Weapon
step << Warrior
    #completewith next
        .goto Azuremyst Isle,80.0,47.1
	.vendor >> Kill 2-3 mobs for vendor trash (worth 10c+), then vendor trash inside
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
  .trainer >> Train Battle Shout
step << Priest/Mage
	#completewith next
	.goto Azuremyst Isle,79.3,50.9
    .vendor >>Kill mobs until 48c worth of vendor trash. Vendor, then buy x10 water from Ryosh
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Azuremyst Isle,80.419,45.885
>>Talk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Turn in You Survived!
.target Proenitus
    .accept 9280 >> Accept Replenishing the Healing Crystals
step
    .goto Azuremyst Isle,79.1,46.5
.target Botanist Taerix
>>Talk to |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10302 >> Accept Volatile Mutations
step
	#sticky
    #label mothblood
    >> Kill and loot Vale Moths
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
step
    .goto Azuremyst Isle,78.4,44.3
	>>Prioritize Volatile Mutations, we're turning it in then heading to the Root Lashers. You can do Moth Blood on the way back.
    .complete 10302,1 --Kill Volatile Mutation (x8)
step
    .goto Azuremyst Isle,79.1,46.4
>>Talk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 10302 >> Turn in Volatile Mutations
.target Botanist Taerix
    .accept 9293 >> Accept What Must Be Done...
.target Apprentice Vishael
>>Talk to |cRXP_FRIENDLY_Apprentice Vishael|r
    .accept 9799 >> Accept Botanical Legwork
step
    .goto Azuremyst Isle,74.5,48.5
	>>Kill lashers/loot the small flowers on the ground
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .complete 9293,1 --Collect Lasher Sample (x10)
step
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-420 >>Grind until you are 420xp away from level 4 (980/1400)
step
    #requires mothblood
    .goto Azuremyst Isle,79.1,46.5
>>Talk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9293 >> Turn in What Must Be Done...
.target Botanist Taerix
    .accept 9294 >> Accept Healing the Lake
.target Apprentice Vishael
>>Talk to |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9799 >> Turn in Botanical Legwork
step
    .goto Azuremyst Isle,80.4,45.8
>>Talk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Turn in Replenishing the Healing Crystals
.target Proenitus
    .accept 9409 >> Accept Urgent Delivery!
step
	#completewith next
	    .goto Azuremyst Isle,80.0,47.1
	.vendor >> Vendor and Repair
step << Mage
	#completewith next
	    .goto Azuremyst Isle,79.582,48.762
.target Valaatu
>>Talk to |cRXP_FRIENDLY_Valaatu|r
	.turnin 9290 >> Turnin Mage Training
	.trainer >> Train your spells
step << Paladin
	#completewith next
.target Aurelon
>>Talk to |cRXP_FRIENDLY_Aurelon|r
	.turnin 9287 >> Turnin Paladin Training
	    .goto Azuremyst Isle,79.695,48.236
	.trainer >> Train your spells
step
    .goto Azuremyst Isle,79.9,49.2
>>Talk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9409 >> Turn in Urgent Delivery!
.target Zalduun
    .accept 9283 >> Accept Rescue the Survivors!
step << Shaman
    .goto Azuremyst Isle,79.277,49.123
.target Firmanvaar
>>Talk to |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9449 >> Accept Call of Earth
	.turnin 9421 >> Turn in Shaman Training
	.trainer >> Train Earth Shock
step << Shaman
    .goto Azuremyst Isle,71.315,39.097
>>Talk to |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9449 >> Turn in Call of Earth
.target Spirit of the Vale
    .accept 9450 >> Accept Call of Earth
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
.target Kore
>>Talk to |cRXP_FRIENDLY_Kore|r
	.turnin 9289 >> Turnin Warrior Training
	.trainer >> Train your spells
step
    #sticky
    #label survivors
	>>Use your Gift of the Naaru spell on one of the injured survivors outside the building. They are scattered all around the starting zone.
    .complete 9283,1 --Draenei Survivors Saved
step << Shaman
    .goto Azuremyst Isle,70.1,36.6
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
step << Shaman
    .goto Azuremyst Isle,71.315,39.097
.target Spirit of the Vale
>>Talk to |cRXP_FRIENDLY_Spirit of the Vale|r
    .accept 9451 >> Accept Call of Earth
    .turnin 9450 >> Turn in Call of Earth
step << Shaman
    .goto Azuremyst Isle,79.277,49.123
.target Firmanvaar
>>Talk to |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 9451 >> Turn in Call of Earth
step << Hunter
	.goto Azuremyst Isle,79.86,49.67
.target Keilnei
>>Talk to |cRXP_FRIENDLY_Keilnei|r
	.accept 9288 >> Accept Hunter Training
	.turnin 9288 >> Turnin Hunter Training
	.train 1978 >> Train Serpent Sting
step << Priest
	.goto Azuremyst Isle,79.3,50.9
    .vendor >>Purchase more water from Ryosh
    .collect 159,10 --Collect Refreshing Spring Water (x15)
step << Hunter
	#completewith next
	.goto Azuremyst Isle,79.3,50.9
	.vendor >> Buy 6 stacks of arrows from Mura << Hunter
step
	#label spareparts2
    .goto Azuremyst Isle,79.4,51.3
.target Technician Zhanaa
>>Talk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >> Accept Spare Parts
step
    .goto Azuremyst Isle,79.5,51.7
.target Vindicator Aldar
>>Talk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >> Accept Inoculation
step
    .goto Azuremyst Isle,85.3,66.2
	.use 22962 >>Use the Innoculating Crystal in your bags to innoculate the Nestlewood Owlkins.
	>> Loot Emitters on the ground, they look like spinning pink crystals.
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
	#sticky
	#completewith next
	.deathskip >> Aggro a bunch of owlkin and die on purpose. You can also stand ontop of a bonfire. Spirit rez at the Crash Site.
step
    .goto Azuremyst Isle,79.4,51.3
.target Technician Zhanaa
>>Talk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >> Turn in Spare Parts
step
    .goto Azuremyst Isle,79.5,51.5
>>Talk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9303 >> Turn in Inoculation
.target Vindicator Aldar
    .accept 9309 >> Accept The Missing Scout
step
	#completewith next
	.goto Azuremyst Isle,79.3,50.9
	.vendor >> Vendor and Repair
step
    .goto Azuremyst Isle,77.3,58.7
	>>Click on the big crystal inside  the lake
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    .goto Azuremyst Isle,71.998,60.856
>>Talk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >> Turn in The Missing Scout
.target Tolaan
    .accept 10303 >> Accept The Blood Elves
step
    .goto Azuremyst Isle,70.1,63.5
    .complete 10303,1 --Kill Blood Elf Scout (x10)
step
    .goto Azuremyst Isle,72.0,61.0
>>Talk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >> Turn in The Blood Elves
.target Tolaan
    .accept 9311 >> Accept Blood Elf Spy
step
    .goto Azuremyst Isle,69.2,65.5
    .complete 9311,1 --Kill Surveyor Candress (x1)
	.use 24414 >>Loot the plans from the Surveyor and right click it
    .accept 9798 >> Accept Blood Elf Plans
step
	#sticky
	#completewith next
    .xp 6-1485 >>Grind elves until you are 1485xp away from level 6 (1315/2800). Let yourself get low hp on the last few mobs, we're death skipping after.
step
	.deathskip >>Die and talk to the spirit healer to respawn at the graveyard
    .goto Azuremyst Isle,79.2,46.4
.target Botanist Taerix
>>Talk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >> Turn in Healing the Lake
step
    #label survivors2
    #requires survivors
    .goto Azuremyst Isle,80.1,49.0
.target Zalduun
>>Talk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9283 >> Turn in Rescue the Survivors!
step
    .goto Azuremyst Isle,79.488,51.622
>>Talk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >> Turn in Blood Elf Spy
    .turnin 9798 >> Turn in Blood Elf Plans
.target Vindicator Aldar
    .accept 9312 >> Accept The Emitter
step
    .goto Azuremyst Isle,79.422,51.234
>>Talk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >> Turn in The Emitter
.target Technician Zhanaa
    .accept 9313 >> Accept Travel to Azure Watch
step
    #requires survivors2
    .goto Azuremyst Isle,64.6,54.2
.target Aeun
>>Talk to |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >> Accept Word from Azure Watch
step
    .goto Azuremyst Isle,61.1,54.2
.target Diktynna
>>Talk to |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >> Accept Red Snapper - Very Tasty!
step
	#completewith end
	>>Keep an eye out for Draenei Younglings. This is a rare encounter. If you find one, use Gift of the Naaru (your racial) on them when they're in combat with a mob. Then, accept the quest
.target Draenei Youngling
>>Talk to |cRXP_FRIENDLY_Draenei Youngling|r
	.accept 9612 >> Accept A Hearty Thanks!
	.unitscan Draenei Youngling
step
	#sticky
	#completewith next
	.use 23654 >>Run north along the river using the fishing net on the fishing pools, once you reach the end of the river go look for Nightstalkers. Try to get at least 50% of this quest done, you will have another opportunity to finish it later.
	.collect 23614,10
step
    .goto Azuremyst Isle,53.9,34.4
    .use 23678 >>Go up the west coast killing any Infected Nightstalker Runts en route until they drop a Faintly Glowing Crystal.
	.collect 23678,1
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
.target Anchorite Fateema
>>Talk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >> Accept Medicinal Purpose
step << Shaman
    #sticky
    .goto Azuremyst Isle,49.6,53.1,0
    >>Buy a Walking stick if you have 5s to spare
    .collect 2495,1
step
	.isOnQuest 9612
>>Talk to |cRXP_FRIENDLY_Exarch Menelaous|r
	.turnin 9612 >> Turn in A Hearty Thanks!
    .turnin 9455 >> Turn in Strange Findings
.target Exarch Menelaous
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
step << Warrior/Paladin
    .goto Azuremyst Isle,49.0,51.1
    .trainer >> Train mining and cast Find Minerals. You're mining for rough stones for later.
step
    .goto Azuremyst Isle,47.2,50.6
>>Talk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >> Turn in Strange Findings
.target Exarch Menelaous
    .accept 9456 >> Accept Nightstalker Clean Up, Isle 2...
step << Shaman
    .goto Azuremyst Isle,48.05,50.42
    .trainer >> Train your spells
step
    .goto Azuremyst Isle,48.7,50.2
.target Technician Dyvuun
>>Talk to |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >> Turn in Travel to Azure Watch
step
    .goto Azuremyst Isle,48.4,49.3
.target Caregiver Chellan
>>Talk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >> Turn in Word from Azure Watch
step
	.goto Azuremyst Isle,48.4,49.3
    .home >> Set your Hearthstone to Azure Watch
step << Paladin
    .goto Azuremyst Isle,48.4,49.5
    .trainer >> Train your spells
step << Priest
    .goto Azuremyst Isle,48.603,49.285
	 .trainer >> Train your spells
.target Guvan
>>Talk to |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Accept Help Tavara
step << Mage
    .goto Azuremyst Isle,49.9,50.0
    .trainer >> Train your spells
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    .trainer >> Train your spells
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    .trainer >> Train your spells
step
	#sticky
	#completewith azuremyst1
    >>Kill and loot Root Trappers/Moongraze Stags as you quest, grind even after completing the quest. Large exp grind step ahead.
    .complete 9463,1
	.collect 23676,6 --Collect Moongraze Stag Tenderloin (x6)
step << Priest
    .goto Azuremyst Isle,56.1,48.9
    .complete 9586,1 --Heal Tavara
step
    .goto Azuremyst Isle,47.0,70.1
.target Admiral Odesyus
>>Talk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >> Accept A Small Start
step
    .goto Azuremyst Isle,46.687,70.629
.target "Cookie" McWeaksauce
>>Talk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >> Accept Cookie's Jumbo Gumbo
step
    .goto Azuremyst Isle,46.4,71.2
	.vendor >> Vendor and Repair
    .trainer >> Train Blacksmithing and buy a Mining Pick from Calypso. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. You should stop making these around level 20. << Warrior
    .trainer >> Train Blacksmithing and buy a Mining Pick from Calypso. This will allow you to make +2 damage weightstones for your weapon which are very strong. You should stop making these around level 20. << Paladin
step
    .goto Azuremyst Isle,58.5,66.3
	>>Grind en route
	>>Loot the map located in one of the tents
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.5,67.6
	>>Loot the compass located in one of the tents
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    .goto Azuremyst Isle,48.8,72.7
	>>Kill crabs along the coast
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
step
    .goto Azuremyst Isle,46.7,70.5
.target "Cookie" McWeaksauce
>>Talk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >> Turn in Cookie's Jumbo Gumbo
step
    .goto Azuremyst Isle,47.0,70.3
>>Talk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9506 >> Turn in A Small Start
.target Admiral Odesyus
    .accept 9530 >> Accept I've Got a Plant
.target Priestess Kyleen Il'dinare
>>Talk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9513 >> Accept Reclaiming the Ruins
step
    .goto Azuremyst Isle,47.2,70.1
.target Archaeologist Adamant Ironheart
>>Talk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >> Accept Precious and Fragile Things Need Special Handling
step
    #sticky
    .goto Azuremyst Isle,48.1,63.2
	>>Find a hollowed out tree stump next to the area with peasants doing lumber work
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
step
    .goto Azuremyst Isle,46.9,66.1
	>>Grind while looking for piles of purple leaves on the outskirts of Odesyus' Landing
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
	#label azuremyst1
    .goto Azuremyst Isle,47.1,70.1
	>>Grind en route
>>Talk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >> Turn in I've Got a Plant
.target Admiral Odesyus
    .accept 9531 >> Accept Tree's Company
step
    .goto Azuremyst Isle,39.4,73.9
	>>Finish off Root Trappers/Stags.
    .complete 9463,1 --Collect Root Trapper Vine (x8)
	.complete 9454,1 --Collect Moongraze Stag Tenderloin (x6)
step
	.xp 8-950 >> Grind until you are 950xp away from level 8 (3550/4500). Try to finish near Azure Watch if possible.
step
    .goto Azuremyst Isle,49.780,51.938
    >>Die and respawn at Azure Watch or run there if you're 300 yards or closer.
step
	.goto Azuremyst Isle,49.780,51.938
.target Acteon
>>Talk to |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Accept The Great Moongraze Hunt
    .turnin 9454 >> Turn in The Great Moongraze Hunt
    .accept 10324 >> Accept The Great Moongraze Hunt
step
    .goto Azuremyst Isle,48.390,51.770
.target Anchorite Fateema
>>Talk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .turnin 9463 >> Turn in Medicinal Purpose
.target Daedal
>>Talk to |cRXP_FRIENDLY_Daedal|r
    .accept 9473 >> Accept An Alternative Alternative
step
    .goto Azuremyst Isle,48.9,51.1
.target Dulvi
>>Talk to |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Accept The Missing Fisherman
step
    .goto Azuremyst Isle,49.365,51.086
.target Cryptographer Aurren
>>Talk to |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >> Accept Learning the Language
step
	.goto Azuremyst Isle,49.365,51.086
	.use 23818 >>Click the Stillpine Furbolg Language Primer in your bags
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.365,51.086
>>Talk to |cRXP_FRIENDLY_Totem of Akida|r
    .turnin 9538 >> Turn in Learning the Language
.target Totem of Akida
    .accept 9539 >> Accept Totem of Coo
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
    .trainer >> Train your spells
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    .trainer >> Train your spells
step << Priest
    .goto Azuremyst Isle,48.6,49.4
.target Guvan
>>Talk to |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Turn in Help Tavara
	 .trainer >> Train your spells
step << Paladin
    .goto Azuremyst Isle,48.4,49.5
    .trainer >> Train your spells
step << Mage
    .goto Azuremyst Isle,49.9,50.0
    .trainer >> Train your spells
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    .trainer >> Train your spells
step
	#sticky
	#completewith azuremyst2
	>>Kill Nightstalkers/Moongraze Bucks as you quest
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
	.complete 10324,1
step
	>> Grind en route
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.2,41.6
>>Talk to |cRXP_FRIENDLY_Totem of Coo|r
    .turnin 9539 >> Turn in Totem of Coo
.target Totem of Coo
    .accept 9540 >> Accept Totem of Tikti
step
	>>Jump off the cliff or wait for the spirit to give you slowfall
    .goto Azuremyst Isle,53.0,34.0
	>>Loot the small blue flowers next to tree trunks
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    .goto Azuremyst Isle,64.4,39.8
>>Talk to |cRXP_FRIENDLY_Totem of Tikti|r
    .turnin 9540 >> Turn in Totem of Tikti
.target Totem of Tikti
    .accept 9541 >> Accept Totem of Yor
    .timer 30,Swim Speed Buff RP
    >>Once you turn in this quest, follow the furbolg spirit and wait until you get the swim speed buff before entering the water
step
    .waypoint Azuremyst Isle,61.0,54.2,-29,wptimer,UNIT_AURA
    .waypoint Azuremyst Isle,61.0,54.2,-1
    .waypoint Azuremyst Isle,63.39,40.37,-1
    .goto Azuremyst Isle,61.0,54.2,0
    >>Follow the furbolg spirit and wait until you get the swim speed buff before entering the water
    .use 23654>>Use the fish net on the fish pools along the river, if a murloc spawns from the pool, run away
    .complete 9452,1 --Collect Red Snapper (x10)
	>>Avoid fighting mobs, you'll lose the swim speed if you do any hostile action
step
    .goto Azuremyst Isle,61.0,54.2
>>Talk to |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >> Turn in Red Snapper - Very Tasty!
.target Diktynna
    .accept 9453 >> Accept Find Acteon!
step
    .goto Azuremyst Isle,63.2,68.0
    >>Click on the totem underwater
>>Talk to |cRXP_FRIENDLY_Totem of Yor|r
    .turnin 9541 >> Turn in Totem of Yor
.target Totem of Yor
    .accept 9542 >> Accept Totem of Vark
    .timer 71,Totem of Vark ghostsaber RP
step
	>>Follow the furbolg spirit and wait until he transforms you into a ghostsaber
    .waypoint Azuremyst Isle,28.1,62.5,-70,wptimer,UNIT_AURA
    .goto Azuremyst Isle,28.1,62.5,0
    .waypoint Azuremyst Isle,28.1,62.5,-1
    .waypoint Azuremyst Isle,60.68,69.21,-1
>>Talk to |cRXP_FRIENDLY_Totem of Vark|r
    .turnin 9542 >> Turn in Totem of Vark
.target Totem of Vark
    .accept 9544 >> Accept The Prophecy of Akida
step
	#label azuremyst2
    .goto Azuremyst Isle,27.3,63.9
	>>Click off your ghostsaber buff.
	>>Kill furbolgs around this area, they drop the cage keys you need
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    .goto Azuremyst Isle,28.6,70.0,100,0
	.goto Azuremyst Isle,30.1,72.7
	>>Finish off Nightstalkers/Moongraze Bucks
	.complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .complete 10324,1 --Collect Moongraze Buck Hide (x6)
step
	#sticky
	#completewith treesteptime
	>>Grind en route
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
	.use 23759 >>Right click the item in your inventory once you loot it
    .accept 9514>> Rune Covered Tablet
step
    .goto Azuremyst Isle,31.4,79.3
	>>Kill Nagas/Loot the light bulb looking things on the ground
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #label treesteptime
    .goto Azuremyst Isle,18.4,84.1
    .use 23792 >>Use the tree disguise at the naga flag
	>>Once you use the disguise, you'll be unable to move. You have to wait about a minute to get credit for this quest.
    .complete 9531,1
    .cast 30298
    .timer 82,Traitor Uncovered
step
    .goto Azuremyst Isle,16.5,94.4
>>Talk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Turn in The Missing Fisherman
.target Cowlen
    .accept 9527 >> Accept All That Remains
step
    .goto Azuremyst Isle,15.0,89.4
	>>Kill Owlbeasts
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
step
    .goto Azuremyst Isle,16.5,94.3
.target Cowlen
>>Talk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >> Turn in All That Remains
step
	#sticky
	#completewith next
    .deathskip >>Die and respawn at Azure Watch
step
    .goto Azuremyst Isle,47.0,70.3
.target Priestess Kyleen Il'dinare
>>Talk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >> Turn in Reclaiming the Ruins
.target Archaeologist Adamant Ironheart
>>Talk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >> Turn in Precious and Fragile Things Need Special Handling
>>Talk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >> Turn in Tree's Company
.target Admiral Odesyus
    .accept 9537 >> Accept Show Gnomercy
    >>Don't turn in the Rune Covered tablet yet, otherwise a long RP sequence will start
step
    .goto Azuremyst Isle,47.0,70.3
.target Priestess Kyleen Il'dinare
>>Talk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >> Turn in Rune Covered Tablet
step << Hunter
	#sticky
    .goto Azuremyst Isle,48.8,72.7
	>>Kill crabs along the coast
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
	>>Speak with Engineer "Spark" Overgrind patrolling the beach southeast, wait for his dialogue sequence and kill him
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step << Hunter
    .goto Azuremyst Isle,46.7,70.5
.target "Cookie" McWeaksauce
>>Talk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >> Turn in Cookie's Jumbo Gumbo
step
    .goto Azuremyst Isle,47.036,70.212
>>Talk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >> Turn in Show Gnomercy
.target Admiral Odesyus
    .accept 9602 >> Accept Deliver Them From Evil...
step
    .goto Azuremyst Isle,47.127,70.289
.target Priestess Kyleen Il'dinare
>>Talk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9515 >> Warlord Sriss'tiz
    .maxlevel 9
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >> The path to Warlord Sriss'tiz starts here
step << !Hunter
    >>Enter the naga cave and kill Warlord Sriss'tiz
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
    .isOnQuest 9515
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >> Grind until 3070+/6500xp
step
    #sticky
    #completewith next
    .deathskip >> Death skip or run back to Azure Watch
step
    .goto Azuremyst Isle,49.9,51.9
.target Acteon
>>Talk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >> Turn in Find Acteon!
    .turnin 10324 >> Turn in The Great Moongraze Hunt
step
    .goto Azuremyst Isle,49.5,51.2
>>Talk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >> Turn in The Prophecy of Akida
.target Arugoo of the Stillpine
    .accept 9559 >> Accept Stillpine Hold
step
    .goto Azuremyst Isle,48.5,51.5
.target Daedal
>>Talk to |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >> Turn in An Alternative Alternative
step
    .goto Azuremyst Isle,47.2,50.7
>>Talk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9456 >> Turn in Nightstalker Clean Up, Isle 2...
    .turnin 9602 >> Turn in Deliver Them From Evil...
.target Exarch Menelaous
    .accept 9623 >> Accept Coming of Age << Hunter
step
    .goto Azuremyst Isle,47.2,50.7
    .isOnQuest 9612
    .goto Azuremyst Isle,47.2,50.7
.target Exarch Menelaous
>>Talk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >> Turn in A Hearty Thanks!
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
    .trainer >> Train your level 10 spells
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    .trainer >> Train your level 10 spells
step << Priest
    .goto Azuremyst Isle,48.6,49.4
	 .trainer >> Train your level 10 spells
step << Paladin
    .goto Azuremyst Isle,48.4,49.5
    .trainer >> Train your level 10 spells
step << Mage
    .goto Azuremyst Isle,49.9,50.0
    .trainer >> Train your level 10 spells
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    .trainer >> Train your level 10 spells
.target Ruada
>>Talk to |cRXP_FRIENDLY_Ruada|r
    .accept 9582 >> Accept Strength of One
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
.target Tuluun
>>Talk to |cRXP_FRIENDLY_Tuluun|r
    .accept 9464 >> Accept Call of Fire
step << Hunter
    .goto Azuremyst Isle,49.7,51.9
.target Acteon
.target Deremiis
.target Tristane Shadowstone
.target Einris Brightspear
.target Regnus Thundergranite
.target Dorion
.target Jocaste
.target Ayanna Everstride
.target Thorgas Grimson
>>Talk to |cRXP_FRIENDLY_Thorgas Grimson|r
-->>Talk to |cRXP_FRIENDLY_Ayanna Everstride|r
-->>Talk to |cRXP_FRIENDLY_Jocaste|r
-->>Talk to |cRXP_FRIENDLY_Dorion|r
-->>Talk to |cRXP_FRIENDLY_Regnus Thundergranite|r
-->>Talk to |cRXP_FRIENDLY_Einris Brightspear|r
-->>Talk to |cRXP_FRIENDLY_Tristane Shadowstone|r
-->>Talk to |cRXP_FRIENDLY_Deremiis|r
-->>Talk to |cRXP_FRIENDLY_Acteon|r
    .accept 9757 >> Accept Seek Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>Talk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9757 >> Turn in Seek Huntress Kella Nightbow
.target Huntress Kella Nightbow
    .accept 9591 >> Accept Taming the Beast
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >> Use the rod on a Barbed Crawler. They appear further down the coast, don't mistake them for Skittering Crawlers.
    .complete 9591,1 --Tame a Barbed Crawler
    .unitscan Barbed Crawler
step << Hunter
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >> The path to Warlord Sriss'tiz starts here
step << Hunter
    >>Enter the naga cave and kill Warlord Sriss'tiz
	.goto Azuremyst Isle,25.3,73.1,80,0
	.goto Azuremyst Isle,25.9,71.2,60,0
	.goto Azuremyst Isle,27.5,73.8,60,0
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
    .isOnQuest 9515
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>Talk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9591 >> Turn in Taming the Beast
.target Huntress Kella Nightbow
    .accept 9592 >> Accept Taming the Beast
step << Hunter
    .goto The Exodar,81.480,51.428
    .turnin 9623 >> Turn in Coming of Age
    .accept 9625 >> Accept Elekks Are Serious Business
    --?
step << Hunter
    .goto Azuremyst Isle,35.4,35.0,80,0
	.goto Azuremyst Isle,39.0,31.2
	.use 23897 >> Use the rod on a Greater Timberstrider
    .complete 9592,1 --Tame a Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>Talk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9592 >> Turn in Taming the Beast
.target Huntress Kella Nightbow
    .accept 9593 >> Accept Taming the Beast
step << Hunter
    .goto Azuremyst Isle,35.0,33.9
	.use 23898 >> Use the rod on a Nightstalker
    .complete 9593,1 --Tame a Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>Talk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9593 >> Turn in Taming the Beast
.target Huntress Kella Nightbow
    .accept 9675 >> Accept Beast Training
step << Hunter
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,35 >>Enter The Exodar through the backdoor
step << Hunter
	.goto The Exodar,42.0,71.4,60,0
	.goto The Exodar,44.6,72.0,60,0
    .goto The Exodar,44.1,86.6
.target Ganaar
>>Talk to |cRXP_FRIENDLY_Ganaar|r
    .turnin 9675 >> Turn in Beast Training
	.trainer >> Train your pet spells << tbc
step << Hunter
	#completewith next
    .goto The Exodar,47.9,89.
    >> Delete your old arrows. Be sure to equip the new ones you buy.
	.vendor >> Buy 6 stacks of Sharp Arrow
step << Hunter
	#sticky
	#completewith next
    >>Speak with the weapon master upstairs
	.goto The Exodar,51.1,80.5,40,0
    .goto The Exodar,53.3,85.7
    .train 202 >>Train 2h swords
step << skip -- Hunter
	#completewith murloc1
	>>Jump down and head out of The Exodar
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.0,35.0,80,0
	.goto The Exodar,64.0,36.5,60,0
        .goto Azuremyst Isle,44.7,23.5
	.zone Azuremyst Isle >>Jump down and head out of The Exodar
	>> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> Click here for reference
step << Hunter wotlk
	#sticky
	#label pet1
	.cast 1515 >> As you head the next quest hub, cast Tame Beast on a level 8+ cat on your way there
step
    #label murloc1
    .goto Azuremyst Isle,44.7,23.5
.target Gurf
>>Talk to |cRXP_FRIENDLY_Gurf|r
    .accept 9562 >> Accept Murlocs... Why Here? Why Now?
step
    .goto Azuremyst Isle,44.8,23.8
.target Moordo
>>Talk to |cRXP_FRIENDLY_Moordo|r
    .accept 9560 >> Accept Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,46.6,20.7
.target High Chief Stillpine
>>Talk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .turnin 9559 >> Turn in Stillpine Hold
step << Shaman
    #sticky
	#completewith next
	>>Kill Ravagers
    .complete 9560,1 --Collect Ravager Hide (x8)
step << Shaman
    .goto Azuremyst Isle,59.6,18.0
>>Talk to |cRXP_FRIENDLY_Temper|r
    .turnin 9464 >> Turn in Call of Fire
.target Temper
    .accept 9465 >> Accept Call of Fire
step << Hunter tbc
	#sticky
	#label pet1
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >> Cast Tame Beast on a Ravager Specimen to tame it
step
    .goto Azuremyst Isle,54.7,18.4
	>>Kill Ravagers. Loot them for their Hides
    .complete 9560,1 --Collect Ravager Hide (x8)
step << Warrior
    .goto Azuremyst Isle,54.1,9.8
    >>Click on the Ravager cage
    .complete 9582,1 --Kill Death Ravager (x1)
step
	#requires pet1 << Hunter
    .goto Azuremyst Isle,44.8,23.8
.target Moordo
>>Talk to |cRXP_FRIENDLY_Moordo|r
    .turnin 9560 >> Turn in Beasts of the Apocalypse!
step
    .goto Azuremyst Isle,46.8,21.2
.target Stillpine the Younger
>>Talk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .accept 9573 >> Accept Chieftain Oomooroo
step
    .goto Azuremyst Isle,46.6,20.6
.target High Chief Stillpine
>>Talk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9565 >> Accept Search Stillpine Hold
step
    >>Start clearing toward the end of the cave. Stay on the upper levels.
	.goto Azuremyst Isle,47.4,14.0
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .complete 9573,2 --Kill Crazed Wildkin (x9)
step << Shaman
    .goto Azuremyst Isle,46.1,16.8
    >>Keep killing owlbeasts
    .complete 9465,1 --Collect Ritual Torch (x1)
step
    .goto Azuremyst Isle,50.6,11.6
    >> Drop down and head to the back of the cave.
    .turnin 9565 >> Turn in Search Stillpine Hold
    .accept 9566 >> Accept Blood Crystals
    >>As you approach the red crystal, you'll likely find a two headed dog named "The Kurken" nearby. DO NOT KILL IT, this mob is part of the next quest
step
    .goto Azuremyst Isle,46.7,20.8
.target High Chief Stillpine
>>Talk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .turnin 9566 >> Turn in Blood Crystals
step
    .goto Azuremyst Isle,47.0,22.2
.target Kurz the Revelator
>>Talk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .accept 9570 >> Accept The Kurken is Lurkin'
step
	#completewith next
	.goto Azuremyst Isle,46.9,22.0
	.vendor >> Vendor, buy 6 slot bags if needed.
step
    .goto Azuremyst Isle,46.8,21.2
.target Stillpine the Younger
>>Talk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .turnin 9573 >> Turn in Chieftain Oomooroo
step
    .goto Azuremyst Isle,49.9,12.8
	>>Kill The Kurken
    .complete 9570,1 --Collect The Kurken's Hide (x1)
step
    .goto Azuremyst Isle,47.0,22.2
>>Talk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .turnin 9570 >> Turn in The Kurken is Lurkin'
.target Kurz the Revelator
    .accept 9571 >> Accept The Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,46.7,20.8
.target High Chief Stillpine
>>Talk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >> Accept Warn Your People
step
	#label end
    .goto Azuremyst Isle,44.8,23.8
.target Moordo
>>Talk to |cRXP_FRIENDLY_Moordo|r
    .turnin 9571 >> Turn in The Kurken's Hide
step << Shaman
    .goto Azuremyst Isle,59.6,17.9
>>Talk to |cRXP_FRIENDLY_Temper|r
    .turnin 9465 >> Turn in Call of Fire
.target Temper
    .accept 9467 >> Accept Call of Fire
step << Shaman
	.hs >> Hearth to Azure Watch
step << Shaman
    .goto Azuremyst Isle,47.112,50.604
.target Exarch Menelaous
>>Talk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >> Turn in Warn Your People
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
    .use 24335>>Use the orb in your bag to teleport back to the Emberglade
>>Talk to |cRXP_FRIENDLY_Temper|r
    .turnin 9467 >> Turn in Call of Fire
.target Temper
    .accept 9468 >> Accept Call of Fire
step
	#sticky
	#label SGrain
    .goto Azuremyst Isle,34.1,18.0,0,0
	>>Kill the murlocs in the area. Loot them for their Grain
    .complete 9562,1 --Collect Stillpine Grain (x5)
step
    .goto Azuremyst Isle,34.0,25.9,70,0
    .goto Azuremyst Isle,34.9,12.0,60,0
    .goto Azuremyst Isle,34.0,25.9
    >>Kill and loot Murgurgula. He patrols the coast. Be careful as he does a LOT of damage
	.unitscan Murgurgula
	.use 23850 >> Loot and click on Gurf's Dignity in your inventory
	.collect 23850,1,9564 --Gurf's Dignity (1)
    .accept 9564 >> Accept Gurf's Dignity
step
	#requires SGrain
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel to Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 11-20 Bloodmyst (Draenei)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Draenei
#next RestedXP Alliance 20-32\20-21 Darkshore (Draenei)
step
    .goto Bloodmyst Isle,63.5,88.8
.target Aonar
>>Talk to |cRXP_FRIENDLY_Aonar|r
    .accept 9624 >> Accept A Favorite Treat
step
    #completewith next
    .goto Bloodmyst Isle,63.1,88.0
.target Vorkhan the Elekk Herder
>>Talk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .turnin 9625 >> Turn in Elekks Are Serious Business
step
    .goto Bloodmyst Isle,63.1,88.0
.target Vorkhan the Elekk Herder
>>Talk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .accept 9634 >> Accept Alien Predators
step
	.goto Bloodmyst Isle,59.7,86.8
    >>Do Alien Predators/A Favorite Treat while you grind
    .xp 12-2000
step
    #completewith next
    .deathskip>>Die and respawn at Blood Watch
step
    .goto Bloodmyst Isle,55.7,59.7
.target Caregiver Topher Loaal
>>Talk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .accept 9603 >> Accept Beds, Bandages, and Beyond
step
	#completewith next
	.goto Bloodmyst Isle,55.7,59.7
    .home >> Set your Hearthstone to Blood Watch
step
	#completewith next
	.goto Bloodmyst Isle,55.7,59.7
	.vendor >> Buy 40 Ice Cold Milk << Mage/Priest
	.vendor >> Buy 40 Longjaw Mud Snapper << Warrior
	.vendor >> Buy level 5 food/drink << Paladin/Shaman
    .vendor >> Buy water/food for you and your pet << Hunter
step
    .goto Bloodmyst Isle,56.421,56.788
.target Jessera of Mac'Aree
>>Talk to |cRXP_FRIENDLY_Jessera of Mac'Aree|r
    .accept 9648 >> Accept Maatparm Mushroom Menagerie
step
	#completewith next
    .goto Bloodmyst Isle,57.6,54.0
    .fp Blood Watch>> Get the Blood Watch flight path
step
    .goto Bloodmyst Isle,57.6,54.0
.target Laando
>>Talk to |cRXP_FRIENDLY_Laando|r
    .turnin 9603 >> Turn in Beds, Bandages, and Beyond
    >>Skip the follow up quest
step
    .goto Bloodmyst Isle,52.7,53.3
.target Exarch Admetius
>>Talk to |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >> Accept What Argus Means to Me
.target Harbinger Mikolaas
>>Talk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Accept Learning from the Crystals
step
    .goto Bloodmyst Isle,55.421,55.232
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9693 >> Turn in What Argus Means to Me
.target Vindicator Boros
    .accept 9694 >> Accept Blood Watch
step
	#sticky
	#completewith monument
	>> Collect Irradiated Crystal Shards from any mobs on Bloodmyst Isle. Don't throw these away.
	.collect 23984,10 -- Collect Irradiated Crystal Shard (x10)
step
    .goto Bloodmyst Isle,48.4,47.9
	>>Be careful as these mobs are difficult at this level
    .complete 9694,1 --Kill Sunhawk Spy (x10)
step
    .goto Bloodmyst Isle,55.4,55.3
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9694 >> Turn in Blood Watch
step
    .goto Bloodmyst Isle,53.3,57.7
.target Morae
>>Talk to |cRXP_FRIENDLY_Morae|r
    .accept 9629 >> Accept Catch and Release
step
	#sticky
	#completewith bloodmyst2
    .goto Bloodmyst Isle,51.1,81.4,0
	>>Look for small red mushrooms while you quest through Bloodmyst
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
	#sticky
	#completewith next
    .goto Bloodmyst Isle,58.2,83.4
	>>Loot a big red mushroom underwater, or kill one of the fishes and loot them for an Aquatic Stinkhorn en route
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
step
	.goto Bloodmyst Isle,58.2,83.4
	.use 23875 >>Use the pick in your bags to collect the small red crystal
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
	#completewith grind3800
    .goto Bloodmyst Isle,59.3,89.1,0
	>>Collect the small pears on the ground. They can be hard to spot, check around trees.
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,59.3,89.1
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
step
    .isQuestTurnedIn 9515
    .goto Bloodmyst Isle,59.3,89.1
	.xp 12+3300 >> Grind until you're 3300 exp into level 12 (3300+10100)
step
	#label grind3800
	.goto Bloodmyst Isle,59.3,89.1
	.xp 12+4140 >> Grind until you're 4140 exp into level 12 (4140+/10100)
step
    .goto Bloodmyst Isle,67.9,87.9,50,0
    .goto Bloodmyst Isle,66.9,84.5,50,0
    .goto Bloodmyst Isle,60.1,86.1,50,0
    .goto Bloodmyst Isle,58.6,92.6,50,0
    .goto Bloodmyst Isle,67.9,87.9,50,0
    .goto Bloodmyst Isle,66.9,84.5,50,0
    .goto Bloodmyst Isle,60.1,86.1,50,0
    .goto Bloodmyst Isle,58.6,92.6
	>>Collect the small pears on the ground. They can be hard to spot, check around trees.
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.4,88.7
.target Aonar
>>Talk to |cRXP_FRIENDLY_Aonar|r
    .turnin 9624 >> Turn in A Favorite Treat
step
    .goto Bloodmyst Isle,63.1,87.9
.target Vorkhan the Elekk Herder
>>Talk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .turnin 9634 >> Turn in Alien Predators
step
    .goto Bloodmyst Isle,63.1,87.6
.target Kessel
>>Talk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept The Kessel Run
	>>Be careful as this is a timed quest
step
    .goto Azuremyst Isle,46.6,20.7
	.accept 9622 >> Accept Warn Your People << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
	*IMPORTANT: Do not engage any mobs, attacking or casting spells will dismount you, if you get dazed by getting hit from behind you will also dismount
step
    .goto Azuremyst Isle,44.7,23.5
.target Gurf
>>Talk to |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >> Turn in Gurf's Dignity
    .turnin 9562 >> Turn in Murlocs... Why Here? Why Now?
step << Warrior
	#completewith kesselrun
    .goto Azuremyst Isle,50.0,50.6
>>Talk to |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >> Turn in Strength of One
.target Ruada
    .accept 10350 >> Accept Behomat
	.trainer >> Train your level 12 spells
step << !Shaman
	.isOnQuest 9612
    .goto Azuremyst Isle,47.1,50.5
	.turnin 9612 >> Turn in A Hearty Thanks!
    .turnin 9622 >> Turn in Warn Your People
    .complete 9663,2 --Exarch Menelaous Warned
step << !Shaman
    .goto Azuremyst Isle,47.1,50.5
    .turnin 9622 >> Turn in Warn Your People
    .complete 9663,2 --Exarch Menelaous Warned
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
>>Talk to |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >> Turn in Call of Fire
.target Tuluun
    .accept 9461 >> Accept Call of Fire
step << Shaman
	#completewith next
	.isOnQuest 9612
    .goto Azuremyst Isle,47.1,50.5
	.turnin 9612 >> Turn in A Hearty Thanks!
    .complete 9663,2 --Exarch Menelaous Warned
	   .trainer >> Train your level 12 spells
step << Shaman
    .goto Azuremyst Isle,47.1,50.5
    .complete 9663,2 --Exarch Menelaous Warned
step << Hunter
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .trainer >> Train your level 12 spells
step << Priest
	#completewith next
    .goto Azuremyst Isle,48.6,49.4
	 .trainer >> Train your level 12 spells
step << Mage
	#completewith next
    .goto Azuremyst Isle,49.9,50.0
    .trainer >> Train your level 12 spells
step
	#label kesselrun
    .goto Azuremyst Isle,46.9,70.3
    .complete 9663,3 --Admiral Odesyus Warned
step
    .goto Azuremyst Isle,46.9,70.3
.target Priestess Kyleen Il'dinare
>>Talk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >> Warlord Sriss'tiz
    .isQuestComplete 9515
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.4,30 >>Enter The Exodar through the backdoor
step << Paladin
	.goto The Exodar,51.0,46.8,80,0
    .goto The Exodar,38.5,82.5
.target Jol
>>Talk to |cRXP_FRIENDLY_Jol|r
    .accept 9598 >>Accept Redemption
    .turnin 9598 >>Turn in Redemption
    .accept 9600 >>Accept Redemption
	.trainer >> Train your level 12 spells
step << !Shaman
	#completewith next
	.hs >> Hearth to Blood Watch
step << Shaman
	#completewith next
	.hs >> Hearth to Blood Watch. If your hearth is still on cooldown, ride to The Exodar and fly to Blood Watch
step
    .goto Bloodmyst Isle,52.7,53.3
>>Talk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >> Turn in Learning from the Crystals
.target Harbinger Mikolaas
    .accept 9620 >> Accept The Missing Survey Team
step
    .goto Bloodmyst Isle,55.081,57.958
.target Vindicator Aalesia
>>Talk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >> Accept Know Thine Enemy
step << Warrior/Rogue
    .goto Bloodmyst Isle,55.2,58.2
    .collect 25873,1 >> Purchase a Keen Throwing Knife from Meriaad
step
    .goto Bloodmyst Isle,63.1,87.7
>>Talk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >> Turn in The Kessel Run
.target Kessel
    .accept 9666 >> Accept Declaration of Power
step
    .goto Bloodmyst Isle,68.2,81.1
.target Princess Stillpine
>>Talk to |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >> Accept Saving Princess Stillpine
step << Paladin
    .goto Bloodmyst Isle,65.0,77.5
	.use 6866 >>Use the symbol of life on a dead furbolg shaman
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
step
	#sticky
	#label Polyspore
	>>Loot a small blue mushroom around the tree at naga ruins
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
    .goto Bloodmyst Isle,66.5,69.9,0,0
step
    .goto Bloodmyst Isle,66.9,70.2,50,0
    .goto Bloodmyst Isle,67.3,68.0,50,0
    .goto Bloodmyst Isle,68.9,68.0
	.use 24084 >>Kill Lord Xiz. Use the Draenei Banner in your bags on his corpse
    .complete 9666,2 --Kill Lord Xiz (x1)
    .complete 9666,1 --Declaration of Power (1)
step
	#sticky
	#requires Polyspore
	#completewith next
    .goto Bloodmyst Isle,64.2,76.8
    >>Kill furbolgs until the high chief spawns. Kill High Chief Bristlelimb and loot him for his key.
	.unitscan High Chief Bristlelimb
    .collect 24099,1 --Collect The High Chief's Key (x1)
step
	#requires Polyspore
    .goto Bloodmyst Isle,68.2,81.1
    .complete 9667,1 --Free Saving Princess Stillpine
step
    .goto Bloodmyst Isle,63.0,87.6
>>Talk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9666 >> Turn in Declaration of Power
.target Kessel
    .accept 9668 >> Accept Report to Exarch Admetius
step
    .goto Bloodmyst Isle,56.0,79.5
	>>Loot a big red mushroom underwater, or kill one of the fishes and loot them
    .complete 9648,1 --Collect Aquatic Stinkhorn (x1)
step
	#completewith next
    .goto Bloodmyst Isle,35.6,94.2,0
    .goto Bloodmyst Isle,51.3,93.9,0
	.use 23995 >>Use the Blacksilt tagger in your bags to tag scouts. This will make them non-hostile towards you.
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
step
    .goto Bloodmyst Isle,51.1,93.1,70,0
    .goto Bloodmyst Isle,43.0,94.4,70,0
    .goto Bloodmyst Isle,35.1,93.7
	.line Bloodmyst Isle,51.1,93.1,43.0,94.4,35.1,93.7
	.use 23870 >>Kill the named murloc, Cruelfin, that patrols the around the murloc camps. Loot him for the Pendant. Click it in your bags
	.collect 23870,1,9576 --Red Crystal Pendant (1)
    .accept 9576 >> Accept Cruelfin's Necklace
	.unitscan Cruelfin
step
    .goto Bloodmyst Isle,35.6,94.2,70,0
    .goto Bloodmyst Isle,51.3,93.9
	.use 23995 >>Use the Blacksilt tagger in your bags to tag scouts. This will make them non-hostile towards you.
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
    .goto Bloodmyst Isle,38.2,81.7,60,0
	.goto Bloodmyst Isle,36.5,71.5,60,0
	.goto Bloodmyst Isle,38.2,81.7
    .use 23900 >>Kill the named Felguard, Tzerak, that roams the area between the summoning sigil and the Monument Glyph (where he despawns before reappearing at the sigil). Loot him for his Armor Plate, then click it in your bags
	.collect 23900,1,9594 --Tzerak's Armor Plate
    .accept 9594 >> Accept Signs of the Legion
	.unitscan Tzerak
    *Each respawn/despawn cycle takes about 6-7 minutes total
    --TODO: ??? bugged on wotlk beta
step
    .goto Bloodmyst Isle,37.0,78.7
	>>Kill Satyrs and Felsworn in the area. You may have to kill Rogues to force the respawns of the satyr's you need.
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
step << Shaman
	#sticky
	#completewith next
	.hs Blood Watch >> If your hearth is up, hearth to Blood Watch
step
	#requires greenmushroom
    .goto Bloodmyst Isle,53.3,57.6
>>Talk to |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Turn in Cruelfin's Necklace
    .turnin 9629 >> Turn in Catch and Release
.target Morae
    .accept 9574 >> Accept Victims of Corruption
step
    .goto Bloodmyst Isle,50.6,74.4
	>>Kill treants around this area. Loot them for their bark. Grind en route between treants.
    .complete 9574,1 --Collect Crystallized Bark (x6)
step
    .goto Bloodmyst Isle,53.3,57.8
.target Morae
>>Talk to |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Turn in Victims of Corruption
step
	#completewith next
	.goto Bloodmyst Isle,53.3,56.7
	.vendor >> Vendor and Repair << !Hunter
	.vendor >> Buy a Medium Quiver and restock on arrows << Hunter
step
    .goto Bloodmyst Isle,55.1,59.2
    .accept 9646 >> Accept WANTED: Deathclaw
step
    .goto Bloodmyst Isle,55.0,58.1
.target Vindicator Aalesia
>>Talk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >> Turn in Signs of the Legion
    .turnin 9567 >> Turn in Know Thine Enemy
step
    .goto Bloodmyst Isle,55.2,56.0
.target Stillpine Ambassador Frasaboo
>>Talk to |cRXP_FRIENDLY_Stillpine Ambassador Frasaboo|r
    .turnin 9667 >> Turn in Saving Princess Stillpine
step
    .goto Bloodmyst Isle,56.4,56.7
.target Jessera of Mac'Aree
>>Talk to |cRXP_FRIENDLY_Jessera of Mac'Aree|r
    .turnin 9648 >> Turn in Maatparm Mushroom Menagerie
step
    .goto Bloodmyst Isle,55.4,55.3
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >> Accept Irradiated Crystal Shards
    .accept 9779 >> Accept Intercepting the Message
step
	.goto Bloodmyst Isle,55.4,55.4
	.itemcount 23984,10
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
	.turnin 9641,3 >> Turn in Irradiated Crystal Shards << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9641,2 >> Turn in Irradiated Crystal Shards << Mage/Priest/Warlock
    .turnin 9641 >> Turn in Irradiated Crystal Shards << Druid
step
    .itemcount 23984,10
    .goto Bloodmyst Isle,55.421,55.232
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9642,3 >> Turn in More Irradiated Crystal Shards << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9642,2 >> Turn in More Irradiated Crystal Shards << Warlock/Priest/Mage
    .turnin 9642 >> Turn in More Irradiated Crystal Shards << Druid
step
    .goto Bloodmyst Isle,61.1,48.6
>>Talk to |cRXP_FRIENDLY_Draenei Cartographer|r
    .turnin 9620 >> Turn in The Missing Survey Team
.target Draenei Cartographer
    .accept 9628 >> Accept Salvaging the Data
step
    .goto Bloodmyst Isle,62.7,47.6
	>>Kill nagas until you get the survey data crystal
    .complete 9628,1 --Collect Survey Data Crystal (x1)
step
    .goto Bloodmyst Isle,52.7,53.3
>>Talk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9628 >> Turn in Salvaging the Data
.target Harbinger Mikolaas
    .accept 9584 >> Accept The Second Sample
.target Exarch Admetius
>>Talk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9668 >> Turn in Report to Exarch Admetius
step
    #sticky
	#label Missive
	#completewith mailbox
	.goto Bloodmyst Isle,48.1,47.6
	>>Kill elves around this area
    .complete 9779,1 --Collect Sunhawk Missive (x1)
step
    .goto Bloodmyst Isle,45.7,47.8
	.use 23876 >>Use the pick in your bags to collect the small red crystal
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
	.goto Bloodmyst Isle,48.1,47.6
	.xp 15-1200
step
	#sticky
    #level 15
	#requires Missive
	#label mailbox
	.goto Bloodmyst Isle,55.0,59.3,100,0
	.goto Bloodmyst Isle,55.3,55.3,100,0
	.goto Bloodmyst Isle,52.681,53.175,80,0
	.goto Bloodmyst Isle,55.0,59.3
	>>Speak to Messenger Hermesius, he patrols around Blood Watch
	.unitscan Messenger Hermesius
.target Messenger Hermesius
>>Talk to |cRXP_FRIENDLY_Messenger Hermesius|r
	.turnin 9671
step
    #requires Missive
	.goto Bloodmyst Isle,52.681,53.175
>>Talk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9584 >> Turn in The Second Sample
.target Harbinger Mikolaas
    .accept 9585 >> Accept The Final Sample
step
    .goto Bloodmyst Isle,55.3,55.3
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9779 >> Turn in Intercepting the Message
.target Vindicator Boros
    .accept 9696 >> Accept Translations...
step << Paladin
	.goto Bloodmyst Isle,55.6,55.3
	.trainer >> Train class spells at Vindicator Aesom
step
    .goto Bloodmyst Isle,54.5,54.6
    .turnin -9696 >> Turn in Translations...
.target Interrogator Elysia
>>Talk to |cRXP_FRIENDLY_Interrogator Elysia|r
    .accept 9698 >> Accept Audience with the Prophet
step
    .xp 15
step
	#requires mailbox
	.use 24132 >>Open your mailbox, retrieve the note and accept the quest
    .goto Bloodmyst Isle,55.1,59.1
	.collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >> Accept The Bloodcurse Legacy
step
	#sticky
	#completewith next
	.vendor >> Go inside and buy level 15 food from Topher << Warrior/Rogue/Shaman/Paladin
	.vendor >> Purchase Ice Cold Milk or Melon Juice if needed as well << Priest/Shaman/Paladin
step
    .goto Bloodmyst Isle,55.0,57.8
.target Vindicator Aalesia
>>Talk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9569 >> Accept Containing the Threat
step
    .goto Bloodmyst Isle,55.8,57.0
.target Tracker Lyceon
>>Talk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >> Accept The Bear Necessities
    .accept 9643 >> Accept Constrictor Vines
step
    .goto Bloodmyst Isle,56.3,56.8
.target Jessera of Mac'Aree
>>Talk to |cRXP_FRIENDLY_Jessera of Mac'Aree|r
    .accept 9649 >> Accept Ysera's Tears
step
    .goto Bloodmyst Isle,74.7,33.7
	>> Grind en route
.target Prince Toreth
>>Talk to |cRXP_FRIENDLY_Prince Toreth|r
    .accept 9687 >> Accept Restoring Sanctity
step
	#sticky
	#label yserasTear
	>>Collect the small green mushrooms around the island. Try to avoid the whelp mobs
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.1,22.6
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9672 >> Turn in The Bloodcurse Legacy
.target Captain Edward Hanes
    .accept 9674 >> Accept The Bloodcursed Naga
step
    .goto Bloodmyst Isle,80.0,16.9
	>> Talk to the Captain for another waterbreathing buff if you die
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
step
    .goto Bloodmyst Isle,79.1,22.6
.target Captain Edward Hanes
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9674 >> Turn in The Bloodcursed Naga
step
    .goto Bloodmyst Isle,79.1,22.6
.target Captain Edward Hanes
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9682 >> Accept The Hopeless Ones...
    .maxlevel 15
step
    .goto Bloodmyst Isle,87.3,16.6
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .isOnQuest 9682
step
    .goto Bloodmyst Isle,79.2,22.7
.target Captain Edward Hanes
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9682 >> Turn in The Hopeless Ones...
    .isOnQuest 9682
step
    .isOnQuest 9682
    .abandon 9682 >> Abandon The Hopeless Ones...
step
    .goto Bloodmyst Isle,79.2,22.7
.target Captain Edward Hanes
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9683 >> Accept Ending the Bloodcurse
    .isQuestTurnedIn 9682
step
	#requires yserasTear
    .goto Bloodmyst Isle,86.0,54.5
    >>Swim to the island south, climb the mountain and click on the statue to summon Atoph
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    *Atoph is level 19, proceed with caution
    .isOnQuest 9683
step << Shaman/Paladin wotlk/Hunter
    .goto Bloodmyst Isle,79.2,22.7
.target Captain Edward Hanes
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9683 >> Turn in Ending the Bloodcurse
    .isOnQuest 9683
    .xp 16-2190,1
step << Shaman/Paladin wotlk/Hunter
	.xp 16-2190 --Making sure we get to level 16 before going into exodar for training
step
	#sticky
	#completewith next
	.deathskip >> Death skip to Blood Watch
step
    .goto Bloodmyst Isle,56.4,56.7
.target Jessera of Mac'Aree
>>Talk to |cRXP_FRIENDLY_Jessera of Mac'Aree|r
    .turnin 9649 >> Turn in Ysera's Tears
step
    .goto Bloodmyst Isle,57.6,53.9
.target Laando
>>Talk to |cRXP_FRIENDLY_Laando|r
    .accept 9604 >> Accept On the Wings of a Hippogryph
step
    .goto Bloodmyst Isle,57.6,53.9
    .fly The Exodar>> Fly to The Exodar
step
	.goto The Exodar,75.0,54.8,80,0
	.goto The Exodar,64.4,42.4,80,0
    .goto The Exodar,57.008,50.065
>>Talk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Turn in On the Wings of a Hippogryph
.target Nurguni
    .accept 9605 >> Accept Hippogryph Master Stephanos
step << Warrior
.target Behomat
>>Talk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >> Turn in Behomat
    .goto The Exodar,55.579,82.269
    >>Talk to the weapon master upstairs
    .train 199 >>Train 2h Maces
    .goto The Exodar,53.3,85.7
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
>>Talk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9461 >> Turn in Call of Fire
.target Prophet Velen
    .accept 9555 >> Accept Call of Fire
    .turnin -9698 >> Turn in Audience with the Prophet
    .accept 9699 >> Accept Truth or Fiction
step << Paladin
    .goto The Exodar,38.8,82.6
.target Jol
>>Talk to |cRXP_FRIENDLY_Jol|r
    .turnin 9600 >>Turn in Redemption
step << !Shaman
    .goto The Exodar,32.858,54.484
    .turnin -9698 >> Turn in Audience with the Prophet
.target Prophet Velen
>>Talk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9699 >> Accept Truth or Fiction
step << Shaman
	#completewith next
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9555 >> Turn in Call of Fire
	.trainer >> Train your level 16 spells
step
	.goto The Exodar,52.3,34.7,80,0
    .goto The Exodar,68.336,63.490
    >>Run back to the flight master
>>Talk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >> Turn in Hippogryph Master Stephanos
.target Stephanos
    .accept 9606 >> Accept Return to Topher Loaal
step
	#completewith next
    .goto The Exodar,68.336,63.490
    .fly Bloodmyst Isle>> Fly to Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.844,59.776
.target Caregiver Topher Loaal
>>Talk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .turnin 9606 >> Turn in Return to Topher Loaal
step
    #label exit1
    .goto Bloodmyst Isle,55.5,55.4
    .turnin -9699 >> Turn in Truth or Fiction
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9700 >> Accept I Shoot Magic Into the Darkness
step
    .goto Bloodmyst Isle,56.2,54.3
.target Prospector Nachlan
>>Talk to |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >> Accept Explorers' League, Is That Something for Gnomes?
step
	#sticky
    .goto Bloodmyst Isle,41.3,30.6
	.use 23877 >>Use the pick in your bags to collect the small red crystal
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    .goto Bloodmyst Isle,41.9,29.6
    >> Collect Crystals around the camps and kill Satyrs
    .complete 9569,1 --Kill Zevrax (x1)
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
	#sticky
	#label constrictors
	#completewith gnome
    >>Kill Mutated Constrictors. Loot them for their Vines
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
step
	#sticky
	#completewith bloodmyst2
	>>Kill Bears. Loot them for their Bear Flanks
	.complete 9580,1 --Elder Brown Bear Flank (8)
step
    .goto Bloodmyst Isle,42.0,21.2
>>Talk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 10063 >> Turn in Explorers' League, Is That Something for Gnomes?
.target Clopper Wizbang
    .accept 9548 >> Accept Pilfered Equipment
    .accept 9549 >> Accept Artifacts of the Blacksilt
step
    #sticky
    #completewith gnome
    .goto Bloodmyst Isle,42.142,21.174,0
    .vendor >>Buy a Bronze Tube from Clopper Wizbang (limited supply), skip this step if he doesn't have it or if you already have one
	>> Restock on arrows << Hunter
	>> Restock on ice cold milk if needed << Hunter/Priest/Shaman/Paladin
    .collect 4371,1,175,1,1
step
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4
    >>Loot the crate that can spawn in any of the murloc camps
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    .goto Bloodmyst Isle,39.5,20.7
	>> Kill and loot murlocs. Idols drop from Seers and Oracles. Knives from the melee murlocs.
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
step
    .goto Bloodmyst Isle,42.142,21.174
.target Clopper Wizbang
>>Talk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9548 >> Turn in Pilfered Equipment
    .turnin 9549 >> Turn in Artifacts of the Blacksilt
step
    .goto Bloodmyst Isle,42.142,21.174
	.vendor >> Buy a Bronze Tube from Clopper Wizbang (limited supply), skip this step if he doesn't have it or if you already have one
	.collect 4371,1,175,1,1
	.bronzetube
step
    .goto Bloodmyst Isle,53.1,20.3
    .use 23837 >>Click on the Weathered Treasure Map in your bags from the Artifacts of the Blacksilt quest
	.collect 23837,1,9550 --Collect Weathered Treasure Map (x1)
    .accept 9550 >> Accept A Map to Where?
step
	#sticky
	#label Sun Portal Site
    .goto Bloodmyst Isle,53.1,20.3
	>>Get close to the spaceship like building
	.complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #label gnome
    .goto Bloodmyst Isle,52.5,25.2
	>>Kill the Void Anomalies in the area
    .complete 9700,2 --Kill Void Anomaly (x5)
step
	.goto Bloodmyst Isle,47.6,24.9,60,0
	.goto Bloodmyst Isle,44.9,26.4,100,0
	.goto Bloodmyst Isle,48.3,33.4,100,0
	.goto Bloodmyst Isle,45.1,37.4,100,0
	.goto Bloodmyst Isle,40.8,41.9,100,0
	.goto Bloodmyst Isle,34.0,44.3,100,0
	.goto Bloodmyst Isle,39.0,48.1,120,0
	.goto Bloodmyst Isle,42.5,49.3,100,0
	.goto Bloodmyst Isle,47.6,24.9
    >>Finish killing Mutated Constrictors and looting them for their Vines
	.complete 9643,1 --Collect Thorny Constrictor Vine (x6)
step
    .goto Bloodmyst Isle,54.0,30.9,60,0
    .goto Bloodmyst Isle,53.9,35.4,60,0
    .goto Bloodmyst Isle,57.0,34.3,60,0
    .goto Bloodmyst Isle,56.1,40.2
	>>Loot the Dragon Bones on the ground in the tree camps
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.1,41.9
    .turnin 9550 >> Turn in A Map to Where?
    .accept 9557 >> Accept Deciphering the Book
step
    #completewith next
    #requires constrictors
    .hs >> Hearth or run back to town
step
   	#requires constrictors
	.goto Bloodmyst Isle,54.7,54.1
.target Anchorite Paetheus
>>Talk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .turnin 9557 >> Turn in Deciphering the Book
step
    .goto Bloodmyst Isle,52.6,53.3
>>Talk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >> Turn in The Final Sample
.target Harbinger Mikolaas
    .accept 10064 >> Accept Talk to the Hand
step
    .goto Bloodmyst Isle,54.7,54.0
.target Anchorite Paetheus
>>Talk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .accept 9561 >> Accept Nolkai's Words
step
	#completewith next
    .goto Bloodmyst Isle,55.421,55.232
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9700 >> Turn in I Shoot Magic Into the Darkness
.target Vindicator Kuros
>>Talk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9703 >> Accept The Cryo-Core
	.trainer >>Train class spells at Vindicator Aesom << Paladin
step
    .itemcount 23984,10
    .goto Bloodmyst Isle,55.421,55.232
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9642,3 >> Turn in More Irradiated Crystal Shards << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9642,2 >> Turn in More Irradiated Crystal Shards << Warlock/Priest/Mage
    .turnin 9642 >> Turn in More Irradiated Crystal Shards << Druid
step
    .goto Bloodmyst Isle,55.9,56.9
>>Talk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9643 >> Turn in Constrictor Vines
.target Tracker Lyceon
    .accept 9647 >> Accept Culling the Flutterers
step
	.goto Bloodmyst Isle,55.9,56.9
	.isQuestComplete 9580
.target Tracker Lyceon
>>Talk to |cRXP_FRIENDLY_Tracker Lyceon|r
	.turnin 9580 >> Turn in The Bear Neccessities
step
    .goto Bloodmyst Isle,55.0,58.1
.target Vindicator Aalesia
>>Talk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9569 >> Turn in Containing the Threat
step
    .goto Bloodmyst Isle,53.242,57.708
.target Morae
>>Talk to |cRXP_FRIENDLY_Morae|r
    .accept 9578 >> Accept Searching for Galaen
step
	#sticky
	#completewith bloodmyst2
	>>Kill flutterers as you quest
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
step
    .goto Bloodmyst Isle,37.5,61.3
	>> Prioritize turning in the quest, don't grind elves yet.
>>Talk to |cRXP_FRIENDLY_Galaen's Corpse|r
    .turnin 9578 >> Turn in Searching for Galaen
.target Galaen's Corpse
    .accept 9579 >> Accept Galaen's Fate
    .accept 9706 >> Accept Galaen's Journal - The Fate of Vindicator Saruan
step
    .goto Bloodmyst Isle,37.8,58.9
	>>Kill and loot blood elves around this area. You can LoS them around the pillars in the area to avoid damage
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
step
	.xp 17+12800 >> Grind to 12800+/16400xp
step
	#requires constrictors
    .goto Bloodmyst Isle,53.3,57.7
.target Morae
>>Talk to |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Turn in Galaen's Fate
step
    .goto Bloodmyst Isle,53.3,57.2
.target Achelus
>>Talk to |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Accept The Missing Expedition
step
    .goto Bloodmyst Isle,55.6,55.1
>>Talk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9703 >> Turn in The Cryo-Core
    .turnin 9706 >> Turn in Galaen's Journal - The Fate of Vindicator Saruan
.target Vindicator Kuros
    .accept 9711 >> Accept Matis the Cruel
.target Vindicator Aesom
>>Talk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9748 >> Accept Don't Drink the Water
    .accept 9753 >> Accept What We Know...
step
    .goto Bloodmyst Isle,52.6,53.3
>>Talk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9753 >> Turn in What We Know...
.target Exarch Admetius
    .accept 9756 >> Accept What We Don't Know...
step
    >>Open the cage and speak to the prisoner
    .skipgossip
    .complete 9756,1
    .goto Bloodmyst Isle,54.36,54.30
>>Talk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9756 >> Turn in What We Don't Know...
    .goto Bloodmyst Isle,52.6,53.3
.target Exarch Admetius
    .accept 9760 >> Accept Vindicator's Rest
step
	#completewith AliveM
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>Look for Matis the Cruel, he patrols the main road next to Vindicator's Rest
    .complete 9711,1 --Capture Matis the Cruel
	*Once you find him, use the flare in your bags to summon a Draenei NPC to assist you
	*The flare gun only have 1 charge, if you fail this quest, you will have to abandon it
	.unitscan Matis the Cruel
step
    .goto Bloodmyst Isle,30.3,45.8
>>Talk to |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10064 >> Turn in Talk to the Hand
.target Scout Jorli
    .accept 10065 >> Accept Cutting a Path
.target Scout Loryi
>>Talk to |cRXP_FRIENDLY_Scout Loryi|r
    .accept 9741 >> Accept Critters of the Void
step
    .goto Bloodmyst Isle,30.8,46.8
.target Defender Sorli
.target Defender Adrielle
.target Vindicator Corin
>>Talk to |cRXP_FRIENDLY_Vindicator Corin|r
-->>Talk to |cRXP_FRIENDLY_Defender Adrielle|r
-->>Talk to |cRXP_FRIENDLY_Defender Sorli|r
    .accept 10066 >> Accept Oh, the Tangled Webs They Weave
--
--
    .accept 10067 >> Accept Fouled Water Spirits
     .turnin 9760 >> Turn in Vindicator's Rest
step
    #sticky
	#completewith next
    .goto Bloodmyst Isle,30.3,57.2,0
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .complete 10065,1 --Kill Enraged Ravager (x10)
step
    .goto Bloodmyst Isle,19.6,63.2
	>>You have to kill the anomalies in the water to eventually spawn the Critters
    .complete 9741,1 --Kill Void Critter (x12)
step
	>>Finish off the Tanglers and Ravagers
    .goto Bloodmyst Isle,30.3,57.2
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .complete 10065,1 --Kill Enraged Ravager (x10)
step
	#label bloodmyst2
.target Vindicator Corin
>>Talk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10066 >> Turn in Oh, the Tangled Webs They Weave
    .goto Bloodmyst Isle,30.7,46.9
.target Scout Jorli
>>Talk to |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10065 >> Turn in Cutting a Path
    .goto Bloodmyst Isle,30.3,46.0
step
    .goto Bloodmyst Isle,33.4,43.8
	>>Kill Bears and Flutterers. Loot the bears for their Flanks
	>>Finish killing and looting Bears and Flutterers
    .complete 9647,1 --Kill Royal Blue Flutterer (10)
	.complete 9580,1 --Elder Brown Bear Flank (8)
step
    .goto Bloodmyst Isle,29.6,39.5
	>>Kill the Fouled Water Spirits in the area
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
step
    .goto Bloodmyst Isle,30.746,46.808
.target Vindicator Corin
>>Talk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10067 >> Turn in Fouled Water Spirits
step
    .goto Bloodmyst Isle,24.872,34.310
.target Researcher Cornelius
>>Talk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .accept 9670 >> Accept They're Alive! Maybe...
step
	#sticky
	#label Researchers
	>>Destroy the egg sacs around this area. Kill them from range if possible as to not aggro potential mobs inside
    .goto Bloodmyst Isle,18.2,38.0,0,0
    .complete 9670,1 --Expedition Researcher Freed (5)
step
    .goto Bloodmyst Isle,21.4,36.0,70,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Kill the Myst Leechers and Spinners in the area, then kill Zarakh atop the mountain
    .complete 9669,1 --Kill Myst Leecher (x8)
    .complete 9669,2 --Kill Myst Spinner (x8)
    .complete 9669,3 --Kill Zarakh (x1)
step
	#requires Researchers
	#label AliveM
    .goto Bloodmyst Isle,24.9,34.4
.target Researcher Cornelius
>>Talk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .turnin 9670 >> Turn in They're Alive! Maybe...
step
    .goto Bloodmyst Isle,43.9,43.7,70,0
    .goto Bloodmyst Isle,30.1,51.7,70,0
    .goto Bloodmyst Isle,22.4,54.3,70,0
    .goto Bloodmyst Isle,30.1,51.7,70,0
    .goto Bloodmyst Isle,43.9,43.7,70,0
    .goto Bloodmyst Isle,22.4,54.3,70,0
    .goto Bloodmyst Isle,30.1,51.7
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>Look for Matis the Cruel, he patrols the main road next to Vindicator's Rest
    .complete 9711,1 --Capture Matis the Cruel
	*Once you find him, use the flare in your bags to summon a Draenei NPC to assist you
	*The flare gun only have 1 charge, if you fail this quest, you will have to abandon it
	.unitscan Matis the Cruel
step << Hunter/Shaman/Mage
    #label limit1
    #completewith L20
	.xp 19-11,200,1
    .goto Bloodmyst Isle,24.8,51.3
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .complete 9746,2 --Kill Sunhawk Defender (x10)
step << Hunter/Shaman/Mage
    #label limit2
    #completewith L20
    #requires limit1
    .isOnQuest 9746
    .goto Bloodmyst Isle,55.6,55.3
>>Talk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9746 >> Turn in Limits of Physical Exhaustion
.target Vindicator Aesom
    .accept 9740 >> Accept The Sun Gate
step << Hunter/Shaman/Mage
    #label sungate
    #completewith L20
    #requires limit2
    .isOnQuest 9740
    .goto Bloodmyst Isle,18.7,64.0
    >>Click on the purple crystals around the lake and then on the big portal in the middle
    .complete 9740,1
step
    .goto Bloodmyst Isle,34.3,33.6
	.use 24318 >>Use the Sampling Vial in your bags at the base of the waterfall
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .goto Bloodmyst Isle,37.4,30.1
	>>Kill the named bear. Loot him for his claw
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
step
	#completewith next
    .hs >> Hearth to Blood Watch
step
    .goto Bloodmyst Isle,53.4,57.1
.target Achelus
>>Talk to |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Turn in The Missing Expedition
step
    .goto Bloodmyst Isle,52.7,53.3
.target Harbinger Mikolaas
>>Talk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9646 >> Turn in WANTED: Deathclaw
step
    .goto Bloodmyst Isle,54.7,54.1
.target Anchorite Paetheus
>>Talk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .accept 9632 >> Accept Newfound Allies
step
    .goto Bloodmyst Isle,55.6,55.3
>>Talk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >> Turn in Critters of the Void
    .turnin 9748 >> Turn in Don't Drink the Water
.target Vindicator Kuros
>>Talk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >> Turn in Matis the Cruel
.target Vindicator Aesom
    .accept 9746 >> Accept Limits of Physical Exhaustion << Hunter/Shaman/Mage
	.isQuestComplete 9711
step
    .goto Bloodmyst Isle,55.6,55.3
>>Talk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >> Turn in Critters of the Void
    .turnin 9748 >> Turn in Don't Drink the Water
.target Vindicator Aesom
    .accept 9746 >> Accept Limits of Physical Exhaustion << Hunter/Shaman/Mage
step
	.goto Bloodmyst Isle,55.6,55.3
	.abandon 9711 >> Abandon Matis the Cruel
step
	#requires sungate
	.goto Bloodmyst Isle,55.6,55.3
.target Vindicator Aesom
>>Talk to |cRXP_FRIENDLY_Vindicator Aesom|r
	.turnin 9740 >> Turn in The Sun Gate
step
	#label bearend
    .goto Bloodmyst Isle,55.9,56.9
.target Tracker Lyceon
>>Talk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Turn in Culling the Flutterers
    .turnin 9580 >> Turn in The Bear Necessities
step
    .goto Bloodmyst Isle,61.4,49.6
    .turnin 9561 >> Turn in Nolkai's Words
step
    .goto Bloodmyst Isle,74.6,33.6
>>Talk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9687 >> Turn in Restoring Sanctity
.target Prince Toreth
    .accept 9688 >> Accept Into the Dream
step
	#sticky
	#label Veridian
    .goto Bloodmyst Isle,71.5,27.8,0
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .complete 9688,2 --Kill Veridian Broodling (x5)
step
    .goto Bloodmyst Isle,79.1,22.7
.target Captain Edward Hanes
>>Talk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9683 >> Turn in Ending the Bloodcurse
    .isOnQuest 9683
step
    #requires Veridian
	.goto Bloodmyst Isle,74.3,33.4
>>Talk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9688 >> Turn in Into the Dream
.target Prince Toreth
    .accept 9689 >> Accept Razormaw
step
    .goto Bloodmyst Isle,73.0,21.0
	>>Climb to the top of the mountain and click on the bonfire to summon Razormaw. It takes him a little bit to fly down.
    .complete 9689,1 --Kill Razormaw (x1)
	>>This is an elite quest, if you can't kill Razormaw, skip this step
step
    .goto Bloodmyst Isle,74.3,33.4
.target Prince Toreth
>>Talk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9689 >> Turn in Razormaw
	.isQuestComplete 9689
step << Hunter/Shaman/Mage
    #label L20
    .xp 20
    >>You'll need to hit level 20 before leaving Bloodmyst
step << !Shaman
    #completewith flighttoexodar2
    .deathskip >> Death skip back to Blood Watch
step
    .itemcount 23984,10
    .goto Bloodmyst Isle,55.421,55.232
    >> Turn in your remaining Irradiated Crystal Shards before leaving Bloodmyst!
.target Vindicator Boros
>>Talk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9642,3 >> Turn in More Irradiated Crystal Shards << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9642,2 >> Turn in More Irradiated Crystal Shards << Warlock/Priest/Mage
    .turnin 9642 >> Turn in More Irradiated Crystal Shards << Druid
step << Paladin
	#completewith next
	#level20
	.goto Bloodmyst Isle,55.6,55.3
	>>Train at Vindicator Aesom
step
    #label flighttoexodar2
	#completewith next
    .goto Bloodmyst Isle,57.7,53.9
    .fly the Exodar>> Fly to the Exodar
step << Shaman
    .goto The Exodar,32.4,24.0
.target Farseer Javad
>>Talk to |cRXP_FRIENDLY_Farseer Javad|r
    .accept 9502 >> Accept Call of Water
step << Shaman
    .goto The Exodar,31.3,30.7
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9502 >> Turn in Call of Water
.target Farseer Nobundo
    .accept 9501 >> Accept Call of Water
	.trainer >> Train your level 20 skills
step << Shaman
    .goto The Exodar,68.336,63.490
    .fly Blood Watch>> Fly to Blood Watch
step << Shaman
    .goto Bloodmyst Isle,32.300,16.132
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9501 >> Turn in Call of Water
.target Aqueous
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
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9503 >> Turn in Call of Water
.target Aqueous
    .accept 9504 >> Accept Call of Water
step << Shaman
    .goto Bloodmyst Isle,30.4,45.8,120 >>Die on purpose, respawn and run to Blood Watch
step << Shaman
    .goto Bloodmyst Isle,55.5,55.4
.target Vindicator Aesom
>>Talk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9746 >> Turn in Limits of Physical Exhaustion
step << Shaman
    .goto Bloodmyst Isle,57.7,53.9
    .fly The Exodar>> Fly to The Exodar
step << Draenei !Paladin wotlk
	.goto The Exodar,81.18,52.56
    .money <5.00
    .skill riding,75 >>Head to Exodar, buy and train your mount
step << Hunter
	.goto The Exodar,42.0,71.4,60,0
	.goto The Exodar,54.5,85.6,60,0
	.goto The Exodar,47.6,88.3
	.trainer >> Train spells in The Exodar
	.train 15147 >>Learn Growl Rank 3 from the pet trainer << tbc
step << Priest
    >> Enter The Exodar and buy a Burning Wand from the vendor
    .collect 5210,1
    .goto The Exodar,46.4,61.4
    .trainer >> Train your class spells
    .goto The Exodar,39.2,51.3
step << Mage
	.goto The Exodar,51.0,46.8,80,0
	.goto The Exodar,47.2,62.3,20,0
	    .goto The Exodar,46.0,62.7
    .trainer >> Train spells and Portal: Exodar in The Exodar
step << Mage
    >>Buy 1 Rune of Teleportation
    .collect 17031,1 --Rune of Teleportation (1)
    .goto The Exodar,44.8,63.2
step << Warrior
	.goto The Exodar,42,71.4,60,0
	.goto The Exodar,54.5,85.6,60,0
	.goto The Exodar,55.579,82.269
	.trainer >> Train spells in The Exodar
step
	.goto The Exodar,33.8,73.7,10,0
    .goto Azuremyst Isle,24.182,54.346
	>>Talk to the Night Elf just outside of The Exodar back entrance
>>Talk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9632 >> Turn in Newfound Allies
.target Huntress Kella Nightbow
    .accept 9633 >> Accept The Way to Auberdine
step
	#sticky
	#completewith next
	.goto Azuremyst Isle,21.4,54.0,20 >> Go to the docks
step
    .zone Darkshore >>Get onto the boat when it comes and travel to Darkshore.
	>> Level first aid or make sharpening stones while you wait. << Warrior/Paladin
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 20-21 Darkshore (Draenei)
#version 1
#group RestedXP Alliance 20-32
#defaultfor Draenei
#next 21-23 Ashenvale (Draenei)
step
    #xprate <1.2
    .goto Darkshore,36.096,44.931
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .maxlevel 20
step
	.goto Darkshore,36.35,45.57
	.fp Darkshore >> Get the Darkshore flight path
step
    .goto Darkshore,37.0,44.0
    .home >> Set Hearthstone to Auberdine
step
    #xprate <1.2
    .goto Darkshore,37.3,44.3
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    #xprate <1.2
    .goto Darkshore,37.4,43.7
.target Barithras Moonshade
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .maxlevel 20
step
    .goto Darkshore,38.37,43.05
.target Gershala Nightwhisper
>>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .accept 1275 >> Accept Researching the Corruption
step
    #xprate <1.2
    .goto Darkshore,39.1,43.5
.target Sentinel Elissa Starbreeze
>>Talk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .accept 965 >> Accept The Tower of Althalaxx
    .maxlevel 20
step
#xprate <1.2
    .goto Darkshore,38.1,41.2
.target Gorbold Steelhand
>>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .maxlevel 20
step
    .goto Darkshore,37.4,40.2
	.turnin -9633 >> Turn in The Way to Auberdine
.target Thundris Windweaver
>>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Accept Onward to Ashenvale
step
#xprate <1.2
    .goto Darkshore,38.2,28.8
	>>Enter the sunken ship through the hole on the hull and loot the chest at the bottom floor
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
    .isOnQuest 982
step
#xprate <1.2
    .goto Darkshore,39.6,27.5
	>>Enter the sunken ship through the hole on the hull and loot the chest at the bottom floor
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
    .isOnQuest 982
step
#xprate <1.2
	#sticky
	>>Kill Reef Crawlers and Encrusted Tide Crawlers along the coast
    .complete 1138,1 --Collect Fine Crab Chunks (x6)
    .isOnQuest 1138
step
#xprate <1.2
	>>Start heading north while grinding crabs along the coast
    .goto Darkshore,56.7,13.5
.target Gelkak Gyromast
>>Talk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .isOnQuest 1138
step
#xprate <1.2
	#completewith q2098
    #label crawlers
    >>Kill Raging Reef Crawlers. Be careful as they thrash (multiple hits at once every 10s or so)
    .complete 2098,3 --Collect Bottom of Gelkak's Key (x1)
    .isOnQuest 2098
step
#xprate <1.2
    .goto Darkshore,59.5,12.6
	>>Kill Giant Foreststriders
    .complete 2098,1 --Collect Top of Gelkak's Key (x1)
    .isOnQuest 2098
step
#xprate <1.2
    .goto Darkshore,55.4,12.6
	>>Kill murlocs next to the sunken ship. You can LoS (line of sight) the oracles around the front of the sunken ship
    .complete 2098,2 --Collect Middle of Gelkak's Key (x1)
    .isOnQuest 2098
step
#xprate <1.2
    #label q2098
    #requires crawlers
    .goto Darkshore,56.7,13.5
.target Gelkak Gyromast
>>Talk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .isOnQuest 2098
step
#xprate <1.2
    .goto Darkshore,56.7,13.5
    #requires crawlers
.target Gelkak Gyromast
>>Talk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2078 >> Accept Gyromast's Revenge
    .isQuestTurnedIn 2098
step
#xprate <1.2
    .goto Darkshore,55.8,18.2
	>>Talk to the big robot and escort him back to the quest giver and then kill it once it turns hostile
    .complete 2078,1 --Gelkak's First Mate
    .isQuestTurnedIn 2098
step
#xprate <1.2
    .goto Darkshore,56.7,13.5
.target Gelkak Gyromast
>>Talk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestTurnedIn 2098
step
#xprate <1.2
	#sticky
	#completewith deletekey
	.destroy 7442 >> Delete Gyromast's Key from your inventory (not your keyring). It's no longer needed
    .isQuestTurnedIn 2098
step << !Druid !Shaman !Warlock
#xprate <1.2
    .isQuestTurnedIn 2098
	#sticky
	#completewith deletekey
	+Make sure to save your water breathing potions, you will need them later to deal with a couple of underwater sections from 30-40
step
#xprate <1.2
    .goto Darkshore,55.0,24.9
.target Balthule Shadowstrike
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .isOnQuest 965
step
#xprate <1.2
    .goto Darkshore,55.0,24.9
.target Balthule Shadowstrike
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 966 >> Accept The Tower of Althalaxx
    .isQuestTurnedIn 965
step
#xprate <1.2
	#label deletekey
    .goto Darkshore,55.3,26.7
    .complete 966,1 --Collect Worn Parchment (x4)
    .isOnQuest 966
step
#xprate <1.2
    .goto Darkshore,55.0,24.9
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 967 >> Accept The Tower of Althalaxx
    .isQuestTurnedIn 965
step
#xprate <1.2
    .goto Darkshore,55.3,34.0
    .complete 947,1 --Collect Scaber Stalk (x5)
	>>Take a right when entering the cave and check the top for a Death Cap. If there's none there, you have to go down below
    .complete 947,2 --Collect Death Cap (x1)
    .isOnQuest 947
step
#xprate <1.2
	.goto Darkshore,55.3,34.0
    .xp 20-3900	>> Grind until you're level 19 and 16900+/20800xp
step
#xprate <1.2
	#sticky
	#completewith next
	.deathskip >> Death skip to Auberdine << Hunter
    .hs >> Hearth to Auberdine << !Hunter
step
#xprate <1.2
    .goto Darkshore,38.1,41.3
.target Gorbold Steelhand
>>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .isQuestComplete 982
step
#xprate <1.2
    .goto Darkshore,37.5,41.9
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
#xprate <1.2
    .goto Darkshore,37.4,43.7
.target Barithras Moonshade
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .isQuestComplete 947
step
#xprate <1.2
    .goto Darkshore,37.4,43.7
.target Barithras Moonshade
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Accept Onu
    .isQuestTurnedIn 947
step
#xprate <1.2
    .goto Darkshore,36.096,44.931
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .isQuestComplete 1138
step << Hunter
    #completewith Trainer
    .goto Darkshore,33.1,39.9,30,0
    .goto Darkshore,33.1,39.9,0
    .zone Teldrassil>>Take the boat to Teldrassil
    .zoneskip Darnassus
step << Hunter
    #completewith Trainer
    .goto Teldrassil,58.399,94.016
    .fp Rut'theran >> Get the Rut'theran Village flight path
step << Hunter
    #label Trainer
	.goto Teldrassil,29.2,56.7
	.train 264 >> Train Bows
    .train 227 >> Train Staves << tbc
step << Hunter
    .goto Darnassus,63.3,66.3
    >>Buy the level 20 weapon upgrade in Darnassus
    >> Skip this step if you have an Heirloom weapon << wotlk
    .collect 3027,1
    .itemStat 18,QUALITY,<7 << wotlk
step << Hunter
    .hs >> Hearth back to Auberdine, fly back if your HS is still on cooldown
    .zoneskip Darkshore
step
#xprate <1.2
    .goto Darkshore,43.5,76.2
>>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
.target Onu
    .accept 944 >> Accept The Master's Glaive
    .isQuestTurnedIn 947
step
#xprate <1.2
    .goto Darkshore,36.6,76.6
	>>Run near the fire to start the event (recommended to kill the mobs around it first)
    .complete 4740,1 --Kill Murkdeep (x1)
    .isOnQuest 4740
step
    .isOnQuest 729
    .goto Darkshore,35.7,83.7
.target Prospector Remtravel
>>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
step
#xprate <1.7
    .goto Darkshore,35.7,83.7
    >>Start the escort quest
.target Prospector Remtravel
>>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .accept 731,1 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 729
step
#xprate <1.7
    .isOnQuest 729
	>>Remtravel will not aggro the mobs that don't hit him, or that you aggro first. Be careful as he has low health/armor
    .complete 731,1 --Escort Prospector Remtravel
step
#xprate <1.2
    .goto Darkshore,39.0,86.4
	.use 5251 >> Use the Phial of Scrying anywhere in the area
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .isQuestTurnedIn 948
step
#xprate <1.2
    .goto Darkshore,38.6,86.1
    .turnin 949 >> Turn in The Twilight Camp
    >>Skip the follow up
    .isQuestTurnedIn 948
step
#xprate <1.2
	#sticky
	#completewith darkshoreend
	.destroy 5251>> You can now delete the "Phial of Scrying" from your inventory. As it's no longer needed
step
#xprate <1.2
    .goto Darkshore,38.7,87.3
.target Therylune
>>Talk to |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Accept Therylune's Escape
    >>If she's not here someone else is escorting her, grind til she respawns.
    .maxlevel 21
step
#xprate <1.2
	#label darkshoreend
    .complete 945,1 --Escort Therylune
    .isOnQuest 945
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 21-23 Ashenvale (Draenei)
#version 1
#group RestedXP Alliance 20-32
#defaultfor Draenei
#next RestedXP Alliance 20-32\23-24 Wetlands;RestedXP Alliance 20-32\24-27 Redridge/Duskwood
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    .isOnQuest 967
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 970 >> Accept The Tower of Althalaxx
    .maxlevel 21
step
    >> This quest leads into a big chain, it's worth doing even if it seems tedious.
    .goto Ashenvale,26.4,38.6
.target Orendil Broadleaf
>>Talk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Accept Bathran's Hair
step
    .goto Ashenvale,31.3,23.2
	>>Look for small bundles on the ground, they can be hidden partially-inside of the terrain
    .complete 1010,1 --Collect Bathran's Hair (x5)
step
#xprate <1.2
    .goto Ashenvale,31.4,31.0
    .complete 970,1 --Collect Glowing Soul Gem (x1)
    .isOnQuest 970
step
    .goto Ashenvale,26.4,38.6
>>Talk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
.target Orendil Broadleaf
    .accept 1020 >> Accept Orendil's Cure
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 970 >> Turn in The Tower of Althalaxx
    .isOnQuest 970
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 973 >> Accept The Tower of Althalaxx
    .maxlevel 21
    .isQuestTurnedIn 970
step
    .goto Ashenvale,34.7,48.8
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Accept The Zoram Strand
step
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1054 >> Accept Culling the Threat
    .turnin 10752 >> Turn in Onward to Ashenvale
step
    #xprate <1.7
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 991 >> Accept Raene's Cleansing
step
    .goto Ashenvale,37.0,49.2
    .home >> Go Upstairs. Set your Hearthstone to Astranaar
step
    .goto Ashenvale,37.3,51.8
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 26,Orendil's Cure RP
step << Warrior tbc/Paladin
	#sticky
	.goto Ashenvale,35.8,52.0
	>>Buy the level 21 weapon upgrade
	.collect 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.97
step
	.goto Ashenvale,37.3,51.8
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .accept 1033 >> Accept Elune's Tear
step
    .goto Ashenvale,46.2,45.9
    >>Look for small pearl shaped objects on the small island on the middle of the lake
    .complete 1033,1 --Collect Elune's Tear (x1)
step
    .goto Ashenvale,37.8,34.7
	>>He's a grey Furbolg that patrols a large section of the camp
	.unitscan Dal Bloodclaw
    .complete 1054,1 --Collect Dal Bloodclaw's Skull (x1)
step
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Turn in Culling the Threat
step
    .goto Ashenvale,37.3,51.8
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1033 >> Turn in Elune's Tear
.target Pelturas Whitemoon
    .accept 1034 >> Accept The Ruins of Stardust
step << Shaman
    .goto Ashenvale,33.6,67.4
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.3,67.4
    .complete 1034,1 --Collect Handful of Stardust (x5)
step
#xprate <1.2
    .goto Ashenvale,25.3,60.8
	>>Try to kill him before he summons his guardians (it's stunnable, but not interruptable)
    .complete 973,1 --Collect Ilkrud Magthrull's Tome (x1)
    .isOnQuest 973
step
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.7,51.9
.target Therysil
>>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Turn in Therylune's Escape
    .isQuestComplete 945
step
#xprate <1.2
    .goto Ashenvale,26.196,38.698
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Turn in The Tower of Althalaxx
    .isOnQuest 973
step
#xprate <1.7
    .goto Ashenvale,20.3,42.4
>>Talk to |cRXP_FRIENDLY_Teronis' Corpse|r
    .turnin 991 >> Turn in Raene's Cleansing
.target Teronis' Corpse
    .accept 1023 >> Accept Raene's Cleansing
step
#xprate <1.7
    #sticky
    #completewith GlowGem
    +Be careful of the oracles here, as they have a high-damage instant Shock spell (110 damage) and can heal to full
step
#xprate <1.7
	#label GlowGem
    .goto Ashenvale,20.3,42.4
    .complete 1023,1 --Collect Glowing Gem (x1)
step
    .goto Ashenvale,14.7,31.3
.target Talen
>>Talk to |cRXP_FRIENDLY_Talen|r
    .accept 1007 >> Accept The Ancient Statuette
step
    .goto Ashenvale,14.2,20.6
    >>Look for a small statuette on the ground
	>>Grind naga en route but don't go out of your way, we'll kill more later.
    .collect 5490,20,1008,1,1
    .complete 1007,1 --Collect Ancient Statuette (x1)
step
    .goto Ashenvale,14.790,31.294
	>> Grind naga directly in your path
>>Talk to |cRXP_FRIENDLY_Talen|r
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 25,The Ancient Statuette RP
.target Talen
    .accept 1009 >> Accept Ruuzel
step
	.goto Ashenvale,13.5,19.7,60,0
    .goto Ashenvale,7.0,13.4
    >>Head to the island north and kill Ruuzel
	>> This fight can be hard, focus down one or two of her adds then reset if needed.
    .complete 1009,1 --Collect Ring of Zoram (x1)
step
    .goto 1414,43.97,35.31,20,0
    .goto 1414,43.80,35.18,20,0
	.goto 1414,43.94,34.89,20,0
	.goto 1414,43.91,34.58,20,0
	.goto 1414,44.02,34.58,20,0
	.goto 1414,44.16,34.85
    >>Enter the temple like building into the BFD caves and kill nagas/satyrs
    .complete 1275,1
step
    #sticky
    #label naga2
    .goto Ashenvale,13.8,29.1,0,0
	>>Finish grinding nagas
    .complete 1008,1 --Collect Wrathtail Head (x20)
step
    .goto Ashenvale,14.790,31.294
.target Talen
>>Talk to |cRXP_FRIENDLY_Talen|r
    .turnin 1009 >> Turn in Ruuzel
step
    #requires naga2
    #completewith next
    .hs >> Hearth to Astranaar
step
    #requires naga2
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Turn in Raene's Cleansing
step
	#completewith next
	.destroy 5505>>Delete Teronis' Journal from your inventory. It's no longer needed
step
#xprate <1.5
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1025 >> Accept An Aggressive Defense
step
    .goto Ashenvale,37.3,51.8
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1034 >> Turn in The Ruins of Stardust
step
    .goto Ashenvale,34.7,48.9
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1008 >> Turn in The Zoram Strand
step
#xprate <1.5
    >>Kill the mobs for An Aggressive Defense
    .goto Ashenvale,49.9,60.8
    .goto Ashenvale,56.9,63.7
    .complete 1025,1 --Kill Foulweald Den Watcher (x1)
    .complete 1025,2 --Kill Foulweald Ursa (x2)
    .complete 1025,3 --Kill Foulweald Totemic (x10)
    .complete 1025,4 --Kill Foulweald Warrior (x12)
step
#xprate <1.5
    .goto Ashenvale,49.796,67.211
.target Sentinel Velene Starstrike
>>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 1016 >> Accept Elemental Bracers
step
#xprate <1.5
    .use 5456 >>Kill all water elementals on the island/in the water for Intact Elemental Bracers. When you have 5, right click the Divining Scroll
    .goto Ashenvale,48.0,69.9
    .complete 1016,1 --Collect Divined Scroll (x1)
step
#xprate <1.5
    .goto Ashenvale,49.796,67.211
.target Sentinel Velene Starstrike
>>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1016 >> Turn in Elemental Bracers
step
#xprate <1.5
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >> Turn in An Aggressive Defense
    .isQuestComplete 1025
step
	.goto Ashenvale,34.4,48.0
    .fly Auberdine>> Fly to Auberdine
step
    .goto Darkshore,37.706,43.390
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .isQuestComplete 4740
step
    .goto Darkshore,38.36,43.07
.target Gershala Nightwhisper
>>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Turn in Researching the Corruption
step
#xprate <1.7
    .isOnQuest 731
    .goto Darkshore,37.5,41.9
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
	.accept 741 >> Accept The Absent Minded Prospector << !Hunter
step << !Hunter
#xprate <1.7
    .isOnQuest 741
    .goto Darkshore,33.1,39.9,30
    .zone Teldrassil >>Take the boat to Teldrassil
step << !Hunter
#xprate <1.7
    .isOnQuest 741
    #completewith next
    .goto Teldrassil,55.9,89.8
    .zone Darnassus >> Take the purple portal to Darnassus
step << !Hunter
#xprate <1.7
    .isOnQuest 741
	.goto Teldrassil,23.703,64.511
>>Talk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.turnin 741 >> Turn in The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
	.accept 942 >> Accept The Absent Minded Prospector
step << Warrior tbc/Mage
#xprate <1.7
	.goto Teldrassil,29.2,56.7
    .train 227 >> Train Staves
    .isOnQuest 942
step << !Hunter
#xprate <1.7
	.goto Darnassus,30.7,41.3,50 >> Take the purple portal back to Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !Hunter
#xprate <1.7
    .goto Teldrassil,58.399,94.016
    .fp Rut'theran >> Get the Rut'theran Village flight path
    .zoneskip Darkshore
step << !Hunter
#xprate <1.7
    .fly Auberdine >>Fly back to Auberdine
    .zoneskip Darkshore
step << !Paladin wotlk
    >>Now it's a good time to buy your 60% mount, it costs about 4g
    .zone Azuremyst Isle >>Take the Boat to Azuremyst Isle
    .goto Darkshore,30.8,41.0
    .skill riding,1 >> Train Riding skill and buy a mount in The Exodar
    .goto The Exodar,81.6,51.8
    .skill riding,1,1
step
    .goto Darkshore,32.4,43.8
    >>Go back to the Darkshore docks
    .zone Stormwind City >> Take the boat to Stormwind << wotlk
    .zone Wetlands >> Take the boat to Wetlands << tbc
step << Draenei tbc/NightElf tbc
#xprate >1.499
    .goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step << skip -- Draenei tbc/NightElf tbc
#xprate >1.499
    #completewith next
    .goto Wetlands,63.9,78.6
    .zone Loch Modan >> Logout on top of the mushrooms at the back of the cave. When you log back in, this will teleport you to Thelsamar.
    >>Make sure to logout as close as possible to the back of the cave. This trick won't work if you log out next to the edge of the mushroom closer to the mouth of the cave.
    .link https://www.youtube.com/watch?v=21CuGto26Mk >> CLICK HERE for a reference
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
step << NightElf tbc/Draenei tbc
#xprate >1.499
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
step << NightElf tbc/Draenei tbc
#xprate >1.499
    #completewith next
    .goto Loch Modan,21.30,68.60,40,0
    .zone Dun Morogh>> Run to Dun Morogh
step << skip -- NightElf tbc/Draenei tbc
#xprate >1.499
    >>Go inside the South-eastern Trogg cave. Perform a logout skip
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
    .link https://www.youtube.com/watch?v=yQBW3KyguCM >> CLICK HERE
    .zone Ironforge >> Logout Skip or travel to Ironforge
step << NightElf tbc/Draenei tbc
#xprate >1.499
    .goto Ironforge,76.03,50.98,30,0
    .zone Stormwind City >> Take the tram to Stormwind
]])

