RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 12-14 Darkshore
#displayname 11-14 Darkshore << NightElf
#next 14-20 Bloodmyst Isle

step
#optional
    .isOnQuest 291
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Turn in The Reports
step << !NightElf !Draenei
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
    .xp <12,1
    .zoneskip Darkshore
    .zoneskip Wetlands
    .train 705,1 << Warlock-- shadowbolt r3
    .train 1766,1 << Rogue -- kick
    .train 1244,1 << Priest -- fortitude r2
    .train 145,1 << Mage -- fireball r3
    .train 19834,1 << Paladin -- blessing of might r2
    .train 14281,1 << Hunter -- arcane shot r2
    .train 7384,1 << Warrior -- overpower
step << Warlock
    .goto 1455/0,-857.000,-4840.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >>Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[Darkshore Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_to level your|r |T133971:0|t[Cooking] |cRXP_BUY_with later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the Dun Morogh -> Wetlands skip spot
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
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
    >>|cRXP_WARN_Watch the video guide for a reference on how to do the skip first!|r
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Wetlands Crocolisks|r and |cRXP_ENEMY_Murlocs|r when crossing the water|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Click here for a video guide|r
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .zoneskip Darkshore
step << !NightElf !Draenei
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samor Festivus|r upstairs
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Samor Festivus|r doesn't have any|r
    .target Samor Festivus
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Get the Wetlands flight path
    .target Shellei Brondir
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock for the boat to Auberdine
    .zoneskip Darkshore
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
    #optional
    .goto 1437,4.370,56.762
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore|r
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf !Draenei
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Take the boat to Darkshore
step << Gnome/Dwarf
    #optional
    #sticky
    .abandon 6392 >> Abandon Return to Brock. You won't turn this in
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
step << !Draenei !Warlock
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
    #label Auber1
    #completewith next
    .subzone 442 >> Travel to Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
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
    #completewith next
    .goto 1439,32.432,43.744,15 >> Travel to the end of the dock then jump into the water
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Loot the |cRXP_PICK_Skeletal Sea Turtle|r for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .xp 12
step
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
    #loop
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
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
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
#map Darkshore
    .goto Felwood,25.19,1.29
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323 << NightElf
step << NightElf
    #completewith bears1
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith bears1
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    >>|cRXP_WARN_Don't go out of your way to complete this quest now. You will finish it later|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> Travel to Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Kill |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r. Loot them for their |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Kill |cRXP_ENEMY_Deth'ryll Satyr|r. Loot them for the |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step << NightElf
    #completewith CliffspringRiverSample
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
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
    .skill cooking,<1,1 -- shows if cooking is >1

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

step << !Draenei !Warlock
    #completewith CliffspringRiverSample
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    >>|cRXP_WARN_Don't go out of your way to complete this quest now. You will finish it later|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Draenei !Warlock
#map Darkshore
    #optional
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
step << !Draenei !Warlock
    #label CliffspringRiverSample
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << !Draenei !Warlock
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
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
step << !Draenei !Warlock
    #label HSAuber
    .hs >> Hearth to Auberdine
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #label HSAuber << Draenei/Warlock
    #completewith ReturnAuber
    .subzone 442 >> Return to Auberdine
step << Draenei/Warlock
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .target Tharnariun Treetender
step << Draenei/Warlock
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine Moonwell|r
    .complete 4812,1
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Turtle << !Draenei !Warlock
    .turnin 4723 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine Moonwell|r
    .complete 4812,1
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
    .isQuestComplete 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .target Thundris Windweaver
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
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_until you run out of|r |T132832:0|t[Small Eggs] << !sod
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
    #label ReturnAuber
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .target Tharnariun Treetender
step << NightElf
    #completewith Ameth
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #optional
    #completewith FurbolgsComplete
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r and |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r |cRXP_ENEMY_Foreststrider Fledglings|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step
    .goto 1439,47.314,48.676
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can agro together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #completewith Ameth
    .goto Darkshore,40.30,59.70,70 >> Travel south toward |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r at Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Accept The Fall of Ameth'Aran
step
    #completewith TheLay
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne  
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran. She has a long respawn timer and if she isn't up right now, you may skip this step|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step << NightElf
    #completewith NEFangs
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #sticky
    #label bears1A
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r in southern Darkshore
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces all health regeneration by 50% for 10 minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step
    .goto 1439/1,579.500,5240.300
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >>Accept Beached Sea Creature
step
    #requires bears1A
    #label FurbolgsComplete
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
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step << !Draenei !Warlock
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,80 >> Return to Bashal'Aran
    .subzoneskip 446 -- bashal'aran
step << !Draenei !Warlock
    #label NEFangs
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .target Asterion
step << NightElf
    #loop
    .goto 1439,40.0,39.6,0
    .goto 1439,45.0,32.2,0
    .goto 1439,47.6,23.0,0
    .goto 1439,40.0,39.6,60,0
    .goto 1439,40.4,35.0,60,0
    .goto 1439,45.0,32.2,60,0
    .goto 1439,45.4,26.0,60,0
    .goto 1439,47.6,23.0,60,0
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step << NightElf
#map Darkshore
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
step
    #completewith DarkshoreEnd
    .subzone 442 >> Return to Auberdine
step << !Draenei !Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !Draenei !Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .target Terenthis
step << !Draenei !Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !Draenei !Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
    .target Thundris Windweaver
step << Draenei/Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4728 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step << Draenei/Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << Draenei/Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .target Terenthis
step << Draenei/Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << Draenei/Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
    .target Thundris Windweaver
step << !Draenei !Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4728 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step << !Draenei !Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    #sticky
    .abandon 963 >> Abandon For Love Eternal
step << !NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
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
step << Draenei/Warlock
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,80 >> Return to Bashal'Aran
    .subzoneskip 446 -- bashal'aran
step << Draenei/Warlock
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .target Asterion
step << Draenei/Warlock
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei/Warlock
    .hs >> Hearth to Exodar << Draenei
    .hs >> Hearth to Ironforge << Warlock
    .zoneskip The Exodar << Draenei
    .zoneskip Ironforge << Warlock
    .bindlocation 3557,1 << Draenei
    .bindlocation 1537,1 << Warlock
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore|r
    .zone Darkshore >> Take the boat to Darkshore
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto 1437,4.370,56.762
    .zone Darkshore >> Take the boat to Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >> Take the boat to Azuremyst Isle
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Bloodmyst Isle
step << !Draenei
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Take the boat to Azuremyst Isle
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 14-20 Bloodmyst Isle
#next 20-21 Darkshore

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalannius|r
    .trainer >> Train your class spells
    .target Shalannius
step << !Draenei
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Enter The Exodar through the back ramp
step << Warrior/Paladin/Hunter/Rogue/Shaman
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor << Warrior
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Handiir|r on the top floor << Paladin/Hunter/Rogue/Shaman
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .trainer >> Train your class spells
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue/Shaman
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Train 2h Swords << Paladin/Warrior
    .train 199 >> Train 2h Maces << Paladin/Warrior/Shaman
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
    >>|T135144:0|t[Greater Magic Wand] << Warlock/Priest/Mage
    .collect 23984,10,9641,1 -- Irradiated Crystal Shard (10)
    .collect 11288,1 << Warlock/Priest/Mage --Greater Magic Wand (1)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Exit The Exodar
    .zoneskip The Exodar,1
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >> Get the The Exodar flight path << !Draenei
    .fly Blood Watch >> Fly to Blood Watch << Draenei
    .target Stephanos
step << !Draenei
    #completewith next
    .subzone 3573 >> Travel to Odesyus' Landing
step << !Draenei
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    >>|cRXP_WARN_This quest will be gray. It is required to unlock a quest chain in Bloodmyst Isle|r
    .accept 9506 >> Accept A Small Start
    .target Admiral Odesyus
step << !Draenei
    .goto Azuremyst Isle,58.607,66.372
	>>Loot the |cRXP_LOOT_Nautical Map|r on the small cage
    >>|cRXP_WARN_Avoid wasting time killing the |cRXP_ENEMY_Goblins|r if you can|r
    .complete 9506,2 --Collect Nautical Map (x1)
step << !Draenei
    .goto Azuremyst Isle,59.578,67.648
	>>Loot the |cRXP_LOOT_Nautical Compass|r on the small box
    >>|cRXP_WARN_Avoid wasting time killing the |cRXP_ENEMY_Goblins|r if you can|r
    .complete 9506,1 --Collect Nautical Compass (x1)
step << !Draenei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    >>|cRXP_WARN_This quest will be gray. It is required to unlock a quest chain in Bloodmyst Isle|r
    .turnin 9506 >> Turn in A Small Start
    .target Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
step << !Draenei
    #completewith next
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel north to Bloodmyst Isle
step << !Draenei
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept The Kessel Run
    .target Kessel
step << !Draenei
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Travel north to Blood Watch
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    >>|cRXP_WARN_If you become dismounted, abandon the quest "The Kessel Run"|r
step << !Draenei
    #completewith SetHSBW
    .subzone 3584 >> Travel to Blood Watch
step
    .isQuestTurnedIn 9506 -- compass quest
	#completewith CatchandRelease
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Messenger Hermesius|r |cRXP_WARN_patrols throughout Blood Watch|r
    .accept 9671 >> Accept Urgent Delivery
    .turnin 9671 >> Turn in Urgent Delivery
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9646 >> Accept WANTED: Deathclaw
step
    #label SetHSBW
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Set your Hearthstone to Blood Watch
    .zoneskip Bloodmyst Isle,1
    .bindlocation 3584
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
step << !Draenei
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>> Get the Blood Watch flight path
    .subzoneskip 3584,1
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
step << !Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Accept Learning from the Crystals
    .target Harbinger Mikolaas
step << Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >> Turn in Learning from the Crystals
    .accept 9620 >> Accept The Missing Survey Team
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Turn in What Argus Means to Me
    .accept 9694 >> Accept Blood Watch
step
    #optional
    .isQuestTurnedIn 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .accept 9779 >> Accept Intercepting the Message
step
    #label CatchandRelease
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Accept Catch and Release
step
    .isQuestTurnedIn 9506 -- compass quest
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Messenger Hermesius|r |cRXP_WARN_patrols throughout Blood Watch|r
    .accept 9671 >> Accept Urgent Delivery
    .turnin 9671 >> Turn in Urgent Delivery
	.target Messenger Hermesius
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run
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
	>>Click the |cRXP_PICK_Nazzivus Monument Glyphs|r on the altar wall. Loot it for the |cRXP_LOOT_Nazzivus Monument Glyph|r
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
    .xp <15,1
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Turn in Victims of Corruption
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
step
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
step
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
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-4380 >>Grind until you are 4380xp away from level 16 (9220/13600+)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
    --3230 from quests at blood watch
    --1150 from velen turnin at exodar
step
    .goto 1950/1,5679.200,8434.200,30,0 -- arrow leading from naga camp
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
    #optional
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-1150 >>Grind until you are 1150xp away from level 16 (12450/13600+)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fly to The Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Head down into The Exodar
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
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izmir|r
    .trainer >> Train your class spells
    .target Izmir
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9698 >> Turn in Audience with the Prophet
    .accept 9699 >> Accept Truth or Fiction
step
    #optional
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
step << Warrior/Paladin/Rogue/Shaman
    #completewith next << Paladin/Hunter/Rogue/Shaman
    #completewith ClassTraining << Warrior
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Handiir|r on the top floor
step << Warrior/Paladin/Rogue/Shaman
    #optional
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Train 2h Swords << Paladin/Warrior
    .train 199 >> Train 2h Maces << Paladin/Warrior/Shaman
    .train 198 >> Train 1h Maces << Rogue
    .train 201 >> Train 1h Swords << Rogue
    .target Handiir
step << Warrior
    #label ClassTraining
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .trainer >> Train your class spells
    .target Behomat
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
step << Rogue
#ah
    #loop
    .goto The Exodar,73.625,84.814,0
    .goto The Exodar,69.945,90.749,0
    .goto The Exodar,73.625,84.814,10,0
    .goto The Exodar,69.945,90.749,10,0
    .goto The Exodar,63.363,58.999,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r and |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Depending how much money you have, buy any of the following items:|r
    >>|cRXP_WARN_2 x|r |T133052:0|t[Hammer] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_WARN_OR|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Scimitar] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Ideally run 2 x|r |T133052:0|t[Hammer]
    >>|cRXP_WARN_Alternatively, check the Auction House for better/cheaper weapons|r
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Rogue
#ssf
    #loop
    .goto The Exodar,73.625,84.814,0
    .goto The Exodar,69.945,90.749,0
    .goto The Exodar,73.625,84.814,10,0
    .goto The Exodar,69.945,90.749,10,0
    .goto The Exodar,63.363,58.999,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r and |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Depending how much money you have, buy any of the following items:|r
    >>|cRXP_WARN_2 x|r |T133052:0|t[Hammer] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_WARN_OR|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Scimitar] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Ideally run 2 x|r |T133052:0|t[Hammer]
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
step << Warrior/Paladin/Shaman
#ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from her or check the Auction House for a better/cheaper weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin/Shaman
#ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin/Shaman
    #optional
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
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
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .accept 9578 >> Accept Searching for Galaen
    .target Morae
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
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
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
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .subzoneskip 3584,1
    .xp <18,1
    .train 20288,1 -- seal of righteousness r3
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
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos tree|r
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
    .isQuestTurnedIn 9671 -- Urgent Delivery
    .goto Bloodmyst Isle,55.210,59.207
	>>Open your |cRXP_PICK_Mailbox|r. Loot |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r]
    .use 24132 >>|cRXP_WARN_Use|r |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >> Accept The Bloodcurse Legacy
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
    .accept 9746 >> Accept Limits of Physical Exhaustion
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

 -- skipping this section if they are already level 20
