if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor NightElf
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 1-11 Teldrassil
#next 12-14 黑海岸 

step << !NightElf
    #sticky
    #completewith next
    +You have selected a guide meant for Night Elves. You should choose the same starter zone that you start in
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >>接受任务《物归己用》 自然的平衡
step
    #sticky
    #label balance1
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 和 |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .accept 4495 >>接受任务《物归己用》 好朋友
    .goto Teldrassil,60.899,41.961
    .target +Dirania Silvershine
    .accept 458 >>接受任务《物归己用》 森林守护者
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step << Hunter
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Grind en route until you are 610xp away from level 4 (790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务《 前往熔光镇》 好朋友
    .target Iverron
    .accept 3519 >>接受任务《物归己用》 需要帮助的朋友
step << Hunter
    #completewith next
    .hs >> Hearth to Shadowglen
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务《 前往熔光镇》 森林守护者
    .target Tarindrella
    .accept 459 >>接受任务《物归己用》 森林守护者
step << Druid/Priest
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >>交任务《 前往熔光镇》 自然的平衡 << Hunter
    .turnin 456 >>交任务《 前往熔光镇》 自然的平衡 << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >>接受任务《物归己用》 自然的平衡
	.accept 3116 >>接受任务《物归己用》 简易符记 << Warrior
	.accept 3117 >>接受任务《物归己用》 风化符记 << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >>接受任务《物归己用》 神圣符记 << Priest
	.accept 3120 >>接受任务《物归己用》 绿色符记 << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r
	.vendor >>出售垃圾物品
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r
	.turnin 3116 >>交任务《 前往熔光镇》 简易符记
    .trainer >>训练你的职业技能
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务《 前往熔光镇》 好朋友
    .target Iverron
    .accept 3519 >>接受任务《物归己用》 需要帮助的朋友
step << !Hunter
    #completewith next
    .hs >> Hearth to Shadowglen
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务《 前往熔光镇》 森林守护者
    .target Tarindrella
    .accept 459 >>接受任务《物归己用》 森林守护者
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >>交任务《 前往熔光镇》 自然的平衡
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r
    .turnin 3519 >>交任务《 前往熔光镇》 需要帮助的朋友
    .target Dirania Silvershine
    .accept 3521 >>接受任务《物归己用》 埃沃隆的解药
step
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r
	.vendor >> |cRXP_BUY_Buy 3 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
	.vendor >>出售垃圾物品 << !Hunter
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r
    .accept 916 >> Accept Webwood Venom
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >>交任务《 前往熔光镇》 风化符记
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Ayanna Everstride
step
    #loop
    .goto Teldrassil,58.21,36.40,0
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20,10,0
    >>拾取散发绿光的 |cRXP_LOOT_Moonpetal Lilies|r on the ground
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>击杀 |cRXP_ENEMY_树林蜘蛛|r。拾取他们的 |cRXP_LOOT_Ichor|r 和 |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>击杀 |cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。拾取他们的 |cRXP_LOOT_Mushrooms|r 和 |cRXP_LOOT_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 459 >>交任务《 前往熔光镇》 森林守护者
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r
    .turnin 3521 >>交任务《 前往熔光镇》 埃沃隆的解药
    .target Dirania Silvershine
    .accept 3522 >>接受任务《物归己用》 埃沃隆的解药
step << !Priest !Druid
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r
	.vendor >>出售垃圾物品 << !Hunter
	.vendor >> |cRXP_BUY_Buy 3 or 4 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .target Keina
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r
	.trainer >>训练你的职业技能
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.89,41.67,10 >> Head up the ramp
step << Priest
    .goto Teldrassil,59.521,40.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_琳莱尔|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Lyrai
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 交谈
	.turnin 3119 >>交任务《 前往熔光镇》 神圣符记
	.trainer >>训练你的职业技能
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r
    .turnin 916 >> Turn in Webwood Venom
    .target Gilshalan Windwalker
    .accept 917 >>接受任务《物归己用》 树林蜘蛛的卵
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Ascend the Aldrassil Tree
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务《 前往熔光镇》 绿色符记
    .train 8921 >> Train |T136096:0|t[Moonfire]
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r
    .turnin 3522 >>交任务《 前往熔光镇》 埃沃隆的解药
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>进入 Shadowthread Cave
step
    .goto Teldrassil,57.0,26.4
    >>拾取地上的 a |cRXP_LOOT_树林蜘蛛的卵|ron the ground at the back of the Cave
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r
    .turnin 917 >>交任务《 前往熔光镇》 树林蜘蛛的卵
    .target Gilshalan Windwalker
    .accept 920 >>接受任务《物归己用》 特纳隆的召唤
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 920 >>交任务《 前往熔光镇》 特纳隆的召唤
    .target Tenaron Stormgrip
    .accept 921 >>接受任务《物归己用》 泰达希尔：传递信息
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> |cRXP_WARN_Use the|r |T134776:0|t[Crystal Phial] |cRXP_WARN_at the Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >>交任务《 前往熔光镇》 自然的平衡
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r
    .accept 5622 >>接受任务《物归己用》 月神的恩赐
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 921 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Tenaron Stormgrip
    .accept 928 >>接受任务《物归己用》 泰达希尔：传递信息
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >>接受任务《物归己用》 多兰纳尔的货物
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >>接受任务《物归己用》 赛恩的要求
step
    #completewith DenlansEarth
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
	#completewith DenlansEarth
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r
    >>|cRXP_WARN_Make sure you have 1 empty bagspace slot before accepting this quest|r
    .accept 997 >>接受任务《物归己用》 德纳兰的泥土
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >>接受任务《物归己用》 烦恼之风
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5622 >>交任务《 前往熔光镇》 月神的恩赐
    .target Laurna Morninglight
    .accept 5621 >>接受任务《物归己用》 月光之衣
	.trainer >>训练你的职业技能
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 交谈
    .vendor >> |cRXP_BUY_Buy and equip a|r |T135426:0|t[Small Throwing Knife]
    .target Aldia
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塔隆凯·捷根|r atop the Tree
    .accept 932 >>接受任务《物归己用》 扭曲的仇恨
    .accept 2438 >>接受任务《物归己用》 翡翠摄梦符
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows]|cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows]|cRXP_BUY_until your Quiver is full|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it (5s 36c), if not skip this step|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    .equip 16,2488 >>|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto]|cRXP_BUY_if you can afford it (4s 1c), if not skip this step|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    .equip 16,2494 >>|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick] |cRXP_BUY_if you can afford it (5s 4c), if not skip this step|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    .equip 16,2495 >>|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .turnin 2159,2 >>交任务《 前往熔光镇》 多兰纳尔的货物 << Hunter
    .turnin 2159 >>交任务《 前往熔光镇》 多兰纳尔的货物 << !Hunter
    .vendor >>|cRXP_BUY_Buy 10 |T132815:0|t|cRXP_LOOT_冰镇牛奶|r or as much as you can afford << Priest
    .home >>将你的炉石设置为暮色森林
    .bindlocation 186
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r
	.trainer >>训练你的职业技能
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 928 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Corithras Moonrage
    .accept 929 >>接受任务《物归己用》 泰达希尔：传递信息
