if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor NightElf
#group RXP TBC 生存指南 A
#subgroup RXP 生存指南 1-20级
#name 1-11 泰达希尔
#next 12-14 黑海岸

step << !NightElf
    #sticky
    #completewith next
    +你选择的是暗夜精灵专用的指南，请确保你的选择与你角色出生地一致
step
    .goto Teldrassil,58.695,44.266
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .accept 456 >>接受任务 自然的平衡
step
    #sticky
    #label balance1
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob 夜刃豹幼崽
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob 草刺野猪幼崽
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 和 |cRXP_FRIENDLY_麦利萨尔·鹿盔|r 对话
    .accept 4495 >>接受任务 好朋友
    .goto Teldrassil,60.899,41.961
    .target 迪兰妮亚·月光
    .accept 458 >>接受任务 森林守护者
	.goto Teldrassil,59.924,42.474
    .target 麦利萨尔·鹿盔
step << Hunter
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>沿途刷怪，直到距离 4 级还差 610 点经验（790/1400）
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << Hunter
    #completewith next
    .hs >>炉石返回影遁谷
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 458 >>交任务  森林守护者
    .target 塔琳德拉
    .accept 459 >>接受任务 森林守护者
step << Druid/Priest
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_购买15瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target 德林拉尔
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 456,1 >>交任务 自然的平衡 << Hunter
    .turnin 456 >>交任务 自然的平衡 << !Hunter
    .target 管理员伊尔萨莱恩
    .accept 457 >>接受任务 自然的平衡
	.accept 3116 >>接受任务 简易符记 << Warrior
	.accept 3117 >>接受任务 风化符记 << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >>接受任务 神圣符记 << Priest
	.accept 3120 >>接受任务 绿色符记 << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>出售垃圾物品
    .target 奇娜
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target 奥莉希亚
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
	.turnin 3116 >>交任务 简易符记
    .trainer >>训练你的职业技能
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob 癞皮夜刃豹
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << !Hunter
    #completewith next
    .hs >>炉石返回影遁谷
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 458 >>交任务  森林守护者
    .target 塔琳德拉
    .accept 459 >>接受任务 森林守护者
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457 >>交任务 自然的平衡
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 对话
    .turnin 3519 >>交任务  需要帮助的朋友
    .target 迪兰妮亚·月光
    .accept 3521 >>接受任务 埃沃隆的解药
step
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>|cRXP_BUY_购买3组 |r |T132382:0|t[劣质箭] << Hunter
	.vendor >>出售垃圾物品 << !Hunter
    .target 奇娜
step
    .goto Teldrassil,57.807,41.653
    .target 基尔沙兰·风行者
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .accept 916 >>接受任务 树林蜘蛛的毒囊
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿亚娜·远途|r 对话
    .turnin 3117 >>交任务 风化符记
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 阿亚娜·远途
step
    #loop
    .goto Teldrassil,58.21,36.40,0
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20,10,0
    >>拾取地上的 |cRXP_LOOT_月夜花|r
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>击杀 |cRXP_ENEMY_树林蜘蛛|r。拾取他们的 |cRXP_LOOT_脓液|r 和 |cRXP_LOOT_Venom 毒囊|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob 树林蜘蛛
step
    .goto Teldrassil,55.0,43.7
    >>击杀 |cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。拾取他们的 |cRXP_LOOT_紫蓝色蘑菇|r 和 |cRXP_LOOT_魔苔|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob 小劣魔
    .mob 劣魔
step
    .goto Teldrassil,57.8,45.1
    .target 塔琳德拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 459 >>交任务  森林守护者
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 对话
    .turnin 3521 >>交任务 埃沃隆的解药
    .target 迪兰妮亚·月光
    .accept 3522 >>接受任务 埃沃隆的解药
step << !Priest !Druid
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>出售垃圾物品 << !Hunter
	.vendor >>|cRXP_BUY_购买3或4组|r |T132382:0|t[劣质箭] << Hunter
    .target 奇娜
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 德林拉尔
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
	.trainer >>训练你的职业技能
    .target 奥莉希亚
