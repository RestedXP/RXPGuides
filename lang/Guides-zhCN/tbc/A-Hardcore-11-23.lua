if GetLocale() ~= "zhCN" then return end

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 12-14 黑海岸
#displayname 11-14 黑海岸 << NightElf
#next 14-20 Bloodmyst Isle

step << !NightElf !Draenei
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丁克|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >>训练你的职业技能
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
    .home >>将你的炉石设置为铁炉堡
    .target Innkeeper Firebrew
    .bindlocation 1537
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 交谈
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 交谈
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[Cooking]|cRXP_BUY_with later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking]|cRXP_WARN_for a quest in Darkshire later|r
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
    .zone Dun Morogh>>离开铁炉堡
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往暴风城大教堂内，与 the Dun Morogh -> Wetlands skip spot
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
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_湿地鳄鱼|r和 water|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Click here for a video guide|r
    .goto Wetlands,12.1,60.3,80 >>将炉石使用回米奈希尔港
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_BUY_购买一个|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_尼尔·奥雷|r 没有库存，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r 交谈
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r 没有库存，请跳过此步骤|r
    .target Samor Festivus
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷|r 交谈
    .fp Wetlands>>获取塞尔萨玛的飞行路径
    .target Shellei Brondir
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德温·晨光|r
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_德温·晨光|r 没有库存，请跳过此步骤|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往暴风城大教堂内，与 the dock for the boat to Auberdine
    .zoneskip Darkshore
step << !NightElf !Draenei
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
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
    >>如果船只刚到就登船，如果船只刚走就在码头等：
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
    >>如果船只刚到就登船，如果船只刚走就在码头等：
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
    后续在 暮色森林 的任务需要 50 点 [烹饪]
    >>|T133971:0|t[烹饪] 以下物品：
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
    后续在 暮色森林 的任务需要 50 点 [烹饪]
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
    后续在 暮色森林 的任务需要 50 点 [烹饪]
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
    .zone Darkshore >>乘船前往黑海岸
    >>在等待前往 Darkshore 的船时提升你的 [急救]
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf !Draenei
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>乘船前往黑海岸
step << Gnome/Dwarf
    #optional
    #sticky
    .abandon 6392 >>放弃任务。你不用完成这个任务
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>接受任务《物归己用》 钓鱼世家
    .turnin 1141 >>交任务《 前往熔光镇》 钓鱼世家
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #可选 << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r
    >>从他那里购买最多 20 个 [Longjaw Mud Snappers]
    .turnin 6342 >> Turn in Flight to Auberdine << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >>Travel up stairs toward |cRXP_FRIENDLY_维兹班恩·曲针|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 交谈
    .accept 983 >>接受任务《物归己用》 传声盒827号
    .target Wizbang Cranktoggle
step << !Draenei !Warlock
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shaussiy|r 交谈
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接受任务《物归己用》 瘟疫蔓延
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接受任务《物归己用》 熊怪的威胁
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接受任务《物归己用》 炖陆行鸟
    .turnin 2178 >>交任务《 前往熔光镇》 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接受任务《物归己用》 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r。拾取他们的 |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[Flee]|cRXP_WARN_at <30% health|r
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
    >>|cRXP_WARN_Send your pet to attack a |cRXP_ENEMY_蓟熊|r. Once your pet is stunned by the |cRXP_ENEMY_蓟熊|r, abandon your pet and start taming it|r
    .train 2981 >>用它攻击怪物以学习 [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
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
    >>击杀 |cRXP_ENEMY_小潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹幼崽|r。拾取他们的 |cRXP_LOOT_Crawler Legs|r
    >>你可能需要下水才能获得它们
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_搁浅的海洋生物|r.拾取地上的 it for the |cRXP_LOOT_Sea Creature Bones|r
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
    >>|cRXP_WARN_使用|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_狂暴蓟熊|r. It can be used from any range as long as you have one targeted|r
    >>==如果附近没有熊，请不要使用该任务物品==
    >>你可能会浪费陷阱，导致该任务无法完成！如果发生这种情况，你需要返回任务给予者那里再领取一个新的陷阱
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>朝着 Furbolg Camp 的边缘跑去
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #label Auber1
    #completewith next
    .subzone 442 >>前往 Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 ground
    .turnin 983 >>交任务《 前往熔光镇》 传声盒827号
    .accept 1001 >>接受任务《物归己用》 传声盒411号
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务《 前往熔光镇》 搁浅的巨兽
    .accept 4681 >>接受任务《物归己用》 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接受任务《物归己用》 永志不渝
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>前往码头尽头，然后跳入水中
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>击杀 |cRXP_ENEMY_黑海岸蛇颈龙|r。拾取他们的 |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>拾取散发绿光的 |cRXP_PICK_Skeletal Sea Turtle|r for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >>交任务《 前往熔光镇》 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
    .xp 12
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接受任务《物归己用》 红色水晶
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务《 前往熔光镇》 瘟疫蔓延
    .accept 2138 >>接受任务《物归己用》 清除疫病
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务《 前往熔光镇》 熊怪的威胁
    .accept 985 >>接受任务《物归己用》 熊怪的威胁
    .accept 4761 >>接受任务《物归己用》 桑迪斯·织风
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接受任务《物归己用》 炖陆行鸟
    .turnin 2178 >>交任务《 前往熔光镇》 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务《 前往熔光镇》 桑迪斯·织风
    .accept 4762 >>接受任务《物归己用》 壁泉河
    .accept 954 >>接受任务《物归己用》 巴莎兰
    .accept 958 >>接受任务《物归己用》 上层精灵的工具
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
    >>击杀 |cRXP_ENEMY_黑海岸蛇颈龙|r。拾取他们的 |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #optional
    #completewith HSAuber
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r。拾取他们的 |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[Flee]|cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4723 >>接受任务《物归己用》 搁浅的海洋生物
step
#map Darkshore
    .goto Felwood,25.19,1.29
    >>点击地上的 ground
    .turnin 1001 >>交任务《 前往熔光镇》 传声盒411号
    .accept 1002 >>接受任务《物归己用》 传声盒323号 << NightElf
step << NightElf
    #completewith bears1
    >>击杀 |cRXP_ENEMY_月夜猛虎|r 和 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取他们的 |cRXP_LOOT_毒牙|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith bears1
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>注意，如果你没有足够快地击杀它们，它们会施放 [Rabies] (瞬发普攻：10 分钟内使所有生命回复效果降低 50%)
    >>|cRXP_WARN_Don't go out of your way to complete this quest now. You will finish it later|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >>前往暴风城大教堂内，与 Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_野生劣魔|r和 |r
    .turnin 954 >>交任务《 前往熔光镇》 巴莎兰
    .accept 955 >>接受任务《物归己用》 巴莎兰
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>击杀 |cRXP_ENEMY_野生劣魔|r 和 |cRXP_ENEMY_恶灵劣魔|r。拾取他们的 |cRXP_LOOT_耳环|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务《 前往熔光镇》 巴莎兰
    .accept 956 >>接受任务《物归己用》 巴莎兰
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>击杀 for the |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务《 前往熔光镇》 巴莎兰
    .accept 957 >>接受任务《物归己用》 巴莎兰
    .target Asterion
step << NightElf
    #completewith CliffspringRiverSample
    >>击杀 |cRXP_ENEMY_月夜猛虎|r 和 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取他们的 |cRXP_LOOT_毒牙|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto 1439,47.314,48.676
    >>前往 |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_狂暴的月夜枭兽|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>击杀 for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>这些将用于稍后把你的 [烹饪] 提升到 10
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
    >>进入 Moonkin Cave
    .cast 18974 >>|cRXP_WARN_Use the|r |T132857:0|t[Cenarion Moondust] |cRXP_WARN_at the |cRXP_PICK_Moonkin Stone|r inside the cave to summon|r |cRXP_ENEMY_月爪枭兽|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >>击杀 the |cRXP_FRIENDLY_月爪枭兽的灵魂|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit

step << !Draenei !Warlock
    #completewith CliffspringRiverSample
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>注意，如果你没有足够快地击杀它们，它们会施放 [Rabies] (瞬发普攻：10 分钟内使所有生命回复效果降低 50%)
    >>|cRXP_WARN_Don't go out of your way to complete this quest now. You will finish it later|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Draenei !Warlock
#map Darkshore
    #optional
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>点击地上的 ground
    .turnin 1002 >>交任务《 前往熔光镇》 传声盒323号
step << !Draenei !Warlock
    #label CliffspringRiverSample
    .goto Darkshore,50.81,25.50
    .use 12350 >>在 Cliffspring River 的河岸使用 [Empty Sampling Tube]
    .complete 4762,1 --Cliffspring River Sample (1)
step << !Draenei !Warlock
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4727 >>接受任务《物归己用》 搁浅的海龟
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .skipgossip
    .fly Teldrassil >>飞往鲁瑟兰村，泰达希尔
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Druid
    .isQuestComplete 6001
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 6001 >>交任务《 前往熔光镇》 身心之力
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << !Draenei !Warlock
    #label HSAuber
    .hs >>Hearth to 奥伯丁，黑海岸
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #label HSAuber << Draenei/Warlock
    #completewith ReturnAuber
    .subzone 442 >>Return to 奥伯丁，黑海岸
step << Draenei/Warlock
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务《 前往熔光镇》 清除疫病
    .target Tharnariun Treetender
step << Draenei/Warlock
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务《 前往熔光镇》 红色水晶
    .accept 4812 >>接受任务《物归己用》 清洗水晶
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r 在 Auberdine 的月亮井使用[Empty Water Tube]|cRXP_WARN_at the Auberdine Moonwell|r
    .complete 4812,1
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4727 >>交任务《 前往熔光镇》 搁浅的海龟 << !Draenei !Warlock
    .turnin 4723 >>交任务《 前往熔光镇》 搁浅的海洋生物
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务《 前往熔光镇》 红色水晶
    .accept 4812 >>接受任务《物归己用》 清洗水晶
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r 在 Auberdine 的月亮井使用[Empty Water Tube]|cRXP_WARN_at the Auberdine Moonwell|r
    .complete 4812,1
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接受任务《物归己用》 炖陆行鸟
    .turnin 2178 >>交任务《 前往熔光镇》 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .isQuestComplete 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4762 >>交任务《 前往熔光镇》 壁泉河
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .vendor 6301 >>|cRXP_BUY_向他购买|r [Mild Spices] |cRXP_BUY_直到你拥有的|r [Mild Spices] |cRXP_BUY_数量大于或等于你当前拥有的|r [Small Eggs] |cRXP_BUY_数量|r
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
    >>|cRXP_WARN_朝地面上的 |cRXP_PICK_Campfire|r 前进|r
    |cRXP_WARN_开始|r |T133971:0|t[Cooking] |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached at least level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking]|cRXP_WARN_until you run out of|r 直到用完[Small Eggs] << !sod
    >>之后在 Duskwood 有一个任务需要你的 [Cooking] 达到 50 或更高。你也可以在即将乘船时继续烹饪这些 << !sod
    .skill cooking,50,1
    .skill cooking,<1,1 -- shows if cooking is >1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接受任务《物归己用》 炖陆行鸟
    .turnin 2178 >>交任务《 前往熔光镇》 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label ReturnAuber
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务《 前往熔光镇》 清除疫病
    .target Tharnariun Treetender