step
    #completewith DenlanStart
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_夜刃豹|r |cRXP_WARN_and|r |cRXP_ENEMY_巨翼枭|r |cRXP_WARN_move very fast!|r |cRXP_ENEMY_巨翼枭|r |cRXP_WARN_will also social aggro other|r |cRXP_ENEMY_Owls|r |cRXP_WARN_if you run past them while in combat with one|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
	#completewith DenlanStart
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
#ah
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛洛尼·刃叶|r
    >>|T136065:0|t[Herbalism]|cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot]|cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    >>|cRXP_WARN_If you would rather purchase 5|r |T134187:0|t[Earthroot]|cRXP_WARN_from the Auction House later, skip this step|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
#ssf
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛洛尼·刃叶|r
    >>|T136065:0|t[Herbalism]|cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot]|cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_Level your|r |T136065:0|t[Herbalism]|cRXP_WARN_to 15 to be able to gather 5|r |T134187:0|t[Earthroot]|cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>|cRXP_WARN_Collect 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herbalism] and rarely |cRXP_PICK_Battered Chests|r for a future class quest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Target |cRXP_FRIENDLY_哨兵莎恩雅|r
    >>|cRXP_WARN_施放|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_哨兵莎恩雅|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r
    .turnin 997 >>交任务《 前往熔光镇》 德纳兰的泥土
    .target Denalan
    .accept 918 >>接受任务《物归己用》 林精的种子
    .accept 919 >>接受任务《物归己用》 林精的新芽
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>击杀 |cRXP_ENEMY_林精|r。拾取他们的 |cRXP_LOOT_Seeds|r
    >>拾取地上的 the |cRXP_LOOT_林精的新芽|ron the ground
    .complete 918,1 --Collect Timberling Seed (x8)
    .mob +Timberling
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r
    .turnin 918 >>交任务《 前往熔光镇》 林精的种子
    .target Denalan
    .accept 922 >>接受任务《物归己用》 雷利亚·绿树
    .turnin 919 >>交任务《 前往熔光镇》 林精的新芽
