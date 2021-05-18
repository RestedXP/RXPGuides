RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde
#name 13-23 The Barrens
#next 23-27 Hillsbrad / Ashenvale
step << Warrior
.goto The Barrens,57.9,25.5,20 >>Run up the mountain here
step << Warrior
    >>Go to the top of the mountain
.goto The Barrens,57.2,30.3
    .turnin 1502 >>Turn in Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
step << Warrior
    #sticky
    #label Steel
    >>Loot the gray chest for Forged Steel Bars
.goto The Barrens,55.0,26.7
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #sticky
    #completewith next
#requires Steel
    .goto The Barrens,54.7,28.0,20 >>You can run up the mountain here
step << Warrior
    #requires Steel
.goto The Barrens,57.2,30.3
    .turnin 1503 >>Turn in Forged Steel
step << Shaman
    #sticky
>>Kill and Loot Razormanes for Fire Tar
    .complete 1525,1 --Fire Tar (1)
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
step
    #sticky
    #completewith next
    >>If the Flawed Power Stone in your bags has less than 10 minutes left, drop it, then go back and loot the Purple Stone next to Ak'Zeloth again
    .turnin 926 >>Turn in Flawed Power Stone
step
    #sticky
#completewith BeakCave
>>Kill some Plainstriders en route if you have time on Flawed Power Stone. Loot them for Beaks
    .complete 844,1 --Plainstrider Beak (7)
step
.goto The Barrens,50.4,22.0,20 >>Run up the mountain here
step
    #label BeakCave
.goto The Barrens,47.6,19.2,20 >>Go to the cave surrounded by Burning Blade orcs
step
    >>Right click the Altar
.goto The Barrens,48.0,19.1
.collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step
    >>Kill Plainstriders. Loot them for Beaks
.goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step
    .goto The Barrens,52.6,29.9
    .turnin 6386 >>Turn in Return to the Crossroads.
step
    >>Top of the tower
.goto The Barrens,51.5,30.9
    .turnin 871 >>Turn in Disrupt the Attacks
    .accept 872 >>Accept The Disruption Ends
    .accept 867 >>Accept Harpy Raiders
step
    .goto The Barrens,52.2,31.0
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
step
     #sticky
    #completewith next
>> Check if Lizzarik (Goblin) is in Crossroads, if he is, and you have enough money, buy pots and Heavy Spiked Mace.
    .goto The Barrens,52.5,30.7,10,0
step
    #sticky
    #completewith next
.collect 4778,1 --Collect Heavy Spiked Mace
step
    #sticky
    #completewith Crates
    >>Kill Razormanes while getting the Crates and killing Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith Kreenig
>>Loot the crates found in the area
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
>>Kill Kreenig Snarlsnout. Loot him for his Tusk
.goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #sticky
    #completewith next
>>Find the Crates
.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
step
#label Crates
>>Loot the crates found in the area
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
step
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step
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
step
    >>Kill any Zhevras you see. Loot them for Hooves. Make sure you have 4 before entering Ratchet
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Top floor of the building
.goto The Barrens,62.7,36.3
    .accept 887 >>Accept Southsea Freebooters
step
    .goto The Barrens,63.1,37.1
    .fp >>Get the Ratchet Flight Path
step
    .goto The Barrens,63.0,37.2
    .accept 894 >>Accept Samophlange
step
    .goto The Barrens,63.1,37.6
    .accept 959 >>Accept Trouble at the Docks
step
    >>Click the Wanted poster. You can bank here too if you want
.goto The Barrens,62.6,37.5
    .accept 895 >>Accept WANTED: Baron Longshore
step
    .goto The Barrens,62.4,37.7
    .accept 865 >>Accept Raptor Horns
step
    .goto The Barrens,62.3,38.4
    .turnin 819 >>Turn in Chen's Empty Keg
    .accept 821 >>Accept Chen's Empty Keg
step
    .home >>Set your Hearthstone to Ratchet
step
    #sticky
    #completewith next
    >>Kill Southsea mobs in the area
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
.goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
.goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
.goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    >>Kill Baron Longshore. Loot him for his Head
    .complete 895,1 --Baron Longshore's Head (1)
