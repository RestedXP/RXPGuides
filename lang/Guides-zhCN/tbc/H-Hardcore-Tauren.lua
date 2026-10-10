if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC 生存指南 (H)
<< Horde
#name 1-6 莫高雷
#version 7
#subgroup RXP TBC Survival Guide 1-30
#defaultfor Tauren
#next 6-12级 莫高雷


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_你选择的是为牛头人准备的攻略。由于缺少仅对牛头人开放的主线任务之一，这个区域并不适合你。建议你选择与你起始区域相同的初始区域攻略|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .accept 747 >>接受任务 开始狩猎
    .target 格鲁尔·鹰风
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .accept 752 >>接受任务 一件琐事
    .target 鹰风酋长
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取战利品，直到卖店物品(包括你的护甲)总价值达到 10 铜币为止|r << Warrior/Shaman
    .mob 平原陆行鸟
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 哈鲁特·雷角
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .train 8017 >>影袭 |T136086:0|t[石化武器]
    .target 米拉·晨行者
step
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肉|r 和 |cRXP_LOOT_乱羽|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob 平原陆行鸟
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长的母亲|r 对话
    .turnin 752 >>交任务 一件琐事
    .accept 753 >>接受任务 一件琐事
    .target 鹰风酋长的母亲
step
    .goto Mulgore,50.22,81.37
    >>从 |cRXP_LOOT_鹰风酋长|r 身后水井上的 |cRXP_FRIENDLY_水罐|r中拾取物品
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto Mulgore,47.36,83.05,0
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05,50,0
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肉|r 和 |cRXP_LOOT_乱羽|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob 平原陆行鸟
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .turnin 747,1 >>交任务 开始狩猎 << Druid
    .turnin 747 >>交任务 开始狩猎 << !Druid
    .accept 3091 >>接受任务 简易便笺 << Warrior
    .accept 3092 >>接受任务 风化便笺 << Hunter
    .accept 3093 >>接受任务 符文便笺 << Shaman
    .accept 3094 >>接受任务 绿色便笺 << Druid
    .accept 750 >>接受任务 继续狩猎
    .target 格鲁尔·鹰风
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼|r 对话
    >>|cRXP_BUY_购买|r |T132384:0|t[轻弹丸]|cRXP_BUY_从她那里|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .isQuestAvailable 750
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .turnin 753 >>交任务 一件琐事
    .accept 755 >>接受任务 大地母亲的仪式
    .target 鹰风酋长
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_马沙克|r|cRXP_BUY_对话.购买|r |T135139:0|t[学徒法杖] |cRXP_BUY_从他那里|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target 马沙克·利刃
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_装备|r |T135139:0|t[学徒法杖]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>击杀 |cRXP_ENEMY_山狮|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob 山狮
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灰舌先知|r 对话
    >>|cRXP_WARN_途中击杀怪物升级|r
    .turnin 755 >>交任务 大地母亲的仪式
    .accept 757 >>接受任务 力量仪祭
    .target 灰舌先知
step
    #loop
    .goto Mulgore,44.60,90.86,0
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86,50,0
    >>击杀 |cRXP_ENEMY_山狮|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob 山狮
step
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1150 >>刷怪达到1150+/1400经验
    .mob 平原陆行鸟
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_刷 |cRXP_ENEMY_平原陆行鸟|r. 拾取战利品，直到卖店物品总价值达到 2 银币为止|r
    .mob 平原陆行鸟
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_刷 |cRXP_ENEMY_平原陆行鸟|r. 拾取战利品，直到卖店物品总价值达到1银币为止|r
    .mob 平原陆行鸟
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .turnin 750 >>交任务 继续狩猎
    .accept 780 >>接受任务 斗猪
    .target 格鲁尔·鹰风
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .isQuestAvailable 3376
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵|r 对话
    .accept 3376 >>接受任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 3092 >>交任务 风化便笺
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 3094 >>交任务 绿色便笺
    .train 8921 >>学习 |T136096:0|t[月火术]
    .target 加尔特·迷雾行者
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽|r 对话
    .accept 1519 >>接受任务 大地的召唤
    .target 鸦羽先知
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 3093 >>交任务 符文便笺
    .train 8042 >>影袭 |T136026:0|t[大地震击]
    .target 米拉·晨行者
step
    #loop
    .goto Mulgore,55.99,85.46,0
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46,50,0
    >>击杀 |cRXP_ENEMY_斗猪|r。拾取他们的 |cRXP_LOOT_肋排|r 和 |cRXP_LOOT_头|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob 斗猪
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>穿过洞穴前进
step
    #completewith DirtyMap
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。拾取他们的 |cRXP_LOOT_腰带|r
    .complete 757,1 --Bristleback Belt (12)
    .mob 刺背野猪人
step << Shaman
    #completewith DirtyMap
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob 刺背萨满祭司
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>在大帐篷内击杀 |cRXP_ENEMY_刺鬃酋长|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob 锋牙·刺鬃酋长
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>进入洞穴
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>拾取地上的 |T134269:0|t[|cRXP_LOOT_沾满泥土的地图|r]。使用它以开始任务
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>接受任务 纳拉其营地的危机
    .use 4851
