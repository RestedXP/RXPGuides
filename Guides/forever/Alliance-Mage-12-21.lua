local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-18 Darkshore Mage AoE
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide Mage
#defaultfor Alliance Mage
#next 18-21 Redridge Mage AoE

step
    #completewith next
    .goto 1439/1,533.23,6399.77
    .vendor >> You can purchase extremely cheap level 5 food from Laird (fish vendor)
step
    >>Go upstairs to the top floor
    .goto 1439/1,519.48,6405.89
.target Wizbang Cranktoggle
>>Talk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >>Accept Buzzbox 827
step
    >>Jump down to the 1st floor
    .goto 1439/1,515.55,6406.32
    .home >> Set your Hearthstone to Auberdine
step
    .goto 1439/1,497.21,6427.72
.target Barithras Moonshade
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >>Accept Cave Mushrooms
step
    .goto 1439/1,473.63,6439.07
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >>Accept The Red Crystal
step
    .goto 1439/1,397.65,6437.76
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >>Accept Plagued Lands
step
    .goto 1439/1,362.93,6434.27
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Accept How Big a Threat?
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accept Washed Ashore
step
    .goto 1439/1,561.40,6343.01
    .fp Auberdine >> Get the Auberdine flight path
step
    #completewith Bear
     >> Kill Crawlers along the coast
    .complete 983,1 --Crawler Leg (6)
step
    .goto 1439/1,558.78,6111.57
     >> Loot the sea creature
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >> Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,386.51,5988.430
     >> Head towards the vicinity furbolg camp
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >> Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    .goto 1439/1,421.88,5804.16
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,543.71,5962.67,150,0
    .goto 1439/1,577.12,6393.66
    >> Kill Crawlers along the coast
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >> Save Strider Meat x5 for later
    .collect 5469,5,2178,1
step
    .goto 1439/1,540.44,6313.31
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto 1439/1,543.06,6342.57
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Turn in Washed Ashore
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Accept Washed Ashore
step
    .goto 1439/1,535.85,6409.38,40,0
    >>Run to the Docks
    .goto 1439/1,600.70,6425.100
.target Cerellean Whiteclaw
>>Talk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >>Accept For Love Eternal
step
    #sticky
    #completewith Thundris
     >> Kill darkshore threshers in the sea
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto 1439/1,734.32,6479.68,60 >> Run up to the docks then jump in the water at the intersection
step
    .goto 1439/1,854.84,6310.26
    >>Click on the sea turtle head underwater
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,543.06,6342.57
    >>Kill Threshers en route back to shore
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
step
    .goto 1439/1,397.65,6437.76
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
.target Tharnariun Treetender
    .accept 2138 >> Accept Cleansing of the Infected
step
    .goto 1439/1,362.93,6434.27
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
.target Terenthis
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
step
    >> Kill furbolgs
    .goto 1439/1,332.80,5883.20
    .goto 1439/1,338.70,5985.81,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto 1439/1,362.93,6434.71
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Turn in How Big a Threat?
.target Terenthis
    .accept 986 >>Accept A Lost Master
step
    >>Go Upstairs
    .goto 1439/1,384.55,6431.65
.target Sentinel Elissa Starbreeze
>>Talk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .accept 965 >>Accept The Tower of Althalaxx
step
    .goto 1439/1,445.46,6536.01
.target Gorbold Steelhand
>>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
    #label Thundris
    .goto 1439/1,492.62,6580.99
>>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
.target Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 954 >>Accept Bashal'Aran
    .accept 958 >>Accept Tools of the Highborne
step
     #label Threshers
     #sticky
     >> Swim along the coast, killing Threshers
    .complete 1001,1 --Thresher Eye (3)
step
    .goto 1439/1,391.75,7052.59,40,0
    .goto 1439/1,437.60,7076.17
     >> Enter the 1st ship by the hole on the hull, then go to the back of the lowest floor of the ship
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto 1439/1,302.02,7124.2,40,0
    .goto 1439/1,345.90,7134.68
     >> Enter the 2nd ship by the hole on the hull, then go to the back of the lowest floor of the ship
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,193.29,7082.72
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
    .goto 1439/1,194.60,6959.14
    .accept 4723 >> Accept Beached Sea Creature
step
    .goto 1448/1,48.92,6748.85
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Turn in Bashal'Aran
.target Asterion
    .accept 955 >> Accept Bashal'Aran