step
    >>Finish killing the Southsea mobs
.goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
.goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
.goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,62.7,36.3
    .turnin 887 >>Turn in Southsea Freebooters
    .accept 890 >>Accept The Missing Shipment
    .turnin 895 >>Turn in WANTED: Baron Longshore
step
    .goto The Barrens,63.3,38.4
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
step
    .goto The Barrens,62.4,37.6
    .accept 1069 >>Accept Deepmoss Spider Eggs
step
    .goto The Barrens,62.7,36.3
    .turnin 892 >>Turn in The Missing Shipment
    .accept 888 >>Accept Stolen Booty
step
    #sticky
    #completewith next
.goto The Barrens,61.6,37.9,30,0
    .goto The Barrens,52.5,30.7,150 >> Walk via the road to Crossroads, look out for Lizzarik to buy a Heavy Spiked Mace. If he doesn't have it, fly/run to Crossroads instead and Turn in Supplies for the Crossroads
step
    #sticky
    #completewith next
.collect 4778,1 --Collect Heavy Spiked Mace
step
    .goto The Barrens,51.5,30.8
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
step
    .goto The Barrens,52.0,31.6
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
step
    .goto The Barrens,52.2,31.0
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Prowlers of the Barrens
step
    #sticky
    #completewith next
>>Kill Plainstriders. Loot them for their Kidneys 
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.4,28.4
    .accept 850 >>Accept Kolkar Leaders
step
>>Kill Kodobane. Loot him for his head
.goto The Barrens,42.8,23.5
    .complete 850,1 --Kodobane's Head (1)
step
    #sticky
    #completewith Claws
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith Claws
.goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
.goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
>>Kill Prowlers. Loot them for their Claws and Tusks
.goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
.goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
.goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Kill Harpies. Loot them for their Talons
    .complete 867,1 --Witchwing Talon (8)
step
    #sticky
    #completewith next
>>Kill Plainstriders. Loot them for their Kidneys 
    .complete 821,2 --Plainstrider Kidney (5)
step
.goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
.goto The Barrens,42.6,15.1,40,0
.goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
.goto The Barrens,42.6,15.1,40,0
>>Kill Raptors. Loot them for their heads
    .complete 869,1 --Raptor Head (12)
step
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
    #completewith next
    .hs >>Hearth to Ratchet
step
    .goto The Barrens,63.0,37.2
    .turnin 902 >>Turn in Samophlange
    .accept 3921 >>Accept Wenikee Boltbucket
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Fly to Crossroads
step
    .goto The Barrens,51.9,30.3
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
step
    >>Top of the tower
.goto The Barrens,51.6,30.9
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
step
    .goto The Barrens,52.3,31.0
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
step
    #sticky
    #completewith LionTusks
>>Kill Plainstriders. Loot them for their Kidneys 
    .complete 821,2 --Plainstrider Kidney (5)
step
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
    >>Kill Witchwing Slayers. Loot them for Harpy Lieutenant Rings
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,49.0,11.2
    .turnin 3921 >>Turn in Wenikee Boltbucket
    .accept 3922 >>Accept Nugget Slugs
step
    #label LionTusks
.goto The Barrens,54.3,14.7
    >>Kill Savannah Prowlers in the area. Loot them for their Tusks
    .complete 821,1 --Savannah Lion Tusk (5)
step
    >>Use the Horn of Echeyakee in your bags to summon Echeyakee. Kill him and loot him for his Hide
.goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    #sticky
    #completewith Slugs
>>Loot the buckets on the ground in the area
    .complete 3922,1 --Nugget Slug (15)
step
    >>Accept Ignition from the Shredder
.goto The Barrens,56.5,7.5
    .accept 858 >>Accept Ignition
step
    >>Kill Supervisor Lugwizzle (He patrols all over the tower). Loot him for the Ignition Key
.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>This will begin an escort
.goto The Barrens,56.5,7.5
    .turnin 858 >>Turn in Ignition
    .accept 863 >>Accept The Escape
step
    #label Slugs
>>2 Mobs will spawn at some point. Kill them then wait for his RP event at the end
.goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
.goto The Barrens,56.2,9.5,40,0
    .goto The Barrens,57.4,8.6,40,0
    .goto The Barrens,57.2,7.3,40,0
    .goto The Barrens,55.7,7.3,40,0