step << Priest
    #completewith next
    .goto Teldrassil,59.89,41.67,10 >>沿坡道向上走
step << Priest
    .goto Teldrassil,59.521,40.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_琳莱尔|r 对话
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 琳莱尔
step << Priest
	.goto Teldrassil,59.174,40.442
    .target 珊达
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
	.turnin 3119 >>交任务 神圣符记
	.trainer >>训练你的职业技能
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .turnin 916 >>交任务 树林蜘蛛的毒囊
    .target 基尔沙兰·风行者
    .accept 917 >>接受任务 树林蜘蛛的卵
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>爬上奥达希尔之树
    .target 玛丹特·硬木
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
	.turnin 3120 >>交任务 绿色符记
    .train 8921 >>学习 |T136096:0|t[月火术]
step
    .goto Teldrassil,54.593,32.992
    .target 埃沃隆
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 3522 >>交任务 埃沃隆的解药
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>进入暗丝洞穴
step
    .goto Teldrassil,57.0,26.4
    >>在洞穴深处拾取地上的 |cRXP_LOOT_树林蜘蛛的卵|r
    .complete 917,1 --Collect Webwood Egg (x1)
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .turnin 917 >>交任务  树林蜘蛛的卵
    .target 基尔沙兰·风行者
    .accept 920 >>接受任务 特纳隆的召唤
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 920 >>交任务  特纳隆的召唤
    .target 特纳隆·雷拳
    .accept 921 >>接受任务 大地之冠
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >>|cRXP_WARN_在月亮井使用|r |T134776:0|t[水晶瓶] |cRXP_WARN_|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob 癞皮夜刃豹
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457,2 >>交任务 自然的平衡
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target 珊达
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
    .accept 5622 >>接受任务 月神的恩赐
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 921 >>交任务 大地之冠
    .target 特纳隆·雷拳
    .accept 928 >>接受任务 大地之冠
step
    .goto Teldrassil,61.159,47.644
    .target 伯萨努斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯萨努斯|r 对话
    .accept 2159 >>接受任务 多兰纳尔的货物
step
    .goto Teldrassil,60.5,56.3
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .accept 488 >>接受任务 赛恩的要求
step
    #completewith DenlansEarth
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
step
	#completewith DenlansEarth
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target 塞拉尔·刃叶
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    >>|cRXP_WARN_在接受这个任务前，确保你的背包里有 1 个空位|r
    .accept 997 >>接受任务 德纳兰的泥土
step
    .goto Teldrassil,55.954,57.272
    .target 阿斯瑞达斯·熊皮
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .accept 475 >>接受任务 烦恼之风
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .turnin 5622 >>交任务  月神的恩赐
    .target 劳尔娜·晨光
    .accept 5621 >>接受任务 月光之衣
	.trainer >>训练你的职业技能
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .vendor >>|cRXP_BUY_购买并装备一把|r |T135426:0|t[小飞刀]
    .target 奥蒂亚