step
    .goto 1448/1,-33.31,6660.30
     >> Kill Grellkins. Loot them for their Earrings
    .complete 955,1 --Grell Earring (8)
step
    .goto 1448/1,48.92,6748.85
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
.target Asterion
    .accept 956 >> Accept Bashal'Aran
step
    .goto 1448/1,-60.33,6653.40
     >> Kill satyrs. Loot them for the Seal
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto 1448/1,48.92,6748.85
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
.target Asterion
    .accept 957 >> Accept Bashal'Aran
step
    #sticky
    #completewith ReadAndy
     >> Kill any type of Moonstalker. Loot them for their fangs
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>Kill Rabid Thistle Bears you see. Have at least 50% mana and nuke them before they give you Rabies (debuff)
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto 1439/1,-383.77,7222.89
    >>Use the Empty Sampling Tube in your bags
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Save the Small Eggs you loot to level your cooking more later. Save ALL the light feathers you get for later
step
    .goto 1439/1,-144.04,6209.82
     >> Run up to The Red Crystal in the mountains
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >>Accept The Fall of Ameth'Aran
step
    #sticky
    #label anaya
    .goto 1439/1,171.67,5693.25,0
     >> Kill Anaya Dawnrunner. She patrols around the middle of Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto 1439/1,147.44,5630.370,0
     >> Kill ghosts. Loot them for relics
    .complete 958,1 --Highborne Relic (7)
step
    .goto 1448/1,147.82,5576.23
     >> Click on the tablet on the ground
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1448/1,166.22,5634.12
     >> Click on the green torch at the gazebo
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1448/1,105.84,5771.35
     >> Click on the tablet on the ground
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    .goto 1439/1,398.30,5677.53
    >>Finish killing Rabid Thistle Bears and getting Strider Meat
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Loot the Sea Turtle
    .goto 1439/1,509.00,5620.76
    .accept 4722 >>Accept Beached Sea Turtle
step
    >>Loot the Sea Turtle
    .goto 1439/1,582.36,5242.17
    .accept 4728 >>Accept Beached Sea Creature
step
    .hs >> Hearth to Auberdine
step
    .goto 1439/1,397.65,6437.33
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >>Turn in Cleansing of the Infected
.target Tharnariun Treetender
    .accept 2139 >>Accept Tharnariun's Hope
step
    .goto 1439/1,445.46,6535.58
.target Gorbold Steelhand
>>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >>Turn in Deep Ocean, Vast Sea
    .vendor >> Buy some Mild Spices from Gorbold until you have enough to cook all your eggs
step
    .goto 1439/1,472.97,6557.85
    >>Make sure you have 10 points in cooking or you cant accept/turnin the quest
.target Alanndarian Nightsong
>>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >>Accept Easy Strider Living
    .turnin 2178 >>Turn in Easy Strider Living
step
    .goto 1439/1,491.97,6582.303
>>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >>Turn in Tools of the Highborne
    .turnin 4762 >>Turn in The Cliffspring River
.target Thundris Windweaver
    .accept 4763 >>Accept The Blackwood Corrupted
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >>Accept The Absent Minded Prospector
step
    .goto 1439/1,471.66,6439.95
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Accept As Water Cascades
step
    .goto 1439/1,467.08,6409.38
     >> Fill the Empty Water Tube at the moonwell
    .complete 4812,1
     >> Fill the Empty Bowl at the moonwell
    .collect 12347,1,4763,1
step
    #completewith next
    .goto 1439/1,529.30,6415.93
    .vendor >> Buy level 15 drink from Taldan
step
    >>Go back to the dock
    .goto 1448/1,600.92,6424.93
.target Cerellean Whiteclaw
>>Talk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Turn in Beached Sea Turtle
    .turnin 4723 >>Turn in Beached Sea Creature
    .turnin 4728 >>Turn in Beached Sea Creature << Gnome