step
    #completewith next
    .subzone 3598 >> Travel to Wyrmscar Island
    .xp >20,1
step 
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .accept 9687 >> Accept Restoring Sanctity
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9687
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
    #completewith next
    .subzone 3598 >> Return to Wyrmscar Island
step
    .isOnQuest 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9687 >> Turn in Restoring Sanctity
    .target Prince Toreth
step
    .isQuestTurnedIn 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .accept 9688 >> Accept Into the Dream
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9688
    #completewith next
    >>Kill |cRXP_ENEMY_Veridian Whelps|r and |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9672 >> Turn in The Bloodcurse Legacy
    .accept 9674 >> Accept The Bloodcursed Naga
    .target Captain Edward Hanes
    .xp >20,1
step
    .isOnQuest 9674
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Kill |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .isOnQuest 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9674 >> Turn in The Bloodcursed Naga
    .target Captain Edward Hanes
step
    .isQuestTurnedIn 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .accept 9682 >> Accept The Hopeless Ones...
    .target Captain Edward Hanes
    .xp >20,1
step
    .isOnQuest 9682
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Kill |cRXP_ENEMY_Bloodcursed Voyagers|r. Loot them for their |cRXP_LOOT_Bloodcursed Souls|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .isOnQuest 9682
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9682 >> Turn in The Hopeless Ones...
    .target Captain Edward Hanes
