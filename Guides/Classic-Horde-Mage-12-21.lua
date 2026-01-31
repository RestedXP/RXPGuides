local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 12-17 The Barrens AoE
#version 1
#group RestedXP Horde Mage AoE
#defaultfor Horde Mage
#next 17-21 Stonetalon/Barrens AoE

step << Mage
	#era/som
    #completewith next
	+Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, and is also slower due to the recent 100% Quest xp changes in SoM
step
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Get the The Crossroads flight path
step << Troll Mage
    >>do NOT go to Orgrimmar
    .goto The Barrens,51.5,30.3
>>Talk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
.target Devrak
    .accept 6384 >>Accept Ride to Orgrimmar
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
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
step << !Undead
    #sticky
    #completewith next
    >>If the Flawed Power Stone in your bags has less than 10 minutes left, drop it, then go back and loot the Purple Stone next to Ak'Zeloth again
    .turnin 926 >>Turn in Flawed Power Stone
step << !Undead
    #sticky
    #completewith BeakCave
    >>Kill some Plainstriders en route if you have time on Flawed Power Stone. Loot them for Beaks
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>Run up the mountain here
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>Go to the cave surrounded by Burning Blade orcs
step << !Undead
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
    >>Top of the tower
    .goto The Barrens,51.5,30.9
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Turn in Disrupt the Attacks
.target Thork
    .accept 872 >>Accept The Disruption Ends
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 867 >>Accept Harpy Raiders
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 844 >>Turn in Plainstrider Menace
.target Sergra Darkthorn
    .accept 845 >>Accept The Zhevra
step
    #sticky
    #completewith Crates
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
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>Loot the brown boxes found in the area
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>Finish killing the Razormanes
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>Talk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Turn in The Demon Seed
step
    >>Kill any Zhevras you see. Loot them for Hooves. Make sure you have 4 before entering Ratchet
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Top floor of the building
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >> Get the Ratchet flight path
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Accept Samophlange
step
    >>Click the Wanted poster. You can bank here too if you want
    .goto The Barrens,62.6,37.5
    .accept 895 >>Accept WANTED: Baron Longshore
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
step
    .goto The Barrens,62.3,38.4
>>Talk to |cRXP_FRIENDLY_Brewmaster Drohn|r
    .turnin 819 >>Turn in Chen's Empty Keg
.target Brewmaster Drohn
    .accept 821 >>Accept Chen's Empty Keg
step
    #sticky
    #label Southsea
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
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
.target Gazlowe
    .accept 890 >>Accept The Missing Shipment
    .turnin 895 >>Turn in WANTED: Baron Longshore
step
    .goto The Barrens,63.3,38.4
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
.target Wharfmaster Dizzywig
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
step
    .goto The Barrens,62.7,36.3
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
.target Gazlowe
    .accept 888 >>Accept Stolen Booty
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >> Fly to The Crossroads
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 845 >>Turn in The Zhevra
.target Sergra Darkthorn
    .accept 903 >>Accept Prowlers of the Barrens
step
    #sticky
    #completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .accept 855 >> Accept Centaur Bracers
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for their |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Dive underwater to the |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Kill |cRXP_ENEMY_Barak Kodobane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Barak Kodobane|r's melee hits deal a LOT of damage and he is protected by a |cRXP_ENEMY_Kolkar Wrangler|r. They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>Don't focus on getting all of them now
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
    #completewith next
    .goto The Barrens,43.8,12.2
    >> If you still didn't get the Heavy Spiked Mace consider try to buy it from BVrang Wildgore << Druid/Warrior
    .vendor >> Go vendor at this guy if needed
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
    >>Click the Valve. Mobs will spawn when you click either
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
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
    >>Accept Ignition from the Shredder
    .goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>Talk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .accept 858 >>Accept Ignition
step
    >>Grinding to level 16 here is important, due to the next 3 quests being quite hard.
	.xp 16 >> Grind to 16
step
    >>Kill Supervisor Lugwizzle (He patrols all over the tower). Loot him for the Ignition Key
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>This will begin an escort
    .goto The Barrens,56.5,7.5
>>Talk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .turnin 858 >>Turn in Ignition
.target Wizzlecrank's Shredder
    .accept 863 >>Accept The Escape
step
    #label Slugs
    >>2 Mobs will spawn at some point. Kill them then wait for his RP event at the end
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Grind mobs in the area. Loot them until Cats Eye Emerald drops
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>Run to the west entrance of Orgrimmar
step
    .goto Orgrimmar,38.79,85.68
    .trainer >> Train your class spells
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>Talk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Accept Doras the Wind Rider Master
step
    >>Run up to the Flight Master. Do NOT fly anywhere
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >> Get the Orgrimmar flight path << Undead
>>Talk to |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Turn in Doras the Wind Rider Master << Troll Mage
.target Doras
    .accept 6386 >>Accept Return to the Crossroads << Troll Mage