.goto The Barrens,56.2,9.5,40,0
    .goto The Barrens,57.4,8.6,40,0
    .goto The Barrens,57.2,7.3,40,0
    .goto The Barrens,55.7,7.3,40,0
>>Finish looting the buckets on the ground in the area
    .complete 3922,1 --Nugget Slug (15)
step
    >>Grind mobs in the area. Loot them until Cats Eye Emerald drops
.goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
.goto Orgrimmar,11.5,67.0,30    >>Run to the west entrance of Orgrimmar
step
    >>Hug the left side. Run to Grommash Hold
.goto Orgrimmar,39.1,38.1
    .accept 1061 >>Accept The Spirits of Stonetalon
step << Shaman
    .goto Orgrimmar,38.8,36.4
.train 8045 >> Train Earth Shock r3
.train 8019 >> Train Rockbiter Weapon r3
.train 325 >> Train Lightning Shield r2
.train 526 >> Train Cure Poison
.train 8154 >>Train Stoneskin Totem r2
step << Warrior
    .goto Orgrimmar,80.4,32.4
    .train 1160 >> Train Demoralizing Shout r1
    .train 285 >> Train Heroic Strike r3
step << !Tauren !Undead
    >>Run to the Flight Master tower
.goto Orgrimmar,45.2,63.8
    .fly Crossroads >>Fly to Crossroads
step << Tauren/Undead
    >>Run to the Flight Master tower. Get the Flight Path
.goto Orgrimmar,45.2,63.8
.fp >>Get the Orgrimmar Flight Path
    .fly Crossroads >>Fly to Crossroads
step
    >>Top of the tower
.goto The Barrens,51.6,30.9
    .turnin 875 >>Turn in Harpy Lieutenants
    .accept 876 >>Accept Serena Bloodfeather
step
    .goto The Barrens,52.2,31.0
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Fly to Ratchet
step
    .goto The Barrens,63.0,37.2
    .turnin 863 >>Turn in The Escape
    .accept 1483 >>Accept Ziz Fizziks
step
    .goto The Barrens,63.3,38.4
    .turnin 896 >>Turn in Miner's Fortune
step
    >>Loot the crate
.goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Loot the crate
.goto The Barrens,62.6,49.6
    .complete 888,1 --Shipment of Boots (1)
step
.goto The Barrens,57.4,52.4,30 >>Run to the Raptor Grounds
step
    #sticky
    #completewith Nest
>>Kill any raptors you see. Loot them for their Horns and Feathers. Be careful as they thrash
    .complete 865,1 --Intact Raptor Horn (5)
step
>>Loot the chest for Stolen Silver
.goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    >>Click the Bubble Fissure underwater
.goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    >>Click the egg. You need the sunscale feathers from the raptors
.goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Click the egg. You need the sunscale feathers from the raptors
.goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
>>Click the egg. You need the sunscale feathers from the raptors
.goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
.goto The Barrens,57.3,53.7,40,0
.goto The Barrens,52.0,46.5,40,0
.goto The Barrens,57.3,53.7,40,0
.goto The Barrens,52.0,46.5,40,0
.goto The Barrens,57.3,53.7,40,0
.goto The Barrens,52.0,46.5,40,0
.goto The Barrens,57.3,53.7,40,0
.goto The Barrens,52.0,46.5,40,0
>>Finish killing Raptors. Loot them for their Horns
    .complete 865,1 --Intact Raptor Horn (5)
step
    .goto The Barrens,49.3,48.5
>>Kill Plainstriders in the area. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    >>Talk to Mankrik's Wife
.goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>Set your Hearthstone to Camp Taurajo
step
    .goto The Barrens,44.5,59.2
    .accept 878 >>Accept Tribes at War
step
    .goto The Barrens,44.5,59.2
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
step
    .goto The Barrens,49.0,11.2
    .turnin 3922 >>Turn in Nugget Slugs
    .accept 3923 >>Accept Rilli Greasygob
step
    >>Kill Serena Bloodfeather. Loot her for her Head