step
    .isOnQuest 9649
    #sticky
    #label YserasTear
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .waypoint Bloodmyst Isle,76.8,21.5,35,0
    .waypoint Bloodmyst Isle,75.7,28.5,35,0
    .waypoint Bloodmyst Isle,71.5,28.6,35,0
    .waypoint Bloodmyst Isle,68.5,21.6,35,0
    .waypoint Bloodmyst Isle,70.6,16.5,35,0
    .waypoint Bloodmyst Isle,71.5,11.5,35,0
    .waypoint Bloodmyst Isle,75.1,8.4,35,0
    .waypoint Bloodmyst Isle,74.9,16.3,35,0
	>>Loot |cRXP_LOOT_Ysera's Tears|r on the ground
    >>|cRXP_WARN_These look like small green mushrooms|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .isOnQuest 9688
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
    .solo
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >> Turn in Into the Dream
    .target Prince Toreth
step
    .group
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >> Turn in Into the Dream
    .accept 9689 >> Accept Razormaw
    .target Prince Toreth
step
    .group
    .isQuestTurnedIn 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .accept 9689 >> Accept Razormaw
    .target Prince Toreth
step
    .group 3
    .isOnQuest 9689
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Click the |cRXP_PICK_Ever-burning Pyre|r atop the mountain to summon |cRXP_ENEMY_Razormaw|r
    .timer 36,Razormaw RP
