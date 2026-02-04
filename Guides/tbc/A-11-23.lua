if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance !Warlock
#name 12-14 Darkshore
#displayname 10-14 Darkshore << Dwarf Hunter
#displayname 11-14 Darkshore << !Human
#subgroup RestedXP Alliance 1-20
#defaultfor !Draenei !Warlock
#next 14-20 Bloodmyst

step << !NightElf
    #optional
    .abandon 6392 >> Abandon Return to Brock. You won't turn this in
step << !NightElf
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r on the bottom floor of the barracks
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from him|r << Hunter
    .vendor 1448 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if it's up)|r
	.target Neal Allen
    .money <0.08 << !Hunter
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r inside
    .vendor 1453 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock for the boat to Auberdine
    .zoneskip Darkshore
step << !NightElf
    #optional
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the following items:|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore|r
    .zone Darkshore >> Take the boat to Darkshore
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Take the boat to Darkshore
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_from him|r
    .turnin 6342 >> Turn in Flight to Auberdine << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Travel up stairs toward |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r upstairs
    .accept 983 >> Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
    .xp <11,1
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r and |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r |cRXP_ENEMY_Foreststrider Fledglings|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    #optional
    #completewith DarkshoreEnd
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Send your pet to attack a |cRXP_ENEMY_Thistle Bear|r. Once your pet is stunned by the |cRXP_ENEMY_Thistle Bear|r, abandon your pet and start taming it|r
    .train 2981 >> |cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
    .target Thistle Bear
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    >>|cRXP_WARN_You may need to go in the water for them|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_Beached Sea Creature|r. Loot it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It can be used from any range as long as you have one targeted|r
    >>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Run toward the edge of the Furbolg Camp
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
#optional
    .xp 10+6760 >> Grind to 6760+/7600xp
step
    #label Auber1
    #completewith next
    .subzone 442 >> Travel to Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
step
#optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
#optional
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_Beached Sea Creature|r. Loot it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439,32.432,43.744,15 >> Travel to the end of the dock, then jump into the water
step
    .goto 1439,31.841,46.304
    >>Open the |cRXP_PICK_Skeletal Sea Turtle|r. Loot it for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !Dwarf/!Hunter
    .xp 12
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .target Terenthis
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 954 >> Accept Bashal'Aran
    .accept 958 >> Accept Tools of the Highborne
    .target Thundris Windweaver
step
    #optional
    #completewith HSAuber
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r and |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r |cRXP_ENEMY_Foreststrider Fledglings|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_Enter the Moonkin Cave|r
    .cast 18974 >> |cRXP_WARN_Use the|r |T132857:0|t[Cenarion Moondust] |cRXP_WARN_at the |cRXP_PICK_Moonkin Stone|r inside the cave to summon|r |cRXP_ENEMY_Lunaclaw|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >> Kill |cRXP_ENEMY_Lunaclaw|r. Talk to the |cRXP_FRIENDLY_Lunaclaw Spirit|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Travel up to the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Kill |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Deth'ryll Satyrs|r for now|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_They do not have dynamic respawns. Skip this step if you can't find any|r |cRXP_ENEMY_Deth'ryll Satyrs|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isOnQuest 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
    #optional
    .abandon 956 >> Abandon Bashal'Aran
step << !Draenei
    .goto 1439,53.4,28.8,0
    .goto 1439,54.8,22.8,0
    .goto 1439,44.6,24.8,0
    .goto 1439,49.8,32.8,0
    #completewith HSAuber
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    >>|cRXP_WARN_If you run out of |cRXP_ENEMY_Rabid Thistle Bears| to kill, skip this step. You will complete it later|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .zoneskip Darkshore,1 << Druid
step << !Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Fly to Rut'theran Village
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    .isQuestComplete 6001
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Turn in Body and Heart
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step
    #label HSAuber
    .hs >> Hearth to Auberdine
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Buy|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him until you have|r |T134059:0|t[Mild Spices] |cRXP_BUY_equal or more than the amount of|r |T132832:0|t[Small Eggs] |cRXP_BUY_that you currently have|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestAvailable 2178
step
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Travel toward the |cRXP_PICK_Campfire|r on the ground|r
    +|cRXP_WARN_Start|r |T133971:0|t[Cooking] |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached at least level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_ until you run out of|r |T132832:0|t[Small Eggs] << !sod
    >>|cRXP_WARN_There is a quest in Duskwood later requiring your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50 or higher. You can also cook this when you get on the boat soon|r << !sod
    .skill cooking,50,1
    .skill cooking,<1,1 -- shows if cooking is >1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .isQuestComplete 4762
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    #completewith FinalAuber
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r and |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r |cRXP_ENEMY_Foreststrider Fledglings|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    .goto 1439,47.314,48.676
    >>Travel up to the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << !Dwarf/!Hunter
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can agro together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawn locations in Ameth'Aran|r
    >>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her. Skip this step if you can't find her|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .isOnQuest 963
step
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    .goto 1439,42.652,63.145
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step
    .goto 1439,42.373,61.815
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    .goto Darkshore,43.30,58.70
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #sticky
    #label bears1A
    #loop
    .goto Darkshore,39.03,67.32,0
    .goto Darkshore,42.54,67.76,0
    .goto Darkshore,39.99,78.46,0
    .goto Darkshore,39.03,67.32,70,0
    .goto Darkshore,42.54,67.76,70,0
    .goto Darkshore,39.99,78.46,70,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r in southern Darkshore
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces all health regeneration by 50% for 10 minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step << Draenei
    .goto 1439/1,579.500,5240.300
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >>Accept Beached Sea Creature
step
    #requires bears1A
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith DarkshoreEnd
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 442 -- auberdine
    .subzoneskip 446 -- bashal'aran
step << !Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .target Asterion
step
    #label FinalAuber
    #completewith DarkshoreEnd
    .subzone 442 >> Travel to Auberdine
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
    .target Thundris Windweaver
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle

    --TODO: ADD ids for all the other turn ins (survival guide)
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4722
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >> Take the boat to Azuremyst Isle
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Draenei
	#label DarkshoreEnd
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Take the boat to Azuremyst Isle
step << Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .target Asterion
step << Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei
    .hs >> Hearth to Bloodmyst Isle
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance
#name 14-20 Bloodmyst
#subgroup RestedXP Alliance 1-20
#defaultfor !Draenei
#next 20-21 Darkshore << !Warlock
#next 20-23 Darkshore/Ashenvale << Warlock

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalannius|r
    .trainer >> Train your class spells
    .target Shalannius
