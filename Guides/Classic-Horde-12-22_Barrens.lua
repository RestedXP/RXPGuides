RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 12-17 The Barrens
#version 1
#group RestedXP Horde 1-22
#next 17-22 Stonetalon/Barrens/Ashenvale

step << Tauren Shaman
    .goto Durotar,50.8,43.6
    .accept 840 >>Accept Conscript of the Horde
step << Tauren Shaman
    #completewith next
    .goto Durotar,52.8,28.7,20 >> Go into the cave here
step << Tauren Shaman
    >>Kill the Burning Blade Cultists for the Pouch
    .goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Tauren Shaman
    .goto Durotar,52.8,28.7,20 >> Leave the cave
step << Tauren Shaman
    .goto The Barrens,62.2,19.4
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
step << Warrior
    #completewith next
	.goto The Barrens,54.7,28.0,30 >>Run up the mountain here
step << Warrior
    >>Go to the top of the mountain
    .goto The Barrens,57.2,30.3
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
step << Warrior
    >>Loot the gray chest for Forged Steel Bars
	.goto The Barrens,55.0,26.7
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #completewith next
    .goto The Barrens,54.7,28.0,30 >>Run up the mountain here
step << Warrior
    .goto The Barrens,57.2,30.3
    .turnin 1503 >>Turn in Forged Steel
step << Shaman
    #sticky
    >>Kill and Loot Razormanes for Fire Tar
    .complete 1525,1 --Fire Tar (1)
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.0,30.5,150 >> Run to the Crossroads
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.2,31.0
    .turnin 842 >>Turn in Crossroads Conscription << !Druid
    .accept 844 >>Accept Plainstrider Menace
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.2,31.8
    .accept 870 >>Accept The Forgotten Pools
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.5,29.8
    .accept 6365 >>Accept Meats to Orgrimmar
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll/Rogue Orc/Rogue Troll
    .goto The Barrens,52.62,29.84
    .turnin 6386 >> Turn in Return to the Crossroads
step << Undead
    .goto The Barrens,51.99,29.89
	.home >> Set your hearth to Crossroads
step << !Shaman !Warrior/Undead
    .goto The Barrens,51.9,30.3
    .accept 869 >>Accept Raptor Thieves
step << !Shaman !Warrior/Undead
    .goto The Barrens,51.5,30.8
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Shaman !Warrior/Undead
	#completewith next
    .goto The Barrens,51.5,30.4
    .fp Crossroads >> Get the Crossroads flight path
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    >>do NOT go to Orgrimmar
    .goto The Barrens,51.5,30.3
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar << !Rogue
step << !Shaman
	#era/som
    .goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
	.turnin 1358 >> Turn in Sample for Helbrim << Undead/Rogue
step << !Shaman
	#som
	#phase 3-6
    .goto The Barrens,51.5,30.1
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step
    #sticky
    #completewith next
    >>Check this location for Chen's Empty Keg. Loot it and start the quest, otherwise you'll get it later
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    .goto The Barrens,55.6,26.6
    >>Kill Quillboars in the area
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Tauren !Undead
    #sticky
    #completewith next
    .goto The Barrens,62.3,20.0,0
    >>If the Flawed Power Stone in your bags has less than 10 minutes left, drop it, then go back and loot the Purple Stone next to Ak'Zeloth again
    .turnin 926 >>Turn in Flawed Power Stone
step << !Tauren !Undead !Rogue
    #sticky
    #completewith BeakCave
    >>Kill some Plainstriders en route if you have time on Flawed Power Stone. Loot them for Beaks
    .complete 844,1 --Plainstrider Beak (7)
step << !Tauren !Undead !Rogue
    #label BeakCave
    .goto The Barrens,50.4,22.0,40,0
    .goto The Barrens,47.6,19.2,40 >>Run up the mountain, then go to the cave on top
step << !Tauren !Undead !Rogue
    >>Right click the Altar. Make sure you have a Power Stone on you
    .goto The Barrens,48.0,19.1
    .goto The Barrens,62.3,20.0,0
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step << !Tauren
    >>Kill Plainstriders. Loot them for Beaks
    .goto The Barrens,50.25,27.78
    .complete 844,1 --Plainstrider Beak (7)
step << Tauren
    .goto The Barrens,55.7,24.0,80,0
    .goto The Barrens,53.8,23.1,80,0
        .goto The Barrens,52.1,21.1,80,0
    .goto The Barrens,51.3,22.9,80,0
    .goto The Barrens,48.3,23.5,80,0
    .goto The Barrens,49.8,31.2,80,0
    .goto The Barrens,55.7,24.0
    >>Kill Plainstriders. Loot them for Beaks
    .complete 844,1 --Plainstrider Beak (7)
step << !Tauren Warrior/!Tauren Shaman
    >>Run back to The Crossroads
    .goto The Barrens,52.62,29.84
    .turnin 6386 >>Turn in Return to the Crossroads.
step
    >>Run back to The Crossroads << !Tauren Warrior/!Tauren Shaman
    .goto The Barrens,51.50,30.87
    .turnin 871 >>Turn in Disrupt the Attacks
    .accept 872 >>Accept The Disruption Ends
step
#era/som
    .goto The Barrens,51.62,30.90
    >>Run up to the top of the tower
    .accept 867 >>Accept Harpy Raiders
step
    .goto The Barrens,52.2,31.0
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
step << Tauren Shaman
    .goto The Barrens,52.2,31.0
    .turnin 842 >>Turn in Crossroads Conscription
step << Warrior
     #sticky
    #completewith next
    +Check if Lizzarik (Goblin) is in Crossroads, if he is, and you have enough money, buy pots and Heavy Spiked Mace.
    .goto The Barrens,52.5,30.7,0
	.unitscan Lizzarik
step << Warrior
    #sticky
    #completewith next
    .collect 4778,1 --Collect Heavy Spiked Mace
step << Warrior
	.goto The Barrens,57.1,25.3,250 >> Run to here
