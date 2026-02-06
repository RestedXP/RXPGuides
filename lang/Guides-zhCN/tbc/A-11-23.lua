if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance !Warlock
#name 12-14 黑海岸
#displayname 10-14 黑海岸 << Dwarf Hunter
#displayname 11-14 黑海岸 << !Human
#subgroup RestedXP 联盟 1-20 级
#defaultfor !Draenei !Warlock
#next 14-20秘血岛

step << !NightElf
    #optional
    .abandon 6392 >>放弃任务。你不用完成这个任务
step << !NightElf
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r on the bottom floor of the barracks
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒] << Hunter
    .vendor 1448 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
	.target 尼尔·奥雷
    .money <0.08 << !Hunter
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德温·晨光|r 对话，NPC在里面
    .vendor 1453 >>从他这里|cRXP_BUY_买|r |T134831:0|t[治疗药水] |cRXP_BUY_(如果有)|r
    .target 德温·晨光
step << !NightElf
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>抵达码头，登船到
    .zoneskip Darkshore
step << !NightElf
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
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
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
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
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
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
    +|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_技能，以便之后在暮色森林完成一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_|r |T133974:0|t[烧烤狼肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_，以便之后在暮色森林完成一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_|r |T133974:0|t[烧烤狼肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_，以便之后在暮色森林完成一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_|r |T133974:0|t[烤野猪肉]
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
    >>|cRXP_WARN_在等待前往黑海岸的船只时提升你的|r |T135966:0|t[急救] |cRXP_WARN_技能|r
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>乘船前往黑海岸
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>接受任务 钓鱼世家
    .turnin 1141 >>交任务《钓鱼世家》
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target 古博·布拉普
step
    #optional << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    >>|cRXP_WARN_从他那里|r|cRXP_WARN_购买最多 20 条|r |T133918:0|t[长嘴泥鳅]
    .turnin 6342 >>交任务 飞往奥伯丁 << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target 莱尔德
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >>下楼前往 |cRXP_FRIENDLY_维兹班恩·曲针|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
    .target 维兹班恩·曲针
step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板莎希因|r 交谈
    .home >>将你的炉石设为奥伯丁
    .target 旅店老板莎希因
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2118 >>接受任务 瘟疫蔓延
    .target 萨纳瑞恩·绿树
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .accept 984 >>接受任务 熊怪的威胁
    .target 特伦希斯
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fp Auberdine >>开启奥伯丁飞行点
    .target 凯莱斯·月羽
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r，拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[逃跑]|cRXP_WARN_会在生命值低于 30% 时触发|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .mob 森林陆行鸟
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
    >>|cRXP_WARN_让你的宠物去攻击一只 |cRXP_ENEMY_蓟熊|r。当你的宠物被 |cRXP_ENEMY_蓟熊|r 击晕后，解散你的宠物并开始驯服它|r
    .train 2981 >>|cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >>点击此处获取更多关于宠物训练的信息：https://www.wow-petopia.com/classic/training.php
    .target 蓟熊
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
    >>击杀 |cRXP_ENEMY_小潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹幼崽|r，拾取它们的 |cRXP_LOOT_蟹腿|r
    >>你可能需要下水才能获得它们
    .complete 983,1 --Crawler Leg (6)
    .mob 小潮行蟹
    .mob 暗礁蟹幼崽
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>打开 |cRXP_PICK_搁浅的海洋生物|r，拾取地上的物品以获得 |cRXP_LOOT_海洋生物骨骼|r
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
    >>|cRXP_WARN_对 |cRXP_ENEMY_狂暴蓟熊|r 使用|r |T134335:0|t[萨纳瑞恩的希望] |cRXP_WARN_。只要选中了目标，无论距离多远都可以使用|r
    >>==如果附近没有熊，请不要使用该任务物品== 
    >>你可能会浪费陷阱，导致该任务无法完成！如果发生这种情况，你需要返回任务给予者那里再领取一个新的陷阱
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan 狂暴蓟熊
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>朝熊怪营地的边缘跑去
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #label Auber1
    #completewith next
    .subzone 442 >>前往奥伯丁
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 |cRXP_PICK_传声盒827号|r
    .turnin 983 >>交任务 传声盒827号
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 3524 >>交任务 搁浅的巨兽
    .accept 4681 >>接受任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .accept 963 >>接受任务 永志不渝
    .target 塞瑞利恩·白爪
step
    #optional
    #completewith next
    .goto 1439,32.432,43.744,15 >>前往码头尽头，然后跳入水中
step
    .goto 1439,31.841,46.304
    >>打开 |cRXP_PICK_海龟骨头|r，拾取其中的 |cRXP_LOOT_海龟的残骸|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4681 >>交任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step << !Dwarf/!Hunter
    .xp 12
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4811 >>接受任务 红色水晶
    .target 哨兵戈琳达·纳希恩   
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2118 >>交任务 瘟疫蔓延
    .accept 2138 >>接受任务 清除疫病
    .target 萨纳瑞恩·绿树
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 984 >>交任务 熊怪的威胁
    .target 特伦希斯
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 984 >>交任务 熊怪的威胁
    .accept 985 >>接受任务 熊怪的威胁
    .accept 4761 >>接受任务 桑迪斯·织风
    .target 特伦希斯
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4761 >>交任务 桑迪斯·织风
    .accept 4762 >>接受任务 壁泉河
    .accept 954 >>接受任务 巴莎兰
    .accept 958 >>接受任务《物归己用》 上层精灵的工具
    .target 桑迪斯·织风
step
    #optional
    #completewith HSAuber
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r，拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[逃跑]|cRXP_WARN_会在生命值低于 30% 时触发|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .mob 森林陆行鸟
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_进入枭兽洞穴|r
    .cast 18974 >>|cRXP_WARN_使用|r |T132857:0|t[塞纳里奥月尘] |cRXP_WARN_在洞穴内的 |cRXP_PICK_月夜枭兽之石|r 处使用以召唤|r |cRXP_ENEMY_月爪枭兽|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >>击杀 |cRXP_ENEMY_月爪枭兽|r与屋子里的 |cRXP_FRIENDLY_月爪枭兽的灵魂|r 对话
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob 月爪枭兽
    .target 月爪枭兽的灵魂
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>前往 |cRXP_PICK_神秘的红色水晶|r 处
    >>|cRXP_WARN_注意 |cRXP_PICK_神秘的红色水晶|r 西侧的两组各 2 只 |cRXP_ENEMY_狂暴的月夜枭兽|r，彼此距离最近的那两组是联动仇恨的|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |T132832:0|t|cRXP_LOOT_[小蛋]|r
    >>|cRXP_WARN_这将在之后用于将你的|r |T133971:0|t[烹饪] |cRXP_WARN_提升至 10 级|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob 小月夜枭兽
    .mob 狂暴的月夜枭兽
    .mob 月夜枭兽圣者
    .mob 月夜枭兽
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    >>|cRXP_WARN_途中尽量避免击杀 |cRXP_ENEMY_野生劣魔|r 和 |cRXP_ENEMY_恶灵劣魔|r|r
    .turnin 954 >>交任务《 前往熔光镇》 巴莎兰
    .accept 955 >>接受任务 巴莎兰
    .target 阿斯特利安
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
    >>击杀 |cRXP_ENEMY_野生劣魔|r 和 |cRXP_ENEMY_恶灵劣魔|r。拾取他们的 |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_戴瑟雷萨特|r for |r
    .complete 955,1 --Grell Earring (8)
    .mob 野生劣魔
    .mob 恶灵劣魔
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务《 前往熔光镇》 巴莎兰
    .accept 956 >>接受任务《物归己用》 巴莎兰
    .target 阿斯特利安
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .accept 956 >>接受任务 巴莎兰
    .target 阿斯特利安
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
    >>击杀 |cRXP_ENEMY_戴瑟雷萨特|r。拾取他们的 |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_They do not have dynamic respawns. Skip this step if you can't find any|r |cRXP_ENEMY_戴瑟雷萨特|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob 戴瑟雷萨特
    .isOnQuest 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务《 前往熔光镇》 巴莎兰
    .accept 957 >>接受任务《物归己用》 巴莎兰
    .target 阿斯特利安
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r
    .accept 957 >>接受任务 巴莎兰
    .target 阿斯特利安
    .isQuestTurnedIn 956
step
    #optional
    .abandon 956 >>放弃任务 巴莎兰
step << !Draenei
    .goto 1439,53.4,28.8,0
    .goto 1439,54.8,22.8,0
    .goto 1439,44.6,24.8,0
    .goto 1439,49.8,32.8,0
    #completewith HSAuber
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    >>|cRXP_WARN_如果你没有 |cRXP_ENEMY_狂暴蓟熊|r 可击杀，请跳过此步骤，稍后会完成。|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
    .zoneskip Darkshore,1 << Druid
step << !Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_使用|r |T134865:0|t[空的水样试管] |cRXP_WARN_在峭壁之泉河的河底使用|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r 对话
    .skipgossip
    .fly Teldrassil >>飞往鲁瑟兰村，泰达希尔
    .target 希尔瓦·菲纳雯斯
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
    .target 玛斯雷·驭熊者
step
    #label HSAuber
    .hs >>Hearth to 奥伯丁，黑海岸
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接受任务《物归己用》 红色水晶
    .target 哨兵戈琳达·纳希恩
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务《 前往熔光镇》 红色水晶
    .accept 4812 >>接受任务《物归己用》 清洗水晶
    .target 哨兵戈琳达·纳希恩
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .vendor 6301 >>|cRXP_BUY_从他那里购买|r |T134059:0|t[甜香料] |cRXP_BUY_，直到你拥有的|r |T134059:0|t[甜香料] |cRXP_BUY_数量等于或多于你当前拥有的|r |T132832:0|t[小蛋] |cRXP_BUY_数量|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target 高尔博德·钢手
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestAvailable 2178
step
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_朝地面上的 |cRXP_PICK_营火|r 前进|r
    +|cRXP_WARN_Start|r |T133971:0|t[烹饪] |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[烹饪]|cRXP_WARN_has reached at least level 10|r
    >>|cRXP_WARN_继续提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能，直到你用完|r |T132832:0|t[小蛋] << !sod
    >>|cRXP_WARN_之后在暮色森林有一个任务需要你的|r |T133971:0|t[烹饪] |cRXP_WARN_达到 50 或更高。你也可以在稍后上船时烹饪这些|r << !sod
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
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4762 >>交任务《 前往熔光镇》 壁泉河
    .isQuestComplete 4762
    .target 桑迪斯·织风
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务《 前往熔光镇》 清除疫病
    .target 萨纳瑞恩·绿树
    .isQuestComplete 2138
step
    #optional
    #completewith FinalAuber
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r。拾取他们的 |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[Flee]|cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .mob 森林陆行鸟
    .skill cooking,<10,1
step << Dwarf Hunter
    .goto 1439,47.314,48.676
    >>前往 |cRXP_PICK_神秘的红色水晶|r 处
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_狂暴的月夜枭兽|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << !Dwarf/!Hunter
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r |T134865:0|t[空水瓶] |cRXP_WARN_在奥伯丁的月亮井处使用|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>点击 |cRXP_PICK_神秘的红色水晶|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_狂暴的月夜枭兽|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can agro together|r
    .turnin 4812 >>交任务《 前往熔光镇》 清洗水晶
    .accept 4813 >>接受任务《物归己用》 水晶中的碎骨
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
    >>击杀 |cRXP_ENEMY_安娜雅·晨路|r，从她身上拾取 |cRXP_LOOT_吊坠|r
    >>|cRXP_WARN_注意她在阿梅斯阿兰有 7–8 分钟的刷新时间，并且有 4 个不同的刷新位置|r
    >>如果你找不到她，可以考虑与附近的玩家组队。在综合频道 (/1) 询问是否有其他也在找她的人一起组队。如果实在找不到她，请跳过此步骤
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan 安娜雅·晨行者
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
    >>击杀 |cRXP_ENEMY_被诅咒的上层精灵|r, |cRXP_ENEMY_痛苦的上层精灵|r 和 |cRXP_ENEMY_哀嚎的上层精灵鬼魂|r。拾取他们的 |cRXP_LOOT_圣物|r
    .complete 958,1 --Highborne Relic (7)
    .mob 被诅咒的上层精灵
    .mob 痛苦的上层精灵
    .mob 哀嚎的上层精灵鬼魂
    .isOnQuest 958
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接受任务 亚米萨兰的毁灭
    .target 哨兵坦莎·月刃
step
    .goto 1439,42.652,63.145
    >>点击地上的 |cRXP_PICK_亚米萨兰的毁灭|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step
    .goto 1439,42.373,61.815
    >>点击 |cRXP_PICK_远古之焰|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    .goto Darkshore,43.30,58.70
    >>点击地上的 |cRXP_PICK_亚米萨兰的衰落|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .turnin 953 >>交任务 亚米萨兰的毁灭
    .target 哨兵坦莎·月刃
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
    >>在黑海岸南部击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step
    .goto 1439,37.105,62.167
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4722 >>接受任务 搁浅的海龟
step << Draenei
    .goto 1439/1,579.500,5240.300
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4728 >>接受任务 搁浅的海洋生物
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
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob 黑木探路者
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob 黑木风语者
step
    #completewith DarkshoreEnd
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .subzoneskip 442 -- auberdine
    .subzoneskip 446 -- bashal'aran
step << !Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
    .target 阿斯特利安
step
    #label FinalAuber
    #completewith DarkshoreEnd
    .subzone 442 >>前往奥伯丁
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2138 >>交任务 清除疫病
    .target 萨纳瑞恩·绿树
    .isQuestComplete 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 985 >>交任务 熊怪的威胁
    .target 特伦希斯
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 958 >>交任务 上层精灵的工具
    .target 桑迪斯·织风
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4813 >>交任务 水晶中的碎骨
    .target 哨兵戈琳达·纳希恩
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶
    .target 哨兵戈琳达·纳希恩
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4722 >>交任务 搁浅的海龟

    --TODO: ADD ids for all the other turn ins (survival guide)
    .target 温尼斯·布莱葛
    .isOnQuest 4722
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    >>|cRXP_WARN_如果有人刚交了任务，你可能需要等待他完成 RP|r
    .turnin 963 >>交任务 永志不渝
    .target 塞瑞利恩·白爪
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_在等待前往秘蓝岛的船只时提升你的|r |T135966:0|t[急救] |cRXP_WARN_技能|r
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Draenei
	#label DarkshoreEnd
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>乘船前往秘蓝岛
step << Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
    .target 阿斯特利安
step << Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[空的水样试管] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei
    .hs >>炉石回秘血岛
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance
#name 14-20秘血岛
#subgroup RestedXP 联盟 1-20 级
#defaultfor !Draenei
#next 20-21 黑海岸 << !Warlock
#next 20-23 黑海岸/灰谷 << Warlock

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙兰尤斯|r 对话
    .trainer >>训练你的职业技能
    .target 沙兰尤斯
step
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>从后门进入埃索达
step << Warrior/Paladin/Hunter/Rogue
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯前往顶层的 |cRXP_FRIENDLY_贝霍玛特|r << Warrior
    .goto The Exodar,50.50,81.28,20 >>上楼梯前往顶层的 |cRXP_FRIENDLY_韩迪尔|r << Paladin/Hunter/Rogue
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .trainer >>训练你的职业技能
    .target 贝霍玛特
step << Warrior/Paladin/Hunter/Rogue
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >>学习双手剑 << Paladin/Warrior
    .train 199 >>训练双手锤 << Paladin/Warrior
    .train 198 >>学习单手锤 << Rogue
    .train 201 >>学习单手剑 << Rogue
    .train 5011 >>训练 弩 << Hunter
    .target 韩迪尔
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔德|r 对话
	.trainer >>训练你的职业技能
    .target 沃尔德
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
	.train 4188 >>训练 |T136112:0|t[持久耐力]
    .train 24549 >>训练 |T136094:0|t[自然护甲]
    .target 甘纳尔
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏兰|r
    .trainer >>训练你的职业技能
    .target 苏兰
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兹米尔|r
    .trainer >>训练你的职业技能
    .target 伊兹米尔
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊迪拉恩|r
    .trainer >>训练你的职业技能
    .target 伊迪拉恩
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_购买以下物品，以便稍后在秘血岛更快地交任务：|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T134082:0|t[辐射水晶碎片]
    .collect 23984,10
    .target 拍卖师伊蕾萨
    .target 拍卖师凡尼
    .target 拍卖师艾欧克
    .isQuestAvailable 9641
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
    .zoneskip The Exodar,1
step << !Draenei
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fp Exodar >>获取塞尔萨玛的飞行路径
    .target 斯泰法努斯
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>向北前往秘血岛
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .accept 9663 >>接受任务《物归己用》 凯希尔的信使
    .target 凯希尔
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>前往血环堡
    >>|cRXP_WARN_紧跟箭头前进！务必不要穿过桥梁，否则你会被强制下坐骑！|r
    >>|cRXP_WARN_不要与任何怪物交战、攻击或施放任何法术，否则你会被强制下坐骑！如果被身后攻击触发迷惑，同样也会被强制下坐骑！|r
    >>|cRXP_WARN_如果你被强制下坐骑，请放弃任务"凯希尔的信使"|r
step
    #optional
    #completewith next
    .subzone 3584 >>前往血环堡
step
    .goto Bloodmyst Isle,55.252,59.121
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 9646 >>接受任务《物归己用》 通缉：死爪
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target 托菲尔·罗阿
    .home >>将你的炉石设置为暮色森林 Watch
    .subzoneskip 3584,1
    .bindlocation 3584
step
    #optional
    #sticky
    .abandon 9663 >>放弃任务 凯希尔的信使
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .accept 9567 >>接受任务《物归己用》 知己知彼
    .target 守备官艾蕾希亚
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .accept 9580 >>接受任务《物归己用》 猎熊
    .accept 9643 >>接受任务《物归己用》 荆棘巨藤
    .target 追踪者兰塞恩
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target 玛特帕尔姆
    .accept 9648 >>接受任务《物归己用》 玛特帕尔姆蘑菇展
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘探者纳克兰|r
    .accept 10063 >>接受任务《物归己用》 探险者协会要为侏儒服务吗？
    .target 勘探者纳克兰
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target 守备官伊索姆
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
	.turnin 9641 >>交任务《 前往熔光镇》 辐射水晶碎片
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
    .target 守备官波鲁斯
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .accept 9693 >>接受任务《物归己用》 阿古斯的意义
    .target 主教埃德门图斯
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .accept 9581 >>接受任务《物归己用》 研究水晶
    .target 先行官米库拉斯
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9693 >>交任务《 前往熔光镇》 阿古斯的意义
    .accept 9694 >>接受任务《物归己用》 秘血岗哨
step << Dwarf Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob 炎鹰间谍
step << Dwarf Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9694 >>交任务《 前往熔光镇》 秘血岗哨
    .accept 9779 >>接受任务《物归己用》 拦截情报
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .target 莫莱
    .accept 9629 >>接受任务 研究鱼人
step
	#completewith RuinousPolyspore
	>>拾取地上的 |cRXP_LOOT_血蘑菇|r
    >>|cRXP_WARN_这些分布在整个秘血岛各处|r 
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>拾取地上的 |cRXP_LOOT_邪锥蘑菇|r
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>击杀 |cRXP_ENEMY_瑟拉克|r，拾取 |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] 
    .use 23900 >>|cRXP_WARN_使用|r |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] |cRXP_WARN_来开始该任务|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>接受任务 军团的徽记
    .unitscan 瑟拉克