step
    .goto Teldrassil,55.574,56.948
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .accept 932 >>接受任务 扭曲的仇恨
    .accept 2438 >>接受任务 翡翠摄梦符
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target 吉娜·羽弓
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    .vendor >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135321:0|t[步兵剑]|cRXP_BUY_如果钱够(5银36铜), 如果不够跳过此步|r
    .collect 2488,1 --Collect Gladius
    .target 沙洛蒙
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    .equip 16,2488 >>|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135641:0|t[卷刃的剑] |cRXP_BUY_如果钱够 (4银 1铜), 如果钱不够跳过此步|r
    .collect 2494,1 --Stiletto (1)
    .target 沙洛蒙
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    .equip 16,2494 >>|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135145:0|t[学徒短杖]|cRXP_BUY_如果钱够(5银 4铜),如果钱不够跳过此步|r
    .collect 2495,1 --Walking Stick (1)
    .target 沙洛蒙
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    .equip 16,2495 >>|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
step
    .goto Teldrassil,55.619,59.788
    .target 旅店老板凯达米尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    .turnin 2159,2 >>交任务 多兰纳尔的货物 << Hunter
    .turnin 2159 >>交任务 多兰纳尔的货物 << !Hunter
    .vendor >>|cRXP_BUY_购买10瓶|T132815:0|t|cRXP_LOOT_冰镇牛奶|r 或者能买多少买多少 << Priest
    .home >>将你的炉石绑定在多兰纳尔
    .bindlocation 186
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
	.trainer >>训练你的职业技能
    .target 达扎拉
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
	.trainer >>训练你的职业技能
    .target 卡尔
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 928 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 929 >>接受任务 大地之冠
step
    #completewith DenlanStart
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
step
	#completewith DenlanStart
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step << Druid
#ah
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛洛尼·刃叶|r 对话
    >>|T136065:0|t[草药学] |cRXP_WARN_将用于采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，以完成即将到来的重要职业任务。完成后你可以将其忘却|r
    >>|cRXP_WARN_如果你更愿意稍后从拍卖行购买 5 个|r |T134187:0|t[地根草]|cRXP_WARN_，可跳过此步骤|r
    .train 2366 >>学习 |T136065:0|t[草药学]
    .target 玛洛尼·刃叶
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
#ssf
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛洛尼·刃叶|r 对话
    >>|T136065:0|t[草药学] |cRXP_WARN_将用于采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，以完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .train 2366 >>学习 |T136065:0|t[草药学]
    .target 玛洛尼·刃叶
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_将你的 |r|T136065:0|t[草药学]|cRXP_WARN_提升至 15，以便采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>通过 |T134187:0|t[草药学] 收集 5 个 |T136065:0|t[地根草]|cRXP_WARN_，偶尔也可从 |cRXP_PICK_破旧宝箱|r 获得，用于将来的职业任务|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>选中 |cRXP_FRIENDLY_哨兵莎恩雅|r
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术 (等级 2)]|cRXP_WARN_和|r |T135987:0|t[真言术: 韧]|cRXP_WARN_在|r|cRXP_FRIENDLY_哨兵莎恩雅|r身上
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target 哨兵莎恩雅
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 997 >>交任务 德纳兰的泥土
    .target 德纳兰
    .accept 918 >>接受任务 林精的种子
    .accept 919 >>接受任务 林精的新芽
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>击杀 |cRXP_ENEMY_林精|r。拾取他们的 |cRXP_LOOT_种子|r
    >>拾取地上的|cRXP_LOOT_林精的新芽|r
    .complete 918,1 --Collect Timberling Seed (x8)
    .mob 林精
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 918 >>交任务 林精的种子
    .target 德纳兰
    .accept 922 >>接受任务 雷利亚·绿树
    .turnin 919 >>交任务 林精的新芽
step
    #completewith Starbreeze
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
step
	#completewith Starbreeze
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #label Starbreeze
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >>前往星风村
step
    .goto Teldrassil,68.02,59.66
    >>打开 |cRXP_PICK_塔隆凯的衣柜|r。并从中拾取 |cRXP_LOOT_翡翠摄梦符|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r 对话
    .turnin 475 >>交任务 烦恼之风
    .target 盖洛拉斯·塔文斯伦
    .accept 476 >>接受任务 瘤背熊怪的堕落
step
    .goto Teldrassil,63.38,58.10
    .use 5619 >>|cRXP_WARN_使用|r |T134721:0|t[翡翠瓶]|cRXP_WARN_在星风村的月泉处|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
	#completewith SeekRedemption
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_保留所有 |r|T132832:0|t[小鸡蛋]|cRXP_WARN_ 和 |r|T134321:0|t[小蜘蛛腿]|cRXP_WARN_，以便稍后用于提升 |r|T133971:0|t[烹饪]|cRXP_WARN_ 技能|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 488 >>交任务  赛恩的要求
step
    #loop
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91,50,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32,50,0
	.xp 7+3550 >>一直刷怪 ，直到你积累了3520经验以上，在7级 << !Priest
    .xp 7+3210 >>一直刷怪 ，直到你积累了3210经验以上，在7级 << Priest
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .accept 489 >>接受任务 寻求救赎！
    .target 塞拉尔·刃叶
