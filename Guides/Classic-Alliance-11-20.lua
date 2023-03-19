local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 11-16 Darkshore
#version 1
#group RestedXP Alliance 1-20
#next 16-19 Darkshore
#defaultfor Hunter/NightElf

step <<  NightElf
    .goto Teldrassil,56.25,92.44
	>> Talk to |cFF00FF25Nessa Shadowsong|r
	.target Nessa Shadowsong
    .turnin 6344 >> Turn in Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step <<  NightElf
	>> Talk to |cFF00FF25Vesprystus|r
	.target Vesprystus
    .goto Teldrassil,58.39,94.01
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .accept 6342 >> Accept Flight to Auberdine
step <<  NightElf
     #completewith next
    .fly Auberdine >> Fly to Darkshore
step <<  !NightElf
#map Darkshore
    .goto Felwood,19.10,20.63
    .fp Auberdine >> Get the Auberdine flight path
step
#map Darkshore
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
step <<  NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
.target Laird
>>Talk to |cFF00FF25Laird|r
    .turnin 6342 >> Turn in Flight to Auberdine
    >>Skip the follow up
step
    .goto Darkshore,37.0,44.0
    .home >> Set your Hearthstone to Auberdine
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>Head upstairs
.target Wizbang Cranktoggle
>>Talk to |cFF00FF25Wizbang Cranktoggle|r
    .accept 983 >> Accept Buzzbox 827
step
.target Tharnariun Treetender
>>Talk to |cFF00FF25Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
#map Darkshore
    .goto Felwood,21.63,18.15
step
#map Darkshore
    .goto Felwood,22.24,18.22
.target Terenthis
>>Talk to |cFF00FF25Terenthis|r
    .accept 984 >> Accept How Big a Threat?
step <<  Dwarf Hunter
    #sticky
    .tame 2163 >> Tame a Thistle Bear, they can stun you, send your pet on them and when they use their stun on your pet, abandon your current pet and start taming it
step
    #label crab1
    #sticky
     >> Kill crabs along the coast.
    .complete 983,1
step
#map Darkshore
    .goto Felwood,18.81,26.69
     >> Loot the sea creature remains
    .complete 3524,1
step << Druid
    #completewith end
    >>Level herbalism to 15 and collect 5 earthroot for a quest later
    .collect 2449,5
step
#map Darkshore
    .goto Felwood,22.39,29.45
     >> Head towards the furbolg camp
     .complete 984,1
step
    >> Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags (purple orb)
    .goto Darkshore,38.47,57.92
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
     .xp 12-1500 >> Grind mobs until you are 1500xp off level 12
step
    #requires crab1
#map Darkshore
    .goto Felwood,19.13,21.39
    >> Click the Buzzbox
    .turnin 983 >> Turn in Buzzbox 827
step
	#era/som
#map Darkshore
	.goto Felwood,19.13,21.39
    .accept 1001 >> Accept Buzzbox 411
step
#map Darkshore
    .goto Felwood,19.10,20.63
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
.target Gwennyth Bly'Leggonde
    .accept 4681 >> Accept Washed Ashore
step
#map Darkshore
    .goto Felwood,18.10,18.48
.target Cerellean Whiteclaw
>>Talk to |cFF00FF25Cerellean Whiteclaw|r
    .accept 963 >> Accept For Love Eternal
step
	#era/som
    #sticky
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
     >> Start working on Darkshore Threshers.
    .complete 1001,1
step
    #completewith next
    .goto Darkshore,33.70,42.45,60 >> Run up to the docks then jump in the water at the intersection
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Click on the sea turtle remains
    .complete 4681,1
step
    #label washed1
#map Darkshore
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
step
#map Darkshore
    .goto Felwood,19.90,18.40
.target Barithras Moonshade
>>Talk to |cFF00FF25Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
step
#map Darkshore
    .goto Felwood,20.34,18.12
.target Sentinel Glynda Nal'Shea
>>Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
step
#map Darkshore
    .goto Felwood,21.63,18.15
>>Talk to |cFF00FF25Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
.target Tharnariun Treetender
    .accept 2138 >> Accept Cleansing of the Infected
step
#map Darkshore
    .goto Felwood,22.24,18.22
>>Talk to |cFF00FF25Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
.target Terenthis
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
step <<  Dwarf/Gnome/Human
#map Darkshore
    .goto Felwood,20.80,15.58
.target Gorbold Steelhand
>>Talk to |cFF00FF25Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
    #completewith next
#map Darkshore
    .goto Felwood,19.98,14.40
    .vendor >> Buy 6 slot bags if needed
    >>Fill your quiver/ammo pouch with ammo. You have a long grinding session ahead << Hunter
step
#map Darkshore
    .goto Felwood,19.98,14.40
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
.target Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
    .accept 954 >> Accept Bashal'Aran
step
	#era/som
    #sticky
    #label threshers
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
     >> Kill darkshore threshers in the sea
    .complete 1001,1
step << !NightElf
#map Darkshore
    .goto Felwood,20.94,1.49
    >> Enter the 1st ship by the hole on the hull, loot the chest underwater at the bottom floor of the ship
    >>Be careful as this quest can be difficult
    .complete 982,1
step << !NightElf
    .goto Darkshore,39.63,27.45
    >> Enter the 2nd ship by the hole on the hull, loot the chest located in the ship at the exact place where you found the first chest
    >>Be careful as this quest can be difficult
    .complete 982,2
step
	#era/som
    #requires threshers
#map Darkshore
    .goto Felwood,25.19,1.29
    >>Hand in the thresher eyes
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
#map Darkshore
    .goto Felwood,25.15,4.61
    .accept 4723 >> Accept Beached Sea Creature
step
    #completewith mbox
     >> Kill Striders. Loot them for Strider Meat
    .collect 5469,5,2178,1
step
	#era/som
    #sticky
    #completewith mbox
     >> Kill any type of Moonstalker
    .complete 1002,1
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    .goto Felwood,27.70,10.03
>>Talk to |cFF00FF25Asterion|r
    .turnin 954 >> Turn in Bashal'Aran
.target Asterion
    .accept 955 >> Accept Bashal'Aran
step
#map Darkshore
    .goto Felwood,29.13,12.34
     >> Kill Grellkins
    .complete 955,1
step
#map Darkshore
    .goto Felwood,27.70,10.03
>>Talk to |cFF00FF25Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
.target Asterion
    .accept 956 >> Accept Bashal'Aran
step
#map Darkshore
    .goto Felwood,29.60,12.52
     >> Kill satyrs
    .complete 956,1
step
#map Darkshore
    .goto Felwood,27.70,10.03
>>Talk to |cFF00FF25Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
.target Asterion
    .accept 957 >> Accept Bashal'Aran
step
    .xp 13 >> Grind to level 13
step
    #completewith darn1 << Druid
     #completewith mbox << !Druid
     + Start collecting 9 small eggs for leveling cooking later
    >>You will need 10 points cooking to accept a quest later. If you already have 10 points, skip this step
step
#map Darkshore
    .goto Felwood,31.29,24.14
     >>Run up to The Red Crystal in the mountains
     .complete 4811,1
step << Druid
    .goto Darkshore,43.5,45.9
    >>Use the Cenarion Moondust inside the cave, defeat Lunaclaw and speak with his spirit after
    .complete 6001,1 --Defeat Lunaclaw (x1)
step << !Druid
	#era/som
     #completewith next
    .hs >> Hearth to Auberdine
step
#map Darkshore
    .goto Felwood,20.34,18.12
>>Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Accept As Water Cascades
step
    .goto Darkshore,37.78,44.06
     >> Fill the Empty Water Tube at the moonwell
    .complete 4812,1
step <<  Hunter/Druid
#map Darkshore
    .goto Felwood,31.29,24.14
     >> Click on the red crystal
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step <<  Hunter/Druid
#map Darkshore
    .goto Felwood,20.34,18.12
.target Sentinel Glynda Nal'Shea
>>Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
step << Druid
    #label darn1
#map Darkshore
    .goto Felwood,19.27,19.14
.target Laird
>>Talk to |cFF00FF25Laird|r
    .accept 6343 >> Accept Return to Nessa
step << Druid
    #era
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 14-1890 >> Grind until you are 1890xp away from level 14
step << Druid
    #som
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 14-2645 >> Grind until you are 2645xp away from level 14
step << Druid
    .fly Teldrassil>>Fly to Teldrassil
step << Druid
    .goto Teldrassil,56.25,92.44
     >> Return to Nessa
.target Nessa Shadowsong
>>Talk to |cFF00FF25Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
step << Druid
    .goto Darnassus,35.375,8.405
>>Talk to |cFF00FF25Mathrengyl Bearwalker|r
    .turnin 6001 >> Turn in Body and Heart
.target Mathrengyl Bearwalker
    .accept 6121 >> Accept Lessons Anew
    .trainer >> Train your class spells
step << Druid
    .goto Moonglade,56.1,30.7
    >>Teleport to Moonglade
>>Talk to |cFF00FF25Dendrite Starblaze|r
    .turnin 6121 >> Turn in Lessons Anew
.target Dendrite Starblaze
    .accept 6122 >> Accept The Principal Source
step << Druid
    .hs >> Hearth to Darkshore


step << !Hunter
     >> Kill furbolgs
#map Darkshore
    .goto Felwood,22.39,29.45
    .complete 985,1
    .complete 985,2
step
    .goto Darkshore,40.30,59.70
.target Sentinel Tysha Moonblade
>>Talk to |cFF00FF25Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,19.64,39.52
    .accept 4722 >> Accept Beached Sea Turtle
step
    #sticky
    #label anaya
     >> Kill Anaya Dawnrunner, she patrols Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >> Kill ghosts
    .complete 958,1
step
#map Darkshore
    .goto Felwood,25.98,40.62
     >> Click on the tablet on the ground
    .complete 953,2
step
#map Darkshore
    .goto Felwood,25.66,39.11
     >> Click on the torch at the gazebo
    .complete 957,1
step
#map Darkshore
    .goto Felwood,26.71,35.53
     >> Click on the tablet on the ground
    .complete 953,1
step
    #requires anaya
#map Darkshore
    .goto Felwood,23.29,36.73
.target Sentinel Tysha Moonblade
>>Talk to |cFF00FF25Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step << Hunter
    #requires ghosts
     >> Kill furbolgs
#map Darkshore
    .goto Felwood,22.39,29.45
    .complete 985,1
    .complete 985,2
step << !Hunter
    #era
    #label xp15
    #requires ghosts
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 15 >> Grind to level 15
step <<  Hunter
    #label xp15
    #era
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 15.75 >> Grind to level 15 + 75%
step
    #label xp15
    #som
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 15-3245 >> Grind until you are 3245xp away from level 15
step <<  !Hunter !Druid
#map Darkshore
    .goto Felwood,31.29,24.14
     >> Click on the red crystal
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
#map Darkshore
    .goto Felwood,22.24,18.22
>>Talk to |cFF00FF25Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
.target Terenthis
    .accept 986 >> Accept A Lost Master
step
#map Darkshore
    .goto Felwood,21.86,18.30
     >> Run upstairs
.target Sentinel Elissa Starbreeze
>>Talk to |cFF00FF25Sentinel Elissa Starbreeze|r
    .accept 965 >> Accept The Tower of Althalaxx
step <<  !Druid !Hunter
    .goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
step << Druid
#map Darkshore
    .goto Felwood,19.27,19.14
.target Laird
>>Talk to |cFF00FF25Laird|r
    .accept 6343 >> Accept Return to Nessa
step
#map Darkshore
    .goto Felwood,18.10,18.48
.target Cerellean Whiteclaw
>>Talk to |cFF00FF25Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
step << !Hunter
#map Darkshore
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,18.50,19.87
.target Gubber Blump
>>Talk to |cFF00FF25Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    >>Turn in the Beached sea turtle quest next to the flight master if you're not yet level 15 << Hunter
---?
step << NightElf
#map Darkshore
    .goto Felwood,20.80,15.58
.target Gorbold Steelhand
>>Talk to |cFF00FF25Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
step << !NightElf
#map Darkshore
    .goto Felwood,20.80,15.58
.target Gorbold Steelhand
>>Talk to |cFF00FF25Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    #completewith next
#map Darkshore
    .goto Felwood,20.80,15.58
    .vendor 6301 >> Buy Mild Spice and cook herb baked eggs if you don't have 10 points in cooking
step <<  NightElf
#map Darkshore
    .goto Felwood,19.98,14.40
.target Thundris Windweaver
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
step << !Druid !Hunter
#map Darkshore
    .goto Felwood,31.29,24.14
     >> Click on the red crystal
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step << !Druid !Hunter
#map Darkshore
    .goto Felwood,27.70,10.03
.target Asterion
>>Talk to |cFF00FF25Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
step << NightElf
#map Darkshore
    .goto Felwood,20.94,1.49
    >> Enter the 1st ship by the hole on the hull, loot the chest underwater at the bottom floor of the ship
    >>Be careful as this quest can be difficult
    .complete 982,1
step << NightElf
    .goto Darkshore,39.63,27.45
    >> Enter the 2nd ship by the hole on the hull, loot the chest located in the ship at the exact place where you found the first chest
    >>Be careful as this quest can be difficult
    .complete 982,2
step
    #sticky
    #completewith end1
    #label bears
     >> Kill bears as you quest through Darkshore
    .complete 2138,1
step
    .goto Darkshore,44.18,20.60
    .accept 4725 >> Accept Beached Sea Turtle
step
    #sticky
    #completewith mbox
     >> Kill Reef Crawlers along the coast, don't go out of your way to complete this quest
    .complete 1138,1
step
    .goto Darkshore,50.81,25.50
     >> Use the Empty Sampling Tube at the base of the waterfall
    .complete 4762,1
step
	#era/som
    #label mbox
#map Darkshore
    .goto Winterspring,1.42,26.89
     >> Skip this step if you don't have enough moonstalker fangs
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step << NightElf Hunter/Druid
#map Darkshore
    .goto Winterspring,4.82,27.18
>>Talk to |cFF00FF25Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 966 >> Accept The Tower of Althalaxx
step << NightElf Hunter/Druid
#map Darkshore
    .goto Winterspring,6.06,28.81
     >> Kill cultists
    .complete 966,1