step
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Enter The Exodar through the back ramp
step << Warrior/Paladin/Hunter/Rogue
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor << Warrior
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Handiir|r on the top floor << Paladin/Hunter/Rogue
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .trainer >> Train your class spells
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Train 2h Swords << Paladin/Warrior
    .train 199 >> Train 2h Maces << Paladin/Warrior
    .train 198 >> Train 1h Maces << Rogue
    .train 201 >> Train 1h Swords << Rogue
    .train 5011 >> Train Crossbows << Hunter
    .target Handiir
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vord|r
	.trainer >> Train your class spells
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ganaar|r
	.train 4188 >> Train |T136112:0|t[Great Stamina]
    .train 24549 >> Train |T136094:0|t[Natural Armor]
    .target Ganaar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Train your class spells
    .target Sulaa
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izmir|r
    .trainer >> Train your class spells
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .trainer >> Train your class spells
    .target Edirah
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Bloodmyst Isle shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T134082:0|t[Irradiated Crystal Shards]
    .collect 23984,10
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .isQuestAvailable 9641
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Exit The Exodar
    .zoneskip The Exodar,1
step << !Draenei
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >> Get the The Exodar flight path
    .target Stephanos
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel north to Bloodmyst Isle
    >>|cRXP_WARN_As you quest through Bloodmyst Isle, remember to keep 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you will need it for a class quest around level 24|r << Paladin !Draenei
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept The Kessel Run
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Travel north to Blood Watch
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    >>|cRXP_WARN_If you become dismounted, abandon the quest "The Kessel Run"|r
step
    #optional
    #completewith next
    .subzone 3584 >> Travel to Blood Watch
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9646 >> Accept WANTED: Deathclaw
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Set your Hearthstone to Blood Watch
    .subzoneskip 3584,1
    .bindlocation 3584
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >> Accept Know Thine Enemy
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >> Accept The Bear Necessities
    .accept 9643 >> Accept Constrictor Vines
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Accept Maatparm Mushroom Menagerie
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >> Accept Explorers' League, Is That Something for Gnomes?
    .target Prospector Nachlan
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .accept 9641 >> Accept Irradiated Crystal Shards
	.turnin 9641 >> Turn in Irradiated Crystal Shards
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >> Accept Irradiated Crystal Shards
    .target Vindicator Boros
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >> Accept What Argus Means to Me
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Accept Learning from the Crystals
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Turn in What Argus Means to Me
    .accept 9694 >> Accept Blood Watch
step << Dwarf Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << Dwarf Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Turn in Blood Watch
    .accept 9779 >> Accept Intercepting the Message
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Accept Catch and Release
step
	#completewith RuinousPolyspore
	>>Loot a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These are all throughout Bloodmyst Isle|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Loot a |cRXP_LOOT_Fel Cone Fungus|r on the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tzerak|r. Loot him for |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r]
    .use 23900 >> |cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Accept Signs of the Legion
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Click the |cRXP_PICK_Nazzivus Monument Glyphs|r on the altar wall
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Kill |cRXP_ENEMY_Tzerak|r. Loot him for |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r]
    .use 23900 >> |cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_If you do not see him patrolling through the camps, wait for him to spawn at the purple sigil on the ground at the south. It can take 3-6 minutes for him to spawn|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Accept Signs of the Legion
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Kill |cRXP_ENEMY_Nazzivus Satyrs|r and |cRXP_ENEMY_Nazzivus Felsworns|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Nazzivus Rogues|r if you aren't seeing |cRXP_ENEMY_Satyrs|r or |cRXP_ENEMY_Felsworns|r to make them respawn|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Loot a |cRXP_LOOT_Fel Cone Fungus|r on the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger] |cRXP_WARN_on|r |cRXP_ENEMY_Blacksilt Scouts|r
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_Blacksilt Scouts|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	>>Kill |cRXP_ENEMY_Cruelfin|r. Loot him for the |T133339:0|t[|cRXP_LOOT_Red Crystal Pendant|r]
    .use 23870 >>|cRXP_WARN_Use the|r |T133339:0|t[|cRXP_LOOT_Red Crystal Pendant|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_Cruelfin|r |cRXP_WARN_patrols along the shoreline|r
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >> Accept Cruelfin's Necklace
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger] |cRXP_WARN_on|r |cRXP_ENEMY_Blacksilt Scouts|r
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_Blacksilt Scouts|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Impact Site Crystal|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Kill a |cRXP_ENEMY_Stinkhorn Striker|r. Loot it for the |cRXP_LOOT_Aquatic Stinkhorn|r
    >>|cRXP_WARN_You may also loot the |cRXP_LOOT_Aquatic Stinkhorn|r underwater|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #completewith next
    .subzone 3584 >> Travel to Blood Watch
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Turn in Cruelfin's Necklace
    .turnin 9629 >> Turn in Catch and Release
    .accept 9574 >> Accept Victims of Corruption
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Kill |cRXP_ENEMY_Corrupted Treants|r. Loot them for their |cRXP_LOOT_Crystallized Bark|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Turn in Victims of Corruption
    .accept 9578 >> Accept Searching for Galaen
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >> Turn in Signs of the Legion
    .turnin 9567 >> Turn in Know Thine Enemy
    .accept 9569 >> Accept Containing the Threat
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9567 >> Turn in Know Thine Enemy
    .accept 9569 >> Accept Containing the Threat
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .accept 9641 >> Accept Irradiated Crystal Shards
	.turnin 9641 >> Turn in Irradiated Crystal Shards
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >> Turn in Learning from the Crystals
    .accept 9620 >> Accept The Missing Survey Team
    .target Harbinger Mikolaas
step << !Dwarf/!Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << !Dwarf/!Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Turn in Blood Watch
    .accept 9779 >> Accept Intercepting the Message
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r. Loot them for the |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    #completewith next
    .subzone 3591 >> Travel to the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the dead |cRXP_FRIENDLY_Draenei Cartographer|r
    .turnin 9620 >> Turn in The Missing Survey Team
    .accept 9628 >> Accept Salvaging the Data
    .target Draenei Cartographer