step
    .goto Teldrassil,55.954,57.272
    .target 阿斯瑞达斯·熊皮
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .turnin 476 >>交任务 瘤背熊怪的堕落
step << Priest
    .goto Teldrassil,55.564,56.746
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .turnin 5621 >>交任务  月光之衣
step << Priest
    #optional
    .goto Teldrassil,55.564,56.746
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
	.trainer >>训练你的职业技能
    .xp <8,1
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 2438 >>交任务  翡翠摄梦符
    .target 塔隆凯·捷根
    .accept 2459 >>接受任务 噬梦者菲罗斯塔
step << Priest
    #optional
    .train 139,1
    .train 586,1
    .goto Teldrassil,55.564,56.746
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
	.trainer >>训练你的职业技能
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135499:0|t[角木弯弓] |cRXP_BUY_如果去钱够 (2银85铜), 如果钱不够跳过此步|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target 吉娜·羽弓
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
	.vendor >>|cRXP_BUY_购买至800支|r |T132382:0|t[劣质箭]
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
	.trainer >>训练你的职业技能
    .target 达扎拉
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135321:0|t[步兵剑]|cRXP_BUY_如果钱够(5银36铜), 如果不够跳过此步|r
    .collect 2488,1 --Collect Gladius
    .target 沙洛蒙
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    .equip 16,2488 >>|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135641:0|t[卷刃的剑] |cRXP_BUY_如果钱够 (4银 1铜), 如果钱不够跳过此步|r
    .collect 2494,1 --Stiletto (1)
    .target 沙洛蒙
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    .equip 16,2494 >>|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135145:0|t[学徒短杖]|cRXP_BUY_如果钱够(5银 4铜),如果钱不够跳过此步|r
    .collect 2495,1 --Walking Stick (1)
    .target 沙洛蒙
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    .equip 16,2495 >>|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 933 >>接受任务 大地之冠
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
	.trainer >>训练你的职业技能
    .target 卡尔
step
	#completewith jewel
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>在一棵小树旁边
    .goto 1438/1,822.200,9948.500,6 >>在小山丘上
    .goto 1438/1,809.800,9926.400,6 >>在那棵巨大的树旁边
    >>从你的地图标记的位置收集3个战利品 |cRXP_LOOT_魔锥果|r。
    >>|cRXP_WARN_如果其中任何一个不在场且你无法完成目标，请跳过此步骤|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>拾取地上的 |cRXP_LOOT_魔锥果|r
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果 |cRXP_ENEMY_瘤背秘法师|r 数量较少，你可能需要击杀 |cRXP_ENEMY_瘤背战士|r 才会刷新它们|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob 瘤背秘法师
step
	.goto Teldrassil,69.37,53.41
	>>击杀 |cRXP_ENEMY_噬梦者菲罗斯塔|r，拾取他掉落的 |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r]。|cRXP_WARN_小心，他会施放 |r|T132152:0|t[痛击]|cRXP_WARN_，一次最多可连续攻击你三次|r
    .use 8049 >>|cRXP_WARN_使用 |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r] 来拾取 |r塔隆凯的珠宝|cRXP_LOOT_|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob 噬梦者菲罗斯塔
step
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果 |cRXP_ENEMY_瘤背秘法师|r 数量较少，你可能需要击杀 |cRXP_ENEMY_瘤背战士|r 才会刷新它们|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob 瘤背秘法师
step
    #label jewel
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰诺尔·鹰月|r 对话
    .vendor >>|cRXP_BUY_如有需要，出售物品并修理装备|r
    .target 布兰诺尔·鹰月
    .isQuestTurnedIn 489