step
    #completewith Starbreeze
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_夜刃豹|r |cRXP_WARN_and|r |cRXP_ENEMY_巨翼枭|r |cRXP_WARN_move very fast!|r |cRXP_ENEMY_巨翼枭|r |cRXP_WARN_will also social aggro other|r |cRXP_ENEMY_Owls|r |cRXP_WARN_if you run past them while in combat with one|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
	#completewith Starbreeze
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >>前往暴风城大教堂内，与 Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>打开 |cRXP_PICK_Tallonkai's Dresser|r。并从中拾取 |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r 交谈
    .turnin 475 >>交任务《 前往熔光镇》 烦恼之风
    .target Gaerolas Talvethren
    .accept 476 >>接受任务《物归己用》 瘤背熊怪的堕落
step
    .goto Teldrassil,63.38,58.10
    .use 5619 >>|cRXP_WARN_Use the|r |T134721:0|t[Jade Phial] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
	#completewith SeekRedemption
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Save any|r 直到用完[Small Eggs]|cRXP_WARN_and|r |T134321:0|t[Small Spider Legs]|cRXP_WARN_to use for leveling|r |T133971:0|t[Cooking]|cRXP_WARN_稍后|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488 >>交任务《 前往熔光镇》 赛恩的要求
step
    #loop
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91,50,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32,50,0
	.xp 7+3550 >>击杀 ，直到 your are +3520xp through level 7 << !Priest
    .xp 7+3210 >>击杀 ，直到 your are +3210xp through level 7 << Priest
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 489 >>接受任务《物归己用》 寻求救赎！
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >>交任务《 前往熔光镇》 瘤背熊怪的堕落
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5621 >>交任务《 前往熔光镇》 月光之衣
step << Priest
    #optional
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >>训练你的职业技能
    .xp <8,1
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塔隆凯·捷根|r atop the Tree
    .turnin 2438 >>交任务《 前往熔光镇》 翡翠摄梦符
    .target Tallonkai Swiftroot
    .accept 2459 >>接受任务《物归己用》 噬梦者菲罗斯塔