step
	#completewith next
	>>Loot a |cRXP_LOOT_Ruinous Polyspore|r on the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Kill |cRXP_ENEMY_Wrathscale Marauders|r and |cRXP_ENEMY_Wrathscale Sorceresses|r. Loot them for the |cRXP_LOOT_Survey Data Crystal|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    #label RuinousPolyspore
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Loot a |cRXP_LOOT_Ruinous Polyspore|r on the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,58.6,55.0,0
    .goto Bloodmyst Isle,58.5,66.7,0
    .goto Bloodmyst Isle,50.2,72.5,0
    .goto Bloodmyst Isle,65.3,54.5,10,0
    .goto Bloodmyst Isle,62.5,53.0,10,0
    .goto Bloodmyst Isle,58.6,55.0,10,0
    .goto Bloodmyst Isle,62.8,59.8,10,0
    .goto Bloodmyst Isle,58.9,61.8,10,0
    .goto Bloodmyst Isle,58.5,66.7,10,0
    .goto Bloodmyst Isle,54.1,67.6,10,0
    .goto Bloodmyst Isle,48.5,66.7,10,0
    .goto Bloodmyst Isle,50.2,72.5,10,0
    .goto Bloodmyst Isle,53.5,75.7,10,0
	>>Loot a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith next
    .subzone 3598 >> Travel to Wyrmscar Island
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .accept 9687 >> Accept Restoring Sanctity
    .target Prince Toreth
step
    #completewith FlyExo
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >> Turn in Maatparm Mushroom Menagerie
    .accept 9649 >> Accept Ysera's Tears
    .target Maatparm
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9779 >> Turn in Intercepting the Message
    .accept 9696 >> Accept Translations...
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Interrogator Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >> Turn in Translations...
    .accept 9698 >> Accept Audience with the Prophet
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9628 >> Turn in Salvaging the Data
    .accept 9584 >> Accept The Second Sample
    .target Harbinger Mikolaas
step
    #label FlyExo
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fly to The Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Head down into The Exodar
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9698 >> Turn in Audience with the Prophet
    .accept 9699 >> Accept Truth or Fiction
step
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .accept 9699 >> Accept Truth or Fiction
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
	.isOnQuest 9699,9584,9643,9580,10063
    .hs >> Hearth to Blood Watch
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Fly to Blood Watch
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9699 >> Turn in Truth or Fiction
    .accept 9700 >> Accept I Shoot Magic Into the Darkness
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_at the|r |cRXP_PICK_Altered Bloodmyst Crystal|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9584 >> Turn in The Second Sample
    .accept 9585 >> Accept The Final Sample
    .target Harbinger Mikolaas
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Travel to Axxarien
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loot them for their |cRXP_LOOT_Thorny Constrictor Vines|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Kill any you see on the way to Axxarien|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Loot the |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Kill |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Axxarien Shadowstalkers|r and |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Axxarien Crystal|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Loot the |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Kill |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Axxarien Shadowstalkers|r and |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Kill |cRXP_ENEMY_Axxarien Shadowstalkers|r and |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Loot the |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loot them for their |cRXP_LOOT_Thorny Constrictor Vines|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Kill |cRXP_ENEMY_Deathclaw|r. Loot him for |cRXP_LOOT_Deathclaw's Paw|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 10063 >> Turn in Explorers' League, Is That Something for Gnomes?
    .accept 9548 >> Accept Pilfered Equipment
    .accept 9549 >> Accept Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if he doesn't have one|r
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Kill |cRXP_ENEMY_Blacksilt Seers|r. Loot them for their |cRXP_LOOT_Crude Murloc Idols|r
    >>Kill |cRXP_ENEMY_Blacksilt Warriors|r and |cRXP_ENEMY_Blacksilt Shorestrikers|r. Loot them for their |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Loot |cRXP_LOOT_Clopper's Equipment|r on the ground
    >>|cRXP_WARN_It can spawn in any of the murloc camps|r
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Kill |cRXP_ENEMY_Blacksilt Seers|r. Loot them for their |cRXP_LOOT_Crude Murloc Idols|r
    >>Kill |cRXP_ENEMY_Blacksilt Warriors|r and |cRXP_ENEMY_Blacksilt Shorestrikers|r. Loot them for their |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9548 >> Turn in Pilfered Equipment
    .turnin 9549 >> Turn in Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .use 23837 >>|cRXP_WARN_Use the|r |T134269:0|t[Weathered Treasure Map] |cRXP_WARN_to start the quest|r
    .accept 9550 >> Accept A Map to Where?
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Kill |cRXP_ENEMY_Void Anomalies|r and explore the Sun Portal Site
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loot them for their |cRXP_LOOT_Thorny Constrictor Vines|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Mutated Constrictors|r as you will have time later to finish the|r |cRXP_ENEMY_Elder Brown Bears|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Loot the |cRXP_LOOT_Dragon Bones|r on the ground
    >>|cRXP_WARN_These can be difficult to see and are normally found around the small camps|r
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Click the |cRXP_PICK_Battered Ancient Book|r on the ground
    .turnin 9550 >> Turn in A Map to Where?
    .accept 9557 >> Accept Deciphering the Book
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .turnin 9557 >> Turn in Deciphering the Book
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >> Turn in The Final Sample
    .accept 10064 >> Accept Talk to the Hand
    .turnin 9646 >> Turn in WANTED: Deathclaw
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .accept 9561 >> Accept Nolkai's Words
    .accept 9632 >> Accept Newfound Allies
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9700 >> Turn in I Shoot Magic Into the Darkness
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9703 >> Accept The Cryo-Core
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities
    .turnin 9643 >> Turn in Constrictor Vines
    .accept 9647 >> Accept Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9643 >> Turn in Constrictor Vines
    .accept 9647 >> Accept Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9569 >> Turn in Containing the Threat
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Accept The Missing Expedition
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >> Travel to The Cyro-Core
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Click on |cRXP_FRIENDLY_Galaen's Corpse|r
    >>|cRXP_WARN_Avoid trying to kill many |cRXP_ENEMY_Sunhawk Reclaimers|r if possible while getting to|r |cRXP_FRIENDLY_Galaen's Corpse|r
    .turnin 9578 >> Turn in Searching for Galaen
    .accept 9579 >> Accept Galaen's Fate
    .accept 9706 >> Accept Galaen's Journal - The Fate of Vindicator Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Kill |cRXP_ENEMY_Sunhawk Reclaimers|r. Loot them for |cRXP_LOOT_Galaen's Amulet|r and their |cRXP_LOOT_Medical Supplies|r
    >>You can also loot the |cRXP_LOOT_Medical Supplies|r on the ground
	>>|cRXP_WARN_Use the pillars and structures to LoS if needed to avoid their|r |T135812:0|t[Fireball] |cRXP_WARN_casts|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.isOnQuest 9580
	#completewith GFate
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >> Travel to Blood Watch
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Turn in Galaen's Fate
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9703 >> Turn in The Cryo-Core
    .turnin 9706 >> Turn in Galaen's Journal - The Fate of Vindicator Saruan
    .accept 9711 >> Accept Matis the Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9748 >> Accept Don't Drink the Water
    .accept 9753 >> Accept What We Know... << Draenei
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities
    .turnin 9647 >> Turn in Culling the Flutterers
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Turn in Culling the Flutterers
    .target Tracker Lyceon
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9753 >> Turn in What We Know...
    .accept 9756 >> Acccept What We Don't Know...
    .target Exarch Admetius
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>Talk to the |cRXP_ENEMY_Captured Sunhawk Agent|r inside the |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9756 >> Turn in What We Don't Know...
    .accept 9760 >> Accept Vindicator's Rest
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jorli|r and |cRXP_FRIENDLY_Scout Loryi|r
    .turnin 10064 >> Turn in Talk to the Hand
    .accept 10065 >> Accept Cutting a Path
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Accept Critters of the Void
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9760 >> Turn in Vindicator's Rest << Draenei
    .accept 10066 >> Accept Oh, the Tangled Webs They Weave
    .accept 10067 >> Accept Fouled Water Spirits
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>|cRXP_WARN_Use the|r |T134536:0|t[Flare Gun] |cRXP_WARN_on|r |cRXP_ENEMY_Matis the Cruel|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get agro as |cRXP_ENEMY_Matis the Cruel|r hits very hard|r
    >>|cRXP_ENEMY_Matis the Cruel|r |cRXP_WARN_patrols a large section of the road. His patrol path is marked on your map|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Kill |cRXP_ENEMY_Void Critters|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_Void Anomalies|r to trigger |cRXP_ENEMY_Void Critters|r to spawn|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Kill |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Kill |cRXP_ENEMY_Enraged Ravagers|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Kill |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for their |cRXP_LOOT_Elder Brown Bear Flank|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10066 >> Turn in Oh, the Tangled Webs They Weave
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10065 >> Turn in Cutting a Path
    .target Scout Jorli
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Kill |cRXP_ENEMY_Fouled Water Spirits|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10067 >> Turn in Fouled Water Spirits
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .accept 9670 >> Accept They're Alive! Maybe...
    .target Researcher Cornelius