step << NightElf
    #completewith Ameth
    >>击杀 |cRXP_ENEMY_月夜猛虎|r 和 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取他们的 |cRXP_LOOT_毒牙|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #optional
    #completewith FurbolgsComplete
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r。拾取他们的 |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[Flee]|cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step
    .goto 1439,47.314,48.676
    >>点击 |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_狂暴的月夜枭兽|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can agro together|r
    .turnin 4812 >>交任务《 前往熔光镇》 清洗水晶
    .accept 4813 >>接受任务《物归己用》 水晶中的碎骨
step
    #completewith Ameth
    .goto Darkshore,40.30,59.70,70 >>Travel south toward |cRXP_FRIENDLY_哨兵坦莎·月刃|r at Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >>接受任务《物归己用》 亚米萨兰的毁灭
step
    #completewith TheLay
    >>击杀 for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_安娜雅·晨行者|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>击杀 |cRXP_ENEMY_被诅咒的上层精灵|r, |cRXP_ENEMY_痛苦的上层精灵|r 和 |cRXP_ENEMY_哀嚎的上层精灵鬼魂|r。拾取他们的 |cRXP_LOOT_圣物|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>点击地上的 |cRXP_PICK_亚米萨兰的毁灭|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>点击 |cRXP_PICK_Ancient Flame|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>点击地上的 |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>击杀 for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_安娜雅·晨行者|r |cRXP_WARN_patrols Ameth'Aran|r
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
    >>击杀 |cRXP_ENEMY_被诅咒的上层精灵|r, |cRXP_ENEMY_痛苦的上层精灵|r 和 |cRXP_ENEMY_哀嚎的上层精灵鬼魂|r。拾取他们的 |cRXP_LOOT_圣物|r
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
    >>击杀 for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_安娜雅·晨行者|r |cRXP_WARN_patrols Ameth'Aran. She has a long respawn timer and if she isn't up right now, you may skip this step|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务《 前往熔光镇》 亚米萨兰的毁灭
step << NightElf
    #completewith NEFangs
    >>击杀 |cRXP_ENEMY_月夜猛虎|r 和 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取他们的 |cRXP_LOOT_毒牙|r
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
    >>击杀
    >>|cRXP_WARN_Be careful as they cast|r 注意，如果你没有足够快地击杀它们，它们会施放[Rabies]|cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces all health regeneration by 50% for 10 minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4722 >>接受任务《物归己用》 搁浅的海龟
step
    .goto 1439/1,579.500,5240.300
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4728 >>接受任务《物归己用》 搁浅的海洋生物
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
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r
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
    >>击杀 |cRXP_ENEMY_森林陆行鸟|r 和 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取他们的 |cRXP_LOOT_Strider Meat|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >>交任务《 前往熔光镇》 巴莎兰
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
    >>击杀 |cRXP_ENEMY_月夜猛虎|r 和 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取他们的 |cRXP_LOOT_毒牙|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step << NightElf
#map Darkshore
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>点击地上的 ground
    .turnin 1002 >>交任务《 前往熔光镇》 传声盒323号
step
    #completewith DarkshoreEnd
    .subzone 442 >>Return to 奥伯丁，黑海岸
step << !Draenei !Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务《 前往熔光镇》 清除疫病
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !Draenei !Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 985 >>交任务《 前往熔光镇》 熊怪的威胁
    .target Terenthis
step << !Draenei !Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接受任务《物归己用》 炖陆行鸟
    .turnin 2178 >>交任务《 前往熔光镇》 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !Draenei !Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 958 >>交任务《 前往熔光镇》 上层精灵的工具
    .target Thundris Windweaver
step << Draenei/Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务《 前往熔光镇》 搁浅的海龟
    .turnin 4728 >>交任务《 前往熔光镇》 搁浅的海洋生物
    .target Gwennyth Bly'Leggonde
step << Draenei/Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >>交任务《 前往熔光镇》 永志不渝
    .target Cerellean Whiteclaw
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4813 >>交任务《 前往熔光镇》 水晶中的碎骨
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务《 前往熔光镇》 清除疫病
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << Draenei/Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 985 >>交任务《 前往熔光镇》 熊怪的威胁
    .target Terenthis
step << Draenei/Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接受任务《物归己用》 炖陆行鸟
    .turnin 2178 >>交任务《 前往熔光镇》 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << Draenei/Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 958 >>交任务《 前往熔光镇》 上层精灵的工具
    .target Thundris Windweaver
step << !Draenei !Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务《 前往熔光镇》 搁浅的海龟
    .turnin 4728 >>交任务《 前往熔光镇》 搁浅的海洋生物
    .target Gwennyth Bly'Leggonde
step << !Draenei !Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >>交任务《 前往熔光镇》 永志不渝
    .target Cerellean Whiteclaw
step
    #sticky
    .abandon 963 >> Abandon For Love Eternal
step << !NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往 Darkshore
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target Caylais Moonfeather
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塞尤娜|r underground
    .trainer >>训练你的职业技能
    .target Syurna
step << Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darnassus,1
step << Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Auberdine >>飞往奥伯丁，黑海岸
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >>交任务《 前往熔光镇》 巴莎兰
    .target Asterion
step << Draenei/Warlock
    .goto Darkshore,50.81,25.50
    .use 12350 >>在 Cliffspring River 的河岸使用 [Empty Sampling Tube]
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei/Warlock
    .hs >>Hearth to 埃索达 << Draenei
    .hs >>将炉石使用回铁炉堡 << Warlock
    .zoneskip The Exodar << Draenei
    .zoneskip Ironforge << Warlock
    .bindlocation 3557,1 << Draenei
    .bindlocation 1537,1 << Warlock
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业技能
    .target Briarthorn
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Wetlands>>飞往湿地
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    #optional
    .goto 1437,4.370,56.762
    >>在等待前往 Darkshore 的船时提升你的 [急救]
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto 1437,4.370,56.762
    .zone Darkshore >>乘船前往黑海岸
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r 在等待前往 Darkshore 的船时提升你的[First Aid]|cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Bloodmyst Isle
step << !Draenei
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 14-20 Bloodmyst Isle
#next 12-14 黑海岸

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙兰尤斯|r
    .trainer >>训练你的职业技能
    .target Shalannius
step << !Draenei
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>从后门进入埃索达
step << Warrior/Paladin/Hunter/Rogue/Shaman
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_贝霍玛特|ron the top floor << Warrior
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_韩迪尔|ron the top floor << Paladin/Hunter/Rogue/Shaman
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .trainer >>训练你的职业技能
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue/Shaman
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >> Train 2h Swords << Paladin/Warrior
    .train 199 >>学习双手锤 << Paladin/Warrior/Shaman
    .train 198 >>学习双手锤 << Rogue
    .train 201 >> Train 1h Swords << Rogue
    .train 5011 >> Train Crossbows << Hunter
    .target Handiir
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔德|r
	.trainer >>训练你的职业技能
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
	.train 4188 >> Train |T136112:0|t[Great Stamina]
    .train 24549 >> Train |T136094:0|t[Natural Armor]
    .target Ganaar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏兰|r
    .trainer >>训练你的职业技能
    .target Sulaa
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兹米尔|r
    .trainer >>训练你的职业技能
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊迪拉恩|r
    .trainer >>训练你的职业技能
    .target Edirah
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Bloodmyst Isle shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T134082:0|t[Irradiated Crystal Shards]
    >>|cRXP_BUY_或[Greater Magic Wand] << Warlock/Priest/Mage
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
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
    .zoneskip The Exodar,1
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fp Exodar >>获取塞尔萨玛的飞行路径 << !Draenei
    .fly Blood Watch >>飞往血环堡 << Draenei
    .target Stephanos
step << !Draenei
    #completewith next
    .subzone 3573 >>前往暴风城大教堂内，与 Odesyus' Landing
step << !Draenei
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    >>|cRXP_WARN_This quest will be gray. It is required to unlock a quest chain in Bloodmyst Isle|r
    .accept 9506 >>接受任务《物归己用》 第三类接触
    .target Admiral Odesyus
step << !Draenei
    .goto Azuremyst Isle,58.607,66.372
	>>拾取散发绿光的 |cRXP_LOOT_Nautical Map|r on the small cage
    >>|cRXP_WARN_Avoid wasting time killing the |cRXP_ENEMY_地精|r if you can|r
    .complete 9506,2 --Collect Nautical Map (x1)
step << !Draenei
    .goto Azuremyst Isle,59.578,67.648
	>>拾取散发绿光的 |cRXP_LOOT_Nautical Compass|r on the small box
    >>|cRXP_WARN_Avoid wasting time killing the |cRXP_ENEMY_地精|r if you can|r
    .complete 9506,1 --Collect Nautical Compass (x1)
step << !Draenei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    >>|cRXP_WARN_This quest will be gray. It is required to unlock a quest chain in Bloodmyst Isle|r
    .turnin 9506 >>交任务《 前往熔光镇》 第三类接触
    .target Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
step << !Draenei
    #completewith next
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel north to Bloodmyst Isle
step << !Draenei
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .accept 9663 >>接受任务《物归己用》 凯希尔的信使
    .target Kessel
step << !Draenei
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>前往血环堡
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    >>|cRXP_WARN_If you become dismounted, abandon the quest "The Kessel Run"|r
step << !Draenei
    #completewith SetHSBW
    .subzone 3584 >>前往血环堡
step
    .isQuestTurnedIn 9506 -- compass quest
	#completewith CatchandRelease
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使赫米修斯|r
    >>|cRXP_FRIENDLY_信使赫米修斯|r |cRXP_WARN_patrols throughout Blood Watch|r
    .accept 9671 >>接受任务《物归己用》 紧急信件
    .turnin 9671 >>交任务《 前往熔光镇》 紧急信件
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.252,59.121
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 9646 >>接受任务《物归己用》 通缉：死爪
step
    #label SetHSBW
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target Caregiver Topher Loaal
    .home >>将你的炉石设置为暮色森林 Watch
    .zoneskip Bloodmyst Isle,1
    .bindlocation 3584
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .accept 9567 >>接受任务《物归己用》 知己知彼
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .accept 9580 >>接受任务《物归己用》 猎熊
    .accept 9643 >>接受任务《物归己用》 荆棘巨藤
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target Maatparm
    .accept 9648 >>接受任务《物归己用》 玛特帕尔姆蘑菇展
