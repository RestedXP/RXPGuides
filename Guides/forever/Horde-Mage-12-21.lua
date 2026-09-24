local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 12-17 The Barrens AoE
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide Mage AoE
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
    .goto 1413/1,-2666.68,-481.94--??
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
step
    .goto 1413/1,-2666.68,-481.94
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << Troll Mage
    .goto 1413/1,-2697.08,-400.86
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step
    .goto 1413/1,-2595.75,-441.40
    .fp The Crossroads >> Get the The Crossroads flight path
step << Troll Mage
    >>do NOT go to Orgrimmar
    .goto 1413/1,-2595.75,-434.64
>>Talk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
.target Devrak
    .accept 6384 >>Accept Ride to Orgrimmar
step
    .goto 1413/1,-2595.75,-421.13
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
step
    #sticky
    #completewith next
    >>Check this location for Chen's Empty Keg. Loot it and start the quest, otherwise you'll get it later
    .goto 1413/1,-3021.35,-231.96
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    .goto 1413/1,-3011.22,-184.66
    >>Kill Quilboars in the area
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
    .goto 1413/1,-2484.28,126.12,20 >>Run up the mountain here
step << !Undead
    #label BeakCave
    .goto 1413/1,-2200.55,315.3,20 >>Go to the cave surrounded by Burning Blade orcs
step << !Undead
    >>Right click the Altar
    .goto 1413/1,-2241.08,322.06
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step
    >>Kill Plainstriders. Loot them for Beaks
    .goto 1413/1,-2524.82,-556.26
    .complete 844,1 --Plainstrider Beak (7)
step
    >>Top of the tower
    .goto 1413/1,-2595.75,-475.18
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Turn in Disrupt the Attacks
.target Thork
    .accept 872 >>Accept The Disruption Ends
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 867 >>Accept Harpy Raiders
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-3315.22,-218.44
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto 1413/1,-3305.08,-231.96,40,0
    .goto 1413/1,-3294.95,-211.69.0,40,0
    .goto 1413/1,-3305.08,-130.61,40,0
    .goto 1413/1,-3396.28,-63.05,40,0
    >>Loot the brown boxes found in the area
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto 1413/1,-3122.68,-96.83
    >>Finish killing the Razormanes
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto 1413/1,-3690.15,254.49
.target Ak'Zeloth
>>Talk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Turn in The Demon Seed
step
    >>Kill any Zhevras you see. Loot them for Hooves. Make sure you have 4 before entering Ratchet
    .goto 1413/1,-3257.46,277.46,150,0 << Undead
    .goto 1413/1,-3852.28,-806.24
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Top floor of the building
    .goto 1413/1,-3730.68,-840.02
.target Gazlowe
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
step
    .goto 1413/1,-3771.22,-894.07
    .fp Ratchet >> Get the Ratchet flight path
step
    .goto 1413/1,-3761.08,-900.83
.target Sputtervalve
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Accept Samophlange
step
    >>Click the Wanted poster. You can bank here too if you want
    .goto 1413/1,-3720.55,-921.09
    .accept 895 >>Accept WANTED: Baron Longshore
step
    .goto 1413/1,-3700.28,-934.61
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
step
    .goto 1413/1,-3690.15,-981.90
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
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    >>Kill Baron Longshore. Loot him for his Head
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto 1413/1,-3730.68,-840.02
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
.target Gazlowe
    .accept 890 >>Accept The Missing Shipment
    .turnin 895 >>Turn in WANTED: Baron Longshore
step
    .goto 1413/1,-3791.48,-981.90
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
.target Wharfmaster Dizzywig
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
step
    .goto 1413/1,-3730.68,-840.02
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
.target Gazlowe
    .accept 888 >>Accept Stolen Booty
step
    .goto 1413/1,-3769.19,-898.12
    .fly Crossroads >> Fly to The Crossroads
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-1972.55,-306.95
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
    .goto 1413/1,-1943.16,89.64
    >>Dive underwater to the |cRXP_PICK_Bubbling Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Kill |cRXP_ENEMY_Barak Kodobane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Barak Kodobane|r's melee hits deal a LOT of damage and he is protected by a |cRXP_ENEMY_Kolkar Wrangler|r. They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
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
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
	>>Don't focus on getting all of them now
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Kill Prowlers. Loot them for their Claws and Tusks
    .goto 1413/1,-1572.28,-42.78
    .complete 903,1 --Prowler Claws (7)