step << NightElf Hunter/Druid
#map Darkshore
    .goto Winterspring,4.82,27.18
>>Talk to |cFF00FF25Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 967 >> Accept The Tower of Althalaxx
step
    .goto Darkshore,50.72,30.35
    >> Finish getting 5 Strider Meat
    .collect 5469,5,2178,1
step
    #completewith next
#map Darkshore
    .goto Winterspring,5.49,36.64,35 >> Head to the cave above the waterfall
step << Druid
    >>Use your Cliffspring Falls Sampler in the water at the mouth of the cave
    .goto Darkshore,54.80,33.16
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    #label end1
    .goto Darkshore,55.66,34.89
     >> Stay on the upper part of the cave. If theres no Death Cap at the end of the top side, then drop down and get one from below
     >> The first blue one at the mouth of the cave should've respawned by the time you've looted the Death Cap
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step <<  NightElf !Druid
    #softcore
    #completewith next
     .deathskip >> Grind until your HS cooldown is <6 minutes then death warp to Auberdine
step <<  NightElf !Druid
    #hardcore
    #completewith next
     +Grind until your HS cooldown is <9 minutes then run back to Auberdine
step <<  !NightElf
     #completewith next
    .hs >> Hearth back to Auberdine
step <<  !NightElf
#map Darkshore
    .goto Felwood,20.04,16.35
.target Archaeologist Hollee
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step <<  !NightElf
#map Darkshore
    .goto Felwood,19.98,14.40
.target Thundris Windweaver
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
step
    .goto Darkshore,37.70,40.70
.target Alanndarian Nightsong
>>Talk to |cFF00FF25Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    >>This quest requires 10 points in cooking
step
#map Darkshore
    .goto Felwood,19.98,14.40
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
.target Thundris Windweaver
    .accept 4763 >> Accept The Blackwood Corrupted
step << Druid
    .goto Darkshore,37.7,40.7
>>Talk to |cFF00FF25Alanndarian Nightsong|r
    .turnin 6122 >> Turn in The Principal Source
.target Alanndarian Nightsong
    .accept 6123 >> Accept Gathering the Cure
step
#map Darkshore
    .goto Felwood,20.80,15.58
.target Gorbold Steelhand
>>Talk to |cFF00FF25Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
#map Darkshore
    .goto Felwood,20.34,18.12
.target Sentinel Glynda Nal'Shea
>>Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
step
#map Darkshore
    .goto Felwood,19.90,18.40
>>Talk to |cFF00FF25Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
.target Barithras Moonshade
    .accept 948 >> Accept Onu
step
#map Darkshore
    .goto Felwood,19.78,19.07
     >> Click on the wanted poster outside the inn
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    #sticky
    #label bowl
    .goto Darkshore,37.78,44.06
     >> Fill the Empty Bowl at the moonwell
    .collect 12347,1,4763,1
step <<  NightElf !Druid
#map Darkshore
    .goto Felwood,19.27,19.14
.target Laird
>>Talk to |cFF00FF25Laird|r
    .accept 6343 >> Accept Return to Nessa
step
    #label end
    #requires bowl
#map Darkshore
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .turnin 4722 >> Turn in Beached Sea Turtle << Hunter
step <<  Druid
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16
step << Druid
    .fly Teldrassil>>Fly to Teldrassil
step << Druid
    .goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>Talk to |cFF00FF25Mathrengyl Bearwalker|r
    .accept 26 >> Accept A Lesson to Learn
    .trainer >> Train your class spells
step << Druid
    .goto Darnassus,66.0,60.6
    >>Buy the level 15 staff upgrade, skip this step if you don't have enough money to buy it (56s)
    .collect 2030,1
    .money <0.56
step << Druid
    .goto Teldrassil,23.70,64.51
.target Chief Archaeologist Greywhisker
>>Talk to |cFF00FF25Chief Archaeologist Greywhisker|r
    .accept 730 >> Accept Trouble In Darkshore?
step << Druid
    .goto Moonglade,56.1,30.7
    >>Teleport to Moonglade
>>Talk to |cFF00FF25Dendrite Starblaze|r
    .turnin 26 >> Turn in A Lesson to Learn
.target Dendrite Starblaze
    .accept 29 >> Accept Trial of the Lake
step << Druid
    .goto Moonglade,52.6,51.6
    >>Dive into the lake and look for a Shrine Bauble, it looks like a small red jar
    .complete 29,1 --Complete the Trial of the Lake.
step << Druid
    .goto Moonglade,36.517,40.104
>>Talk to |cFF00FF25Tajarri|r
    .turnin 29 >> Turn in Trial of the Lake
.target Tajarri
    .accept 272 >> Accept Trial of the Sea Lion
step << Druid
    .hs >> Hearth to Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 13-15 Westfall
#version 1
#group RestedXP Alliance 1-20
#defaultfor !NightElf !Hunter
#next 14-19 Darkshore

step
    #sticky
    .zone Westfall >> Head to Westfall
step
    .goto Westfall,59.95,19.35
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
step
    .goto Westfall,59.91,19.41
.target Verna Furlbrow
>>Talk to |cFF00FF25Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
step
    .goto Westfall,56.10,31.30
.target Farmer Saldean
>>Talk to |cFF00FF25Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
step
    .goto Westfall,56.40,30.50
>>Talk to |cFF00FF25Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
.target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step << Human
    #sticky
    #label Lewis
	>> Talk to |cFF00FF25Quartermaster Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,56.80,47.20
    .turnin 6285 >> Turn in Return to Lewis
step << Gnome/Dwarf
    #completewith next
    .goto Westfall,56.40,47.60
.target Gryan Stoutmantle
>>Talk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .isOnQuest 109
step
    .goto Westfall,56.40,47.60
.target Gryan Stoutmantle
>>Talk to |cFF00FF25Gryan Stoutmantle|r
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.40,47.60
.target Captain Danuvin
>>Talk to |cFF00FF25Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>> Talk to |cFF00FF25Scout Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Accept Red Leather Bandanas
step << !Human
	>> Talk to |cFF00FF25Scout Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Accept Red Leather Bandanas
step
    .goto Westfall,52.86,53.71
    .vendor >> Buy food from |cFF00FF25Innkeeper Heather|r. Buy some level 15 food for later if you have money. Remember that the level 5 food here is VERY cheap << Warrior/Rogue
    .vendor >> Buy food/water from |cFF00FF25Innkeeper Heather|r. Buy some level 15 food/water for later if you have money. Remember that the level 5 food here is VERY cheap << !Warrior !Rogue
	.target Innkeeper Heather
step
    #sticky
	#completewith bennytime
     >> Collect the |cFFDB2EEFHandfuls of Oats|r scattered throughout Westfall. They're brown sacks usually by fences and houses.
    .complete 151,1 --Handful of Oats (8)
step
    #sticky
    #label Goretusks
    >>Kill |cFF00BCD4Vultures|r and |cFF00BCD4Boars|r you see. Loot them for |cFF00BCD4Scouts, Livers, and Vulture Meat|r
    .complete 38,1 --Stringy Vulture Meat (3)
    .complete 38,3 --Goretusk Snout (3)
    .complete 22,1 --Goretusk Liver (8)
step
     >> Kill the |cFF00BCD4Defias|r. Loot them for their |cFF00BCD4Red Leather Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1
    .complete 12,2
    .complete 153,1
step
	#label bennytime
    .goto Westfall,49.30,19.20
	>> Loot |cFFDB2EEFFurlbrow's Pocket Watch|r from inside the Dresser
    >>You can loot the closet from outside if you angle your camera correctly.
	>> |cFFFCDC00Be careful of Benny Blanco, he hits hard.|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#sticky
	#completewith next
	#label Oats
	>> Try to have atleast 6/8 |cFFDB2EEFHandfuls of Oats|r before continuing to the Gnolls. You can usually find them near farm fences or buildings.
	.complete 151,1 --Handful of Oats (8)
step
    #era
     #label Pawbs
    .goto Westfall,56.40,13.50,80,0
    .goto Westfall,42.82,14.70,80,0
    .goto Westfall,45.83,13.75,80,0
    .goto Westfall,52.36,14.82,80,0
    .goto Westfall,56.86,13.53,80,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>Kill |cFF00BCD4Gnolls|r. Loot them for their |cFF00BCD4Gnoll Paws|r. You may need to kill |cFF00BCD4Murlocs|r for their |cFF00BCD4Eyes|r whilst waiting on respawns if you're unlucky with drops.
    .complete 102,1 --Gnoll Paw (8)
step
    .goto Westfall,56.40,9.40
    >>Kill |cFF00BCD4Murlocs|r and loot them for their |cFF00BCD4Eyes|r
    .complete 38,2 --Murloc Eye (3)
step
	#label Oats
	.goto Westfall,59.91,19.41
	>> Finish looting |cFFDB2EEFHandfuls of Oats|r en route to |cFF00FF25Farmer Furlbrow|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    #requires Pawbs
    .goto Westfall,59.91,19.41
	>> Talk to |cFF00FF25Farmer Furlbrow|r and |cFF00FF25Verna Furlbrow|r
	.target Farmer Furlbrow
	.target Verna Furlbrow
    .turnin 151 >> Turn in Poor Old Blanchy
    .turnin 64 >> Turn in The Forgotten Heirloom
step
    #som
    #requires Pawbs
    .goto Westfall,59.91,19.41
	>> Talk to |cFF00FF25Farmer Furlbrow|r and |cFF00FF25Verna Furlbrow|r
	.target Farmer Furlbrow
	.target Verna Furlbrow
    .goto Westfall,59.91,19.41
    .turnin 151 >> Turn in Poor Old Blanchy
    .turnin 64 >> Turn in The Forgotten Heirloom
step
	.goto Westfall,56.00,31.30
	>> Talk to |cFF00FF25Farmer Saldean|r. |cFFFCDC00Do NOT sell Murloc Eyes, Goretusk Snouts, Goretusk Livers or Stringy Vulture Meat!|r
	.target Farmer Saldean
	.vendor >> Vendor trash
step
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Kill |cFF00BCD4Harvest Watchers|r. Loot them for |cFF00BCD4Okra|r
    .complete 9,1 --Harvest Watcher (20)
    .complete 38,4 --Okra (3)
step
    #requires Goretusks
	>> Talk to |cFF00FF25Farmer Saldean|r.
	.target Farmer Saldean
    .goto Westfall,56.00,31.30
    .turnin 9 >> Turn in The Killing Fields
step
	>> Talk to |cFF00FF25Salma Saldean|r.
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Turn in Westfall Stew
    .turnin 22 >> Turn in Goretusk Liver Pie
step
	>> Talk to |cFF00FF25Gryan Stoutmantle|r.
	.target Gryan Stoutmantle
    .goto Westfall,56.30,47.50
    .turnin 12 >> Turn in The People's Militia
step
	.xp <15,1
	>> Talk to |cFF00FF25Gryan Stoutmantle|r.
	.target Gryan Stoutmantle
    .goto Westfall,56.30,47.50
    .accept 65 >> Accept The Defias Brotherhood
step
    #era
	>> Talk to |cFF00FF25Captain Danuvin|r.
	.target Captain Danuvin
    .goto Westfall,56.30,47.50
    .turnin 102 >> Turn in Patrolling Westfall
step
	>> Talk to |cFF00FF25Scout Galiaan|r.
	.target Scout Galiaan
    .goto Westfall,54.00,52.90
    .turnin 153 >> Turn in Red Leather Bandanas
step << Dwarf !Paladin/Gnome
    #label end
     #completewith next
    .hs >> Hearth back to Thelsamar
step << Dwarf !Paladin/Gnome
    #softcore
    .goto Loch Modan,33.94,50.95
    .fly Wetlands >> Fly to Wetlands
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
    .goto Dun Morogh,59.5,42.8,150 >> Travel to the skip spot
step << Dwarf !Paladin/Gnome
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    +Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
step << Human/Dwarf Paladin
    #label end
	>> Talk to |cFF00FF25Thor|r.
	.target Thor
    .goto Westfall,56.6,52.6
    .fly Ironforge >> Fly to Ironforge
step << Human Warrior
    .goto Ironforge,62.0,89.6
    .train 176 >>Train Thrown
step << Dwarf Paladin
    .goto Ironforge,23.12,6.14
    .trainer >> Train your class spells
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>Speak to Muiredon upstairs
>>Talk to |cFF00FF25Muiredon Battleforge|r
    .turnin 1784 >>Turn in The Tome of Divinity
.target Muiredon Battleforge
    .accept 1785 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,11.9
.target Tiza Battleforge
>>Talk to |cFF00FF25Tiza Battleforge|r
    .turnin 1785 >>Turn in The Tome of Divinity
step << Dwarf Paladin
    #softcore
    .goto Ironforge,55.501,47.742
    .fly Wetlands>> Fly to Wetlands
step << Dwarf Paladin
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step << Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
--N add training before?
step << Human/Dwarf Paladin
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot
step << Human/Dwarf Paladin
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    >>Avoid the Crocodiles when crossing the sea
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>Run up the mountain north
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >>Follow it up to here
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Keep running straight north, drop down and die, then respawn
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Swim to shore
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.7,56.8
    .vendor >> Check for a |cFF0E8312Bronze Tube| from |cFF00FF25Neal Allen|r and buy it if it's there
	.target Neal Allen
step << Human/Dwarf Paladin
	>> Talk to |cFF00FF25Shellei Brondir|r.
	.target Shellei Brondir
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    .money <0.04
	.target Dewin Shimmerdawn
    .goto Wetlands,8.1,56.3
    .vendor >> In the building, check |cFF00FF25Dewin Shimmerdawn|r. for Heal Potions, buy down to 1s
step
    #completewith next
    +Wait here for the boat. Make a Campfire from your spellbook and start cooking the Chunks of Boar Meat you saved from earlier. You ideally need 10 skill now
    .goto Wetlands,4.7,57.3
step
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore.
    >>Train first aid while waiting for the boat, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 16-19 Darkshore
#version 1
#group RestedXP Alliance 1-20
#defaultfor Hunter/NightElf
#next 19-20 Redridge << !Hunter
#next 19-21 Darkshore/Ashenvale << Hunter

step <<  NightElf !Druid
    #completewith next
#map Darkshore
    .goto Felwood,19.10,20.63
    .fly Teldrassil >> Fly to Teldrassil