step << !Draenei
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target Laando
    .fp Blood Watch>> Get the Blood Watch flight path
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘探者纳克兰|r
    .accept 10063 >>接受任务《物归己用》 探险者协会要为侏儒服务吗？
    .target Prospector Nachlan
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
	.turnin 9641 >>交任务《 前往熔光镇》 辐射水晶碎片
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
    .target Vindicator Boros
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .accept 9693 >>接受任务《物归己用》 阿古斯的意义
    .target Exarch Admetius
step << !Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .accept 9581 >>接受任务《物归己用》 研究水晶
    .target Harbinger Mikolaas
step << Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9581 >>交任务《 前往熔光镇》 研究水晶
    .accept 9620 >>接受任务《物归己用》 失踪的测量小组
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9693 >>交任务《 前往熔光镇》 阿古斯的意义
    .accept 9694 >>接受任务《物归己用》 秘血岗哨
step
    #optional
    .isQuestTurnedIn 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9779 >>接受任务《物归己用》 拦截情报
step
    #label CatchandRelease
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .target Morae
    .accept 9629 >>接受任务《物归己用》 研究鱼人
step
    .isQuestTurnedIn 9506 -- compass quest
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使赫米修斯|r
    >>|cRXP_FRIENDLY_信使赫米修斯|r |cRXP_WARN_patrols throughout Blood Watch|r
    .accept 9671 >>接受任务《物归己用》 紧急信件
    .turnin 9671 >>交任务《 前往熔光镇》 紧急信件
	.target Messenger Hermesius
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run
step
	#completewith RuinousPolyspore
	>>拾取地上的 a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These are all throughout Bloodmyst Isle|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>拾取地上的 a |cRXP_LOOT_Fel Cone Fungus|r on the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>击杀 for |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r]
    .use 23900 >>|cRXP_WARN_使用|r |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] |cRXP_WARN_to start the quest|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>接受任务《物归己用》 军团的徽记
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>点击地上的 |cRXP_PICK_Nazzivus Monument Glyphs|r on the altar wall. 拾取地上的 it for the |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>击杀 for |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r]
    .use 23900 >>|cRXP_WARN_使用|r |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_If you do not see him patrolling through the camps, wait for him to spawn at the purple sigil on the ground at the south. It can take 3-6 minutes for him to spawn|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>接受任务《物归己用》 军团的徽记
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
	>>击杀 |cRXP_ENEMY_纳兹维安萨特|r 和 |cRXP_ENEMY_纳兹维安魔誓者|r
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
	>>拾取地上的 a |cRXP_LOOT_Fel Cone Fungus|r on the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger] |cRXP_WARN_on|r |cRXP_ENEMY_黑沙斥候|r
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_黑沙斥候|r
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
	>>击杀 for the |T133339:0|t[|cRXP_LOOT_红色水晶坠饰|r]
    .use 23870 >>|cRXP_WARN_Use the|r |T133339:0|t[|cRXP_LOOT_红色水晶坠饰|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_克鲁芬|r |cRXP_WARN_patrols along the shoreline|r
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >>接受任务《物归己用》 克鲁芬的项链
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger] |cRXP_WARN_on|r |cRXP_ENEMY_黑沙斥候|r
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_黑沙斥候|r
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
    >>击杀 a |cRXP_ENEMY_臭角刺鱼|r.拾取地上的 it for the |cRXP_LOOT_Aquatic Stinkhorn|r
    >>|cRXP_WARN_You may also loot the |cRXP_LOOT_Aquatic Stinkhorn|r 对话|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #completewith next
    .subzone 3584 >>前往血环堡
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9576 >>交任务《 前往熔光镇》 克鲁芬的项链
    .turnin 9629 >>交任务《 前往熔光镇》 研究鱼人
    .accept 9574 >>接受任务《物归己用》 腐蚀的牺牲品
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>击杀 |cRXP_ENEMY_堕落的树人|r。拾取他们的 |cRXP_LOOT_Crystallized Bark|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9574 >>交任务《 前往熔光镇》 腐蚀的牺牲品
    .accept 9578 >>接受任务《物归己用》 搜寻加莱恩
    .target Morae
    .xp <15,1
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9574 >>交任务《 前往熔光镇》 腐蚀的牺牲品
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9594 >>交任务《 前往熔光镇》 军团的徽记
    .turnin 9567 >>交任务《 前往熔光镇》 知己知彼
    .accept 9569 >>接受任务《物归己用》 化解危机
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9567 >>交任务《 前往熔光镇》 知己知彼
    .accept 9569 >>接受任务《物归己用》 化解危机
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
	.turnin 9641 >>交任务《 前往熔光镇》 辐射水晶碎片
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9581 >>交任务《 前往熔光镇》 研究水晶
    .accept 9620 >>接受任务《物归己用》 失踪的测量小组
    .target Harbinger Mikolaas
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9694 >>交任务《 前往熔光镇》 秘血岗哨
    .accept 9779 >>接受任务《物归己用》 拦截情报
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 for the |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    #completewith next
    .subzone 3591 >>前往暴风城大教堂内，与 the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the dead |cRXP_FRIENDLY_德莱尼制图师|r
    .turnin 9620 >>交任务《 前往熔光镇》 失踪的测量小组
    .accept 9628 >>接受任务《物归己用》 夺回数据
    .target Draenei Cartographer
step
	#completewith next
	>>拾取地上的 a |cRXP_LOOT_Ruinous Polyspore|r on the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>击杀 拾取地上的 them for the |cRXP_LOOT_Survey Data Crystal|r
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
	>>拾取地上的 a |cRXP_LOOT_Ruinous Polyspore|r on the ground
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
	>>拾取地上的 a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-4380 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
    --3230 from quests at blood watch
    --1150 from velen turnin at exodar
step
    .goto 1950/1,5679.200,8434.200,30,0 -- arrow leading from naga camp
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .turnin 9648 >>交任务《 前往熔光镇》 玛特帕尔姆蘑菇展
    .accept 9649 >>接受任务《物归己用》 伊瑟拉之泪
    .target Maatparm
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9779 >>交任务《 前往熔光镇》 拦截情报
    .accept 9696 >>接受任务《物归己用》 翻译……
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
	.turnin 9641 >>交任务《 前往熔光镇》 辐射水晶碎片
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_审讯者埃莉西亚|r
    .target Interrogator Elysia
    .turnin 9696 >>交任务《 前往熔光镇》 翻译……
    .accept 9698 >>接受任务《物归己用》 会见先知
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9628 >>交任务《 前往熔光镇》 夺回数据
    .accept 9584 >>接受任务《物归己用》 第二份样本
    .target Harbinger Mikolaas
step
    #optional
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-1150 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>再次进入埃索达
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏兰|r
    .trainer >>训练你的职业技能
    .target Sulaa
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊迪拉恩|r
    .trainer >>训练你的职业技能
    .target Edirah
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兹米尔|r
    .trainer >>训练你的职业技能
    .target Izmir
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target Prophet Velen
    .turnin 9698 >>交任务《 前往熔光镇》 会见先知
    .accept 9699 >>接受任务《物归己用》 真相还是谎言
step
    #optional
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target Prophet Velen
    .accept 9699 >>接受任务《物归己用》 真相还是谎言
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step << Warrior/Paladin/Rogue/Shaman
    #completewith next << Paladin/Hunter/Rogue/Shaman
    #completewith ClassTraining << Warrior
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_韩迪尔|ron the top floor
step << Warrior/Paladin/Rogue/Shaman
    #optional
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >> Train 2h Swords << Paladin/Warrior
    .train 199 >>学习双手锤 << Paladin/Warrior/Shaman
    .train 198 >>学习双手锤 << Rogue
    .train 201 >> Train 1h Swords << Rogue
    .target Handiir
step << Warrior
    #label ClassTraining
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .trainer >>训练你的职业技能
    .target Behomat
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔德|r
	.trainer >>训练你的职业技能
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r 和 |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Depending how much money you have, buy any of the following items:|r
    >>|cRXP_WARN_2 x|r |T133052:0|t[Hammer] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_WARN_或者|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r 和 |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Depending how much money you have, buy any of the following items:|r
    >>|cRXP_WARN_2 x|r |T133052:0|t[Hammer] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_WARN_或者|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Scimitar] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Ideally run 2 x|r |T133052:0|t[Hammer]
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
step << Warrior/Paladin/Shaman
#ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from her or check the Auction House for a better/cheaper weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin/Shaman
#ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
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
    .hs >>前往血环堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Blood Watch >>飞往血环堡
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9699 >>交任务《 前往熔光镇》 真相还是谎言
    .accept 9700 >>接受任务《物归己用》 黑暗中的魔法
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
	.turnin 9641 >>交任务《 前往熔光镇》 辐射水晶碎片
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .accept 9578 >>接受任务《物归己用》 搜寻加莱恩
    .target Morae
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_at the|r |cRXP_PICK_Altered Bloodmyst Crystal|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9584 >>交任务《 前往熔光镇》 第二份样本
    .accept 9585 >>接受任务《物归己用》 最终的样本
    .target Harbinger Mikolaas
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >>前往暴风城大教堂内，与 Axxarien
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Kill any you see on the way to Axxarien|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>击杀 |cRXP_ENEMY_塞弗拉克斯|r, |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
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
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>击杀 |cRXP_ENEMY_塞弗拉克斯|r, |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
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
    >>击杀 |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
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
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>击杀 for |cRXP_LOOT_Deathclaw's Paw|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 10063 >>交任务《 前往熔光镇》 探险者协会要为侏儒服务吗？
    .accept 9548 >>接受任务《物归己用》 被偷走的设备
    .accept 9549 >>接受任务《物归己用》 黑沙神器
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .vendor >>|cRXP_BUY_购买一个|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if he doesn't have one|r
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>击杀 |cRXP_ENEMY_黑沙先知|r。拾取他们的 |cRXP_LOOT_Crude Murloc Idols|r
    >>击杀 |cRXP_ENEMY_黑沙战士|r 和 |cRXP_ENEMY_黑沙巡滩者|r。拾取他们的 |cRXP_LOOT_Crude Murloc Knives|r
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
    >>拾取地上的 |cRXP_LOOT_Clopper's Equipment|r on the ground
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
	>>击杀 |cRXP_ENEMY_黑沙先知|r。拾取他们的 |cRXP_LOOT_Crude Murloc Idols|r
    >>击杀 |cRXP_ENEMY_黑沙战士|r 和 |cRXP_ENEMY_黑沙巡滩者|r。拾取他们的 |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 9548 >>交任务《 前往熔光镇》 被偷走的设备
    .turnin 9549 >>交任务《 前往熔光镇》 黑沙神器
    .target Clopper Wizbang