step
    #loop
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7,50,0
    >>拾取地上的 |cRXP_LOOT_魔锥果|r
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
    .isOnQuest 489
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>前往邪石山
step
    .goto Teldrassil,51.2,50.6
    >>击杀 |cRXP_ENEMY_迈雷纳斯|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_迈雷纳斯|r 可能会在邪石山的多个刷新点出现
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan 迈雷纳斯
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target 科瑞萨斯·月怒
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
    .accept 933 >>接受任务 大地之冠
step
	#completewith spiderLegs
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>前往泰达希尔西南部
step
	.goto Teldrassil,42.61,76.18
	>>点击|cRXP_PICK_奇怪的果树|r
	.accept 930 >>接受任务 发光的水果
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>前往阿里斯瑞恩水池
step
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_在阿里斯瑞恩之池的月亮井使用|r |T134765:0|t[红玉瓶] |cRXP_WARN_|r
	.complete 933,1
step
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
	#completewith next
    .goto Teldrassil,56.142,61.714,150 >>返回多兰纳尔，泰达希尔
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 933 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 7383 >>接受任务 大地之冠
step
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞恩|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .accept 4161 >>接受任务 卡多雷的菜谱
    .turnin 4161 >>交任务  卡多雷的菜谱
    .target 扎瑞恩
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 拜恩希
step
    .goto Teldrassil,55.574,56.948
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 932 >>交任务  扭曲的仇恨
    .turnin 2459 >>交任务 噬梦者菲罗斯塔
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 487 >>接受任务 达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step
    .goto Teldrassil,46.6,53.0
    >>击杀 |cRXP_ENEMY_瘤背伏击者|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob 瘤背伏击者
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >>交任务  达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>前往先知林地
step
    .goto Teldrassil,38.32,34.36
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .accept 937 >>接受任务 神谕林地
step
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_在先知林地的月泉处使用|r|T134798:0|t[紫水晶瓶]|cRXP_WARN_|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
    #completewith harpies
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_腰带|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_会施放 |r|T136052:0|t[治疗波]|cRXP_WARN_和 |r|T136048:0|t[闪电箭]|cRXP_WARN_，造成大量伤害。尽量快速击杀它们|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step
    .goto Teldrassil,34.61,28.79
    >>点击 |cRXP_PICK_奇异叶植物|r
    .accept 931 >>接受任务 发光的树叶
step
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开启一个护送任务。如果该 NPC 不在场，请跳过这个任务|r
    .accept 938 >>接受任务 密斯特
    .target 雾气
step
	#label harpies
    .goto Teldrassil,38.32,34.36
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_请注意这是一个限时任务，你需要在接受后的 9 分钟内完成并交付|r
    .turnin 938 >>交任务 密斯特
step
    .goto Teldrassil,33.619,29.819
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_腰带|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_会施放 |r|T136052:0|t[治疗波]|cRXP_WARN_和 |r|T136048:0|t[闪电箭]|cRXP_WARN_，造成大量伤害。尽量快速击杀它们|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 937 >>交任务 神谕林地
    .target 哨兵阿瑞尼亚·碎云
    .accept 940 >>接受任务 泰达希尔
step
    .xp 10-760 >>练怪直到距离10级还有760经验 (5740/6500) << Druid
    .xp 10-1420 >>练怪直到距离10级还有1420经验 (5080/6500) << !Druid !Rogue
    .xp 10-2340 >>练怪直到距离10级还有2340经验 (4160/6500) << Rogue
step << !Rogue
    #completewith next
    .goto 1438/1,1949.100,10033.300,100 >>前往达纳苏斯
step << !Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 922 >>交任务 雷利亚·绿树
    .target 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << !Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶上与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin 940 >>交任务  泰达希尔
    .target 大德鲁伊范达尔·鹿盔
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .accept 5921 >>接受任务 月光林地
	.trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .accept 2518 >>接受任务 月神的泪水
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5921 >>交任务 月光林地
    .target 德迪利特·星焰
    .accept 5929 >>接受任务 巨熊之灵
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target 巨熊之灵
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
    >>|cRXP_WARN_这样可以让你更快返回|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5929 >>交任务 巨熊之灵
    .target 德迪利特·星焰
    .accept 5931 >>接受任务 返回达纳苏斯