step <<  NightElf !Druid
    .goto Teldrassil,56.25,92.44
     >> Return to Nessa
.target Nessa Shadowsong
>>Talk to |cFF00FF25Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
step << NightElf Warrior
    .goto Darnassus,58.72,34.92
    .trainer >> Train your class spells
step << NightElf Warrior
    .goto Darnassus,57.6,46.6
    .train 176 >> Train Thrown
step <<  NightElf Hunter
    #completewith start
    .goto Darnassus,36.60,13.60
    .trainer  >> Train skills
step <<  NightElf Hunter
     #completewith start
    .goto Darnassus,63.30,66.30
    >> Restock/Resupply
    >>Prioritize buying a level 20 bow
    .collect 3027,1
    *Buy a level 16 bow if you have money to spare
step <<  NightElf !Druid
    .goto Teldrassil,23.70,64.51
.target Chief Archaeologist Greywhisker
>>Talk to |cFF00FF25Chief Archaeologist Greywhisker|r
    .accept 730 >> Accept Trouble In Darkshore?
step << NightElf Priest
    .goto Darnassus,37.88,82.73
    .trainer >> Train your class spells
step << NightElf Rogue
    >>Go down into the Cenarion Enclave
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >> Train your class spells
step <<  NightElf !Druid
    #label start
    .hs >> Hearth back to Auberdine
step
#map Darkshore
    .goto Felwood,19.78,19.07
     >> Click on the wanted poster outside the inn
    .accept 4740 >> Accept WANTED: Murkdeep!
step << NightElf
     #completewith next
#map Darkshore
    .goto Felwood,20.04,16.35
.target Archaeologist Hollee
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .turnin 730 >> Turn in Trouble In Darkshore?
step
#map Darkshore
    .goto Felwood,20.04,16.35
     >> The Absent Minded Prospector
.target Archaeologist Hollee
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
#map Darkshore
    .goto Felwood,19.98,14.40
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
.target Thundris Windweaver
    .accept 4763 >> Accept The Blackwood Corrupted
step
    #completewith xabraxxis
    .goto Darkshore,37.78,44.06
     >> Fill the Empty Bowl at the moonwell
    .collect 12347,1,4763,1
step
#map Darkshore
    .goto Felwood,18.50,19.87
.target Gubber Blump
>>Talk to |cFF00FF25Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
step
	#era/som
    #sticky
     >> Finish off Buzzbox 323
    .complete 1002,1
step << Druid
    #sticky
    #label earthroot
    >>Gather earthroot as you quest
    .complete 6123,1
step << Druid
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Look for mushrooms inside the moonkin caves in central Darkshore
    .complete 6123,2
step
    .goto Darkshore,39.99,78.46
     >> Kill Rabid Thistle Bears as you grind your way south
    .complete 2138,1
step
     #completewith south1
     >> Kill any Moonstalker Sire you find, they share spawns with Grizzled Thistle Bears, don't go out of your way to finish it
    .complete 986,1
    .unitscan Moonstalker Sire
step
	#era/som
     #completewith south1
    .goto Darkshore,38.60,80.50,0
     >> Kill Grizzled Thistle Bears
    .complete 1003,1
    .isOnQuest 1003
step
#map Darkshore
    .goto Felwood,27.00,55.59
>>Talk to |cFF00FF25Onu|r
    .turnin 952 >> Turn in Grove of the Ancients << NightElf
    .turnin 948 >> Turn in Onu
.target Onu
    .accept 944 >> Accept The Master's Glaive
step
    .goto Ashenvale,22.36,3.98
     >> Enter The Master's Glaive and clear mobs around the altar in the center
    .complete 944,1
step
    #sticky
    .goto Ashenvale,22.36,3.98
.target Therylune
>>Talk to |cFF00FF25Therylune|r
    .accept 945 >> Accept Therylune's Escape
step
     >> Drop the scrying bowl on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto Ashenvale,22.24,2.52
     >> Click on the book on top of the pedestal
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
step
    >> Finish the escort quest
    .complete 945,1
step
	#era/som
#map Darkshore
    .goto Felwood,24.53,60.46
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
#map Darkshore
    .goto Felwood,27.00,55.59
>>Talk to |cFF00FF25Onu|r
    .turnin 950 >> Turn in Return to Onu
.target Onu
    .accept 951 >> Accept Mathystra Relics
step << Hunter
    .xp 17
step << Hunter
    #sticky
    #label prospector
#map Darkshore
    .goto Felwood,18.08,64.03
.target Prospector Remtravel
>>Talk to |cFF00FF25Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
step <<  Hunter
    .goto Darkshore,35.72,83.69
     >> Start the escort quest
     >>This quest is VERY hard, you can skip this step and come back later at level 19
.target Prospector Remtravel
>>Talk to |cFF00FF25Prospector Remtravel|r
    .accept 731,1 >> Accept The Absent Minded Prospector
    .link https://www.twitch.tv/videos/1182180918 >> Click here for video reference
step <<  Hunter
    #requires prospector
     >> Escort Prospector Remtravel
     .complete 731,1
     .isOnQuest 731
     *This quest is VERY hard, you can skip this step and come back later at level 19
    .link https://www.twitch.tv/videos/1182180918 >> Click here for video reference
step << Hunter
	#era/som << Dwarf
    .goto Ashenvale,13.97,4.10
    .accept 4733 >> Accept Beached Sea Creature
    >>This quest can be a little hard, try to pull the murlocs 1 by 1, otherwise you can end up aggroing the whole camp
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> Click here for video reference
step << Hunter
	#era/som << Dwarf
    .goto Ashenvale,13.93,2.01
    .accept 4732 >> Accept Beached Sea Turtle
step << Hunter
	#era/som << Dwarf
#map Darkshore
    .goto Felwood,13.47,64.01
    .accept 4731 >> Accept Beached Sea Turtle
step << Hunter
	#era/som << Dwarf
#map Darkshore
    .goto Felwood,14.62,60.72
    .accept 4730 >> Accept Beached Sea Creature
step
    #completewith south2
     >> Kill level 15+ crabs along the coast for Fine Crab Chunks, skip this step if the area is too crowded
    .complete 1138,1
step
    .goto Darkshore,36.64,76.53
     >> Clear the murloc camp, stay away from the bonfire in the center
    >>Once you clear everything, move to the center of the camp to summon Murkdeep
    .complete 4740,1
step
    #label south1
#map Darkshore
    .goto Felwood,18.41,49.43
    .accept 4728 >> Accept Beached Sea Creature
step << !Druid
#map Darkshore
    .goto Felwood,19.64,39.52
    .accept 4722 >> Accept Beached Sea Turtle
step << Druid
    #requires earthroot
    >>Teleport to Moonglade
    .goto Moonglade,52.4,40.6
    .trainer >> Train spells
step << Druid
    .goto Moonglade,48.1,67.2
    .fly Auberdine>>Fly to Darkshore
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle << !Druid
    .turnin 4728 >> Turn in Beached Sea Creature
step << Hunter
	#era/som << Dwarf
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle
    .turnin 4733 >> Turn in Beached Sea Creature
step
    #label south2
#map Darkshore
    .goto Felwood,18.50,19.87
.target Gubber Blump
>>Talk to |cFF00FF25Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    >>Skip this step if you haven't collected all 6 items
    .isQuestComplete 1138
step
#map Darkshore
    .goto Felwood,20.34,18.12
.target Sentinel Glynda Nal'Shea
>>Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
step
#map Darkshore
    .goto Felwood,21.63,18.15
>>Talk to |cFF00FF25Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
.target Tharnariun Treetender
    .accept 2139 >> Accept Tharnariun's Hope
step << Hunter
#map Darkshore
    .goto Felwood,20.04,16.35
.target Archaeologist Hollee
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .isQuestComplete 731
step << Hunter
#map Darkshore
    .goto Felwood,20.04,16.35
.target Archaeologist Hollee
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 731
step << Druid
    .goto Darkshore,37.7,40.7
>>Talk to |cFF00FF25Alanndarian Nightsong|r
    .turnin 6123 >> Turn in Gathering the Cure
.target Alanndarian Nightsong
    .accept 6124 >> Accept Curing the Sick
step
#map Darkshore
    .goto Felwood,27.70,10.03
.target Asterion
>>Talk to |cFF00FF25Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
step << Druid
    #label deers
    #sticky
    >>Look for Sickly Deers as you quest and then use the animal salve on them
    .complete 6124,1
step
     #completewith xabraxxis
    .goto Darkshore,50.74,34.68
     >>Loot the Blackwood Grain Sample from the Barrel, then run south-east toward Den Mother, looting the barrel will make 2 mobs spawn, be careful
    .collect 12342,1
step
    .goto Darkshore,52.60,36.65,45,0
    >>Kill Den Mother. Be careful as her cubs can knock you down for 2 seconds
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step
    #label xabraxxis
    .goto Darkshore,52.6,33.6
    >> Loot the Nut/Fruit Stores at the northern camp and use the bowl at the bonfire to summon Xabraxxis
    .complete 4763,1
step <<  !Hunter
    .goto Darkshore,52.6,33.6
    .xp 18 >> Grind to level 18
step << Hunter
    .goto Darkshore,52.6,33.6
    .xp 18.75 >> Grind to 18 + 75%
    >>Make sure your HS cooldown is <10 min
    >>Skip this step if the area is too crowded
step
	#era/som
#map Darkshore
    .goto Winterspring,1.42,26.89
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
#map Darkshore
    .goto Winterspring,4.82,27.18
>>Talk to |cFF00FF25Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 966 >> Accept The Tower of Althalaxx
step
#map Darkshore
    .goto Winterspring,6.06,28.81
     >> Kill cultists. Loot them for Parchments
    .complete 966,1
step
#map Darkshore
    .goto Winterspring,4.82,27.18
>>Talk to |cFF00FF25Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
.target Balthule Shadowstrike
    .accept 967 >> Accept The Tower of Althalaxx
step
#map Darkshore
    .goto Winterspring,7.52,23.26
     >> Look for small relics on the ground
    .complete 951,1
step  << !Warrior !Paladin !Rogue !Druid
#map Darkshore
    .goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>Talk to |cFF00FF25Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
step  << !Warrior !Paladin !Rogue !Druid
    #sticky
    #completewith MoonstalkerP
    .goto Darkshore,56.10,16.88,0
     >> Kill Raging Reef Crawlers along the coast. Be careful as they thrash and can deal up to 200 damage at once. Loot them for the bottom part of the key
    .complete 2098,3
step  << !Warrior !Paladin !Rogue !Druid
    .goto Darkshore,55.59,12.90
     >> Kill Murlocs
    .complete 2098,2
step  << !Warrior !Paladin !Rogue !Druid
    #sticky
    #label foreststriders
    .goto Darkshore,61.40,9.40
     >> Kill Foreststriders
    .complete 2098,1
step
    #label MoonstalkerP
    .goto Darkshore,61.40,9.40
     >> Kill Moonstalker Sire/Matriarchs. Loot them for pelts
    .complete 986,1
step  << !Warrior !Paladin !Rogue !Druid
     .goto Darkshore,56.10,16.88
     >> Kill Raging Reef Crawlers along the coast. Be careful as they thrash and can deal up to 200 damage at once. Loot them for the bottom part of the key
    .complete 2098,3
step  << !Warrior !Paladin !Rogue !Druid
    #requires foreststriders
#map Darkshore
    .goto Winterspring,6.37,16.66
>>Talk to |cFF00FF25Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
.target Gelkak Gyromast
    .accept 2078 >> Accept Gyromast's Revenge
step << !Druid
#map Darkshore
    .goto Winterspring,3.10,20.90
    .accept 4727 >> Accept Beached Sea Turtle
step << !Druid
    .goto Darkshore,51.50,22.26
     >> Finish off Fruit of the Sea
    .complete 1138,1
step  << !Warrior !Paladin !Rogue !Druid
#map Darkshore
    .goto Winterspring,5.59,21.09
     >> Speak with The Threshwackonator 4100
    >>Escort it back to Gyromast and kill it
    >>Be careful as this quest is VERY difficult
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> Click here for video reference
step  << !Warrior !Paladin !Rogue !Druid
#map Darkshore
    .goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>Talk to |cFF00FF25Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestComplete 2078
step  << !Warrior !Paladin !Rogue !Druid
    #sticky
    .destroy 7442 >> Delete Gyromast's Key from your inventory
step << Druid
#map Darkshore
    .goto Winterspring,3.10,20.90
    .accept 4727 >> Accept Beached Sea Turtle
step << Druid
    .goto Darkshore,51.50,22.26
     >> Finish off Fruit of the Sea
    .complete 1138,1
step << Druid
    #requires deers
    .goto Darkshore,48.9,11.3
    >>Loot the small lockbox underwater, located in between 2 big stones
    .collect 15883,1,5061,1 --Collect Half Pendant of Aquatic Agility (x1)
step <<  Dwarf Hunter
     #softcore
    #completewith next
    .deathskip >> Grind until your HS cooldown is <6 minutes then death warp to Auberdine
step <<  Dwarf Hunter
     #hardcore
    #completewith next
    +Grind until your HS cooldown is <9 minutes then run back to Auberdine
step <<  Dwarf Hunter
#map Darkshore
    .goto Felwood,19.98,14.40
.target Thundris Windweaver
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
step <<  Dwarf Hunter
#map Darkshore
    .goto Felwood,21.63,18.15
.target Tharnariun Treetender
>>Talk to |cFF00FF25Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
step << Dwarf Hunter
     .goto Darkshore,33.17,40.17,40,0
     .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step <<  Dwarf Hunter
    .goto Teldrassil,58.40,94.02
    .fp Teldrassil >> Get the Teldrassil Flight Path
step << Dwarf Hunter
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step <<  Dwarf Hunter
    .goto Darnassus,40.2,8.8
    .trainer  >> Train spells
step <<  Dwarf Hunter
    #sticky
    .goto Darnassus,57.55,46.73
    .train 264 >> Train Bows
    .train 227 >> Train Staves
step <<  Dwarf Hunter
    #sticky
    .goto Darnassus,63.30,66.30
     >> Buy a level 20 bow and a 10 slot quiver
    .collect 3027,1
    .collect 11362,1