step
    .goto Bloodmyst Isle,36.498,71.338
	>>点击祭坛墙上的 |cRXP_PICK_纳兹维安碑石雕文|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>击杀 |cRXP_ENEMY_瑟拉克|r，拾取 |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] 
    .use 23900 >>|cRXP_WARN_使用|r |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] |cRXP_WARN_来开始该任务|r
    >>|cRXP_WARN_如果你没有看到他在营地中巡逻，请在南侧地面上的紫色符文处等待他刷新。他可能需要 3-6 分钟才会出现|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>接受任务 军团的徽记
    .unitscan 瑟拉克
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
    >>|cRXP_WARN_如果你没有看到 |cRXP_ENEMY_萨特|r 或 |cRXP_ENEMY_魔誓者|r，你可能需要击杀 |cRXP_ENEMY_纳兹维安盗贼|r 来促使它们重新刷新|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob 纳兹维安萨特
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob 纳兹维安魔誓者
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
	>>拾取地上的 |cRXP_LOOT_邪锥蘑菇|r
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>|cRXP_WARN_使用|r |T135619:0|t[鱼人标记枪]|cRXP_WARN_对|r|cRXP_ENEMY_黑沙斥候|r 使用
    >>|cRXP_WARN_不要击杀|r |cRXP_ENEMY_黑沙斥候|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target 黑沙斥候
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	>>击杀 |cRXP_ENEMY_克鲁芬|r，拾取 |T133339:0|t[|cRXP_LOOT_红色水晶坠饰|r]
    .use 23870 >>|cRXP_WARN_使用|r |T133339:0|t[|cRXP_LOOT_红色水晶坠饰|r] |cRXP_WARN_来开始该任务|r
    >>|cRXP_ENEMY_克鲁芬|r |cRXP_WARN_会沿着海岸线巡逻|r
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >>接受任务 克鲁芬的项链
	.unitscan 克鲁芬
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>|cRXP_WARN_使用|r |T135619:0|t[鱼人标记枪]|cRXP_WARN_对|r|cRXP_ENEMY_黑沙斥候|r 使用
    >>|cRXP_WARN_不要击杀|r |cRXP_ENEMY_黑沙斥候|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target 黑沙斥候
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_使用|r |T134709:0|t[水晶矿锄] |cRXP_WARN_对|r |cRXP_PICK_坠毁点水晶|r 使用
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>击杀一只 |cRXP_ENEMY_臭角刺鱼|r，拾取地上的物品以获得 |cRXP_LOOT_水生臭角菇|r
    >>|cRXP_WARN_你也可以在水下拾取 |cRXP_LOOT_水生臭角菇|r|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob 臭角刺鱼