step << Priest
    #optional
    .train 139,1
    .train 586,1
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >>训练你的职业技能
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_if you can afford it (2s 85c), if not skip this step|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >>|cRXP_BUY_Buy up to 800|r |T132382:0|t[Rough Arrows]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r
	.trainer >>训练你的职业技能
    .target Dazalar
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r
    .trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it (5s 36c), if not skip this step|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    .equip 16,2488 >>|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto]|cRXP_BUY_if you can afford it (4s 1c), if not skip this step|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    .equip 16,2494 >>|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick] |cRXP_BUY_if you can afford it (5s 4c), if not skip this step|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    .equip 16,2495 >>|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Corithras Moonrage
    .accept 933 >>接受任务《物归己用》 泰达希尔：传递信息
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .target Kal
step
	#completewith jewel
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Next to a small tree
    .goto 1438/1,822.200,9948.500,6 >>On the small hill
    .goto 1438/1,809.800,9926.400,6 >>Next to the massive tree
    >>拾取散发绿光的 3 felcones from the locations marked on your map.
    >>|cRXP_WARN_Skip this step if any of them is not there and you're unable to complete the objective|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务《 前往熔光镇》 寻求救赎！
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>拾取散发绿光的 |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_瘤背秘法师|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>击杀 |cRXP_ENEMY_噬梦者菲罗斯塔|r. Loot him for the |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r]. |cRXP_WARN_Be careful as he can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you up to three times at once|r
    .use 8049 >>|cRXP_WARN_Use the |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r] to loot|r |cRXP_LOOT_塔隆凯的珠宝|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_瘤背秘法师|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .isQuestTurnedIn 489
step
    #label jewel
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰诺尔·鹰月|r
    .vendor >> |cRXP_BUY_Vendor and repair if necessary|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #loop
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7,50,0
    >>拾取散发绿光的 |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务《 前往熔光镇》 寻求救赎！
    .isOnQuest 489
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>前往暴风城大教堂内，与 Fel Rock
step
    .goto Teldrassil,51.2,50.6
    >>击杀 for his |cRXP_LOOT_头部|r
    >>|cRXP_ENEMY_迈雷纳斯|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .subzoneskip 258,1
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .accept 933 >>接受任务《物归己用》 泰达希尔：传递信息
step
	#completewith spiderLegs
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>前往暴风城大教堂内，与 southwestern Teldrassil
step
	.goto Teldrassil,42.61,76.18
	>>点击地上的 |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >>接受任务《物归己用》 发光的水果
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>前往暴风城大教堂内，与 the Pools of Arlithrien
step
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Use the|r |T134765:0|t[Tourmaline Phial] |cRXP_WARN_at the Pools of Arlithrien moonwell|r
	.complete 933,1
step
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >> Die and respawn at the Dolanaar graveyard, make sure to die east of the moonwell, otherwise you might end up in Darnassus
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 933 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Corithras Moonrage
    .accept 7383 >>接受任务《物归己用》 泰达希尔：传递信息
step
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞恩|r
    .train 2550 >>Train |T133971:0|t[Cooking]
    .accept 4161 >>接受任务《物归己用》 卡多雷的菜谱
    .turnin 4161 >>交任务《 前往熔光镇》 卡多雷的菜谱
    .target Zarrin
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塔隆凯·捷根|r atop the Tree
    .turnin 932 >>交任务《 前往熔光镇》 扭曲的仇恨
    .turnin 2459 >>交任务《 前往熔光镇》 噬梦者菲罗斯塔
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 487 >>接受任务《物归己用》 达纳苏斯之路
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>击杀 |cRXP_ENEMY_瘤背伏击者|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >>交任务《 前往熔光镇》 达纳苏斯之路
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>前往暴风城大教堂内，与 The Oracle Glade
step
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接受任务《物归己用》 神谕林地
step
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Amethyst Phial] |cRXP_WARN_at The Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
    #completewith harpies
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_Belts|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_施放|r |T136052:0|t[Healing Wave] |cRXP_WARN_and|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_which does a lot of damage. Try to burst them fast|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,34.61,28.79
    >>点击地上的 |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >>接受任务《物归己用》 发光的树叶
step
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_This will start an escort quest. Skip this quest if the NPC is not there|r
    .accept 938 >>接受任务《物归己用》 密斯特
    .target Mist
step
	#label harpies
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    >>|cRXP_WARN_Keep in mind this is a timed quest, you need to turn it in within 9 minutes of accepting|r
    .turnin 938 >>交任务《 前往熔光镇》 密斯特
