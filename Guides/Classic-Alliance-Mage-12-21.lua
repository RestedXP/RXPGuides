local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-18 Darkshore Mage AoE
#version 1
#group RestedXP Alliance Mage
#defaultfor Alliance Mage
#next 18-21 Redridge Mage AoE

step
    #completewith next
    .goto Darkshore,36.77,44.28
    .vendor >> You can purchase extremely cheap level 5 food from Laird (fish vendor)
step
    >>Go upstairs to the top floor
    .goto Darkshore,36.98,44.14
.target Wizbang Cranktoggle
>>Talk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >>Accept Buzzbox 827
step
    >>Jump down to the 1st floor
    .goto Darkshore,37.04,44.13
    .home >> Set your Hearthstone to Auberdine
step
    .goto Darkshore,37.32,43.64
.target Barithras Moonshade
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >>Accept Cave Mushrooms
step
    .goto Darkshore,37.68,43.38
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >>Accept The Red Crystal
step
    .goto Darkshore,38.84,43.41
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >>Accept Plagued Lands
step
    .goto Darkshore,39.37,43.49
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Accept How Big a Threat?
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accept Washed Ashore
step
    .goto Darkshore,36.34,45.58
    .fp Auberdine >> Get the Auberdine flight path
step
    #completewith Bear
     >> Kill Crawlers along the coast
    .complete 983,1 --Crawler Leg (6)
step
    .goto Darkshore,36.38,50.88
     >> Loot the sea creature
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >> Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,39.01,53.70
     >> Head towards the vicinity furbolg camp
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >> Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    .goto Darkshore,38.47,57.92
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,36.61,54.29,150,0
    .goto Darkshore,36.10,44.42
    >> Kill Crawlers along the coast
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >> Save Strider Meat x5 for later
    .collect 5469,5,2178,1
step
    .goto Darkshore,36.66,46.26
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto Darkshore,36.62,45.59
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Turn in Washed Ashore
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Accept Washed Ashore
step
    .goto Darkshore,36.73,44.06,40,0
    >>Run to the Docks
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,33.70,42.45,60 >> Run up to the docks then jump in the water at the intersection
step
    .goto Darkshore,31.86,46.33
    >>Click on the sea turtle head underwater
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.62,45.59
    >>Kill Threshers en route back to shore
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
step
    .goto Darkshore,38.84,43.41
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
.target Tharnariun Treetender
    .accept 2138 >> Accept Cleansing of the Infected
step
    .goto Darkshore,39.37,43.49
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
.target Terenthis
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
step
    >> Kill furbolgs
    .goto Darkshore,39.83,56.11
    .goto Darkshore,39.74,53.76,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto Darkshore,39.37,43.48
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Turn in How Big a Threat?
.target Terenthis
    .accept 986 >>Accept A Lost Master
step
    >>Go Upstairs
    .goto Darkshore,39.04,43.55
.target Sentinel Elissa Starbreeze
>>Talk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .accept 965 >>Accept The Tower of Althalaxx
step
    .goto Darkshore,38.11,41.16
.target Gorbold Steelhand
>>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
    #label Thundris
    .goto Darkshore,37.39,40.13
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
    .goto Darkshore,38.93,29.33,40,0
    .goto Darkshore,38.23,28.79
     >> Enter the 1st ship by the hole on the hull, then go to the back of the lowest floor of the ship
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto Darkshore,40.30,27.69,40,0
    .goto Darkshore,39.63,27.45
     >> Enter the 2nd ship by the hole on the hull, then go to the back of the lowest floor of the ship
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto Darkshore,41.96,28.64
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
    .goto Darkshore,41.94,31.47
    .accept 4723 >> Accept Beached Sea Creature
step
    .goto Felwood,27.70,10.03
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Turn in Bashal'Aran
.target Asterion
    .accept 955 >> Accept Bashal'Aran
step
    .goto Felwood,29.13,12.34
     >> Kill Grellkins. Loot them for their Earrings
    .complete 955,1 --Grell Earring (8)
step
    .goto Felwood,27.70,10.03
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
.target Asterion
    .accept 956 >> Accept Bashal'Aran