step << Shaman
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob 刺背萨满祭司
step
    #label BristlebackBelts
    #loop
    .goto Mulgore,63.93,78.34,0
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34,40,0
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。拾取他们的 |cRXP_LOOT_腰带|r
    .complete 757,1 --Bristleback Belt (12)
    .mob 刺背野猪人
step << Shaman
    #loop
    .goto Mulgore,63.86,80.14,0
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14,40,0
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob 刺背萨满祭司
step
    #loop
    .goto Mulgore,62.27,82.03,0
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03,40,0
    .xp 5+870 >>刷怪达到880+/2800经验 << !Shaman
    .xp 5 >>刷怪升至等级5 << Shaman
    --1930
step
    #completewith next
    .hs >>使用炉石返回纳拉其营地
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r, |cRXP_FRIENDLY_卫兵|r 和 |cRXP_FRIENDLY_鹰风|r 对话 << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r, |cRXP_FRIENDLY_卫兵|r, |cRXP_FRIENDLY_先知|r 和 |cRXP_FRIENDLY_鹰风|r 对话 << Shaman
    .turnin 780 >>交任务 斗猪
    .target 格鲁尔·鹰风
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>交任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>交任务 大地的召唤 << Shaman
    .accept 1520 >>接受任务 大地的召唤 << Shaman
    .target 鸦羽先知 << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>交任务 纳拉其营地的危机
    .turnin 757 >>交任务 力量仪祭
    .accept 763 >>接受任务 大地母亲的仪式
    .target 鹰风酋长
    .goto Mulgore,44.18,76.07
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>朝岩石方向前进
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_使用|r |T134743:0|t[大地灵契]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地之魂|r 对话
    .turnin 1520 >>交任务 大地的召唤
    .accept 1521 >>接受任务 大地的召唤
    .target 大地之魂
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽|r 对话
    .turnin 1521 >>交任务 大地的召唤
    .target 鸦羽先知
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
    .money <0.01
    .target 米拉·晨行者
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    #optional
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.01
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    #optional
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>训练|T136105:0|t|T136105:0|t[雷霆一击]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #optional
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 哈鲁特·雷角
    .money <0.01
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安图尔·荒野|r 对话
    .accept 1656 >>接受任务 未完的任务
    .target 安图尔·荒野

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC 生存指南 (H)
<< Horde
#name 6-12级 莫高雷
#version 7
#subgroup RXP TBC Survival Guide 1-30
#defaultfor Tauren
#next 12-14 幽魂之地

step
	#completewith BloodhoofHome
    .subzone 222 >>奔向血蹄村，莫高雷
step
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
step
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 745 >>接受任务 土地之争
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场
    .target 贝恩·血蹄
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .turnin 1656 >>交任务 未完的任务
    .home >>将你的炉石绑定到血蹄村
    .target 旅店老板考乌斯
    .isQuestAvailable 771
    .bindlocation 222
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 肯纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_购买|r |T132384:0|t[轻弹丸]|cRXP_BUY_从他那里|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target 肯纳·鹰眼
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    .turnin 767 >>交任务 幻象仪祭
    .accept 771 >>接受任务 幻象仪祭
    .target 扎尔曼·双月
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .accept 11129 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .accept 748 >>接受任务 有毒的水
    .target 穆尔·雷角
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Kill |cRXP_ENEMY_Prairie Wolves|r. Loot them for their |cRXP_LOOT_Paws|r
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] 和 |cRXP_LOOT_陆行鸟的爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
step << !Tauren
    #completewith Ambercorns
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    >>收集|cRXP_PICK_琥珀玉米|r
    >>|cRXP_WARN_它们可以在树下的地面上找到|r
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Kill |cRXP_ENEMY_Prairie Wolves|r. Loot them for their |cRXP_LOOT_Paws|r
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] 和 |cRXP_LOOT_陆行鸟的爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
step << !Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step << Tauren
    #completewith next
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 748 >>交任务 有毒的水
    .timer 8,毒水 剧情演出
    .accept 754 >>接受任务 净化冰蹄之井
    .target 穆尔·雷角
step << Tauren
    #completewith next
    >>在水井周围收集 |cRXP_PICK_井边石|r
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_在水井旁使用|r |T135139:0|t[净化图腾]|cRXP_WARN_|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>在水井周围收集 |cRXP_PICK_井边石|r
    .complete 771,1 --Well Stone (2)
step
    #completewith Gnolls
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>在两个营地之间来回移动。击杀 |cRXP_ENEMY_白鬃制革工|r,|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_断矛|r|cRXP_WARN_(9 级稀有)。他过于强大，建议不要尝试击杀|r
    .unitscan 断矛
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
step
    #completewith KyleFed
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人
    .collect 1179,10,749,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,749,1 << Warrior --Freshly Baked Bread (10)
    .target 加纳·麦风
    .money <0.025
    .isQuestAvailable 756
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .turnin 754 >>交任务 净化冰蹄之井
    .accept 756 >>接受任务 雷角图腾
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务 土地之争
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step << !Tauren
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .turnin 745 >>交任务 土地之争
    .target 贝恩·血蹄
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔拉|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 维尔拉·幼蹄
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    |cRXP_WARN_+Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    >>|cRXP_WARN_不要跟随刷新的那只狼|r
    .turnin 771 >>交任务 幻象仪祭
    .accept 772 >>接受任务 幻象仪祭
    .target 扎尔曼·双月
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto Mulgore,47.3,56.9,0
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .turnin 11129 >>交任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    >>|cRXP_WARN_他沿着东侧道路巡逻|r
    .accept 749 >>接受任务 被破坏的货车
	.unitscan 摩林·云行者