step
    .group 3
    .isOnQuest 9689
    .goto Bloodmyst Isle,73.129,20.587
    >>Kill |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_He casts|r |T135805:0|t[Flame Breath] |cRXP_WARN_(Frontal cone) and|r |T132111:0|t[Terrifying Roar] |cRXP_WARN_(5 second duration fear)|r
    >>|cRXP_WARN_Do NOT attempt this quest unless you also have a healer in your group|r
    >>|cRXP_WARN_Remember to cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on yourself or a party member if required|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .group
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r
    .turnin 9689 >> Turn in Razormaw
    .target Prince Toreth
step
    #requires YserasTear
step
    #optional
    #sticky
    #label level20
	.xp 20-2700
step
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Kill |cRXP_ENEMY_Sunhawk Pyromancers|r and |cRXP_ENEMY_Sunhawk Defenders|r
    >>|cRXP_WARN_Skip this step if you are already level 20|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp >20,1
step
    #requires level20
step
    #completewith next
    .subzone 3584 >> Return to Blood Watch
step
    .isQuestComplete 9649
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
step
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .xp 20
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .xp <20,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fly to The Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step
    #optional
    #sticky
    .abandon 9746 >> Abandon Limits of Physical Exhaustion
step << NightElf Hunter/Shaman/Mage/Warrior/Priest
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
    .accept 9502 >> Accept Call of Water
    .trainer >> Train your class spells
    .target Sulaa  
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Farseer Nobundo|r up the ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r
    .turnin 9502 >> Turn in Call of Water
    .accept 9501 >> Accept Call of Water
    .target Farseer Nobundo
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
step << NightElf Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vord|r
	.trainer >> Train your class spells
    .target Vord
step << NightElf Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Train your pet spells
    .target Ganaar