step
	#completewith next
	>>Kill the |cRXP_ENEMY_Webbed Creatures|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Kill |cRXP_ENEMY_Myst Leechers|r, |cRXP_ENEMY_Myst Spinners|r and |cRXP_ENEMY_Zarakh|r atop Amberweb Pass
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Kill the |cRXP_ENEMY_Webbed Creatures|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .turnin 9670 >> Turn in They're Alive! Maybe...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Use the|r |T134870:0|t[Water Sample Flask] |cRXP_WARN_at the base of the waterfall|r
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step << Druid
    .isQuestAvailable 26,6121
	#completewith Lessons
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestAvailable 26,6121
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Fly to Rut'theran Village
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    .isQuestAvailable 26,6121
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    #label Lessons
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 26 >> Accept A Lesson to Learn
    .accept 6121 >> Accept Lessons Anew
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 6121 >> Turn in Lessons Anew
    .accept 6122 >> Accept The Principal Source
    .turnin 26 >> Turn in A Lesson to Learn
    .accept 29 >> Accept Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    #loop
    .goto Moonglade,54.2,55.6,0
    .goto Moonglade,53.1,48.4,60,0
    .goto Moonglade,54.2,55.6,60,0
    .goto Moonglade,60.5,58.5,60,0
    >>Open a |cRXP_PICK_Bauble Container|r in the lake. Loot it for the |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r]
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use the|r |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r] |cRXP_WARN_at the Shrine of Remulos tree|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Turn in Trial of the Lake
    .accept 272 >> Accept Trial of the Sea Lion
    .target Tajarri
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Hearth to Blood Watch
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Turn in The Missing Expedition
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >> Turn in Critters of the Void
    .turnin 9748 >> Turn in Don't Drink the Water
    .accept 9746 >> Accept Limits of Physical Exhaustion << Hunter/Shaman/Mage/Warlock
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >> Turn in Matis the Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities
    .turnin 9647 >> Turn in Culling the Flutterers
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Turn in Culling the Flutterers
    .target Tracker Lyceon
step
    #completewith next
    .subzone 3591 >> Travel to the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Click the |cRXP_PICK_Mound of Dirt|r on the ground
    .turnin 9561 >> Turn in Nolkai's Words
step
    #completewith next
    .subzone 3598 >> Travel to Wyrmscar Island
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9687 >> Turn in Restoring Sanctity
    .accept 9688 >> Accept Into the Dream
    .target Prince Toreth