step
    .use 23837 >>|cRXP_WARN_Use the|r |T134269:0|t[Weathered Treasure Map] |cRXP_WARN_to start the quest|r
    .accept 9550 >>接受任务《物归己用》 一张地图？
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>击杀 Sun Portal Site
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
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_变异的缠绕者|r as you will have time later to finish the|r |cRXP_ENEMY_老年棕熊|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    .goto Bloodmyst Isle,61.156,41.893
    >>点击地上的 |cRXP_PICK_Battered Ancient Book|r on the ground
    .turnin 9550 >>交任务《 前往熔光镇》 一张地图？
    .accept 9557 >>接受任务《物归己用》 破译书籍
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者菲索斯|r
    .turnin 9557 >>交任务《 前往熔光镇》 破译书籍
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9585 >>交任务《 前往熔光镇》 最终的样本
    .accept 10064 >>接受任务《物归己用》 阿古斯之手
    .turnin 9646 >>交任务《 前往熔光镇》 通缉：死爪
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者菲索斯|r
    .accept 9561 >>接受任务《物归己用》 诺尔凯的日记
    .accept 9632 >>接受任务《物归己用》 新的盟友
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9700 >>交任务《 前往熔光镇》 黑暗中的魔法
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .accept 9703 >>接受任务《物归己用》 冷却核心
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9643 >>交任务《 前往熔光镇》 荆棘巨藤
    .accept 9647 >>接受任务《物归己用》 消灭巨蛾
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9643 >>交任务《 前往熔光镇》 荆棘巨藤
    .accept 9647 >>接受任务《物归己用》 消灭巨蛾
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9569 >>交任务《 前往熔光镇》 化解危机
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿彻鲁斯|r
    .accept 9669 >>接受任务《物归己用》 覆灭的远征队
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >>前往暴风城大教堂内，与 The Cyro-Core
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>点击 |cRXP_FRIENDLY_加莱恩的尸体|r
    >>|cRXP_WARN_Avoid trying to kill many |cRXP_ENEMY_炎鹰回收者|r if possible while getting to|r |cRXP_FRIENDLY_加莱恩的尸体|r
    .turnin 9578 >>交任务《 前往熔光镇》 搜寻加莱恩
    .accept 9579 >>接受任务《物归己用》 加莱恩的命运
    .accept 9706 >>接受任务《物归己用》 加莱恩的日记 - 守备官撒鲁安的命运
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>击杀 for |cRXP_LOOT_Galaen's Amulet|r和 their |cRXP_LOOT_医疗物资|r
    >>You can also loot the |cRXP_LOOT_医疗物资|r on the ground
	>>|cRXP_WARN_Use the pillars and structures to LoS if needed to avoid their|r |T135812:0|t[Fireball] |cRXP_WARN_施放|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.isOnQuest 9580
	#completewith GFate
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >>前往血环堡
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9579 >>交任务《 前往熔光镇》 加莱恩的命运
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9703 >>交任务《 前往熔光镇》 冷却核心
    .turnin 9706 >>交任务《 前往熔光镇》 加莱恩的日记 - 守备官撒鲁安的命运
    .accept 9711 >>接受任务《物归己用》 残忍的玛提斯
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .accept 9748 >>接受任务《物归己用》 毒水
    .accept 9753 >>接受任务《物归己用》 我们所知道的…… << Draenei
    .target Vindicator Aesom
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
    .subzoneskip 3584,1
    .xp <18,1
    .train 20288,1 -- seal of righteousness r3
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .turnin 9753 >>交任务《 前往熔光镇》 我们所知道的……
    .accept 9756 >> Acccept What We Don't Know...
    .target Exarch Admetius
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>与 the |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .turnin 9756 >>交任务《 前往熔光镇》 我们不知道的……
    .accept 9760 >>接受任务《物归己用》 守备官营地
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候约莉|r 和 |cRXP_FRIENDLY_斥候洛伊|r
    .turnin 10064 >>交任务《 前往熔光镇》 阿古斯之手
    .accept 10065 >>接受任务《物归己用》 披荆斩棘
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >>接受任务《物归己用》 虚空幼体
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 9760 >>交任务《 前往熔光镇》 守备官营地 << Draenei
    .accept 10066 >>接受任务《物归己用》 纠结之网
    .accept 10067 >>接受任务《物归己用》 污秽的水之魂
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
    .use 24278 >>|cRXP_WARN_Use the|r |T134536:0|t[Flare Gun] |cRXP_WARN_on|r |cRXP_ENEMY_残忍的玛提斯|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get agro as |cRXP_ENEMY_残忍的玛提斯|r hits very hard|r
    >>|cRXP_ENEMY_残忍的玛提斯|r |cRXP_WARN_patrols a large section of the road. His patrol path is marked on your map|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>击杀 |cRXP_ENEMY_虚空幼体|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_虚空畸能|r to trigger |cRXP_ENEMY_虚空幼体|r to spawn|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>击杀 |cRXP_ENEMY_变异的纠结者|r
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
    >>击杀 |cRXP_ENEMY_被激怒的掠食者|r
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
	>>击杀 |cRXP_ENEMY_变异的纠结者|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
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
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
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
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10066 >>交任务《 前往熔光镇》 纠结之网
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候约莉|r
    .turnin 10065 >>交任务《 前往熔光镇》 披荆斩棘
    .target Scout Jorli
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>击杀 |cRXP_ENEMY_污秽的水之魂|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10067 >>交任务《 前往熔光镇》 污秽的水之魂
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_研究员考内留斯|r
    .accept 9670 >>接受任务《物归己用》 他们还活着！也许……
    .target Researcher Cornelius
step
	#completewith next
	>>消灭那些试图阻止仪式的 |cRXP_ENEMY_被网住的生物|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_被网住的生物|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>击杀 |cRXP_ENEMY_萨拉肯|ratop Amberweb Pass
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
	>>消灭那些试图阻止仪式的 |cRXP_ENEMY_被网住的生物|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_被网住的生物|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_研究员考内留斯|r
    .turnin 9670 >>交任务《 前往熔光镇》 他们还活着！也许……
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Use the|r |T134870:0|t[Water Sample Flask] |cRXP_WARN_at the base of the waterfall|r
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step << Druid
    .isQuestAvailable 26,6121
	#completewith Lessons
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestAvailable 26,6121
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .skipgossip
    .fly Teldrassil >>飞往鲁瑟兰村，泰达希尔
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    .isQuestAvailable 26,6121
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Druid
    #label Lessons
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 26 >>接受任务《物归己用》 必修的课程
    .accept 6121 >>接受任务《物归己用》 新的课程
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 交谈
    .turnin 6121 >>交任务《 前往熔光镇》 新的课程
    .accept 6122 >>接受任务《物归己用》 毒水之源
    .turnin 26 >>交任务《 前往熔光镇》 必修的课程
    .accept 29 >>接受任务《物归己用》 湖中试炼
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos tree|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r
    .turnin 29 >>交任务《 前往熔光镇》 湖中试炼
    .accept 272 >>接受任务《物归己用》 海狮试炼
    .target Tajarri