step
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Kill Harpies. Loot them for their Talons
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto 1413/1,-1815.48,788.24
    >> If you still didn't get the Heavy Spiked Mace consider try to buy it from Vrang Wildgore << Druid/Warrior
    .vendor >> Go vendor at this guy if needed
step
    #sticky
    #completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Kill Raptors. Loot them for their heads
    .complete 869,1 --Raptor Head (12)
step
    >>Click on the Control Console
    .goto 1413/1,-2686.95,828.77
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    >>Click the Valve
    .goto 1413/1,-2686.95,842.29
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Click the Valve. Mobs will spawn when you click either
    .goto 1413/1,-2676.82,842.29
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto 1413/1,-2676.82,828.77
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Click on the Control Console
    .goto 1413/1,-2686.95,828.77
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
step
    >>Kill Tinkerer Sniggles in the building. Loot him for the Console Key
    .goto 1413/1,-2727.48,909.85
    .complete 901,1 --Console Key (1)
step
    .goto 1413/1,-2686.95,828.77
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
step
    >>Accept Ignition from the Shredder
    .goto 1413/1,-3102.42,1105.78
.target Wizzlecrank's Shredder
>>Talk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .accept 858 >>Accept Ignition
step
    >>Grinding to level 16 here is important, due to the next 3 quests being quite hard.
	.xp 16 >> Grind to 16
step
    >>Kill Supervisor Lugwizzle (He patrols all over the tower). Loot him for the Ignition Key
	.goto 1413/1,-3082.15,1031.46
    .complete 858,1 --Ignition Key (1)
step
    >>This will begin an escort
    .goto 1413/1,-3102.42,1105.78
>>Talk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .turnin 858 >>Turn in Ignition
.target Wizzlecrank's Shredder
    .accept 863 >>Accept The Escape
step
    #label Slugs
    >>2 Mobs will spawn at some point. Kill them then wait for his RP event at the end
    .goto 1413/1,-2980.82,1085.51
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Grind mobs in the area. Loot them until Cats Eye Emerald drops
    .goto 1413/1,-3609.08,1321.98
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto 1454/1,-3841.9,1647.15,40 >>Run to the west entrance of Orgrimmar
step
    .goto 1454/1,-4224.67,1472.41
    .trainer >> Train your class spells
step << Troll Mage
    .goto 1454/1,-4440.81,1632.18
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
    .goto 1454/1,-4229.02,1917.48
.target Zor Lonetree
>>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .accept 1061 >>Accept The Spirits of Stonetalon
step
    #completewith next
    .hs >>Hearth to Crossroads
step << Troll Mage
    .goto 1413/1,-2707.22,-407.62
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Turn in Return to the Crossroads.
step
    .goto 1413/1,-2636.28,-434.64
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in Raptor Thieves
.target Gazrog
    .accept 3281 >>Accept Stolen Silver
step
    .goto 1413/1,-2676.82,-481.94.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 903 >>Turn in Prowlers of the Barrens
.target Sergra Darkthorn
    .accept 881 >>Accept Echeyakee
step
    >>Use the Horn of Echeyakee in your bags to summon Echeyakee. Kill him and loot him for his Hide
    .goto 1413/1,-3001.08,443.67
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto 1413/1,-2666.68,-481.94
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 881 >>Turn in Echeyakee
.target Sergra Darkthorn
    .accept 905 >>Accept The Angry Scytheclaws
step
    .goto 1413/1,-2666.68,-481.94.90
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >> Turn in The Forgotten Pools
.target Tonga Runetotem
    .accept 877 >> Accept The Stagnant Oasis
step
    .goto 1413/1,-2646.42,-522.480
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Accept Consumed by Hatred
    .accept 4921 >> Accept Lost in Battle
step
    >>Top of the tower
    .goto 1413/1,-2605.88,-475.18
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 867 >>Turn in Harpy Raiders
.target Darsok Swiftdagger
    .accept 875 >>Accept Harpy Lieutenants
step
    .goto 1413/1,-2595.75,-427.890
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
step
    .goto 1413/1,-2595.75,-434.64
    .fly Ratchet >>Fly to Ratchet