step <<  Dwarf Hunter
    .goto Teldrassil,23.70,64.51
>>Talk to |cFF00FF25Chief Archaeologist Greywhisker|r
    .turnin 741 >> Turn in The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
    .accept 942 >> Accept The Absent Minded Prospector
step << Druid
    .goto Moonglade,56.2,30.4
    >>Teleport to Moonglade
>>Talk to |cFF00FF25Dendrite Starblaze|r
    .turnin 6124 >> Curing the Sick
.target Dendrite Starblaze
    .accept 6125 >> Accept Power over Poison
step << Druid
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
step
     #completewith next
    .hs >> Hearth back to Auberdine
step
#map Darkshore
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,18.50,19.87
.target Gubber Blump
>>Talk to |cFF00FF25Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
step
#map Darkshore
    .goto Felwood,19.98,14.40
.target Thundris Windweaver
>>Talk to |cFF00FF25Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
step <<  NightElf Hunter
    .vendor  >> Buy extra arrows/supplies
step
#map Darkshore
    .goto Felwood,21.63,18.15
.target Tharnariun Treetender
>>Talk to |cFF00FF25Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
step
    .goto Darkshore,39.37,43.48
>>Talk to |cFF00FF25Terenthis|r
    .turnin 986 >> Turn in A Lost Master
.target Terenthis
    .accept 993 >> Accept A Lost Master
 step <<  !Hunter
    .goto Darkshore,33.70,42.45
     >> Level first aid/cooking while waiting for the Menethil boat
    .zone Wetlands >> Take the boat to Menethil Harbor
step <<  !Hunter
    .goto Wetlands,9.49,59.69
    .fp Wetlands>> Get the Wetlands flight path
step <<  !Hunter
    .goto Wetlands,49.91,39.36
    >>Follow the road east
.target Einar Stonegrip
>>Talk to |cFF00FF25Einar Stonegrip|r
    .accept 469 >> Accept Daily Delivery
step <<  !Hunter
    #completewith next
    .goto Wetlands,53.7,72.3,75 >> The path to Loch Modan starts here
step <<  !Hunter
    .goto Loch Modan,25.4,10.6
    .zone Loch Modan >> Cross the tunnel into Loch Modan
step << !Hunter
    .goto Loch Modan,46.0,13.3
.target Chief Engineer Hinderweir VII
>>Talk to |cFF00FF25Chief Engineer Hinderweir VII|r
    .accept 250 >> Accept A Dark Threat Looms
step << !Hunter
    .goto Loch Modan,56.1,13.3
    >>Click on the small explosive barrel
    .turnin 250 >> Turn in A Dark Threat Looms
    .accept 199 >> Accept A Dark Threat Looms
step << !Hunter
    .goto Loch Modan,46.0,13.3
.target Chief Engineer Hinderweir VII
>>Talk to |cFF00FF25Chief Engineer Hinderweir VII|r
    .turnin 199 >> Turn in A Dark Threat Looms
step <<  !Hunter
    #completewith next
    .deathskip >> Die and respawn at Thelsamar
step <<  !Hunter
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
step <<  !Hunter
    .goto Loch Modan,21.30,68.60,40 >> Run to Dun Morogh
step <<  !Hunter
     #completewith next
    .deathskip >> Once the zone text changes to Dun Morogh, die on purpose and respawn at Kharanos
step <<  !Hunter
    .goto Ironforge,14.90,87.10
    .zone Ironforge >> Run to Ironforge
step << !Hunter
    .goto Ironforge,55.51,47.75
    .fp Ironforge >> Get the Ironforge flight path
step <<  !Hunter
    #completewith next
    .goto Ironforge,67.84,42.50
    .vendor >> Buy a Bronze Tube if you haven't already
    >>This is a limited supply item, skip this step if the npc doesn't have it
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
step <<  !Hunter
    .goto Ironforge,76.03,50.98,30,0
    .zone Stormwind City >> Take the tram to Stormwind
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter !NightElf
#name 14-19 Darkshore
#version 1
#group RestedXP Alliance 1-20
#defaultfor !Hunter !NightElf
#next 19-20 Redridge

step
	>> Talk to |cFF00FF25Gwennyth Bly'Leggonde|r.
	.target Gwennyth Bly'Leggonde
#map Darkshore
    .goto Felwood,19.10,20.63
    >>Head to Auberdine
    .accept 3524 >> Accept Washed Ashore
step <<  !NightElf
	>> Talk to |cFF00FF25Caylais Moonfeather|r.
	.target Caylais Moonfeather
#map Darkshore
    .goto Felwood,19.10,20.63
    .fp Auberdine >> Get the Auberdine flight path
step <<  NightElf
	>> Talk to |cFF00FF25Caylais Moonfeather|r.
	.target Caylais Moonfeather
#map Darkshore
    .goto Felwood,19.27,19.14
    .turnin 6342 >> Turn in Flight to Auberdine
    .accept 6343 >> Accept Return to Nessa
step
	>> Talk to |cFF00FF25Innkeeper Shaussiy|r.
	.target Innkeeper Shaussiy
    .goto Darkshore,37.0,44.0
    .home >> Set Hearthstone to Auberdine
step
    >>Go upstairs to the top floor and talk to |cFF00FF25Wizbang Cranktoggle|r.
	.target Wizbang Cranktoggle
	.goto Darkshore,36.7,43.9,8,0
#map Darkshore
    .goto Felwood,19.51,18.97
    .accept 983 >> Accept Buzzbox 827
step
	>> Talk to |cFF00FF25Tharnariun Treetender|r and |cFF00FF25Terenthis|r
	.target Tharnariun Treetender
	.target Terenthis
#map Darkshore
    .goto Felwood,21.63,18.15,20,0
	.goto Darkshore,39.4,43.5
    .accept 2118 >> Accept Plagued Lands
    .accept 984 >> Accept How Big a Threat?
step
    #sticky
    #completewith crabs1
     >> Kill |cFF00BCD4Crabs|r along the coast. Loot them for their |cFF00BCD4Crawler Legs|r
	 .target Pygmy Tide Crawler
	 .target Young Reef Crawler
    .complete 983,1
step
#map Darkshore
    .goto Felwood,18.81,26.69
     >> Loot the |cFFDB2EEFBeached Sea Creature|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
     >> Head towards the furbolg camp and explore it
     .complete 984,1
step
    #label crabs1
    .use 7586 >> Find a Rabid Thistle Bear. Aggro one and use Tharnariun's Hope in your bags
    .goto Darkshore,38.47,57.92
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
#map Darkshore
    .goto Felwood,19.13,21.39
     >> Finish killing |cFF00BCD4Crabs|r along the coast. Loot them for their |cFF00BCD4Crawler Legs|r
    .complete 983,1
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Click the |cFFDB2EEFBuzzbox|r
    .turnin 983 >> Turn in Buzzbox 827
step
	#era/som
#map Darkshore
    .goto Felwood,19.13,21.39
    .accept 1001 >> Accept Buzzbox 411
step
	>> Talk to |cFF00FF25Gwennyth Bly'Leggonde|r.
	.target Gwennyth Bly'Leggonde
#map Darkshore
    .goto Felwood,19.10,20.63
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
step
    >>On the Dock talk to |cFF00FF25Cerellean Whiteclaw|r.
	.target Cerellean Whiteclaw
#map Darkshore
    .goto Felwood,18.10,18.48
    .accept 963 >> Accept For Love Eternal
step
	#era/som
    #sticky
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
     >> Kill |cFF00BCD4Darkshore Threshers|r and loot them for their |cFF00BCD4Thresher Eyes|r. |cFFFCDC00Don't worry about finishing this quest right now. |r
	 .target Darkshore Thresher
    .complete 1001,1
step
    #completewith next
    .goto Darkshore,33.70,42.45,20,0
	.goto Darkshore,32.4,43.8,30 >> Run up to the docks then jump in the water at the intersection
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Click on the |cFFDB2EEFSkeletal Sea Turtle Head|r
    .complete 4681,1
step
    #label washed1
	>> Return to |cFF00FF25Gwennyth Bly'Leggonde|r.
	.target Gwennyth Bly'Leggonde
#map Darkshore
    .goto Felwood,19.10,20.63
    .turnin 4681 >> Turn in Washed Ashore
step
	>> Talk to |cFF00FF25Barithras Moonshade
	.target Barithras Moonshade
#map Darkshore
    .goto Felwood,19.90,18.40
    .accept 947 >> Accept Cave Mushrooms
step
	>> Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r.
	.target Sentinel Glynda Nal'Shea
#map Darkshore
    .goto Felwood,20.34,18.12
    .accept 4811 >> Accept The Red Crystal
step
step
	>> Talk to |cFF00FF25Tharnariun Treetender|r
	.target Tharnariun Treetender
#map Darkshore
    .goto Felwood,21.63,18.15
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
step
	>> Talk to |cFF00FF25Terenthis|r
	.target Terenthis
#map Darkshore
    .goto Felwood,22.24,18.22
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
step
	>> Talk to |cFF00FF25Gorbold Steelhand|r
	.target Gorbold Steelhand
#map Darkshore
    .goto Felwood,20.80,15.58
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
	>> Talk to |cFF00FF25Thundris Windweaver|r
	.target Thundris Windweaver
#map Darkshore
    .goto Felwood,19.98,14.40
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
    .accept 954 >> Accept Bashal'Aran
step
	#era/som
    #sticky
    #label threshers
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >> Kill |cFF00BCD4Darkshore Threshers|r and loot them for their |cFF00BCD4Thresher Eyes|r.
	.target Darkshore Thresher
    .complete 1001,1
step
#map Darkshore
    .goto Felwood,20.94,1.49
    >> Enter the 1st ship by the hole in the hull on the north side of the ship, loot the |cFFDB2EEFlockbox|r underwater at the bottom floor of the ship
    >> |cFFFCDC00Be careful as this quest can be difficult|r
    .complete 982,1
step
    .goto Darkshore,39.63,27.45
    >> Enter the 2nd ship by the hole in the hull on the south side of the ship, loot the |cFFDB2EEFlockbox|r located in the ship at the exact place where you found the first chest
    >> |cFFFCDC00Be careful as this quest can be difficult|r
    .complete 982,2
step
	#era/som
    #requires threshers
    #label mbox1
	>> Click on the |cFFDB2EEFbuzzbox|r
#map Darkshore
    .goto Felwood,25.19,1.29
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
	>> Click on the |cFFDB2EEFBeached Sea Creature|r
#map Darkshore
    .goto Felwood,25.15,4.61
    .accept 4723 >> Accept Beached Sea Creature
step
    #completewith Ameth
     >> Kill |cFF00BCD4Foreststriders|r. Loot them for |cFF00BCD4Strider Meat|r. This is for a future cooking quest.
	 .target Foreststrider Fledgling
	 .target Foreststrider
    .collect 5469,5,2178,1
	.skill cooking,1
step
	#era/som
    #completewith Ameth
     >> Kill any type of |cFF00BCD4Moonstalker|r and loot them for their |cFF00BCD4Fangs|r. Go out of your way for them.
	 .unitscan Moonstalker Runt
	 .unitscan Moonstalker
    .complete 1002,1
--N mushrooms
step
    #completewith bears1
     >> Kill |cFFFF5722Rabid Thistle Bears|r as you quest through Darkshore. Don't stress over finishing this yet.
	 .target Rabid Thistle Bear
    .complete 2138,1
--N bears
step
	>> Click on the |cFFDB2EEFBeached Sea Turtle Hand|r
    .goto Darkshore,44.18,20.60
    .accept 4725 >> Accept Beached Sea Turtle
step
    .goto Darkshore,50.81,25.50
     >> Use the Empty Sampling Tube at the base of the waterfall
    .complete 4762,1
step
    #label bears1
	>> Talk to |cFF00FF25Asterion|r
	.target Asterion
#map Darkshore
    .goto Felwood,27.70,10.03
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
step
#map Darkshore
    .goto Felwood,29.13,12.34
     >> Kill |cFF00BCD4Grellkins|r. Loot them for their |cFF00BCD4Grell Earrings|r
	 .target Vile Sprite
	 .target Wild Grell
    .complete 955,1
step
	>> Talk to |cFF00FF25Asterion|r
	.target Asterion
#map Darkshore
    .goto Felwood,27.70,10.03
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
step
#map Darkshore
    .goto Felwood,29.60,12.52
     >> Kill |cFF00BCD4Deth'ryll Satyrs|r. Loot them for the |cFF00BCD4Ancient Moonstone Seal|r
	 .target Deth'ryll Satyr
    .complete 956,1
step
	>> Talk to |cFF00FF25Asterion|r
	.target Asterion
#map Darkshore
    .goto Felwood,27.70,10.03
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
step
    #completewith next
    >>Kill |cFF00BCD4Owlbeasts|r and collect |cFF00BCD4Small Eggs|r for leveling cooking later.
    .collect 6889,9,2178
	.skill cooking,10,1
step
#map Darkshore
    .goto Felwood,31.29,24.14
     >> Run up to The Red Crystal in the mountains
     .complete 4811,1
step
    .goto Darkshore,44.4,51.2
    >>Kill |cFF00BCD4Owlbeasts|r and collect |cFF00BCD4Small Eggs|r for leveling cooking later.
    .collect 6889,9,2178
	.skill cooking,10,1
step
    #label Ameth
	>> Talk to |cFF00FF25Sentinel Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Accept The Fall of Ameth'Aran
step
    #sticky
    #label anaya
    .goto Darkshore,42.29,60.46,0
     >> Kill |cFF00BCD4Anaya Dawnrunner|r. She patrols around the middle of Ameth'Aran. Loot her for |cFF00BCD4Anaya's Pendant|r. She has a very long respawn timer, skip this step if you don't see her by the time you finish everything else.
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >> Kill |cFF00BCD4Undead Highborne Mobs|r and loot them for |cFF00BCD4Highborne Relics|r
	 .target Writhing Highborne
	 .target Wailing Highborne
	 .target Cursed Highborne
    .complete 958,1
step
#map Darkshore
    .goto Felwood,26.71,35.53
     >> Click on the |cFFDB2EEFtablet|r on the ground
    .complete 953,1