step
    .isOnQuest 9748,9669,9741,9711
    .hs >>前往血环堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .isQuestTurnedIn 9671 -- Urgent Delivery
    .goto Bloodmyst Isle,55.210,59.207
	>>Open your |cRXP_PICK_邮箱|r.拾取地上的 |T134332:0|t[|cRXP_LOOT_海军上将的来信|r]
    .use 24132 >>|cRXP_WARN_使用|r |T134332:0|t[|cRXP_LOOT_海军上将的来信|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >>接受任务《物归己用》 血咒的遗产
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿彻鲁斯|r
    .turnin 9669 >>交任务《 前往熔光镇》 覆灭的远征队
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9741 >>交任务《 前往熔光镇》 虚空幼体
    .turnin 9748 >>交任务《 前往熔光镇》 毒水
    .accept 9746 >>接受任务《物归己用》 精疲力尽
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9711 >>交任务《 前往熔光镇》 残忍的玛提斯
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step
    #completewith next
    .subzone 3591 >>前往暴风城大教堂内，与 the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>点击地上的 |cRXP_PICK_Mound of Dirt|r on the ground
    .turnin 9561 >>交任务《 前往熔光镇》 诺尔凯的日记

 -- skipping this section if they are already level 20
step
    #completewith next
    .subzone 3598 >>前往弗雷岛
    .xp >20,1
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .accept 9687 >>接受任务《物归己用》 找回尊严
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
	>>拾取地上的 the |cRXP_LOOT_龙骨|r on the ground
    >>|cRXP_WARN_These can be difficult to see and are normally found around the small camps|r
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    #completewith next
    .subzone 3598 >> Return to Wyrmscar Island
step
    .isOnQuest 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9687 >>交任务《 前往熔光镇》 找回尊严
    .target Prince Toreth
step
    .isQuestTurnedIn 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .accept 9688 >>接受任务《物归己用》 进入梦境
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9688
    #completewith next
    >>击杀 |cRXP_ENEMY_绿色雏龙|r 和 |cRXP_ENEMY_绿色龙崽|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9672 >>交任务《 前往熔光镇》 血咒的遗产
    .accept 9674 >>接受任务《物归己用》 血咒纳迦
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
	>>击杀 |cRXP_ENEMY_血咒纳迦|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .isOnQuest 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9674 >>交任务《 前往熔光镇》 血咒纳迦
    .target Captain Edward Hanes
step
    .isQuestTurnedIn 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .accept 9682 >>接受任务《物归己用》 绝望者……
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
    >>击杀 |cRXP_ENEMY_血咒航海者|r。拾取他们的 |cRXP_LOOT_Bloodcursed Souls|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .isOnQuest 9682
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9682 >>交任务《 前往熔光镇》 绝望者……
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
	>>拾取地上的
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
    >>击杀 |cRXP_ENEMY_绿色雏龙|r 和 |cRXP_ENEMY_绿色龙崽|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .solo
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >>交任务《 前往熔光镇》 进入梦境
    .target Prince Toreth
step
    .group
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >>交任务《 前往熔光镇》 进入梦境
    .accept 9689 >>接受任务《物归己用》 刺喉
    .target Prince Toreth
step
    .group
    .isQuestTurnedIn 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .accept 9689 >>接受任务《物归己用》 刺喉
    .target Prince Toreth
step
    .group 3
    .isOnQuest 9689
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>点击地上的 mountain to summon |cRXP_ENEMY_刺喉|r
    .timer 36,Razormaw RP
step
    .group 3
    .isOnQuest 9689
    .goto Bloodmyst Isle,73.129,20.587
    >>击杀 |cRXP_ENEMY_刺喉|r
    >>|cRXP_ENEMY_刺喉|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_He casts|r |T135805:0|t[Flame Breath] |cRXP_WARN_(Frontal cone) and|r |T132111:0|t[Terrifying Roar] |cRXP_WARN_(5 second duration fear)|r
    >>|cRXP_WARN_Do NOT attempt this quest unless you also have a healer in your group|r
    >>|cRXP_WARN_Remember to cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on yourself or a party member if required|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .group
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9689 >>交任务《 前往熔光镇》 刺喉
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
    >>击杀 |cRXP_ENEMY_炎鹰火法师|r 和 |cRXP_ENEMY_炎鹰防御者|r
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
    .subzone 3584 >>飞往血环堡
step
    .isQuestComplete 9649
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target Maatparm
    .turnin 9649 >>交任务《 前往熔光镇》 伊瑟拉之泪
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9746 >>交任务《 前往熔光镇》 精疲力尽
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
    .xp <20,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
    .zoneskip Bloodmyst Isle,1
step
    #optional
    #sticky
    .abandon 9746 >> Abandon Limits of Physical Exhaustion
step << NightElf Hunter/Shaman/Mage/Warrior/Priest
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>再次进入埃索达
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_贝霍玛特|ron the top floor
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .trainer >>训练你的职业技能
    .target Behomat
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏兰|r
    .accept 9502 >>接受任务《物归己用》 水之召唤
    .trainer >>训练你的职业技能
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>前去找 ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    .turnin 9502 >>交任务《 前往熔光镇》 水之召唤
    .accept 9501 >>接受任务《物归己用》 水之召唤
    .target Farseer Nobundo
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊迪拉恩|r
    .trainer >>训练你的职业技能
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁纳尔兰|r
    .train 32271 >> Train |T135756:0|t[Teleport: Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆萨尔|r
    >>|cRXP_BUY_Buy at least one|r |T134419:0|t[Rune of Teleportation]|cRXP_BUY_from her|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << NightElf Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔德|r
	.trainer >>训练你的职业技能
    .target Vord
step << NightElf Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
	.trainer >>训练你的宠物技能
    .target Ganaar
step << NightElf Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    >>|cRXP_WARN_Equip it later once you've trained Bows|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him or check the Auction House for a better/cheaper one|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兹米尔|r
    .trainer >>训练你的职业技能
    .target Izmir
step << Dwarf Warrior
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ven|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from her or check the Auction House for a better/cheaper weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
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
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
    .zoneskip The Exodar,1
step << Shaman
    .isOnQuest 9501
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Blood Watch >>飞往血环堡
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >>前往暴风城大教堂内，与 the Hidden Reef
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9501 >>交任务《 前往熔光镇》 水之召唤
    .accept 9503 >>接受任务《物归己用》 水之召唤
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>击杀 |cRXP_ENEMY_污秽的水之魂|r。拾取他们的 |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9503 >>交任务《 前往熔光镇》 水之召唤
    .accept 9504 >>接受任务《物归己用》 水之召唤
    .target Aqueous
step << Shaman
    .isOnQuest 9504
    .hs >>前往血环堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step << Shaman
    #completewith next
    .subzone 3584 >>飞往血环堡
step << Shaman
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << NightElf Hunter/Mage/Warrior/Priest
    #completewith next
    .goto 1947/1,6179.200,6216.100,20 >>离开埃索达
    .zoneskip The Exodar,1
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    >>|cRXP_FRIENDLY_女猎手凯拉·夜弓|r |cRXP_WARN_is located outside the back enterance of The Exodar|r
    .turnin 9632 >>交任务《 前往熔光镇》 新的盟友
    .accept 9633 >>接受任务《物归己用》 前往奥伯丁
    .target Huntress Kella Nightbow
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德拉尔|r
    .fly Auberdine>>飞往黑海岸
    .target Sindrayl
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << !NightElf Hunter
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r
    .trainer >>训练你的职业技能
step << !NightElf Hunter
    >>|cRXP_WARN_Go up the ramp to the right of|r |cRXP_FRIENDLY_祖卡斯特|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_西尔瓦莉雅|r
    .goto Darnassus,42.2,8.8
    .trainer >>训练你的宠物技能
    .target Silvaria
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 264 >> Train Bows
    .train 227 >>学习锤类武器
    .target Ilyenia Moonfire
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塞尤娜|r underground
    .trainer >>训练你的职业技能
    .target Syurna
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 和 |cRXP_FRIENDLY_哨兵山德拉斯|r 交谈
    .accept 1199 >>接受任务《物归己用》 暮光之锤的末日
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>接受任务《物归己用》 寻找塞尔瑞德
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << !NightElf Hunter/Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darnassus,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Auberdine >>飞往奥伯丁，黑海岸
    .target Vesprystus
    .zoneskip Teldrassil,1
]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 12-14 黑海岸
#next 21-23 Ashenvale

step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shaussiy|r 交谈
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Shaussiy
    .bindlocation 442
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Stormwind>>飞往暴风城
    .target Shellei Brondir
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰场。下楼
step << Warlock
.dungeon !DM
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接受任务《物归己用》 噬魂者
    .target Gakin the Darkbinder
step << Warlock
.dungeon !DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    Zone into The Stockades. You will now "Ghetto 将炉石使用回夜色镇
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
    .goto 1439,32.432,43.744,15 >>前往暴风城大教堂内，与 the dock of the Menethil Harbor boat
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_You will now begin to travel to The Deadmines|r
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉克·唐纳德|r 对话，NPC在里面
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉克·唐纳德|r 对话，NPC在里面
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Ironforge >>飞往铁炉堡
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .train 3562 >>学习 |T135757:0|t[传送：铁炉堡]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业技能
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >>Enter |cRXP_FRIENDLY_寻尸者祖贝尔|r's house
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r
    .vendor 6382 >>|cRXP_BUY_Buy|r |T133738:0|t[Grimoires]|cRXP_BUY_for your pets if you wish|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    .target Shellei Brondir
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>从码头尽头跳下水，游向指示点
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>使用角色脱困自助功能直接跳转到铁炉堡。你需要先在指定位置下线，然后用另一个角色进入帮助菜单 (或者把下面的脱困链接粘贴到浏览器中)，向下滚动找到自助服务。选择你的角色并点击移动。如果无法成功脱困，请跳过此步骤，沿着山脉游泳前往西部荒野
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
    .zone Westfall >>If the website unstuck is not available, 飞往西部荒野
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>Run up the shore 和 make your way to Sentinel Hill
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入 Deeprun Tram
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>飞往暴风城
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #可选 << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >>乘坐地铁前往暴风城
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .accept 2040 >>接受任务《物归己用》 地底突袭
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r
    .accept 167 >>接受任务《物归己用》 我的兄弟……
    .accept 168 >>接受任务《物归己用》 收集记忆
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接受任务《物归己用》 遥远的旅途
    .target Argos Nightwhisper
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞曼|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
	.xp <20,1
    .target Larimaine Purdue
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_务必学习|r |T136058:0|t[开锁] |cRXP_WARN_，因为之后会用到|r
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城的飞行路径 << NightElf/Draenei
    .fly Westfall >>飞往西部荒野 << !NightElf !Draenei
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >>前往西部荒野
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target Thor
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接受任务《物归己用》 迪菲亚兄弟会
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
    >>|cRXP_WARN_Grind |cRXP_ENEMY_豺狼人|r south of Sentinel Hill whilst assembling a Deadmines group|r
    .subzone 20 >>When your group has been assembled, 前往月溪镇
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Enter the Defias Hideout with your group
step
.dungeon DM
    #completewith EnterDM
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_Defias|r。拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    >>|cRXP_WARN_You can also complete this inside the Deadmines|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>击杀 |cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r。拾取他们的 |cRXP_LOOT_Cards|r
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
    >>击杀 for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>击杀 |cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r。拾取他们的 |cRXP_LOOT_Cards|r
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
    >>消灭那些试图阻止仪式的 Deadmines.拾取地上的 them for their |cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_Sneed|r。拾取他的 |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_头部|r and |T133471:0|t[|cRXP_LOOT_穆拉克·冰角 <萨满祭司训练师>|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>击杀 for |T133471:0|t[|cRXP_LOOT_穆拉克·冰角 <萨满祭司训练师>|r]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 166 >>交任务《 前往熔光镇》 迪菲亚兄弟会
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_哨兵瑞尔|r atop the Tower
    .turnin 214 >>交任务《 前往熔光镇》 红色丝质面罩
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_施放|r |T135763:0|t[传送: 暴风城]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_艾尔莎林|r atop the Tower
    .train 2138 >>训练你的职业技能
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith DevourerofSouls
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰场。下楼
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .train 6202 >>训练你的职业技能
    .target Ursula Deline
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接受任务《物归己用》 噬魂者
    .target Gakin the Darkbinder
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Travel to |cRXP_FRIENDLY_达索瑞恩·拉尔|r对话，NPC在里面 the Stormwind Cathedral
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 19835 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前去找 Stormwind Cathedral
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话，NPC在里面
    .train 8103 >>训练你的职业技能
    .target High Priestess Laurena
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夜行者奥斯伯|r
    .train 1856 >>训练你的职业技能
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
    .goto 1453,75.754,60.369,12 >>前去找 对话，NPC在里面 SI:7 upstairs
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Renzik "The Shiv"|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2281 >>接受任务《物归己用》 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>接受任务《物归己用》 马迪亚斯和迪菲亚盗贼
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge Mountains >>飞往赤脊山
    .target Dungar Longdrink
step << !Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>离开暴风城
step << !Human Rogue
.dungeon DM
    #optional
    .isOnQuest 2281,2360
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往赤脊山
step << NightElf/Draenei
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务赤脊山的联络员
    .accept 2282 >>接受任务《物归己用》 奥瑟尔伐木场
    .target Lucius
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_黑衣威利|r inside upstairs
    .turnin 65 >>交任务《 前往熔光镇》 迪菲亚兄弟会
	.target Wiley the Black
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >>前往暴风城大教堂内，与 Alther's Mill
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_你必须完成这一步，才能进行之后的|r |T132290:0|t[毒药] |cRXP_WARN_任务|r
    >>|cRXP_WARN_Stand on the waypoint location. Position your camera and cursor until you can click 3 |cRXP_PICK_Practice Lockboxes|r at once without having to move anything|r
    .skill lockpicking,80 >>|cRXP_WARN_在奥瑟尔磨坊打开地上的 |cRXP_PICK_练习用保险箱|r，直到你的|r |T136058:0|t[开锁] 技能达到 80|r
step << Rogue
.dungeon DM
	.goto Redridge Mountains,52.05,44.69
    >>打开 |cRXP_PICK_卢修斯的保险箱|r。从中拾取 |cRXP_LOOT_盗贼徽记|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step << Rogue
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卢修斯|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >>交任务《 前往熔光镇》 奥瑟尔伐木场
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Sentinel Hill >>飞往西部荒野
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_这个任务是必须完成的，关系到你的|r |T132290:0|t[毒药]|r
    .turnin 2360 >>交任务《 前往熔光镇》 马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务《物归己用》 克拉文之塔
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
    >>|T133644:0|t[Pick Pocket]the |cRXP_ENEMY_丑陋的迪菲亚懒汉|r.拾取地上的 it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r 出现在塔楼入口处，随后会在塔楼外侧巡逻|r
    >>|cRXP_WARN_小心，他伤害很高。如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，立刻使用|r |T132307:0|t[疾跑] |cRXP_WARN_并逃离|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Malformed Defias Drone
step << Rogue
.dungeon DM
    #optional
    #completewith Mortwake
    |cRXP_WARN_如果你还没有装备|r |T135641:0|t[弯曲木匕首] |cRXP_WARN_，并且当前没有装备|r |T135641:0|t[匕首] |cRXP_WARN_，请在此任务中装备它|r
    .use 15396
    .itemcount 15396,1
step << Rogue
.dungeon DM
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_前往塔楼的第2层顶楼。在|r |T132320:0|t[潜行] |cRXP_WARN_状态下，并且 |cRXP_ENEMY_迪菲亚哨兵|r 不在你身旁时，跳到椅子上，再跳到灯上，最后跳到路径点位置顶部的书架上|r
    >>|cRXP_WARN_手动|r |T132320:0|t[取消潜行]|cRXP_WARN_，然后按下你的 "与目标互动" 快捷键来打开 |cRXP_PICK_暮色森林宝箱|r。拾取其中的|r |cRXP_LOOT_克拉文·摩特维克的日志|r
    >>|cRXP_WARN_注意：你的|r |T132320:0|t[潜行] |cRXP_WARN_在拾取|r |cRXP_LOOT_克拉文·摩特维克的日志|r 后会暂时失效
    >>|cRXP_WARN_如果你在第2层没有击杀 |cRXP_ENEMY_迪菲亚哨兵|r，请做好逃跑的准备。当你站在书架顶部时，他们很可能会一直对你产生仇恨 (但不会攻击你) ，因为那里是一个脱战点|r
    >>|cRXP_WARN_如果你的背包中或已装备|r |T135641:0|t[匕首] |cRXP_WARN_，你可以施放|r |T132282:0|t[伏击] |cRXP_WARN_对付里面的 |cRXP_ENEMY_迪菲亚巡塔员|r 和 |cRXP_ENEMY_迪菲亚哨兵|r，从而瞬间击杀他们。击杀第一个 |cRXP_ENEMY_迪菲亚哨兵|r 后请做好逃跑准备，并记住你可能会从上方被攻击。这种方法更慢，但安全性高得多|r
    >>|cRXP_WARN_注意，如果你需要跑出塔楼，|cRXP_ENEMY_丑陋的迪菲亚懒汉|r 和 |cRXP_ENEMY_迪菲亚苦工|r 可能会在塔楼入口处|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>制作 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .target Thor
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前去找 |cRXP_FRIENDLY_珊娜·弗勒|r
    .aura -9991
step << !Dwarf Rogue
.dungeon DM
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>制作 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>进入 SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
step << Rogue
.dungeon DM
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 2359 >>交任务《 前往熔光镇》 克拉文之塔
    .target Master Mathias Shaw
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_贾斯伯·菲尔|r on the ground floor of the building
    >>Buy reagents for crafting |T132273:0|t[|cRXP_FRIENDLY_速效药膏|r] and |T132331:0|t[|cRXP_FRIENDLY_Vanish|r] from him
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
.dungeon DM
    >>Open your spellbook and find the |T136242:0|t[|cRXP_FRIENDLY_毒药|r] skill from the general tab. Open it and craft 20 Instant Poisons. |cRXP_WARN_Remember to keep them applied to both your weapons during combat|r
    .collect 6947,20 --Instant Poison (20)
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前去找 Command Center
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_武神|r inside upstairs
    .train 6192 >>训练你的职业技能
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .use 2874 >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_穆拉克·冰角 <萨满祭司训练师>|r] to start the quest|r
    .accept 373 >>接受任务《物归己用》 未寄出的信
    .turnin 373 >>交任务《 前往熔光镇》 未寄出的信
    .accept 389 >>接受任务《物归己用》 巴基尔·斯瑞德
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 389 >>交任务《 前往熔光镇》 巴基尔·斯瑞德
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 对话，NPC在里面
    .turnin 167 >>交任务《 前往熔光镇》 我的兄弟……
    .turnin 168 >>交任务《 前往熔光镇》 收集记忆
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 2040 >>交任务《 前往熔光镇》 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]|cRXP_BUY_from him (if its up)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
    >>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Darkshore
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442