step
    >>Check this location for Chen's Empty Keg. Loot it and start the quest
    .goto The Barrens,55.78,20.00
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #sticky
    #completewith Supplycrate
    >>Kill Razormanes while getting the Crates and killing Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Loot the brown boxes found in the area
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Kill Kreenig Snarlsnout. Loot him for his Tusk
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Supplycrate
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    .goto The Barrens,58.4,27.0,0
    >>Loot the brown boxes found in the area
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>Finish killing the Razormanes
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << Warrior
    >> Loot the Keg here. If it's not up, wait for the respawn
    .goto The Barrens,55.8,20.0
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << !Tauren !Undead
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << !Tauren !Undead
    .goto The Barrens,62.3,20.1
    .turnin 924 >>Turn in The Demon Seed
step << Shaman
    .goto Durotar,38.5,58.9
    .turnin 1525 >>Turn in Call of Fire
    .accept 1526 >>Accept Call of Fire
step << Shaman
    >>Run to the top of the mountain. Click the Brazier
    .goto Durotar,39.0,58.2
    .complete 1526,1 --Glowing Ember (1)
step << Shaman
    .goto Durotar,38.9,58.2
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step << Shaman
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << Shaman
    .goto The Barrens,55.9,19.9
    .turnin 1527 >>Turn in Call of Fire
step << Shaman
     >> Loot the Keg here. If it's not up, wait for the respawn
    .goto The Barrens,55.8,20.0
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << !Shaman
    >>Kill any Zhevras you see. Loot them for Hooves. Make sure you have 4 before entering Ratchet
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Top floor of the building
    .goto The Barrens,62.7,36.3
    .accept 887 >>Accept Southsea Freebooters
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >> Get the Ratchet flight path
step
    .goto The Barrens,63.0,37.2
    .accept 894 >>Accept Samophlange
step
    >>Click the Wanted poster. You can bank here too if you want
    .goto The Barrens,62.6,37.5
    .accept 895 >>Accept WANTED: Baron Longshore
step
    .goto The Barrens,62.4,37.7
    .accept 865 >>Accept Raptor Horns