step
    >>Run to Grommash Hold
    .goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .accept 1061 >>Accept The Spirits of Stonetalon
step
    #completewith next
    .hs >>Hearth to Crossroads
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Turn in Return to the Crossroads.
step
    .goto The Barrens,51.9,30.3
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in Raptor Thieves
.target Gazrog
    .accept 3281 >>Accept Stolen Silver
step
    .goto The Barrens,52.3,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 903 >>Turn in Prowlers of the Barrens
.target Sergra Darkthorn
    .accept 881 >>Accept Echeyakee
step
    >>Use the Horn of Echeyakee in your bags to summon Echeyakee. Kill him and loot him for his Hide
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 881 >>Turn in Echeyakee
.target Sergra Darkthorn
    .accept 905 >>Accept The Angry Scytheclaws
step
    .goto The Barrens,52.20,31.90
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >> Turn in The Forgotten Pools
.target Tonga Runetotem
    .accept 877 >> Accept The Stagnant Oasis
step
    .goto The Barrens,52.00,31.60
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Accept Consumed by Hatred
    .accept 4921 >> Accept Lost in Battle
step
    >>Top of the tower
    .goto The Barrens,51.6,30.9
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 867 >>Turn in Harpy Raiders
.target Darsok Swiftdagger
    .accept 875 >>Accept Harpy Lieutenants
step
    .goto The Barrens,51.50,30.20
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Fly to Ratchet
step
    .goto The Barrens,63.0,37.2
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >> Turn in The Escape
.target Sputtervalve
    .accept 1483 >> Accept Ziz Fizziks
step
    .goto The Barrens,63.30,38.40