step
#map Darkshore
    .goto Felwood,25.66,39.11
     >> Click on the |cFFDB2EEFgreen brazier|r at the gazebo
    .complete 957,1
step
#map Darkshore
    .goto Felwood,25.98,40.62
     >> Click on the |cFFDB2EEFtablet|r on the ground
    .complete 953,2
step
    #requires ghosts
	>> Talk to |cFF00FF25Sentinel Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
#map Darkshore
    .goto Felwood,23.29,36.73
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    #requires ghosts
    #completewith Bears
     >> Kill |cFF00BCD4Foreststriders|r. Loot them for |cFF00BCD4Strider Meat|r. This is for a future cooking quest.
	 .target Foreststrider Fledgling
	 .target Foreststrider
    .collect 5469,5,2178,1
	.skill cooking,1
--N Bears
step
	#era/som
    #completewith Mushrooms
     >> Kill any type of |cFF00BCD4Moonstalker|r and loot them for their |cFF00BCD4Fangs|r. Go out of your way for them.
	 .unitscan Moonstalker Runt
	 .unitscan Moonstalker
    .complete 1002,1
--N mushrooms
step
    #completewith Bears
     >> Kill |cFFFF5722Rabid Thistle Bears|r as you quest through Darkshore
	 .target Rabid Thistle Bear
    .complete 2138,1
--N bears
step
    #requires ghosts
	>> Click the |cFFDB2EEFBeached Sea Creature|r
#map Darkshore
    .goto Felwood,18.41,49.43
    .accept 4728 >> Accept Beached Sea Creature
step
    #label Bears
	>> Click the |cFFDB2EEFBeached Sea Turtle|r
#map Darkshore
    .goto Felwood,19.64,39.52
    .accept 4722 >> Accept Beached Sea Turtle
step
    .goto Darkshore,38.83,60.82
    >>Finish killing |cFFFF5722Rabid Thistle Bears|r and killing |cFF00BCD4Foreststriders|r for |cFF00BCD4Strider Meat|r.
    .complete 2138,1 --Rabid Thistle Bear (20)
	.target Rabid Thistle Bear
	.target Foreststrider Fledgling
	 .target Foreststrider
    .collect 5469,5,2178,1
	.skill cooking,1
step
    .goto Darkshore,38.83,60.82
    >>Finish killing |cFFFF5722Rabid Thistle Bears|r
    .complete 2138,1 --Rabid Thistle Bear (20)
	.target Rabid Thistle Bear
    .collect 5469,5,2178,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
     >> Kill |cFFFF5722Blackwood Pathfinders|r and |cFFFF5722Blackwood Windtalkers|r
	 >> |cFFFCDC00Move about 10 yards away from the Windtalkers when they cast Gust of Wind to dodge it. Be careful as Pathfinders Thrash.|r (3 attacks at once every 10s or so)
	 .target Blackwood Pathfinder
	 .target Blackwood Windtalker
    .complete 985,1
    .complete 985,2
step
	>> Talk to |cFF00FF25Gubber Blump|r
	.target Gubber Blump
#map Darkshore
    .goto Felwood,18.50,19.87
    .accept 1138 >> Accept Fruit of the Sea
step
	>> Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
#map Darkshore
    .goto Felwood,19.10,20.63
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4728 >> Turn in Beached Sea Creature
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4725 >> Turn in Beached Sea Turtle
step
	.isQuestComplete 963
    >>On the dock talk to |cFF00FF25Cerellean Whiteclaw|r
	.target Cerellean Whiteclaw
#map Darkshore
    .goto Felwood,18.10,18.48
    .turnin 963 >> Turn in For Love Eternal
step
	>> Talk to |cFF00FF25Archaeologist Hollee|r
	.target Archaeologist Hollee
#map Darkshore
    .goto Felwood,20.04,16.35
    .accept 729 >> Accept The Absent Minded Prospector
step
    #completewith ezstrider
	>> Talk to |cFF00FF25Gorbold Steelhand|r
	.target Gorbold Steelhand
#map Darkshore
    .goto Felwood,20.80,15.58
    .vendor 6301 >> Buy |cFF0E8312Mild Spice| and cook Herb Baked Eggs until you hit 10 points in cooking
	.skill cooking 10,1
step
	>> Talk to |cFF00FF25Gorbold Steelhand|r
	.target Gorbold Steelhand
#map Darkshore
    .goto Felwood,20.80,15.58
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    #label ezstrider
	>> Talk to |cFF00FF25Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,10
step
	>> Talk to |cFF00FF25Thundris Windweaver|r
	.target Thundris Windweaver
#map Darkshore
    .goto Felwood,19.98,14.40
    .turnin 958 >> Turn in Tools of the Highborne
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
step
	>> Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
#map Darkshore
    .goto Felwood,20.34,18.12
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
step
    .goto Darkshore,37.78,44.06
     .use 12346 >> Fill the Empty Water Tube/Empty Bowl at the moonwell
    .complete 4812,1
    .collect 12347,1,4763,1
step
	>> Talk to |cFF00FF25Tharnariun Treetender|r
	.target Tharnariun Treetender
#map Darkshore
    .goto Felwood,21.63,18.15
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
step
	>> Talk to |cFF00FF25Terenthis|r
	.target Terenthis
#map Darkshore
    .goto Felwood,22.24,18.22
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
step
#map Darkshore
    .goto Felwood,21.86,18.30
     >> Run upstairs and talk to |cFF00FF25Sentinel Elissa Starbreeze|r
	 .target Sentinel Elissa Starbreeze
    .accept 965 >> Accept The Tower of Althalaxx
step
#map Darkshore
    .goto Felwood,31.29,24.14
     >> Click on the |cFFDB2EEFRed Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
	>> Talk to |cFF00FF25Asterion|r
	.target Asterion
#map Darkshore
    .goto Felwood,27.70,10.03
    .turnin 957 >> Turn in Bashal'Aran
step << Paladin
	#completewith next
    .goto Darkshore,50.74,34.68,0
	>>Start saving the Linen Cloth you loot in the area from the Furbolgs.
	.collect 2589,10,1,1644 --Linen Cloth (10)
step
    .goto Darkshore,50.74,34.68
    >>Loot the |cFFDB2EEFBlackwood Grain Sample|r from the Barrel, then run south-east toward Den Mother. |cFFFCDC00Looting the barrel will make 2 mobs spawn, be careful|r
    .collect 12342,1,4763,1 --Blackwood Grain Sample (1)
step
    .goto Darkshore,52.60,36.65,45,0
    >>Kill |cFFFF5722Den Mother|r. |cFFFCDC00Be careful as her cubs can knock you down for 2 seconds|r
	.target Den Mother
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step << Paladin
	#completewith Fruit
    .goto Darkshore,50.74,34.68,0
	>>Start saving the Linen Cloth you loot in the area from the Furbolgs.
	.collect 2589,10,1,1644 --Linen Cloth (10)
step
    >>Loot the |cFFDB2EEFBlackwood Nut Sample|r from the Barrel
    .goto Darkshore,51.80,33.51
    .collect 12343,1 --Blackwood Nut Sample (1)
step
	#label Fruit
    >>Loot the |cFFDB2EEFBlackwood Fruit Sample|r from the Barrel. |cFFFCDC00A mob will spawn in front of you, and in between the huts of the west - you may have to run|r
    .goto Darkshore,52.85,33.42
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    #label xabraxxis
    .goto Darkshore,52.6,33.6
     .use 12347 >> Use the bowl in your inventory near the bonfire to summon |cFFFF5722Xabraxxis|r. Kill him to make the chest drop. Loot the |cFFDB2EEFchest|r on the ground after he dies
     >> |cFFFCDC00Be careful, as this quest can be difficult as he enrages at low health and deals a LOT of damage.|r He does die quickly though.
    .complete 4763,1
step
    #completewith next
#map Darkshore
    .goto Winterspring,5.49,36.64,45 >> Head to the cave above the waterfall
step
    #label Mushrooms
    .goto Darkshore,55.66,34.89
     >> Loot |cFFDB2EEFScaber Stalks and a Death Cap|r in the cave. |cFFFCDC00Stay on the upper part of the cave if possible. Down below is very dangerous.|r If theres no |cFFDB2EEFDeath Cap|r at the end of the top side, then drop down and get one from below
     >> The first |cFFDB2EEFScaber Stalk|r at the mouth of the cave should've respawned by the time you've looted the Death Cap
	 >> |cFFFCDC00The Wave Riders do a knockback, don't put your back to the edge|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
	>> Talk to |cFF00FF25Balthule Shadowstrike|r
	.target Balthule Shadowstrike
#map Darkshore
    .goto Winterspring,4.82,27.18
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
step
    >>Kill |cFF00BCD4Dark Strand Fanatics|r. Loot them for |cFF00BCD4Worn Parchment|r
    .goto Darkshore,55.36,26.84
    .complete 966,1 --Worn Parchment (4)
step << Paladin
    .goto Darkshore,55.36,26.84
	>>Kill |cFF00BCD4Dark Strand Fanatics|r. Loot them for 10 |cFF00BCD4Linen Cloth|r for a future Paladin quest
	.collect 2589,10,1,1644 --Linen Cloth (10)
step
	>> Talk to |cFF00FF25Balthule Shadowstrike|r
	.target Balthule Shadowstrike
#map Darkshore
    .goto Winterspring,4.82,27.18
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
step  << !Warrior !Paladin !Rogue !Druid
#map Darkshore
    .goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>Talk to |cFF00FF25Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
step  << !Warrior !Paladin !Rogue !Druid
    .goto Darkshore,56.33,14.97
    >> Kill Raging Reef Crawlers along the coast. Be careful as they thrash and can deal up to 200 damage at once. Loot them for the bottom part of the key
    .complete 2098,3
step  << !Warrior !Paladin !Rogue !Druid
    .goto Darkshore,55.36,12.70
     >> Kill Murlocs in the water. Be careful as the Oracles hit hard (80 damage Lightning Bolts) and can heal to full. Loot them for the middle part of the key
    >>You can LoS the oracles around the front of the boat if needed
    .complete 2098,2
step  << !Warrior !Paladin !Rogue !Druid
    #sticky
    #label ForestKey
    .goto Darkshore,60.50,12.19,0
     >> Kill Foreststriders. Loot them for the top part of the key
    .complete 2098,1
step
	#era/som
    .goto Darkshore,61.40,9.40
     >> Grind Moonstalker Sires/Matriarchs for pelts and fangs
    .complete 986,1
    .complete 1002,1
step
	#som
	#phase 3-6
    .goto Darkshore,61.40,9.40
     >> Grind |cFF00BCD4Moonstalker Sires/Matriarchs|r for |cFF00BCD4Pelts and Fangs|r
	 .target Moonstalker Matriarch
	 .target Moonstalker Sire
    .complete 986,1
step  << !Warrior !Paladin !Rogue !Druid
    #requires ForestKey
#map Darkshore
    .goto Winterspring,6.37,16.66
>>Talk to |cFF00FF25Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
.target Gelkak Gyromast
    .accept 2078 >> Accept Gyromast's Revenge  << !Warrior !Paladin !Rogue
step  << !Warrior !Paladin !Rogue !Druid
#map Darkshore
    .goto Winterspring,5.59,21.09
    >> Speak with The Threshwackonator 4100
    >>Escort it back to Gyromast and kill it
    >>This elite quest is HARD, skip this step if you can't do it
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> Click here for video reference
step  << !Warrior !Paladin !Rogue !Druid
#map Darkshore
    .goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>Talk to |cFF00FF25Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestComplete 2078
step   << !Warrior !Paladin !Rogue !Druid
    #sticky
    .destroy 7442>> Throw away Gyromast's Key
step
	>> Click the |cFFDB2EEFBeached Sea Turtle|r
#map Darkshore
    .goto Winterspring,3.10,20.90
    .accept 4727 >> Accept Beached Sea Turtle
step
	#era/som
    #completewith next
    .goto Darkshore,53.0,18.4,0
    .goto Darkshore,50.4,22.6,0
     >> Kill |cFF00BCD4Reef Crawlers|r and |cFF00BCD4Encrusted Tide Crawlers|r along the coast. Loot them for |cFF00BCD4Fine Crab Chunks|r
    .complete 1138,1
step
	#era/som
	>> Click on the |cFFDB2EEFBuzzbox|r
#map Darkshore
    .goto Winterspring,1.42,26.89
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    .goto Darkshore,51.50,22.26,100,0
    .goto Darkshore,53.0,18.4,60,0
    .goto Darkshore,50.4,22.6,60,0
    .goto Darkshore,44.8,21.6
     >> Kill |cFF00BCD4Reef Crawlers|r and |cFF00BCD4Encrusted Tide Crawlers|r along the coast. Loot them for |cFF00BCD4Fine Crab Chunks|r
    .complete 1138,1
step <<  NightElf
     #softcore
    #completewith next
    .deathskip >> Grind until your Hearthstone cooldown is <6 minutes then death warp to Auberdine
step <<  NightElf
     #hardcore
    #completewith next
    +Grind until your Hearthstone cooldown is <9 minutes then run back to Auberdine
step
     #completewith next
    .hs >> Hearth back to Auberdine
step
	>> Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
#map Darkshore
    .goto Felwood,19.10,20.63
    .turnin 4727 >> Turn in Beached Sea Turtle
step
	>> Talk to |cFF00FF25Gubber Blump|r
	.target Gubber Blump
#map Darkshore
    .goto Felwood,18.50,19.87
    .turnin 1138 >> Turn in Fruit of the Sea
step
#map Darkshore
    .goto Felwood,19.78,19.07
     >> Click on the |cFFDB2EEFWanted Poster|r outside the inn
    .accept 4740 >> Accept WANTED: Murkdeep!
step
	>> Talk to |cFF00FF25Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
#map Darkshore
    .goto Felwood,20.34,18.12
    .turnin 4813 >> Turn in The Fragments Within
step
	>> Talk to |cFF00FF25Barithras Moonshade|r
	.target Barithras Moonshade
#map Darkshore
    .goto Felwood,19.90,18.40
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
step
	>> Talk to |cFF00FF25Tharnariun Treetender|r
	.target Tharnariun Treetender
#map Darkshore
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Turn in Tharnariun's Hope
step
	>> Talk to |cFF00FF25Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
step
	>> Talk to |cFF00FF25Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,10