step
    .goto Felwood,29.60,12.52
     >> Kill satyrs. Loot them for the Seal
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto Felwood,27.70,10.03
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
    .goto Darkshore,50.77,25.43
    >>Use the Empty Sampling Tube in your bags
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Save the Small Eggs you loot to level your cooking more later. Save ALL the light feathers you get for later
step
    .goto Darkshore,47.11,48.63
     >> Run up to The Red Crystal in the mountains
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>Talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >>Accept The Fall of Ameth'Aran
step
    #sticky
    #label anaya
    .goto Darkshore,42.29,60.46,0
     >> Kill Anaya Dawnrunner. She patrols around the middle of Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >> Kill ghosts. Loot them for relics
    .complete 958,1 --Highborne Relic (7)
step
    .goto Felwood,25.98,40.62
     >> Click on the tablet on the ground
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Felwood,25.66,39.11
     >> Click on the green torch at the gazebo
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Felwood,26.71,35.53
     >> Click on the tablet on the ground
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>Talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    .goto Darkshore,38.83,60.82
    >>Finish killing Rabid Thistle Bears and getting Strider Meat
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Loot the Sea Turtle
    .goto Darkshore,37.14,62.12
    .accept 4722 >>Accept Beached Sea Turtle
step
    >>Loot the Sea Turtle
    .goto Darkshore,36.02,70.79
    .accept 4728 >>Accept Beached Sea Creature
step
    .hs >> Hearth to Auberdine
step
    .goto Darkshore,38.84,43.42
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >>Turn in Cleansing of the Infected
.target Tharnariun Treetender
    .accept 2139 >>Accept Tharnariun's Hope
step
    .goto Darkshore,38.11,41.17
.target Gorbold Steelhand
>>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >>Turn in Deep Ocean, Vast Sea
    .vendor >> Buy some Mild Spices from Gorbold until you have enough to cook all your eggs
step
    .goto Darkshore,37.69,40.66
    >>Make sure you have 10 points in cooking or you cant accept/turnin the quest
.target Alanndarian Nightsong
>>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >>Accept Easy Strider Living
    .turnin 2178 >>Turn in Easy Strider Living
step
    .goto Darkshore,37.40,40.13
>>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >>Turn in Tools of the Highborne
    .turnin 4762 >>Turn in The Cliffspring River
.target Thundris Windweaver
    .accept 4763 >>Accept The Blackwood Corrupted
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >>Accept The Absent Minded Prospector
step
    .goto Darkshore,37.71,43.36
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Accept As Water Cascades
step
    .goto Darkshore,37.78,44.06
     >> Fill the Empty Water Tube at the moonwell
    .complete 4812,1
     >> Fill the Empty Bowl at the moonwell
    .collect 12347,1,4763,1
step
    #completewith next
    .goto Darkshore,36.83,43.91
    .vendor >> Buy level 15 drink from Taldan
step
    >>Go back to the dock
    .goto Felwood,18.10,18.48
.target Cerellean Whiteclaw
>>Talk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Turn in Beached Sea Turtle
    .turnin 4723 >>Turn in Beached Sea Creature
    .turnin 4728 >>Turn in Beached Sea Creature << Gnome
step
    .goto Darkshore,47.32,48.70
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
    .goto Darkshore,44.18,36.29