step
    #completewith Clawsx
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Clawsx
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #completewith next
    >>击杀 |cRXP_ENEMY_草原捕食者|r 和 |cRXP_ENEMY_平原狮|r，并从它们身上拾取 |cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .mob +草原捕食者
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
step << Tauren
	#label Clawsx
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>击杀 |cRXP_ENEMY_草原捕食者|r 和 |cRXP_ENEMY_平原狮|r，并从它们身上拾取 |cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .mob +草原捕食者
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
    #completewith Thunderhorn
    .subzone 222 >>前往血蹄村
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target 姆拉特·远行
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈兰特|r 对话
    .vendor >>出售垃圾物品并修理装备
    .target 哈兰特·铁枝
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 756 >>交任务 雷角图腾
    .timer 8,雷角图腾 剧情演出
    .accept 758 >>接受任务 净化雷角之井
    .target 穆尔·雷角
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从他那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人 << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target 旅店老板考乌斯
    .money <0.025
    .isQuestAvailable 746
step
    #completewith Burial
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_在水井处使用 |r|T135139:0|t[雷角净化图腾]|cRXP_WARN_|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r和|cRXP_ENEMY_巴尔丹鉴定官|r. 拾取以获得 |T134707:0|t[|cRXP_LOOT_探矿者的镐|r]
    .use 4702 >>|cRXP_WARN_在|r |cRXP_LOOT_熔炉|r |cRXP_WARN_处敲碎|r |T134707:0|t[|cRXP_PICK_勘察员的锄头|r]
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .collect 4702,5,746,7,3
    .complete 746,1 --Broken Tools (5)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
step
    #loop
	.goto Mulgore,34.08,43.71,0
	.goto Mulgore,34.08,43.71,40,0
	.goto Mulgore,32.98,42.96,40,0
	.goto Mulgore,31.72,43.08,40,0
	.goto Mulgore,31.08,42.09,40,0
	.goto Mulgore,31.12,40.87,40,0
	.goto Mulgore,31.74,40.31,40,0
	.goto Mulgore,32.44,41.17,40,0
	.goto Mulgore,33.57,41.30,40,0
	.goto Mulgore,33.82,40.26,40,0
	.goto Mulgore,34.48,41.21,40,0
	.goto Mulgore,34.50,42.29,40,0
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 743,1 --Windfury Talon (8)
    .mob 风怒唤风者
    .mob 风怒鹰身人
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入风怒鹰身人北边的洞穴
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知奥萨迪|r 对话
    .turnin 772 >>交任务 幻象仪祭
    .accept 773 >>接受任务 智慧仪祭
    .target 先知奥萨迪·智慧行者
step
    #optional
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_将|r |T134712:0|t[先知之水] |cRXP_WARN_从背包中删除，因为之后已不再需要|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>留意 |cRXP_ENEMY_鬼嚎|r。拾取他掉落的 |T134358:0|t[|cRXP_LOOT_恶魔之伤|r]，并使用它以开始任务
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 鬼嚎|r ，由于其为 12 级，战斗难度较高|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step
	#completewith next
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .accept 833 >>接受任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .accept 775 >>接受任务 雷霆崖之旅
    .target 先祖之魂
    .dungeon RFC !Hunter !Druid
step << !Hunter !Druid
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .target 先祖之魂
    .dungeon !RFC
step
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,35,0
	.goto Mulgore,61.14,22.93,35,0
	.goto Mulgore,61.77,22.49,35,0
	.goto Mulgore,62.18,22.05,35,0
	.goto Mulgore,62.32,20.89,35,0
	.goto Mulgore,61.62,19.50,35,0
	.goto Mulgore,60.44,19.50,35,0
	.goto Mulgore,60.16,21.06,35,0
	.goto Mulgore,60.41,21.96,35,0
	.goto Mulgore,61.12,22.88,35,0
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .turnin 833 >>交任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #completewith next
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob 地狱火的超灵
    .mob +草原捕食者
    .mob 死亡熔炉铁匠
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob 平原狮
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob 成年平原陆行鸟
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3020 >>刷怪达到3020+/6500经验
    .isQuestComplete 761
    .isQuestComplete 766
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3720 >>刷怪达到3720+/6500经验
    .isQuestComplete 761
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3700 >>刷怪达到3700+/6500经验
    .isQuestComplete 766
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+4400 >>刷怪达到4400+/6500经验
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>炉石回到血蹄村，莫高雷
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>前往血蹄村
    .subzoneskip 222
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 旅店老板考乌斯
    .isQuestAvailable 765
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    --.accept 759 >>Accept Wildmane Totem
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
    --TODO: Add RP timer 758
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, and |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    --.accept 759 >>Accept Wildmane Totem
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    --TODO: Add RP timer 758
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r 和 |cRXP_FRIENDLY_卢尔|r对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #optional
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_从你的背包中删除|r |T134707:0|t[勘察员的锄头] |cRXP_WARN_，因为已经不再需要|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 肯纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132384:0|t[重弹丸]|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target 肯纳·鹰眼
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .trainer >>训练你的职业技能
    .accept 1505 >>接受任务 老兵犹塞克
    .target 克朗·石蹄
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .accept 2984 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
    .target 纳姆·逐星
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .accept 6061 >>接受任务 驯服野兽
    .trainer >>训练你的职业技能
    .target 雅文·刺鬃
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .trainer >>训练你的职业技能
    .accept 5928 >>接受任务 响应召唤
    .target 根妮亚·符文图腾
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8924 >>训练你的职业技能
    .target 根妮亚·符文图腾