step
    .goto 1439/1,-157.79,6206.770
     >> Click on the red crystal
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #sticky
    #label MoonstalkersF
     >> Kill any type of Moonstalker. Loot them for their fangs
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto 1439/1,47.88,6748.67
.target Asterion
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Turn in Bashal'Aran
step
    .goto 1439/1,-376.56,6805.87
    >>Equip your new wand
    >>Loot the Blackwood Grain Sample from the Barrel, then run south-east toward Den Mother (don't fight the mobs)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    >>Kill Den Mother. Be careful as her cubs can knock you down for 2 seconds
    >>Grind to 16 and try again if you're struggling
    .goto 1439/1,-430.27,6662.65
    .complete 2139,1 --Den Mother (1)
step
    >>Loot the Blackwood Nut Sample from the Barrel
    .goto 1439/1,-451.23,6870.06
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Loot the Blackwood Fruit Sample from the Barrel. A mob will spawn in front of you, and in between the huts of the west - you may have to run
    .goto 1439/1,-520.01,6873.99
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Use the Filled Cleansing Bowl in your inventory near the campfire. This will turn all nearby furbolgs friendly.
    >>Kill the Satyr that spawns in between the camps and then runs around the fire. Start at max range as he can be difficult. Loot the basket that drops on the ground after killing him
    .goto 1439/1,-489.22,6879.67
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto 1439/1,-659.52,6901.50,35 >> Head to the cave above the waterfall
step
    .goto 1439/1,-704.06,6809.80
     >> Stay on the upper part of the cave. If theres no Death Cap at the end of the top side, then drop down and get one from below
     >> The first blue one at the mouth of the cave should've respawned by the time you've looted the Death Cap
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,-658.87,7246.47
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >>Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 966 >>Accept The Tower of Althalaxx
step
    >>Kill Dark Strand Fanatics. Loot them for Parchments
    .goto 1439/1,-684.41,7161.32
    .complete 966,1 --Worn Parchment (4)
step
    .goto 1439/1,-658.87,7246.47
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >>Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 967 >>Accept The Tower of Althalaxx
step
    #requires MoonstalkersF
    .goto 1439/1,-537.04,7540.35
    .accept 4727 >>Accept Beached Sea Turtle
step
    #sticky
    #completewith Turtles
     >> Kill Reef Crawlers along the coast, don't go out of your way to complete this quest - Dont kill mobs 4 levels or more above
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto 1439/1,-423.72,7277.04,25,0
    .goto 1439/1,-417.83,7262.19
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    #softcore
    #label Turtles
    >>Leave some of the nearby murlocs alive, you're gonna die to them after you accept this quest
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Accept Beached Sea Turtle
step
    #hardcore
    #label Turtles
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Accept Beached Sea Turtle
step
    #softcore
    .deathskip >> Die and respawn in Auberdine
step
    .goto 1439/1,491.97,6582.303
    >>Equip your new wand
.target Thundris Windweaver
>>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
step
    .goto 1439/1,397.65,6437.33
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >>Turn in Tharnariun's Hope
step
    .goto 1439/1,471.66,6439.95
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >>Turn in The Fragments Within
step
    .goto 1439/1,497.21,6427.72
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
.target Barithras Moonshade
    .accept 948 >> Accept Onu
step
    .goto 1439/1,503.10,6401.96
     >> Click on the wanted poster outside the inn
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .isQuestComplete 1138
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Turn in Fruit of the Sea
step
    #label end
    #requires bowl
    .goto 1448/1,543.42,6342.52
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
step
     #completewith Murkdeep
     >> Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto 1439/1,413.37,4818.17,0
     >> Kill Grizzled Thistle Bears. Loot them for Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,89.14,5002.00
>>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
.target Onu
    .accept 944 >> Accept The Master's Glaive
step
    #completewith next
    .goto 1439/1,79.97,4986.72
    .vendor >> Buy level 15 water from Tiyani
step << Human
    >>Loot the remains
    .goto 1439/1,585.63,5237.370
    .accept 4728 >>Accept Beached Sea Creature
step
    #label Murkdeep
    .goto 1439/1,549.61,4990.65
    >> Clear the murloc camp, stay away from the bonfire in the center
    >> Once you clear everything, move to the center of the camp to summon Murkdeep
    >> If you're lucky, Murkdeep might already be up about 30 yards off the shore to the west (if someone died on him before).
    .complete 4740,1 --Murkdeep (1)
step
     >> Kill crabs along the coast for Fine Crab Chunks
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Loot the remains
    .goto 1439/1,799.82,4808.12
    .accept 4730 >>Accept Beached Sea Creature
step
    >>Loot the remains. Be careful as the Oracles do 90 damage lightning bolts, and can healing wave to full when they're at <55% hp. The turtle head here has LoS
    >>Always leave yourself an escape route. Tidehunter's aren't so bad, but be aware of their low-damage poison ability
    >>Try to save your heal potions for later, especially your big ones
    .goto 1439/1,865.32,4678.432
    .accept 4731 >>Accept Beached Sea Turtle
step
    >>The turtle shell on the island has LoS
    .goto 1439/1,896.76,4597.21
    .accept 4732 >>Accept Beached Sea Turtle
step
    >>Loot it at its neck, be careful of the 2 mobs hidden by the terrain (you should only need to kill 3 mobs to loot this one)
    .goto 1439/1,892.83,4517.30
    .accept 4733 >>Accept Beached Sea Creature
step
    .goto 1439/1,602.01,4678.87
.target Prospector Remtravel
>>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
step
    .goto 1439/1,602.01,4678.87
     >>This quest is VERY hard. Do it with another player if you can.
     >> Start the escort quest
.target Prospector Remtravel
>>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .accept 731,1 >> Accept The Absent Minded Prospector
step
     >>Escort Prospector Remtravel
     >>Let Remtravel aggro everything (as mobs need to hit him for them to aggro him), then blast the mob with fireballs
     >>Remtravel is really squishy, so try to take aggro off of him from the other mobs
     >>When troggs spawn, polymorph the one he isn't attacking, then nuke the other one when it has hit him. Polymorph the mage first that spawns near the end AFTER it shoots a fireball at the prospector
     >>If you can't do this quest first-time, just skip it - it is VERY skill-intensive and also very luck-based.
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >> Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>Kill Plainstriders. Make sure you have at least 1 light feather for later
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto 1439/1,413.37,4818.17,0
     >> Kill Grizzled Thistle Bears. Loot them for Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>Keep an eye out for The Powers Below. It's a low droprate, free quest
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >> Accept The Powers Below
step
    #label Glaive
    .goto 1439/1,433.02,4529.09
     >> Enter The Master's Glaive and clear mobs around the altar in the center
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto 1439/1,410.09,4519.49
.target Therylune
>>Talk to |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Accept Therylune's Escape
step
     >> Drop the scrying bowl from your inventory on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto 1439/1,416.64,4576.69
     >> Click on the book on top of the pedestal. Be careful that Therylune doesnt run off if you started it already
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
step
    #label Therylune
    #requires TheryluneE
    >> Finish the escort quest
    >> When you kill the last mob leading out of the glaive, make a campfire and cook all of the meat/eggs you still have to level your cooking skill
    >> You need 50 cooking skill for a free quest in Darkshire
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto 1439/1,493.28,4321.68,100,0
    .goto 1439/1,389.79,4836.94,100,0
    .goto 1439/1,71.46,4749.17,100,0
    .goto 1439/1,389.79,4836.94,0
     >> Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears
     >> If you're getting super unlucky with spawns and droprates, you can skip this quest
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto 1439/1,413.37,4818.170
     >> Kill Grizzled Thistle Bears all around southern Darkshore. Loot them for Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,229.97,4815.55
    .turnin 1003 >> Turn in Buzzbox 525
step
    #requires MoonstalkerP
    .goto 1439/1,89.14,5002.00
.target Onu
>>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
step
    #completewith next
    .goto 1439/1,79.97,4987.16
    .vendor >> Buy food/drink from Tiyani if needed
step
    >>Accept the Kerlonian escort quest. If he's not there, skip this step
    .goto 1439/1,33.47,4996.33
.target Kerlonian Evershade
>>Talk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 5321 >>Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    >>Loot the small gray chest next to Kerlonian
    .goto 1439/1,33.47,4996.33
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto 1440/1,152.23,3260.72
    >>Run south to Ashenvale. Bind the Horn of Awakening to your bars, and use it on Kerlonian when he starts walking in place and falls asleep
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto 1440/1,128.01,3305.31
.target Liladris Moonriver
>>Talk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 5321 >>Turn in The Sleeper Has Awakened
step
    .goto 1440/1,189.71,3185.390
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >>Turn in The Tower of Althalaxx
step
    #softcore
    >>Run up the road south. Head toward The Shrine of Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
step
    #hardcore
    >>Run up the road south. Head toward The Shrine of Aessina
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
step
    .hs >> Hearth to Auberdine
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Turn in Fruit of the Sea
step
    .goto 1439/1,543.06,6342.130
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Turn in Beached Sea Creature
    .turnin 4731 >>Turn in Beached Sea Turtle
    .turnin 4732 >>Turn in Beached Sea Turtle
    .turnin 4733 >>Turn in Beached Sea Creature
step
    .goto 1439/1,470.35,6439.07
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >>Turn in WANTED: Murkdeep!
step
    .isQuestComplete 986
    >>Keep the next part of the quest in your questlog for the +3 stamina cloak. Abandon the quest when you dont need the cloak anymore
    .goto 1439/1,362.93,6434.71
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Turn in A Lost Master
.target Terenthis
    .accept 993 >>Accept A Lost Master
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .isQuestComplete 731
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Run back to the dock. Wait for the boat to Darnassus to arrive
    .goto 1439/1,555.50,6418.99,30,0
    .goto 1439/1,769.03,6579.24,40
step
    .isOnQuest 741
    .zone Teldrassil >> Take the boat to Darnassus
step
    .isOnQuest 741
    .goto 1438/1,965.80,8781.63,30 >> Go through the purple portal
step
    .isOnQuest 741
    .goto 1457/1,2607.74,9642.04
>>Talk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .turnin 741 >>Turn in The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
    .accept 942 >>Accept The Absent Minded Prospector
step
    .goto 1438/1,841.05,8641.122
    .fp Teldrassil >> Get the Teldrassil Flight Path
    .fly Auberdine >> Fly to Auberdine
step
    .goto 1439/1,818.16,6422.92,50,0
    .zone Wetlands >> Take the boat to Menethil
step
    #completewith next
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    >> If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there. Otherwise, skip this step
    .collect 4371,1,175,1
step
    .goto 1437/0,-782.03,-3793.12
    .fly Ironforge >> Fly to Ironforge
step << skip --logout skip
    #completewith next
    .goto 1455/0,-1158.16,-4816.32,0
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    .zone Stormwind City >> Take the tram to Stormwind City
step
    #completewith FlyAndy
    .goto 1453/0,638.8,-8341.95
    .vendor >> Buy a Bronze Tube if you haven't
    >>This is a limited supply item, skip this step if the npc doesn't have it
    .bronzetube
step << Human
    #label FlyAndy
    .goto 1429/0,409.13,-9100.58
    .zone Elwynn Forest >> Travel to Elwynn Forest
step << Gnome
    .goto 1429/0,622.93,-8830.700
    .zone Stormwind City >> Travel to Stormwind City
step << Gnome
    #label FlyAndy
    >>Run into Stormwind and get the Flight Path
    .goto 1453/0,606.4,-8812.0,50,0
    .goto 1453/0,490.12,-8835.76
    .fp Stormwind City >> Get the Stormwind City flight path
step << Gnome
    .goto 1453/0,493.08,-8867.22,12,0
    .goto 1453/0,507.6,-8885.59,18 >> Drop down to the small ledge by running into the white wall. Be careful. Run along it toward the exit of Stormwind
step
    >> Run into the upstairs of the Goldshire Inn
    .goto 1429/0,44.00,-9459.11,15,0
    .goto 1429/0,14.84,-9477.86,15,0
    .goto 1429/0,34.28,-9471.61
    .trainer >> Train your class spells
step
    .goto 1429/0,-1637.62,-9642.89,125,0
    .zone Redridge Mountains >> Run all the way east to Redridge Mountains. Sort out your keybinds en route, making sure you have your spells comfortably on your bars
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-21 Redridge Mage AoE
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide Mage
#defaultfor Alliance Mage
#next 21-22 Duskwood Mage AoE

step
    #sticky
    #completewith Gnolls
    +start AoEing needed quest mobs in groups of 3+ that you see.
    >>Keep this tutorial open in another tab for the Redridge AoE Section if needed:
    .link https://youtu.be/SxMc2GoP33c?t=56 >> CLICK HERE
step
    >>Talk to Guard Parker. He patrols around the crossroads a little
    .goto 1429/0,-1902.44,-9609.56
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>Accept Encroaching Gnolls
step
    #sticky
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >>Turn in Encroaching Gnolls
.target Deputy Feldon
    .accept 246 >>Accept Assessing the Threat
step
    .goto 1433/0,-2234.89,-9435.060
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    #requires Gnolls
    .goto 1433/0,-2298.28,-9283.90
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >>Accept Blackrock Menace
step
    .goto 1433/0,-2268.54,-9279.27
.target Foreman Oslow
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 125 >>Accept The Lost Tools
step
    .goto 1433/0,-2242.49,-9259.00
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 118 >>Accept The Price of Shoes
step
    >>Inside the Town Hall
    .goto 1433/0,-2216.00,-9215.85
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Accept Solomon's Law
step
    .goto 1433/0,-2221.87,-9218.60
    >>Go inside the building
.target Magistrate Solomon
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 120 >>Accept Messenger to Stormwind
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >>Accept Selling Fish
step
    .goto 1433/0,-2151.53,-9247.12
    .accept 180 >>Accept Wanted: Lieutenant Fangore
step
    >>Inside the Inn
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Accept A Free Lunch
step
    .goto 1433/0,-2157.18,-9223.96
    .home >> Set your Hearth to Lakeshire
step
    .goto 1433/0,-2207.32,-9351.66
.target Shawn
>>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Accept Hilary's Necklace
step
    >>Look for Hilary's Necklace underwater. It's in a brown patch of dirt
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto 1433/0,-1906.66,-9478.500,0
    +AoE the gnolls in the camps
step
    .goto 1433/0,-1902.54,-9609.83
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .turnin 129 >>Turn in A Free Lunch
.target Guard Parker
    .accept 130 >>Accept Visit the Herbalist
step
    .goto 1433/0,-2234.89,-9435.21
    .fly Stormwind >> Fly to Stormwind
step
    >>Go into Stormwind. Go to the weapon trainer
   .goto 1453/0,612.99,-8796.14
   .trainer >> Train 1h Swords and Daggers
step
    #softcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    +Go to the Auction House. Buy a Bronze Tube if its affordable
    >>If theres none here or they're too expensive, you can also potentially buy one from Billibub in the Dwarven District
    >>If you can't find one, skip this step
    .bronzetube
step
    #hardcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    .vendor >> Check Billibub in the Dwarven District for a Bronze Tube. Buy one if it's available
    .bronzetube
step
    .goto 1453/0,520.77,-8954.16
>>Talk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >>Turn in Messenger to Stormwind
.target General Marcus Jonathan
    .accept 121 >>Accept Messenger to Stormwind
step
    >>Run to Goldshire
    .goto 1429/0,87.73,-9456.79
>>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .turnin 118 >>Turn in The Price of Shoes
.target Smith Argus
    .accept 119 >>Accept Return to Verner
step
    >>Run to Sentinel Hill
    .goto 1436/0,1045.12,-10508.80
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >>Accept The Defias Brotherhood
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >> Hearth to Lakeshire if it's up
step
    #completewith hsLakeshire
    #label WFFP
    .goto 1436/0,1037.42,-10628.50
    .fp Westfall >> Get the Westfall flight path << Gnome
    .fly Redridge >> Fly to Redridge
step
    #requires WFFP
    .goto 1433/0,-2243.14,-9259.43
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 119 >>Turn in Return to Verner
.target Verner Osgood
    .accept 122 >>Accept Underbelly Scales
    .accept 124 >>Accept A Baying of Gnolls
step
    >>Go into the Keep
    .goto 1433/0,-2220.56,-9218.74
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 121 >>Turn in Messenger to Stormwind
.target Magistrate Solomon
    .accept 143 >>Accept Messenger to Westfall
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Accept Solomon's Law
step
    >>Go into the top floor of the Inn
    .goto 1433/0,-2145.45,-9231.63
>>Talk to |cRXP_FRIENDLY_Wiley the Black|r
    .turnin 65 >>Turn in The Defias Brotherhood
.target Wiley the Black
    .accept 132 >>Accept The Defias Brotherhood
step
    .goto 1433/0,-2205.58,-9351.52
.target Hilary
>>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Turn in Hilary's Necklace
step
    #era/som
    #completewith Murlocs
    >>Grind the first 3 items for Redridge Goulash as you do other quests. Also get enough Chunks of Boar Meat to get you to 50 cooking
    >>Try to focus heavily on the Goretusks, don't really worry about spider meat yet
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>Kill Dragon Whelps. Loot them for their scales
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AoE the gnolls in the area. Refer to the AoE video if needed
    >>Deadzone the Poachers during the AoE pull so you don't get shot
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>AoE the murlocs in the area. You'll have to single target the Tidecallers (lightning bolt + healing wave)
    >>You can AoE the Shorestrikers (Charge) and Flesheaters (25 damage instant lifesteal on attack chance). Creatively make pulls
    >>Save 8 Fins for later
    .goto 1433/0,-2630.63,-9581.16
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Get the Condor Meat and Whelp scales from around this area. If you're waiting on respawns, then go east to get some Axes then come back here
    .goto 1433/0,-2895.91,-9697.86
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Get the Whelp scales from around this area. If you're waiting on respawns, then go east to get some Axes then come back here
    .goto 1433/0,-2895.91,-9697.86
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AoE orcs in the area. Loot them for their axes. Be careful as the Outrunners Net and the Renegades shield bash.
    >>Try to avoid killing the Renegades due to their high level. Pull 3 max at a time. AoEing here is Very high risk, medium reward
    >>Don't get all the axes yet, you have a better opportunity to finish it later
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Go underwater. Loot the grey box
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Finish off the Goretusk snouts here
    .goto 1433/0,-2267.02,-9596.36
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto 1433/0,-2238.15,-9443.75
.target Deputy Feldon
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 246 >>Turn in Assessing the Threat
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Turn in Blackrock Menace
step
    .goto 1433/0,-2268.54,-9279.12
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 125 >>Turn in The Lost Tools
.target Foreman Oslow
    .accept 89 >>Accept The Everstill Bridge
step
    .goto 1433/0,-2243.36,-9259.43
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 122 >>Turn in Underbelly Scales
step
    #level 20
    .goto 1433/0,-2172.59,-9261.02
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Turn in Selling Fish
.target Dockmaster Baren
    .accept 150 >>Accept Murloc Poachers
    .turnin 150 >>Turn in Murloc Poachers
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Turn in Selling Fish
step
    .goto 1433/0,-2045.38,-9245.82
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Turn in Visit the Herbalist
.target Martie Jainrose
    .accept 131 >>Accept Delivering Daffodils
    .accept 34 >>Accept An Unwelcome Guest
step
    >>Kill Bellygrub. Kite her back to Guard Adams all the way in the town
    >>Be careful as she tremors (instant 80 aoe damage), and charges (keep her slowed and nova'd if possible)
    >>Make sure you do majority damage (51%+)
    >>This quest is VERY hard
    .goto 1433/0,-1910.79,-9288.97
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto 1433/0,-2045.16,-9245.67
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Turn in An Unwelcome Guest
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    >>Kill Gnolls. Loot them for Pikes and Rivets
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Kill the nicely stacked groups of Orcs. Loot them to finish off the axes
    >>If you get unlucky after clearing the close groups, you have another opportunity later
    .goto 1433/0,-2375.13,-9228.73,50,0
    .goto 1433/0,-2401.83,-9180.95,50,0
    .goto 1433/0,-2449.15,-9161.70,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto 1433/0,-2639.97,-9149.24,150 >> Run toward the spiders
step
    #era/som
    >>Kill Spiders. Loot them for the meat
    >>Be careful as their poison can do some damage
    >>Be careful of Chatter (rare), as he has an 8 second-long stun
    .goto 1433/0,-2813.20,-9230.04
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Finish off killing Orcs for the axes
    .goto 1433/0,-2911.11,-9195.00
    .complete 20,1 --Blackrock Axe (10)
step
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Turn in Blackrock Menace
step
    .goto 1433/0,-2268.76,-9279.27
.target Foreman Oslow
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 89 >>Turn in The Everstill Bridge
step
    .goto 1433/0,-2243.36,-9259.57
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 124 >>Turn in A Baying of Gnolls
.target Verner Osgood
    .accept 126 >>Accept Howling in the Hills
step
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Turn in Delivering Daffodils
step
    .goto 1433/0,-2157.18,-9223.81
    .vendor >> Buy level 15 drink
step
    #era/som
    .goto 1433/0,-2063.61,-9212.080
    >>Exit the Inn. Go west then into the building
.target Chef Breanna
>>Talk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
step
    #era/som
    #completewith next
    .goto 1433/0,-2146.97,-9225.110
    +Cook all of the boar meat up until 50 cooking skill
    >>If you don't have enough meat, grind some boars en route to Darkshire
step
    .goto 1433/0,-1711.94,-9895.21,90,0
    .zone Duskwood >> Travel to Duskwood
]])