--accepting BFD quests in Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target Caylais Moonfeather
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 和 |cRXP_FRIENDLY_哨兵山德拉斯|r 交谈
    .accept 1199 >>接受任务《物归己用》 暮光之锤的末日
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>接受任务《物归己用》 寻找塞尔瑞德
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
    .zoneskip Teldrassil,1

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务《物归己用》 海中的水果
    .target Gubber Blump
step
    .goto Darkshore,37.219,44.227
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 4740 >>接受任务《物归己用》 通缉：莫克迪普！
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接受任务《物归己用》 洞中的蘑菇
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务《 前往熔光镇》 遥远的旅途
    .target Gershala Nightwhisper
step
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .accept 1275 >>接受任务《物归己用》 研究堕落
    .target Gershala Nightwhisper
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2139 >>接受任务《物归己用》 萨纳瑞恩的希望
    .target Tharnariun Treetender
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .accept 986 >>接受任务《物归己用》 丢失的主人
    .target Terenthis
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵艾莉萨·星风|r 交谈
    .accept 965 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接受任务《物归己用》 深不可测的海洋
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
	.turnin 9633 >>交任务《 前往熔光镇》 前往奥伯丁
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .turnin 4762 >>交任务《 前往熔光镇》 壁泉河 << Draenei/Warlock
    .accept 4763 >>接受任务《物归己用》 黑木熊怪的堕落
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .turnin 4762 >>交任务《 前往熔光镇》 壁泉河 << Draenei/Warlock
    .accept 4763 >>接受任务《物归己用》 黑木熊怪的堕落
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接受任务《物归己用》 健忘的勘察员
    .target Archaeologist Hollee
step
    .isOnQuest 4763
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
step
    #optional
    #completewith MistVeil
    |cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
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
    >>击杀 |cRXP_ENEMY_暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4725 >>接受任务《物归己用》 搁浅的海龟
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Swim out in the water|r
    >>打开 |cRXP_PICK_Strange Lockbox|r。并从中拾取 |cRXP_LOOT_水兽敏捷坠饰|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4727 >>接受任务《物归己用》 搁浅的海龟
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2098 >>接受任务《物归己用》 基尔卡克的钥匙
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>击杀 拾取地上的 them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_狂暴暗礁蟹|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>击杀 拾取地上的 them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_灰雾智者|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage and they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>|cRXP_WARN_You can LoS (Line of Sight) the |cRXP_ENEMY_灰雾智者|r'|r  |T136048:0|t[Lightning Bolts] |cRXP_WARN_around the sunken ship to avoid taking its damage|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>击杀 拾取地上的 them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_狂暴暗礁蟹|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
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
    >>击杀 |cRXP_ENEMY_暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Fine Crab Chunks|r
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
    >>击杀 for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>击杀 |cRXP_ENEMY_月夜雄虎|r 和 |cRXP_ENEMY_月夜雌虎|r。拾取他们的 |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_月夜雌虎|r. They always attack with a |cRXP_ENEMY_月夜猛虎幼崽|r by their side|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2098 >>交任务《 前往熔光镇》 基尔卡克的钥匙
    .accept 2078 >>接受任务《物归己用》 基尔卡克的报复
    .target Gelkak Gyromast
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >>与 the escort
    .skipgossip
    .target The Threshwackonator 4100
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>护送 |cRXP_FRIENDLY_机械打手4100型|r to |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >>击杀 hostile
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >>交任务《 前往熔光镇》 基尔卡克的报复
    .target Gelkak Gyromast
step
    #optional
    #sticky
    .destroy 7442 >> Delete Gyromast's Key from your inventory
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 966 >>接受任务《物归己用》 奥萨拉克斯之塔
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
    >>击杀 |cRXP_ENEMY_暗滩狂热者|r。拾取他们的 |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 967 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往暴风城大教堂内，与 the Cliffspring River Cave
step << Druid
    .goto Darkshore,54.99,33.41
    >>|cRXP_WARN_Use the|r |T134776:0|t[Empty Cliffspring Falls Sampler] |cRXP_WARN_in the water at the entrance of the Cliffspring River Cave|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>拾取散发绿光的 |cRXP_LOOT_Scaber Stalks|r 和 a |cRXP_LOOT_Death Cap|r on the ground
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
    >>打开 |cRXP_PICK_Blackwood Fruit Stores|r. 拾取地上的 it for the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_萨巴克希斯|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
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
    >>打开 |cRXP_PICK_Blackwood Nut Stores|r. 拾取地上的 it for the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_萨巴克希斯|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
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
    >>打开 |cRXP_PICK_Blackwood Grain Stores|r. 拾取地上的 it for the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_萨巴克希斯|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
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
    .cast 16072 >>|cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the |cRXP_PICK_篝火|r to summon|r |cRXP_ENEMY_萨巴克希斯|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>击杀 |cRXP_ENEMY_萨巴克希斯|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_蓟熊幼崽|r which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Hunter/Rogue
	#completewith FOTS
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20 << NightElf Hunter -- not going to Darn if already have a better bow
step
    #completewith FOTS
    .subzone 442 >>前往 Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139 >>交任务《 前往熔光镇》 萨纳瑞恩的希望
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 986 >>交任务《 前往熔光镇》 丢失的主人
    .accept 993 >>接受任务《物归己用》 丢失的主人
    .target Terenthis
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .accept 993 >>接受任务《物归己用》 丢失的主人
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务《 前往熔光镇》 深不可测的海洋
    .target Gorbold Steelhand
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6122 >>交任务《 前往熔光镇》 毒水之源
    .accept 6123 >>接受任务《物归己用》 收集解药
    .target Alanndarian Nightsong
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763 >>交任务《 前往熔光镇》 黑木熊怪的堕落
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务《 前往熔光镇》 洞中的蘑菇
    .accept 948 >>接受任务《物归己用》 安努
    .target Barithras Moonshade
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4725 >>交任务《 前往熔光镇》 搁浅的海龟
    .turnin 4727 >>交任务《 前往熔光镇》 搁浅的海龟
    .target Gwennyth Bly'Leggonde
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务《 前往熔光镇》 海中的水果
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
    >>拾取地上的 |cRXP_LOOT_Lunar Fungi|r on the ground throughout caves
    .complete 6123,2
step << Druid
    .isOnQuest 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6123 >>交任务《 前往熔光镇》 收集解药
    .accept 6124 >>接受任务《物归己用》 消除疾病
    .target Alanndarian Nightsong
step << Druid
    .isQuestTurnedIn 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 6124 >>接受任务《物归己用》 消除疾病
    .target Alanndarian Nightsong
step << Druid
    .isOnQuest 6124
    .goto Darkshore,41.0,79.6
    .use 15826 >>|cRXP_WARN_Head south while using the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_生病的鹿|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .target Sickly Deer