step << Hunter
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >>|cRXP_WARN_在最大射程内，使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对|r|cRXP_ENEMY_成年平原陆行鸟|r|cRXP_WARN_ 进行驯服|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob 成年平原陆行鸟
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6061 >>交任务 驯服野兽
    .accept 6087 >>接受任务 驯服野兽
    .target 雅文·刺鬃
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >>|cRXP_WARN_在最大射程内，使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对 |r|cRXP_ENEMY_草原捕食者|r|cRXP_WARN_ 进行驯服|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob 草原捕食者
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6087 >>交任务 驯服野兽
    .accept 6088 >>接受任务 驯服野兽
    .target 雅文·刺鬃
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >>|cRXP_WARN_在最大射程内使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对 |r|cRXP_ENEMY_猛鹫|r |cRXP_WARN_进行驯服，如果它将你击倒，立即重新施放|r
    >>|cRXP_WARN_如果你失败并用完了驯兽棒的充能次数，放弃任务后重新接取，再回来尝试|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob 猛鹫
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6088 >>交任务 驯服野兽
    .accept 6089 >>接受任务 训练野兽
    .target 雅文·刺鬃
step << !Hunter
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target 旅店老板格罗斯克
    .money <0.05
    .target 加纳·麦风
    .isQuestAvailable 765
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    >>|cRXP_WARN_他沿着东侧道路巡逻|r
    .turnin 751 >>交任务 被破坏的货车
    .accept 764 >>接受任务 风险投资公司
    .accept 765 >>接受任务 菲兹普罗克主管
	.unitscan 摩林·云行者
    .group
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    >>|cRXP_WARN_他沿着东侧道路巡逻|r
    .turnin 751 >>交任务 被破坏的货车
	.unitscan 摩林·云行者
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>前往风险投资公司矿井
    .group
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
    .group 2
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>杀死 |cRXP_ENEMY_菲兹普罗克主管|r。拾取他的 |cRXP_LOOT_笔记本|r
    >>|cRXP_WARN_跑进矿洞，贴着右侧/东侧走来找到他|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
    .group 2
step
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
    .group 2
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    >>|cRXP_WARN_他沿着东侧道路巡逻|r
    .turnin 764 >>交任务 风险投资公司
    .turnin 765 >>交任务 菲兹普罗克主管
	.unitscan 摩林·云行者
    .group
step << Hunter
    #loop
    .goto Mulgore,67.19,63.78,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01,50,0
    .cast 1515 >>驯服1只|cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_这将允许你学会|r |T132278:0|t[撕咬等级 2]
    .mob 草原狼前锋
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>进入贫瘠之地
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .target 欧姆萨·雷角
    .isQuestAvailable 5922
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔格·锐角|r 对话
    .accept 854 >>接受任务 十字路口之旅
    .target 基尔格·锐角
step
    #completewith next
    .subzone 380 >>向北前往十字路口
    >>|cRXP_WARN_务必沿着道路前进，否则可能会引到高等级怪物的仇恨|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r，|cRXP_FRIENDLY_瑟格拉|r，|cRXP_FRIENDLY_加兹罗格|r，|cRXP_FRIENDLY_索克|r 和 |cRXP_FRIENDLY_贾汉|r 对话
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .goto The Barrens,52.24,31.00
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 854 >>交任务 十字路口之旅 << Tauren
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
    .goto The Barrens,51.50,30.87
    .accept 6361 >>接受任务 一捆兽皮
    .target 后退并等待剧情演出！不要攻击 鲜血领主 Zarath
    .goto The Barrens,51.21,29.05
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6361 >>交任务 一捆兽皮
    .accept 6362 >>接受任务 飞往雷霆崖
    .target 迪弗拉克
    .dungeon RFC !Hunter !Druid
step << !Hunter !Druid
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6361 >>交任务 一捆兽皮
    .target 迪弗拉克
    .dungeon !RFC
step
    #completewith RFCTB
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 迪弗拉克
    .zoneskip Thunder Bluff
    .dungeon RFC !Hunter !Druid
step
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 6362 >>交任务 飞往雷霆崖
    .accept 6363 >>接受任务 双足飞龙驭手塔尔
    .target 安哈努
    .dungeon RFC !Hunter !Druid
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 5932
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .target 凯恩·血蹄
    .isOnQuest 775
    .dungeon RFC !Hunter !Druid
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_浩特|r 对话
	.turnin 6089 >>交任务 训练野兽
    .target 日蚀百夫长
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24547 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_将 |r|T132162:0|t[野兽训练]|cRXP_WARN_ 拖到动作条上，并教会你的宠物技能|r
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务 响应召唤
    .accept 5922 >>接受任务 月光林地
    .target 大德鲁伊哈缪尔·符文图腾
    .target 图拉克·符文图腾
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .accept 5922 >>接受任务 月光林地
    .target 大德鲁伊哈缪尔·符文图腾
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5922 >>交任务 月光林地
    .accept 5930 >>接受任务 巨熊之灵
    .target 德迪利特·星焰
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target 巨熊之灵
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5930 >>交任务 巨熊之灵
    .accept 5932 >>接受任务 返回雷霆崖
    .target 德迪利特·星焰