.target Wharfmaster Dizzywig
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 896 >> Turn in Miner's Fortune
step
    .goto The Barrens,62.40,37.70
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Accept Deepmoss Spider Eggs
step
    >>Loot the crate
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Loot the crate
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>Kill any raptors you see. Loot them for their Horns and Feathers. Be careful as they thrash
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Loot the chest for Stolen Silver
    >>Save any Sunscale feathers you get for later
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Click the Bubble Fissure underwater
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Kill Centaurs. Loot them for their bracers
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Grind any Centaur around the lake until they spawn Verog (you'll see a Yell in chat when he spawns)
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
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
    >>Talk to Mankrik's Wife
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>Set your Hearthstone to Camp Taurajo
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .fly Crossroads >>Fly to Crossroads
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Turn in Stolen Silver
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 905 >>Turn in The Angry Scytheclaws
.target Sergra Darkthorn
    .accept 3261 >>Accept Jorn Skyseer
step
    .goto The Barrens,52.2,31.9
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Turn in The Stagnant Oasis
.target Tonga Runetotem
    .accept 880 >>Accept Altered Beings
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Turn in Lost in Battle
step
    #sticky
	#completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 851 >>Turn in Verog the Dervish
.target Regthar Deathgate
    .accept 852 >>Accept Hezrul Bloodmark
step
    .goto The Barrens,45.39,28.43
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 855 >> Turn in Centaur Bracers
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 851 >>Turn in Verog the Dervish
.target Regthar Deathgate
    .accept 852 >>Accept Hezrul Bloodmark
step
    #sticky
	#label CeBracers
    >>Kill Centaurs. Loot them for their bracers
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >> Hezrul patrols around the big WC lake
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .turnin 855 >> Turn in Centaur Bracers
step
    .goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 4021 >>Accept Counterattack!
step
    >> This quest can be very hard to solo, if you got no one to group with consider grouping up for it or kite it near the building of the quest giver.
    >> Skip this if it's too difficult
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 4021 >>Turn in Counterattack!
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>Kill Witchwing Slayers. Loot them for Harpy Lieutenant Rings
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,41.4,24.5
    >>Kill Savannah Prowlers in the area. Loot them for their Tusks
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
.target Seereth Stonebreak
    .accept 1062 >> Accept Goblin Invaders
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6548 >> Accept Avenge My Village
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 17-21 Stonetalon/Barrens AoE
#version 1
#group RestedXP Horde Mage AoE
#defaultfor Horde Mage
#next 21-30 Silverpine/Hillsbrad AoE

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
    .goto The Barrens,35.191,27.791
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6548 >> Turn in Avenge My Village
.target Makaba Flathoof
    .accept 6629 >> Accept Kill Grundig Darkcloud
step
    >>Enter the village through the Western path. Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Start the Kaya Escort
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Talk to |cRXP_FRIENDLY_Kaya Flathoof|r
    .accept 6523 >> Accept Protect Kaya
step
     >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
step
    #sticky
    #label deepmossegg
    >>Click the spider eggs near the trees
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Kill the Deepmoss Spiders in the area
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1483 >> Turn in Ziz Fizziks
.target Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
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
    .goto Stonetalon Mountains,58.989,62.599
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Turn in Super Reaper 6000
.target Ziz Fizziks
    .accept 1094 >> Accept Further Instructions
step
    .hs >> Hearth to Camp Taurajo
step
    .goto The Barrens,44.9,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
.target Jorn Skyseer
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
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
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
    #sticky
    #completewith Ishamuhale
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Go around the lake and AoE Turtles. Loot them for their Shells
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Kill a Zhevra in the area. Loot it for a Carcass
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Use the Fresh Zhevra Carcass at the dead tree to summon Ishamuhale. Kill and loot him for his Fang
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>Run back to Ratchet
.target Gazlowe
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
step
    .goto The Barrens,63.0,37.2
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Turn in Further Instructions
.target Sputtervalve
    .accept 1095 >>Accept Further Instructions
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>Talk to |cRXP_FRIENDLY_Brewmaster Drohn|r
    .turnin 821 >>Turn in Chen's Empty Keg
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Fly to Crossroads
step
    .goto The Barrens,52.2,31.9
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Turn in Altered Beings
.target Tonga Runetotem
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Turn in Consumed by Hatred
step
    >>Top of the tower
    .goto The Barrens,51.60,30.90
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 875 >> Turn in Harpy Lieutenants
.target Darsok Swiftdagger
    .accept 876 >> Accept Serena Bloodfeather
step
    >>This starts a timed quest
    .goto The Barrens,51.4,30.2
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
.target Apothecary Helbrim
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
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
.target Mangletooth
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Accept Enraged Thunder Lizards
    .accept 1130 >>Accept Melor Sends Word
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Turn in Lakota'mani
step
    .goto The Barrens,44.8,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Accept Enraged Thunder Lizards
    .accept 1130 >>Accept Melor Sends Word
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
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
.target Jorn Skyseer
    .accept 913 >>Accept Cry of the Thunderhawk
step
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Turn in Owatanka
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
.target Jorn Skyseer
    .accept 913 >>Accept Cry of the Thunderhawk
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
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>Turn in your Blood Shards for the Spirit of the Wind buff from Mangletooth. If you accidentally sold any shards, skip this step
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 889 >> Turn in Spirit of the Wind
step
    .goto Thunder Bluff,32.0,66.9,60 >>Run to the lift and take it into Thunder Bluff
step
    .goto Thunder Bluff,45.814,64.711
    .home >>Set your Hearthstone to Thunder Bluff
step
    .goto Thunder Bluff,61.538,80.919
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1130 >>Turn in Melor Sends Word
.target Melor Stonehoof
    .accept 1131 >>Accept Steelsnap
step
 	>>Go into The Pools of Vision
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Train your class spells
	>>Don't respec to AoE yet (if you've gone fire spec)
step
    .goto Thunder Bluff,28.4,27.7
.target Clarice Foster
>>Talk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >> Get the Thunder Bluff flight path
    .fly Crossroads >>Fly to Crossroads
step
    >>Kill Serena Bloodfeather. Loot her for her Head
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1062 >>Turn in Goblin Invaders
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
.target Makaba Flathoof
    .accept 6401 >>Accept Kaya's Alive
.target Seereth Stonebreak
    .accept 1063 >>Accept The Elder Crone
--    .accept 1068 >> Accept Shredding Machines
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
step
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Turn in Further Instructions
step
    .goto Stonetalon Mountains,47.5,58.4
.target Tammra Windfield
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6401 >>Turn in Kaya's Alive
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>> Get the Sun Rock Retreat flight path
step
    #completewith next
    .hs >> Hearth Thunder Bluff
step
    .goto Thunder Bluff,70.00,30.90
>>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 1063 >> Turn in The Elder Crone
.target Magatha Grimtotem
    .accept 1064 >> Accept Forsaken Aid
step
    .goto Thunder Bluff,78.62,28.56
>>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .turnin 1489 >> Turn in Hamuul Runetotem
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
step
    .goto Thunder Bluff,75.65,31.62
.target Nara Wildmane
>>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 1490 >> Turn in Nara Wildmane
step
    .goto Thunder Bluff,23.00,21.0
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
.target Apothecary Zamah
    .accept 1065 >> Accept Journey to Tarren Mill
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Train your class spells if needed
	>>Respec to Frost AoE if you haven't already
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>Fly to The Crossroads
step
    .goto The Barrens,51.60,30.90
	>>Go upstairs
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 876 >> Turn in Serena Bloodfeather
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >> Fly to Orgrimmar
]])