.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .accept 6548 >> Accept Avenge My Village
step
.goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
.goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
>>Kill Grimtotems in the area
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.2,27.8
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
step
.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
step
    .goto Stonetalon Mountains,71.4,95.1
    .accept 6461 >> Accept Blood Feeders
step
    #sticky
    #completewith next
.goto Stonetalon Mountains,71.7,86.7,40 >>Run to the path here
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
       >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    >>Click the Wanted poster
.goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step
.goto Stonetalon Mountains,57.5,76.2,30 >>Run up the path here to Sishir Canyon
step
#sticky
#label deepmossegg
>>Click the spider eggs near the trees
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
>>Kill the Deepmoss Spiders and Besseleth in the area
.goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
.goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
.complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6284,1 --Collect Besseleth's Fang (x1)
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1483 >> Turn in Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
.complete 1062,1 --Kill Venture Co. Logger (x15)
step
    >>Kill Venture Co. Operators until you get the Blueprints
.goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
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
.goto Stonetalon Mountains,73.4,54.3,40,0
.complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
step
#requires deepmossegg
    .hs >> Hearth to Camp Taurajo
step
    .goto The Barrens,44.9,59.1
    .turnin 3261 >>Turn in Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
step
    #sticky
    #label Lizard
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
.collect 5099,1, --Collect Hoof of Lakota'Mani
.accept 883 >>Accept Lakota'Mani
step
    >>Kill a LOT of Quillboars. Loot them for their tusks. Save the Blood Shards you get
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #requires Lizard
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
step
    >>Run back to Ratchet
.goto The Barrens,62.7,36.3
    .turnin 888 >>Turn in Stolen Booty
step
    .goto The Barrens,63.0,37.2
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
step
    .goto The Barrens,62.4,37.6
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .accept 1491 >>Accept Smart Drinks
step
    .goto The Barrens,62.3,38.4
    .turnin 821 >>Turn in Chen's Empty Keg
step << Warrior
    .goto The Barrens,62.2,38.4
    .vendor >> Check for Mighty Chain Pants from Grazlix. Buy them if you have money
step
    .goto The Barrens,62.2,38.5
    .vendor >> Check for Wolf Bracers from Vexspindle. Buy them if you have money
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Fly to Crossroads
step
    >>Top of the tower
.goto The Barrens,51.6,30.9
    .turnin 876 >>Turn in Serena Bloodfeather
    .accept 1060 >>Accept Letter to Jin'Zil
step
    .goto The Barrens,52.0,31.6
    .turnin 899 >>Turn in Consumed by Hatred
step
    .goto The Barrens,52.2,31.9
    .turnin 880 >>Turn in Altered Beings
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Fly to Camp Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Kill Quillboars for a Blood Shard
.collect 5075 --Collect Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
    .turnin 878 >>Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
step
#completewith BloodShard
+Use your Blood Shards on any buff from Mangletooth
step
    .isOnQuest 883
.goto The Barrens,44.8,59.1
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .turnin 883 >>Turn in Lakota'mani
    .accept 1130 >>Accept Melor Sends Word
    .accept 6382 >>Accept The Ashenvale Hunt
step
#label BloodShard
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
.goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
>>Kill Thunder Lizards. Loot them for their blood
    .complete 907,1 --Thunder Lizard Blood (3)
step
.goto The Barrens,44.9,59.1
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .turnin 884 >>Turn in Owatanka
step
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
    >>Kill a Thunderhawk. Loot it for its Wings
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
step
    .goto The Barrens,44.5,59.1
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    .goto Thunder Bluff,45.9,64.7
    .home >>Set your Hearthstone to Thunder Bluff
step << Shaman/Warrior
    #sticky
    #completewith next
    +If it’s cheaper, buy a green 2h mace from the AH
step << Shaman/Warrior
    .goto Thunder Bluff,53.2,58.2
    .vendor >> Go buy Maul
    .collect 924,1
step
    .goto Thunder Bluff,61.4,80.9
    .turnin 1130 >>Turn in Melor Sends Word
    .accept 1131 >>Accept Steelsnap
step
    .goto Thunder Bluff,54.7,51.1
    .accept 1195 >>Accept The Sacred Flame