.target Asterion
>>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Turn in Bashal'Aran
step
    .goto Darkshore,50.66,34.98
    >>Equip your new wand
    >>Loot the Blackwood Grain Sample from the Barrel, then run south-east toward Den Mother (don't fight the mobs)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto Darkshore,52.60,36.65,45,0
    >>Kill Den Mother. Be careful as her cubs can knock you down for 2 seconds
    >>Grind to 16 and try again if you're struggling
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step
    >>Loot the Blackwood Nut Sample from the Barrel
    .goto Darkshore,51.80,33.51
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Loot the Blackwood Fruit Sample from the Barrel. A mob will spawn in front of you, and in between the huts of the west - you may have to run
    .goto Darkshore,52.85,33.42
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Use the Filled Cleansing Bowl in your inventory near the campfire. This will turn all nearby furbolgs friendly.
    >>Kill the Satyr that spawns in between the camps and then runs around the fire. Start at max range as he can be difficult. Loot the basket that drops on the ground after killing him
    .goto Darkshore,52.38,33.29
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto Darkshore,54.98,32.79,35 >> Head to the cave above the waterfall
step
    .goto Darkshore,55.66,34.89
     >> Stay on the upper part of the cave. If theres no Death Cap at the end of the top side, then drop down and get one from below
     >> The first blue one at the mouth of the cave should've respawned by the time you've looted the Death Cap
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto Darkshore,54.97,24.89
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >>Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 966 >>Accept The Tower of Althalaxx
step
    >>Kill Dark Strand Fanatics. Loot them for Parchments
    .goto Darkshore,55.36,26.84
    .complete 966,1 --Worn Parchment (4)
step
    .goto Darkshore,54.97,24.89
>>Talk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >>Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 967 >>Accept The Tower of Althalaxx
step
    #requires MoonstalkersF
    .goto Darkshore,53.11,18.16
    .accept 4727 >>Accept Beached Sea Turtle
step
    #sticky
    #completewith Turtles
     >> Kill Reef Crawlers along the coast, don't go out of your way to complete this quest - Dont kill mobs 4 levels or more above
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto Darkshore,51.38,24.19,25,0
    .goto Darkshore,51.29,24.53
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    #softcore
    #label Turtles
    >>Leave some of the nearby murlocs alive, you're gonna die to them after you accept this quest
    .goto Darkshore,44.18,20.60
    .accept 4725 >> Accept Beached Sea Turtle
step
    #hardcore
    #label Turtles
    .goto Darkshore,44.18,20.60
    .accept 4725 >> Accept Beached Sea Turtle
step
    #softcore
    .deathskip >> Die and respawn in Auberdine
step
    .goto Darkshore,37.40,40.13
    >>Equip your new wand
.target Thundris Windweaver
>>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
step
    .goto Darkshore,38.84,43.42
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >>Turn in Tharnariun's Hope
step
    .goto Darkshore,37.71,43.36
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >>Turn in The Fragments Within
step
    .goto Darkshore,37.32,43.64
>>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
.target Barithras Moonshade
    .accept 948 >> Accept Onu
step
    .goto Darkshore,37.23,44.23
     >> Click on the wanted poster outside the inn
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .isQuestComplete 1138
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Turn in Fruit of the Sea
step
    #label end
    #requires bowl
    .goto Felwood,19.10,20.63
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
    .goto Darkshore,38.60,80.50,0
     >> Kill Grizzled Thistle Bears. Loot them for Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,43.55,76.29
>>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
.target Onu
    .accept 944 >> Accept The Master's Glaive
step
    #completewith next
    .goto Darkshore,43.69,76.64
    .vendor >> Buy level 15 water from Tiyani
step << Human
    >>Loot the remains
    .goto Darkshore,35.97,70.90
    .accept 4728 >>Accept Beached Sea Creature
step
    #label Murkdeep
    .goto Darkshore,36.52,76.55
    >> Clear the murloc camp, stay away from the bonfire in the center
    >> Once you clear everything, move to the center of the camp to summon Murkdeep
    >> If you're lucky, Murkdeep might already be up about 30 yards off the shore to the west (if someone died on him before).
    .complete 4740,1 --Murkdeep (1)
step
     >> Kill crabs along the coast for Fine Crab Chunks
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Loot the remains
    .goto Darkshore,32.70,80.73
    .accept 4730 >>Accept Beached Sea Creature
step
    >>Loot the remains. Be careful as the Oracles do 90 damage lightning bolts, and can healing wave to full when they're at <55% hp. The turtle head here has LoS
    >>Always leave yourself an escape route. Tidehunter's aren't so bad, but be aware of their low-damage poison ability
    >>Try to save your heal potions for later, especially your big ones
    .goto Darkshore,31.70,83.72
    .accept 4731 >>Accept Beached Sea Turtle
step
    >>The turtle shell on the island has LoS
    .goto Darkshore,31.22,85.56
    .accept 4732 >>Accept Beached Sea Turtle
step
    >>Loot it at its neck, be careful of the 2 mobs hidden by the terrain (you should only need to kill 3 mobs to loot this one)
    .goto Darkshore,31.28,87.39
    .accept 4733 >>Accept Beached Sea Creature
step
    .goto Darkshore,35.72,83.69
.target Prospector Remtravel
>>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
step
    .goto Darkshore,35.72,83.69
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
    .goto Darkshore,38.60,80.50,0
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
    .goto Darkshore,38.30,87.12
     >> Enter The Master's Glaive and clear mobs around the altar in the center
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto Darkshore,38.65,87.34
.target Therylune
>>Talk to |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Accept Therylune's Escape
step
     >> Drop the scrying bowl from your inventory on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto Darkshore,38.55,86.03
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
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
     >> Kill any Moonstalker Sire you find and Matriarchs if you're comfortable. Loot them for Pelts. They share spawns with Grizzled Thistle Bears
     >> If you're getting super unlucky with spawns and droprates, you can skip this quest
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto Darkshore,38.60,80.50
     >> Kill Grizzled Thistle Bears all around southern Darkshore. Loot them for Scalps
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,41.40,80.56
    .turnin 1003 >> Turn in Buzzbox 525
step
    #requires MoonstalkerP
    .goto Darkshore,43.55,76.29
.target Onu
>>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
step
    #completewith next
    .goto Darkshore,43.69,76.63
    .vendor >> Buy food/drink from Tiyani if needed
step
    >>Accept the Kerlonian escort quest. If he's not there, skip this step
    .goto Darkshore,44.40,76.42
.target Kerlonian Evershade
>>Talk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 5321 >>Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    >>Loot the small gray chest next to Kerlonian
    .goto Darkshore,44.40,76.42
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto Ashenvale,26.84,36.74
    >>Run south to Ashenvale. Bind the Horn of Awakening to your bars, and use it on Kerlonian when he starts walking in place and falls asleep
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto Ashenvale,27.26,35.58
.target Liladris Moonriver
>>Talk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 5321 >>Turn in The Sleeper Has Awakened
step
    .goto Ashenvale,26.19,38.70
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >>Turn in The Tower of Althalaxx
step
    #softcore
    >>Run up the road south. Head toward The Shrine of Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
step
    #hardcore
    >>Run up the road south. Head toward The Shrine of Aessina
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
step
    .hs >> Hearth to Auberdine
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Turn in Fruit of the Sea
step
    .goto Darkshore,36.62,45.60
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Turn in Beached Sea Creature
    .turnin 4731 >>Turn in Beached Sea Turtle
    .turnin 4732 >>Turn in Beached Sea Turtle
    .turnin 4733 >>Turn in Beached Sea Creature
step
    .goto Darkshore,37.73,43.38
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >>Turn in WANTED: Murkdeep!
step
    .isQuestComplete 986
    >>Keep the next part of the quest in your questlog for the +3 stamina cloak. Abandon the quest when you dont need the cloak anymore
    .goto Darkshore,39.37,43.48
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Turn in A Lost Master
.target Terenthis
    .accept 993 >>Accept A Lost Master
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .isQuestComplete 731
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Run back to the dock. Wait for the boat to Darnassus to arrive
    .goto Darkshore,36.43,43.84,30,0
    .goto Darkshore,33.17,40.17,40
step
    .isOnQuest 741
    .zone Teldrassil >> Take the boat to Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,55.95,89.86,30 >> Go through the purple portal
step
    .isOnQuest 741
    .goto Darnassus,31.24,84.49
>>Talk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .turnin 741 >>Turn in The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
    .accept 942 >>Accept The Absent Minded Prospector
step
    .goto Teldrassil,58.40,94.02
    .fp Teldrassil >> Get the Teldrassil Flight Path
    .fly Auberdine >> Fly to Auberdine
step
    .goto Darkshore,32.42,43.75,50,0
    .zone Wetlands >> Take the boat to Menethil
step
    #completewith next
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >> If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there. Otherwise, skip this step
    .collect 4371,1,175,1
step
    .goto Wetlands,9.49,59.69
    .fly Ironforge >> Fly to Ironforge
step << skip --logout skip
    #completewith next
    .goto Ironforge,56.23,46.83,0
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    .zone Stormwind City >> Take the tram to Stormwind City
step
    #completewith FlyAndy
    .goto StormwindClassic,55.21,7.04
    .vendor >> Buy a Bronze Tube if you haven't
    >>This is a limited supply item, skip this step if the npc doesn't have it
    .bronzetube
step << Human
    #label FlyAndy
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Travel to Elwynn Forest
step << Gnome
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >> Travel to Stormwind City
step << Gnome
    #label FlyAndy
    >>Run into Stormwind and get the Flight Path
    .goto StormwindClassic,57.62,59.48,50,0
    .goto StormwindClassic,66.27,62.13
    .fp Stormwind City >> Get the Stormwind City flight path
step << Gnome
    .goto StormwindClassic,66.05,65.64,12,0
    .goto StormwindClassic,64.97,67.69,18 >> Drop down to the small ledge by running into the white wall. Be careful. Run along it toward the exit of Stormwind
step
    >> Run into the upstairs of the Goldshire Inn
    .goto Elwynn Forest,42.97,65.65,15,0
    .goto Elwynn Forest,43.81,66.46,15,0
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,91.42,73.59,125,0
    .zone Redridge Mountains >> Run all the way east to Redridge Mountains. Sort out your keybinds en route, making sure you have your spells comfortably on your bars
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-21 Redridge Mage AoE
#version 1
#group RestedXP Alliance Mage
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
    .goto Elwynn Forest,99.05,72.15
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>Accept Encroaching Gnolls
step
    #sticky
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >>Turn in Encroaching Gnolls
.target Deputy Feldon
    .accept 246 >>Accept Assessing the Threat
step
    .goto Redridge Mountains,30.59,59.40
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    #requires Gnolls
    .goto Redridge Mountains,33.51,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >>Accept Blackrock Menace
step
    .goto Redridge Mountains,32.14,48.64
.target Foreman Oslow
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 125 >>Accept The Lost Tools
step
    .goto Redridge Mountains,30.94,47.24
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 118 >>Accept The Price of Shoes
step
    >>Inside the Town Hall
    .goto Redridge Mountains,29.72,44.26
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Accept Solomon's Law
step
    .goto Redridge Mountains,29.99,44.45
    >>Go inside the building
.target Magistrate Solomon
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 120 >>Accept Messenger to Stormwind
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >>Accept Selling Fish
step
    .goto Redridge Mountains,26.75,46.42
    .accept 180 >>Accept Wanted: Lieutenant Fangore
step
    >>Inside the Inn
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Accept A Free Lunch
step
    .goto Redridge Mountains,27.01,44.82
    .home >> Set your Hearth to Lakeshire
step
    .goto Redridge Mountains,29.32,53.64
.target Shawn
>>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Accept Hilary's Necklace
step
    >>Look for Hilary's Necklace underwater. It's in a brown patch of dirt
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto Redridge Mountains,15.47,62.40,0
    +AoE the gnolls in the camps
step
    .goto Redridge Mountains,15.28,71.47
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .turnin 129 >>Turn in A Free Lunch
.target Guard Parker
    .accept 130 >>Accept Visit the Herbalist
step
    .goto Redridge Mountains,30.59,59.41
    .fly Stormwind >> Fly to Stormwind
step
    >>Go into Stormwind. Go to the weapon trainer
   .goto StormwindClassic,57.13,57.71
   .trainer >> Train 1h Swords and Daggers
step
    #softcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    +Go to the Auction House. Buy a Bronze Tube if its affordable
    >>If theres none here or they're too expensive, you can also potentially buy one from Billibub in the Dwarven District
    >>If you can't find one, skip this step
    .bronzetube
step
    #hardcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor >> Check Billibub in the Dwarven District for a Bronze Tube. Buy one if it's available
    .bronzetube
step
    .goto StormwindClassic,63.99,75.34
>>Talk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >>Turn in Messenger to Stormwind
.target General Marcus Jonathan
    .accept 121 >>Accept Messenger to Stormwind
step
    >>Run to Goldshire
    .goto Elwynn Forest,41.71,65.55
>>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .turnin 118 >>Turn in The Price of Shoes
.target Smith Argus
    .accept 119 >>Accept Return to Verner
step
    >>Run to Sentinel Hill
    .goto Westfall,56.33,47.52
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
    .goto Westfall,56.55,52.65
    .fp Westfall >> Get the Westfall flight path << Gnome
    .fly Redridge >> Fly to Redridge
step
    #requires WFFP
    .goto Redridge Mountains,30.97,47.27
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 119 >>Turn in Return to Verner
.target Verner Osgood
    .accept 122 >>Accept Underbelly Scales
    .accept 124 >>Accept A Baying of Gnolls
step
    >>Go into the Keep
    .goto Redridge Mountains,29.93,44.46
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 121 >>Turn in Messenger to Stormwind
.target Magistrate Solomon
    .accept 143 >>Accept Messenger to Westfall
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Accept Solomon's Law
step
    >>Go into the top floor of the Inn
    .goto Redridge Mountains,26.47,45.35
>>Talk to |cRXP_FRIENDLY_Wiley the Black|r
    .turnin 65 >>Turn in The Defias Brotherhood
.target Wiley the Black
    .accept 132 >>Accept The Defias Brotherhood
step
    .goto Redridge Mountains,29.24,53.63
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
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>AoE the murlocs in the area. You'll have to single target the Tidecallers (lightning bolt + healing wave)
    >>You can AoE the Shorestrikers (Charge) and Flesheaters (25 damage instant lifesteal on attack chance). Creatively make pulls
    >>Save 8 Fins for later
    .goto Redridge Mountains,48.82,69.49
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Get the Condor Meat and Whelp scales from around this area. If you're waiting on respawns, then go east to get some Axes then come back here
    .goto Redridge Mountains,61.04,77.55
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Get the Whelp scales from around this area. If you're waiting on respawns, then go east to get some Axes then come back here
    .goto Redridge Mountains,61.04,77.55
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AoE orcs in the area. Loot them for their axes. Be careful as the Outrunners Net and the Renegades shield bash.
    >>Try to avoid killing the Renegades due to their high level. Pull 3 max at a time. AoEing here is Very high risk, medium reward
    >>Don't get all the axes yet, you have a better opportunity to finish it later
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Go underwater. Loot the grey box
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Finish off the Goretusk snouts here
    .goto Redridge Mountains,32.07,70.54
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto Redridge Mountains,30.74,60.00
.target Deputy Feldon
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 246 >>Turn in Assessing the Threat
step
    .isQuestComplete 20
    .goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Turn in Blackrock Menace
step
    .goto Redridge Mountains,32.14,48.63
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 125 >>Turn in The Lost Tools
.target Foreman Oslow
    .accept 89 >>Accept The Everstill Bridge
step
    .goto Redridge Mountains,30.98,47.27
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 122 >>Turn in Underbelly Scales
step
    #level 20
    .goto Redridge Mountains,27.72,47.38
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Turn in Selling Fish
.target Dockmaster Baren
    .accept 150 >>Accept Murloc Poachers
    .turnin 150 >>Turn in Murloc Poachers
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Turn in Selling Fish
step
    .goto Redridge Mountains,21.86,46.33
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
    .goto Redridge Mountains,15.66,49.31
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Turn in An Unwelcome Guest
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    >>Kill Gnolls. Loot them for Pikes and Rivets
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Kill the nicely stacked groups of Orcs. Loot them to finish off the axes
    >>If you get unlucky after clearing the close groups, you have another opportunity later
    .goto Redridge Mountains,37.05,45.15,50,0
    .goto Redridge Mountains,38.28,41.85,50,0
    .goto Redridge Mountains,40.46,40.52,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto Redridge Mountains,49.25,39.66,150 >> Run toward the spiders
step
    #era/som
    >>Kill Spiders. Loot them for the meat
    >>Be careful as their poison can do some damage
    >>Be careful of Chatter (rare), as he has an 8 second-long stun
    .goto Redridge Mountains,57.23,45.24
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Finish off killing Orcs for the axes
    .goto Redridge Mountains,61.74,42.82
    .complete 20,1 --Blackrock Axe (10)
step
    .goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Turn in Blackrock Menace
step
    .goto Redridge Mountains,32.15,48.64
.target Foreman Oslow
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 89 >>Turn in The Everstill Bridge
step
    .goto Redridge Mountains,30.98,47.28
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 124 >>Turn in A Baying of Gnolls
.target Verner Osgood
    .accept 126 >>Accept Howling in the Hills
step
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Turn in Delivering Daffodil
step
    .goto Redridge Mountains,27.01,44.81
    .vendor >> Buy level 15 drink
step
    #era/som
    .goto Redridge Mountains,22.70,44.00
    >>Exit the Inn. Go west then into the building
.target Chef Breanna
>>Talk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
step
    #era/som
    #completewith next
    .goto Redridge Mountains,26.54,44.90
    +Cook all of the boar meat up until 50 cooking skill
    >>If you don't have enough meat, grind some boars en route to Darkshire
step
    .goto Redridge Mountains,6.50,91.18,90,0
    .zone Duskwood >> Travel to Duskwood
]])