step << Druid
    #completewith DruidBearForm
    .hs >>使用炉石返回雷霆崖
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 5932 >>交任务 返回雷霆崖
    .accept 6002 >>接受任务 身心之力
    .target 图拉克·符文图腾
step
    #label RFCTB
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
    .dungeon RFC !Hunter !Druid
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫兰塔|r 对话
    >>|cRXP_WARN_这会解锁一个简单任务。如果你已经有2个专业，请跳过此步|r
    .train 8613 >>训练 |T134366:0|t[剥皮]
    .target 萨诺鲁
    .dungeon RFC !Hunter !Druid
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .accept 768 >>接受任务 收集皮革
    .target 卡拉波幽灵骑士
    .skill skinning,1,1
    .dungeon RFC !Hunter !Druid
step
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    .collect 2318,12,768,1 >>|cRXP_BUY_从拍卖行购买12个|r |T134252:0|t[轻皮] |cRXP_BUY_|r
    .target 萨诺鲁
    .skill skinning,1,1
    .dungeon RFC !Hunter !Druid
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .turnin 768 >>交任务 收集皮革
    .target 杉德拉斯
    .skill skinning,1,1
    .dungeon RFC !Hunter !Druid
step << !Druid
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口，北贫瘠之地
    .target 塔尔
    .zoneskip The Barrens
    .dungeon RFC !Hunter !Druid
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip The Barrens
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_在 |r月枭石|cRXP_WARN_处使用 |r|T132857:0|t[塞纳里奥月尘]|cRXP_PICK_|r
    >>击杀刷新出现的|cRXP_ENEMY_月爪枭兽|r. 与 |cRXP_FRIENDLY_月爪枭兽的灵魂|r 对话
    >>|cRXP_WARN_小心！|cRXP_ENEMY_月爪枭兽|r 会施放 |r|T132152:0|t[痛击]|cRXP_WARN_(每 10 秒额外触发 2 次攻击)|r
    >>|cRXP_WARN_避开该区域内的|r |cRXP_ENEMY_电角蜥蜴|r |cRXP_WARN_|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob 月爪枭兽
    .target 月爪枭兽的灵魂
    .skipgossip
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .zoneskip Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 6002 >>交任务 身心之力
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口，北贫瘠之地
    .target 塔尔
    .zoneskip The Barrens
step
    #label ReturntoJahan
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target 加翰·鹰翼
    .isOnQuest 6364
    .dungeon RFC !Hunter !Druid
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_纳加尔|r|cRXP_BUY_交谈。从他那里购买一根|r |T135154:0|t[短杖] |cRXP_BUY_|r
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target 恶魔猎手学员
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith MulgoreEnd
    +|cRXP_WARN_装备|r |T135154:0|t[短杖] |cRXP_WARN_当你达到11级|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_纳加尔|r|cRXP_BUY_交谈。从他那里购买一根|r |T133477:0|t[巨棒]|cRXP_BUY_|r
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target +影月暗法师
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #optional
    #completewith MulgoreEnd
    +|cRXP_WARN_装备|r |T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r 对话
    >>|cRXP_BUY_购买大量|r |T132384:0|t[重弹丸]|cRXP_BUY_从他那里|r
    >>|cRXP_WARN_接下来一段时间内将无法继续购买！|r
    .collect 2519,1600,6061,1 --Heavy Shot (1600)
    .vendor >>把垃圾物品卖给商人
    .target 阿瑟罗克
    --Tauren Hunter gun not worth? Making them train bows in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 2984 >>交任务  火焰的召唤
    .accept 1524 >>接受任务 火焰的召唤
    .target 卡纳尔·菲斯
step << Shaman
    #completewith CallofFire2
    .zone Durotar >>前往杜隆塔尔
    .zoneskip Durotar
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>沿着山路向上前往 |cRXP_FRIENDLY_泰尔夫|r
    >>|cRXP_WARN_注意不要从山上掉下去，路径非常狭窄，跌落可能会导致死亡|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰尔夫|r 对话
    .turnin 1524 >>交任务  火焰的召唤
    .accept 1525 >>接受任务 火焰的召唤
    .target 泰尔夫·祖拉姆
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>沿着山路往下走
    >>|cRXP_WARN_注意不要从山上掉下去，路径非常狭窄，跌落可能会导致死亡|r
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r 对话
    .turnin 1505 >>交任务 老兵犹塞克
    .accept 1498 >>接受任务 防御之道
    .target 犹塞克