step
    #completewith next
    .subzone 3584 >>前往血环堡
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r 对话
    .turnin 9576 >>交任务 克鲁芬的项链
    .turnin 9629 >>交任务 研究鱼人
    .accept 9574 >>接受任务 腐蚀的牺牲品
    .target 莫莱
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>击杀 |cRXP_ENEMY_堕落的树人|r，拾取它们的 |cRXP_LOOT_晶化树皮|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob 堕落的树人
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r 对话
    .turnin 9574 >>交任务 腐蚀的牺牲品
    .accept 9578 >>接受任务 搜寻加莱恩
    .target 莫莱
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r 对话
    .turnin 9594 >>交任务 军团的徽记
    .turnin 9567 >>交任务 知己知彼
    .accept 9569 >>接受任务 化解危机
    .target 守备官艾蕾希亚
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r 对话
    .turnin 9567 >>交任务 知己知彼
    .accept 9569 >>接受任务 化解危机
    .target 守备官艾蕾希亚
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .accept 9641 >>接受任务 辐射水晶碎片
	.turnin 9641 >>交任务 辐射水晶碎片
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_记得上交你的|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_以获得|r |T132775:0|t[洞察水晶] |cRXP_WARN_消耗品增益（智力提高 5 点，持续 30 分钟）|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_记得上交你的|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_以获得|r |T132786:0|t[野性水晶] |cRXP_WARN_消耗品增益（攻击强度提高 10 点，持续 30 分钟）|r << Warrior/Paladin/Shaman/Rogue
    .target 守备官波鲁斯
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9581 >>交任务 研究水晶
    .accept 9620 >>接受任务《物归己用》 失踪的测量小组
    .target 先行官米库拉斯
step << !Dwarf/!Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob 炎鹰间谍
step << !Dwarf/!Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
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
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r。拾取他们的 |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob 炎鹰间谍
step
    #completewith next
    .subzone 3591 >>前往暴风城大教堂内，与 the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与击碎者姆摩尔对话 |cRXP_FRIENDLY_德莱尼制图师|r
    .turnin 9620 >>交任务《 前往熔光镇》 失踪的测量小组
    .accept 9628 >>接受任务《物归己用》 夺回数据
    .target 德莱尼制图师
step
	#completewith next
	>>拾取地上的 a |cRXP_LOOT_Ruinous Polyspore|r on the ground
    >>|cRXP_WARN_它看起来像是在娜迦遗迹附近可以找到的小型蓝色蘑菇|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>击杀 |cRXP_ENEMY_怒鳞掠夺者|r 和 |cRXP_ENEMY_怒鳞巫师|r。拾取他们的 |cRXP_LOOT_Survey Data Crystal|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob 怒鳞掠夺者
    .mob 怒鳞巫师
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
    >>|cRXP_WARN_它看起来像是在娜迦遗迹附近可以找到的小型蓝色蘑菇|r
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
    >>|cRXP_WARN_这些会在秘血岛各处出现|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith next
    .subzone 3598 >>前往弗雷岛
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .accept 9687 >>接受任务《物归己用》 找回尊严
    .target 托雷斯王子
step
    #completewith FlyExo
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .turnin 9648 >>交任务《 前往熔光镇》 玛特帕尔姆蘑菇展
    .accept 9649 >>接受任务《物归己用》 伊瑟拉之泪
    .target 玛特帕尔姆
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9779 >>交任务《 前往熔光镇》 拦截情报
    .accept 9696 >>接受任务《物归己用》 翻译……
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_审讯者埃莉西亚|r
    .target 审讯者埃莉西亚
    .turnin 9696 >>交任务《 前往熔光镇》 翻译……
    .accept 9698 >>接受任务《物归己用》 会见先知
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9628 >>交任务《 前往熔光镇》 夺回数据
    .accept 9584 >>接受任务《物归己用》 第二份样本
    .target 先行官米库拉斯
step
    #label FlyExo
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target 兰度
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>再次进入埃索达
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target 先知维伦
    .turnin 9698 >>交任务《 前往熔光镇》 会见先知
    .accept 9699 >>接受任务《物归己用》 真相还是谎言
step
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target 先知维伦
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
    .target 洛甘纳尔
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
    .target 斯泰法努斯
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9699 >>交任务《 前往熔光镇》 真相还是谎言
    .accept 9700 >>接受任务《物归己用》 黑暗中的魔法
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target 守备官波鲁斯
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_使用|r |T134709:0|t[水晶矿锄] |cRXP_WARN_在|r |cRXP_PICK_变异的秘血水晶|r 处使用
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9584 >>交任务《 前往熔光镇》 第二份样本
    .accept 9585 >>接受任务《物归己用》 最终的样本
    .target 先行官米库拉斯
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >>前往暴风城大教堂内，与 Axxarien
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    >>|cRXP_WARN_前往阿克萨林的路上看到的都可以击杀|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob 变异的缠绕者
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
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
    .mob 塞弗拉克斯
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob 阿克萨林暗影行者
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob 阿克萨林唤魔者
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>|cRXP_WARN_使用|r |T134709:0|t[水晶矿锄] |cRXP_WARN_对|r |cRXP_PICK_阿克萨林水晶|r 使用
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>击杀 |cRXP_ENEMY_塞弗拉克斯|r, |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob 塞弗拉克斯
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob 阿克萨林暗影行者
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob 阿克萨林唤魔者
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
    .mob 阿克萨林暗影行者
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob 阿克萨林唤魔者
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
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob 变异的缠绕者
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
step
    .goto Bloodmyst Isle,37.45,30.53
    >>击杀 |cRXP_ENEMY_死爪|r。拾取他的 |cRXP_LOOT_Deathclaw's Paw|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob 死爪
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 10063 >>交任务《 前往熔光镇》 探险者协会要为侏儒服务吗？
    .accept 9548 >>接受任务《物归己用》 被偷走的设备
    .accept 9549 >>接受任务《物归己用》 黑沙神器
    .target 克劳伯·维兹班
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品，如果他没有出售，请跳过此步骤|r
    .bronzetube
    .target 克劳伯·维兹班
    .subzoneskip 3906,1
step
    #completewith next
	>>击杀 |cRXP_ENEMY_黑沙先知|r。拾取他们的 |cRXP_LOOT_Crude Murloc Idols|r
    >>击杀 |cRXP_ENEMY_黑沙战士|r 和 |cRXP_ENEMY_黑沙巡滩者|r。拾取他们的 |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob 黑沙先知
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob 黑沙战士
    .mob 黑沙巡滩者
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
    >>|cRXP_WARN_它可能会在任意一个鱼人营地刷新|r
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
    .mob 黑沙先知
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob 黑沙战士
    .mob 黑沙巡滩者
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 9548 >>交任务《 前往熔光镇》 被偷走的设备
    .turnin 9549 >>交任务《 前往熔光镇》 黑沙神器
    .target 克劳伯·维兹班
step
    .use 23837 >>|cRXP_WARN_Use the|r |T134269:0|t[Weathered Treasure Map]|cRXP_WARN_to start the quest|r
    .accept 9550 >>接受任务《物归己用》 一张地图？
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>击杀 |cRXP_ENEMY_虚空畸能|r 和 explore the Sun Portal Site
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob 虚空畸能
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
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_变异的缠绕者|r as you will have time later to finish the|r |cRXP_ENEMY_老年棕熊|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob 变异的缠绕者
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
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
	>>拾取地上的 the |cRXP_LOOT_龙骨|r on the ground
    >>|cRXP_WARN_这些目标不太容易发现，通常位于小型营地周围|r
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>点击地上的 |cRXP_PICK_Battered Ancient Book|r on the ground
    .turnin 9550 >>交任务《 前往熔光镇》 一张地图？
    .accept 9557 >>接受任务《物归己用》 破译书籍
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者菲索斯|r
    .turnin 9557 >>交任务《 前往熔光镇》 破译书籍
    .target 学者菲索斯
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9585 >>交任务《 前往熔光镇》 最终的样本
    .accept 10064 >>接受任务《物归己用》 阿古斯之手
    .turnin 9646 >>交任务《 前往熔光镇》 通缉：死爪
    .target 先行官米库拉斯
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者菲索斯|r
    .accept 9561 >>接受任务《物归己用》 诺尔凯的日记
    .accept 9632 >>接受任务《物归己用》 新的盟友
    .target 学者菲索斯
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9700 >>交任务《 前往熔光镇》 黑暗中的魔法
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .accept 9703 >>接受任务《物归己用》 冷却核心
    .target 守备官库卢斯
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9643 >>交任务《 前往熔光镇》 荆棘巨藤
    .accept 9647 >>接受任务《物归己用》 消灭巨蛾
    .target 追踪者兰塞恩
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9643 >>交任务《 前往熔光镇》 荆棘巨藤
    .accept 9647 >>接受任务《物归己用》 消灭巨蛾
    .target 追踪者兰塞恩
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9569 >>交任务《 前往熔光镇》 化解危机
    .target 守备官艾蕾希亚
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿彻鲁斯|r
    .accept 9669 >>接受任务《物归己用》 覆灭的远征队
    .target 阿彻鲁斯
step
	.isOnQuest 9580
	#completewith GCorpse
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    >>|cRXP_WARN_前往冷却核心的途中注意留意这些目标|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_前往冷却核心的途中注意留意这些目标|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
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
    .target 加莱恩的尸体
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>击杀 |cRXP_ENEMY_炎鹰回收者|r. 拾取 |cRXP_LOOT_Galaen's Amulet|r 和 their |cRXP_LOOT_医疗物资|r
    >>你也可以拾取地上的 the |cRXP_LOOT_医疗物资|r on the ground
	>>|cRXP_WARN_Use the pillars and structures to LoS if needed to avoid their|r |T135812:0|t[火球术] |cRXP_WARN_施放|r  
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob 炎鹰回收者
step
	.isOnQuest 9580
	#completewith GFate
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    >>|cRXP_WARN_前往秘血岗哨的途中注意留意这些目标|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_前往秘血岗哨的途中注意留意这些目标|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
step
    #completewith GFate
    .subzone 3584 >>前往血环堡
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9579 >>交任务《 前往熔光镇》 加莱恩的命运
    .target 莫莱
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9703 >>交任务《 前往熔光镇》 冷却核心
    .turnin 9706 >>交任务《 前往熔光镇》 加莱恩的日记 - 守备官撒鲁安的命运
    .accept 9711 >>接受任务《物归己用》 残忍的玛提斯
    .target 守备官库卢斯
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .accept 9748 >>接受任务《物归己用》 毒水
    .accept 9753 >>接受任务《物归己用》 我们所知道的…… << Draenei
    .target 守备官伊索姆
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target 守备官伊索姆
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target 追踪者兰塞恩
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .target 追踪者兰塞恩
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target 追踪者兰塞恩
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .turnin 9753 >>交任务《 前往熔光镇》 我们所知道的……
    .accept 9756 >>接受任务 我们不知道的
    .target 主教埃德门图斯
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>与 the |cRXP_ENEMY_被抓住的炎鹰间谍|r 对话，NPC在里面 the |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target 被抓住的炎鹰间谍
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .turnin 9756 >>交任务《 前往熔光镇》 我们不知道的……
    .accept 9760 >>接受任务《物归己用》 守备官营地
    .target 主教埃德门图斯
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_在完成其他目标的过程中注意留意这些目标|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    >>|cRXP_WARN_在完成其他目标的过程中注意留意这些目标|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候约莉|r 和 |cRXP_FRIENDLY_斥候洛伊|r
    .turnin 10064 >>交任务《 前往熔光镇》 阿古斯之手
    .accept 10065 >>接受任务《物归己用》 披荆斩棘
    .target 斥候约莉
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >>接受任务《物归己用》 虚空幼体
    .target 斥候洛伊
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 9760 >>交任务《 前往熔光镇》 守备官营地 << Draenei
    .accept 10066 >>接受任务《物归己用》 纠结之网
    .accept 10067 >>接受任务《物归己用》 污秽的水之魂
    .target 守备官考尔琳
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
    .use 24278 >>|cRXP_WARN_Use the|r |T134536:0|t[信号枪]|cRXP_WARN_on|r|cRXP_ENEMY_残忍的玛提斯|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get agro as |cRXP_ENEMY_残忍的玛提斯|r hits very hard|r
    >>|cRXP_ENEMY_残忍的玛提斯|r |cRXP_WARN_patrols a large section of the road. His patrol path is marked on your map|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan 残忍的玛提斯
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>击杀 |cRXP_ENEMY_虚空幼体|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_虚空畸能|r to trigger |cRXP_ENEMY_虚空幼体|r to spawn|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob 虚空幼体
    .mob 虚空畸能
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_在完成其他目标的过程中注意留意这些目标|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
    >>|cRXP_WARN_在完成其他目标的过程中注意留意这些目标|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