step
	>> Talk to |cFF00FF25Thundris Windweaver|r
	.target Thundris Windweaver
#map Darkshore
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Turn in The Blackwood Corrupted
step
    #softcore
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >> Take the boat to Menethil, fly to Ironforge and take the tram to Stormwind
step
    #hardcore
    .goto Darkshore,32.42,43.75,50,0
    .goto Darkshore,32.42,43.75,0
    .zone Wetlands >> Take the boat to Menethil
step
    #hardcore
    #completewith next
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.7,56.8
    .vendor >> Check for a |cFF0E8312Bronze Tube| from |cFF00FF25Neal Allen|r and buy it if it's there. Otherwise, skip this step
	.target Neal Allen
    .bronzetube
step
    #hardcore
	>> Talk to |cFF00FF25Shellei Brondir|r
	.target Shellei Brondir
    .goto Wetlands,9.49,59.69
    .fly Ironforge >> Fly to Ironforge
step
    #hardcore
    #completewith next
    .goto Ironforge,56.23,46.83,0
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    #hardcore
    .goto Ironforge,77.0,51.0,60 >> Run to the Deeprun Tram
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step
    #hardcore
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >> Take the Tram to Stormwind City.
	.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter
#name 19-21 Darkshore/Ashenvale
#version 1
#group RestedXP Alliance 1-20
#next RestedXP Alliance 20-30\21-23 Ashenvale/Stonetalon

step
    #sticky
    #label prospector
#map Darkshore
    .goto Felwood,18.08,64.03
.target Prospector Remtravel
>>Talk to |cFF00FF25Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
step <<  Hunter
    .goto Darkshore,35.72,83.69
     >> Start the escort quest
    >>This quest is hard, proceed with caution
.target Prospector Remtravel
>>Talk to |cFF00FF25Prospector Remtravel|r
    .accept 731,1 >> Accept The Absent Minded Prospector
    .link https://www.twitch.tv/videos/1182180918 >> Click here for video reference
step <<  Hunter
    #requires prospector
     >> Escort Prospector Remtravel
     .complete 731,1
    .link https://www.twitch.tv/videos/1182180918 >> Click here for video reference
step
    #completewith next
    .goto Ashenvale,22.36,3.98
    >>Start the escort quest
.target Therylune
>>Talk to |cFF00FF25Therylune|r
    .accept 945 >> Accept Therylune's Escape
step
    .goto Ashenvale,22.36,3.98
    >> Escort Therylune
    .complete 945,1
step
	#era/som
    .goto Ashenvale,13.97,4.10
    .accept 4733 >> Accept Beached Sea Creature
    >>This quest can be a little hard, try to pull the murlocs 1 by 1, otherwise you can end up aggroing the whole camp
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> Click here for video reference
step
	#era/som
    .goto Ashenvale,13.93,2.01
    .accept 4732 >> Accept Beached Sea Turtle
step
	#era/som
#map Darkshore
    .goto Felwood,13.47,64.01
    .accept 4731 >> Accept Beached Sea Turtle
step
	#era/som
#map Darkshore
    .goto Felwood,14.62,60.72
    .accept 4730 >> Accept Beached Sea Creature
step
	#era/som
    >>Kill Grizzled Thistle Bears
    .complete 1003,1
step
	#era/som
#map Darkshore
    .goto Felwood,24.53,60.46
    .turnin 1003 >> Turn in Buzzbox 525
step
    #label lostmaster1
    #completewith lostmaster2
    #sticky
    .goto Ashenvale,29.58,1.67
.target Volcor
>>Talk to |cFF00FF25Volcor|r
    .turnin 993 >> Turn in A Lost Master
step
	#era/som
     >> Clear the furbolgs near the cave before accepting this quest
.target Volcor
>>Talk to |cFF00FF25Volcor|r
    .accept 994 >> Accept Escape Through Force
step
	#som
	#phase 3-6
     >> Accept the quest and wait for the RP sequence to finish
.target Volcor
>>Talk to |cFF00FF25Volcor|r
    .accept 995 >> Accept Escape Through Stealth
step
	#era/som
    #requires lostmaster1
    #label lostmaster2
     >> Escort Volcor
     .complete 994,1
step
	#som
	#phase 3-6
    #requires lostmaster1
    #label lostmaster2
     >> Wait for the RP dialogue to end
     .complete 995,1
step
#map Darkshore
    .goto Felwood,27.00,55.59
.target Onu
>>Talk to |cFF00FF25Onu|r
    .turnin 951 >> Turn in Mathystra Relics
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>Speak to Kerlonian and start the escort quest
    >>If he's not there, you can skip this quest (can take up to 25 minutes to respawn depending on other players)
.target Kerlonian Evershade
>>Talk to |cFF00FF25Kerlonian Evershade|r
    .accept 5321 >> Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
     >> Loot the chest next to the quest giver
    .complete 5321,1
step
     #completewith tower
     .zone Ashenvale >> Head south to Ashenvale
     .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>Avoid walking on the main road while doing the escort quest
     .complete 5321,2
     .isOnQuest 5321
step
    .goto Ashenvale,27.26,35.58
.target Liladris Moonriver
>>Talk to |cFF00FF25Liladris Moonriver|r
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    #label tower
    .goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>Talk to |cFF00FF25Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
step
	#era/som
    .goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>Talk to |cFF00FF25Delgren the Purifier|r
    .accept 970 >> Accept The Tower of Althalaxx
step
	#era/som
     #completewith next
    .goto Ashenvale,31.41,30.66
     >> Kill cultists
    .complete 970,1
step
	#era/som
     #completewith next
    .goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>Talk to |cFF00FF25Delgren the Purifier|r
    .turnin 970 >> Turn in The Tower of Althalaxx
step
    .xp 20 >> Grind to level 20
step
    .goto Ashenvale,26.43,38.59
.target Orendil Broadleaf
>>Talk to |cFF00FF25Orendil Broadleaf|r
    .accept 1010 >> Accept Bathran's Hair
step
    .goto Ashenvale,31.63,22.33
     >> Look out for the herb sacks on the ground
    .complete 1010,1
step
	#era/som
    .goto Ashenvale,31.41,30.66
     >> Kill cultists
    .complete 970,1
step
    #sticky
    #label hair
    .goto Ashenvale,26.43,38.59
>>Talk to |cFF00FF25Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
.target Orendil Broadleaf
    .accept 1020 >> Accept Orendil's Cure
step
	#era/som
    .goto Ashenvale,26.43,38.59
>>Talk to |cFF00FF25Delgren the Purifier|r
    .turnin 970 >> Turn in The Tower of Althalaxx
.target Delgren the Purifier
    .accept 973 >> Accept The Tower of Althalaxx
step
    #requires hair
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Talk to |cFF00FF25Therysil|r
    .turnin 945 >> Turn in Therylune's Escape
    .isQuestComplete 945
step
    #completewith end
     +Save up to 6 Gooey Spider Legs looted from the Spiders in the zone for later
step <<  Hunter
    .goto Ashenvale,18.00,59.80
    >>Head to the Hunter trainer in Ashenvale
    .train 5118 >> Speak to the hunter trainer and learn Aspect of the Cheetah
    .train 15147 >> Train pet skills
step
    .goto Ashenvale,34.40,48.00
    .fp Astranaar>> Get the Astranaar Flight Path
step
    .goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>Talk to |cFF00FF25Shindrell Swiftfire|r
    .accept 1008 >> Accept The Zoram Strand
step
    .goto Ashenvale,34.89,49.79
.target Sentinel Thenysil
>>Talk to |cFF00FF25Sentinel Thenysil|r
    .accept 1070 >> Accept On Guard in Stonetalon
step
    .goto Ashenvale,35.76,49.10
.target Faldreas Goeth'Shael
>>Talk to |cFF00FF25Faldreas Goeth'Shael|r
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
    .goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cFF00FF25Raene Wolfrunner|r
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
step <<  !Dwarf/!Hunter
    .home >> Set your HS to Astranaar
step
    .goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cFF00FF25Pelturas Whitemoon|r
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 26,Orendil's Cure RP
step
    .goto Ashenvale,37.36,51.79
     >> Wait for the RP sequence to end
.target Pelturas Whitemoon
>>Talk to |cFF00FF25Pelturas Whitemoon|r
    .accept 1033 >> Accept Elune's Tear
step
    .goto Ashenvale,46.37,46.38
     >> Loot the pearl shaped objects
    >>Be careful with mobs sneaking underwater
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
     >> Wait for the RP sequence to end
>>Talk to |cFF00FF25Pelturas Whitemoon|r
    .turnin 1033 >> Turn in Elune's Tear
.target Pelturas Whitemoon
    .accept 1034 >> Accept The Ruins of Stardust
step
    .goto Ashenvale,33.30,67.79
     >> Loot the bushes at the lake island
    .complete 1034,1
step
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
    .goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >> Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
    >>Jump over the tree root and hug the right to avoid aggroing mobs
step
	#era/som
    .goto Ashenvale,25.27,60.68
    >>Kill Ilkrud Magthrull
    >>This quest is HARD, you can skip this right now and do it later at level 23
    .complete 973,1
    .link https://www.twitch.tv/videos/1182187763 >> Click here for video reference
	.isOnQuest 973
step
	#era/som
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>Talk to |cFF00FF25Delgren the Purifier|r
    .turnin 973 >> Turn in The Tower of Althalaxx
step
    .goto Ashenvale,14.79,31.29
.target Talen
>>Talk to |cFF00FF25Talen|r
    .accept 1007 >> Accept The Ancient Statuette
step
    #sticky
    #label nagas
    .goto Ashenvale,7.00,15.20,0
     >> Kill nagas around the coast
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
     >> Loot The Ancient Statuette
    .complete 1007,1
step
    .goto Ashenvale,14.79,31.29
     >> Wait for the RP sequence
>>Talk to |cFF00FF25Talen|r
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 25,The Ancient Statuette RP
.target Talen
    .accept 1009 >> Accept Ruuzel
step
    .goto Ashenvale,7.40,13.40
     >> Kill Ruuzel
    >>Lady Vespia (rare) can also drop the ring
    .complete 1009,1
    .unitscan Lady Vespia
step
    .goto Ashenvale,14.79,31.29
.target Talen
>>Talk to |cFF00FF25Talen|r
    .turnin 1009 >> Turn in Ruuzel
step
    #requires nagas
    .goto Ashenvale,20.31,42.33
>>Talk to |cFF00FF25Teronis' Corpse|r
    .turnin 991 >> Turn in Raene's Cleansing
.target Teronis' Corpse
    .accept 1023 >> Accept Raene's Cleansing
step
    .goto Ashenvale,20.41,43.82
    >> Kill Murlocs until the Glowing Gem drops
    >>Save Murloc Fins for later
    >>Be careful as the Oracles can heal, and have a 90 damage instant-cast shock spell every few seconds
    .complete 1023,1
step <<  Dwarf Hunter
    .hs >> Hearth back to Auberdine
step <<  !Dwarf/!Hunter
    #softcore
    #completewith next
    .deathskip >> Die on the eastern side of the lake and spirit rez at Astranaar
step <<  !Dwarf/!Hunter
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >> Run back to Astranaar
step <<  Hunter
    #completewith end
    .stable  >> Stable your pet
step <<  !Dwarf/!Hunter
    .goto Ashenvale,34.40,48.00
    .fly Darkshore>>Fly to Darkshore
step
#map Darkshore
    .goto Felwood,20.04,16.35
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
    .accept 741 >> Accept The Absent Minded Prospector
step
    #completewith end
    .vendor >> Restock/Resupply
step
#map Darkshore
    .goto Felwood,22.24,18.22
.target Terenthis
>>Talk to |cFF00FF25Terenthis|r
    .turnin 995 >> Turn in Escape Through Stealth
    .isOnQuest 995
step
#map Darkshore
    .goto Felwood,22.24,18.22
.target Terenthis
>>Talk to |cFF00FF25Terenthis|r
    .turnin 994 >> Turn in Escape Through Force
    .isOnQuest 994
step
	#era/som
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle
    .turnin 4733 >> Turn in Beached Sea Creature
step
    #completewith next
    .fly Teldrassil>> Fly to Teldrassil
step
    .goto Teldrassil,23.70,64.51
>>Talk to |cFF00FF25Chief Archaeologist Greywhisker|r
    .turnin 741 >> Turn in The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
    .accept 942 >> Accept The Absent Minded Prospector
step <<  !Dwarf/!Hunter
    #label end
    .hs >> Hearth back to Astranaar
step <<  Dwarf Hunter
    #label end
    .fly Ashenvale >> Fly to Ashenvale
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter
#name 19-20 Redridge
#version 1
#group RestedXP Alliance 1-20
#next 20-21 Darkshore/Ashenvale
step
    #completewith start
    .goto StormwindClassic,55.21,7.04
    .vendor >> Buy a Bronze Tube if you haven't
    >>This is a limited supply item, skip this step if the npc doesn't have it
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
step << !NightElf
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
.target Furen Longbeard
>>Talk to |cFF00FF25Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step << Warlock/Priest
     >>Go in the building. Buy a Burning Wand if it's an upgrade
     >>It's important to buy a non-shadow wand, you'll have to deal with mobs resistant to shadow damage later
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5210,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.11,77.20
    .trainer >> Train your class spells
step << Mage
    .goto StormwindClassic,37.69,82.09,10 >> Go up the tower, then through the portal
    .trainer >> Train your class spells
step << Paladin
    >>Do the quests for Duthorian Rall. Make sure you have the 10 Linen Cloth from earlier
    .goto StormwindClassic,39.80,29.77
>>Talk to |cFF00FF25Duthorian Rall|r
    .turnin 1641 >> Turn in The Tome of Divinity
    .collect 6775,1,1642 --Tome of Divinity (1)
    .accept 1642 >> Accept The Tome of Divinity
    .turnin 1642 >> Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1643 >> Accept The Tome of Divinity
step << Paladin
    .goto StormwindClassic,38.68,32.85
    .trainer >> Train your class spells
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
step << Rogue !NightElf
    .goto StormwindClassic,74.64,52.82
    .trainer >> Train your class spells