step
	#completewith TurninRazormaw
	>>Loot |cRXP_LOOT_Ysera's Tears|r on the ground
    >>|cRXP_WARN_These look like small green mushrooms|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Kill |cRXP_ENEMY_Veridian Whelps|r and |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >> Turn in Into the Dream
    .accept 9689 >> Accept Razormaw
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Click the |cRXP_PICK_Ever-burning Pyre|r atop the mountain to summon |cRXP_ENEMY_Razormaw|r
    .timer 36,Razormaw RP
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Kill |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
    >>|cRXP_WARN_Remember to cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on yourself or a party member if required|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    #label TurninRazormaw
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9689 >> Turn in Razormaw
    .target Prince Toreth
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Loot |cRXP_LOOT_Ysera's Tears|r on the ground
    >>|cRXP_WARN_These look like small green mushrooms|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << Hunter/Shaman/Mage/Warlock
    .isOnQuest 9746
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Kill |cRXP_ENEMY_Sunhawk Pyromancers|r and |cRXP_ENEMY_Sunhawk Defenders|r
    >>|cRXP_WARN_Complete this only if you are less than 90% through level 19. It is important you hit level 20 before leaving Bloodmyst Isle|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp 19.95,1 -- Skips step if you are above 19.95%
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestComplete 9746
	.xp 20-2700
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestNotComplete 9746
    .xp 20-1350
step
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >> Turn in Ysera's Tears
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9746 >> Turn in Limits of Physical Exhaustion
    .target Vindicator Aesom
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .xp <20,1
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fly to The Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Mage/Hunter/Warrior/Priest
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Head down into The Exodar
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .trainer >> Train your class spells
    .target Behomat
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Train your class spells
    .target Sulaa
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .trainer >> Train your class spells
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >> Train |T135756:0|t[Teleport: Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Buy at least one|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vord|r
	.trainer >> Train your class spells
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Train your pet spells
    .target Ganaar
step << Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    >>|cRXP_WARN_Equip it later once you've trained Bows|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow]
    >>|cRXP_WARN_Equip it later once you've trained Bows|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
    .train 264,3
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him or check the Auction House for a better one|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Equip the|r |T135139:0|t[Burning Wand]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izmir|r
    .trainer >> Train your class spells
    .target Izmir
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    >>|cRXP_FRIENDLY_Huntress Kella Nightbow|r |cRXP_WARN_is located outside the back enterance of The Exodar|r
    .turnin 9632 >> Turn in Newfound Allies
    .accept 9633 >> Accept The Way to Auberdine
    .target Huntress Kella Nightbow
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine>>Fly to Darkshore
    .target Sindrayl
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Take the boat to Darkshore
step << !NightElf Hunter/!NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
step << !NightElf Hunter
    >>|cRXP_WARN_Go up the ramp to the right of|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Train your pet spells
    .target Silvaria
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 264 >> Train Bows
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow]
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #optional
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r underground
    .trainer >> Train your class spells
    .target Syurna
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword]|cRXP_BUY_. Equip it at level 21|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Fly to Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r downstairs
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Travel to the dock of the Menethil Harbor boat
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_You will now begin to travel to The Deadmines|r
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Durnad|r inside
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_WARN_Alternatively, you can check the Auction House soon for something better or cheaper|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Durnad|r inside
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him (if its up and you can afford it)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the|r |T135329:0|t[Executioner's Sword]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << !NightElf !Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Train |T135757:0|t[Teleport: Ironforge]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Enter |cRXP_FRIENDLY_Jubahl Corpseseeker|r's house
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets if you wish|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Jump off the end of the dock and swim to the waypoint
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use the character unstuck self service feature to skip to Ironforge. You will have to log off at the spot, then navigate to the help menu on another character (alternatively, paste the unstuck link below into your browser), then scroll down to self service. Click on your character and move. If you can't unstuck then skip this step and swim along the mountains to Westfall
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_Click here for video reference|r
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_Click here for the unstuck link for US servers|r
    .link https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_Click here for the unstuck link for EU servers|r
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> If the website unstuck is not available, swim to Westfall
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Run up the shore and make your way to Sentinel Hill
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Enter the Deeprun Tram
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Run to Stormwind
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Take the Deeprun Tram to Stormwind
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Train |T135763:0|t[Teleport: Stormwind]
	.xp <20,1
    .target Larimaine Purdue
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Make sure you train|r |T136058:0|t[Pick Lock] |cRXP_WARN_as you'll need it later|r
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .trainer >> Train your class spells
    .target Osborne the Night Man
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 1180 >> Train Daggers << Mage/Druid/Priest
    .train 202 >> Train 2h Swords << Warrior/Paladin/Hunter
    .target Woo Ping
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path << !Human
    .fly Westfall >> Fly to Westfall << Human/Dwarf Warrior/Gnome Warrior/Rogue/Warlock
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Travel to Westfall
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Grind |cRXP_ENEMY_Gnolls|r south of Sentinel Hill whilst assembling a Deadmines group|r
    .subzone 20 >>When your group has been assembled, travel to Moonbrook
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Enter the Defias Hideout with your group
step
.dungeon DM
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Red Silk Bandanas|r
    >>|cRXP_WARN_You can also complete this inside the Deadmines|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r and |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Exit the Deadmines via the back exit east of |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 214 >> Turn in Red Silk Bandanas
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Cast|r |T135763:0|t[Teleport: Stormwind]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r atop the Tower
    .train 2138 >> Train your class spells
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith DevourerofSouls
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Enter The Slaughtered Lamb. Go downstairs
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Train your class spells
    .target Ursula Deline
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
    .target Gakin the Darkbinder
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Travel to |cRXP_FRIENDLY_Duthorian Rall|r inside the Stormwind Cathedral
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19835 >> Train your class spells
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Travel toward |cRXP_FRIENDLY_High Priestess Laurena|r inside the Stormwind Cathedral
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r inside
    .train 8103 >> Train your class spells
    .target High Priestess Laurena
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 1856 >> Train your class spells
    .target Osborne the Night Man
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Travel toward |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Master Mathias Shaw|r inside SI:7 upstairs
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Accept Redridge Rendezvous
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Accept Mathias and the Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    #completewith RedridgeRendevous
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge Mountains >> Fly to Redridge Mountains
    .target Dungar Longdrink
step << !Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Exit Stormwind
step << !Human Rogue
.dungeon DM
    #optional
    .isOnQuest 2281,2360
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << !Human
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Turn in Redridge Rendevous
    .accept 2282 >> Accept Alther's Mill
    .target Lucius
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r inside upstairs
    .turnin 65 >> Turn in The Defias Brotherhood
	.target Wiley the Black
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >> Travel to Alther's Mill
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_You MUST do this for your|r |T132290:0|t[Poisons] |cRXP_WARN_quest later|r
    >>|cRXP_WARN_Stand on the waypoint location. Position your camera and cursor until you can click 3 |cRXP_PICK_Practice Lockboxes|r at once without having to move anything|r
    .skill lockpicking,80 >>|cRXP_WARN_Open the |cRXP_PICK_Practice Lockboxes|r on the ground in Alther's Mill until your|r |T136058:0|t[Lockpicking] skill is 80|r
step << Rogue
.dungeon DM
	.goto Redridge Mountains,52.05,44.69
    >>Open |cRXP_PICK_Lucius's Lockbox|r. Loot it for the |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step << Rogue
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Turn in Alther's Mill
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Sentinel Hill >> Fly to Westfall
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    >>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
    .target Agent Kearnen
step << Rogue
.dungeon DM
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
    >>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Malformed Defias Drone
step << Rogue
.dungeon DM
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
    .use 15396
    .itemcount 15396,1
step << Rogue
.dungeon DM
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
    >>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
    >>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
.dungeon DM
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Cast |T136225:0|t[Stoneform] to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .aura -9991
step << Rogue
.dungeon DM
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
.dungeon DM
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon DM
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .target Master Mathias Shaw
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jasper Fel|r on the ground floor of the building
    >>Buy reagents for crafting |T132273:0|t[|cRXP_FRIENDLY_Instant Poison|r] and |T132331:0|t[|cRXP_FRIENDLY_Vanish|r] from him
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
.dungeon DM
    >>Open your spellbook and find the |T136242:0|t[|cRXP_FRIENDLY_Poisons|r] skill from the general tab. Open it and craft 20 Instant Poisons. |cRXP_WARN_Remember to keep them applied to both your weapons during combat|r
    .collect 6947,20 --Instant Poison (20)
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
    .train 6192 >> Train your class spells
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .use 2874 >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
    .accept 373 >> Accept The Unsent Letter
    .turnin 373 >> Turn in The Unsent Letter
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r inside
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
    .trainer >> Train your class spells
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Turn in Underground Assault
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if its up)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >> Hearth to Darkshore
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Darkshore
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step << NightElf
.dungeon BFD
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step << !NightElf
.dungeon BFD
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r and |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r up stairs
    .accept 1199 >> Accept Twilight Falls
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Accept In Search of Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance !Warlock
#name 20-21 Darkshore
#subgroup RestedXP Alliance 20-32
#defaultfor !Draenei
#next 21-23 Ashenvale

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
step
    .goto Darkshore,37.219,44.227
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Turn in The Corruption Abroad
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Accept Researching the Corruption
    .target Gershala Nightwhisper
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 986 >> Accept A Lost Master
    .target Terenthis
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r upstairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Turn in The Way to Auberdine
    .accept 10752 >> Accept Onward to Ashenvale
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Accept Onward to Ashenvale
    .target Thundris Windweaver
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #optional
    #completewith MistVeil
    +|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Silver Dawning's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Silver Dawning's Lockbox|r inside|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Mist Veil's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Mist Veil's Lockbox|r inside|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #completewith BottomKey
    #optional
    >>Kill |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Swim out in the water|r
    >>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Agility|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunters|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage and they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>|cRXP_WARN_You can LoS (Line of Sight) the |cRXP_ENEMY_Greymist Oracles|r'|r  |T136048:0|t[Lightning Bolts] |cRXP_WARN_around the sunken ship to avoid taking its damage|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    .skipgossip
    .target The Threshwackonator 4100
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .target Gelkak Gyromast
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Travel to the Cliffspring River Cave
step << Druid
    .goto Darkshore,54.99,33.41
    >>|cRXP_WARN_Use the|r |T134776:0|t[Empty Cliffspring Falls Sampler] |cRXP_WARN_in the water at the entrance of the Cliffspring River Cave|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and a |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If there is not a |cRXP_LOOT_Death Cap|r at the end of the top side, drop down and get one from the southern room below|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stormscale Wave Riders|r cast|r |T135836:0|t[Aqua Jet] |cRXP_WARN_(Ranged Instant: Deals damage to nearby enemies and knocks them back) - make sure you're not in a position to get knocked off the upper level of the cave|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the |cRXP_PICK_Bonfire|r to summon|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>Kill |cRXP_ENEMY_Xabraxxis|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Hunter/Rogue
	#completewith FOTS
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20 << NightElf Hunter -- not going to Darn if already have a better bow
step
    #completewith FOTS
    .subzone 442 >> Travel to Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
    .target Terenthis
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Accept A Lost Master
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Turn in The Principal Source
    .target Alanndarian Nightsong
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
    .target Barithras Moonshade
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Turn in Beached Sea Turtle
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword]
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r underground
    .trainer >> Train your class spells
    .target Syurna
step << Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step << Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Fly to Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    #optional
    #completewith next
    .isOnQuest 1138
    >>Kill |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_Murkdeep|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_Greymist Hunter|r in the wave that he spawns with alive)|r
    >>Kill the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_Murkdeep|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_Greymist Coastrunners|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_Greymist Warriors|r, and Wave 3 has a level 19 |cRXP_ENEMY_Murkdeep|r and a level 16-17 |cRXP_ENEMY_Greymist Hunter|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .turnin -952 >> Turn in Grove of the Ancients << NightElf
    .target Onu
step
    .goto Darkshore,38.54,86.05,100 >> Travel to The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>|cRXP_WARN_This item has a very low drop chance and will most likely not drop. Skip this step once you've completed other objectives|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto Darkshore,38.54,86.05
    >>Discover The Master's Glaive
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Click the |cRXP_PICK_Scrying Bowl|r on the ground|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    .goto 1439,38.537,86.050
    >>Click the |cRXP_PICK_Twilight Tome|r on the northern pedestal
    .turnin 949 >> Turn in The Twilight Camp
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_This will begin an escort. Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_This will begin an escort. You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .accept 731,1 >> Accept The Absent Minded Prospector
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    .complete 731,1
    .target Prospector Remtravel
step
    #optional
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_Skip this step and abandon "Fruit of the Sea" if you are unlucky with the drop rates|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isOnQuest 993
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_This will begin an escort. Clear the |cRXP_ENEMY_Furbolgs|r near the cave before talking to him|r
    .turnin 993 >> Turn in A Lost Master
    .accept 994,1 >> Accept Escape Through Force
    .target Volcor