step
    #completewith next
	>>击杀 |cRXP_ENEMY_变异的纠结者|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob 变异的纠结者
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
    .mob 被激怒的掠食者
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
    .mob 变异的纠结者
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob 鲜艳的蓝翼巨蛾
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
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_老年棕熊的肉|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob 老年棕熊
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
    .mob 鲜艳的蓝翼巨蛾
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10066 >>交任务《 前往熔光镇》 纠结之网
    .target 守备官考尔琳
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候约莉|r
    .turnin 10065 >>交任务《 前往熔光镇》 披荆斩棘
    .target 斥候约莉
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
    .mob 污秽的水之魂
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10067 >>交任务《 前往熔光镇》 污秽的水之魂
    .target 守备官考尔琳
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_研究员考内留斯|r
    .accept 9670 >>接受任务《物归己用》 他们还活着！也许……
    .target 研究员考内留斯
step
	#completewith next
	>>消灭那些试图阻止仪式的 |cRXP_ENEMY_被网住的生物|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_被网住的生物|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob 被网住的生物
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>击杀 |cRXP_ENEMY_秘网吸血者|r,|cRXP_ENEMY_秘网编织者|r 和 |cRXP_ENEMY_萨拉肯|r atop Amberweb Pass
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob 秘网吸血者
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob 秘网编织者
    .complete 9669,3 --Kill Zarakh (x1)
    .mob 萨拉肯
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>消灭那些试图阻止仪式的 |cRXP_ENEMY_被网住的生物|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_被网住的生物|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob 被网住的生物
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_研究员考内留斯|r
    .turnin 9670 >>交任务《 前往熔光镇》 他们还活着！也许……
    .target 研究员考内留斯
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_使用|r |T134870:0|t[水样瓶] |cRXP_WARN_在瀑布底部|r
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
    .target 希尔瓦·菲纳雯斯
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
    .target 玛斯雷·驭熊者
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
    .target 德迪利特·星焰
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use the|r |T134125:0|t[神殿灵珠]|cRXP_WARN_at the Shrine of Remulos tree|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r
    .turnin 29 >>交任务《 前往熔光镇》 湖中试炼
    .accept 272 >>接受任务《物归己用》 海狮试炼
    .target 塔加里
step
    .isOnQuest 9748,9669,9741,9711
    .hs >>前往血环堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿彻鲁斯|r
    .turnin 9669 >>交任务《 前往熔光镇》 覆灭的远征队
    .target 阿彻鲁斯
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9741 >>交任务《 前往熔光镇》 虚空幼体
    .turnin 9748 >>交任务《 前往熔光镇》 毒水
    .accept 9746 >>接受任务《物归己用》 精疲力尽 << Hunter/Shaman/Mage/Warlock
    .target 守备官伊索姆
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target 守备官伊索姆
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9711 >>交任务《 前往熔光镇》 残忍的玛提斯
    .target 守备官库卢斯
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target 追踪者兰塞恩
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .target 追踪者兰塞恩
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target 追踪者兰塞恩
step
    #completewith next
    .subzone 3591 >>前往暴风城大教堂内，与 the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>点击地上的 |cRXP_PICK_Mound of Dirt|r on the ground
    .turnin 9561 >>交任务《 前往熔光镇》 诺尔凯的日记
step
    #completewith next
    .subzone 3598 >>前往弗雷岛
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9687 >>交任务《 前往熔光镇》 找回尊严
    .accept 9688 >>接受任务《物归己用》 进入梦境
    .target 托雷斯王子
step
	#completewith TurninRazormaw
	>>拾取地上的 |cRXP_LOOT_伊瑟拉之泪|r on the ground
    >>|cRXP_WARN_这些看起来像小型的绿色蘑菇|r
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
    >>击杀 |cRXP_ENEMY_绿色雏龙|r 和 |cRXP_ENEMY_绿色龙崽|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob 绿色雏龙
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob 绿色龙崽
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >>交任务《 前往熔光镇》 进入梦境
    .accept 9689 >>接受任务《物归己用》 刺喉
    .target 托雷斯王子
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>点击地上的 |cRXP_PICK_永燃火堆|r atop the mountain to summon |cRXP_ENEMY_刺喉|r
    .timer 36,刺喉 剧情
step
    .goto Bloodmyst Isle,73.129,20.587
    >>击杀 |cRXP_ENEMY_刺喉|r
    >>|cRXP_ENEMY_刺喉|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_这个任务非常困难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    >>|cRXP_WARN_记得在需要时对自己或队友施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob 刺喉
step
    #label TurninRazormaw
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9689 >>交任务《 前往熔光镇》 刺喉
    .target 托雷斯王子
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
	>>拾取地上的 |cRXP_LOOT_伊瑟拉之泪|r on the ground
    >>|cRXP_WARN_这些看起来像小型的绿色蘑菇|r
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
    >>击杀 |cRXP_ENEMY_炎鹰火法师|r 和 |cRXP_ENEMY_炎鹰防御者|r
    >>|cRXP_WARN_仅当你在 19 级进度未超过 90% 时才完成此步骤。务必在离开秘血岛前升到 20 级|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob 炎鹰火法师
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob 炎鹰防御者
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
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target 玛特帕尔姆
    .turnin 9649 >>交任务《 前往熔光镇》 伊瑟拉之泪
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9746 >>交任务《 前往熔光镇》 精疲力尽
    .target 守备官伊索姆
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target 守备官伊索姆
    .xp <20,1
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target 兰度
    .zoneskip Bloodmyst Isle,1
step << Shaman/Mage/Hunter/Warrior/Priest
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
    .target 贝霍玛特
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏兰|r
    .trainer >>训练你的职业技能
    .target 苏兰
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊迪拉恩|r
    .trainer >>训练你的职业技能
    .target 伊迪拉恩
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁纳尔兰|r
    .train 32271 >>训练 |T135756:0|t[传送：埃索达]
    .target 鲁纳尔兰
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆萨尔|r
    >>|cRXP_BUY_Buy at least one|r |T134419:0|t[传送符文]|cRXP_BUY_from her|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target 穆萨尔
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔德|r
	.trainer >>训练你的职业技能
    .target 沃尔德
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
	.trainer >>训练你的宠物技能
    .target 甘纳尔
step << Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
    >>|cRXP_BUY_Buy a|r |T135489:0|t[重型弯弓] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    >>|cRXP_WARN_等你学会弓类武器技能后再装备它|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target 艾维尔琳
step << Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
    >>|cRXP_BUY_Buy a|r |T135489:0|t[重型弯弓]
    >>|cRXP_WARN_等你学会弓类武器技能后再装备它|r << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target 艾维尔琳
step << Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
    .train 264,3
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[燃烧魔杖]|cRXP_BUY_from him or check the Auction House for a better one|r 
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target 欧斯
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[燃烧魔杖]|cRXP_BUY_from him|r 
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target 欧斯
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Equip the|r |T135139:0|t[燃烧魔杖]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兹米尔|r
    .trainer >>训练你的职业技能
    .target 伊兹米尔
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    >>|cRXP_FRIENDLY_女猎手凯拉·夜弓|r |cRXP_WARN_is located outside the back enterance of The Exodar|r
    .turnin 9632 >>交任务《 前往熔光镇》 新的盟友
    .accept 9633 >>接受任务《物归己用》 前往奥伯丁
    .target 女猎手凯拉·夜弓
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target 洛甘纳尔
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德拉尔|r
    .fly Auberdine>>飞往黑海岸
    .target 辛德拉尔
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
step << !NightElf Hunter/!NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往 Darkshore
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target 凯莱斯·月羽
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target 祖卡斯特
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r
    .trainer >>训练你的职业技能
step << !NightElf Hunter
    >>|cRXP_WARN_Go up the ramp to the right of|r |cRXP_FRIENDLY_祖卡斯特|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_西尔瓦莉雅|r
    .goto Darnassus,42.2,8.8
    .trainer >>训练你的宠物技能
    .target 西尔瓦莉雅
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 264 >>学习 弩
    .train 227 >>学习锤类武器
    .target 伊琳尼雅·月火
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[重型弯弓] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 3027,1 -- Heavy Recurve Bow
    .target 兰德瑞亚
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[重型弯弓]
    .collect 3027,1 -- Heavy Recurve Bow
    .target 兰德瑞亚
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #optional
    +|cRXP_WARN_Equip the|r |T135489:0|t[重型弯弓]
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
    .target 塞尤娜
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[长剑]|cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 923,1 --Longsword (1)
    .target 阿瑞耶尔·天影
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[长剑]|cRXP_BUY_. Equip it at level 21|r
    .collect 923,1 --Longsword (1)
    .target 阿瑞耶尔·天影
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
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
    .target 维斯派塔斯
    .zoneskip Teldrassil,1