step
    .goto Teldrassil,33.619,29.819
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_Belts|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_施放|r |T136052:0|t[Healing Wave] |cRXP_WARN_and|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_which does a lot of damage. Try to burst them fast|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务《 前往熔光镇》 神谕林地
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接受任务《物归己用》 泰达希尔
step
    .xp 10-760 >>练怪直到距离 30 级还有 6600 经验 (29700/36300) << Druid
    .xp 10-1420 >>练怪直到距离 30 级还有 6600 经验 (29700/36300) << !Druid !Rogue
    .xp 10-2340 >>练怪直到距离 30 级还有 6600 经验 (29700/36300) << Rogue
step << !Rogue
    .goto Teldrassil,39.6,35.5
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << !Rogue
    #completewith next
    .goto 1438/1,1949.100,10033.300,100 >>前往塔纳利斯
step << !Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务《 前往熔光镇》 雷利亚·绿树
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << !Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 940 >>交任务《 前往熔光镇》 泰达希尔
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_玛斯雷·驭熊者|r on the middle level
    .accept 5921 >>接受任务《物归己用》 月光林地
	.trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接受任务《物归己用》 月神的泪水
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 交谈
    .turnin 5921 >>交任务《 前往熔光镇》 月光林地
    .target Dendrite Starblaze
    .accept 5929 >>接受任务《物归己用》 巨熊之灵
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
    >>|cRXP_WARN_This will make you return faster|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 交谈
    .turnin 5929 >>交任务《 前往熔光镇》 巨熊之灵
    .target Dendrite Starblaze
    .accept 5931 >>接受任务《物归己用》 返回达纳苏斯
step << !Rogue
    .hs >>Hearth to 多兰纳尔，泰达希尔
    .bindlocation 186,1
    .cooldown item,6948,>2,1
step << !Rogue
    #completewith next
    .subzone 186 >>Return to 多兰纳尔，泰达希尔
step << !Rogue
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Corithras Moonrage
    .accept 935 >>接受任务《物归己用》 泰达希尔：传递信息
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >>训练你的职业技能
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r
    .accept 1684 >>接受任务《物归己用》 艾兰娜瑞
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接受任务《物归己用》 驯服野兽
	.trainer >>训练你的职业技能
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use the|r |cRXP_WARN_对[Taming Rod]|cRXP_WARN_on a|r|cRXP_ENEMY_树林潜伏者|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务《 前往熔光镇》 驯服野兽
    .target Dazalar
    .accept 6101 >>接受任务《物归己用》 驯服野兽
step << !Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >>交任务《 前往熔光镇》 发光的树叶
    .turnin 930 >>交任务《 前往熔光镇》 发光的水果