step
    .isQuestTurnedIn 993
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_This will begin an escort. Clear the |cRXP_ENEMY_Furbolgs|r near the cave before talking to him|r
    .accept 994,1 >> Accept Escape Through Force
    .target Volcor
step
    .isOnQuest 994
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escort |cRXP_FRIENDLY_Volcor|r
    >>After crossing the 3rd torch once exiting the cave, a |cRXP_ENEMY_Furlbog|r will spawn from both sides and attack |cRXP_FRIENDLY_Volcor|r
    >>Halfway to the road, a |cRXP_ENEMY_Furlbogs|r will spawn from both sides and attack |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .target Volcor
step
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance !Warlock
#name 21-23 Ashenvale
#subgroup RestedXP Alliance 20-32
#defaultfor !Draenei
#next 23-24 Wetlands

step
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    .accept 970 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Accept Bathran's Hair
	.target Orendil Broadleaf
step
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Enforcers|r and |cRXP_ENEMY_Dark Strand Excavators|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    >>|cRXP_WARN_Make sure you have|r |T134916:0|t[Track Herbs] |cRXP_WARN_enabled to see them on the minimap|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
step
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
	.target Delgren the Purifier
step
    .isQuestTurnedIn 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 973 >> Accept The Tower of Althalaxx
	.target Delgren the Purifier
step
    #optional
    #completewith TZS
    .subzone 415 >> Travel to Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Get the Astranaar Flight Path
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Accept The Zoram Strand
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin -10752 >> Turn in Onward to Ashenvale
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 24,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
step
.dungeon WC
    #completewith TravelRatchet
    +|cRXP_WARN_Begin looking for a Wailing Caverns group while you complete the next two steps. Very soon you'll be heading to The Barrens to run Wailing Caverns|r
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Travel to Ratchet in The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet Flight Path
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Travel to The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Accept Deviate Hides
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Accept Deviate Eradication
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r |cRXP_WARN_can spawn in a few locations|r
    >>|cRXP_WARN_This quest is completed OUTSIDE of Wailing Caverns|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Zone into The Wailing Caverns
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r and |cRXP_ENEMY_Lady Anacondra|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
    >>Escort the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns and complete the ritual of awakening
    >>Kill |cRXP_ENEMY_Mutanus the Devourer|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Accept The Glowing Shard
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Travel to Ratchet. You will turn in the quests above WC soon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Ascend the steep mountain above The Wailing Caverns. Follow the Arrow
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Turn in The Glowing Shard
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Turn in Deviate Hides
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Turn in Deviate Eradication
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Turn in Deviate Eradication
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Turn in Deviate Hides
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Hearth to Astranaar
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
    .subzoneskip 415
step
    .goto Ashenvale,46.37,46.38
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >> Travel to Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Turn in Culling the Threat
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Turn in Elune's Tear
    .timer 17,Elune's Tear RP
    .accept 1034 >> Accept The Ruins of Stardust
step
    .goto Ashenvale,33.30,67.79
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #completewith ToA973
    .goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
    .goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
    .isOnQuest 973
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 |cRXP_ENEMY_Voidwalkers|r. Stop this cast if you're able to|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Turn in Therylune's Escape
	.target Therysil
step
    #label ToA973
    .isQuestComplete 973
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Turn in The Tower of Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
	.turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Oracles|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_Begin looking for a Blackfathom Deeps group while you complete the next steps. Very soon you'll be running Blackfathom Deeps|r
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
    .isQuestComplete 1009
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Turn in Ruuzel
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Grind |cRXP_ENEMY_Naga|r while you assemble a group for BFD. Head to BFD once you have a group
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Travel to Blackfathom Deeps
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Kill |cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r and |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once inside the Instance|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
    >>|cRXP_WARN_See if anyone in your group can share the quest "Knowledge in the Deeps" from Ironforge with you|r
step
.dungeon BFD
    #completewith Kelris
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Open the |cRXP_PICK_Pitted Iron Chest|r underwater near the area with the turtles. Loot it for |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Turn in Search of Thaelrid
    .accept 1200 >> Accept Blackfathom Villainy
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
    .hs >> Hearth to Astranaar
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TZS2
    .subzone 415 >> Travel to Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Turn in Raene's Cleansing
    .target Raene Wolfrunner
step
    #optional
    #sticky
    .destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Turn in The Ruins of Stardust
step
    #label TZS2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Turn in The Zoram Strand
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fly to Darkshore
    .target Daelyshia
step
    #optional
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Turn in Researching the Corruption
    .target Gershala Nightwhisper
step
    .isOnQuest 994
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Turn in Escape Through Force
    .target Terenthis
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step << !Hunter !NightElf !Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step << NightElf/Hunter/Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    >>|cRXP_WARN_If you do not have the flight path yet for Teldrassil, take the boat from the dock there|r << !NightElf
	.target Caylais Moonfeather
step
.dungeon BFD
    .isOnQuest 1199,1200,741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .isOnQuest 1199,1200,741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step
    .isOnQuest 1199,1200,741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Accept The Absent Minded Prospector
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r up stairs
    .turnin 1199 >> Turn in Twilight Falls
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r up stairs
    .turnin 1200 >> Turn in Blackfathom Villainy
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Fly to Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (A)
<< Alliance Warlock
#name 20-23 Darkshore/Ashenvale
#subgroup RestedXP Alliance 20-32
#next 23-24 Wetlands

step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind>> Fly to Stormwind
    .target Shellei Brondir