--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shaussiy|r 对话
    .home >>将你的炉石设置为暮色森林
    .target 旅店老板莎希因
    .bindlocation 442
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
    >>|cRXP_WARN_你现在将开始前往死亡矿井|r
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
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[刽子手之剑] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target 布拉克·唐纳德
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉克·唐纳德|r 对话，NPC在里面
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[刽子手之剑] |cRXP_BUY_from him (if its up and you can afford it)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target 布拉克·唐纳德
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the|r |T135329:0|t[刽子手之剑]
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
    .target 谢尔雷·布隆迪尔
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .train 3562 >>学习 |T135757:0|t[传送：铁炉堡]
    .target 贝尔斯塔弗·风暴之眼
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业技能
    .target 布瑞尔索恩
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
    .target 寻尸者祖贝尔
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    .target 谢尔雷·布隆迪尔
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
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_点击此处查看视频参考|r
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_点击此处查看美服角色卡住（脱困）链接|r
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_点击此处查看欧服角色卡住（脱困）链接|r
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
    .target 索尔
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
    .target 格莱斯·瑟登
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
    #optional << NightElf/Draenei
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
    .target 沉默的舒尼
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 
    .accept 167 >>接受任务《物归己用》 我的兄弟……
    .accept 168 >>接受任务《物归己用》 收集记忆
    .target 维尔德·蓟草
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接受任务《物归己用》 遥远的旅途
    .target 阿古斯·夜语
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞曼|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
	.xp <20,1
    .target 拉瑞麦尼·普尔度
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_务必学习|r |T136058:0|t[开锁] |cRXP_WARN_，因为之后会用到|r
    .train 1804 >>Train |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r
    .train 201 >>学习单手剑 << Mage/Rogue/Warlock
    .train 1180 >>学习 匕首 << Mage/Druid/Priest
    .train 202 >>学习双手剑 << Warrior/Paladin/Hunter
    .target 吴平
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城的飞行路径 << !Human
    .fly Westfall >>飞往西部荒野 << Human/Dwarf Warrior/Gnome Warrior/Rogue/Warlock
    .target 杜加尔·朗德瑞克
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >>前往西部荒野
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target 索尔
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接受任务《物归己用》 迪菲亚兄弟会
    .target 格里安·斯托曼
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
    >>|cRXP_WARN_Grind |cRXP_ENEMY_豺狼人|r south of Sentinel Hill whilst assembling a Deadmines .group|r
    .subzone 20 >>When your group has been assembled, 前往月溪镇
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>与小队一起进入迪菲亚斯藏身处
step
.dungeon DM
    #completewith EnterDM
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_Defias|r。拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    >>|cRXP_WARN_你也可以在死亡矿井副本内完成这个|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>击杀 |cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r。拾取他们的 |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>击杀 |cRXP_ENEMY_工头希斯耐特|r，拾取他的 |cRXP_LOOT_徽章|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan 工头希斯耐特
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>击杀 |cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r。拾取他们的 |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >>进入死亡矿井副本
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>击杀 the |cRXP_ENEMY_Defias|r 对话，NPC在里面 The Deadmines. 拾取 their |cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_Sneed|r。拾取他的 |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_艾德温·范克里夫|r，拾取他的 |cRXP_LOOT_头颅|r 以及 |T133471:0|t[|cRXP_LOOT_未寄出的信|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>击杀 |cRXP_ENEMY_Edwin VanCleef|r. Loot him for |T133471:0|t[|cRXP_LOOT_未寄出的信|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>从 |cRXP_ENEMY_艾德温·范克里夫|r 东侧的后门离开死亡矿井
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 166 >>交任务《 前往熔光镇》 迪菲亚兄弟会
    .target 格里安·斯托曼
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_哨兵瑞尔|r atop the Tower
    .turnin 214 >>交任务《 前往熔光镇》 红色丝质面罩
    .target 哨兵瑞尔
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
    .target 艾尔莎林
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .zoneskip Stormwind City
    .target 索尔
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
    .target 厄苏拉·德林
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接受任务《物归己用》 噬魂者
    .target 黑暗缚灵者加科因
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
    .target 虔诚的亚瑟
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前去找 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话，NPC在里面
    .train 8103 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夜行者奥斯伯|r
    .train 1856 >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往楼上，在 SI:7 内前去找 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Renzik "The Shiv"|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2281 >>接受任务《物归己用》 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .target “剃刀”雷吉克
    .accept 2360 >>接受任务《物归己用》 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target 马迪亚斯·肖尔大师
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
    .target 杜加尔·朗德瑞克
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
step << !Human
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务赤脊山的联络员
    .accept 2282 >>接受任务《物归己用》 奥瑟尔伐木场
    .target 卢修斯
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务《 前往熔光镇》 迪菲亚兄弟会
	.target 黑衣威利
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >>前往暴风城大教堂内，与 Alther's Mill
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_你必须完成这一步，才能进行之后的|r |T132290:0|t[毒药] |cRXP_WARN_任务|r
    >>|cRXP_WARN_站在路径点位置。调整你的镜头和鼠标位置，使你无需移动即可一次性点击 3 个 |cRXP_PICK_练习用保险箱|r|r
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
	.target 卢修斯
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >>交任务《 前往熔光镇》 奥瑟尔伐木场
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Sentinel Hill >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_这个任务是必须完成的，关系到你的|r |T132290:0|t[毒药]|r
    .turnin 2360 >>交任务《 前往熔光镇》 马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务《物归己用》 克拉文之塔
    .target 密探吉尔妮
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
    .mob 丑陋的迪菲亚懒汉
step << Rogue
.dungeon DM
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r |T135641:0|t[弯曲木匕首] |cRXP_WARN_，并且当前没有装备|r |T135641:0|t[匕首] |cRXP_WARN_，请在此任务中装备它|r
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
    .mob 迪菲亚巡塔员
    .mob 迪菲亚哨兵
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Craft an |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[赞吉尔之触] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
.dungeon DM
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_施放 |T136225:0|t[石像形态] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .aura -9991
step << Rogue
.dungeon DM
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .target 索尔
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
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_for you instead|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Craft an |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[赞吉尔之触] debuff|r
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
    .target 马迪亚斯·肖尔大师
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_贾斯伯·菲尔|r on the ground floor of the building
    >>Buy reagents for crafting |T132273:0|t[|cRXP_FRIENDLY_速效毒药|r] and |T132331:0|t[|cRXP_FRIENDLY_Vanish|r] from him
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target 贾斯伯·菲尔
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
    .goto 1453,80.030,45.591,12 >>前去找 |cRXP_FRIENDLY_武神|r 对话，NPC在里面 the Command Center
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .train 6192 >>训练你的职业技能
    .target 武神
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .use 2874 >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_未寄出的信|r] to start the quest|r
    .accept 373 >>接受任务《物归己用》 未寄出的信
    .turnin 373 >>交任务《 前往熔光镇》 未寄出的信
    .accept 389 >>接受任务《物归己用》 巴基尔·斯瑞德
    .target 巴隆斯·阿历克斯顿
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 389 >>交任务《 前往熔光镇》 巴基尔·斯瑞德
    .target 典狱官塞尔沃特
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 对话，NPC在里面
    .turnin 167 >>交任务《 前往熔光镇》 我的兄弟……
    .turnin 168 >>交任务《 前往熔光镇》 收集记忆
    .target 维尔德·蓟草
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 2040 >>交任务《 前往熔光镇》 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target 沉默的舒尼
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]|cRXP_BUY_from him (if its up)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 比利巴布·旋轮
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
    .target 洛甘纳尔
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
step << NightElf
.dungeon BFD
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target 凯莱斯·月羽
step << !NightElf
.dungeon BFD
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step
.dungeon BFD
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 和 |cRXP_FRIENDLY_哨兵山德拉斯|r 交谈
    .accept 1199 >>接受任务《物归己用》 暮光之锤的末日
    .target 银月守卫玛纳杜斯
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>接受任务《物归己用》 寻找塞尔瑞德
    .target 哨兵山德拉斯
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance !Warlock
#name 20-21 黑海岸
#subgroup RestedXP 联盟 20-32 级
#defaultfor !Draenei
#next 21-23级 灰谷

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务《物归己用》 海中的水果
    .target 古博·布拉普
step
    .goto Darkshore,37.219,44.227
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 4740 >>接受任务《物归己用》 通缉：莫克迪普！
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接受任务《物归己用》 洞中的蘑菇
    .target 巴瑞萨斯·月影
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务《 前往熔光镇》 遥远的旅途
    .target 戈沙拉·夜语
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    >>|cRXP_WARN_如果你无法接取该任务，请跳过此步骤|r
    .accept 1275 >>接受任务《物归己用》 研究堕落
    .target 戈沙拉·夜语
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2139 >>接受任务《物归己用》 萨纳瑞恩的希望
    .target 萨纳瑞恩·绿树
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .accept 986 >>接受任务《物归己用》 丢失的主人
    .target 特伦希斯
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵艾莉萨·星风|r 交谈
    .accept 965 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target 哨兵艾莉萨·星风
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接受任务《物归己用》 深不可测的海洋
    .target 高尔博德·钢手
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
	.turnin 9633 >>交任务《 前往熔光镇》 前往奥伯丁
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .target 桑迪斯·织风
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .target 桑迪斯·织风
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4763 >>接受任务《物归己用》 黑木熊怪的堕落
    .target 桑迪斯·织风
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接受任务《物归己用》 健忘的勘察员
    .target 考古学家霍莉
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[空的净化碗]|cRXP_WARN_at the|r|cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763 
step
    #optional
    #completewith MistVeil
    +|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==注意你的呼吸条==|r
    >>|cRXP_WARN_潜入水下，游到船只后方的外侧|r
    >>|cRXP_WARN_在箭头指示位置，按下你的"与目标互动"快捷键，从船外拾取 |cRXP_LOOT_银色黎明的保险箱|r|r
    >>|cRXP_WARN_如果你不想这样做，可以潜入水下游到船只的底层，然后在里面拾取 |cRXP_LOOT_银色黎明的保险箱|r|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==注意你的呼吸条==|r
    >>|cRXP_WARN_潜入水下，游到船只后方的外侧|r
    >>|cRXP_WARN_在箭头指示位置，按下你的"与目标互动"快捷键，从船外拾取 |cRXP_LOOT_迷雾面纱的保险箱|r|r
    >>|cRXP_WARN_如果你不想这样做，可以潜入水下游到船只的底层，然后在里面拾取 |cRXP_LOOT_迷雾面纱的保险箱|r|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #completewith BottomKey
    #optional
    >>击杀 |cRXP_ENEMY_暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob 硬壳潮行蟹
    .mob 暗礁蟹
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4725 >>接受任务《物归己用》 搁浅的海龟
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_游到水中|r
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
    .target 基尔卡克·旋杆
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>击杀 |cRXP_ENEMY_狂暴暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[痛击] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob 狂暴暗礁蟹
    .mob 硬壳潮行蟹