step << Warrior !NightElf
    >>Enter the Command Center
    .goto StormwindClassic,74.91,51.55,20,0
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
step
    .goto StormwindClassic,57.0,57.6
     .train 201 >> Talk to Woo Ping. Train 1h Swords << Mage/Rogue/Warlock
     .train 1180 >> Talk to Woo Ping. Train Daggers << Mage/Druid
     .train 202 >> Talk to Woo Ping. Train 2h Swords << Warrior/Paladin
step << Paladin
    .goto StormwindClassic,57.08,61.74
>>Talk to |cFF00FF25Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>Talk to Marda. Buy a Longsword for your mainhand and Kris for your offhand.
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
step << !Human !Warlock
    #som
    #phase 3-6
     #completewith start
     .goto StormwindClassic,66.2,62.4
    .fp Stormwind >> Get the Stormwind City Flight Path
step << !Human
    #era/som
     #completewith start
     .goto StormwindClassic,66.2,62.4
    .fp Stormwind >> Get the Stormwind City Flight Path
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Leave Stormwind through the main gate
step << NightElf Warrior
    .goto Elwynn Forest,41.09,65.77
    .trainer >> Train your class spells
step << NightElf Rogue/NightElf Priest
    >>Go into the inn, then go upstairs
    .goto Elwynn Forest,43.17,65.70,20,0
    .goto Elwynn Forest,43.80,66.47,20,0
    .goto Elwynn Forest,43.28,65.72 << Priest
    .goto Elwynn Forest,43.87,65.94 << Rogue
    .trainer >> Train your class spells
step << !Human !Warlock
    #som
    #phase 3-6
    #level 20
    >>Run to the Tower of Azora
    .goto Elwynn Forest,65.20,69.80
.target Theocritus
>>Talk to |cFF00FF25Theocritus|r
    .accept 94 >> Accept A Watchful Eye
step << NightElf
    #era/som
    #level 20
    >>Run to the Tower of Azora
    .goto Elwynn Forest,65.20,69.80
.target Theocritus
>>Talk to |cFF00FF25Theocritus|r
    .accept 94 >> Accept A Watchful Eye
step << Human/Warlock
    #som
    #phase 3-6
    .goto StormwindClassic,66.27,62.13
    .fly Redridge >>Fly to Redridge Mountains
step << !NightElf
    #era/som
    .goto StormwindClassic,66.27,62.13
    .fly Redridge >>Fly to Redridge Mountains
step << !Human !Warlock
    #som
    #phase 3-6
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Head to Redridge Mountains
step << !Human
    #era/som
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Head to Redridge Mountains
step << NightElf
    #era/som
    .goto Redridge Mountains,15.27,71.45
     >> Head to the Redridge/Elwynn border
.target Guard Parker
>>Talk to |cFF00FF25Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step << !Human !Warlock
    #som
    #phase 3-6
    .goto Redridge Mountains,15.27,71.45
     >> Head to the Redridge/Elwynn border
.target Guard Parker
>>Talk to |cFF00FF25Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step
    #som
    #phase 3-6
    .goto Redridge Mountains,30.73,59.99
>>Talk to |cFF00FF25Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls << !Human !Warlock
.target Deputy Feldon
    .accept 246 >> Accept Assessing the Threat << !Human !Warlock
step << NightElf
    #era/som
    .goto Redridge Mountains,30.73,59.99
>>Talk to |cFF00FF25Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
.target Deputy Feldon
    .accept 246 >> Accept Assessing the Threat
step
	>> Talk to |cFF00FF25Marshal Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.90
    .accept 20 >> Accept Blackrock Menace
step
	>> Talk to |cFF00FF25Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.20,48.60
    .accept 125 >> Accept The Lost Tools
step
	>> Talk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.50
    .accept 118 >> Accept The Price of Shoes
step
    .goto Redridge Mountains,29.80,44.50
    >>Go inside the building and talk to |cFF00FF25Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Accept Messenger to Stormwind
step
	>> Talk to |cFF00FF25Verner Osgood|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Accept Selling Fish
step
    .goto Redridge Mountains,26.80,44.40
    >>Go inside the Inn and talk to |cFF00FF25Darcy|r
	.target Darcy
    .accept 129 >> Accept A Free Lunch
step
    .goto Redridge Mountains,26.6,45.2
    >>Head upstairs and talk to |cFF00FF25Wiley the Black|r
	.target Wiley the Black
    .turnin 65 >> Turn in The Defias Brotherhood
    .isOnQuest 65
step
    #era/som
    .goto Redridge Mountains,22.70,44.00
    >>Exit the Inn. Go west then into the building and talk to |cFF00FF25Chef Breanna|r
	.target Chef Breanna
    .accept 92 >> Accept Redridge Goulash
step
	>> Talk to |cFF00FF25Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >> Accept An Unwelcome Guest
step << Warlock
     #completewith next
    .goto Redridge Mountains,15.68,49.30
     >> Kill Bellygrub by kiting him towards the Lakeshire guards
    .complete 34,1
    .link https://youtu.be/6JE967OG3CU?t=1845 >> Click here for video reference
step << Warlock
    .goto Redridge Mountains,21.85,46.32
     >>This is a hard quest to solo at this level, if you can't solo Bellygrub, skip this step, you'll have another opportunity to finish it later
.target Martie Jainrose
>>Talk to |cFF00FF25Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
step
	>> Talk to |cFF00FF25Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.30,53.60
    .accept 3741 >> Accept Hilary's Necklace
step
    >>Look for |cFFDB2EEFHilary's Necklace|r underwater. It's in a brown patch of dirt.
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #softcore
    >>Go underwater. Loot the |cFFDB2EEFgrey lockbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era
    #sticky
    #completewith orcs
    >>Kill |cFF00BCD4Boars|rBoars for 5 |cFF00BCD4Great Goretusk Snout|r, |cFF00BCD4Condors|r for 5 |cFF00BCD4Tough Condor Meat|r, and |cFF00BCD4Spiders|r for 5 |cFF00BCD4Crisp Spider Meat|r
    >>Focus HEAVILY on this quest. Do not sell any of the items until you turn in the quest
    >>Also save any Chunks of Boar Meat you get. You want to get 50 Cooking before reaching Darkshire
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
step
    #som
    #phase 1-2
    #sticky
    #completewith orcs
    >>Kill |cFF00BCD4Boars|r for 5 |cFF00BCD4Great Goretusk Snout|r, |cFF00BCD4Condors|r for 5 |cFF00BCD4Tough Condor Meat|r, and |cFF00BCD4Spiders|r for 5 |cFF00BCD4Crisp Spider Meat|r
    >>Focus HEAVILY on this quest. Do not sell any of the items until you turn in the quest
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
step
	>> Talk to |cFF00FF25Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Accept Encroaching Gnolls
step
	>> Talk to |cFF00FF25Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
step
	>> Talk to |cFF00FF25Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
step
    #era/som
    .goto Redridge Mountains,9.35,78.96
    >>Kill |cFF00BCD4Spiders|r for 5 |cFF00BCD4Crisp Spider Meat|r
    .collect 1081,5,92,1
step
	>> Kill |cFFFF5722Redridge Mongrel|r and |cFFFF5722Redridge Poacher|r
	.target Redridge Mongrel
	.target Redridge Poacher
    .goto Redridge Mountains,31.65,82.56
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    .goto Redridge Mountains,49.0,70.0
    >> Kill |cFF00BCD4Murlocs|r. Loot them for |cFF00BCD4Murloc Fins|r and |cFF00BCD4Sunfish|r
	>> |cFFFCDC00Careful this area is a hyperspawn, meaning things respawn quickly|r
    .complete 127,1
    .collect 1468,8,150,1
step
    #era/som
    .goto Redridge Mountains,61.37,77.10
    |cFF00BCD4Condors|r for 5 |cFF00BCD4Tough Condor Meat|r
    >> If there's no Condors around, skip this step
    .collect 1080,5,92,1
step
    #label orcs
    >>Kill |cFF00BCD4Blackrock Orcs|r. Loot them for |cFF00BCD4Battleworn Axes|r
	>> |cFFFCDC00Careful the Outrunners net!|r
	.target Blackrock Grunt
	.target Blackrock Outrunner
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
step
    #era/som
    .goto Redridge Mountains,61.37,77.10
    >> Kill Condors. Loot them for the Crisp Condor Meat
    .collect 1080,5,92,1
step
    #hardcore
    >>Go underwater. Loot the |cFFDB2EEFgrey lockbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era
    .xp 20-6300 >> Grind until you are 6300 xp away from level 20
step
    #som
    .xp 20-8800 >> Grind until you are 8800 xp away from level 20
step << skip
     #softcore
     #completewith next
     .deathskip >> Die on purpose and rez at the graveyard
step
    #hardcore
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >> Run back to Lakeshire
step
	>> Talk to |cFF00FF25Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Turn in Assessing the Threat
step
    .xp 20 >> If you are not yet level 20, turn in all your Redridge quests, you should have enough from turn ins
step
    .goto Redridge Mountains,30.59,59.42
	>> Talk to |cFF00FF25Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >> Get the Redridge Mountains flight path << !Human !Warlock
    .fly Stormwind >> Fly to Stormwind City
step << Rogue
    #softcore
    .goto StormwindClassic,57.55,57.07
    >>Buy a Longsword if you have enough money. Equip it at 21
    >>Buy something from the AH if its cheaper/better
    >>Skip this step if you have something better
    .collect 923,1 --Longsword (1)
step << Rogue
    #hardcore
    .goto StormwindClassic,57.55,57.07
    >>Buy a Longsword if you have enough money. Equip it at 21
    >>Skip this step if you have something better
    .collect 923,1 --Longsword (1)
step << Warrior/Paladin
    #softcore
    .goto StormwindClassic,57.55,57.07
    >>Buy a Dacian Falx if you have enough money. Equip it at 21
    >>Buy something from the AH if its cheaper/better
    >>Skip this step if you have something better
    .collect 922,1 --Dacian Falx (1)
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.55,57.07
    >>Buy a Dacian Falx if you have enough money. Equip it at 21
    >>Skip this step if you have something better
    .collect 922,1 --Dacian Falx (1)
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.11,77.20
    .trainer >> Train your class spells
    .goto StormwindClassic,25.30,78.50
.target Gakin the Darkbinder
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
step << Mage
    .goto StormwindClassic,37.69,82.09,10 >> Go up the tower, then through the portal
    .trainer >> Train your class spells
step << Mage
    .goto StormwindClassic,39.83,79.46
    .trainer >> Train Stormwind Portal from Larimaine
step
	>> Talk to |cFF00FF25Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Accept The Corruption Abroad
step << Druid
    .goto StormwindClassic,21.0,55.6
    .trainer >> Train your class spells (Make sure you get Cat Form)
step << Paladin
    .goto StormwindClassic,42.66,33.75,30,0
    .goto StormwindClassic,40.1,30.0
>>Talk to |cFF00FF25Duthorian Rall|r and right click on the Tome of Valor provided
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .turnin 1649 >>Turn in The Tome of Valor
.target Duthorian Rall
    .accept 1650 >>Accept The Tome of Valor
step << Paladin
    .goto StormwindClassic,38.68,32.85
    .trainer >> Train your class spells
step << Priest
    .goto StormwindClassic,42.66,33.75,30,0
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
step << Rogue
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.67,59.48,20,0
    .goto StormwindClassic,75.75,60.36
    .trainer >> Train your class spells. Make sure to train lockpicking
.target Renzik "The Shiv"
>>Talk to |cFF00FF25Renzik "The Shiv"|r
    .accept 2281 >> Accept Redridge Rendezvous
.target Master Mathias Shaw
>>Talk to |cFF00FF25Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
step << Warrior
    >>Enter the command center
    .goto StormwindClassic,74.91,51.55,20,0
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
step
	>> Talk to |cFF00FF25General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,64.20,75.20
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
step
    .goto Elwynn Forest,41.80,65.60
    >>Leave Stormwind and head to Goldshire and talk to |cFF00FF25Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
step
    >>Run to the Tower of Azora
    .goto Elwynn Forest,65.20,69.80
.target Theocritus
>>Talk to |cFF00FF25Theocritus|r
    .accept 94 >> Accept A Watchful Eye
step
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    >> Run back to Stormwind if you're in Goldshire, then fly to Redridge
	>> If you're at the Tower of Azora, run to Redridge
    .fly Redridge >> Fly to Redridge
	.zone Redridge Mountains >>Travel to Redridge
step
	>> Talk to |cFF00FF25Marshal Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.40,48.90
    .turnin 20 >> Turn in Blackrock Menace
step
	>> Talk to |cFF00FF25Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.00,48.80
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
step
	>> Talk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.20
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
step
    #era
	>> Talk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.20
    .accept 122 >> Accept Underbelly Scales
step
    #label FlyR
	>> Talk to |cFF00FF25Magistrate Soloman|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Turn in Messenger to Stormwind
step
	>> Talk to |cFF00FF25Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.20,53.60
     .turnin 3741 >> Turn in Hilary's Necklace
step << Rogue
    .goto Redridge Mountains,28.07,52.02
>>Talk to |cFF00FF25Lucius|r
    .turnin 2281 >> Turn in Redridge Rendevous
.target Lucius
    .accept 2282 >> Accept Alther's Mill
step
	>> Talk to |cFF00FF25Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
step
    #era/som
    .isQuestComplete 92
	>> Talk to |cFF00FF25Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Turn in Redridge Goulash
step
	>> Talk to |cFF00FF25Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.90,46.20
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
    #era
	#completewith next
	>>Kill |cFF00BCD4Black Dragon Whelps|r for |cFF00BCD4Underbelly Whelp Scales|r. Don't go out of your way to finish this quest.
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era/som
    >>Kill |cFF00BCD4Boars|r for 5 |cFF00BCD4Great Goretusk Snout|r
	.target Great Goretusk
    .goto Redridge Mountains,16.23,48.35,100,0
    .goto Redridge Mountains,32.25,70.20,100,0
    .goto Redridge Mountains,16.23,48.35
    .goto Redridge Mountains,32.25,70.20,0
    .collect 2296,5,92,1