step
    .goto 1413/1,-3761.08,-900.83
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >> Turn in The Escape
.target Sputtervalve
    .accept 1483 >> Accept Ziz Fizziks
step
    .goto 1413/1,-3791.48,-981.900
.target Wharfmaster Dizzywig
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 896 >> Turn in Miner's Fortune
step
    .goto 1413/1,-3700.28,-934.610
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Accept Deepmoss Spider Eggs
step
    >>Loot the crate
    .goto 1413/1,-3821.88,-1711.58
    .complete 888,2 --Telescopic Lens (1)
step
    >>Loot the crate
    .goto 1413/1,-3720.55,-1738.60
step
    #sticky
    #completewith Nest
    >>Kill any raptors you see. Loot them for their Horns and Feathers. Be careful as they thrash
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Loot the chest for Stolen Silver
    >>Save any Sunscale feathers you get for later
    .goto 1413/1,-3193.62,-1927.77,90,0
    .goto 1413/1,-3254.42,-2029.12
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Click the Bubbling Fissure underwater
    .goto 1413/1,-3011.22,-1272.42
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Kill Centaurs. Loot them for their bracers
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Grind any Centaur around the lake until they spawn Verog (you'll see a Yell in chat when he spawns)
    .goto 1413/1,-2742.68,-1209.59
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto 1413/1,-3023.38,-1234.58,25,0
	.goto 1413/1,-3000.07,-1208.23,25,0
	.goto 1413/1,-2959.54,-1196.75,25,0
	.goto 1413/1,-2953.46,-1241.34,25,0
	.goto 1413/1,-2977.78,-1304.17,25,0
	.goto 1413/1,-3029.46,-1324.44,25,0
	.goto 1413/1,-3066.95,-1311.61,25,0
	.goto 1413/1,-3059.86,-1264.31,25,0
	.goto 1413/1,-3023.38,-1234.58,25,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Click the egg. You need the sunscale feathers from the raptors
    .goto 1413/1,-2707.22,-1508.89
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Click the egg. You need the sunscale feathers from the raptors
    .goto 1413/1,-2697.08,-1535.91
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Click the egg. You need the sunscale feathers from the raptors
    .goto 1413/1,-2646.42,-1529.16
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    >>Finish killing Raptors. Loot them for their Horns
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Talk to Mankrik's Wife
    .goto 1413/1,-2372.82,-1792.65
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto 1413/1,-1997.88,-2373.69
    .home >>Set your Hearthstone to Camp Taurajo
step
    .goto 1413/1,-1886.42,-2387.20
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
step
    .goto 1413/1,-1886.42,-2387.20
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .fly Crossroads >>Fly to Crossroads
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Turn in Stolen Silver
step
    .goto 1413/1,-2666.68,-481.94
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 905 >>Turn in The Angry Scytheclaws
.target Sergra Darkthorn
    .accept 3261 >>Accept Jorn Skyseer
step
    .goto 1413/1,-2666.68,-481.94--??
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Turn in The Stagnant Oasis
.target Tonga Runetotem
    .accept 880 >>Accept Altered Beings
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Turn in Lost in Battle
step
    #sticky
	#completewith next
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-1976.6,-308.30
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 851 >>Turn in Verog the Dervish
.target Regthar Deathgate
    .accept 852 >>Accept Hezrul Bloodmark
step
    .goto 1413/1,-1976.6,-308.30
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 855 >> Turn in Centaur Bracers
    .isQuestComplete 855
step
    .goto 1413/1,-1976.6,-308.30
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
    .goto 1413/1,-2025.24,-1144.050
    >> Hezrul patrols around the big WC lake
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .turnin 855 >> Turn in Centaur Bracers
step
    .goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 4021 >>Accept Counterattack!
step
    >> This quest can be very hard to solo, if you got no one to group with consider grouping up for it or kite it near the building of the quest giver.
    >> Skip this if it's too difficult
    .goto 1413/1,-1869.19,-288.71
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto 1413/1,-1976.6,-308.98
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 4021 >>Turn in Counterattack!
step
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67
    >>Kill Witchwing Slayers. Loot them for Harpy Lieutenant Rings
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto 1413/1,-1572.28,-42.78
    >>Kill Savannah Prowlers in the area. Loot them for their Tusks
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto 1413/1,-954.15,-272.49
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
.target Seereth Stonebreak
    .accept 1062 >> Accept Goblin Invaders
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6548 >> Accept Avenge My Village
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 17-21 Stonetalon/Barrens AoE
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide Mage AoE
#defaultfor Horde Mage
#next 21-30 Silverpine/Hillsbrad AoE

step
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    >>Kill Grimtotems in the area
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto 1413/1,-943.1,-265.13
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6548 >> Turn in Avenge My Village
.target Makaba Flathoof
    .accept 6629 >> Accept Kill Grundig Darkcloud
step
    >>Enter the village through the Western path. Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
    .goto 1442/1,-255.52,93.5,60,0
    .goto 1442/1,-367.83,109.78
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Start the Kaya Escort
    .goto 1442/1,-343.42,122.80
.target Kaya Flathoof
>>Talk to |cRXP_FRIENDLY_Kaya Flathoof|r
    .accept 6523 >> Accept Protect Kaya
step
     >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto 1442/1,-455.73,-59.55
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto 1442/1,-240.87,-180.03
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
    .goto 1442/1,437.92,435.4,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto 1442/1,365.2,878.29
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
    .goto 1442/1,179.10,1168.06,40,0
    .goto 1442/1,232.82,1239.70,40,0
    .goto 1442/1,-16.23,1441.59,40,0
    .goto 1442/1,-255.52,1291.80,40,0
    .goto 1442/1,-382.48,1135.50,40,0
    .goto 1442/1,179.10,1168.06,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Finish killing Loggers
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto 1442/1,365.2,878.29
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Turn in Super Reaper 6000
.target Ziz Fizziks
    .accept 1094 >> Accept Further Instructions
step
    .hs >> Hearth to Camp Taurajo
step
    .goto 1413/1,-1926.95,-2380.44
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
.target Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
step
    #sticky
    #label Lizard
    >>Kill Stormsnouts. Loot them for a Horn
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto 1413/1,-2443.75,-1975.07,0
    .goto 1413/1,-2038.42,-1711.58,0
    .goto 1413/1,-1967.48,-1934.53,0
    .goto 1413/1,-1937.08,-1887.24,0
	>>Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
step
    >>Kill a LOT of Quilboars. Loot them for their tusks. Save the Blood Shards you get
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
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
	.goto 1413/1,-3001.08,-1265.66
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Kill a Zhevra in the area. Loot it for a Carcass
	.goto 1413/1,-3558.42,-563.01
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Use the Fresh Zhevra Carcass at the dead tree to summon Ishamuhale. Kill and loot him for his Fang
	.goto 1413/1,-3446.95,-441.40
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto 1413/1,-3730.68,-840.02
    >>Run back to Ratchet
.target Gazlowe
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
step
    .goto 1413/1,-3761.08,-900.83
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Turn in Further Instructions
.target Sputtervalve
    .accept 1095 >>Accept Further Instructions
step
    .goto 1413/1,-3700.28,-927.85
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
step
    .goto 1413/1,-3690.15,-981.90
.target Brewmaster Drohn
>>Talk to |cRXP_FRIENDLY_Brewmaster Drohn|r
    .turnin 821 >>Turn in Chen's Empty Keg
step
    .goto 1413/1,-3771.22,-894.07
    .fly Crossroads >>Fly to Crossroads
step
    .goto 1413/1,-2666.68,-481.94--??
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Turn in Altered Beings
.target Tonga Runetotem
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Turn in Consumed by Hatred
step
    >>Top of the tower
    .goto 1413/1,-2605.88,-475.180
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 875 >> Turn in Harpy Lieutenants
.target Darsok Swiftdagger
    .accept 876 >> Accept Serena Bloodfeather
step
    >>This starts a timed quest
    .goto 1413/1,-2585.62,-427.89
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
.target Apothecary Helbrim
    .accept 853 >>Accept Apothecary Zamah
step
    .goto 1413/1,-2595.75,-434.64
    .fly Camp Taurajo >>Fly to Camp Taurajo
step
    .goto 1413/1,-2747.75,-1907.51
    >>Kill Quilboars for a Blood Shard
    .collect 5075 --Blood Shard (1)
step
    .goto 1413/1,-1896.55,-2387.20
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
.target Mangletooth
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto 1413/1,-1916.82,-2380.44
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Accept Enraged Thunder Lizards
    .accept 1130 >>Accept Melor Sends Word
step
    .goto 1413/1,-1916.82,-2380.44
    .isOnQuest 883
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Turn in Lakota'mani
step
    .goto 1413/1,-1916.82,-2380.44
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Accept Enraged Thunder Lizards
    .accept 1130 >>Accept Melor Sends Word
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto 1413/1,-1856.02,-2583.13,0
    .goto 1413/1,-2362.68,-2616.91,0
    .goto 1413/1,-2403.22,-2441.25.0,0
    >>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
step
    .goto 1413/1,-1683.75,-2461.52,30,0
    .goto 1413/1,-2149.88,-2691.23,30,0
    .goto 1413/1,-2443.75,-2515.57,30,0
    >>Kill Thunder Lizards. Loot them for their blood
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto 1413/1,-1926.95,-2380.44
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
.target Jorn Skyseer
    .accept 913 >>Accept Cry of the Thunderhawk
step
    .goto 1413/1,-1926.95,-2380.44
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Turn in Owatanka
    .isOnQuest 884
step
    .goto 1413/1,-1926.95,-2380.44
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
.target Jorn Skyseer
    .accept 913 >>Accept Cry of the Thunderhawk
step
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    >>Kill a Thunderhawk. Loot it for its Wings
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto 1413/1,-1916.82,-2380.44
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto 1413/1,-1890.47,-2391.93
    >>Turn in your Blood Shards for the Spirit of the Wind buff from Mangletooth. If you accidentally sold any shards, skip this step
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 889 >> Turn in Spirit of the Wind
step
    .goto 1456/1,182.67,-1315.51,60 >>Run to the lift and take it into Thunder Bluff
step
    .goto 1456/1,38.48,-1300.28
    .home >>Set your Hearthstone to Thunder Bluff
step
    .goto 1456/1,-125.64,-1413.06
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1130 >>Turn in Melor Sends Word
.target Melor Stonehoof
    .accept 1131 >>Accept Steelsnap
step
 	>>Go into The Pools of Vision
	.goto 1456/1,202.5,-1058.75.0,30,0
	.goto 1456/1,276.6,-996.120
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
step
    .goto 1456/1,254.06,-995.78
    .trainer >> Train your class spells
	>>Don't respec to AoE yet (if you've gone fire spec)