step << NightElf Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    >>|cRXP_WARN_Equip it later once you've trained Bows|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow]
    >>|cRXP_WARN_Equip it later once you've trained Bows|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him or check the Auction House for a better/cheaper one|r 
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
step << Dwarf Warrior
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r |cRXP_BUY_from him or check the Auction House for a better/cheaper weapon|r
    .collect 926,1 -- Battle Axe (1)
    .money <0.8806
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.26
    .target Ven
step << Dwarf Warrior
    #optional
    .equip 16,926 >> |cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
step << Shaman
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from her or check the Auction House for a better/cheaper weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    .money <0.2871
step << Shaman
    #optional
    .equip 16,928 >> |cRXP_WARN_Equip the|r |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
step << Shaman
    .isOnQuest 9501
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Exit The Exodar
    .zoneskip The Exodar,1
step << Shaman
    .isOnQuest 9501
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Fly to Blood Watch
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >> Travel to the Hidden Reef
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r underwater
    .turnin 9501 >> Turn in Call of Water
    .accept 9503 >> Accept Call of Water
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Kill |cRXP_ENEMY_Fouled Water Spirits|r. Loot them for their |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r underwater
    .turnin 9503 >> Turn in Call of Water
    .accept 9504 >> Accept Call of Water
    .target Aqueous
step << Shaman
    .isOnQuest 9504
    .hs >> Hearth to Blood Watch
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step << Shaman
    #completewith next
    .subzone 3584 >> Return to Blood Watch
step << Shaman
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fly to The Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << NightElf Hunter/Mage/Warrior/Priest
    #completewith next
    .goto 1947/1,6179.200,6216.100,20 >> Exit The Exodar
    .zoneskip The Exodar,1
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
    .goto Moonglade,56.21,30.63
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
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << !NightElf Hunter
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Teldrassil
    .zoneskip Darnassus
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
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r and |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r up stairs
    .accept 1199 >> Accept Twilight Falls
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Accept In Search of Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
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
]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 20-21 Darkshore
#next 21-23 Ashenvale

step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind>> Fly to Stormwind
    .target Shellei Brondir
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Enter The Slaughtered Lamb. Go downstairs
step << Warlock
.dungeon !DM
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
    .target Gakin the Darkbinder
step << Warlock
.dungeon !DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    +Zone into The Stockades. You will now "Ghetto Hearth" to Darkshore
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>> Ghetto Hearth to Darkshore. To do this, enter The Stockades, then copy paste the link below into chat. Wait out the 1 minute countdown
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE

--Continued below is .dungeon DM only
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
    .train 201 >> Train 1h Swords << Mage/Warlock
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
    .fp Stormwind >> Get the Stormwind City flight path << NightElf/Draenei
    .fly Westfall >> Fly to Westfall << !NightElf !Draenei
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Travel to Westfall
step << NightElf/Draenei
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
step << NightElf/Draenei
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


--accepting BFD quests in Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
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
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Teldrassil,1

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
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
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
    .turnin 4762 >> Turn in The Cliffspring River << Draenei/Warlock
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Accept Onward to Ashenvale
    .turnin 4762 >> Turn in The Cliffspring River << Draenei/Warlock
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .isOnQuest 4763
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
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
    #loop
    .goto Darkshore,52.6,20.6,60,0
    .goto Darkshore,51.0,22.6,60,0
    .goto Darkshore,47.6,21.6,60,0
    .goto Darkshore,44.8,21.6,60,0
    .goto Darkshore,47.6,21.6,60,0
    .goto Darkshore,51.0,22.6,60,0
    .goto Darkshore,52.6,20.6,60,0
    >>Kill |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
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
    #optional
    #sticky
    .destroy 7442 >> Delete Gyromast's Key from your inventory
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
    .accept 6123 >> Accept Gathering the Cure
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
    #optional
    #sticky
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Druid
    .isOnQuest 6123
    #optional
    #sticky
    #label earthroot
    >>|cRXP_WARN_Collect 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herbalism] and rarely |cRXP_PICK_Battered Chests|r for a future class quest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Druid
    .isOnQuest 6123
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Loot |cRXP_LOOT_Lunar Fungi|r on the ground throughout caves
    .complete 6123,2
step << Druid
    .isOnQuest 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Turn in Gathering the Cure
    .accept 6124 >> Accept Curing the Sick
    .target Alanndarian Nightsong
step << Druid
    .isQuestTurnedIn 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6124 >> Accept Curing the Sick
    .target Alanndarian Nightsong
step << Druid
    .isOnQuest 6124
    .goto Darkshore,41.0,79.6
    .use 15826 >>|cRXP_WARN_Head south while using the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .target Sickly Deer