step << !Rogue
    .hs >>炉石返回多兰纳尔，泰达希尔
    .bindlocation 186,1
    .cooldown item,6948,>2,1
step << !Rogue
    #completewith next
    .subzone 186 >>返回多兰纳尔，泰达希尔
step << !Rogue
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 7383 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 935 >>接受任务 大地之冠
step << Priest
    .goto Teldrassil,55.564,56.746
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
	.trainer >>训练你的职业技能
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
    .accept 1684 >>接受任务 艾兰娜瑞
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target 达扎拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .accept 6063 >>接受任务 驯服野兽
	.trainer >>训练你的职业技能
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_对 |r树林潜伏者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob 树林潜伏者
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6063 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6101 >>接受任务 驯服野兽
step << !Rogue
	.goto Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 931 >>交任务 发光的树叶
    .turnin 930 >>交任务 发光的水果
step << !Rogue
	.goto Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .use 5179 >>|cRXP_WARN_使用 |r|T134339:0|t[|cRXP_LOOT_布满苔藓的心脏|r] |cRXP_WARN_来开始任务|r
    .accept 927 >>接受任务 布满苔藓的心脏
	.turnin 927 >>交任务  布满苔藓的心脏
    .itemcount 5179,1
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_对 |r夜刃捕食者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob 夜刃捕食者
step << !Rogue
    #completewith next
    .zone Darnassus >>返回达纳苏斯
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6101 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6102 >>接受任务 驯服野兽
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_使用|r |T132164:0|t[驯服之杖] |cRXP_WARN_对|r |cRXP_ENEMY_巨翼恶枭|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob 巨翼恶枭
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6102 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6103 >>接受任务 训练野兽
    .train 1130 >>|cRXP_WARN_确保你已经学习了猎人印记。你很快会需要它来获取一个符文|r
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >>交任务  达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_施放|r |T132164:0|t[驯服野兽] |cRXP_WARN_在|cRXP_ENEMY_巨翼猎枭|r 以驯服它|r -- .tame 1997
    .train 2981 >>|cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.unitscan 巨翼猎枭
step << Rogue
    #completewith next
    .hs >>炉石返回多兰纳尔，泰达希尔
    .bindlocation 186,1
step << Rogue
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 7383 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 935 >>接受任务 大地之冠
step << Rogue
	.goto Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 931 >>交任务 发光的树叶
    .turnin 930 >>交任务 发光的水果
step << Rogue
	.goto Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .use 5179 >>|cRXP_WARN_使用 |r|T134339:0|t[|cRXP_LOOT_布满苔藓的心脏|r] |cRXP_WARN_来开始任务|r
    .accept 927 >>接受任务 布满苔藓的心脏
	.turnin 927 >>交任务  布满苔藓的心脏
    .itemcount 5179,1
step << Rogue
    #completewith RogueRoad
    .zone Darnassus >>前往达纳苏斯
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .accept 2241 >>接受任务 詹诺克的花
	.trainer >>训练你的职业技能
    .train 5171 >>训练 |T132306:0|t[切割]
    .train 921 >>同时学习 |T133644:0|t[偷窃]，这是你 10 级潜行者任务所必需的
    .target 詹诺克·柔歌
step << Rogue
    #label RogueRoad
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >>交任务  达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step << Rogue
    #completewith TotM
    .zone Darnassus >>返回达纳苏斯
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 922 >>交任务 雷利亚·绿树
    .target 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶上与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin 940 >>交任务  泰达希尔
    .turnin 935 >>交任务 大地之冠
    .target 大德鲁伊范达尔·鹿盔
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    >>|cRXP_WARN_前往塞纳里奥区内部|r
    .turnin 2241 >>交任务  詹诺克的花
    .target 塞尤娜
    .accept 2242 >>接受任务 命运的召唤