step << !Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r
    .use 5179 >>|cRXP_WARN_Use the|r |T134339:0|t[|cRXP_LOOT_布满苔藓的心脏|r] |cRXP_WARN_to start the quest|r
    .accept 927 >>接受任务《物归己用》 布满苔藓的心脏
	.turnin 927 >>交任务《 前往熔光镇》 布满苔藓的心脏
    .itemcount 5179,1
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use the|r |cRXP_WARN_对[Taming Rod]|cRXP_WARN_on a|r|cRXP_ENEMY_夜刃捕食者|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << !Rogue
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r
    .turnin 6101 >>交任务《 前往熔光镇》 驯服野兽
    .target Dazalar
    .accept 6102 >>接受任务《物归己用》 驯服野兽
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use the|r |cRXP_WARN_对[Taming Rod]|cRXP_WARN_on a|r|cRXP_ENEMY_巨翼恶枭|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r
    .turnin 6102 >>交任务《 前往熔光镇》 驯服野兽
    .target Dazalar
    .accept 6103 >>接受任务《物归己用》 训练野兽
    .train 1130 >> |cRXP_WARN_Make sure you have trained Hunter's Mark. You will need it to get a rune soon|r
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >>交任务《 前往熔光镇》 达纳苏斯之路
    .target Moon Priestess Amara
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_施放|r |cRXP_WARN_对[Tame Beast] |cRXP_WARN_施放 |T132164:0|t |cRXP_ENEMY_巨翼猎枭|r |r 以驯服它|r -- .tame 1997
    .train 2981 >>用它攻击怪物以学习 [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.unitscan Strigid Hunter
step << Rogue
    #completewith next
    .hs >>Hearth to 多兰纳尔，泰达希尔
    .bindlocation 186,1
step << Rogue
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Corithras Moonrage
    .accept 935 >>接受任务《物归己用》 泰达希尔：传递信息
step << Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >>交任务《 前往熔光镇》 发光的树叶
    .turnin 930 >>交任务《 前往熔光镇》 发光的水果
step << Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r
    .use 5179 >>|cRXP_WARN_Use the|r |T134339:0|t[|cRXP_LOOT_布满苔藓的心脏|r] |cRXP_WARN_to start the quest|r
    .accept 927 >>接受任务《物归己用》 布满苔藓的心脏
	.turnin 927 >>交任务《 前往熔光镇》 布满苔藓的心脏
    .itemcount 5179,1
step << Rogue
    #completewith RogueRoad
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >>接受任务《物归己用》 詹诺克的花
	.trainer >>训练你的职业技能
    .train 5171 >> Train |T132306:0|t[Slice and Dice]
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step << Rogue
    #label RogueRoad
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >>交任务《 前往熔光镇》 达纳苏斯之路
    .target Moon Priestess Amara
step << Rogue
    #completewith TotM
    .goto Teldrassil,44.0,54.6
    .deathskip >>Once you get past the furbolg area, die on purpose and respawn at the Darnassus graveyard
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务《 前往熔光镇》 雷利亚·绿树
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 940 >>交任务《 前往熔光镇》 泰达希尔
    .turnin 935 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Arch Druid Fandral Staghelm
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r
    >>|cRXP_WARN_Head down into the Cenarion Enclave|r
    .turnin 2241 >>交任务《 前往熔光镇》 詹诺克的花
    .target Syurna
    .accept 2242 >>接受任务《物归己用》 命运的召唤
step << Rogue
    #label TotM
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接受任务《物归己用》 月神的泪水
step
    #sticky
    #completewith next
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4,30,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>击杀 for her |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_萨丝拉|r |cRXP_WARN_can spawn in 3 different locations, check your map for a recomended path to take|r
    >>|cRXP_WARN_Head north along the river and check the easternmost spawn point first. Work on the|r |T134339:0|t[Tumors] |cRXP_WARN_quest as you go|r
    >>|cRXP_WARN_If she's not east of the river complete the|r |T134339:0|t[Tumors] |cRXP_WARN_quest before heading west|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    #loop
    .goto Teldrassil,43.2,42.8,0
    .goto Teldrassil,43.2,32.8,0
    .goto Teldrassil,43.6,26.0,0
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_施放|r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_远古的塞希尔|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_ENEMY_远古的塞希尔|r |cRXP_WARN_walks along the big tree branch|r
    >>|cRXP_WARN_Avoid fighting |cRXP_ENEMY_远古的塞希尔|r. Let him walk passed you, then|r |T132320:0|t[Stealth] |cRXP_WARN_and|r |T133644:0|t[Pick Pocket] |cRXP_WARN_when you're behind him|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_This will start an escort quest. Skip this quest if the NPC is not there|r
    .accept 938 >>接受任务《物归己用》 密斯特
    .target Mist
step
	#label harpies
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    >>|cRXP_WARN_Keep in mind this is a timed quest, you need to turn it in within 9 minutes of accepting|r
    .turnin 938 >>交任务《 前往熔光镇》 密斯特
step
	#completewith next
    .deathskip >>死亡并在 Darnassus graveyard
    >>|cRXP_WARN_Make sure you're on the west side of the river or you might end up going the wrong way|r
step
    #completewith next
    .goto 1438/1,1949.100,10033.300,100 >>前往塔纳利斯
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >> Accept Nessa Shadowsong
step
    #optional
	.abandon 927 >> Abandon The Moss-twined Heart. You never have an opportunity to turn it in past here
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >>交任务《 前往熔光镇》 艾兰娜瑞
    .target Elanaria
    .accept 1683 >>接受任务《物归己用》 沃鲁斯·邪蹄
step << Warrior
    #completewith next
    .goto 1438/1,1355.300,9941.101,100,0
    .goto 1438/1,1321.500,9685.500,20,0
    .goto 1438/1,1315.000,9632.000,15 >>前去找 |cRXP_ENEMY_沃鲁斯·邪蹄|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>击杀 for his |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .zone Darnassus >>Return to 达纳苏斯，泰达希尔
step << Warrior
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Die on purpose after you get past the furbolg area 和 respawn at Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1683 >>交任务《 前往熔光镇》 沃鲁斯·邪蹄
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 227 >>学习锤类武器
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    .equip 16,2495 >>|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
step << Hunter
#ah
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow] |cRXP_BUY_or check the Auction House for something better/cheaper|r
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
#ssf
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	.vendor >>|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    .equip 18,2507 >> |cRXP_WARN_Equip the|r |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135147:0|t[Gnarled Staff]|cRXP_BUY_. Equip it at level 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
#ah
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff]|cRXP_BUY_ or check the Auction House for something better/cheaper. Equip it at level 11|r
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
#ssf
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff]|cRXP_BUY_. Equip it at level 11|r
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
#ah
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[Cutlass] |cRXP_BUY_if you can't afford a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_或者|r check the Auction House for something better/cheaper|r
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
#ssf
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[Cutlass] |cRXP_BUY_if you can't afford a|r |T135154:0|t[Quarter Staff]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #sticky
    .equip 16,851 >> |cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