step << Warrior
    #loop
    .goto Durotar,39.34,28.25,0
    .goto Durotar,39.11,30.76,40,0
    .goto Durotar,39.34,28.25,40,0
    .goto Durotar,39.11,26.46,40,0
    .goto Durotar,39.39,25.05,40,0
    .goto Durotar,40.00,24.06,40,0
    .goto Durotar,42.51,24.29,40,0
    >>击杀 |cRXP_ENEMY_闪电蜥蜴|r。拾取他们的 |cRXP_ENEMY_鳞片|r
    .complete 1498,1 --Singed Scale (5)
    .mob 闪电蜥蜴
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r 对话
    .turnin 1498 >>交任务 防御之道
    .accept 1502 >>接受任务 索恩格瑞姆·火眼
    .target 犹塞克
step
    #completewith FurlScornbrow
    .zone Durotar >>前往杜隆塔尔
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上走，前往弗尔
step
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗恩·凝眉|r 对话
    .accept 791 >>接受任务 新的背包
    .target 弗恩·凝眉
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尔卡|r 对话
    .accept 815 >>接受任务 恐龙蛋大餐
    .target 击杀该处的 Sunfury 获得 |T133739:0|t[Arcane 道具] 和 |T133378:0|t[Sunfury Signet]。交任务可增加你的 Scryers 声誉，或出售换金币。
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_你可以在外面或在碉堡顶部与他对话|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加索克|r 对话
    .accept 784 >>接受任务 背信弃义的人类
    .accept 837 >>接受任务 野猪人的进犯
    .target 加索克
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >>前往提拉加德堡
 step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>前往堡垒的二楼
step
    #completewith AgedEnvelope
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob 库尔提拉斯水手
    .complete 784,2 --Kul Tiras Marine (8)
    .mob 库尔提拉斯水兵
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>击杀 |cRXP_ENEMY_本尼迪克上尉|r。拾取他的 |cRXP_LOOT_钥匙|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob 本尼迪克上尉
 step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_前往要塞的楼上|r
    >>打开 |cRXP_PICK_本尼迪克特的箱子|r，拾取其中的 |T133471:0|t[|cRXP_LOOT_老旧信封|r]
    >>使用 |T133471:0|t[|cRXP_LOOT_旧信封|r] 来开始任务
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>接受任务 将军的命令
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r。拾取他们的 |cRXP_LOOT_帆布脚料|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob 库尔提拉斯水手
    .complete 784,2 --Kul Tiras Marine (8)
    .mob 库尔提拉斯水兵
    .complete 791,1 --Canvas Scraps (8)
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob 库尔提拉斯水手
    .complete 784,2 --Kul Tiras Marine (8)
    .mob 库尔提拉斯水兵
step
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r。拾取他们的 |cRXP_LOOT_帆布脚料|r
    .complete 791,1 --Canvas Scraps (8)
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >>前往森金村
    .subzoneskip 367
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌克尔|r 对话
    .accept 2161 >>接受任务 苦工的重担
    .target 乌克尔
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔林|r, |cRXP_FRIENDLY_沃纳尔|r 和 |cRXP_FRIENDLY_加德林|r 对话
    .accept 817 >>接受任务 生活所需的虎皮
    .target 维尔林·长牙
    .goto Durotar,55.95,73.93
    .accept 818 >>接受任务 沃纳尔大师
    .target 沃纳尔大师
    .goto Durotar,55.94,74.40
    .accept 808 >>接受任务 明希纳的徽记
    .accept 826 >>接受任务 扎拉赞恩
    .accept 823 >>接受任务 向奥戈尼尔报告
    .target 加德林大师
    .goto Durotar,55.94,74.72
step
    #completewith TaillasherEggs
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_粘液|r
    >>击杀 |cRXP_ENEMY_厚壳龙虾人|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取它们的 |cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #completewith next
    >>击杀|cRXP_ENEMY_腾跃之虎|r，拾取它们的|cRXP_LOOT_鬃毛倒竖|r。现在不必完成此任务
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step
    #loop
    #label TaillasherEggs
    .goto Durotar,59.49,83.77,0
    .goto Durotar,60.28,80.02,60,0
    .goto Durotar,60.28,82.74,60,0
    .goto Durotar,59.62,84.76,60,0
    .goto Durotar,60.02,87.94,60,0
    .goto Durotar,59.06,90.71,60,0
    .goto Durotar,61.50,91.55,60,0
    .goto Durotar,61.88,95.43,60,0
    .goto Durotar,62.69,97.21,60,0
    .goto Durotar,63.00,94.40,60,0
    .goto Durotar,59.85,89.56,60,0
    .goto Durotar,59.49,83.77,60,0
    >>拾取地上的 |cRXP_PICK_T鞭尾龙的蛋|r
    >>|cRXP_WARN_它们通常由一只|r 血爪鞭尾龙|cRXP_ENEMY_ 守护|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >>游到主岛上
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_粘液|r
    >>击杀 |cRXP_ENEMY_厚壳龙虾人|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取它们的 |cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_妖术巨魔|r 和 |cRXP_ENEMY_巫毒巨魔|r。
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_巫毒巨魔|r |cRXP_WARN_能够施放|r |T136052:0|t|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .mob 妖术巨魔
    .complete 826,2 --Voodoo Troll (8)
    .mob 巫毒巨魔