step << Rogue
    #label TotM
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .accept 2518 >>接受任务 月神的泪水
step
    #sticky
    #completewith next
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob 林精长老
    .mob 林精践踏者
    .mob 林精泥泞兽
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
    >>击杀 |cRXP_ENEMY_萨丝拉|r。拾取她的 |cRXP_LOOT_丝囊|r
    >>|cRXP_ENEMY_萨丝拉|r |cRXP_WARN_可能在3个不同地点刷新，请查看地图以获取推荐路线|r
    >>|cRXP_WARN_沿河向北前进，先检查最东边的刷新点。在途中完成 |r|T134339:0|t[肿瘤] |cRXP_WARN_任务|r
    >>|cRXP_WARN_如果她不在河的东侧，则在前往西侧之前完成|r |T134339:0|t[肿瘤]|cRXP_WARN_ 任务|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob 萨丝拉
step
    #loop
    .goto Teldrassil,43.2,42.8,0
    .goto Teldrassil,43.2,32.8,0
    .goto Teldrassil,43.6,26.0,0
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob 林精长老
    .mob 林精践踏者
    .mob 林精泥泞兽
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_施放|r |T133644:0|t[搜索]对 |cRXP_ENEMY_远古的塞希尔|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_ENEMY_远古的塞希尔|r |cRXP_WARN_沿着大树枝移动|r
    >>|cRXP_WARN_避免与 |cRXP_ENEMY_远古的塞希尔|r 交战。让他从你身边走过，然后从背后施放 |r|T132320:0|t[潜行] |cRXP_WARN_并使用 |r|T133644:0|t[搜索]|cRXP_WARN_|r
    .complete 2242,1
    .mob 远古的塞希尔
step
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开启一个护送任务。如果该 NPC 不在场，请跳过这个任务|r
    .accept 938 >>接受任务 密斯特
    .target 雾气
step
	#label harpies
    .goto Teldrassil,38.32,34.36
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_请注意这是一个限时任务，你需要在接受后的 9 分钟内完成并交付|r
    .turnin 938 >>交任务 密斯特
step
    #completewith next
    .goto 1438/1,1949.100,10033.300,100 >>返回达纳苏斯
    .zoneskip Darnassus
step
    .goto Darnassus,70.679,45.379
    .target 迈德兰努尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈德兰努尔|r 对话
    .accept 6344 >>接受任务 尼莎·影歌
step
    #optional
	.abandon 927 >>放弃 布满苔藓的心脏。之后将再也没有机会交付这个任务
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1684 >>交任务  艾兰娜瑞
    .target 艾兰娜瑞
    .accept 1683 >>接受任务 沃鲁斯·邪蹄
step << Warrior
    #completewith next
    .goto 1438/1,1355.300,9941.101,100,0
    .goto 1438/1,1321.500,9685.500,20,0
    .goto 1438/1,1315.000,9632.000,15 >>前往|cRXP_ENEMY_沃鲁斯·邪蹄|r所在位置
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>击杀 |cRXP_ENEMY_沃鲁斯·邪蹄|r。拾取他的 |cRXP_LOOT_号角|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob 沃鲁斯·邪蹄
step << Warrior
    #completewith next
    .zone Darnassus >>返回达纳苏斯
step << Warrior
    #completewith next
    .zone Darnassus >>返回达纳苏斯
step << Warrior
    .goto Darnassus,57.305,34.606
    .target 艾兰娜瑞
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1683 >>交任务  沃鲁斯·邪蹄
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r 对话
    .skipgossip 11866,1
    .train 227 >>学习法杖
    .target 伊琳尼雅·月火
step << Hunter
    #optional
    #completewith end
    .equip 16,2495 >>|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
step << Hunter
#ah
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买和装备1把|r |T135489:0|t[多层弯弓] |cRXP_BUY_或者去拍卖行看看是否有更好/更便宜的选择|r
    .collect 2507,1
    .target 阿瑞耶尔·天影
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
#ssf
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135489:0|t[多层弯弓]
    .collect 2507,1
    .target 阿瑞耶尔·天影
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
	.vendor >>|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]
    .target 阿瑞耶尔·天影