step
    #completewith next
    .goto 1439,35.429,76.566,120 >> Travel to southern Darkshore
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
    .accept 950 >> Accept Return to Onu
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
    .goto Ashenvale,13.97,4.10
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Click here for a video guide|r
step
    .goto Ashenvale,13.93,2.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
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
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Travel toward |cRXP_FRIENDLY_Volcor|r in the Cave
step
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isQuestTurnedIn 986
step
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Wait out the RP|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
	.target Kerlonian Evershade
    .accept 5321 >> Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Accept Bathran's Hair
	.target Orendil Broadleaf
step
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    .accept 970 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 21-23 Ashenvale
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Accept On Guard in Stonetalon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Accept Journey to Stonetalon Peak
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from him|r
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .money <1.1000
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Rogue
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him|r
	.collect 923,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .money <0.8000
step << Rogue
    #optional
    #sticky
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin -10752 >> Turn in Onward to Ashenvale
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner
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
    +|cRXP_WARN_Begin looking for a Wailing Caverns group while you complete the next step. Very soon you'll be heading to The Barrens to run Wailing Caverns|r
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
    .hs >> Hearth to Auberdine
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
.dungeon WC
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Astranaar >> Fly to Astranaar
	.target Caylais Moonfeather
    .zoneskip Ashenvale
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
step << Shaman
    #completewith next
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> |cRXP_WARN_Use the|r |T132825:0|t[Empty Bota Bag] |cRXP_WARN_at the Ruins of Stardust small fountain|r
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #optional
    .isQuestComplete 945
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Turn in Therylune's Escape
	.target Therysil
step
    #completewith next
    .goto 1440/1,238.100,3163.500,80 >>Travel toward |cRXP_FRIENDLY_Teronis' Corpse|r
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
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
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
.dungeon !BFD
    #completewith next
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Travel to Blackfathom Deeps. You will complete the quest outside the instance
    .subzoneskip 2797--BFD
step
.dungeon !BFD
    #loop
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334,25,0
    >>Kill |cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r and |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275

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
    .isOnQuest 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >> Turn in Curing the Sick
    .accept 6125 >> Accept Power over Poison
    .target Dendrite Starblaze
step << Druid
    .isQuestTurnedIn 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 6125 >> Accept Power over Poison
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
    .hs >> Hearth to Auberdine
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 442
    .bindlocation 442,1
step << !Druid
#optional
    .goto 1414/1,749.5636,4252.5334
    .zone Darkshore>> Ghetto Hearth to Darkshore. To do this, enter Blackfathom Deeps, then copy paste the link below into chat. Wait out the 1 minute countdown
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE
    .subzoneskip 2797,1 -- BFD (inside and outside instance)

step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
step
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Turn in Researching the Corruption
    .target Gershala Nightwhisper
step
    .isOnQuest 995
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Turn in Escape Through Stealth
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
step
    .goto Darkshore,36.62,45.59
    .target Gwennyth Bly'Leggonde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle
    .turnin 4733 >> Turn in Beached Sea Creature
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .trainer >> Train your class spells
    .target Syurna
step << Druid
    .goto Darnassus,34.768,7.374
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denatharion|r
    .trainer >> Train your class spells
    .target Denatharion
step << Druid
    .isOnQuest 6125
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r up stairs
    .turnin 6125 >> Turn in Power over Poison
step << Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
	.trainer >> Train your class spells
    .target Jocaste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r up stairs
    .turnin 1199 >> Turn in Twilight Falls
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r up stairs
    .turnin 1200 >> Turn in Blackfathom Villainy
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
step
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Accept The Absent Minded Prospector
step << Priest
    .goto Darnassus,37.901,82.742
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
	.trainer >> Train your class spells
    .target Jandria
step
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Astranaar >> Fly to Astranaar
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Astranaar >> Fly to Astranaar
	.target Caylais Moonfeather
    .zoneskip Darkshore,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Turn in The Zoram Strand
    .accept 1134 >> Accept Pridewings of Stonetalon
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Turn in Raene's Cleansing
    .accept 1025 >> Accept An Aggressive Defense
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

    
--Stonetalon section. skipping if 24 or not already in Stonetalon Mountains
step
    .goto Ashenvale,42.50,71.70
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    >>|cRXP_WARN_Skip the Stonetalon Mountains section if you are already level 24|r
    .xp >24,1