step
    .goto Thunder Bluff,22.8,20.9
    .accept 962 >>Accept Serpentbloom
step
    .goto Thunder Bluff,30.1,30.0,15 >>Go into The Pools of Vision
step
    .goto Thunder Bluff,28.4,27.7
    .accept 264 >>Accept Until Death Do Us Part
step << Shaman
    .goto Thunder Bluff,25.1,20.6
    .accept 1529 >>Accept Call of Water
    .train 2645 >>Train Ghost Wolf
.train 8004 >>Train Lesser Healing Wave
.train 6363 >>Train Searing Totem r2
.train 913 >>Train Healing Wave r4
.train 8052 >>Train Flame Shock r2
.train 6390 >>Train Stoneclaw Totem r2
.train 8056 >> Train Frost Shock
step << Warrior
    .goto Thunder Bluff,57.2,87.4
    .accept 1823 >>Accept Speak with Ruga
    .train 845 >>Train Cleave
    .train 6547 >>Train Rend r3
    .train 20230 >>Train Retaliation 
step
    .goto Thunder Bluff,46.9,49.9
    .fly Crossroads >>Fly to Crossroads
step
.goto Kalimdor,50.4,34.4,15 >>Go up the mountain here
step
.goto Kalimdor,50.4,34.4,10 >>Go into here
step
.goto Kalimdor,51.9,55.5,10 >>Jump down into the eye
step
.goto Kalimdor,51.9,55.4
.accept 1486 >>Accept Deviate Hides
step
.goto The Barrens,46.0,36.4,15 >>Leave the eye. Go to the mouth of the cave
step
    #sticky
    #label Deviate
    >>Kill Deviate mobs. Loot them for their hides
    .complete 1486,1 --Deviate Hide (20)
    >>Look for green and red flowers on the ground
    .complete 962,1 --Serpentbloom (10)
step
.goto The Barrens,52.1,55.1,20,0
    .goto The Barrens,52.0,55.4,20,0
    .goto The Barrens,51.8,54.9,20,0
.goto The Barrens,52.1,55.1,20,0
    .goto The Barrens,52.0,55.4,20,0
    .goto The Barrens,51.8,54.9,20,0
.goto The Barrens,52.1,55.1,20,0
    .goto The Barrens,52.0,55.4,20,0
    .goto The Barrens,51.8,54.9,20,0
.goto The Barrens,52.1,55.1,20,0
    .goto The Barrens,52.0,55.4,20,0
    .goto The Barrens,51.8,54.9,20,0
    >>Look for Mad Magglish (a goblin). He has multiple spawnpoints. Kill and loot him for 99-Year-Old Port
    .complete 959,1 --Collect 99-Year-Old Port (1)
step
#completewith next
.goto Kalimdor,51.9,54.9,40 >>Enter the deeper part of the cave
step
    #sticky
    #completewith next
    >>Keep an eye out for two rare mobs, as they can both drop blue BoE axes, among other gear
    .goto Kalimdor,52.5,54.8,30 >> Trigore
    .goto Kalimdor,52.8,55.0,30 >> Boahn
step
    >>Kill Ectoplasms for Wailing Essences. Keep an eye out for the 2 rares in the deeper part of the cave, as they can drop blue BoE items
    .complete 1491,1 --Wailing Essence (6)
step
    #requires Deviate
.goto Kalimdor,51.9,55.4
>>Run back and talk to the druids on top of the mouth of the cave
.turnin 1486 >>Turn in Deviate Hides
step
    .goto The Barrens,45.4,28.4
    .turnin 850 >>Turn in Kolkar Leaders
step
    .goto The Barrens,35.3,27.9
    .turnin 1062 >>Turn in Goblin Invaders
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .accept 1063 >>Accept The Elder Crone
step
    >>Up the mountain again, then inside the cave
.goto Stonetalon Mountains,74.5,97.8
    .turnin 1060 >>Turn in Letter to Jin'Zil
step
    .goto Stonetalon Mountains,71.3,95.1
    .turnin 6461 >>Turn in Blood Feeders
step
    .goto Stonetalon Mountains,47.3,64.2
    .accept 6562 >>Accept Trouble in the Deeps