step << Rogue
    .goto The Barrens,62.2,37.4
	.vendor	>> Go to Ironzar and buy 1-2 Scimitars (if they're better than your current weapons)
step
    .goto The Barrens,62.3,38.4
    .turnin 819 >>Turn in Chen's Empty Keg
    .accept 821 >>Accept Chen's Empty Keg
step
    #sticky
    #label Southsea
    >>Kill Southsea mobs in the area
    .goto The Barrens,62.59,43.99,0
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step << !Undead Rogue
	#sticky
	#completewith next
	>>Kill Tazan. Loot him for his Satchel
    .goto The Barrens,62.59,43.99,0
    .goto The Barrens,63.56,44.35,0
	.unitscan Tazan
	.complete 1963,1 --Tazan's Satchel (1)
step
    .unitscan Baron Longshore
    .goto The Barrens,62.70,49.79
    >>Kill Baron Longshore. He can be found in any of the camps. Loot him for his Head
    .complete 895,1 --Baron Longshore's Head (1)
step << !Undead Rogue
	>>Kill Tazan. Loot him for his Satchel
    .goto The Barrens,62.59,43.99,60,0
    .goto The Barrens,63.56,44.35
	.unitscan Tazan
	.complete 1963,1 --Tazan's Satchel (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
    .turnin 887 >>Turn in Southsea Freebooters
    .accept 890 >>Accept The Missing Shipment
    .turnin 895 >>Turn in WANTED: Baron Longshore
step << Rogue
	.goto The Barrens,62.2,37.4
	.vendor	>> Go to Ironzar and buy 1-2 Scimitars (if they're better than your current weapons)
step << Shaman
	.goto The Barrens,62.2,37.4
	.vendor	>> Buy a Gnarled Staff from Ironzar if it's better than your current weapon
step
    .goto The Barrens,63.3,38.4
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
step
    .goto The Barrens,62.7,36.3
    .turnin 892 >>Turn in The Missing Shipment
    .accept 888 >>Accept Stolen Booty
step << !Warrior
    .goto The Barrens,63.08,37.16
    .fly Crossroads >> Fly to The Crossroads
step << Warrior
    #completewith next
    .goto The Barrens,61.6,37.9,30,0
    .goto The Barrens,52.5,30.7,150 >> Walk via the road to Crossroads, look out for Lizzarik to buy a Heavy Spiked Mace. If he doesn't have it, fly/run to The Crossroads
step << Warrior
    #completewith next
	#label HeavySMace
    .collect 4778,1 --Collect Heavy Spiked Mace
	.unitscan Lizzarik
step << Warrior
	#completewith next
	#requires HeavySMace
	.goto The Barrens,52.5,30.7,150 >> Fly to Crossroads if you're in Ratchet, or Run if you're halfway along the path to Crossroads
step
    .goto The Barrens,51.99,29.89
	.vendor >> Buy level 15 food/water from the Innkeeper
step
    .goto The Barrens,52.2,31.0
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Prowlers of the Barrens
step
    .goto The Barrens,51.5,30.8
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
step << Hunter
    .goto The Barrens,51.0,29.0
	.vendor	>> Check Uthrok for a Fine Longbow, sometimes it's not in the shop. If it's not, buy a Reinforced Longbow
	>>Buy arrows until your quiver is full
step
    #sticky
    #completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step << !Undead !Rogue
	#era
    .goto The Barrens,45.4,28.4
    .accept 850 >>Accept Kolkar Leaders
    .accept 855 >> Accept Centaur Bracers
step << !Undead !Rogue
	#som
    .goto The Barrens,45.4,28.4
    .accept 850 >>Accept Kolkar Leaders
step << Undead/Rogue
    .goto The Barrens,45.4,28.4
    .accept 850 >>Accept Kolkar Leaders
step << !Shaman !Warrior/Undead
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Shaman !Warrior/Undead
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Shaman !Warrior/Undead
    >>Collect the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,60,0
    .goto The Barrens,45.2,22.0,60,0
    .goto The Barrens,44.6,22.5,60,0
    .goto The Barrens,43.9,24.4,60,0
    .goto The Barrens,45.2,23.3
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Undead !Rogue
	#era
    #completewith Leaders
    >>Kill Centaurs. Loot them for their bracers. You'll finish this later
    .complete 855,1 --Centaur Bracers (15)
step
	>>Kill Kodobane. Be careful as he shoots, nets, (then shoots) and hits hard. Loot him for his head
    .goto The Barrens,42.8,23.5
    .complete 850,1 --Kodobane's Head (1)
step << !Undead !Rogue
	#era
    .goto The Barrens,45.39,28.44
   .turnin 850 >> Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
step << !Undead !Rogue
	#era
	.isQuestComplete 855
    .goto The Barrens,45.39,28.44
    .turnin 855 >> Turn in Centaur Bracers
step
	#era
	#label Leaders
    .goto The Barrens,45.39,28.44
   .turnin 850 >> Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish << !Undead !Rogue
step
    #sticky
    #completewith Claws
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith Claws
    .complete 821,1 --Savannah Lion Tusk (5)
step
#som
#phase 3-6
    #label Claws
    >>Kill Prowlers. Loot them for their Claws and Tusks
    .goto The Barrens,53.00,16.00
    .complete 903,1 --Prowler Claws (7)
step
#era/som
    #label Claws
    >>Kill Prowlers. Loot them for their Claws and Tusks
    .goto The Barrens,41.4,24.5,100,0
    .goto The Barrens,40.48,20.36
    .complete 903,1 --Prowler Claws (7)
step
#era/som
    .goto The Barrens,40.2,18.9,90,0
    .goto The Barrens,40.7,14.6,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,40.2,18.9
    >>Kill Harpies. Loot them for their Talons
    .complete 867,1 --Witchwing Talon (8)
step
    #sticky
    #completewith Samophlange
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step << Warrior
#era/som
	#completewith next
    .goto The Barrens,43.8,12.2
	>> Buy the Heavy Spiked Mace from Vrang if it's available << Warrior
    .collect 4778,1 --Collect Heavy Spiked Mace << Warrior
step
#era/som
    .goto The Barrens,43.8,12.2
	.vendor	>> Vendor trash, repair
step
	#label Samophlange
    >>Click on the Control Console
    .goto The Barrens,52.4,11.6
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    >>Click the Valve
    .goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Click the Valve. Mobs will spawn
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
step
    >>Click the Valve. Mobs will spawn
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Click on the Control Console
    .goto The Barrens,52.4,11.6
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
step
    >>Kill Tinkerer Sniggles in the building. Loot him for the Console Key
    .goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
step
    #sticky
    #completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3
    >>Kill Raptors. Loot them for their heads
    .complete 869,1 --Raptor Head (12)
step
    .goto The Barrens,56.5,7.5
    >>Grinding to level 16 here is important, due to the next 3 quests being quite hard.
	.xp 16
step
    .goto The Barrens,56.5,7.5
    .accept 858 >>Accept Ignition
step
    #sticky
	#hardcore
    #completewith next
    +The next 3 quests can be quite hard, be extra careful

step
    >>Kill Supervisor Lugwizzle (He patrols all over the tower). Loot him for the Ignition Key
.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>This will begin an escort. Make sure you're at full health
    .goto The Barrens,56.5,7.5
    .turnin 858 >>Turn in Ignition
    .accept 863 >>Accept The Escape
step
    #label Slugs
    >>2 Mobs will spawn when the shredder moves onto the higher ground. Kill them then wait for his RP event at the end
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    #sticky
    #completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    >>Grind mobs in the area. Kill around 25 mobs, if the Emerald didn't drop skip this quest.
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
	#completewith next
    .goto Orgrimmar,11.5,67.0,50 >>Run to the west entrance of Orgrimmar
step << Mage
    .goto Orgrimmar,38.79,85.68
    .trainer >> Train your class spells
step << Priest
    .goto Orgrimmar,35.59,87.83
    .trainer >> Train your class spells
step << Tauren/Undead
    >>Run to the Flight Master tower. Get the Flight Path. DON'T fly anywhere
    .goto Orgrimmar,45.2,63.8
    .fp Orgrimmar >> Get the Orgrimmar flight path
step
    >>Run to Grommash Hold
    .goto Orgrimmar,39.1,38.1
    .accept 1061 >>Accept The Spirits of Stonetalon
step << Druid
    .goto Orgrimmar,54.2,68.4
	.fly Thunder Bluff >> Fly to Thunder Bluff
step << !Rogue !Undead !Tauren !Shaman !Warrior
    .goto Orgrimmar,54.2,68.4
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >> Accept Doras the Wind Rider Master
step << !Rogue !Undead !Tauren !Shaman !Warrior
    .goto Orgrimmar,45.2,63.8
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
step << Rogue
    .goto Orgrimmar,43.05,53.73
    .trainer >> Train your class spells
	>> Make sure you've trained Pick Lock
    .accept 2379 >> Accept Zando'Zan
	.turnin 1963 >> Turn in The Shattered Hand << !Undead
--	.accept 1858 >> Accept The Shattered Hand
--N ..Make sure you train Pick Pocket
step << Rogue
    .goto Orgrimmar,42.72,52.95
    .turnin 2379 >>Turn in Zando'zan
    .accept 2382 >>Accept Wrenix of Ratchet
step << skip
    >>Pickpocket Gamon in the Inn. Open Tazan's Satchel in your bags
	.goto Orgrimmar,53.99,68.05
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
--N Rogue class q
step << skip
    .goto Orgrimmar,43.05,53.73
	.turnin 1858 >> Turn in The Shattered Hand
--N Rogue class q
step << Warlock
    .goto Orgrimmar,47.99,45.94
    .trainer >> Train your class spells
step << Warlock
    .goto Orgrimmar,47.52,46.70
    .vendor >> Buy Consume Shadows r1 then Sacrifice r1 books (if you have money)
step << Shaman
    .goto Orgrimmar,38.79,36.37
    .trainer >> Train your class spells
step << Warrior
    .goto Orgrimmar,80.39,32.39
    .trainer >> Train your class spells
step << Hunter
    .goto Orgrimmar,66.04,18.52
    .trainer >> Train your class spells
step << Hunter
    .goto Orgrimmar,66.31,14.80
    .trainer >> Train your pet spells
step << Hunter
    .goto Orgrimmar,81.52,19.64
	.train 227 >> Train Staves from Hanashi
step << Druid
	.goto Thunder Bluff,76.4,27.6
	.accept 27 >> Accept A Lesson to Learn
step << Druid
    .zone Moonglade >>Teleport to Moonglade
step << Druid
    >>Upstairs
    .goto Moonglade,56.21,30.64
	.turnin 27 >> Turn in A Lesson to Learn
    .accept 28 >> Accept Trial of the Lake
step << Druid
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
step << Druid
    .goto Moonglade,36.52,40.10
    .turnin 28 >> Turn in Trial of the Lake
--    .accept 30 >> Accept Trial of the Sea Lion
step
    #completewith next
    .hs >>Hearth to Crossroads
step
    .goto The Barrens,51.9,30.3
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
step
    .goto The Barrens,52.3,31.0
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
step << !Rogue !Undead !Tauren !Shaman !Warrior
    .goto The Barrens,52.62,29.84
    .turnin 6386 >> Turn in Return to the Crossroads
step
    >>Use the Horn of Echeyakee in your bags where the bones are to summon Echeyakee. Kill him and loot him for his Hide
    .goto The Barrens,55.80,17.03
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
step << !Warrior !Shaman
    .goto The Barrens,52.20,31.90
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
step
    .goto The Barrens,52.00,31.60
    .accept 899 >> Accept Consumed by Hatred
    .accept 4921 >> Accept Lost in Battle
step
#era/som
    >>Run up to the top of the tower
    .goto The Barrens,51.6,30.9
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
step << !Shaman !Warrior/Undead
    .goto The Barrens,51.50,30.20
    .turnin 848 >> Turn in Fungal Spores
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Fly to Ratchet
step << Rogue
    .goto The Barrens,63.07,36.31
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
step << Rogue
    .goto The Barrens,63.12,36.32
    >>Talk to Wrenix's Gizmotronic Apparatus. Get an E.C.A.C and Thieves' Tools
    .collect 7970,1 --E.C.A.C. (1)
    .collect 5060,1 --Thieves' Tools (1)
step
    .goto The Barrens,63.0,37.2
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >> Turn in The Escape
    .accept 1483 >> Accept Ziz Fizziks
step << Hunter
    .goto The Barrens,63.0,37.2
    .accept 3921 >> Accept Wenikee Boltbucket
step
    .isQuestComplete 896
	.goto The Barrens,63.30,38.40
    .turnin 896 >> Turn in Miner's Fortune
step
    .abandon 896 >> Abandon Miner's Fortune if you haven't done it by now
step
    .goto The Barrens,62.40,37.70
    .accept 1069 >> Accept Deepmoss Spider Eggs
step << Hunter
	#completewith next
	.goto The Barrens,61.92,38.80
	.vendor >> Buy arrows from Jazzik until your quiver is full
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +Jump onto the ship, go down to the 2nd floor and level your lockpicking up to 80
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Drag the E.C.A.C. onto your bars. Go to the bottom floor of the ship and open The Jewel of the Southsea when your lockpicking is at 80
    >>Use the E.C.A.C. on Polly when she spawns from the stairs
    .complete 2381,1 --Southsea Treasure (1)
step
    >>Loot the crate
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Loot the crate
    .goto The Barrens,62.6,49.6
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith CampTa
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    #sticky
    #completewith Nest
    >>Kill any Raptors you see. Loot them for their Horns and Feathers. Be careful as they thrash
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Loot the chest for Stolen Silver
    >>Save any Sunscale feathers you get for later
    .goto The Barrens,57.4,52.4,60,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    >>In the middle of the lake, dive down underwater and click the Bubble Fissure.
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step << !Undead !Rogue
	#era
    >> Grind any Centuar around the lake until they spawn Verog
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
    >>Kill the surrounding Raptors until you get a Sunscale Feather. Loot the Blue Egg when you have one.
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Kill the surrounding Raptors until you get a Sunscale Feather. Loot the Red Egg when you have one.
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Kill the surrounding Raptors until you get a Sunscale Feather. Loot the Yellow Egg when you have one.
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    .goto The Barrens,57.3,53.7
    >>Finish killing Raptors. Loot them for their Horns
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Talk to Mankrik's Wife
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    #label CampTa
    .goto The Barrens,45.6,59.0
    .home >>Set your Hearthstone to Camp Taurajo
step
    .goto The Barrens,44.5,59.2
    .accept 878 >>Accept Tribes at War
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Shaman !Warrior !Tauren
    .fly Crossroads >>Fly to Crossroads
step
    .goto The Barrens,51.9,30.3
    .turnin 3281 >>Turn in Stolen Silver
step
    .goto The Barrens,52.2,31.0
    .turnin 905 >>Turn in The Angry Scytheclaws
    .accept 3261 >>Accept Jorn Skyseer
step
    .goto The Barrens,52.2,31.9
    .turnin 877 >>Turn in The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
step
    .goto The Barrens,52.0,31.6
    .turnin 4921 >>Turn in Lost in Battle
step << Hunter
    .goto The Barrens,51.11,29.07
    .vendor >> Buy a 10 slot quiver from Uthrok.
	>>Fill the 10 slot quiver with Arrows, and then buy 400 extra
step
    #sticky
    #completewith LionT
    .goto The Barrens,47.48,26.02,0
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
	#som
	#label Leaders
    .goto The Barrens,45.39,28.44
   .turnin 850 >> Turn in Kolkar Leaders
step << !Undead !Rogue
	#era
    .goto The Barrens,45.39,28.43
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
step << Undead/Rogue
	#era
    .goto The Barrens,45.39,28.44
   .turnin 850 >> Turn in Kolkar Leaders
step << !Undead !Rogue
	#era
	.isOnQuest 852
    .goto The Barrens,45.87,40.80
    >> Locate & kill Hezrul Bloodmark. He patrols around the Wailing Caverns lake
    .complete 852,1 --Hezrul's Head (1)
	.unitscan Hezrul Bloodmark
step << !Undead !Rogue
	#era
    #sticky
    #completewith next
    +This next quest can be quite hard, be extra careful
    #hardcore
step << !Undead !Rogue
	#era
	.isQuestComplete 852
    .goto The Barrens,45.37,28.43
    .turnin 852 >>Turn in Hezrul Bloodmark
step << !Undead !Rogue
	#era
	.isQuestTurnedIn 852
    .goto The Barrens,45.37,28.43
    .accept 4021 >>Accept Counterattack!
step << !Undead !Rogue
	#era
    #softcore
	.isOnQuest 4021
	>> This quest is very hard & grouping up is recommended. You can kite Warlord Krom'zar around using the building where the quest giver is.
	>> If you can't do it, skip this quest
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N need link of this
step << !Undead !Rogue
	#era
    #hardcore
	.isOnQuest 4021
	>> This quest is HARD. You can kite Warlord Krom'zar around using the building where the quest giver is.
	>> If you can't do it, skip this quest
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N need link of this
step << !Undead !Rogue
	#era
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
    .turnin 4021 >>Turn in Counterattack!
step
#era/som
    #sticky
    #completewith next
    +The slayers has execute, be extra careful
    #hardcore
step
#era/som
    .goto The Barrens,40.3,15.2
    >>Kill Witchwing Slayers. Loot them for Harpy Lieutenant Rings
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    #label LionT
    .goto The Barrens,40.48,20.36,100,0
    .goto The Barrens,41.4,24.5
    >>Kill Savannah Prowlers in the area. Loot them for their Tusks
    .complete 821,1 --Savannah Lion Tusk (5)
step
	.goto The Barrens,35.3,27.9
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .accept 6548 >> Accept Avenge My Village
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 17-22 Stonetalon/Barrens/Ashenvale
#version 1
#group RestedXP Horde 1-22
#next RestedXP Horde 22-30\22-24 Hillsbrad

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2
    >>Kill Grimtotems in the area
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.2,27.8
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
step
    #sticky
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Run up the path to the bonfire here. Try to avoid mobs
step
    >>Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Start the Kaya Escort
    .goto Stonetalon Mountains,73.5,85.8
    .accept 6523 >> Accept Protect Kaya
step
    #sticky
    #completewith next
    +3 mobs spawn at the end, be careful
    #hardcore
step
     >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
    .accept 6461 >> Accept Blood Feeders
step << Warlock
    >>Click the Wanted poster
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step << Warlock
    .goto Stonetalon Mountains,57.5,76.2,30 >>Run up the path here to Sishir Canyon
step  << Warlock
    #sticky
    #completewith Ziz
    >>Click the spider eggs near the trees
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step  << Warlock
    >>Kill the Deepmoss Spiders in the area
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step  << !Warlock
    >>Kill the Deepmoss Spiders in the area
    .goto Stonetalon Mountains,62.40,61.46
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step << Warlock
    >>Clear the area out around Besseleth. Be careful as he webs you. Keep him permanently feared with dots
    >>This quest is optional. If you can't do it, skip this quest. You can try it again later
    .complete 6284,1 --Collect Besseleth's Fang (x1)
step
    #label Ziz
	.goto Stonetalon Mountains,59.0,62.6
    .turnin 1483 >> Turn in Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #completewith next
    +This next quest can be quite hard, be extra careful. The level 14 spiders can spawn level 22 spiders.
    #hardcore
step
    .goto Stonetalon Mountains,62.40,61.46
    >>Click the spider eggs near the trees
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #sticky
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Kill Venture Co. Operators until you get the Blueprints
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    .goto Stonetalon Mountains,62.8,53.7
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Finish killing Loggers
    .goto Stonetalon Mountains,64.1,56.7,100,0
    .goto Stonetalon Mountains,73.4,54.3
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
   	 .goto Stonetalon Mountains,58.2,51.6
	>> Go buy a Kris from Veenix << Rogue
	.collect 2209,1 << Rogue
--N other weapons for other classes?
step
	#completewith next
	+If you have over 15 Deepmoss Eggs, split the stack of any extras (shift click), then delete them
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
step << Druid
	>> Use the spell Teleport to Moonglade
   	 .goto Moonglade,52.5,40.5
	.trainer >> Go and train your class spells
step
    .hs >> Hearth to Camp Taurajo
	.vendor >> Buy food/water if needed
step
    .goto The Barrens,44.9,59.1
    .turnin 3261 >>Turn in Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
step
	#completewith QuillboarAndy
    .goto The Barrens,44.84,47.69,0
    >>Kill Stormstouts. Loot them for a Horn
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
step
	#label QuillboarAndy
    >>Kill a LOT of Quillboars. Loot them for their tusks. Save the Blood Shards you get
	.goto The Barrens,44.3,52.3,100,0
    .goto The Barrens,47.1,53.3,100,0
    .goto The Barrens,45.2,54.3,100,0
	.goto The Barrens,44.3,52.3,100,0
    .goto The Barrens,47.1,53.3,100,0
    .goto The Barrens,45.2,54.3,100,0
	.goto The Barrens,44.3,52.3,100,0
    .goto The Barrens,47.1,53.3,100,0
    .goto The Barrens,45.2,54.3,100,0
	.goto The Barrens,44.3,52.3,100,0
    .goto The Barrens,47.1,53.3,100,0
    .goto The Barrens,45.2,54.3,100,0
    .goto The Barrens,52.90,53.53
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    .goto The Barrens,44.84,47.69
    >>Kill Stormstouts. Loot them for a Horn
    .complete 821,3 --Thunder Lizard Horn (1)
step
    .goto The Barrens,53.48,48.23
    >>Finish getting Kidneys from Plainstriders
    .complete 821,2 --Plainstrider Kidney (5)
step
    >>Go around the lake and kill Turtles. Loot them for their Shells
.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
    >>Kill a Zhevra in the area. Loot it for a Carcass
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
    >>Use the Fresh Zhevra Carcass at the dead tree to summon Ishamuhale. Kill and loot him for his Fang
.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step << Rogue
   >>Run back to Ratchet
    .goto The Barrens,63.07,36.31
    .turnin 2381 >>Turn in Plundering the Plunderers
step
.goto The Barrens,62.7,36.3
    >>Run back to Ratchet << !Rogue
    .turnin 888 >>Turn in Stolen Booty
step
    .goto The Barrens,63.0,37.2
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
step
    .goto The Barrens,62.4,37.6
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
step
    .goto The Barrens,62.3,38.4
    .turnin 821 >>Turn in Chen's Empty Keg
step << Warrior
    .goto The Barrens,62.2,38.4
    .vendor >> Check for Mighty Chain Pants from Grazlix. Buy them if you have money
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.2,38.5
    .vendor >> Check for Wolf Bracers from Vexspindle. Buy them if you have money
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Fly to Crossroads
step
    .goto The Barrens,52.2,31.9
    .turnin 880 >>Turn in Altered Beings
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
step
    .goto The Barrens,52.0,31.6
    .turnin 899 >>Turn in Consumed by Hatred
step
#era/som
    >>Run up to the top of the tower
    .goto The Barrens,51.60,30.90
    .turnin 875 >> Turn in Harpy Lieutenants
    .accept 876 >> Accept Serena Bloodfeather
step << !Tauren !Shaman !Warrior
    >>This starts a timed quest
    .goto The Barrens,51.4,30.2
    .accept 853 >>Accept Apothecary Zamah
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Fly to Camp Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Kill Quillboars for a Blood Shard
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
    .turnin 878 >>Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
step << Tauren/Warrior/Shaman
    +Use your Blood Shards on any buff from Mangletooth
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
    .turnin 883 >>Turn in Lakota'mani
    .isOnQuest 883
step
	.goto The Barrens,44.8,59.1
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .accept 1130 >>Accept Melor Sends Word
    .accept 6382 >>Accept The Ashenvale Hunt
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
step
    #label BloodShard
	.goto The Barrens,42.5,60.3,100,0
    .goto The Barrens,47.1,63.7,100,0
    .goto The Barrens,50.0,61.1,100,0
	.goto The Barrens,42.5,60.3
    >>Kill Thunder Lizards. Loot them for their blood
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
step
    .goto The Barrens,44.9,59.1
    .turnin 884 >>Turn in Owatanka
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
step
    .goto The Barrens,44.8,63.2,100,0
    .goto The Barrens,47.0,61.6
    >>Kill a Thunderhawk. Loot it for its Wings
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
step << !Tauren !Warrior !Shaman
    #completewith next
    .goto The Barrens,44.54,59.27
    >>Turn in your Blood Shards for the Spirit of the Wind buff from Mangletooth. If you accidentally sold any shards, skip this step
    .turnin 889 >> Turn in Spirit of the Wind
step << !Tauren !Warrior !Shaman
    .goto Thunder Bluff,32.0,66.9,40 >>Run to the lift and take it into Thunder Bluff
step << Tauren/Warrior/Shaman
    .goto The Barrens,44.5,59.1
    .fly Thunder Bluff >>Fly to Thunder Bluff
step << Warlock/Priest
    .goto Thunder Bluff,41.2,61.4
	.trainer >> Train the Staves skill
step << Rogue
    .goto Thunder Bluff,41.2,61.4
	.trainer >> Train the Mace skill
step
    .goto Thunder Bluff,45.9,64.7
    .home >>Set your Hearthstone to Thunder Bluff
step << Shaman/Warrior
	#softcore
    #sticky
    #completewith next
    +If it's cheaper, buy a green 2h mace from the Auction House
step << Shaman/Warrior
    .goto Thunder Bluff,53.2,58.2
    >>Buy a Maul from Etu if it's an upgrade
    .collect 924,1
step << Rogue
    .goto Thunder Bluff,53.2,56.8
     >> Buy a Longsword from Kard if it's an upgrade
    .collect 923,1
step << skip
    .goto Thunder Bluff,61.4,80.9
    .turnin 1130 >>Turn in Melor Sends Word
    .accept 1131 >>Accept Steelsnap
step << Hunter
	#era
    .goto Thunder Bluff,59.15,86.88
    .trainer >> Train your class spells
step << Hunter
	#era
    .goto Thunder Bluff,54.10,83.97
    .trainer >> Train your pet skills
step << Warrior
	#era
    .goto Thunder Bluff,57.2,87.4
    .accept 1823 >>Accept Speak with Ruga
    .trainer >> Train your class spells
step << Druid
	#era
    .goto Thunder Bluff,77.0,29.9
	.trainer >> Go and train your class spells
step << !Tauren !Warrior !Shaman
    #completewith next
    .goto Thunder Bluff,30.1,30.0,15 >>Go into The Pools of Vision
step << !Tauren !Warrior !Shaman
    #sticky
	#label UntilD
    .goto Thunder Bluff,28.4,27.7
    .accept 264 >>Accept Until Death Do Us Part
step << !Tauren !Warrior !Shaman
    .goto Thunder Bluff,23.00,21.00
    .turnin 853 >> Turn in Apothecary Zamah
step << Priest
	#era
    .goto Thunder Bluff,24.56,22.60
    .trainer >> Train your class spells
step << Mage
	#era
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Train your class spells
step << Shaman
	#era
    .goto Thunder Bluff,25.1,20.6
    .trainer >> Train your class spells
step << Hunter
    .goto Thunder Bluff,46.8,45.8
     >> Buy a Heavy Recurve Bow from Kuna if it's an upgrade. Also buy arrows to fill your quiver
    .collect 3027,1
step << !Tauren !Shaman !Warrior
	#requires UntilD
    .goto Thunder Bluff,46.9,49.9
    .fp Thunder Bluff >> Get the Thunder Bluff flight path
step << !Warlock/!Shaman
	#som
    .goto The Barrens,51.50,30.34
	.fly Orgrimmar >> Fly to Crossroads
step << Warlock/Shaman
	#som
    .goto The Barrens,51.50,30.34
	.fly Orgrimmar >> Fly to Orgrimmar
step << Shaman
	#som
    .goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Shaman
	#som
    .goto Orgrimmar,37.95,37.73
	.accept 1528 >> Accept Call of Water
step << Warlock
	#som
    .goto Orgrimmar,48.15,45.28
    .accept 1507 >>Accept Devourer of Souls
	.trainer >> Train your class spells
step << Warlock
	#som
    .goto Orgrimmar,47.5,46.7
	.vendor >> Buy your pet spell upgrades if you have the money.
step << Warlock
	#som
    .goto Orgrimmar,47.20,46.61
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
step << Warlock
	#som
    .goto Orgrimmar,37.26,59.63
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
step << Warlock
	#som
    .goto Orgrimmar,44.4,48.6
    .collect 5211,1 >> Buy Dusk Wand if you have the money for it.
step << Warlock/Shaman
	#som
    .goto Orgrimmar,45.13,63.88
	.fly Crossroads >> Fly to The Crossroads
step << Warlock
	#som
    .goto The Barrens,51.9,30.3
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
step
#era/som
    >>Kill Serena Bloodfeather. Loot her for her Head
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
    .turnin 1062 >>Turn in Goblin Invaders
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .accept 1063 >>Accept The Elder Crone
    .accept 1068 >> Accept Shredding Machines
step << Warlock
	>>Run up the path to the left
    .goto Stonetalon Mountains,82.19,98.62,60,0
    .goto Stonetalon Mountains,75.77,97.32,60,0
    .goto Stonetalon Mountains,73.2,95.1
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
step
	>>Run up the path to the left, then go into the cave << !Warlock
    .goto Stonetalon Mountains,82.19,98.62,60,0 << !Warlock
    .goto Stonetalon Mountains,75.77,97.32,60,0 << !Warlock
    .goto Stonetalon Mountains,74.21,97.10,50,0
    .goto Stonetalon Mountains,74.53,97.94
    .accept 1058 >> Accept Jin'Zils Forest Magic
	#era
step
    .goto Stonetalon Mountains,71.3,95.1
    .turnin 6461 >>Turn in Blood Feeders
step << Hunter
    >>Click the Wanted poster
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step << Hunter
    .goto Stonetalon Mountains,52.61,71.85
    >>Clear the area out around Besseleth. Be careful as he can web
    >>This quest is optional. If you can't do it, skip this quest
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
	>>Run up the path to the left
    .goto Stonetalon Mountains,49.08,62.44,40,0
    .goto Stonetalon Mountains,48.61,63.22,40,0
    .goto Stonetalon Mountains,47.3,64.2
    .accept 6562 >>Accept Trouble in the Deeps
    .accept 6393 >> Accept Elemental War
step << Hunter
	.isQuestComplete 6284
    .goto Stonetalon Mountains,47.20,61.16
	.turnin 6284 >> Turn in Arachnophobia
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>> Get the Sun Rock Retreat flight path
step
    .goto Stonetalon Mountains,47.5,58.4
--    .accept 6301 >> Accept Cycle of Rebirth
    .turnin 6401 >>Turn in Kaya's Alive
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1095 >>Turn in Further Instructions
step
	#era
    .unitscan XT:9
    >>Kill XT:9. It patrols the southern side of the river
    .goto Stonetalon Mountains,60.23,53.04,90,0
    .goto Stonetalon Mountains,71.04,57.76
    .complete 1068,2 --XT:9 (1)
step
	#era
    .unitscan XT:4
    >>Kill XT:4. It patrols the northern side of the river
    .goto Stonetalon Mountains,71.30,44.12,90,0
    .goto Stonetalon Mountains,63.96,47.37
    .complete 1068,1 --XT:4 (1)
step
	.goto Stonetalon Mountains,78.2,42.8,40,0
	.goto Ashenvale,42.3,71.0,20    >> Go to Talondeep Path. Run through the cave to Ashenvale
step
	#completewith next
	.goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
step
     #completewith next
    .goto Ashenvale,12.20,33.80
    .fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
step
	#sticky
	#label VorshaL
    .goto Ashenvale,12.06,34.63
     >> Start the escort quest. Be careful as it's difficult, and be quick doing the next 2 steps
    .accept 6641 >> Accept Vorsha the Lasher
step
	>>Take all the quests in Zoram'gar
    .goto Ashenvale,11.60,34.30
    .turnin 6562 >> Turn in Trouble in the Deeps
    .accept 6442 >> Accept Naga at the Zoram Strand
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .accept 6462 >> Accept Troll Charm
--N might need to be changed back to accepting later depending on no. of quests in log
step
    #sticky
    #completewith next
    +This next quest can be quite hard, be extra careful. The boss deals a lot of damage.
    #hardcore
step
	#requires VorshaL
    >>Click the Brazier when you get there.
    >>There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get some aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
step
    .goto Ashenvale,15.00,20.67
    >>Kill Nagas. Loot them for their Heads
    .complete 6442,1 --Wraithtail Head (20)
step << !Druid
    .goto Ashenvale,7.00,15.20
.xp 21+18070 >> Grind to 18070+/25200 xp
step << Druid
    .goto Ashenvale,7.00,15.20
.xp 21+18070 >> Grind to 21450+/25200 xp
step
    #sticky
	#label Vorsha
    .goto Ashenvale,12.20,34.30
    .turnin 6641 >> Turn in Vorsha the Lasher
step
    .goto Ashenvale,11.70,34.80
    .turnin 6442 >> Turn in Naga at the Zoram Strand
step << Druid
	#requires Vorsha
	>> Use the spell Teleport to Moonglade
    .goto Moonglade,52.5,40.5
.trainer >> Go and train your class spells
step
	#requires Vorsha
    #completewith next
    .hs >> Hearth Thunder Bluff
step
    .goto Thunder Bluff,54.60,51.40
	#requires Vorsha
	.accept 1195 >> Accept The Sacred Flame
step
    .goto Thunder Bluff,70.00,30.90
    .turnin 1063 >> Turn in The Elder Crone
    .accept 1064 >> Accept Forsaken Aid
step
    .goto Thunder Bluff,78.62,28.56
    .turnin 1489 >> Turn in Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
step
    .goto Thunder Bluff,75.65,31.62
    .turnin 1490 >> Turn in Nara Wildmane
step << Tauren/Warrior/Shaman
	>>Go into The Pools of Vision
    .goto Thunder Bluff,30.1,30.0,25,0
    .goto Thunder Bluff,28.4,27.7
    .accept 264 >>Accept Until Death Do Us Part
step
    .goto Thunder Bluff,23.00,21.0
   .turnin 1064 >> Turn in Forsaken Aid
   .accept 1065 >> Accept Journey to Tarren Mill
step << Priest
    .goto Thunder Bluff,25.4,15.0
	.accept 5644 >> Accept Devouring Plague
step << Shaman
    .goto Thunder Bluff,25.1,20.6
	.accept 1529 >>Accept Call of Water
step
    .goto Thunder Bluff,54.70,51.30
    .accept 1195 >> Accept The Sacred Flame
step << Warlock
    .goto Thunder Bluff,46.8,50.0
    .fly Camp Taurajo >>Fly to Camp Taurajo
step << Warlock
    .goto The Barrens,44.6,59.3
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
step << Warlock
	.goto The Barrens,43.3,47.9
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
step << Warlock
	.goto The Barrens,44.4,59.0
    .fly Crossroads >>Fly to The Crossroads
step << !Warlock
    .goto Thunder Bluff,46.8,50.0
    .fly Crossroads >>Fly to The Crossroads
step
#era/som
    .goto The Barrens,51.60,30.90
    .turnin 876 >> Turn in Serena Bloodfeather
    .accept 1060 >> Accept Letter to Jin'Zil
step
    .goto The Barrens,51.10,29.60
    .accept 868 >> Accept Egg Hunt
step
    .goto The Barrens,51.50,30.87
    .accept 6541 >>Accept Report to Kadrak
step << Hunter
    .goto The Barrens,49.00,11.20
    .turnin 3921 >> Turn in Wenikee Boltbucket
step
	>>Go to the 2nd floor of the tower
    .goto The Barrens,48.12,5.42
    .turnin 6541 >>Turn in Report to Kadrak
--    .accept 6543 >>Accept The Warsong Reports
step << Hunter
    .goto Ashenvale,68.30,75.30
     >> Start the escort quest
    .accept 6544 >> Accept Torek's Assault
step << Hunter
     .goto Ashenvale,64.74,75.35,0
     >> Escort Torek. When you kill the mobs 4 inside, run to the end platform (as more mobs will spawn), and let the orcs take aggro
     >> Kill the mobs that have aggro on Torek, then kill the rest.
    .complete 6544,1 --Take Silverwing Outpost. (1)
step << Hunter
    .goto Ashenvale,73.00,62.50
    .turnin 6544 >> Turn in Torek's Assault
step << Hunter
    .goto Ashenvale,73.78,61.46
    .turnin 6382 >> Turn in The Ashenvale Hunt
    .turnin 6383 >> Turn in The Ashenvale Hunt
step << Hunter
    .goto Ashenvale,73.13,61.54
    .fly Orgrimmar >>Fly to Orgrimmar
	.maxlevel 24
step << Shaman
    .goto The Barrens,51.5,30.4
    .fly Ratchet >>Fly to Ratchet
step << Shaman
	#completewith call
    .goto The Barrens,65.8,43.8
    .turnin 1528 >>Turn in Call of Water
step << Shaman
	#completewith next
    .goto The Barrens,65.8,43.8
    .turnin 1529 >>Turn in Call of Water
step << Shaman
	#label call
    .goto The Barrens,65.8,43.8
    .accept 1530 >>Accept Call of Water
    .turnin 874 >>Turn in Mahren Skyseer
step << Shaman
    .goto The Barrens,63.1,37.1
    .fly Camp Taurajo >>Fly to Camp Taurajo
step << Shaman
    .goto The Barrens,45.6,59.0
    .home >>Set your Hearthstone to Camp Taurajo
step << Shaman
    .goto The Barrens,43.4,77.4
    .turnin 1530 >>Turn in Call of Water
    .accept 1535 >>Accept Call of Water
step << Shaman
    .goto The Barrens,44.1,76.9
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.4,77.4
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
step << !Hunter !Mage
	#era/som
    .goto The Barrens,51.5,30.3 << !Shaman
    .goto The Barrens,44.5,59.1 << Shaman
    .fly Orgrimmar >>Fly to Orgrimmar
step << !Hunter !Mage !Shaman !Rogue !Warlock
	#som
	#phase 3-6
    .goto The Barrens,51.5,30.3 << !Shaman
    .goto The Barrens,44.5,59.1 << Shaman
    .fly Orgrimmar >>Fly to Orgrimmar
	.maxlevel 24
step << Shaman/Rogue/Warlock
    .goto The Barrens,51.5,30.3
    .fly Orgrimmar >>Fly to Orgrimmar
step << Mage
	#som
	.zone Orgrimmar >> Teleport or Fly to Orgrimmar
	.maxlevel 24
]])