step
    #completewith wyv1
    >>Kill |cRXP_ENEMY_Young Pridewings|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
	.unitscan Young Pridewing
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
	.target Kaela Shadowspear
    .goto Stonetalon Mountains,59.899,66.844
    .turnin 1070 >> Turn in On Guard in Stonetalon
    .accept 1085 >> Accept On Guard in Stonetalon
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
	.target Gaxim Rustfizzle
    .goto Stonetalon Mountains,59.516,67.146
    .turnin 1085 >> Turn in On Guard in Stonetalon
    .accept 1071 >> Accept A Gnome's Respite
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
	.target Ziz Fizziks
    .goto Stonetalon Mountains,58.989,62.601
    .accept 1093 >> Accept Super Reaper 6000
    .zoneskip Stonetalon Mountains,1
step
    #sticky
    #label sr6000
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
    .complete 1093,1
    .unitscan Venture Co. Operator
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
	>>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1071,1
    .mob +Venture Co. Logger
    .complete 1071,2
    .mob +Venture Co. Deforester
    .zoneskip Stonetalon Mountains,1
step
    #requires sr6000
    .goto Stonetalon Mountains,58.989,62.601
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
	.target Ziz Fizziks
    .turnin 1093 >> Turn in Super Reaper 6000
	.accept 1094 >> Accept Further Instructions << Warlock
    .zoneskip Stonetalon Mountains,1
step
    #label wyv1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
	.goto Stonetalon Mountains,59.516,67.146
    .turnin 1071 >> Turn in A Gnome's Respite
    .accept 1072 >> Accept An Old Colleague
    .accept 1075 >> Accept A Scroll from Mauren
    .target Gaxim Rustfizzle
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,54.04,40.09,60,0
    .goto Stonetalon Mountains,53.26,36.83,40,0
    .goto Stonetalon Mountains,54.56,38.12
    >>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
    >>|cRXP_WARN_Skip this step if you are already level 24|r
    .xp >24,1
	.mob Pridewing Wyvern
	.mob Pridewing Consort
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
    #completewith next
    .goto Stonetalon Mountains,37.103,8.100,100 >> Travel to Stonetalon Peak
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,37.103,8.100
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
	.target Keeper Albagorm
    .turnin 1056 >> Turn in Journey to Stonetalon Peak
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
    .fp Stonetalon >> Get the Stonetalon Flight Path
	.fly Astranaar >> Fly to Astranaar << !Warlock
    .zoneskip Stonetalon Mountains,1
step << Warlock
.dungeon WC
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    >>|cRXP_WARN_Skip this step if you didn't do WC earlier|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
	.fly Ratchet >> Fly to Ratchet
    .zoneskip Stonetalon Mountains,1
step << Warlock
    .goto Stonetalon Mountains,75.466,91.422,0
    .goto Stonetalon Mountains,81.292,96.118,0
    .goto The Barrens,35.052,27.025
    .zone The Barrens >> Travel to The Barrens
    .zoneskip Stonetalon Mountains,1
step << Warlock
    #completewith next
    .goto The Barrens,40.358,24.780,150 >> |cRXP_WARN_FOLLOW THE ARROW TO AVOID |cRXP_ENEMY_BARRENS GUARDS|r!|r
    .zoneskip The Barrens,1
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >> Turn in Devourer of Souls
    .target Takar the Seer
    .accept 1738 >> Accept Heartswood
    .accept 65602 >> Accept What is Love?
step << Warlock
    #completewith RatchetFP
    .goto The Barrens,62.98,37.21,100 >> Travel to Ratchet
step << Warlock
    .isOnQuest 1094
    .goto The Barrens,62.984,37.218
    .target Sputtervalve
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >> Turn in Further Instructions
step << Warlock
    #label RatchetFP
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Astranaar >> Fly to Astranaar
    .target Bragok
    .zoneskip Ashenvale
step
    .isQuestComplete 1134
    .goto Ashenvale,34.67,48.83
    .target Shindrell Swiftfire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >> Turn in Pridewings of Stonetalon
step
    #sticky
    #optional
    .abandon 1134 >> Abandon Pridewings of Stonetalon
step
    #sticky
    #optional
    .abandon 1070 >> Abandon On Guard in Stonetalon
step
    #sticky
    #optional
    .abandon 1056 >> Abandon Journey to Stonetalon Peak
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,34.849,50.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
    >>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and|r |T135435:0|t[Simple Wood]
    >>|cRXP_WARN_You'll need this for your Incubus quest shortly|r
    .collect 4471,1 --Flint and Tinder (1)
    .collect 4470,1 --Simple Wood (1)
    .target Haljan Oakheart
step
    #optional
    #completewith next
    .goto 1440,34.786,44.885,20,0
    .goto 1440,34.869,43.443,30,0
    .goto 1440,38.023,38.727,60 >> Take the mountain shortcut toward the east entrance of Thistlefur Village
step
    #optional
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.31,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_WARN_He patrols around the northern parts of Thistlefur Village|r
    .complete 1054,1 --Dal Bloodclaw's Skull (1)
    .unitscan Dal Bloodclaw
