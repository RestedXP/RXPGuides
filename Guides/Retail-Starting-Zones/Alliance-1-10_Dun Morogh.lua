RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Dwarf Starting Zones
#name 2Retail-Alliance-Dwarf_Coldridge Vallley
#displayname Chapter 1 - Coldridge Vallley
#next 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#defaultfor Dwarf !DK

<< Alliance

step
    #completewith next
    +Welcome to the |cRXP_WARN_Dwarf Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r. For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
step
    .goto 27,36.872,70.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r.
    .accept 24469 >>Accept Hold the Line!
	.target Joren Ironstock
step
    #loop
    .goto 27,36.614,70.677,0
    .goto 27,36.978,72.181,0
    .goto 27,35.484,71.799,0
    .goto 27,36.614,70.677,45,0
    .goto 27,37.227,71.407,45,0
    .goto 27,37.518,72.286,45,0
    .goto 27,36.978,72.181,45,0
    .goto 27,36.652,71.711,45,0
    .goto 27,36.202,71.961,45,0
    .goto 27,35.484,71.799,45,0
    .goto 27,35.294,71.208,45,0
    .goto 27,35.510,70.301,45,0
    .goto 27,36.048,70.841,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Invaders|r.
    .complete 24469,1 --Rockjaw Invader (6)
	.mob Rockjaw Invader
step
    .goto 27,36.872,70.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r.
    .turnin 24469 >>Turn in Hold the Line!
    .accept 24470 >>Accept Give 'em What-For
	.target Joren Ironstock
step
    .goto 27,36.563,70.080,5,0 --North side
    .goto 27,36.554,70.400,5,0
    .goto 27,36.584,70.497,5,0
    .goto 27,36.554,70.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r.
    .accept 24471 >>Accept Aid for the Wounded
	.target Sten Stoutarm
step << skip
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides|r
.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
	#sticky
    #label Goons
    #loop
    .goto 27,38.515,72.700,0
    .goto 27,36.526,73.694,0
    .goto 27,34.795,71.111,0
    .waypoint 27,38.515,72.700,45,0
    .waypoint 27,38.009,73.295,45,0
    .waypoint 27,37.141,73.772,45,0
    .waypoint 27,36.526,73.694,45,0
    .waypoint 27,36.476,74.066,45,0
    .waypoint 27,35.450,73.525,45,0
    .waypoint 27,35.070,73.188,45,0
    .waypoint 27,34.649,71.899,45,0
    .waypoint 27,34.795,71.111,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Goons|r.
    .complete 24470,1 --Rockjaw Goon (3)
	.mob Rockjaw Goon