step
    #completewith next
    .goto 1439,35.429,76.566,120 >>前往暴风城大教堂内，与 southern Darkshore
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_莫克迪普|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_灰雾猎人|r in the wave that he spawns with alive)|r
    >>消灭那些试图阻止仪式的 in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_莫克迪普|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_灰雾滩行者|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_灰雾战士|r, and Wave 3 has a level 19 |cRXP_ENEMY_莫克迪普|r and a level 16-17 |cRXP_ENEMY_灰雾猎人|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务《 前往熔光镇》 安努
    .accept 944 >>接受任务《物归己用》 主宰之剑
    .turnin -952 >>交任务《 前往熔光镇》 古树之林 << NightElf
    .target Onu
step
    .goto Darkshore,38.54,86.05,100 >>前往暴风城大教堂内，与 The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>击杀 |cRXP_ENEMY_暮光信徒|r and |cRXP_ENEMY_暮光暴徒|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
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
    >>|cRXP_WARN_点击船底的 |cRXP_PICK_Scrying Bowl|r 前进|r
    .turnin 944 >>交任务《 前往熔光镇》 主宰之剑
    .accept 949 >>接受任务《物归己用》 暮光之锤的营地
    .use 5251
step
    .goto 1439,38.537,86.050
    >>点击地上的 |cRXP_PICK_暮光宝典|r on the northern pedestal
    .turnin 949 >>交任务《 前往熔光镇》 暮光之锤的营地
    .accept 950 >>接受任务《物归己用》 向安努回复
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_瑟瑞露尼|r. This will start an escort
    >>|cRXP_WARN_This will begin an escort. Skip this step if she is not there|r
    .accept 945 >>接受任务《物归己用》 护送瑟瑞露尼
    .target Therylune
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_瑟瑞露尼|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto Ashenvale,13.97,4.10
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4733 >>接受任务《物归己用》 搁浅的海洋生物
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_鱼人|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Click here for a video guide|r
step
    .goto Ashenvale,13.93,2.01
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4732 >>接受任务《物归己用》 搁浅的海龟
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4731 >>接受任务《物归己用》 搁浅的海龟
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4730 >>接受任务《物归己用》 搁浅的海洋生物
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_This will begin an escort. You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 731,1 >>接受任务《物归己用》 健忘的勘察员
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_勘察员雷塔维|r through the Excavation|r
    .complete 731,1
    .target Prospector Remtravel
step
    #completewith next
    .goto Darkshore,45.00,85.30,30 >>前去找 Cave
step
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃科尔|r
    .turnin 993 >>交任务《 前往熔光镇》 丢失的主人
    .accept 995 >>接受任务《物归己用》 偷偷溜走
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isQuestTurnedIn 986
step
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_等待剧情演出完成|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务《 前往熔光镇》 向安努回复
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_克罗尼亚·恒影|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
	.target Kerlonian Evershade
    .accept 5321 >>接受任务《物归己用》 昏昏欲睡
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Open |cRXP_PICK_Kerlonian's Chest|r.拾取地上的 it for the |T134229:0|t[|cRXP_LOOT_唤醒号角|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >>|cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_唤醒号角|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>交任务《 前往熔光镇》 昏昏欲睡
    .isQuestComplete 5321
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1010 >>接受任务《物归己用》 巴斯兰的头发
	.target Orendil Broadleaf
step
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 970 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Delgren the Purifier
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-32
#name 21-23 Ashenvale
#next 23-24级 湿地

step
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 970 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Delgren the Purifier
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1010 >>接受任务《物归己用》 巴斯兰的头发
	.target Orendil Broadleaf
step
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>击杀 |cRXP_ENEMY_暗滩执行者|r和 for the |cRXP_LOOT_Glowing Soul Gem|r
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
    >>Open the |cRXP_PICK_Plant Bundles|rin the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    >>|cRXP_WARN_Make sure you have|r |T134916:0|t[Track Herbs] |cRXP_WARN_enabled to see them on the minimap|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|rin the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .turnin 1010 >>交任务《 前往熔光镇》 巴斯兰的头发
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
    .target Orendil Broadleaf
step
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 970 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
	.target Delgren the Purifier
step
    #optional
    #completewith TZS
    .subzone 415 >>前往萨兰纳尔
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar >>获得塞拉摩飞行路径
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .accept 1008 >>接受任务《物归己用》 佐拉姆海岸
    .target Shindrell Swiftfire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞恩希尔|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >>接受任务《物归己用》 守卫石爪山
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法德瑞斯·戈森沙尔|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >>接受任务《物归己用》 石爪峰之旅
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞安德尔|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞安德尔|r
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin -10752 >>交任务《 前往熔光镇》 前往灰谷
    .accept 991 >>接受任务《物归己用》 莱恩的净化
    .accept 1054 >>接受任务《物归己用》 解除威胁
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >>交任务《 前往熔光镇》 奥雷迪尔的药剂
    .timer 24,Orendil's Cure RP
    .accept 1033 >>接受任务《物归己用》 月神之泪
step
.dungeon WC
    #completewith TravelRatchet
    +|cRXP_WARN_Begin looking for a Wailing Caverns group while you complete the next step. Very soon you'll be heading to The Barrens to run Wailing Caverns|r
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>拾取地上的
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
    .subzone 392 >>前往暴风城大教堂内，与 Ratchet in The Barrens. 跟随 the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘齿城飞行路径
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >>前往 Halfhill The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_纳尔帕克|r and |cRXP_FRIENDLY_厄布鲁|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .accept 1486 >>接受任务《物归己用》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >>接受任务《物归己用》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
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
    >>击杀 |cRXP_ENEMY_疯狂的马格利什|r。拾取他的 |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_疯狂的马格利什|r |cRXP_WARN_can spawn in a few locations|r
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
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
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
    >>击杀所有 types of |cRXP_ENEMY_Deviate|r creatures
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>击杀 |cRXP_ENEMY_考布莱恩|r, |cRXP_ENEMY_皮萨斯|r, |cRXP_ENEMY_瑟芬迪斯|r and |cRXP_ENEMY_安娜科德拉|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
    >>护送 the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns 和 complete the ritual of awakening
    >>击杀 for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>接受任务《物归己用》 发光的碎片
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >>前往暴风城大教堂内，与 Ratchet. You will turn in the quests above WC soon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务《 前往熔光镇》 港口的麻烦
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 >>交任务《 前往熔光镇》 发光的碎片
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >>Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_纳尔帕克|r and |cRXP_FRIENDLY_厄布鲁|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Hearth to 奥伯丁，黑海岸
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
.dungeon WC
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
	.target Caylais Moonfeather
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>拾取地上的
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1033 >>交任务《 前往熔光镇》 月神之泪
    .timer 17,Elune's Tear RP
    .accept 1034 >>接受任务《物归己用》 星尘废墟
step << Shaman
    #completewith next
    >>拾取散发绿光的 |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> |cRXP_WARN_Use the|r |T132825:0|t[Empty Bota Bag] |cRXP_WARN_at the Ruins of Stardust small fountain|r
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>拾取散发绿光的 |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #optional
    .isQuestComplete 945
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务《 前往熔光镇》 护送瑟瑞露尼
	.target Therysil
step
    #completewith next
    .goto 1440/1,238.100,3163.500,80 >>前去找 |cRXP_FRIENDLY_泰洛尼斯的尸体|r
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰洛尼斯的尸体|r
	.turnin 991 >>交任务《 前往熔光镇》 莱恩的净化
    .accept 1023 >>接受任务《物归己用》 莱恩的净化
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>击杀 |cRXP_ENEMY_Saltspittle Murlocs|r。拾取他们的 |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_先知|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>拾取散发绿光的 |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>交任务誓缚 Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >>接受任务《物归己用》 卢泽尔
step
    .goto Ashenvale,6.528,13.361
    >>击杀 for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_卢泽尔|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>击杀 for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
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
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>交任务《 前往熔光镇》 卢泽尔

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
    >>击杀 |cRXP_ENEMY_腐根游荡者|r, |cRXP_ENEMY_腐根萨特|r, |cRXP_ENEMY_黑暗深渊智者|r 和 |cRXP_ENEMY_黑暗深渊海潮祭司|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
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
    .goto 1414/1,885.7229,4139.6807,50 >>前往暴风城大教堂内，与 Blackfathom Deeps
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>击杀 |cRXP_ENEMY_腐根游荡者|r, |cRXP_ENEMY_腐根萨特|r, |cRXP_ENEMY_黑暗深渊智者|r 和 |cRXP_ENEMY_黑暗深渊海潮祭司|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once 对话，NPC在里面 the Instance|r
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
    >>击杀 |cRXP_ENEMY_Nagas|r 和 |cRXP_ENEMY_Satyrs|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>打开 |cRXP_PICK_Pitted Iron Chest|r 对话 near the area with the turtles. 拾取地上的 it for |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候塞尔瑞德|r
    .turnin -1198 >> Turn in Search of Thaelrid
    .accept 1200 >>接受任务《物归己用》 黑暗深渊中的恶魔
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>击杀 all of the |cRXP_ENEMY_暮光之锤|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>击杀 for his |cRXP_LOOT_头部|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>击杀 all of the |cRXP_ENEMY_暮光之锤|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>击杀 |cRXP_ENEMY_Nagas|r 和 |cRXP_ENEMY_Satyrs|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
    >>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isOnQuest 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 6124 >>交任务《 前往熔光镇》 消除疾病
    .accept 6125 >>接受任务《物归己用》 解毒之术
    .target Dendrite Starblaze
step << Druid
    .isQuestTurnedIn 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r
    .accept 6125 >>接受任务《物归己用》 解毒之术
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step
    .hs >>Hearth to 奥伯丁，黑海岸
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务《 前往熔光镇》 通缉：莫克迪普！
step
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 1275 >>交任务《 前往熔光镇》 研究堕落
    .target Gershala Nightwhisper
step
    .isOnQuest 995
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 995 >>交任务《 前往熔光镇》 偷偷溜走
    .target Terenthis
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target Archaeologist Hollee
step
    .goto Darkshore,36.62,45.59
    .target Gwennyth Bly'Leggonde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4730 >>交任务《 前往熔光镇》 搁浅的海洋生物
    .turnin 4731 >>交任务《 前往熔光镇》 搁浅的海龟
    .turnin 4732 >>交任务《 前往熔光镇》 搁浅的海龟
    .turnin 4733 >>交任务《 前往熔光镇》 搁浅的海洋生物
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r
    .trainer >>训练你的职业技能
    .target Syurna
step << Druid
    .goto Darnassus,34.768,7.374
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳萨里安|r
    .trainer >>训练你的职业技能
    .target Denatharion
step << Druid
    .isOnQuest 6125
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 交谈
    .turnin 6125 >>交任务《 前往熔光镇》 解毒之术
step << Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r
	.trainer >>训练你的职业技能
    .target Jocaste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 交谈
    .turnin 1199 >>交任务《 前往熔光镇》 暮光之锤的末日
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞尔高姆|r 交谈
    .turnin 1200 >>交任务《 前往熔光镇》 黑暗深渊中的恶魔
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 227 >>学习锤类武器
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step << Priest
    .goto Darnassus,37.901,82.742
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾德莉亚|r
	.trainer >>训练你的职业技能
    .target Jandria