step << Warlock
    .isOnQuest 1738
    #completewith next
    .goto Ashenvale,26.73,44.95,100,0
    .goto Ashenvale,31.50,31.50,40 >> Travel to The Ruins of Ordil'Aran
step << Warlock
    .isOnQuest 1738
    .goto Ashenvale,31.50,31.50
    >>Loot the |cRXP_LOOT_Heartswood|r giant tree
    .complete 1738,1
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,26.78,22.42
	>>Loot the |T135434:0|t[|cRXP_LOOT_Unlit Torch|r] on the table
	.collect 190307,1 --Collect Unlit Torch (x1)
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .use 190307 >> |cRXP_WARN_Use the|r |T135434:0|t[|cRXP_LOOT_Unlit Torch|r] |cRXP_WARN_to create a|r |T135432:0|t[|cRXP_LOOT_Burning Torch|r]
    >>|cRXP_WARN_If you are unable to do this here, head west to |cRXP_FRIENDLY_Talen|r and light it at the Campfire beside him|r
    .collect 190308,1 --Collect Burning Torch
    .usespell 818
    .skill cooking,<1,1 -- shows if cooking is >1
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    .use 190307 >>|cRXP_WARN_Head west to |cRXP_FRIENDLY_Talen|r and use the |T135434:0|t[|cRXP_LOOT_Unlit Torch|r] at the Campfire beside him to create a|r |T135432:0|t[|cRXP_LOOT_Burning Torch|r]
    .collect 190308,1 --Collect Burning Torch
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,160.600,3806.100
    .cast 367062 >> |cRXP_WARN_Use the|r |T135432:0|t[|cRXP_LOOT_Burning Torch|r] |cRXP_WARN_on the|r |cRXP_PICK_Archaeologist's Cart|r
    .use 190308 
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,183.700,3819.500,8,0
    .goto 1440/1,164.900,3826.200
    >>Head upstairs in the house and loot the |cRXP_PICK_Wooden Figurine|r on the table
    .complete 65602,1 --Wooden Figurine

step
    #completewith next
    >>Kill a few |cRXP_ENEMY_Foulweald Warriors|r and |cRXP_ENEMY_Foulweald Totemics|r before heading south toward the |cRXP_ENEMY_Water Elementals|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
    >>|cRXP_WARN_You will kill the rest after finishing the Elemental Bracers quest|r
    .complete 1025,4,5 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,50.08,59.94
    .complete 1025,3,4 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,50.08,59.94
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .disablecheckbox
    .complete 1025,1 -- Foulweald Den Watcher slain
    .disablecheckbox
    .mob Foulweald Ursa
    .mob Foulweald Den Watcher
step
    .goto Ashenvale,49.79,67.21    
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 1016 >> Accept Elemental Bracers
    .target Sentinel Velene Starstrike
step
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    .goto Ashenvale,48.90,70.05
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
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Foulweald Ursas|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
    >>The |cRXP_ENEMY_Foulweald Totemics|r share spawns with |cRXP_ENEMY_Foulweald Warriors|r. You may have to backtrack and kill respawns if you weren't lucky with the spawns
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
    #completewith next
    .goto 1440/1,-1922.800,2018.800,80,0
    .goto 1440/1,-2566.600,2647.400,80,0
    .goto 1440/1,-2857.300,2542.600,80,0
    .goto 1440/1,-3294.800,2797.000,80 >> |cRXP_WARN_Follow the arrow to get to Forest Song. You will run around |cRXP_ENEMY_Splintertree Post|r to ensure you don't run into any|r |cRXP_ENEMY_Splintertree Guards|r
    .subzoneskip 2358 -- forest song
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suralais Farwind|r
    .target Suralais Farwind
    .goto 1440/1,-3206.800,3003.000
    .fp Forest Song >>Get the Forest Song Flight Path
    .fly Astranaar >> Fly to Astranaar
    .zoneskip Ashenvale,1
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >>Turn in An Aggressive Defense
    .turnin 1054 >>Turn in Culling the Threat
    .target Raene Wolfrunner
step
    #label end
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Fly to Auberdine
    .target Daelyshia
    .zoneskip Ashenvale,1
step
    #completewith MeneBoat
    .goto 1439,32.432,43.744,15 >> Travel to the Auberdine Docks. Wait for the Menethil Harbor boat
    .zoneskip Wetlands
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .skill cooking,<1,1 -- shows if firstaid is >1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
    >>|cRXP_WARN_Level your|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill cooking,<1,1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill firstaid,<1,1
step
    #label MeneBoat
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor
]])