step
    #loop
    .goto 27,37.425,72.024,0
    .goto 27,36.778,73.978,0
    .goto 27,35.620,71.276,0
    .goto 27,37.425,72.024,15,0
    .goto 27,38.080,72.027,15,0
    .goto 27,38.468,72.417,15,0
    .goto 27,38.061,72.905,15,0
    .goto 27,37.477,73.160,15,0
    .goto 27,37.363,74.004,15,0
    .goto 27,36.778,73.978,15,0
    .goto 27,36.810,73.133,15,0
    .goto 27,36.497,73.536,15,0
    .goto 27,35.829,73.700,15,0
    .goto 27,35.112,73.167,15,0
    .goto 27,35.672,72.677,15,0
    .goto 27,35.923,72.086,15,0
    .goto 27,35.620,71.276,15,0
    >>Use |T133675:0|t[Sten's First Aid Kit] on |cRXP_FRIENDLY_Wounded Coldridge Mountaineers|r.
    .complete 24471,1 --Wounded Coldridge Mountaineers Aided (4)
	.target Wounded Coldridge Mountaineer
	.use 49743
step
    #requires Goons
    .goto 27,36.584,70.497,5,0 --South side
    .goto 27,36.554,70.400,5,0
    .goto 27,36.563,70.080,5,0
    .goto 27,36.554,70.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r.
    .turnin 24471 >>Turn in Aid for the Wounded
	.target Sten Stoutarm
step
    .goto 27,36.872,70.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r.
    .turnin 24470 >>Turn in Give 'em What-For
    .accept 24473 >>Accept Lockdown in Anvilmar
	.target Joren Ironstock
step
    #optional
    #completewith next
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,12 >> Enter Anvilmar
    .isOnQuest 24473
step
    #loop
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r inside.
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer
	.target Jona Ironstock
step
    .goto 27,35.801,66.256
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside.
    .accept 24477 >>Accept Dwarven Artifacts
	.target Grundel Harkin
step
    #optional
    #completewith next
    .goto 27,35.805,67.328,10,0
    .goto 27,35.912,68.003,15 >> Exit Anvilmar
    .isOnQuest 24474
    .subzoneskip 77,1
step
    #completewith next
    .goto 27,38.393,67.671,0
    .goto 27,36.450,67.833,0
    .goto 27,36.450,67.833,15,0
    >>Loot the [|cRXP_LOOT_Forgotten Dwarven Artifacts|r]. in the ground
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    .goto 27,37.079,67.402
    >>Open the |cRXP_PICK_Keg of Gnomenbrau|r on the ground. Loot it for the [|cRXP_LOOT_Cask of Gnomenbrau|r]
.
    .complete 24474,3 --Cask of Gnomenbrau (1)
step
    #optional
    #completewith next
    .goto 27,38.393,67.671,0
    .goto 27,36.450,67.833,0
    .goto 27,37.830,67.473,15,0
    .goto 27,38.307,66.701,15,0
    .goto 27,38.370,66.206,15,0
    .goto 27,39.189,66.844,15,0
    .goto 27,38.393,67.671,15,0
    .goto 27,37.556,67.973,15,0
    .goto 27,37.093,68.372,15,0
    .goto 27,36.821,68.680,15,0
    .goto 27,36.450,67.833,15,0
    .goto 27,35.548,67.767,15,0 --West1
    >>Loot the [|cRXP_LOOT_Forgotten Dwarven Artifacts|r]. in the ground
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    .goto 27,34.822,67.386
    >>Open the |cRXP_PICK_Keg of Stormhammer Stout|r on the ground. Loot it for the [|cRXP_LOOT_Casak of Stormhammer Stout|r]
.
    .complete 24474,1 --Cask of Stormhammer Stout (1)
step
    #optional
    #completewith next
    .goto 27,34.600,67.539,0
    .goto 27,34.244,67.234,0
    .goto 27,34.600,67.539,15,0
    .goto 27,34.440,66.416,15,0
    .goto 27,34.244,67.234,15,0
    .goto 27,34.321,68.013,15,0
    .goto 27,33.794,67.327,15,0
    >>Loot the [|cRXP_LOOT_Forgotten Dwarven Artifacts|r]. in the ground
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    .goto 27,31.469,67.635
    >>Open the |cRXP_PICK_Keg of Theramore Pale Ale|r in the ground. Loot it for the [|cRXP_LOOT_Cask of Stormhammer Stout|r]
.
    .complete 24474,2 --Cask of Theramore Pale Ale (1)
step
    #loop
    .goto 27,34.600,67.539,0
    .goto 27,33.794,67.327,0
    .goto 27,38.307,66.701,0
    .goto 27,36.450,67.833,0
    .goto 27,33.794,67.327,15,0
    .goto 27,34.321,68.013,15,0
    .goto 27,34.244,67.234,15,0
    .goto 27,34.440,66.416,15,0
    .goto 27,34.600,67.539,15,0
    .goto 27,35.548,67.767,15,0
    .goto 27,36.450,67.833,15,0
    .goto 27,37.830,67.473,15,0
    .goto 27,38.307,66.701,15,0
    .goto 27,38.370,66.206,15,0
    .goto 27,39.189,66.844,15,0
    .goto 27,38.393,67.671,15,0
    .goto 27,37.556,67.973,15,0
    .goto 27,37.093,68.372,15,0
    .goto 27,36.821,68.680,15,0
    .goto 27,36.450,67.833,15,0
    >>Loot the [|cRXP_LOOT_Forgotten Dwarven Artifacts|r]. in the ground
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step << skip
    #loop
    .goto 27,30.733,68.123,0
    .goto 27,30.082,67.724,0
    .goto 27,29.520,68.468,0
    .goto 27,27.786,67.798,0
    .goto 27,28.926,69.221,0
    .goto 27,31.020,69.465,0
    .goto 27,30.733,68.123,15,0
    .goto 27,30.458,67.808,15,0
    .goto 27,30.167,68.093,15,0
    .goto 27,30.082,67.724,15,0
    .goto 27,30.165,68.092,15,0
    .goto 27,29.944,68.767,15,0
    .goto 27,29.520,68.468,15,0
    .goto 27,28.890,67.923,15,0
    .goto 27,27.126,67.182,15,0
    .goto 27,27.786,67.798,15,0
    .goto 27,28.224,68.504,15,0
    .goto 27,28.126,68.706,15,0
    .goto 27,28.926,69.221,15,0
    .goto 27,29.245,68.975,15,0
    .goto 27,31.020,69.465,15,0
    >>Loot the [|cRXP_LOOT_Forgotten Dwarven Artifacts|r]. in the ground
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
--XX Far west side near boars. Just not worth it - there's enough shared spawns outside Anvilmar
step
    #optional
    #completewith FirstThing
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >> Enter Anvilmar
    .cooldown item,6948,<0 << Dwarf !DK
    .isOnQuest 24474
    .noflyable  --Azeroth Flying
step << Dwarf !DK
    #optional
    #completewith FirstThing
    .hs >> Hearth to Anvilmar
    .cooldown item,6948,>0,1
    .isOnQuest 24474
    .noflyable  --Azeroth Flying
step
    #optional
    #completewith FirstThing
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >> Enter Anvilmar
    .isOnQuest 24474
    .flyable  --Azeroth Flying
step
    #sticky
    #label FirstThing
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r inside.
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24475 >>Accept All the Other Stuff
	.target Jona Ironstock
step
    .goto 27,35.801,66.256,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside.
    .turnin 24477 >>Turn in Dwarven Artifacts
    .accept 24486 >>Accept Make Hay While the Sun Shines
	.target Grundel Harkin
step
    #optional
    #requires FirstThing
    #completewith RockjawA
    .goto 27,35.805,67.328,10,0
    .goto 27,35.702,68.138,20 >> Exit Anvilmar
    .isOnQuest 24475
    .subzoneskip 77,1
step
    #completewith RockjawA
    #requires FirstThing
    .goto 27,34.571,68.391,0
    .goto 27,35.301,74.641,0
    .goto 27,36.039,76.329,0
    .goto 27,37.881,75.440,0
    .goto 27,39.236,72.809,0
    .goto 27,37.185,74.444,0
    .goto 27,34.571,68.391,35,0
    >>Kill |cRXP_ENEMY_Ragged Timber Wolves|r and |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for their [|cRXP_LOOT_Ragged Wolf Hides|r]
.
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    #completewith RockjawA
    #requires FirstThing
    .goto 27,34.474,69.536,0
    .goto 27,33.467,72.668,0
    .goto 27,34.475,74.869,0
    .goto 27,36.077,74.386,0
    .goto 27,31.914,69.640,0
    .goto 27,34.474,69.536,35,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r. Loot them for their [|cRXP_LOOT_Boar Haunches|r].
    .complete 24475,1 --Boar Haunch (3)
    .mob *Small Crag Boar
step
    #label RockjawA
    #requires FirstThing
    #loop
    .goto 27,33.804,70.522,0
    .goto 27,32.918,70.006,0
    .goto 27,34.104,71.636,0
    .goto 27,33.804,70.522,30,0
    .goto 27,32.918,70.006,30,0
    .goto 27,32.729,70.874,30,0
    .goto 27,33.203,71.701,30,0
    .goto 27,34.104,71.636,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Scavengers|r. Loot them for their [|cRXP_LOOT_Priceless Rockjaw Artifacts|r].
    >>|cRXP_PICK_Be aware as |cRXP_ENEMY_Rockjaw Scavengers|r cast|r |T135238:0|t[Throw Priceless Artifact] |cRXP_PICK_(Deals damage, but gives you a [|cRXP_LOOT_Priceless Rockjaw Artifact|r.)|r]
.
    .complete 24486,1 --Priceless Rockjaw Artifact (5)
	.mob Rockjaw Scavenger
--XX May need to drop duplicates?
step
    #optional
    #sticky
    #label DunWolves
    .goto 27,35.301,74.641,0
    .goto 27,36.039,76.329,0
    .goto 27,37.881,75.440,0
    .goto 27,39.236,72.809,0
    .goto 27,37.185,74.444,0
    .waypoint 27,35.301,74.641,50,0
    .waypoint 27,35.862,75.105,50,0
    .waypoint 27,35.644,75.522,50,0
    .waypoint 27,36.039,76.329,50,0
    .waypoint 27,36.517,76.456,50,0
    .waypoint 27,36.835,75.494,50,0
    .waypoint 27,37.881,75.440,50,0
    .waypoint 27,38.459,74.734,50,0
    .waypoint 27,39.273,74.287,50,0
    .waypoint 27,39.236,72.809,50,0
    .waypoint 27,38.883,72.557,50,0
    .waypoint 27,37.879,73.478,50,0
    .waypoint 27,37.185,74.444,50,0
    >>Kill |cRXP_ENEMY_Ragged Timber Wolves|r and |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for their [|cRXP_LOOT_Ragged Wolf Hides|r]
.
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    #optional
    .goto 27,33.467,72.668,0
    .goto 27,34.475,74.869,0
    .goto 27,36.077,74.386,0
    .goto 27,31.914,69.640,0
    .goto 27,33.467,72.668,50,0
    .goto 27,34.081,73.758,50,0
    .goto 27,34.475,74.869,50,0
    .goto 27,35.291,74.316,50,0
    .goto 27,36.077,74.386,50,0
    .goto 27,32.453,72.893,50,0
    .goto 27,30.989,70.747,50,0
    .goto 27,31.914,69.640,50,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r. Loot them for their [|cRXP_LOOT_Boar Haunches|r].
    .complete 24475,1 --Boar Haunch (3)
    .mob Small Crag Boar
step
    #optional
    #requires DunWolves
    #completewith Sun
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >> Enter Anvilmar
    .cooldown item,6948,<0 << Dwarf !DK
    .isOnQuest 24475
    .noflyable  --Azeroth Flying
step << Dwarf !DK
    #optional
    #requires DunWolves
    #completewith Sun
    .hs >> Hearth to Anvilmar
    .cooldown item,6948,>0,1
    .isOnQuest 24475
    .noflyable  --Azeroth Flying
step
    #optional
    #requires DunWolves
    #completewith Sun
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >> Enter Anvilmar
    .isOnQuest 24475
    .flyable  --Azeroth Flying
step
    #label Sun
    #requires DunWolves
    .goto 27,35.801,66.256
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside.
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
	.target Grundel Harkin
step
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r inside.
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
	.target Jona Ironstock
step
    #optional
    #completewith next
    .goto 27,35.805,67.328,10,0
    .goto 27,35.702,68.138,20 >> Exit Anvilmar
    .isOnQuest 24487
    .subzoneskip 77,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Felix Whindlebolt|r.
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
    .goto 27,32.064,74.170
	.target +Grelin Whitebeard
    .accept 24489 >>Accept Trolling for Information
    .goto 27,32.165,74.347
	.target +Apprentice Soren
    .accept 3361 >>Accept A Refugee's Quandary
    .goto 27,31.899,74.318,10,0
    .goto 27,31.906,74.525
	.target +Felix Whindlebolt
step
	#sticky
    #label Whelps
    #loop
    .goto 27,33.906,77.523,0
    .goto 27,32.815,76.666,0
    .goto 27,29.841,78.444,0
    .goto 27,28.324,75.368,0
    .goto 27,28.176,74.189,0
    .waypoint 27,33.906,77.523,45,0
    .waypoint 27,34.167,77.077,45,0
    .waypoint 27,33.405,76.915,45,0
    .waypoint 27,32.815,76.666,45,0
    .waypoint 27,32.380,76.052,45,0
    .waypoint 27,30.676,78.641,45,0
    .waypoint 27,29.841,78.444,45,0
    .waypoint 27,29.325,77.816,45,0
    .waypoint 27,28.216,76.231,45,0
    .waypoint 27,28.324,75.368,45,0
    .waypoint 27,27.677,74.636,45,0
    .waypoint 27,27.627,74.159,45,0
    .waypoint 27,27.900,73.634,45,0
    .waypoint 27,28.176,74.189,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r.
    .complete 182,1 --Frostmane Troll Whelp (10)
	.mob Frostmane Troll Whelp
step
    .goto 27,27.846,74.530
    >>Loot [|cRXP_LOOT_Felix's Box|r]. on the ground
    .complete 3361,1 --Felix's Box (1)
step
    #optional
    #completewith next
    .goto 27,27.759,75.195,10 >> Travel toward |cRXP_FRIENDLY_Soothsayer Mirim'koa|r inside.
    .timer 11,Trolling for Information RP
    .isOnQuest 24489
--XX you can start the event earlier then get the box and come back but its way too hard to communicate it/trust the player enough for a 3s time gain vs 20s time loss
step
    .goto 27,27.759,75.195
    >>|cRXP_WARN_Wait out the RP|r.
    >>|cRXP_WARN_Stay close to |cRXP_FRIENDLY_Soothsayer Mirim'koa|r else the objective won't complete|r
.
    .complete 24489,3 --Soothsayer Mirim'koa Scouted (1)
    .target Soothsayer Mirim'koa
step
    #optional
    #completewith next
    .goto 27,29.593,78.754,11 >> Travel toward |cRXP_FRIENDLY_Soothsayer Rikkari|r inside.
    .timer 11,Trolling for Information RP
    .isOnQuest 24489
step
    #sticky
    #label Rikkari
    .goto 27,29.593,78.754
    >>|cRXP_WARN_Wait out the RP|r.
    >>|cRXP_WARN_Stay close to |cRXP_FRIENDLY_Soothsayer Rikkari|r else the objective won't complete|r
.
    .complete 24489,2 --Soothsayer Rikkari Scouted (1)
    .target Soothsayer Rikkari
--XX no good way to do the .goto prios for these steps
step
    .goto 27,29.750,78.485
    >>Loot [|cRXP_LOOT_Felix's Chest|r]. on the ground
    .complete 3361,2 --Felix's Chest (1)
step
    #optional
    #completewith next
    #requires Rikkari
    .goto 27,33.323,77.988,11 >> Travel toward |cRXP_FRIENDLY_Soothsayer Shi'kala|r.
    .timer 13,Trolling for Information RP
    .isOnQuest 24489
step
    #sticky
    #requires Rikkari
    #label Shikala
    .goto 27,33.323,77.988
    >>|cRXP_WARN_Wait out the RP|r.
    >>|cRXP_WARN_Stay close to |cRXP_FRIENDLY_Soothsayer Shi'kala|r else the objective won't complete|r
.
    .complete 24489,1 --Soothsayer Shi'kala Scouted (1)
    .target Soothsayer Shi'kala
step
    #requires Rikkari
    .goto 27,33.325,77.755
    >>Loot [|cRXP_LOOT_Felix's Bucket of Bolts|r]. on the ground
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step
    #optional
    #requires Shikala
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Whelps
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r, |cRXP_FRIENDLY_Apprentice Soren|r, and |cRXP_FRIENDLY_Grelin Whitebeard|r
.
    .turnin 3361 >>Turn in A Refugee's Quandary
    .goto 27,31.906,74.525,10,0
    .goto 27,31.899,74.318
	.target +Felix Whindlebolt
    .turnin 24489 >>Turn in Trolling for Information
    .goto 27,32.165,74.347
	.target +Apprentice Soren
    .turnin 182 >>Turn in The Troll Menace
	.accept 218 >>Accept Ice and Fire
    .goto 27,32.064,74.170
	.target +Grelin Whitebeard
--XX 182 can be completed later
step
    #optional
    #completewith Hovel2
    >>Kill |cRXP_ENEMY_Frostmane Blades|r.
    .complete 218,4 --Frostmane Blade (6)
	.mob Frostmane Blade
step
    #optional
    #completewith Griknir
    #label Hovel1
    .goto 428,12.774,40.711,15 >> Enter the Coldridge Valley cave
	.isOnQuest 218
step
    #optional
    #completewith Griknir
    #label Hovel2
    #requires Hovel1
    .goto 428,15.112,45.588,15,0
    .goto 428,18.302,48.547,15,0
    .goto 428,37.713,29.248,15,0
    .goto 428,52.353,14.297,15,0
    .goto 428,76.449,32.098,80 >> Travel toward |cRXP_ENEMY_Grik'nir the Cold|r inside.
	.isOnQuest 218
step
    #sticky
    #label Novices
    #requires Hovel2
    #loop
    .goto 428,77.421,26.068,0
    .goto 428,60.009,17.985,0
    .goto 428,60.865,46.816,0
    >>Kill |cRXP_ENEMY_Frostmane Novices|r and |cRXP_ENEMY_Frostmane Blades|r
. inside
    .complete 218,3 --Frostmane Novice (3)
    .waypoint 428,78.818,25.838,12,0
    .waypoint 428,71.497,24.360,12,0
    .waypoint 428,66.048,20.082,12,0
    .waypoint 428,60.965,24.058,12,0
    .waypoint 428,61.733,31.748,12,0
    .waypoint 428,62.955,38.259,12,0
    .waypoint 428,74.593,37.568,12,0
	.mob +*Frostmane Novice
    .complete 218,4 --Frostmane Blade (6)
    .waypoint 428,71.104,18.539,20,0
    .waypoint 428,55.686,13.478,12,0
    .waypoint 428,58.225,33.709,12,0
    .waypoint 428,59.189,40.829,12,0
    .waypoint 428,67.202,42.936,12,0
	.mob +*Frostmane Blade
step
    #sticky
    #label FireElemental
    #requires Hovel2
    #loop
    .line 428,63.523,21.372,63.490,25.701,64.533,33.319,65.216,34.130,67.843,33.396,69.711,31.243,69.677,26.654,66.486,22.402,63.523,21.372
    .goto 428,63.523,21.372,10,0
    .goto 428,63.490,25.701,10,0
    .goto 428,64.533,33.319,10,0
    .goto 428,65.216,34.130,10,0
    .goto 428,67.843,33.396,10,0
    .goto 428,69.711,31.243,10,0
    .goto 428,69.677,26.654,10,0
    .goto 428,66.486,22.402,10,0
    >>Kill the |cRXP_ENEMY_Wayward Fire Elemental|r inside.
    .complete 218,2 --Wayward Fire Elemental (1)
	.mob Wayward Fire Elemental
step
    .goto 428,76.449,32.098
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r inside.
    .complete 218,1 --Grik'nir the Cold (1)
	.mob Grik'nir the Cold
step
    #optional
    #requires Novices
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #completewith next
    #requires FireElemental
    .goto 428,52.316,13.778,12,0
    .goto 428,46.537,19.510,12,0
    .goto 428,36.573,30.430,12,0
    .goto 428,20.348,46.954,12,0
    .goto 428,14.750,45.019,12,0
    .goto 27,33.772,78.335,15 >>Exit the Coldridge Valley cave
    .isOnQuest 218
step
    .goto 27,32.064,74.170
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r.
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
	.target Grelin Whitebeard
step
    .goto 27,40.883,70.673
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r.
    .turnin 24490 >>Turn in A Trip to Ironforge
    .accept 24491 >>Accept Follow that Gyro-Copter!
	.target Hands Springsprocket
step
    .goto 27,37.404,70.581
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r.
    .turnin 24491 >>Turn in Follow that Gyro-Copter!
    .accept 24492 >>Accept Pack Your Bags
	.target Milo Geartwinge
step
    #optional
    #completewith Pack
    .goto 27,35.914,68.096,30,0
    .goto 27,35.836,67.146,12,0
    .goto 27,35.953,66.803,15 >> Enter Anvilmar
    .cooldown item,6948,<0 << Dwarf !DK
    .isOnQuest 24492
    .noflyable  --Azeroth Flying
step << Dwarf !DK
    #optional
    #completewith Pack
    .hs >> Hearth to Anvilmar
    .cooldown item,6948,>0,1
    .isOnQuest 24492
    .noflyable  --Azeroth Flying
step
    #optional
    #completewith Pack
    .goto 27,35.914,68.096,30,0
    .goto 27,35.836,67.146,12,0
    .goto 27,35.953,66.803,15 >> Enter Anvilmar
    .isOnQuest 24492
    .flyable  --Azeroth Flying
step
    #sticky
    #label Forget
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r inside.
    .accept 24493 >>Accept Don't Forget About Us
	.target Jona Ironstock
step
    #label Pack
    >>Open the |cRXP_PICK_Beer Barrel on the ground|r. Loot it for the [|cRXP_LOOT_Coldridge Beer Flagon|r].
    >>Loot the [|cRXP_LOOT_Leftover Boar Meat|r]. on the table
    >>Open the box of |cRXP_PICK_Wolf-Hide Cloaks|r on the ground. Loot it for the [|cRXP_LOOT_Ragged Wolf-Hide Cloak|r].
    .complete 24492,1 --Coldridge Beer Flagon (1)
    .goto 27,35.949,66.531
    .complete 24492,3 --Leftover Boar Meat (1)
    .goto 27,35.889,66.552
    .complete 24492,2 --Ragged Wolf-Hide Cloak (1)
    .goto 27,35.900,66.633
step << skip
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r, |cRXP_PICK_Leftover Boar Meat|r and the |cRXP_PICK_Crate|r |cRXP_WARN_inside Anvilmar|r.
    .complete 24492,3
    .goto Dun Morogh,35.39,66.03
    .complete 24492,2
    .goto Dun Morogh,35.80,64.51
    .complete 24492,1
    .goto Dun Morogh,35.51,65.14
step
    #optional
    #requires Forget
    #completewith next
    .goto 27,35.805,67.328,10,0
    .goto 27,35.912,68.003,20 >> Exit Anvilmar
    .isOnQuest 24492
    .subzoneskip 77,1
step
    #requires Forget
    .goto 27,37.404,70.581
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r.
    .turnin 24492 >>Turn in Pack Your Bags
    .timer 26,Start to Logout when timer ends --Kharanos, Between 10-26s after turnin (needs to be tested more)
--   .timer 10,Start to Logout when timer ends --New Tinkertown
--   .timer 83.5,Pack Your Bags RP
	.target Milo Geartwinge
step
    >>|cRXP_WARN_When the 26-second timer expires (26 seconds after accepting the ride), log out and then back on whilst on |cRXP_FRIENDLY_Milo's Gyro|r to logout skip to Kharanos|r.
    >>|cRXP_WARN_If you do it before the timer expires you may logout skip to New Tinkertown or back to Coldridge Valley. If this happens, travel to Kharanos normally|r.
    .subzone 131 >> Travel to Kharanos
    .isOnQuest 24493
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Gnome Starting Zones
#name 2Retail-Alliance-Gnome_New Tinkertown
#displayname Chapter 1 - New Tinkertown
#next 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#defaultfor Gnome !DK

<< Gnome

step
    #completewith next
    +Welcome to the |cRXP_WARN_Gnome Starting Zone|r. Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cRXP_WARN_Exile's Reach|r. For faster leveling, consider recreating your character and selecting |cRXP_WARN_Exile's Reach|r instead.
step
    .goto 30,34.101,32.243
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r.
    .accept 27670 >>Accept Pinned Down
step
    #loop
    .goto 30,60.77,28.77,0
    .goto 30,58.51,41.47,0
    .goto 30,52.05,61.18,0
    .goto 30,40.53,31.95,20,0
    .goto 30,47.79,41.62,25,0
    .goto 30,48.07,25.62,25,0
    >>Kill |cRXP_ENEMY_Crazed Leper Gnomes|r.
    *|cRXP_WARN_Ignore the one that is stuck on the stairs|r.
    .complete 27670,1 --Crazed Leper Gnome (6)
	.mob Crazed Leper Gnome
step
    .goto 30,34.101,32.243
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Nevin Twistwrench|r.
    .turnin 27670 >>Turn in Pinned Down
    .accept 28167 >>Accept Report to Carvo Blastbolt
	.target Nevin Twistwrench
step
    .goto 30,50.973,31.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt|r.
    .turnin 28167 >>Turn in Report to Carvo Blastbolt
    .accept 27671 >>Accept See to the Survivors
	.target Carvo Blastbolt
step << skip
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
    .isOnQuest 27671
step
    #loop
    .goto 30,50.07,30.69,3,0
    .goto 30,53.18,29.29,5,0
    .goto 30,52.15,27.62,5,0
    .goto 30,52.67,23.08,8,0
    .goto 30,45.86,24.31,10,0
    .goto 30,47.63,30.01,5,0
    .goto 30,43.91,30.16,8,0
    .goto 30,42.59,36.47,8,0
    .goto 30,50.99,42.94,15,0
    .goto 30,51.61,37.35,10,0
    .goto 30,48.14,33.31,10,0
    .goto 30,54.92,35.93,10,0
    .goto 30,55.11,36.97,5,0
    .goto 30,53.89,43.48,7,0
    .goto 30,60.25,43.79,10,0
    .goto 30,64.41,37.61,10,0
    .goto 30,64.01,32.74,8,0
    .goto 30,62.91,28.42,10,0
    .goto 30,57.68,30.99,10,0
    .goto 30,56.04,23.32,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Survivors|r.
    .complete 27671,1 --Survivors Rescued (6)
	.target Survivor
step
    .goto 30,50.973,31.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt|r.
    .turnin 27671 >>Turn in See to the Survivors
    .accept 28169 >>Accept Withdraw to the Loading Room!
	.target Carvo Blastbolt
step
    .goto 30,53.063,82.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaffer Coilspring|r.
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
	.target Gaffer Coilspring
step
    .goto 30,58.93,81.73
    -- >>|cRXP_WARN_Type /sit in front of the |cRXP_FRIENDLY_Sanitron 500|r then enter it to skip the RP|r.
    >>Click on the |cRXP_PICK_Sanitron 500|r, |cRXP_WARN_but only when you are certain you are within range to enter it. Ensure you are stationary before clicking, and click only once(don't use the interact button)|r.
    .complete 27635,1 --Decontamination Process started (1)
    .target Sanitron 500
    .emote SIT,46185
--   .timer 26,Decontamination RP
step
    .goto 30,66.420,81.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Braggle|r.
    .turnin 27635 >>Turn in Decontamination
    .accept 27674 >>Accept To the Surface
	.target Technician Braggle
step
    .goto 30,67.282,84.148
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torben Zapblast|r.
    .complete 27674,1 --Speak to Torben Zapblast (1)
    .target Torben Zapblast
	.skipgossipid 37763
step
    .goto 469,39.504,38.383
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r.
    .turnin 27674 >>Turn in To the Surface
    .accept 26206 >>Accept The Future of Gnomeregan << Gnome Rogue
    .accept 26197 >>Accept The Future of Gnomeregan << Gnome Mage
    .accept 26199 >>Accept The Future of Gnomeregan << Gnome Priest
    .accept 26202 >>Accept The Future of Gnomeregan << Gnome Warlock
    .accept 26203 >>Accept The Future of Gnomeregan << Gnome Warrior
    .accept 31135 >>Accept The Future of Gnomeregan << Gnome Monk
    .accept 41217 >>Accept The Future of Gnomeregan << Gnome Hunter
	.target Nevin Twistwrench
step << Gnome Rogue
    .goto 469,38.025,33.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 26206 >>Turn in The Future of Gnomeregan
    .accept 26423 >>Accept Meet the High Tinker
	.target Kelsey Steelspark
step << Gnome Mage
    .goto 469,41.093,29.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r.
    .turnin 26197 >>Turn in The Future of Gnomeregan
    .accept 26421 >>Accept Meet the High Tinker
	.target Bipsi Frostflinger
step << Gnome Priest
    .goto 469,39.406,28.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r.
    .turnin 26199 >>Turn in The Future of Gnomeregan
    .accept 26422 >>Accept Meet the High Tinker
	.target "Doc" Cogspin
step << Gnome Warlock
    .goto 469,37.679,37.957
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r.
    .turnin 26202 >>Turn in The Future of Gnomeregan
    .accept 26424 >>Accept Meet the High Tinker
	.target Alamar Grimm
step << Gnome Warrior
    #loop
    .line 469,40.688,36.199,40.672,35.736,40.645,35.354,40.517,34.973
    .goto 469,40.688,36.199,10,0
    .goto 469,40.672,35.736,10,0
    .goto 469,40.645,35.354,10,0
    .goto 469,40.517,34.973,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Seargent Steamcrank|r.
    .turnin 26203 >>Turn in The Future of Gnomeregan
    .accept 26425 >>Accept Meet the High Tinker
	.target Drill Seargent Steamcrank
step << Gnome Monk
    .goto 469,40.086,35.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi, Friend to the Small|r.
    .turnin 31135 >>Turn in The Future of Gnomeregan
    .accept 31137 >>Accept Meet the High Tinker
	.target Xi, Friend to the Small
step << Gnome Hunter
    #completewith next
    #label The Future of Gnomeregan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muffinus Chromebrew|r.
    .turnin 41217 >>Turn in The Future of Gnomeregan
    .accept 41218 >>Accept Meet the High Tinker
	.target Muffinus Chromebrew
step << Gnome Hunter
    #completewith The Future of Gnomeregan
    #hidewindow
    .goto 469,41,31.49,10,0 
    .goto 469,42.1,30.96,10 >>1
step << Gnome Hunter
    #requires The Future of Gnomeregan
    .goto 469,41.925,31.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muffinus Chromebrew|r.
    .turnin 41217 >>Turn in The Future of Gnomeregan
    .accept 41218 >>Accept Meet the High Tinker
	.target Muffinus Chromebrew
step
    .goto 469,38.802,32.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .turnin 26423 >>Turn in Meet the High Tinker << Rogue
    .turnin 26421 >>Turn in Meet the High Tinker << Mage
    .turnin 26422 >>Turn in Meet the High Tinker << Priest
    .turnin 26424 >>Turn in Meet the High Tinker << Warlock
    .turnin 26425 >>Turn in Meet the High Tinker << Warrior
    .turnin 31137 >>Turn in Meet the High Tinker << Monk
    .turnin 41218 >>Turn in Meet the High Tinker << Hunter/Druid
    .accept 26208 >>Accept The Fight Continues
	.timer 5,Meet the High Tinker RP
	.target High Tinker Mekkatorque
step
    .goto 469,38.802,32.715
    >>|cRXP_WARN_Wait out the RP next to|r |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .complete 26208,1 --Learn about Operation: Gnomeregan (1)
step
    .goto 469,38.81,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .turnin 26208 >>Turn in The Fight Continues
    .accept 26566 >>Accept A Triumph of Gnomish Ingenuity
	.target High Tinker Mekkatorque
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26566 >>Turn in A Triumph of Gnomish Ingenuity
    .accept 26222 >>Accept Scrounging for Parts
	.target Engineer Grindspark
step
    #loop
    .goto 469,40.49,27.58,5,0
    .goto 469,39.74,29.13,10,0
    .goto 469,39.13,29.19,10,0
    .goto 469,38.58,29.48,10,0
    .goto 469,39.92,30.49,10,0
    .goto 469,41.21,31.72,10,0
    .goto 469,41.57,29.22,10,0
    .goto 469,40.97,28.95,10,0
    .goto 469,41.13,28,10,0
    .goto 469,40.87,28.81,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spare Parts|r.
    .complete 26222,1 --Spare Part (7)
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26222 >>Turn in Scrounging for Parts
    .accept 26205 >>Accept A Job for the Multi-Bot
	.target Engineer Grindspark
step
    .goto 469,39.225,26.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Tock Sprysprocket|r.
    .accept 26264 >>Accept What's Left Behind
	.target Tock Sprysprocket
step
    #completewith next
    #label Dealing with the Fallout
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .accept 26265 >>Accept Dealing with the Fallout
	.target Corporal Fizzwhistle
step 
    #completewith Dealing with the Fallout
    #hidewindow
    .goto 469,39.4,29.14,10,0
    .goto 469,38.72,38.66,10 >>1
step
    #requires Dealing with the Fallout
    .goto 469,38.201,40.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .accept 26265 >>Accept Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    #hidewindow
    #completewith Living Contaminations
    #loop
    .goto 469,40.05,42.01,15,0
    .goto 469,41.76,44.64,15,0
    .goto 469,42.66,45.39,15,0
    .goto 469,40.54,45.69,15,0
    .goto 469,39.36,45.6,15,0
    .goto 469,37.98,46.62,15,0
    .goto 469,37.09,50.61,15,0
    .goto 469,41.05,52.15,15,0
    .goto 469,42.18,51.57,15,0
    .goto 469,41.29,50.26,15,0
    .goto 469,38.44,56.98,15,0
    .goto 469,37.54,56.79,15,0
    .goto 469,42.47,61.83,15,0
    .goto 469,42.47,63.32,15,0
    +1
step
    #completewith Living Contaminations
    +|cRXP_WARN_[RARE]|r Kill |cRXP_ENEMY_Gibblewilt|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
    .unitscan Gibblewilt
step
    #completewith GS-9x Multi-Bot
    >>Kill |cRXP_ENEMY_Living Contaminations|r.
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
step
    #completewith GS-9x Multi-Bot
    >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for their |T133151:0|t[|cRXP_LOOT_Recovered Possessions|r].
    .complete 26264,1 --Recovered Possession (6)
    .mob Toxic Sludge
step
    #label GS-9x Multi-Bot
    >>Guide the |cRXP_FRIENDLY_GS-9x Multi-bot|r toward the geysers within the green pools.
    *|cFFFF0000Don't run into the geysers, or you'll be knocked up!|r
    *|cRXP_WARN_If your |cRXP_FRIENDLY_GS-9x Multi-bot|r dies, go back to |cRXP_FRIENDLY_Engineer Grindspark|r for a new one|r.
    .complete 26205,1 --Clean up Toxic Geysers (5)
    .target GS-9x Multi-Bot
    .skipgossip 42553,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Living Contaminations|r.
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
step
    >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for their |T133151:0|t[|cRXP_LOOT_Recovered Possessions|r].
    .complete 26264,1 --Recovered Possession (6)
    .mob Toxic Sludge
step
    #label Living Contaminations
    >>Kill |cRXP_ENEMY_Living Contaminations|r.
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
-- step
--     #sticky
--     #label Contamination
--     #loop
--     .goto 469,40.992,40.259,0
--     .goto 469,37.170,40.971,0
--     .goto 469,39.912,49.912,0
--     .waypoint 469,40.992,40.259,40,0
--     .waypoint 469,40.559,39.847,40,0
--     .waypoint 469,39.968,40.426,40,0
--     .waypoint 469,39.065,40.724,40,0
--     .waypoint 469,38.592,40.539,40,0
--     .waypoint 469,37.980,41.331,40,0
--     .waypoint 469,37.170,40.971,40,0
--     .waypoint 469,36.360,40.843,40,0
--     .waypoint 469,34.620,43.365,40,0
--     .waypoint 469,36.336,44.818,40,0
--     .waypoint 469,39.912,49.912,40,0
--     >>Kill |cRXP_ENEMY_Living Contaminations|r.
--     .complete 26265,1 --Living Contamination (6)
--     .mob Living Contamination
-- step
--     #completewith Geysers
--     .goto 469,38.054,47.396,0
--     .goto 469,39.129,53.303,0
--     .goto 469,41.419,42.524,0
--     >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for their [|cRXP_LOOT_Recovered Possessions|r].
--     .complete 26264,1 --Recovered Possession (6)
--     .mob *Toxic Sludge
-- step
--     #optional
--     #completewith next
--     .goto 469,40.603,45.713,45 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Gibblewilt|r. Kill him if he's up|r.
--     .unitscan Gibblewilt
--     .noflyable
-- step
--     #label Geysers
--     #loop
--     .goto 469,40.578,28.021,0 --Grindspark
--     .goto 469,40.029,42.015,0
--     .goto 469,39.349,46.363,0
--     .goto 469,41.328,50.585,0
--     .goto 469,40.029,42.015,15,0
--     .goto 469,41.629,44.514,15,0
--     .goto 469,42.430,45.128,15,0
--     .goto 469,39.349,46.363,15,0
--     .goto 469,38.657,45.115,15,0
--     .goto 469,37.860,46.624,15,0
--     .goto 469,36.858,50.094,15,0
--     .goto 469,37.386,50.996,15,0
--     .goto 469,40.808,52.328,15,0
--     .goto 469,41.910,51.865,15,0
--     .goto 469,41.328,50.585,15,0
--     >>Guide your |cRXP_FRIENDLY_GS-9x Multi-bot|r toward the Geysers in the green pools
--     >>|cRXP_WARN_If your |cRXP_FRIENDLY_GS-9x Multi-bot|r dies, go back to |cRXP_FRIENDLY_Engineer Grindspark|r for a new one|r.
--     .complete 26205,1 --Clean up Toxic Geysers (5)
--     .skipgossip 42553,1
-- step
--     #optional
--     #loop
--     .goto 469,38.054,47.396,0
--     .goto 469,39.129,53.303,0
--     .goto 469,41.419,42.524,0
--     .goto 469,38.054,47.396,40,0
--     .goto 469,35.840,46.516,40,0
--     .goto 469,34.007,48.244,40,0
--     .goto 469,34.752,49.411,40,0
--     .goto 469,35.620,52.363,40,0
--     .goto 469,36.659,52.593,40,0
--     .goto 469,39.129,53.303,40,0
--     .goto 469,40.837,53.655,40,0
--     .goto 469,42.523,50.016,40,0
--     .goto 469,40.920,48.049,40,0
--     .goto 469,40.209,47.931,40,0
--     .goto 469,41.419,42.524,40,0
--     >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for their [|cRXP_LOOT_Recovered Possessions|r].
--     .complete 26264,1 --Recovered Possession (6)
--     .mob Toxic Sludge
step
    .goto 469,38.201,40.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r.
    .turnin 26265 >>Turn in Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r.
    .turnin 26205 >>Turn in A Job for the Multi-Bot
	.target Engineer Grindspark
step
    .goto 469,39.225,26.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Tock Sprysprocket|r.
    .turnin 26264 >>Turn in What's Left Behind
	.target Tock Sprysprocket
step
    #completewith next
    #label What's Keeping Kharmarn?
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r.
    .accept 26316 >>Accept What's Keeping Kharmarn?
	.target Captain Tread Sparknozzle
step
    #completewith What's Keeping Kharmarn?
    #hidewindow
    .goto 469,39.38,29.09,10 >>1
step
    #requires What's Keeping Kharmarn?
    .goto 469,38.385,33.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r.
    .accept 26316 >>Accept What's Keeping Kharmarn?
	.target Captain Tread Sparknozzle
step
    #completewith next
    #label Missing in Action
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
	.target Kharmarn Palegrip
step
    #hidewindow
    #completewith Missing in Action
    .goto 469,37.29,38.97,10 >>1
step
    #requires Missing in Action
    .goto 469,37.283,65.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
	.target Kharmarn Palegrip
step
    #hidewindow
    #completewith Stolen Powder Keg
    #loop
    .goto 469,36.59,68.65,15,0
    .goto 469,38.24,68.88,15,0
    .goto 469,37.99,72.61,15,0
    .goto 469,38.86,74.37,15,0
    .goto 469,40.85,74.37,15,0
    .goto 469,42,73.55,15,0
    .goto 469,41.09,69.67,15,0
    .goto 469,44.01,70.25,15,0
    .goto 469,45.91,69.29,15,0
    .goto 469,47.08,71.13,15,0
    .goto 469,47.23,73.6,15,0
    .goto 469,44.96,73.37,15,0
    +1
step
    #completewith Stolen Powder Keg
    +|cRXP_WARN_[RARE]|r Kill |cRXP_ENEMY_Caverndeep Looter|r if he's up, |cRXP_WARN_as he gives a lot of XP|r.
	.unitscan Caverndeep Looter
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. 
    *Loot them for the |T132622:0|t[|cRXP_LOOT_Stolen Powder Kegs|r].
    .complete 26285,1 --Stolen Powder Keg (7)
	.mob Rockjaw Bonepicker
	.mob Rockjaw Marauder
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Makeshift Cages|r
    .complete 26284,1 --Captured Demolitionists rescued (6)
step
    #label Stolen Powder Keg
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. 
    *Loot them for the |T132622:0|t[|cRXP_LOOT_Stolen Powder Kegs|r].
    .complete 26285,1 --Stolen Powder Keg (7)
	.mob Rockjaw Bonepicker
	.mob Rockjaw Marauder
step
    .goto 469,37.283,65.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26284 >>Turn in Missing in Action
    .turnin 26285 >>Turn in Get Me Explosives Back!
    .accept 26318 >>Accept Finishin' the Job
	.target Kharmarn Palegrip
-- step
--     #sticky
--     #label PowderKegs
--     .goto 469,38.413,67.778,0
--     .goto 469,46.960,73.690,0
--     .goto 469,42.336,69.559,0
--     .waypoint 469,38.413,67.778,40,0
--     .waypoint 469,36.284,70.305,40,0
--     .waypoint 469,39.268,75.879,40,0
--     .waypoint 469,42.366,75.706,40,0
--     .waypoint 469,44.629,77.577,40,0
--     .waypoint 469,45.326,73.024,40,0
--     .waypoint 469,46.960,73.690,40,0
--     .waypoint 469,47.296,72.654,40,0
--     .waypoint 469,46.734,71.721,40,0
--     .waypoint 469,47.119,68.438,40,0
--     .waypoint 469,47.163,65.769,40,0
--     .waypoint 469,43.581,70.051,40,0
--     .waypoint 469,42.336,69.559,40,0
--     >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. Loot them for the [|cRXP_LOOT_Stolen Powder Kegs|r].
--     .complete 26285,1 --Stolen Powder Keg (7)
-- 	.mob Rockjaw Bonepicker
-- 	.mob Rockjaw Marauder
-- step
--     #loop
--     .goto 469,36.560,68.469,0
--     .goto 469,38.768,74.257,0
--     .goto 469,45.803,69.339,0
--     .goto 469,36.560,68.469,15,0
--     .goto 469,38.134,68.845,15,0
--     .goto 469,37.972,72.466,15,0
--     .goto 469,38.768,74.257,15,0
--     .goto 469,40.738,74.411,15,0
--     .goto 469,41.168,69.792,15,0
--     .goto 469,42.045,73.682,15,0
--     .goto 469,45.032,73.353,15,0
--     .goto 469,47.131,73.469,15,0
--     .goto 469,47.007,71.031,15,0
--     .goto 469,45.803,69.339,15,0
--     .goto 469,43.887,70.268,15,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Makeshift Cages|r to rescue the |cRXP_FRIENDLY_Captured Demolitionists|r.
--     .complete 26284,1 --Captured Demolitionists rescued (6)
-- step
--     #requires PowderKegs
--     .goto 469,37.283,65.200
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
--     .turnin 26284 >>Turn in Missing in Action
--     .turnin 26285 >>Turn in Get Me Explosives Back!
--     .accept 26318 >>Accept Finishin' the Job
-- 	.target Kharmarn Palegrip
step
    #completewith next
    #label Boss Bruggor
    >>Kill |cRXP_ENEMY_Boss Bruggor|r.
    .complete 26318,2 --Boss Bruggor (1)
step
    #title |cFFFCDC00Enter Cave|r
    #completewith Boss Bruggor
    .goto 469,33.8,66.29,15 >>Enter the Frostmane Hold Cave
step
    #requires Boss Bruggor
    .goto 470,87.21,51.37,10,0
    .goto 470,79.61,39.36,10,0
    .goto 470,67.4,48.66,10,0
    .goto 470,59.67,74.59,10,0
    .goto 470,44.6,75.2,10,0
    .goto 470,34.74,63.44,10,0
    .goto 470,27.47,52.08
    >>Kill |cRXP_ENEMY_Boss Bruggor|r.
    *|cRXP_WARN_You won't aggro the sleeping|r |cRXP_ENEMY_Rockjaw Fungus-Flingers|r |cRXP_WARN_unless you attack them|r.
    .complete 26318,2 --Boss Bruggor (1)
	.mob Boss Bruggor
step
    .goto 470,36.17,40.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Detonator|r.
    .complete 26318,1 --Detonate trogg tunnel (1)
step
    #completewith next
    #label Finishin' the Job
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26318 >>Turn in Finishin' the Job
    -- .accept 26329 >>Accept One More Thing
	.target Kharmarn Palegrip
step
    #completewith Finishin' the Job
    #title |cFFFCDC00Exit Cave|r
    .goto 470,34.89,63.73,10,0
    .goto 470,46.28,74.88,10,0
    .goto 470,60.56,72.62,10,0
    .goto 470,64.93,53.53,10,0
    .goto 470,76.16,37.36,10,0
    .goto 470,87.69,51.74,10,0
    .goto 469,34.42,66.18,10 >>Exit the Frostmane Hold Cave.
    *|cRXP_WARN_You won't aggro the sleeping |cRXP_ENEMY_Rockjaw Fungus-Flingers|r unless you attack them|r.
step
    #requires Finishin' the Job
    .goto 469,37.283,65.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
    .turnin 26318 >>Turn in Finishin' the Job
    .accept 26329 >>Accept One More Thing
	.target Kharmarn Palegrip
-- step
-- 	#completewith next
--     .goto 470,95.285,56.045,15 >>Enter the Frostmane Hold cave
--     .isOnQuest 26318
-- step
--     #completewith Bruggor
--     .goto 470,87.857,52.221,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,45.246,74.390,15,0
--     .goto 470,31.866,44.578,45 >>Travel toward |cRXP_ENEMY_Boss Bruggor|r inside.
--     >>|cRXP_WARN_You won't aggro the sleeping |cRXP_ENEMY_Rockjaw Fungus-Flingers|r unless you attack them|r.
--     .noflyable --Azeroth Flying
-- step
--     #completewith Bruggor
--     .goto 470,87.857,52.221,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,45.246,74.390,15,0
--     .goto 470,31.866,44.578,45 >>Travel toward |cRXP_ENEMY_Boss Bruggor|r inside.
--     .flyable --Azeroth Flying
-- step
--     #sticky
--     #label Detonator
--     .goto 470,36.112,40.902,0,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Detonator|r on the ground inside.
--     .complete 26318,1 --Detonate trogg tunnel (1)
-- step
--     #label Bruggor
--     .goto 470,21.791,58.700,15,0
--     .goto 470,31.866,44.578
--     >>Kill |cRXP_ENEMY_Boss Bruggor|r inside.
--     .complete 26318,2 --Boss Bruggor (1)
-- 	.mob Boss Bruggor
-- step
--     #requires Detonator
--     #completewith Finishing
--     .goto 470,45.246,74.390,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 469,33.781,66.184,20 >>Exit the Frostmane Hold cave
--     >>|cRXP_WARN_You won't aggro the sleeping |cRXP_ENEMY_Rockjaw Fungus-Flingers|r unless you attack them|r.
--     .noflyable --Azeroth Flying
--     .subzoneskip 135,1
-- step
--     #optional
--     #requires Detonator
--     #completewith Finishing
--     .goto 470,45.246,74.390,15,0
--     .goto 470,60.714,72.486,15,0
--     .goto 470,64.507,54.540,15,0
--     .goto 470,74.752,38.437,15,0
--     .goto 470,83.611,44.352,15,0
--     .goto 469,33.781,66.184,20 >>Exit the Frostmane Hold cave
--     .flyable --Azeroth Flying
--     .subzoneskip 135,1
-- step
--     #label Finishing
--     #requires Detonator
--     .goto 469,37.283,65.200
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip|r.
--     .turnin 26318 >>Turn in Finishin' the Job
--     .accept 26329 >>Accept One More Thing
-- 	.target Kharmarn Palegrip
-- step not faster on average
--     #completewith next
--     .goto 469,36.284,70.305,-1
--     .goto 469,47.880,44.670,-1
--     *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
step
    #completewith next
    #label in One More Thing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r and |cRXP_FRIENDLY_Hinkles Fastblast|r.
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
	.target +High Tinker Mekkatorgue
    .accept 26333 >>Accept No Tanks!
	.target +Hinkles Fastblast
step
    #title |cFFFCDC00Follow the Arrow|r
    #hidewindow
    #completewith in One More Thing
    .goto 469,37.25,59.43,10,0
    .goto 469,37.26,54.35,10,0
    .goto 469,38.71,40.01,10 >>1
step
    #requires in One More Thing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r and |cRXP_FRIENDLY_Hinkles Fastblast|r.
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
    .goto 469,38.802,32.715
	.target +High Tinker Mekkatorgue
    .accept 26333 >>Accept No Tanks!
    .goto 469,38.204,33.662
	.target +Hinkles Fastblast
step
    #sticky
    #label Tanks
    #loop
    .goto 469,59.638,21.877,0
    .goto 469,53.711,22.482,0
    .goto 469,58.619,23.568,0
    .waypoint 469,59.638,21.877,15,0
    .waypoint 469,59.620,19.066,15,0
    .waypoint 469,58.784,18.047,15,0
    .waypoint 469,57.507,18.837,15,0
    .waypoint 469,56.560,20.889,15,0
    .waypoint 469,55.463,21.067,15,0
    .waypoint 469,53.711,22.482,15,0
    .waypoint 469,53.126,24.536,15,0
    .waypoint 469,54.080,26.011,15,0
    .waypoint 469,55.407,23.742,15,0
    .waypoint 469,56.513,23.676,15,0
    .waypoint 469,57.585,23.609,15,0
    .waypoint 469,58.619,23.568,15,0
    >>Use the |T133710:0|t[Techno-Grenades] on the |cRXP_FRIENDLY_Repaired Mechano-Tanks|r.
    .complete 26333,1 --Repaired Mechano-Tanks destroyed (5)
	.mob Repaired Mechano-Tank
    .use 58200
step
    #sticky
    #label CrushcogM
    #loop
    .goto 469,54.018,26.884,0
    .goto 469,60.672,22.216,0
    .goto 469,52.540,24.667,0
    .goto 469,54.018,26.884,45,0
    .goto 469,55.919,26.336,45,0
    .goto 469,57.608,25.933,45,0
    .goto 469,60.002,25.191,45,0
    .goto 469,61.148,25.266,45,0
    .goto 469,60.490,23.847,45,0
    .goto 469,60.672,22.216,45,0
    .goto 469,56.948,18.526,45,0
    .goto 469,56.251,19.440,45,0
    .goto 469,54.541,18.700,45,0
    .goto 469,54.364,20.143,45,0
    .goto 469,52.960,21.320,45,0
    .goto 469,52.540,24.667,45,0
    >>Kill |cRXP_ENEMY_Crushcog Battle Suits|r and |cRXP_ENEMY_Irradiated Technicians|r.
	.complete 26331,1 --Crushcog's Minions killed (8)
	.mob Crushcog Battle Suit
	.mob Irradiated Technician
step
    #optional
    .goto 469,66.100,26.168,45,0
    .goto 469,66.023,27.211,45 >>|cRXP_WARN_[RARE] Check for the |cRXP_ENEMY_Weaponized Rabbot|r. Kill it if it's up|r.
	.unitscan Weaponized Rabbot
    .isOnQuest 26331
    .noflyable
step
    #optional
    .goto 469,68.698,35.590,45,0
    .goto 469,67.992,35.519,45,0
    .goto 469,67.433,37.129,45 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Timber|r. Kill him if he's up|r.
    .unitscan Timber
    .isOnQuest 26331
    .noflyable
step
    #optional
    #requires CrushcogM
--XXREQ Placeholder invis step until multiple requires per step
step << skip
    #requires Tanks
    #completewith next
    .goto 469,56.346,21.833,-1
    .goto 469,47.880,44.670,-1
-- .goto 425,38.29,58.12
    *|cRXP_WARN_Spamming /sit or removing your gear will make you die faster|r.
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .skill riding,75,1
--XX unlikely to ever be worth
step
    #requires Tanks
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Hinkles Fastblast|r, and |cRXP_FRIENDLY_Kelsey Steelspark|r.
    .turnin 26331 >>Turn in Crushcog's Minions
    .goto 469,38.802,32.715
	.target +High Tinker Mekkatorgue
    .turnin 26333 >>Turn in No Tanks!
    .goto 469,38.204,33.662
	.target +Hinkles Fastblast
    .accept 26339 >>Accept Staging in Brewnall
    .goto 469,38.025,33.570
	.target +Kelsey Steelspark
step
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26339 >>Turn in Staging in Brewnall
    .accept 26342 >>Accept Paint it Black
	.target Jarvi Shadowstep
step
    #loop
    .goto 469,52.723,50.681,0
    .goto 469,52.556,44.220,0
    .goto 469,61.154,48.908,0
    .goto 469,52.723,50.681,50,0
    .goto 469,55.901,51.426,50,0
    .goto 469,52.556,44.220,50,0
    .goto 469,54.584,39.961,50,0
    .goto 469,61.154,48.908,50,0
    >>Use the |T133037:0|t[Paintinator] on |cRXP_ENEMY_Crushcog Sentry-Bots|r.
    .complete 26342,1 --Crushcog's Sentry Bot blinded (5)
	.mob Crushcog Sentry Bot
    .use 58203
step
    #optional
    #questguide
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26342 >>Turn in Paint it Black
    .accept 26364 >>Accept Down with Crushcog!
	.target Jarvi Shadowstep
step
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26342 >>Turn in Paint it Black
	.target Jarvi Shadowstep
step
    #questguide
    #optional
    #completewith Razlo
    #label Mekkatalk
    .goto 469,57.188,47.535
    .gossipoption 38798 >> Talk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r.
    .timer 72,Down with Crushcog! RP
    .target High Tinker Mekkatorque
    .isOnQuest 26364
step
    #questguide
    #optional
    #completewith next
    #requires Mekkatalk
    >>|cRXP_WARN_Wait out the RP|r.
    +Use the |T308321:0|t[Orbital Targeting Device] on |cRXP_ENEMY_Razlo Crushcog|r and |cRXP_ENEMY_Crushcog's Guardians|r.
    .isOnQuest 26364
    .use 58253
step
    #questguide
    #label Razlo
    .goto 469,58.749,42.222
    >>Defeat |cRXP_ENEMY_Razlo Crushcog|r.
    .complete 26364,2 --Razlo Crushcog defeated (1)
    .use 58253
    .mob Razlo Crushcog
    .mob Crushcog's Guardians
step
    #questguide
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r.
    .turnin 26364 >>Turn in Down with Crushcog!
    .accept 26373 >>Accept On to Kharanos
	.target Jarvi Shadowstep
step
    .goto 27,49.906,44.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r.
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
--XX Doable by other races but simpler to do for gnomes only
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Dwarf Starting Zones << !Gnome
#subgroup Gnome Starting Zones << Gnome
#name 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#displayname Chapter 2 - Dun Morogh
#next RestedXP Speedrun Guide\a) The Waking Shores Fresh
#defaultfor Dwarf !DK/Gnome !DK

<< Alliance

step << Gnome
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r.
    .accept 25724 >>Accept Frostmane Aggression
    .turnin 26373 >>Turn in On to Kharanos
	.target Captain Tharran
    .isOnQuest 26373
step
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r.
    .accept 25724 >>Accept Frostmane Aggression
	.target Captain Tharran
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 27,53.807,51.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r.
    >>|cRXP_WARN_Herbing Herbs and Mining Veins provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Wembil Taskwidget
    .skipgossip 47396,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 27,53.807,51.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r.
    >>|cRXP_WARN_Herbing Herbs provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2366 >> Train |T4620675:0|t[Herbalism]
    .target Wembil Taskwidget
    .skipgossip 47396,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 27,53.807,51.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r.
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r.
    >>|cRXP_WARN_If you don't want to do this, skip this step|r.
    .train 2575 >> Train |T4620679:0|t[Mining]
    .target Wembil Taskwidget
    .skipgossip 47396,2,3,2
    .train 2366,3 --Herbalism
step
    .goto 27,54.196,51.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r.
    .accept 315 >>Accept The Perfect Stout
	.target Rejold Barleybrew
step
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r.
    .accept 384 >>Accept Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step
    #optional
    #label Distillery
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >> Enter the Thunderbrew Distillery. Travel toward |cRXP_FRIENDLY_Innkeeper Belm|r inside.
step << Gnome
    #requires Distillery
    #completewith Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside.
    .turnin 26380,2 >>Turn in Bound for Kharanos
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise
step
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside.
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_from him|r.
    .collect 2894,1,384,1 --Rhapsody Malt (1)
    .home >>Set your Hearthstone to Thunderbrew Distillery
	.target Innkeeper Belm
    .isOnQuest 384
step << Dwarf/Gnome/DarkIronDwarf
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r inside in the backroom.
    .accept 6387 >>Accept Honor Students
    .train 2550 >> Train |T4620671:0|t[Cooking]
	.target Gremlock Pilsnor
    .train 2550,1 --Cooking
    .dmf
step << !Dwarf !Gnome !DarkIronDwarf
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r inside in the backroom.
    .train 2550 >> Train |T4620671:0|t[Cooking]
	.target Gremlock Pilsnor
    .dmf
step << Dwarf/Gnome/DarkIronDwarf
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r inside in the backroom.
    .accept 6387 >>Accept Honor Students
	.target Gremlock Pilsnor
step
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r.
    .turnin 24493 >>Turn in Don't Forget About Us
	.target Tharek Blackstone
    .isOnQuest 24493
    step
    #completewith next
    .goto 27,53.376,44.252,0
    .goto 27,53.193,42.603,0
    .goto 27,53.376,44.252,60,0
    .goto 27,53.193,42.603,60,0
	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their [|cRXP_LOOT_Tender Boar Ribs|r].
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #optional
    #completewith next
    #label Ramp
    .goto 27,51.034,40.862,50 >> Travel up the ramp
    .subzoneskip 802
    .noflyable --Azeroth Flying
    .isOnQuest 25724
step
    #optional
    #requires Ramp
    #completewith Snowstrider
    .goto 27,49.056,37.135,45 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Great Father Arctikus|r. Kill him if he's up|r.
	.unitscan Great Father Arctikus
    .isOnQuest 25724
    .noflyable
step
    #sticky
    #requires Ramp
    #label Shimmerweed
    .goto 27,48.955,36.824,0
    .goto 27,48.330,38.486,0
    .goto 27,48.092,42.928,0
    .goto 27,48.773,42.485,0
    .goto 27,48.949,37.202,0
    .waypoint 27,48.955,36.824,15,0
    .waypoint 27,48.331,36.523,15,0
    .waypoint 27,47.734,37.203,15,0
    .waypoint 27,47.704,37.755,15,0
    .waypoint 27,48.330,38.486,15,0
    .waypoint 27,47.699,39.542,15,0
    .waypoint 27,48.504,42.035,15,0
    .waypoint 27,48.371,42.052,15,0
    .waypoint 27,48.092,42.928,15,0
    .waypoint 27,48.283,42.796,15,0
    .waypoint 27,48.316,43.158,15,0
    .waypoint 27,48.805,42.774,15,0
    .waypoint 27,48.773,42.485,15,0
    .waypoint 27,50.247,40.528,15,0
    .waypoint 27,49.153,41.241,15,0
    .waypoint 27,49.220,37.873,15,0
    .waypoint 27,48.949,37.202,15,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for their [|cRXP_LOOT_Shimmerweed|r].
    >>Click on the |cRXP_PICK_Shimmerweed Baskets|r on the ground. Loot them for their [|cRXP_LOOT_Shimmerweed|r].
    .complete 315,1 --Shimmerweed (7)
	.mob Frostmane Seer
step
    #label Snowstrider
    #requires Ramp
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r and |cRXP_ENEMY_Frostmane Seers|r.
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .goto 27,50.507,39.991,0
    .goto 27,49.270,38.306,0
    .goto 27,47.506,39.668,0
    .goto 27,49.717,41.829,0
    .goto 27,50.507,39.991,50,0
    .goto 27,50.697,39.331,50,0
    .goto 27,50.165,38.971,50,0
    .goto 27,50.533,38.088,50,0
    .goto 27,49.270,38.306,50,0
    .goto 27,49.109,37.844,50,0
    .goto 27,48.866,37.838,50,0
    .goto 27,48.852,36.950,50,0
    .goto 27,47.506,39.668,50,0
    .goto 27,48.468,42.612,50,0
    .goto 27,49.264,42.981,50,0
    .goto 27,49.717,41.829,50,0
    .mob +Frostmane Snowstrider
    .complete 25724,1 --Frostmane Seer slain (5)
    .goto 27,49.142,39.986,0
    .goto 27,48.164,43.105,0
    .goto 27,49.362,37.687,0
    .goto 27,49.142,39.986,50,0
    .goto 27,48.924,39.588,50,0
    .goto 27,48.191,37.582,50,0
    .goto 27,48.544,40.678,50,0
    .goto 27,48.164,43.105,50,0
    .goto 27,48.539,43.228,50,0
    .goto 27,49.027,42.624,50,0
    .goto 27,49.836,37.127,50,0
    .goto 27,49.362,37.687,50,0
	.mob +Frostmane Seer
step
    #optional
    #requires Shimmerweed
	#completewith next
    .goto 27,50.495,40.006,70 >> Travel toward the eastern side of the camp. Respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .noflyable --Azeroth Flying
step
    #requires Shimmerweed
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .noflyable --Azeroth Flying
step << Dwarf/Gnome/DarkIronDwarf
    #requires Shimmerweed
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r.
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
    .fp Kharanos >>Get the Kharanos Flight Path
	.target Brolan Galebeard
step
    #requires Shimmerweed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r and |cRXP_FRIENDLY_Quartermaster Glynna|r
.
    .turnin 25724 >>Turn in Frostmane Aggression
    .accept 313 >>Accept Forced to Watch from Afar
    .accept 25667 >>Accept Culling the Wendigos
    .goto 27,53.713,52.190
	.target +Captain Tharran
    .accept 25668 >>Accept Pilfered Supplies
    .goto 27,53.707,52.095
	.target +Quartermaster Glynna
step
    #completewith WendigoCave
    .goto 27,51.697,54.360,0
    .goto 27,50.738,54.065,0
    .goto 27,49.815,53.919,0
    .goto 27,51.697,54.360,60,0
    .goto 27,50.738,54.065,60,0
    .goto 27,49.815,53.919,60,0
	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their [|cRXP_LOOT_Tender Boar Ribs|r].
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #sticky
    #label Pilfered
    #loop
    .goto 29,62.330,22.544,0
    .goto 29,70.564,57.907,0
    .goto 29,50.663,47.870,0
    .waypoint 29,62.330,22.544,15,0
    .waypoint 29,58.260,24.711,15,0
    .waypoint 29,57.075,45.882,15,0
    .waypoint 29,70.564,57.907,15,0
    .waypoint 29,69.021,60.488,15,0
    .waypoint 29,60.967,56.171,15,0
    .waypoint 29,56.301,54.391,15,0
    .waypoint 29,50.663,47.870,15,0
    >>Loot the [|cRXP_LOOT_Pilfered Supplies|r]. on the ground
    .complete 25668,1 --Pilfered Supplies (6)
step
    #completewith WendigoCave
    >>Kill |cRXP_ENEMY_Young Wendigos|r and |cRXP_ENEMY_Wendigos|r
.
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
	.mob Young Wendigo
step
    #optional
    #label WendigoCave
    .goto 29,61.676,88.466,40 >> Enter the Wendigo Cave
	.isOnQuest 25668
step
    #optional
    #sticky
    #label Wendigos
    #loop
    .goto 29,56.228,15.776,0
    .goto 29,69.067,56.919,0
    .goto 29,49.271,52.117,0
    .waypoint 29,56.228,15.776,40,0
    .waypoint 29,61.453,19.391,40,0
    .waypoint 29,65.808,34.242,40,0
    .waypoint 29,60.523,38.069,40,0
    .waypoint 29,69.067,56.919,40,0
    .waypoint 29,51.657,55.467,40,0
    .waypoint 29,49.271,52.117,40,0
    >>Kill |cRXP_ENEMY_Wendigos|r inside.
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
step
    #optional
    #completewith next
    .goto 29,61.083,82.713,20,0
    .goto 29,58.971,77.810,20,0
    .goto 29,53.639,70.746,20,0
    .goto 29,51.947,65.073,20,0
    .goto 29,51.819,48.382,15 >>Travel toward |cRXP_FRIENDLY_Mountaineer Dunstan|r inside.
    .isOnQuest 313
step
    .goto 29,51.819,48.382
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Dunstan|r inside.
    .complete 313,1 --Convey orders to Mountaineer Dunstan (1)
	.target Mountaineer Dunstan
    .skipgossip
step
    .goto 29,60.272,56.211
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Lewin|r inside.
    .complete 313,2 --Convey orders to Mountaineer Lewin (1)
	.target Mountaineer Lewin
    .skipgossip
step
    .goto 29,61.511,22.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Valgrum|r inside.
    .complete 313,3 --Convey orders to Mountaineer Valgrum (1)
	.target Mountaineer Valgrum
    .skipgossip
--XX not doing Edan/Chest check due to deathskip location
step
    #optional
    #requires Pilfered
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Wendigos
    #completewith Afar
    >>|cRXP_WARN_Make sure you die in a spot that is east/southeast of where |cRXP_FRIENDLY_Mountaineer Valgrum|r is|r
.
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
    .noflyable --Azeroth Flying
    .isOnQuest 313
step
    #optional
    #completewith Afar
    .goto 29,54.653,47.370,20,0
    .goto 29,51.703,58.351,20,0
    .goto 29,61.676,88.466,40 >> Exit the Wendigo Cave
    .flyable --Azeroth Flying
    .isOnQuest 313
step
    #requires Wendigos
    #label Afar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r and |cRXP_FRIENDLY_Quartermaster Glynna|r
.
    .turnin 313 >>Turn in Forced to Watch from Afar
    .turnin 25667 >>Turn in Culling the Wendigos
    .accept 25792 >>Accept Pushing Forward
    .goto 27,53.713,52.190
	.target +Captain Tharran
    .turnin 25668 >>Turn in Pilfered Supplies
    .goto 27,53.707,52.095
	.target +Quartermaster Glynna
step
    .goto 27,53.262,51.917
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r.
    .accept 412 >>Accept Operation Recombobulation
	.target Razzle Sprysprocket
step
    #completewith Gears
    .goto 27,55.315,56.087,0
    .goto 27,55.156,54.313,60,0
    .goto 27,55.315,56.087,60,0
	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their [|cRXP_LOOT_Tender Boar Ribs|r].
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #optional
    #completewith Gears
    .goto 27,57.252,57.622,40,0
    .goto 27,60.260,57.034,15 >>|cRXP_WARN_[CHEST] Keep an eye out for the |cRXP_PICK_Chest|r at the Frostmane Front. Loot it if it's up|r
.
    .noflyable
step
    #sticky
    #label Gears
    .goto 27,61.927,55.860,0
    .goto 27,60.305,57.134,0
    .goto 27,56.337,56.955,0
    .waypoint 27,61.927,55.860,45,0
    .waypoint 27,61.571,55.817,45,0
    .waypoint 27,60.806,56.782,45,0
    .waypoint 27,60.460,56.838,45,0
    .waypoint 27,60.305,57.134,45,0
    .waypoint 27,59.977,57.500,45,0
    .waypoint 27,57.341,57.547,45,0
    .waypoint 27,56.923,57.456,45,0
    .waypoint 27,56.337,56.955,45,0
    >>Kill |cRXP_ENEMY_Frostmane Scavengers|r. Loot them for their [|cRXP_LOOT_Gyromechanic Gears|r].
    .complete 412,1 --Gyromechanic Gear (8)
	.mob Frostmane Scavenger
step
    #label Totems
    #loop
    .goto 27,56.705,56.430,0
    .goto 27,59.034,57.689,0
    .goto 27,57.648,58.825,0
    .goto 27,55.958,61.442,0
    .goto 27,56.705,56.430,20,0
    .goto 27,57.576,56.626,20,0
    .goto 27,58.403,56.723,20,0
    .goto 27,59.099,57.035,20,0
    .goto 27,59.034,57.689,20,0
    .goto 27,58.631,58.074,20,0
    .goto 27,58.186,57.427,20,0
    .goto 27,57.724,57.788,20,0
    .goto 27,57.648,58.825,20,0
    .goto 27,57.134,59.461,20,0
    .goto 27,56.937,60.250,20,0
    .goto 27,56.701,61.013,20,0
    .goto 27,55.958,61.442,20,0
    >>Use the |T134424:0|t[Rune of Fire] on |cRXP_ENEMY_Constriction Totems|r.
    .complete 25792,1 --Constriction Totems burned (4)
    .use 56009
    .mob Constriction Totem
step
    #requires Gears
    .goto 27,55.315,56.087,0
    .goto 27,54.940,57.752,0
    .goto 27,53.276,57.839,0
    .goto 27,55.315,56.087,60,0
    .goto 27,55.156,54.313,60,0
    .goto 27,56.204,52.928,60,0
    .goto 27,54.940,57.752,60,0
    .goto 27,55.073,58.728,60,0
    .goto 27,54.442,59.686,60,0
    .goto 27,53.235,60.000,60,0
    .goto 27,53.276,57.839,60,0
	>>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for their [|cRXP_LOOT_Tender Boar Ribs|r].
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #sticky
    #label Pushing
    .goto 27,53.713,52.190,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r.
    .turnin 25792 >>Turn in Pushing Forward
    .accept 25838 >>Accept Help from Steelgrill's Depot
	.target Captain Tharran
--XX not sure if you need to turnin 412 to accept
step
    .goto 27,53.262,51.917
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r.
    .turnin 412 >>Turn in Operation Recombobulation
	.target Razzle Sprysprocket
step
    #requires Pushing
    .goto 27,54.196,51.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r.
    .turnin 315 >>Turn in The Perfect Stout
	.target Rejold Barleybrew
step
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r.
    .turnin 384 >>Turn in Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step
    #completewith next
    .goto 27,53.941,50.053,15,0
    .goto 27,56.823,47.107,15 >>Travel toward |cRXP_FRIENDLY_Delber Cranktoggle|r.
    .noflyable
step
    .goto 27,56.823,47.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delber Cranktoggle|r.
    .turnin 25838 >>Turn in Help from Steelgrill's Depot
    .accept 25839 >>Accept The Ultrasafe Personnel Launcher
	.target Delber Cranktoggle
step
    #completewith next
    .goto 27,56.725,46.583,-1
    .goto 27,56.758,46.518,-1
    .vehicle >>Enter the |cRXP_PICK_Ultrasafe Personnel Launcher|r.
    .timer 18.5,The Ultrasafe Personnel Launcher RP
    .isOnQuest 25839
    .noflyable
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slamp Wobblecog|r and |cRXP_FRIENDLY_Snevik the Blade|r
.
    .turnin 25839 >>Turn in The Ultrasafe Personnel Launcher
    .accept 25840 >>Accept Eliminate the Resistance
    .accept 25841 >>Accept Strike From Above
    .goto 27,62.505,53.708
	.target +Slamp Wobblecog
    .accept 28868 >>Accept The View from Down Here
    .goto 27,62.546,53.807
	.target +Snevik the Blade
step
    #sticky
    #label Builders
    .goto 27,63.237,57.685,0
    .goto 27,62.461,55.569,0
    .goto 27,60.230,56.060,0
    .goto 27,64.303,54.222,0
    .goto 27,64.240,56.533,0
    .waypoint 27,63.237,57.685,20,0
    .waypoint 27,62.898,57.772,20,0
    .waypoint 27,62.360,57.619,20,0
    .waypoint 27,62.169,56.801,20,0
    .waypoint 27,62.461,55.569,20,0
    .waypoint 27,62.860,55.116,20,0
    .waypoint 27,63.454,54.870,20,0
    .waypoint 27,61.662,54.594,20,0
    .waypoint 27,60.908,54.935,20,0
    .waypoint 27,60.693,55.826,20,0
    .waypoint 27,60.230,56.060,20,0
    >>Use the |T133015:0|t[Viewpoint Equalizer] on |cRXP_ENEMY_Frostmane Builders|r.
    .complete 28868,1 --Frostmane Builders shrunk (5)
    .mob Frostmane Builder
    .use 67249
step
    #sticky
    #label Warriors
    .goto 27,62.959,56.486,0
    .goto 27,63.017,54.746,0
    .goto 27,64.023,56.068,0
    .waypoint 27,62.959,56.486,50,0
    .waypoint 27,62.214,56.630,50,0
    .waypoint 27,62.049,56.284,50,0
    .waypoint 27,62.154,54.625,50,0
    .waypoint 27,63.017,54.746,50,0
    .waypoint 27,63.875,54.960,50,0
    .waypoint 27,64.243,54.643,50,0
    .waypoint 27,64.023,56.068,50,0
	>>Kill |cRXP_ENEMY_Frostmane Warriors|r.
    .complete 25840,2 --Frostmane Warrior slain (5)
	.mob Frostmane Warrior
step
    #optional
    #sticky
    #label FrostmaneChest1
    .goto 27,64.706,54.003,20 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r near the stairs to the hut. Loot it if it's up|r
.
    .isOnQuest 25841
    .noflyable
step
    .goto 27,64.487,54.103
    >>Use the |T133033:0|t[Signal Flare] in the Northern Camp
    .complete 25841,1 --Attack on Northern Frostmane Retreat (1)
    .use 56048
step
    #requires FrostmaneChest1
    .goto 27,63.780,55.735
    >>Kill |cRXP_ENEMY_Battok the Berserker|r.
    .complete 25840,1 --Battok the Berserker slain (1)
    .mob Battok the Berserker
step
    #optional
    #completewith next
    .goto 27,63.550,56.118,20 >>|cRXP_WARN_[CHEST] Check for the |cRXP_PICK_Chest|r near the Drum. Loot it if it's up|r
.
    .isOnQuest 25841
    .noflyable
step
    #requires FrostmaneChest2
    .goto 27,63.191,57.128
    >>Use the |T133033:0|t[Signal Flare] in the Southern Camp
    .complete 25841,2 --Attack on Southern Frostmane Retreat (1)
    .use 56048
step
    #optional
    #requires Builders
--XXREQ Placeholder invis step until multiple requires per step
step
    #questguide
    #optional
    #requires Warriors
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade|r and |cRXP_FRIENDLY_Slamp Wobblecog|r
.
    .turnin 28868 >>Turn in The View from Down Here
    .goto 27,62.546,53.807
	.target +Snevik the Blade
    .turnin 25840 >>Turn in Eliminate the Resistance
    .turnin 25841 >>Turn in Strike From Above
    .accept 25882 >>Accept A Hand at the Ranch
    .goto 27,62.505,53.708
	.target +Slamp Wobblecog
step
    #requires Warriors
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade|r and |cRXP_FRIENDLY_Slamp Wobblecog|r
.
    .turnin 28868 >>Turn in The View from Down Here
    .goto 27,62.546,53.807
	.target +Snevik the Blade
    .turnin 25840 >>Turn in Eliminate the Resistance
    .turnin 25841 >>Turn in Strike From Above
    .goto 27,62.505,53.708
	.target +Slamp Wobblecog
--XX not polished from here onward
step
    #completewith next
    .hs >> Hearth to |cRXP_WARN_Thunderbrew Distillery|r.
step
    .isQuestTurnedIn 32663
    #completewith next
    .vendor 1247 >>|cRXP_WARN_Sell as much as you can|r.
step
    .goto 27,54.26,50.27,10,0
    .goto 27,53.80,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan|r |cRXP_WARN_outside the Inn|r
.
    .fly Ironforge >>Fly to Ironforge
	.target Brolan
step << Gnome/Dwarf/DarkIronDwarf
    .goto 87,51.92,29.47,10,0
    .goto 87,49.56,28.05,10,0
	.goto 87,51.54,26.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r.
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
	.target Golnir Bouldertoe
step << Gnome/Dwarf/DarkIronDwarf
    .goto 87,55.52,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r.
    .turnin 6388 >>Turn in Gryth Thurden
	.target Gryth Thurden
step
    #completewith next
    .goto 87,57.97,34.68,15,0
    .goto 87,62.84,29.74,20,0
    .goto 87,69.95,33.94,10,0
    .goto 87,71.37,45.83,15,0
    .goto 87,76.7,51.3,10,0
    .goto 499,66.61,34.72,250,0
    .goto 499,42.46,13.03
    .zone 84 >>Take the Deeprun Tram |cRXP_WARN_to Stormwind|r.
    >>|cRXP_WARN_You might have to wait for the train to arrive at the station|r.
    .nodmf
step
    .goto 84,64.97,34.53,10,0
    .goto 84,62.18,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step
    .goto 84,70.0,47.24,20,0
    .goto 84,68.54,51.37,20,0
    .goto 84,69.03,52.98,15,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,63.81,73.53,25,0
    .goto 84,63.78,73.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r.
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
    .nodmf
    .isOnQuest 46727
step
    .goto 84,67.45,80.52,25,0
    .goto 84,67.1,83.44,25,0
    .goto 84,69.69,84.78,25,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r in |cRXP_WARN_Goldshire|r
.
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
    .nodmf
    .isOnQuest 46727
step
    #veteran
    .goto 87,26.02,72.35,5,0
    .goto 87,25.75,75.45
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r. You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this|r. If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases|r. However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items|r.
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Lympkin|r.
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .dmf
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost|r.
    .dmf
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions|r.
    .dmf
step
    #label DarkMoonFaire
    .goto 87,38.34,71.30,10,0
    .goto 87,44.67,58.81,20,0
    .goto 84,25.83,69.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r.
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
    .dmf
step
    .goto 87,38.34,71.30,10,0
    .goto 87,44.67,58.81,20,0
    .goto 87,51.54,26.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step
    .goto 87,51.54,26.30
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r.
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
    .dmf
]])