step
    .goto 1456/1,220.24,-1042.75
.target Clarice Foster
>>Talk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
step
	.goto 1456/1,26.07,-1196.75
    .fp Thunder Bluff >> Get the Thunder Bluff flight path
    .fly Crossroads >>Fly to Crossroads
step
    >>Kill Serena Bloodfeather. Loot her for her Head
	.goto 1413/1,-1349.35,788.24
    .complete 876,1 --Serena's Head (1)
step
    .goto 1413/1,-954.15,-272.49
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
    .goto 1442/1,-235.98,-180.03
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
step
    .goto 1442/1,365.2,878.29
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Turn in Further Instructions
step
    .goto 1442/1,926.25,1015.02
.target Tammra Windfield
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6401 >>Turn in Kaya's Alive
step
    .goto 1442/1,1042.47,968.13
    .fp Sun Rock>> Get the Sun Rock Retreat flight path
step
    #completewith next
    .hs >> Hearth to Thunder Bluff
step
    .goto 1456/1,-213.96,-1065.010
>>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 1063 >> Turn in The Elder Crone
.target Magatha Grimtotem
    .accept 1064 >> Accept Forsaken Aid
step
    .goto 1456/1,-303.93,-1048.73
>>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .turnin 1489 >> Turn in Hamuul Runetotem
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
step
    .goto 1456/1,-272.93,-1070.02
.target Nara Wildmane
>>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 1490 >> Turn in Nara Wildmane
step
    .goto 1456/1,276.6,-996.12
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
.target Apothecary Zamah
    .accept 1065 >> Accept Journey to Tarren Mill
step
    .goto 1456/1,254.06,-995.78
    .trainer >> Train your class spells if needed
	>>Respec to Frost AoE if you haven't already
step
    .goto 1456/1,28.19,-1197.92.0
    .fly The Crossroads >>Fly to The Crossroads
step
    .goto 1413/1,-2605.88,-475.180
	>>Go upstairs
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 876 >> Turn in Serena Bloodfeather
step
    .goto 1413/1,-2595.75,-437.35
    .fly Orgrimmar >> Fly to Orgrimmar
]])