step
    #era/som
	>> Talk to |cFF00FF25Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Turn in Redridge Goulash
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Kill |cFF00BCD4Gnolls|r. Loot them for |cFF00BCD4Iron Pikes|r and |cFF00BCD4Iron Rivets|r
	.target Redridge Mystic
	.target Redridge Brute
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #era
    #completewith next
	>>Kill |cFF00BCD4Black Dragon Whelps|r for |cFF00BCD4Underbelly Whelp Scales|r.
	.target Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    .cast 1804 >>Unlock lockboxes in the area until you reach 80 skill
    >>Open |cFFDB2EEFLucius's Lockbox|r once you reach 80 skill
    .complete 2282,1 --Token of Thievery
step
    #era
    #label scales
    .goto Redridge Mountains,35.0,69.0,0
    .goto Redridge Mountains,58.34,76.16,0
    .goto Redridge Mountains,24.0,35.0
	>>Kill |cFF00BCD4Black Dragon Whelps|r for |cFF00BCD4Underbelly Whelp Scales|r.
	.target Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
	>> Talk to |cFF00FF25Darcy|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Turn in Delivering Daffodils
step
    #era
    .goto Redridge Mountains,26.52,44.95
    #completewith next
    + Cook the Chunks of Boar Meat at the fire in the Inn which you collected earlier. Make sure you have 50 cooking
    >>If you won't have 50 cooking, go farm some more boars to the west
step
    #era
	>> Talk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Turn in A Baying of Gnolls
    .turnin 122 >> Turn in Underbelly Scales
step
    #som
	>> Talk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Turn in A Baying of Gnolls
step << Rogue
	>> Talk to |cFF00FF25Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Turn in Alther's Mill
step << Rogue
	#completewith next
	.destroy 7907 >> You can destroy the Certificate of Thievery
step
	>> Talk to |cFF00FF25Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Turn in The Everstill Bridge
step << Rogue
    #softcore
    .goto Westfall,68.5,70.0
    >>This is a good time to do the poison quest in Westfall, this quest can be VERY HARD to do at level 20/21, this step is optional, you will have another chance to do it later at level 24
.target Agent Kearnen
>>Talk to |cFF00FF25Agent Kearnen|r
    .turnin 2360 >> Turn in Mathias and the Defias
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click here for video reference
step << Rogue
    #softcore
    .goto Westfall,68.5,70.0
.target Agent Kearnen
>>Talk to |cFF00FF25Agent Kearnen|r
    .accept 2359 >> Accept Klaven's Tower
    .isQuestTurnedIn 2360
step << Rogue
    #softcore
    .goto Westfall,70.6,72.8
    >>Pickpocket one of the Defias Drones and loot the tower key
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click here for video reference
    .isOnQuest 2359
step << Rogue
    #softcore
    .goto Westfall,70.4,74.0
    >>Climb to the top of the tower and loot the small chest on the floor
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click here for video reference
    .isOnQuest 2359
step << Rogue !Dwarf
    #softcore
    .goto Duskwood,10.69,59.86,90,0
    .goto Duskwood,8.82,38.44
    >>Kill Spiders in Duskwood
    >>Save Gooey Spider Legs for later
    >>You'll need 1 venom sac to craft an anti-venom and remove the Zanzil poison << Rogue !Dwarf
    >>If you have a Paladin or Druid friend you can skip this step and ask them to remove it for you
    .collect 1475,1,2359,1 << Rogue !Dwarf
    .isOnQuest 2359
step << Rogue
    #softcore
    #completewith next
    .goto Westfall,56.55,52.65
    .fly Stormwind >> Fly to Stormwind
step << Rogue
    #softcore
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.67,59.48,20,0
     .goto StormwindClassic,75.9,59.9
.target Master Mathias Shaw
>>Talk to |cFF00FF25Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .isQuestComplete 2359
step << Rogue
    #softcore
     .goto StormwindClassic,75.9,59.9
.target Master Mathias Shaw
>>Talk to |cFF00FF25Master Mathias Shaw|r
    .accept 2607 >> Accept The Touch of Zanzil
    .isQuestTurnedIn 2359
step << Rogue
    #softcore
    .goto StormwindClassic,78.1,59.0
    >>Head to the basement
.target Doc Mixilpixil
>>Talk to |cFF00FF25Doc Mixilpixil|r
    .turnin 2607 >> Turn in The Touch of Zanzil
    .isQuestTurnedIn 2359
	------------
step << Rogue
    #hardcore
	.xp <22,1
    .goto Westfall,68.5,70.0
    >>This is a good time to do the poison quest in Westfall if you've trained Vanish. You will have another chance to do it later at level 24 if you wish to wait.
.target Agent Kearnen
>>Talk to |cFF00FF25Agent Kearnen|r
    .turnin 2360 >> Turn in Mathias and the Defias
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click here for video reference
step << Rogue
    #hardcore
	.xp <22,1
    .goto Westfall,68.5,70.0
.target Agent Kearnen
>>Talk to |cFF00FF25Agent Kearnen|r
    .accept 2359 >> Accept Klaven's Tower
    .isQuestTurnedIn 2360
step << Rogue
    #hardcore
	.xp <22,1
    .goto Westfall,70.6,72.8
    >>Pickpocket one of the Defias Drones and loot the tower key
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click here for video reference
    .isOnQuest 2359
step << Rogue
    #hardcore
	.xp <22,1
    .goto Westfall,70.4,74.0
    >>Climb to the top of the tower and loot the small chest on the floor
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click here for video reference
    .isOnQuest 2359
step << Rogue !Dwarf
    #hardcore
	.xp <22,1
    .goto Duskwood,10.69,59.86,90,0
    .goto Duskwood,8.82,38.44
    >>Kill Spiders in Duskwood
    >>Save Gooey Spider Legs for later
    >>You'll need 1 venom sac to craft an anti-venom and remove the Zanzil poison << Rogue !Dwarf
    >>If you have a Paladin or Druid friend you can skip this step and ask them to remove it for you
    .collect 1475,1,2359,1 << Rogue !Dwarf
    .isOnQuest 2359
step << Rogue
    #hardcore
	.xp <22,1
    #completewith next
    .goto Westfall,56.55,52.65
    .fly Stormwind >> Fly to Stormwind
step << Rogue
    #hardcore
	.xp <22,1
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.67,59.48,20,0
     .goto StormwindClassic,75.9,59.9
.target Master Mathias Shaw
>>Talk to |cFF00FF25Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .isQuestComplete 2359
step << Rogue
    #hardcore
	.xp <22,1
     .goto StormwindClassic,75.9,59.9
.target Master Mathias Shaw
>>Talk to |cFF00FF25Master Mathias Shaw|r
    .accept 2607 >> Accept The Touch of Zanzil
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
	.xp <22,1
    .goto StormwindClassic,78.1,59.0
    >>Head to the basement
.target Doc Mixilpixil
>>Talk to |cFF00FF25Doc Mixilpixil|r
    .turnin 2607 >> Turn in The Touch of Zanzil
    .isQuestTurnedIn 2359
step <<  NightElf
    .fp Ironforge>> Fly to Stormwind, take the tram to Ironforge and get the Ironforge flight path
    >>Skip this step if you already have the Ironforge flight path
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter
#name 20-21 Darkshore/Ashenvale
#version 1
#group RestedXP Alliance 1-20
#next RestedXP Alliance 20-30\21-23 Stonetalon/Ashenvale

step << Druid
    >>Teleport to Moonglade
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
step
    .hs >> Hearth back to Auberdine
step
    .goto Darkshore,37.44,41.83
.target Archaeologist Hollee
>>Talk to |cFF00FF25Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
    .goto Darkshore,37.32,43.64
.target Barithras Moonshade
>>Talk to |cFF00FF25Barithras Moonshade|r
    .accept 948 >> Accept Onu
step
	>> Click the |cFFDB2EEFWanted Poster|r
    .goto Darkshore,37.21,44.22
    .accept 4740 >> Accept WANTED: Murkdeep!
step
	>> Talk to |cFF00FF25Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 993 >> Accept A Lost Master
step
	#era/som
    #completewith Murkdeep
    .goto Darkshore,40.23,81.28,0
     >> Kill Grizzled Thistle Bears. Loot them for their Scalps
    .complete 1003,1
    .isOnQuest 1003
step <<  NightElf
     #completewith next
#map Darkshore
    .goto Felwood,27.00,55.59
.target Onu
>>Talk to |cFF00FF25Onu|r
    .turnin 952 >> Turn in Grove of the Ancients
step
	>> Talk to |cFF00FF25Onu|r
	.target Onu
#map Darkshore
    .goto Felwood,27.00,55.59
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
step
    .goto Ashenvale,22.36,3.98
     >> Enter The Master's Glaive and clear mobs around the altar in the center
    .complete 944,1
step
    #sticky
    #label TheryluneE
	>> Talk to |cFF00FF25Therylune|r
	.target Therylune
     >> Start the escort quest
    .accept 945 >> Accept Therylune's Escape
step
    .goto Ashenvale,22.36,3.98
     >> Drop the scrying bowl on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto Darkshore,38.55,86.03
     >> Click on the |cFFDB2EEFbook on top of the pedestal|r. Be careful that Therylune doesnt run off if you started it already
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
step
    #label Therylune
    #requires TheryluneE
    >> Finish the escort quest
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    #completewith next
	>> Talk to |cFF00FF25Prospector Remtravel|r
	.target Prospector Remtravel
#map Darkshore
    .goto Felwood,18.08,64.03
    .turnin 729 >> Turn in The Absent Minded Prospector
step
	>> Talk to |cFF00FF25Prospector Remtravel|r
	.target Prospector Remtravel
    .goto Darkshore,35.72,83.69
    .accept 731,1 >> Accept The Absent Minded Prospector
step
     >> Escort |cFF00FF25Prospector Remtravel|r. |cFFFCDC00Make sure he aggros the mobs first or he won't help you kill them|r
    .complete 731,1
step
    >>Loot the |cFFDB2EEFBeached Sea Creature|r. Be careful as the Oracles do 90 damage lightning bolts, and can healing wave to full when they're at <55% hp.
    .goto Ashenvale,13.97,4.10
    .accept 4733 >> Accept Beached Sea Creature
step
	>>Loot the |cFFDB2EEFBeached Sea Turtle|r
    .goto Ashenvale,13.93,2.01
    .accept 4732 >> Accept Beached Sea Turtle
step
	>>Loot the |cFFDB2EEFBeached Sea Turtle|r
#map Darkshore
    .goto Felwood,13.47,64.01
    .accept 4731 >> Accept Beached Sea Turtle
step
	>>Loot the |cFFDB2EEFBeached Sea Creature|r
#map Darkshore
    .goto Felwood,14.62,60.72
    .accept 4730 >> Accept Beached Sea Creature
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >> Clear the murloc camp, maintain a safe distance while doing it. |cFFFCDC00Going near the bonfire triggers the event.|r
    >> Move close to the Bonfire in the camp to summon 3 waves of Murlocs: Kill waves 1 and 2, then kill |cFFFF5722Murkdeep|r in wave 3
    >> Murkdeep may already be alive if someone else started the quest then died. Check the coast for him.
    .unitscan Murkdeep
    .complete 4740,1
step
	#era/som
    .goto Darkshore,40.23,81.28
     >> Kill |cFF00BCD4Grizzled Thistle Bears|r. Loot them for their |cFF00BCD4Scalps|r
    .complete 1003,1
    .isOnQuest 1003
step
	#era/som
#map Darkshore
    .goto Felwood,24.53,60.46
	>> Talk to the |cFFDB2EEFbuzzbox|r
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
    .goto Darkshore,45.00,85.30
>>Talk to |cFF00FF25Volcor|r
    .turnin 993 >> Turn in A Lost Master
.target Volcor
    .accept 995 >> Accept Escape Through Stealth
step
     >> Wait until the RP sequence is over
    .complete 995,1
step
#map Darkshore
    .goto Felwood,27.00,55.59
.target Onu
>>Talk to |cFF00FF25Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
.target Onu
>>Talk to |cFF00FF25Onu|r
    .turnin 950 >> Turn in Return to Onu
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>Speak to |cFF00FF25Kerlonian Evershade|r and start the escort quest
	.target Kerlonian Evershade
    >>If he's not there, you can skip this quest (can take up to 25 minutes to respawn depending on other players)
    .accept 5321 >> Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
     >> Loot the |cFFDB2EEFchest|r next to the quest giver
    .complete 5321,1
step
     #completewith tower
     .zone Ashenvale >> Head south to Ashenvale
     .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    .use 13536>> |cFFFCDC00Avoid walking on the main road while doing the escort quest|r. Mobs won't spawn if you stay off the road.
	>> Use the Horn of Awakening if he falls asleep
     .complete 5321,2
     .isOnQuest 5321
step
	>> Talk to |cFF00FF25Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    #label tower
	>> Talk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Turn in The Tower of Althalaxx
step
	#era/som
	>> Talk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> Accept The Tower of Althalaxx
step
	#era/som
     #completewith next
    .goto Ashenvale,31.41,30.66
     >> Kill cultists. Loot them for the Glowing Soul Gem
    .complete 970,1
step
	#era/som
     #completewith next
	>> Talk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
step
    .xp 20 >> Grind to level 20
step
	>> Talk to |cFF00FF25Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Accept Bathran's Hair
step
    .goto Ashenvale,31.63,22.33
     >> Look out for the |cFFDB2EEFherb sacks|r on the ground
    .complete 1010,1
step
	#era/som
    .goto Ashenvale,31.41,30.66
     >> Kill |cFF00BCD4Dark Strand Cultists|r. Loot them for the |cFF00BCD4Glowing Soul Gem|r
    .complete 970,1
step
    #label hair
	>> Talk to |cFF00FF25Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
	#era/som
	>> Talk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
    #requires hair
    >>Run to Astranaar
    .goto Ashenvale,34.40,48.00
    .fp Astranaar>> Get the Astranaar Flight Path
	.target Daelyshia
step
	>> Talk to |cFF00FF25Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Accept The Zoram Strand
step
	>> Talk to |cFF00FF25Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Accept On Guard in Stonetalon
step
	>> Talk to |cFF00FF25Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
	>> Talk to |cFF00FF25Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
step << !Warlock
    #som
    .goto Ashenvale,36.99,49.22
    .home >> Set your Hearthstone to Astranaar
step
    #timer Orendil's Cure RP
    .goto Ashenvale,37.36,51.79
	>> Talk to |cFF00FF25Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 26,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
]])