step
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
	.target Caylais Moonfeather
    .zoneskip Darkshore,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >>交任务《 前往熔光镇》 佐拉姆海岸
    .accept 1134 >>接受任务《物归己用》 石爪山的巨翼
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1023 >>交任务《 前往熔光镇》 莱恩的净化
    .accept 1025 >>接受任务《物归己用》 先发制人
    .target Raene Wolfrunner
step
    #optional
    #sticky
    .destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>交任务《 前往熔光镇》 星尘废墟


--Stonetalon section. skipping if 24 or not already in Stonetalon Mountains
step
    .goto Ashenvale,42.50,71.70
    .zone Stonetalon Mountains >>前往暴风城大教堂内，与 Stonetalon Mountains
    >>|cRXP_WARN_Skip the Stonetalon Mountains section if you are already level 24|r
    .xp >24,1
step
    #completewith wyv1
    >>击杀 |cRXP_ENEMY_幼年巨翼双足飞龙|r。拾取他们的 |cRXP_LOOT_Pridewing Venom Sacs|r
	.unitscan Young Pridewing
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·影矛|r
	.target Kaela Shadowspear
    .goto Stonetalon Mountains,59.899,66.844
    .turnin 1070 >>交任务《 前往熔光镇》 守卫石爪山
    .accept 1085 >>接受任务《物归己用》 守卫石爪山
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加克希姆·尘链|r
	.target Gaxim Rustfizzle
    .goto Stonetalon Mountains,59.516,67.146
    .turnin 1085 >>交任务《 前往熔光镇》 守卫石爪山
    .accept 1071 >>接受任务《物归己用》 侏儒学者
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲兹克斯|r
	.target Ziz Fizziks
    .goto Stonetalon Mountains,58.989,62.601
    .accept 1093 >>接受任务《物归己用》 超级收割机6000
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
    >>击杀 for the |cRXP_LOOT_Blueprints|r
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
	>>击杀 |cRXP_ENEMY_风险投资公司砍树工|r 和 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1071,1
    .mob +Venture Co. Logger
    .complete 1071,2
    .mob +Venture Co. Deforester
    .zoneskip Stonetalon Mountains,1
step
    #requires sr6000
    .goto Stonetalon Mountains,58.989,62.601
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲兹克斯|r
	.target Ziz Fizziks
    .turnin 1093 >>交任务《 前往熔光镇》 超级收割机6000
	.accept 1094 >>接受任务《物归己用》 新的指示 << Warlock
    .zoneskip Stonetalon Mountains,1
step
    #label wyv1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加克希姆·尘链|r
	.goto Stonetalon Mountains,59.516,67.146
    .turnin 1071 >>交任务《 前往熔光镇》 侏儒学者
    .accept 1072 >>接受任务《物归己用》 老同事
    .accept 1075 >>接受任务《物归己用》 玛伦的卷轴
    .target Gaxim Rustfizzle
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,54.04,40.09,60,0
    .goto Stonetalon Mountains,53.26,36.83,40,0
    .goto Stonetalon Mountains,54.56,38.12
    >>击杀 |cRXP_ENEMY_巨翼双足飞龙|r 和 |cRXP_ENEMY_雄性巨翼双足飞龙|r。拾取他们的 |cRXP_LOOT_Pridewing Venom Sacs|r
    >>|cRXP_WARN_Skip this step if you are already level 24|r
    .xp >24,1
	.mob Pridewing Wyvern
	.mob Pridewing Consort
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
    #completewith next
    .goto Stonetalon Mountains,37.103,8.100,100 >>前往暴风城大教堂内，与 Stonetalon Peak
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,37.103,8.100
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者奥巴格姆|r
	.target Keeper Albagorm
    .turnin 1056 >>交任务《 前往熔光镇》 石爪峰之旅
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰罗伦|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
    .fp Stonetalon >>获取南海镇的飞行路径
	.fly Astranaar >>飞往阿斯特兰纳，灰谷 << !Warlock
    .zoneskip Stonetalon Mountains,1
step << Warlock
.dungeon WC
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰罗伦|r
    >>|cRXP_WARN_Skip this step if you didn't do WC earlier|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
	.fly Ratchet >>飞往棘齿城
    .zoneskip Stonetalon Mountains,1
step << Warlock
    .goto Stonetalon Mountains,75.466,91.422,0
    .goto Stonetalon Mountains,81.292,96.118,0
    .goto The Barrens,35.052,27.025
    .zone The Barrens >>前往暴风城大教堂内，与 The Barrens
    .zoneskip Stonetalon Mountains,1
step << Warlock
    #completewith next
    .goto The Barrens,40.358,24.780,150 >> |cRXP_WARN_FOLLOW THE ARROW TO AVOID |cRXP_ENEMY_BARRENS GUARDS|r!|r
    .zoneskip The Barrens,1
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知塔卡尔|r
    .turnin 1716 >>交任务《 前往熔光镇》 噬魂者
    .target Takar the Seer
    .accept 1738 >>接受任务《物归己用》 同心树
    .accept 65602 >> Accept What is Love?
step << Warlock
    #completewith RatchetFP
    .goto The Barrens,62.98,37.21,100 >>前往暴风城大教堂内，与 Ratchet
step << Warlock
    .isOnQuest 1094
    .goto The Barrens,62.984,37.218
    .target Sputtervalve
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 1094 >>交任务《 前往熔光镇》 新的指示
step << Warlock
    #label RatchetFP
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
    .target Bragok
    .zoneskip Ashenvale
step
    .isQuestComplete 1134
    .goto Ashenvale,34.67,48.83
    .target Shindrell Swiftfire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .turnin 1134 >>交任务《 前往熔光镇》 石爪山的巨翼
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈尔詹·橡木之心|r
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
    >>击杀 for his |cRXP_LOOT_骷髅|r
    >>|cRXP_WARN_He patrols around the northern parts of Thistlefur Village|r
    .complete 1054,1 --Dal Bloodclaw's Skull (1)
    .unitscan Dal Bloodclaw
step << Warlock
    .isOnQuest 1738
    #completewith next
    .goto Ashenvale,26.73,44.95,100,0
    .goto Ashenvale,31.50,31.50,40 >>前往暴风城大教堂内，与 The Ruins of Ordil'Aran
step << Warlock
    .isOnQuest 1738
    .goto Ashenvale,31.50,31.50
    >>拾取地上的 the |cRXP_LOOT_同心树|rgiant tree
    .complete 1738,1
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,26.78,22.42
	>>拾取散发绿光的 |T135434:0|t[|cRXP_LOOT_Unlit Torch|r] on the table
	.collect 190307,1 --Collect Unlit Torch (x1)
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .use 190307 >>|cRXP_WARN_Use the|r |T135434:0|t[|cRXP_LOOT_Unlit Torch|r] |cRXP_WARN_to create a|r |T135432:0|t[|cRXP_LOOT_燃烧的火炬|r]
    >>|cRXP_WARN_If you are unable to do this here, head west to |cRXP_FRIENDLY_塔尔伦|r and light it at the Campfire beside him|r
    .collect 190308,1 --Collect Burning Torch
    .usespell 818
    .skill cooking,<1,1 -- shows if cooking is >1
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    .use 190307 >>|cRXP_WARN_Head west to |cRXP_FRIENDLY_塔尔伦|r and use the |T135434:0|t[|cRXP_LOOT_Unlit Torch|r] at the Campfire beside him to create a|r |T135432:0|t[|cRXP_LOOT_燃烧的火炬|r]
    .collect 190308,1 --Collect Burning Torch
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,160.600,3806.100
    .cast 367062 >>|cRXP_WARN_Use the|r |T135432:0|t[|cRXP_LOOT_燃烧的火炬|r] |cRXP_WARN_on the|r |cRXP_PICK_Archaeologist's Cart|r
    .use 190308
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,183.700,3819.500,8,0
    .goto 1440/1,164.900,3826.200
    >>到屋子里上楼 和 loot the |cRXP_PICK_Wooden Figurine|r on the table
    .complete 65602,1 --Wooden Figurine

step
    #completewith next
    >>击杀 a few |cRXP_ENEMY_污林战士|r和 toward the |cRXP_ENEMY_水元素|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_污林巨熊怪|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .accept 1016 >>接受任务《物归己用》 元素护腕
    .target Sentinel Velene Starstrike
step
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    .goto Ashenvale,48.90,70.05
    >>击杀 |cRXP_ENEMY_污浊的水元素|r。拾取他们的 |cRXP_LOOT_Bracers|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
    .use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
    .complete 1016,1 -- Divined Scroll
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .turnin 1016 >>交任务《 前往熔光镇》 元素护腕
    .accept 1017 >>接受任务《物归己用》 召唤者
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
    >>击杀 |cRXP_ENEMY_污林战士|r, |cRXP_ENEMY_污林图腾师|r, |cRXP_ENEMY_污林巨熊怪|r and a |cRXP_ENEMY_污林卫兵|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_污林巨熊怪|r |cRXP_WARN_can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you 3 times at once|r
    >>The |cRXP_ENEMY_污林图腾师|r share spawns with |cRXP_ENEMY_污林战士|r. You may have to backtrack and kill respawns if you weren't lucky with the spawns
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
    .goto 1440/1,-3294.800,2797.000,80 >>|cRXP_WARN_Follow the arrow to get to Forest Song. You will run around |cRXP_ENEMY_碎木岗哨|r to ensure you don't run into any|r |cRXP_ENEMY_碎木岗哨守卫|r
    .subzoneskip 2358 -- forest song
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索拉莱斯·远风|r
    .target Suralais Farwind
    .goto 1440/1,-3206.800,3003.000
    .fp Forest Song >>Get the Forest Song Flight Path
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
    .zoneskip Ashenvale,1
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1025 >>交任务《 前往熔光镇》 先发制人
    .turnin 1054 >>交任务《 前往熔光镇》 解除威胁
    .target Raene Wolfrunner
step
    #label end
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fly Darkshore>>飞往奥伯丁，黑海岸
    .target Daelyshia
    .zoneskip Ashenvale,1
step
    #completewith MeneBoat
    .goto 1439,32.432,43.744,15 >>前往 Auberdine Docks. 等待 the Menethil Harbor boat
    .zoneskip Wetlands
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
    >>|cRXP_WARN_Level your|r 在等待前往 Darkshore 的船时提升你的[First Aid]|cRXP_WARN_and|r |T133971:0|t[Cooking]|cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .skill cooking,<1,1 -- shows if firstaid is >1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
    >>|cRXP_WARN_Level your|r |T133971:0|t[Cooking]|cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill cooking,<1,1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
    >>|cRXP_WARN_Level your|r 在等待前往 Darkshore 的船时提升你的[First Aid]|cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill firstaid,<1,1
step
    #label MeneBoat
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
]])