step
    .goto Darkshore,54.93,12.19
    >>击杀 |cRXP_ENEMY_灰雾智者|r 和 |cRXP_ENEMY_灰雾潮行者|r。拾取他们的 |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage and they can also heal with|r |T136052:0|t[治疗波]|r
    >>|cRXP_WARN_You can LoS (Line of Sight) the |cRXP_ENEMY_灰雾智者|r'|r  |T136048:0|t[Lightning Bolts] |cRXP_WARN_around the sunken ship to avoid taking its damage|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob 灰雾潮行者
    .mob 灰雾智者
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>击杀 |cRXP_ENEMY_狂暴暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[痛击] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob 狂暴暗礁蟹
    .mob 硬壳潮行蟹
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>击杀 |cRXP_ENEMY_凶猛的森林陆行鸟|r。拾取他们的 |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob 凶猛的森林陆行鸟
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>击杀 |cRXP_ENEMY_月夜雄虎|r 和 |cRXP_ENEMY_月夜雌虎|r。拾取他们的 |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_月夜雌虎|r. They always attack with a |cRXP_ENEMY_月夜猛虎幼崽|r by their side|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob 月夜雄虎
    .mob 月夜雌虎
    .mob 月夜猛虎幼崽
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2098 >>交任务《 前往熔光镇》 基尔卡克的钥匙
    .accept 2078 >>接受任务《物归己用》 基尔卡克的报复
    .target 基尔卡克·旋杆
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >>与 |cRXP_FRIENDLY_机械打手4100型|r 对话以开始护送任务
    .skipgossip
    .target 机械打手4100型
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>护送 |cRXP_FRIENDLY_机械打手4100型|r to |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >>击杀 |cRXP_ENEMY_机械打手4100型|r once it turns hostile
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob 机械打手4100型
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >>交任务《 前往熔光镇》 基尔卡克的报复
    .target 基尔卡克·旋杆
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 966 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target 巴苏尔·影击
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
    .mob 暗滩狂热者
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 967 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target 巴苏尔·影击
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往暴风城大教堂内，与 the Cliffspring River Cave
step << Druid
    .goto Darkshore,54.99,33.41
    >>|cRXP_WARN_使用|r |T134776:0|t[空的峭壁之泉取样器] |cRXP_WARN_在峭壁之泉河洞入口处的水中使用|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>拾取散发绿光的 |cRXP_LOOT_Scaber Stalks|r 和 a |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_待在上层区域。如果上侧尽头没有 |cRXP_LOOT_毒帽蘑菇|r，就跳下去到下方南侧的房间获取一个|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_雷鳞御浪者|r 会施放|r |T135836:0|t[水流喷射] |cRXP_WARN_（远程瞬发：对附近敌人造成伤害并将其击退）——确保你站在不会被击退到洞穴下层的位置|r
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
    >>打开 |cRXP_PICK_Blackwood Fruit Stores|r. 拾取地上的 it for the |T134013:0|t|cRXP_LOOT_[黑木水果]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_萨巴克希斯|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_堕落护符|r
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
    >>打开 |cRXP_PICK_Blackwood Nut Stores|r. 拾取地上的 it for the |T133944:0|t|cRXP_LOOT_[黑木坚果]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_萨巴克希斯|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_堕落护符|r
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
    >>打开 |cRXP_PICK_Blackwood Grain Stores|r. 拾取地上的 it for the |T134059:0|t|cRXP_LOOT_[黑木谷物]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_萨巴克希斯|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_堕落护符|r
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
    .cast 16072 >>|cRXP_WARN_Use the|r |T134712:0|t[装满水的净化碗] |cRXP_WARN_at the |cRXP_PICK_Bonfire|r to summon|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,黑木熊怪的堕落 剧情
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>击杀 |cRXP_ENEMY_萨巴克希斯|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_堕落护符|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob 萨巴克希斯
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_蓟熊幼崽|r which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob 雌蓟熊
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
    .target 萨纳瑞恩·绿树
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 986 >>交任务《 前往熔光镇》 丢失的主人
    .accept 993 >>接受任务《物归己用》 丢失的主人
    .target 特伦希斯
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .accept 993 >>接受任务《物归己用》 丢失的主人
    .target 特伦希斯
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务《 前往熔光镇》 深不可测的海洋
    .target 高尔博德·钢手
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6122 >>交任务《 前往熔光镇》 毒水之源
    .target 奥兰达利亚·夜歌
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763 >>交任务《 前往熔光镇》 黑木熊怪的堕落
    .target 桑迪斯·织风
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务《 前往熔光镇》 洞中的蘑菇
    .accept 948 >>接受任务《物归己用》 安努
    .target 巴瑞萨斯·月影
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4725 >>交任务《 前往熔光镇》 搁浅的海龟
    .turnin 4727 >>交任务《 前往熔光镇》 搁浅的海龟
    .target 温尼斯·布莱葛
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务《 前往熔光镇》 海中的水果
    .target 古博·布拉普
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target 凯莱斯·月羽
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[长剑]|cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 923,1 --Longsword (1)
    .target 阿瑞耶尔·天影
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[长剑]
    .collect 923,1 --Longsword (1)
    .target 阿瑞耶尔·天影
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塞尤娜|r underground
    .trainer >>训练你的职业技能
    .target 塞尤娜
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
    .target 维斯派塔斯
    .zoneskip Teldrassil,1
step
    #optional
    #completewith next
    .isOnQuest 1138  
    >>击杀 |cRXP_ENEMY_暗礁蟹|r。拾取他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob 暗礁蟹
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_莫克迪普|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_灰雾猎人|r in the wave that he spawns with alive)|r
    >>击杀 the |cRXP_ENEMY_灰雾战士|r 和 |cRXP_ENEMY_灰雾猎人|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_莫克迪普|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_灰雾滩行者|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_灰雾战士|r, and Wave 3 has a level 19 |cRXP_ENEMY_莫克迪普|r and a level 16-17 |cRXP_ENEMY_灰雾猎人|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan 莫克迪普
    .mob 灰雾战士
    .mob 灰雾猎人
    .mob 灰雾滩行者
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务《 前往熔光镇》 安努
    .accept 944 >>接受任务《物归己用》 主宰之剑
    .turnin -952 >>交任务《 前往熔光镇》 古树之林 << NightElf
    .target 安努
step
    .goto Darkshore,38.54,86.05,100 >>前往暴风城大教堂内，与 The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>击杀 |cRXP_ENEMY_暮光信徒|r and |cRXP_ENEMY_暮光暴徒|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>|cRXP_WARN_该物品掉率极低，很可能不会掉落。完成其他目标后即可跳过此步骤|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob 暮光信徒
    .mob 暮光暴徒
step
    #optional
    .goto Darkshore,38.54,86.05
    >>发现主宰之剑
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >>|cRXP_WARN_使用|r |T134715:0|t[占卜之水] |cRXP_WARN_并将其放置在地面上|r
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
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_瑟瑞露尼|r. This will start an escort
    >>|cRXP_WARN_这将开始一个护送任务。如果她不在，请跳过此步骤|r
    .accept 945 >>接受任务《物归己用》 护送瑟瑞露尼
    .target 瑟瑞露尼
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_瑟瑞露尼|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_这将开始一个护送任务。你可能需要等待他重新刷新，或等其他玩家完成护送|r
    .turnin 729 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 731,1 >>接受任务《物归己用》 健忘的勘察员
    .target 勘察员雷塔维
step
    .isOnQuest 731
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_勘察员雷塔维|r through the Excavation|r
    .complete 731,1
    .target 勘察员雷塔维
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
    >>击杀 |cRXP_ENEMY_硬壳潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹|r。拾取他们的 |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_如果掉率运气不佳，请跳过此步骤并放弃任务"海中的水果"|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob 硬壳潮行蟹
    .mob 暗礁蟹
step
    .isOnQuest 993
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃科尔|r
    >>|cRXP_WARN_这将开始一个护送任务。在与他交谈前，先清理洞穴附近的 |cRXP_ENEMY_熊怪|r|r
    .turnin 993 >>交任务《 前往熔光镇》 丢失的主人
    .accept 994,1 >>接受任务《物归己用》 杀出重围
    .target 沃科尔
step
    .isQuestTurnedIn 993
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃科尔|r
    >>|cRXP_WARN_这将开始一个护送任务。在与他交谈前，先清理洞穴附近的 |cRXP_ENEMY_熊怪|r|r
    .accept 994,1 >>接受任务《物归己用》 杀出重围
    .target 沃科尔
step
    .isOnQuest 994
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>护送 |cRXP_FRIENDLY_沃科尔|r
    >>After crossing the 3rd torch once exiting the cave, a |cRXP_ENEMY_Furlbog|r will spawn from both sides and attack |cRXP_FRIENDLY_沃科尔|r
    >>Halfway to the road,a |cRXP_ENEMY_Furlbogs|rwill spawn from both sides 和 attack |cRXP_FRIENDLY_沃科尔|r
    .complete 994,1 --Help Volcor to the road (1)
    .target 沃科尔
step
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >>向南前往灰谷
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance !Warlock
#name 21-23级 灰谷
#subgroup RestedXP 联盟 20-32 级
#defaultfor !Draenei
#next 23-24级 湿地

step
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 970 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target 净化者德尔格伦
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1010 >>接受任务《物归己用》 巴斯兰的头发
	.target 奥雷迪尔·阔叶
step
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>击杀 |cRXP_ENEMY_暗滩祭司|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_暗滩执行者|r 和 |cRXP_ENEMY_暗滩挖掘者|r。拾取他们的 |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob 暗滩祭司
    .mob 暗滩精兵
    .mob 暗滩执行者
    .mob 暗滩挖掘者
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|rin the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_它们看起来像小型的棕色袋子，可能会半埋在地面中，因此不太容易发现|r
    >>|cRXP_WARN_请确保已启用|r |T134916:0|t[寻找草药] |cRXP_WARN_，这样才能在小地图上看到它们|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|rin the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_它们看起来像小型的棕色袋子，可能会半埋在地面中，因此不太容易发现|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .turnin 1010 >>交任务《 前往熔光镇》 巴斯兰的头发
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
    .target 奥雷迪尔·阔叶
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
    .target 奥雷迪尔·阔叶
step
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 970 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 973 >>接受任务《物归己用》 奥萨拉克斯之塔
	.target 净化者德尔格伦
step
    .isQuestTurnedIn 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .accept 973 >>接受任务《物归己用》 奥萨拉克斯之塔
	.target 净化者德尔格伦
step
    #optional
    #completewith TZS
    .subzone 415 >>前往萨兰纳尔
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar >>获得塞拉摩飞行路径
	.target 黛琳希亚
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .accept 1008 >>接受任务《物归己用》 佐拉姆海岸
    .target 辛德瑞尔·速火
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin -10752 >>交任务《 前往熔光镇》 前往灰谷
    .accept 991 >>接受任务《物归己用》 莱恩的净化
    .accept 1054 >>接受任务《物归己用》 解除威胁
    .target 莱恩·狼行者
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >>将你的炉石设置为暮色森林
    .target 旅店老板基姆利雅
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target 皮尔图拉斯·怀特姆恩
    .turnin 1020 >>交任务《 前往熔光镇》 奥雷迪尔的药剂
    .timer 24,奥雷迪尔的药剂 剧情
    .accept 1033 >>接受任务《物归己用》 月神之泪
step
.dungeon WC
    #completewith TravelRatchet
    +|cRXP_WARN_在完成接下来的两个步骤时开始寻找哀嚎洞穴的小队。很快你就会前往贫瘠之地刷哀嚎洞穴|r
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
    >>击杀 |cRXP_ENEMY_达尔·血爪|r，拾取他的 |cRXP_LOOT_颅骨|r
    >>|cRXP_ENEMY_达尔·血爪|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan 达尔·血爪
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>拾取地上的 |cRXP_LOOT_月神之泪|r on the ground
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
    .target 布拉高克
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target 起重机操作员比戈弗兹
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
    .target 纳尔帕克
    .target 厄布鲁