step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Enter The Slaughtered Lamb. Go downstairs
step << Warlock
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    +Zone into The Stockades. You will now "Ghetto Hearth" to Darkshore
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>> Ghetto Hearth to Darkshore. To do this, enter The Stockades, then copy paste the link below into chat. Wait out the 1 minute countdown
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE
step
    .goto Darkshore,37.219,44.227
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Turn in The Way to Auberdine
    .accept 10752 >> Accept Onward to Ashenvale
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Accept Onward to Ashenvale
    .target Thundris Windweaver
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Turn in The Corruption Abroad
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Accept Researching the Corruption
    .target Gershala Nightwhisper
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_Murkdeep|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_Greymist Hunter|r in the wave that he spawns with alive)|r
    >>Kill the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_Murkdeep|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_Greymist Coastrunners|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_Greymist Warriors|r, and Wave 3 has a level 19 |cRXP_ENEMY_Murkdeep|r and a level 16-17 |cRXP_ENEMY_Greymist Hunter|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_This will begin an escort. You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .accept 731,1 >> Accept The Absent Minded Prospector
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    .complete 731,1
    .target Prospector Remtravel
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_This will begin an escort. Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .isOnQuest 10752,945,4740,731
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Accept Bathran's Hair
	.target Orendil Broadleaf
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    >>|cRXP_WARN_Make sure you have|r |T134916:0|t[Track Herbs] |cRXP_WARN_enabled to see them on the minimap|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Travel to Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Get the Astranaar Flight Path
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Accept The Zoram Strand
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin -10752 >> Turn in Onward to Ashenvale
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 24,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
step
    .goto Ashenvale,46.37,46.38
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Turn in Elune's Tear
    .timer 17,Elune's Tear RP
    .accept 1034 >> Accept The Ruins of Stardust
step
    .goto Ashenvale,33.30,67.79
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #optional
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
    .goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Turn in Therylune's Escape
	.target Therysil
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
	.turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Oracles|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_Begin looking for a Blackfathom Deeps group while you complete the next steps. Very soon you'll be running Blackfathom Deeps|r
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Turn in Ruuzel
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Grind |cRXP_ENEMY_Naga|r while you assemble a group for BFD. Head to BFD once you have a group
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Travel to Blackfathom Deeps
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Kill |cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r and |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once inside the Instance|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
    >>|cRXP_WARN_See if anyone in your group can share the quest "Knowledge in the Deeps" from Ironforge with you|r
step
.dungeon BFD
    #completewith Kelris
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Open the |cRXP_PICK_Pitted Iron Chest|r underwater near the area with the turtles. Loot it for |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Turn in Search of Thaelrid
    .accept 1200 >> Accept Blackfathom Villainy
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Hearth to Astranaar
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TRoS
    .subzone 415 >> Travel to Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Turn in Raene's Cleansing
    .accept 1025 >> Accept An Aggressive Defense
    .target Raene Wolfrunner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Turn in The Zoram Strand
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Turn in The Ruins of Stardust
step
    #optional
    #sticky
    .destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
    #loop
    .goto Ashenvale,50.08,59.94,0
    .goto Ashenvale,53.75,63.49,0
    .goto Ashenvale,54.17,61.69,0
    .goto Ashenvale,56.45,63.62,0
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,56.45,63.62,70,0
    >>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 1016 >> Accept Elemental Bracers
    .target Sentinel Velene Starstrike
step
    #loop
    .goto Ashenvale,44.78,70.07,0
    .goto Ashenvale,48.90,70.05,0
    .goto Ashenvale,51.28,70.51,0
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
    .use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
    .complete 1016,1 -- Divined Scroll
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1016 >> Turn in Elemental Bracers
    .accept 1017 >> Accept Mage Summoner
    .target Sentinel Velene Starstrike
step
    .isOnQuest 1017,1716,1025,4740,731
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Travel to The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Ascend Dreadmist Peak. Follow the Arrow to the top
step
    .goto The Barrens,48.22,19.15
    >>Kill |cRXP_ENEMY_Sarilus Foulborne|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only level 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
step
.dungeon !WC
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
.dungeon WC
    #completewith TroubleDocks
    +|cRXP_WARN_Begin looking for a Wailing Caverns group. You will shortly run Wailing Caverns|r
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >> Turn in Devourer of Souls
    .accept 1738 >> Accept Heartswood
    .target Takar the Seer
step << Warlock
.dungeon !WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet Flight Path
    .fly Astranaar>> Fly to Astranaar
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet Flight Path
    .target Bragok
step
.dungeon WC
    #label TroubleDocks
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Travel to The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Accept Deviate Hides
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Accept Deviate Eradication
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r |cRXP_WARN_can spawn in a few locations|r
    >>|cRXP_WARN_This quest is completed OUTSIDE of Wailing Caverns|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Zone into The Wailing Caverns
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r and |cRXP_ENEMY_Lady Anacondra|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
    >>Escort the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns and complete the ritual of awakening
    >>Kill |cRXP_ENEMY_Mutanus the Devourer|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Accept The Glowing Shard
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Travel to Ratchet. You will turn in the quests above WC soon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Ascend the steep mountain above The Wailing Caverns. Follow the Arrow
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Turn in The Glowing Shard
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Turn in Deviate Hides
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Turn in Deviate Eradication
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Turn in Deviate Eradication
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Turn in Deviate Hides
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Hearth to Astranaar
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >> Turn in An Aggressive Defense
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step << Warlock
    #completewith next
    .goto Ashenvale,31.50,31.50,40 >> Travel to The Ruins of Ordil'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>Loot the |cRXP_LOOT_Heartswood|r giant tree
    .complete 1738,1
step
    #completewith next
    .goto Ashenvale,40.1,53.1,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    >>|cRXP_WARN_Ensure you die on the east side of the |cRXP_ENEMY_Murloc|r lake so you are sent to Astranaar|r
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >> Turn in Mage Summoner
	>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[Light of Elune]
    >>|T134754:0|t[Light of Elune] |cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
    >>|cRXP_WARN_This is a ONE time use only. Use it in an emergency|r
    .target Sentinel Velene Starstrike
step
    #completewith FlyAuber
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
.dungeon !WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Turn in Culling the Threat
    .turnin 1025 >> Turn in An Aggressive Defense
    .target Raene Wolfrunner
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Turn in Culling the Threat
    .target Raene Wolfrunner
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fly to Darkshore
    .target Daelyshia
step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Turn in Researching the Corruption
    .target Gershala Nightwhisper
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Teldrassil
    .zoneskip Darnassus
step
    #optional
    #completewith next
    .isOnQuest 741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Accept The Absent Minded Prospector
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r up stairs
    .turnin 1199 >> Turn in Twilight Falls
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r up stairs
    .turnin 1200 >> Turn in Blackfathom Villainy
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Get the Rut'theran Village flight path
    .fly Auberdine >> Fly to Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
]])