step
    #completewith next
    >>击杀 |cRXP_ENEMY_扎拉赞恩|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_保留你的|r |T136026:0|t[大地震击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Shaman
    >>|cRXP_WARN_保留你的|r |T132155:0|t[凿击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Rogue
    >>|cRXP_WARN_小心。他能施放|r |T136052:0|t[治疗波]|cRXP_WARN_。如果需要的话，使用你的|r |T134829:0|t[药水] |cRXP_WARN_。|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的一个 |cRXP_LOOT_头骨|r
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>击杀 |cRXP_ENEMY_扎拉赞恩|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_保留你的|r |T136026:0|t[大地震击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Shaman
    >>|cRXP_WARN_保留你的|r |T132155:0|t[凿击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Rogue
    >>|cRXP_WARN_小心。他能施放|r |T136052:0|t[治疗波]|cRXP_WARN_。如果需要的话，使用你的|r |T134829:0|t[药水] |cRXP_WARN_。|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #completewith next
    >>击杀 |cRXP_ENEMY_老虎|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
    .goto Durotar,67.23,88.76,40,0
    .goto Durotar,66.52,87.74,40,0
    .goto Durotar,65.94,86.72,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto Durotar,65.88,82.85,40,0
    .goto Durotar,67.38,82.61,40,0
    .goto Durotar,68.42,82.43,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto Durotar,68.47,86.77,40,0
    .goto Durotar,67.23,88.00,40,0
    >>击杀 |cRXP_ENEMY_妖术巨魔|r 和 |cRXP_ENEMY_巫毒巨魔|r
    .complete 826,1 --Hexed Troll (8)
    .mob 妖术巨魔
    .complete 826,2 --Voodoo Troll (8)
    .mob 巫毒巨魔
step
    #completewith next
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_粘液|r
    >>击杀 |cRXP_ENEMY_厚壳龙虾人|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取它们的 |cRXP_LOOT_眼球|r
    >>|cRXP_WARN_如果任务进度还不够的话，前往南方岛屿。|r|cRXP_ENEMY_那里有很多|r |cRXP_WARN_海蟹|r |cRXP_ENEMY_和|r |cRXP_WARN_龙虾人|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #loop
    .goto Durotar,59.79,83.44,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>击杀 |cRXP_ENEMY_老虎|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_粘液|r
    >>击杀 |cRXP_ENEMY_厚壳龙虾人|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取它们的 |cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往森金村
    .subzoneskip 367
step
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    >>|cRXP_WARN_你可以站在小屋外面与他对话|r
    .vendor >>出售垃圾物品并修理装备
    .target 特莱耶克
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加德林|r, |cRXP_FRIENDLY_沃纳尔|r 和 |cRXP_FRIENDLY_维尔林|r 对话
    .turnin 808 >>交任务 明希纳的徽记
    .turnin 826,2 >>交任务 扎拉赞恩 << Shaman
    .turnin 826 >>交任务 扎拉赞恩 << !Shaman
    .target 加德林大师
    .goto Durotar,55.95,74.73
    .turnin 818 >>交任务 沃纳尔大师
    .target 沃纳尔大师
    .goto Durotar,55.95,74.39
    .turnin 817 >>交任务 生活所需的虎皮
    .target 维尔林·长牙
    .goto Durotar,55.95,73.93
step
    #completewith Encroachment
    +|cRXP_WARN_绑定你的|r |T133728:0|t|T134712:0|t[微光徽记] |cRXP_WARN_和|r |T134712:0|t|T134712:0|t[强力胶水]|cRXP_WARN_。将它们保留以备紧急情况使用|r
step
    #loop
    .goto Durotar,49.22,48.96,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>击杀 |cRXP_ENEMY_钢鬃野猪人|r 和 |cRXP_ENEMY_钢鬃斥候|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob 钢鬃野猪人
    .complete 837,2 --Razormane Scout (4)
    .mob 钢鬃斥候
step
    #label Encroachment
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>击杀 |cRXP_ENEMY_钢鬃传令兵|r 和 |cRXP_ENEMY_钢鬃卫兵|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob 钢鬃传令兵
    .complete 837,4 --Razormane Battleguard (4)
    .mob 钢鬃卫兵
step
    #completewith next
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上走，前往弗尔
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗恩·凝眉|r 对话
    .turnin 791 >>交任务 新的背包
    .target 弗恩·凝眉
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
    .xp <10,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_托尔卡|r、|cRXP_FRIENDLY_奥戈尼尔|r 和 |cRXP_FRIENDLY_加索克|r 对话
    .turnin 815 >>交任务 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.12,42.46
    .turnin 823 >>交任务 向奥戈尼尔报告
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.25,43.18
    .turnin 784 >>交任务 背信弃义的人类
    .turnin 837 >>交任务 野猪人的进犯
    .turnin 830 >>交任务 将军的命令
    .accept 831 >>接受任务 将军的命令
    .target 加索克
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r对话
    .train 14281 >>训练你的职业技能
    .target 索塔尔
    .xp <12,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r 对话
    .turnin 2161 >>交任务 苦工的重担
    .target 旅店老板格罗斯克
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r 对话
    >>|cRXP_BUY_购买一个或多个|r |T133634:0|t[棕色小包] |cRXP_BUY_向|r |cRXP_BUY_他|r
    .collect 4496,1,835,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 7384 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r 对话
    .train 1535 >>训练你的职业技能
    .target 斯瓦特
    .xp <12,1
step << Shaman
    #completewith next
    .subzone 371 >>前往尘风洞
step << Shaman
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>击杀 |cRXP_ENEMY_火刃祭司|r. 拾取并获得 |cRXP_LOOT_试剂袋|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob 火刃祭司
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .accept 834 >>接受任务 沙漠之风
    .target 雷兹拉克
    .maxlevel 11
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>拾取地上的 |cRXP_PICK_被盗的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step
    #optional
    #loop
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .xp 11+7270 >>升级至 7270/8700
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .turnin 834 >>交任务 沙漠之风
    .target 雷兹拉克
    .isQuestComplete 834
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    >>|cRXP_WARN_不要乘坐飞行路线前往任何地方！|r
    .fp Orgrimmar >>获取奥格瑞玛飞行点
    .target 多拉斯
step
    #label Admiralorders1
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃金|r 对话
    .turnin 831 >>交任务 将军的命令
    .target 沃金
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 1535 >>训练你的职业技能
    .target 卡德里斯
    .xp <12,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 7384 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14281 >>训练你的职业技能
    .target 奥玛克
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24556 >>训练你的宠物技能
    .target 肖祖
    .xp <12,1
step
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
step
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step
    #completewith RFCPowerPickup
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯下去到幽暗城
    .dungeon RFC
step
    #completewith next
    .goto Undercity,51.99,64.54,10,0
    .goto Undercity,46.25,73.22,10,0
    .goto Undercity,45.32,78.32,10,0
    .goto Undercity,46.26,83.91,10,0
    .goto Undercity,49.03,87.92,10,0
    .goto Undercity,52.94,89.60,10 >>进入皇家区
    .dungeon RFC
step
    #label RFCPowerPickup
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .accept 5725 >>接受任务《物归己用》 毁灭之力
    .target 瓦里玛萨斯
    .dungeon RFC
step
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>乘电梯回到上一层，然后向着 |cRXP_PICK_传送宝珠|r 方向上楼梯
    .dungeon RFC
step
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>从这里上楼梯
step
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r
step << Tauren Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>前去找 |cRXP_FRIENDLY_伊蕾达|r
step << Tauren Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊蕾达|r 对话
    .train 202 >>学习双手剑
    .target 伊蕾达
    .money <0.1000
step
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>离开 银月城
step
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .fp Silvermoon >>获取银月城的飞行路径
    .target 葛拉米
step
    #completewith next
    .subzone 3462 >>前往暴风城大教堂内，与 Fairbreeze Village
step
    .goto Eversong Woods,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Landra|r 对话
    .accept 9144 >>接受任务 迷失在幽魂之地
    .target |Tinterface/worldmap/chatbubble_64grey.blp:20|t与 拍卖师雷克尔 对话
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 和 |cRXP_FRIENDLY_瑟德拉|r 对话
    .turnin 9144 >>交任务 迷失在幽魂之地
    .target 信使迪卡·晨行者
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >>接受任务 倒下的信使
    .target 药剂师瑟德拉
    .goto Eversong Woods,49.02,89.05
step
    #loop
    .goto Ghostlands,47.81,12.66,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    .goto Ghostlands,46.75,13.42,40,0
    .goto Ghostlands,45.74,14.35,40,0
    .goto Ghostlands,44.94,16.92,40,0
    .goto Ghostlands,44.84,18.84,40,0
    .goto Ghostlands,45.36,19.92,40,0
    .goto Ghostlands,47.43,20.19,40,0
    .goto Ghostlands,48.56,19.02,40,0
    .goto Ghostlands,49.52,17.34,40,0
    .goto Ghostlands,51.08,16.71,40,0
    .goto Ghostlands,52.00,18.05,40,0
    .goto Ghostlands,55.22,14.72,40,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    >>击杀 |cRXP_ENEMY_饥饿的鬼爪山猫|r 和 |cRXP_ENEMY_迷雾蝠|r。拾取他们的 |cRXP_LOOT_染疫血样|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob 饥饿的鬼爪山猫
    .mob 迷雾蝠
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟德拉|r 和 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 9147 >>交任务 倒下的信使
    .target 药剂师瑟德拉
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >>接受任务 送往塔奎林的信件
    .target 信使迪卡·晨行者
    .goto Eversong Woods,48.98,88.99
step
    #completewith next
    .subzone 3488 >>前往塔奎林
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .turnin 9148 >>交任务 送往塔奎林的信件
    .accept 9327 >>接受任务 被遗忘者 << BloodElf
    .accept 9329 >>接受任务 被遗忘者 << !BloodElf
    .target 奥术师范迪瑞尔
step
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fp Tranquillien >>获取塔奎林的飞行点
    .target 飞行管理员加尼斯·日翼
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔伦|r 对话
    .turnin 9327 >>交任务 被遗忘者 << BloodElf
    .turnin 9329 >>交任务 被遗忘者 << !BloodElf
    .accept 9758 >>接受任务 返回奥术师范迪瑞尔身边
    .target 高级执行官玛尔伦
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .turnin 9758 >>交任务 返回奥术师范迪瑞尔身边
    .accept 9138 >>接受任务 日冕村
    .target 奥术师范迪瑞尔
step
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathis|r
    .accept 9152 >>接受任务 托博尔的补给品
    .target 拉提斯·托博尔

]])