step
.dungeon WC
    #completewith EnterWC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_此任务可以在哀嚎洞穴副本内或副本外完成|r
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
    >>|cRXP_WARN_此任务需要在哀嚎洞穴副本外完成|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob 疯狂的马格利什
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +进入哀嚎洞穴
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
    >>击杀 |cRXP_ENEMY_吞噬者穆坦努斯|r，拾取他以获得 |T135229:0|t[|cRXP_LOOT_发光的碎片|r]
    >>|cRXP_WARN_使用 |T135229:0|t[|cRXP_LOOT_发光的碎片|r] 来开始该任务|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>接受任务《物归己用》 发光的碎片
    .use 10441 -- Glowing Shard
    .skipgossip
    .target 纳拉雷克斯的信徒
    .mob 吞噬者穆坦努斯
step
.dungeon WC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_此任务可以在哀嚎洞穴副本内或副本外完成|r
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
    .target 斯布特瓦夫
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务《 前往熔光镇》 港口的麻烦
    .target 起重机操作员比戈弗兹
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >>沿着哀嚎洞穴上方的陡峭山坡向上攀爬，跟随箭头前进
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 >>交任务《 前往熔光镇》 发光的碎片
    .target 菲拉·古风
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
    .target 纳尔帕克
    .target 厄布鲁
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target 厄布鲁
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target 纳尔帕克
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Hearth to 阿斯特兰纳，灰谷
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
    .subzoneskip 415
step
    .goto Ashenvale,46.37,46.38
    >>拾取地上的 |cRXP_LOOT_月神之泪|r on the ground
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
    >>击杀 |cRXP_ENEMY_达尔·血爪|r，拾取他的 |cRXP_LOOT_颅骨|r
    >>|cRXP_ENEMY_达尔·血爪|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan 达尔·血爪
step
    #completewith next
    .subzone 415 >>前往萨兰纳尔
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1054 >>交任务《 前往熔光镇》 解除威胁
    .target 莱恩·狼行者
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target 皮尔图拉斯·怀特姆恩
    .turnin 1033 >>交任务《 前往熔光镇》 月神之泪
    .timer 17,月神之泪 剧情
    .accept 1034 >>接受任务《物归己用》 星尘废墟
step
    .goto Ashenvale,33.30,67.79
    >>拾取散发绿光的 |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_它们的刷新点分布在整个岛屿各处|r
    .complete 1034,1
step
    #completewith ToA973
    .goto Ashenvale,31.67,64.24,15 >>前往山脚下
    .goto Ashenvale,31.21,61.60,15 >>在攀爬山体时径直向北跑
step
    .isOnQuest 973
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>击杀 |cRXP_ENEMY_伊克鲁德·玛格苏尔|r，拾取他的 |cRXP_LOOT_典籍|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 |cRXP_ENEMY_虚空行者|r. Stop this cast if you're able to|r
    .complete 973,1
    .mob 伊克鲁德·玛格苏尔
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务《 前往熔光镇》 护送瑟瑞露尼
	.target 瑟瑞希尔
step
    #label ToA973
    .isQuestComplete 973
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .target 净化者德尔格伦
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰洛尼斯的尸体|r
	.turnin 991 >>交任务《 前往熔光镇》 莱恩的净化
    .accept 1023 >>接受任务《物归己用》 莱恩的净化
    .target 泰洛尼斯的尸体
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>击杀 |cRXP_ENEMY_Saltspittle Murlocs|r。拾取他们的 |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_先知|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob 盐沫战士
	.mob 盐沫泥浆鱼人
	.mob 盐沫智者
	.mob 盐沫污水鱼人
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target 塔尔伦
    .goto Ashenvale,14.79,31.29
    .accept 1007 >>接受任务 远古雕像
step
    #completewith nagas
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
    >>|cRXP_WARN_暂时不要特意绕路去完成这个|r
	.mob 怒尾御浪者
	.mob 怒尾巫师
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>拾取散发绿光的 |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target 塔尔伦
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>交任务誓缚 Statuette
    .timer 22,远古雕像 剧情
    .accept 1009 >>接受任务《物归己用》 卢泽尔
step
    .goto Ashenvale,6.528,13.361
    >>击杀 |cRXP_ENEMY_卢泽尔|r。拾取她的 |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_卢泽尔|r
    >>|cRXP_ENEMY_薇丝比娅|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考|r
	.unitscan 薇丝比娅
	.mob 卢泽尔
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>击杀 |cRXP_ENEMY_卢泽尔|r。拾取她的 |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_薇丝比娅|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan 薇丝比娅
	.mob 卢泽尔
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_在完成接下来的步骤时开始寻找黑暗深渊的小队。很快你就会去刷黑暗深渊|r
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
	.mob 怒尾御浪者
	.mob 怒尾巫师
    .mob 怒尾侍从
    .mob 怒尾女祭司
    .mob 怒尾纳迦
    .mob 怒尾海巫
    .complete 1008,1
step
    #label RuuzelTurnin
    .isQuestComplete 1009
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target 塔尔伦
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>交任务《 前往熔光镇》 卢泽尔
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +在组建黑暗深渊小队的同时刷 |cRXP_ENEMY_娜迦|r，组好队伍后前往黑暗深渊
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
    .mob 黑暗深渊海潮祭司
    .mob 黑暗深渊智者
    .mob 腐根游荡者
    .mob 腐根萨特
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >>前往黑暗深渊副本入口并进入副本
    >>|cRXP_WARN_看看你的小队中是否有人可以从铁炉堡与你共享任务"深渊中的知识"|r
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
    .turnin -1198 >>交任务 寻找塞尔瑞德
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
    >>击杀 |cRXP_ENEMY_暮光领主凯尔里斯|r，并拾取他的 |cRXP_LOOT_头颅|r
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
    >>如果你还没有完成该任务，请点击副本尽头的祭坛将你传送回入口。副本外的怪物也有几率掉落该任务物品。
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target 洛甘纳尔
step
    .hs >>Hearth to 阿斯特兰纳，灰谷
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TZS2
    .subzone 415 >>前往萨兰纳尔
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1023 >>交任务《 前往熔光镇》 莱恩的净化
    .target 莱恩·狼行者
step
    #optional
    #sticky
    .destroy 5505 >>摧毁 |T133741:0|t[泰洛尼斯的日记]。你已经不再需要它了
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target 皮尔图拉斯·怀特姆恩
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>交任务《 前往熔光镇》 星尘废墟
step
    #label TZS2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
	.target 辛德瑞尔·速火
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >>交任务《 前往熔光镇》 佐拉姆海岸
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fly Auberdine >>飞往黑海岸
    .target 黛琳希亚
step
    #optional
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务《 前往熔光镇》 海中的水果
step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target 哨兵戈琳达·纳希恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务《 前往熔光镇》 通缉：莫克迪普！
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 1275 >>交任务《 前往熔光镇》 研究堕落
    .target 戈沙拉·夜语
step
    .isOnQuest 994
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 994 >>交任务《 前往熔光镇》 杀出重围
    .target 特伦希斯
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target 考古学家霍莉
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target 考古学家霍莉
step << !Hunter !NightElf !Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往 Darkshore
    .zoneskip Darnassus
step << NightElf/Hunter/Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
    >>|cRXP_WARN_如果你还没有泰达希尔的飞行点，请从那里的码头乘船前往|r << !NightElf
	.target 凯莱斯·月羽
step
.dungeon BFD
    .isOnQuest 1199,1200,741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target 凯莱斯·月羽
step
    #optional
    #completewith next
    .isOnQuest 1199,1200,741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step
    .isOnQuest 1199,1200,741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target 首席考古学家杜瑟·灰胡
    .turnin 741 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target 首席考古学家杜瑟·灰胡
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 227 >>学习锤类武器
    .target 伊琳尼雅·月火
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 交谈
    .turnin 1199 >>交任务《 前往熔光镇》 暮光之锤的末日
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target 银月守卫玛纳杜斯
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞尔高姆|r 交谈
    .turnin 1200 >>交任务《 前往熔光镇》 黑暗深渊中的恶魔
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target 哨兵塞尔高姆
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darnassus,1
step
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Auberdine >>飞往奥伯丁，黑海岸
    .target 维斯派塔斯
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance Warlock
#name 20-23 黑海岸/灰谷
#subgroup RestedXP 联盟 20-32 级
#next 23-24级 湿地

step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shaussiy|r 交谈
    .home >>将你的炉石设置为暮色森林
    .target 旅店老板莎希因
    .bindlocation 442
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Stormwind>>飞往暴风城
    .target 谢尔雷·布隆迪尔
step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰场。下楼
step << Warlock
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接受任务《物归己用》 噬魂者
    .target 黑暗缚灵者加科因
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    +Zone into The Stockades. You will now "Ghetto 将炉石使用回夜色镇
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>>使用 卡炉石 返回黑海岸。操作方式：进入监狱副本，然后将下面的链接复制并粘贴到聊天栏中，等待 1 分钟倒计时结束
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>运行 InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> 点击这里
step
    .goto Darkshore,37.219,44.227
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 4740 >>接受任务《物归己用》 通缉：莫克迪普！
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接受任务《物归己用》 健忘的勘察员
    .target 考古学家霍莉
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
	.turnin 9633 >>交任务《 前往熔光镇》 前往奥伯丁
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .target 桑迪斯·织风
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .target 桑迪斯·织风
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务《 前往熔光镇》 遥远的旅途
    .target 戈沙拉·夜语
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    >>|cRXP_WARN_如果你无法接取该任务，请跳过此步骤|r
    .accept 1275 >>接受任务《物归己用》 研究堕落
    .target 戈沙拉·夜语
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_莫克迪普|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_灰雾猎人|r in the wave that he spawns with alive)|r
    >>击杀 the |cRXP_ENEMY_灰雾战士|r 和 |cRXP_ENEMY_灰雾猎人|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_莫克迪普|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_灰雾滩行者|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_灰雾战士|r, and Wave 3 has a level 19 |cRXP_ENEMY_莫克迪普|r and a level 16-17 |cRXP_ENEMY_灰雾猎人|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan 莫克迪普
    .mob 灰雾战士
    .mob 灰雾猎人
    .mob 灰雾滩行者
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_这将开始一个护送任务。你可能需要等待他重新刷新，或等其他玩家完成护送|r
    .turnin 729 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 731,1 >>接受任务《物归己用》 健忘的勘察员
    .target 勘察员雷塔维
step
    .isOnQuest 731
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_勘察员雷塔维|r through the Excavation|r
    .complete 731,1
    .target 勘察员雷塔维
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_瑟瑞露尼|r. This will start an escort
    >>|cRXP_WARN_这将开始一个护送任务。如果她不在，请跳过此步骤|r
    .accept 945 >>接受任务《物归己用》 护送瑟瑞露尼
    .target 瑟瑞露尼
step
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_瑟瑞露尼|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .isOnQuest 10752,945,4740,731
    .zone Ashenvale >>向南前往灰谷
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1010 >>接受任务《物归己用》 巴斯兰的头发
	.target 奥雷迪尔·阔叶
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|rin the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_它们看起来像小型的棕色袋子，可能会半埋在地面中，因此不太容易发现|r
    >>|cRXP_WARN_请确保已启用|r |T134916:0|t[寻找草药] |cRXP_WARN_，这样才能在小地图上看到它们|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|rin the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_它们看起来像小型的棕色袋子，可能会半埋在地面中，因此不太容易发现|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .turnin 1010 >>交任务《 前往熔光镇》 巴斯兰的头发
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
    .target 奥雷迪尔·阔叶
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
    .target 奥雷迪尔·阔叶