step << Hunter
    #completewith next
    .equip 18,2507 >>|cRXP_WARN_装备|r |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135147:0|t[法师之杖]|cRXP_BUY_.在15级时装备|r
	.collect 2030,1
    .target 阿瑞耶尔·天影
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
#ah
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135154:0|t[短杖]|cRXP_BUY_ 或者去拍卖行寻找更好/更便宜的. 11时装备它|r
	.collect 854,1
    .target 阿瑞耶尔·天影
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
#ssf
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135154:0|t[短杖]|cRXP_BUY_.在11级时装备|r
	.collect 854,1
    .target 阿瑞耶尔·天影
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
#ah
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
	>>|cRXP_BUY_购买并装备1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_如果钱不够买1把|r |T135154:0|t[短杖] |cRXP_BUY_或者|r在拍卖行寻找更好/更便宜的|r
	.collect 851,1
    .target 阿瑞耶尔·天影
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
#ssf
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
	>>如果你买不起|T135346:0|t[短杖]|cRXP_BUY_，就购买并装备一把|r|T135154:0|t[|cRXP_BUY_斗士短剑|r]
	.collect 851,1
    .target 阿瑞耶尔·天影
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #sticky
    .equip 16,851 >>|cRXP_WARN_装备|r |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
step << Warrior
    #sticky
    #optional
    .equip 16,854 >>|cRXP_WARN_装备|r |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .xp <11,1
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    >>|cRXP_BUY_购买1把|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target 图里安
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳苏斯拍卖师|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T134187:0|t[地根草] << Druid
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target 拍卖师图尔伦
    .target 拍卖师戈洛萨斯
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳苏斯拍卖师|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T134187:0|t[地根草] << Druid
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target 拍卖师图尔伦
    .target 拍卖师戈洛萨斯
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t寻找 |cRXP_FRIENDLY_加伊娜|r，她会在工匠区巡逻
    >>|cRXP_BUY_购买1组|r |T133972:0|t[硬肉干]|cRXP_BUY_从她那里|r
    >>|cRXP_WARN_你需要用它来喂养你的 |cRXP_FRIENDLY_猫头鹰|r，它们只吃肉类，而黑海岸没有出售肉类的商人|r
    .collect 117,15
    .target 加伊娜
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .turnin 5931 >>交任务  返回达纳苏斯
    .target 玛斯雷·驭熊者
    .accept 6001 >>接受任务 身心之力
step << Hunter
    .goto Darnassus,40.377,8.545
    .target 祖卡斯特
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r 对话
    .turnin 6103 >>交任务 训练野兽
step << Hunter
    >>|cRXP_WARN_从 |r祖卡斯特|cRXP_FRIENDLY_ 右侧的坡道上去|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_西尔瓦莉雅|r 对话
    .goto Darnassus,42.2,8.8
    .trainer >>训练你的宠物技能
    .target 西尔瓦莉雅
step << !Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶上与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin 935 >>交任务 大地之冠
    .target 大德鲁伊范达尔·鹿盔
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target 塞尤娜
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    >>|cRXP_WARN_前往塞纳里奥区内部|r
    .turnin 2242 >>交任务  命运的召唤
step
    .goto Darnassus,38.184,21.639
    .target 雷利亚·绿树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 923 >>交任务 青苔之瘤
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .turnin 2518 >>交任务 月神的泪水
    .target 女祭司艾茉拉
    .accept 2520 >>接受任务 萨丝拉的祭品
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_在喷泉处使用|r |T135652:0|t[萨丝拉的祭品]|cRXP_WARN_|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .turnin 2520 >>交任务  萨丝拉的祭品
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6344 >>交任务 尼莎·影歌
    .target 尼莎·影歌
    .accept 6341 >>接受任务 泰达希尔的渔业
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .isOnQuest 6343
    .target 尼莎·影歌
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .turnin 6341 >>交任务 泰达希尔的渔业
    .target 维斯派塔斯
    .accept 6342 >>接受任务 飞往奥伯丁
step << Warrior
    #sticky
    #optional
    .equip 16,854 >>|cRXP_WARN_装备|r |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .xp <11,1
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
]])