step
    .goto Stonetalon Mountains,47.2,61.1
    .turnin 6284 >>Turn in Arachnophobia
step
    .goto Stonetalon Mountains,47.5,58.4
    .turnin 6401 >>Turn in Kaya's Alive
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1095 >>Turn in Further Instructions
step
    #sticky
    #completewith next
.goto Stonetalon Mountains,78.2,42.8,30 >>Go to Talondeep Path
step
.goto Ashenvale,42.3,71.0,20    >> Run through the cave to Ashenvale
step
.goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route

step
    .goto Ashenvale,12.3,33.8
    .fp >> Get the Zoram'gar Outpost flight path
step
    .goto Ashenvale,11.6,34.3
    .turnin 6562 >>Turn in Trouble in the Deeps
    .accept 6563 >>Accept The Essence of Aku'Mai
step
    .goto Ashenvale,11.8,34.7
    .accept 216 >>Accept Between a Rock and a Thistlefur
step
    .goto Ashenvale,11.7,34.9
    .accept 6462 >>Accept Troll Charm
    .accept 6442 >>Accept Naga at the Zoram Strand
    .accept 6563 >> Accept The Essence of Aku'Mai
step
    >>Accepting this quest starts an escort. Follow him
.goto Ashenvale,12.1,34.4
    .accept 6641 >> Accept Vorsha the Lasher
step
#sticky
#label wrathtailhead
>>Kill Nagas. Loot them for their heads
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
step
>>There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
step
.goto Ashenvale,14.2,14.7,40    >>Drop down the hole into Blackfathom Deeps
step
    #sticky
    #label Sapphires
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
        >>Swim under the water, and enter Blackfathom Deeps. Grind mobs until a Damp Note drops, and loot the Sapphires from the walls in the tunnel.
.collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >> Accept Allegiance to the Old Gods
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
step
#requires wrathtailhead
>>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.2,34.2
    .turnin 6641 >> Turn in Vorsha the Lasher
step
    .goto Ashenvale,11.6,34.3
    .turnin 6563 >>Turn in The Essence of Aku'Mai
    .turnin 6564 >>Turn in Allegiance to the Old Gods
step
    .goto Ashenvale,11.7,34.9
    .turnin 6442 >>Turn in Naga at the Zoram Strand
step
    .goto Thunder Bluff,70.1,30.9
    .turnin 1063 >>Turn in The Elder Crone
step
    .goto Thunder Bluff,78.4,28.8
    .turnin 1489 >>Turn in Hamuul Runetotem
step
    .goto Thunder Bluff,78.1,29.3
    .accept 1490 >>Accept Nara Wildmane
step
    .goto Thunder Bluff,75.7,31.3
    .turnin 1490 >>Turn in Nara Wildmane
step
    .goto Thunder Bluff,70.2,30.8
    .accept 1064 >>Accept Forsaken Aid
step
    .goto Thunder Bluff,22.8,20.9
    .turnin 1064 >>Turn in Forsaken Aid
    .accept 1065 >>Accept Journey to Tarren Mill
    .turnin 962 >>Turn in Serpentbloom
step
    .goto The Barrens,51.5,30.4
    .fly Ratchet >>Fly to Ratchet
step
    .goto The Barrens,63.1,37.6
    .turnin 959 >>Turn in Trouble at the Docks
step
    .goto The Barrens,62.4,37.6
    .turnin 1491 >>Turn in Smart Drinks
step << Shaman
    .goto The Barrens,65.8,43.8
    .turnin 1529 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
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
step
    .goto The Barrens,44.5,59.1
    .fly Orgrimmar >>Fly to Orgrimmar
step << Shaman
.goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Warrior
.goto Orgrimmar,79.7,31.4
.trainer >> Go and train your class spells
step
    .goto Orgrimmar,76.5,24.5
    .turnin 3923 >>Turn in Rilli Greasygob
step
    .goto Orgrimmar,81.5,19.6
    .train 197 >>Train 2h Axes
step
    .abandon 3924 >>Abandon Samophlange Manual
step
.goto Orgrimmar,49.1,94.5,30    >>Exit Orgrimmar
]],"Shaman/Warrior")