step
    #optional
    #completewith TZS
    .subzone 415 >>前往萨兰纳尔
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar >>获得塞拉摩飞行路径
	.target 黛琳希亚
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .accept 1008 >>接受任务《物归己用》 佐拉姆海岸
    .target 辛德瑞尔·速火
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin -10752 >>交任务《 前往熔光镇》 前往灰谷
    .accept 991 >>接受任务《物归己用》 莱恩的净化
    .accept 1054 >>接受任务《物归己用》 解除威胁
    .target 莱恩·狼行者
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >>将你的炉石设置为暮色森林
    .target 旅店老板基姆利雅
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target 皮尔图拉斯·怀特姆恩
    .turnin 1020 >>交任务《 前往熔光镇》 奥雷迪尔的药剂
    .timer 24,奥雷迪尔的药剂 剧情
    .accept 1033 >>接受任务《物归己用》 月神之泪
step
    .goto Ashenvale,46.37,46.38
    >>拾取地上的 |cRXP_LOOT_月神之泪|r on the ground
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target 皮尔图拉斯·怀特姆恩
    .turnin 1033 >>交任务《 前往熔光镇》 月神之泪
    .timer 17,月神之泪 剧情
    .accept 1034 >>接受任务《物归己用》 星尘废墟
step
    .goto Ashenvale,33.30,67.79
    >>拾取散发绿光的 |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_它们的刷新点分布在整个岛屿各处|r
    .complete 1034,1
step
    #optional
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >>前往山脚下
    .goto Ashenvale,31.21,61.60,15 >>在攀爬山体时径直向北跑
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务《 前往熔光镇》 护送瑟瑞露尼
	.target 瑟瑞希尔
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰洛尼斯的尸体|r
	.turnin 991 >>交任务《 前往熔光镇》 莱恩的净化
    .accept 1023 >>接受任务《物归己用》 莱恩的净化
    .target 泰洛尼斯的尸体
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>击杀 |cRXP_ENEMY_Saltspittle Murlocs|r。拾取他们的 |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_先知|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob 盐沫战士
	.mob 盐沫泥浆鱼人
	.mob 盐沫智者
	.mob 盐沫污水鱼人
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target 塔尔伦
    .goto Ashenvale,14.79,31.29
    .accept 1007 >>接受任务 远古雕像
step
    #completewith nagas
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
    >>|cRXP_WARN_暂时不要特意绕路去完成这个|r
	.mob 怒尾御浪者
	.mob 怒尾巫师
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>拾取散发绿光的 |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target 塔尔伦
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>交任务誓缚 Statuette
    .timer 22,远古雕像 剧情
    .accept 1009 >>接受任务《物归己用》 卢泽尔
step
    .goto Ashenvale,6.528,13.361
    >>击杀 |cRXP_ENEMY_卢泽尔|r。拾取她的 |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_卢泽尔|r
    >>|cRXP_ENEMY_薇丝比娅|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考|r
	.unitscan 薇丝比娅
	.mob 卢泽尔
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>击杀 |cRXP_ENEMY_卢泽尔|r。拾取她的 |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_薇丝比娅|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan 薇丝比娅
	.mob 卢泽尔
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_在完成接下来的步骤时开始寻找黑暗深渊的小队。很快你就会去刷黑暗深渊|r
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
	.mob 怒尾御浪者
	.mob 怒尾巫师
    .mob 怒尾侍从
    .mob 怒尾女祭司
    .mob 怒尾纳迦
    .mob 怒尾海巫
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target 塔尔伦
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>交任务《 前往熔光镇》 卢泽尔
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +在组建黑暗深渊小队的同时刷 |cRXP_ENEMY_娜迦|r，组好队伍后前往黑暗深渊
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
    .mob 黑暗深渊海潮祭司
    .mob 黑暗深渊智者
    .mob 腐根游荡者
    .mob 腐根萨特
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >>前往黑暗深渊副本入口并进入副本
    >>|cRXP_WARN_看看你的小队中是否有人可以从铁炉堡与你共享任务"深渊中的知识"|r
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
    .turnin -1198 >>交任务 寻找塞尔瑞德
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
    >>击杀 |cRXP_ENEMY_暮光领主凯尔里斯|r，并拾取他的 |cRXP_LOOT_头颅|r
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
    >>如果你还没有完成该任务，请点击副本尽头的祭坛将你传送回入口。副本外的怪物也有几率掉落该任务物品。
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >>Hearth to 阿斯特兰纳，灰谷
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TRoS
    .subzone 415 >>前往萨兰纳尔
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1023 >>交任务《 前往熔光镇》 莱恩的净化
    .accept 1025 >>接受任务《物归己用》 先发制人
    .target 莱恩·狼行者
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
	.target 辛德瑞尔·速火
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >>交任务《 前往熔光镇》 佐拉姆海岸
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target 皮尔图拉斯·怀特姆恩
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>交任务《 前往熔光镇》 星尘废墟
step
    #optional
    #sticky
    .destroy 5505 >>摧毁 |T133741:0|t[泰洛尼斯的日记]。你已经不再需要它了
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
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob 污林战士
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob 污林图腾师
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob 污林巨熊怪
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob 污林卫兵
step
    .goto Ashenvale,49.79,67.21    
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .accept 1016 >>接受任务《物归己用》 元素护腕
    .target 哨兵维尔莉妮·星坠
step
    #loop
    .goto Ashenvale,44.78,70.07,0
    .goto Ashenvale,48.90,70.05,0
    .goto Ashenvale,51.28,70.51,0
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    >>击杀 |cRXP_ENEMY_污浊的水元素|r。拾取他们的 |cRXP_LOOT_Bracers|r
    .collect 12220,5,1016,1
    .mob 污浊的水元素
step
    .use 5456 >>|cRXP_WARN_Use the|r |T134943:0|t[占卜卷轴] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
    .complete 1016,1 -- Divined Scroll
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .turnin 1016 >>交任务《 前往熔光镇》 元素护腕
    .accept 1017 >>接受任务《物归己用》 召唤者
    .target 哨兵维尔莉妮·星坠
step
    .isOnQuest 1017,1716,1025,4740,731
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >>前往暴风城大教堂内，与 The Barrens. 跟随 the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >>Ascend Dreadmist Peak. 跟随 the Arrow to the top
step
    .goto The Barrens,48.22,19.15
    >>击杀 |cRXP_ENEMY_萨瑞鲁斯·法伯尼|r，拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only 等级 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob 萨瑞鲁斯·法伯尼
step
.dungeon !WC
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
.dungeon WC
    #completewith TroubleDocks
    +|cRXP_WARN_开始寻找哀嚎洞穴的小队。你很快就会去刷哀嚎洞穴|r
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知塔卡尔|r
    .turnin 1716 >>交任务《 前往熔光镇》 噬魂者
    .accept 1738 >>接受任务《物归己用》 同心树
    .target 先知塔卡尔
step << Warlock
.dungeon !WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘齿城飞行路径
    .fly Astranaar>>飞往阿斯特兰纳，灰谷
    .target 布拉高克  
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘齿城飞行路径
    .target 布拉高克
step
.dungeon WC
    #label TroubleDocks
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target 起重机操作员比戈弗兹
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
    .target 纳尔帕克
    .target 厄布鲁
step
.dungeon WC
    #completewith EnterWC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_此任务可以在哀嚎洞穴副本内或副本外完成|r
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
    >>|cRXP_WARN_此任务需要在哀嚎洞穴副本外完成|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob 疯狂的马格利什
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +进入哀嚎洞穴
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
    >>击杀 |cRXP_ENEMY_吞噬者穆坦努斯|r，拾取他以获得 |T135229:0|t[|cRXP_LOOT_发光的碎片|r]
    >>|cRXP_WARN_使用 |T135229:0|t[|cRXP_LOOT_发光的碎片|r] 来开始该任务|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>接受任务《物归己用》 发光的碎片
    .use 10441 -- Glowing Shard
    .skipgossip
    .target 纳拉雷克斯的信徒
    .mob 吞噬者穆坦努斯
step
.dungeon WC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_此任务可以在哀嚎洞穴副本内或副本外完成|r
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
    .target 斯布特瓦夫
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务《 前往熔光镇》 港口的麻烦
    .target 起重机操作员比戈弗兹
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >>沿着哀嚎洞穴上方的陡峭山坡向上攀爬，跟随箭头前进
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 >>交任务《 前往熔光镇》 发光的碎片
    .target 菲拉·古风
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
    .target 纳尔帕克
    .target 厄布鲁
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target 厄布鲁
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target 纳尔帕克
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Hearth to 阿斯特兰纳，灰谷
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1025 >>交任务《 前往熔光镇》 先发制人
    .target 莱恩·狼行者
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
    >>击杀 |cRXP_ENEMY_达尔·血爪|r，拾取他的 |cRXP_LOOT_颅骨|r
    >>|cRXP_ENEMY_达尔·血爪|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan 达尔·血爪
step << Warlock
    #completewith next
    .goto Ashenvale,31.50,31.50,40 >>前往暴风城大教堂内，与 The Ruins of Ordil'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>拾取地上的 the |cRXP_LOOT_同心树|rgiant tree
    .complete 1738,1
step
    #completewith next
    .goto Ashenvale,40.1,53.1,0
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    >>|cRXP_WARN_Ensure you die on the east side of the |cRXP_ENEMY_鱼人|r lake so you are sent to Astranaar|r
step
    .goto Ashenvale,49.79,67.21    
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .turnin 1017 >>交任务《 前往熔光镇》 召唤者
	>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[艾露恩之光号]
    >>|T134754:0|t[艾露恩之光号]|cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
    >>|cRXP_WARN_这是一次性消耗品，仅在紧急情况下使用|r
    .target 哨兵维尔莉妮·星坠
step
    #completewith FlyAuber
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
.dungeon !WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1054 >>交任务《 前往熔光镇》 解除威胁
    .turnin 1025 >>交任务《 前往熔光镇》 先发制人
    .target 莱恩·狼行者
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1054 >>交任务《 前往熔光镇》 解除威胁
    .target 莱恩·狼行者
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fly Auberdine >>飞往黑海岸
    .target 黛琳希亚
step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target 哨兵戈琳达·纳希恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务《 前往熔光镇》 通缉：莫克迪普！
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 1275 >>交任务《 前往熔光镇》 研究堕落
    .target 戈沙拉·夜语
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target 考古学家霍莉
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target 考古学家霍莉
step
    .goto 1439,33.213,39.883
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step
    #optional
    #completewith next
    .isOnQuest 741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step
    .isOnQuest 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target 首席考古学家杜瑟·灰胡
    .turnin 741 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target 首席考古学家杜瑟·灰胡
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 227 >>学习锤类武器
    .target 伊琳尼雅·月火
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 交谈
    .turnin 1199 >>交任务《 前往熔光镇》 暮光之锤的末日
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target 银月守卫玛纳杜斯
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞尔高姆|r 交谈
    .turnin 1200 >>交任务《 前往熔光镇》 黑暗深渊中的恶魔
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target 哨兵塞尔高姆
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fp Rut'theran >>获取鲁瑟兰村的飞行点
    .fly Auberdine >>飞往奥伯丁，黑海岸
    .target 维斯派塔斯
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
]])