step << Warrior
    #sticky
    #optional
    .equip 16,854 >> |cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .xp <11,1
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_雷利亚·绿树|r on the second floor
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Balanced Throwing Dagger]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[Darkshore Grouper]
    >>|T134187:0|t[Earthroot] << Druid
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    >>|T134187:0|t[Earthroot] << Druid
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLook for |cRXP_FRIENDLY_加伊娜|r, she patrols around the Tradesmen's Terrace
    >>|cRXP_BUY_Buy a stack of|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from her|r
    >>|cRXP_WARN_You will need it to feed your |cRXP_FRIENDLY_Owl|r, they only eat meat and there's no meat vendor in Darkshore|r
    .collect 117,15
    .target Jaeana
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_玛斯雷·驭熊者|r on the middle level
    .turnin 5931 >>交任务《 前往熔光镇》 返回达纳苏斯
    .target Mathrengyl Bearwalker
    .accept 6001 >>接受任务《物归己用》 身心之力
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r
    .turnin 6103 >>交任务《 前往熔光镇》 训练野兽
step << Hunter
    >>|cRXP_WARN_Go up the ramp to the right of|r |cRXP_FRIENDLY_祖卡斯特|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_西尔瓦莉雅|r
    .goto Darnassus,42.2,8.8
    .trainer >>训练你的宠物技能
    .target Silvaria
step << !Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 935 >>交任务《 前往熔光镇》 泰达希尔：传递信息
    .target Arch Druid Fandral Staghelm
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r
    >>|cRXP_WARN_Head down into the Cenarion Enclave|r
    .turnin 2242 >>交任务《 前往熔光镇》 命运的召唤
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >> Turn in Tumors
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >>交任务《 前往熔光镇》 月神的泪水
    .target Priestess A'moora
    .accept 2520 >>接受任务《物归己用》 萨丝拉的祭品
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_使用|r |T135652:0|t[Sathrah's Sacrifice] |cRXP_WARN_at the fountain|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >>交任务《 前往熔光镇》 萨丝拉的祭品
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >> Turn in Nessa Shadowsong
    .target Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务《 前往熔光镇》 返回奈欧玛身边
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .target Vesprystus
    .accept 6342 >> Accept Flight to Auberdine
step << Warrior
    #sticky
    #optional
    .equip 16,854 >> |cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .xp <11,1
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
]])