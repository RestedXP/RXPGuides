if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》练级指南（部落版）
<< Horde
#name 1-6 莫高雷
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Tauren
#next 6-10 莫高雷


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
    #xprate <1.5
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
step
    #xprate >1.49
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
    .xp 3+1025 >>刷怪至1025+/1400xp
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
    .train 8042 >>学习 |T136026:0|t[大地震击]
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
    #xprate <1.5
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
    .cast 8202 >>|cRXP_WARN_使用 |T134743:0|t[大地显形图腾]|r
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
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
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
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 6-10 莫高雷
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Tauren
#next 10-12 永歌森林 << !Shaman
#next 10-13 莫高雷 << Shaman

step
    #softcore
	#completewith BloodhoofHome
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >>奔向血蹄村，莫高雷
step
    #softcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .accept 11129 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step
    #xprate <1.5 << !Shaman
    #hardcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
step
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 745 >>接受任务 土地之争
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场
    .target 贝恩·血蹄
step
    #xprate >1.49
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场 << Shaman
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
    #hardcore
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
    #hardcore
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
    #xprate <1.5 << !Shaman
    #softcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
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
    #xprate <1.5
    #completewith Gnolls
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人
    .collect 1179,10,749,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,749,1 << Warrior --Freshly Baked Bread (10)
    .target 加纳·麦风
    .money <0.025
    .isQuestAvailable 756
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .turnin 754 >>交任务 净化冰蹄之井
    .accept 756 >>接受任务 雷角图腾
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务 土地之争
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step << Tauren
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 754 >>交任务 净化冰蹄之井
    .accept 756 >>接受任务 雷角图腾
    .target 穆尔·雷角
step << !Tauren
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
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
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就购买它。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r |cRXP_BUY_对话，并向他购买|r |T135145:0|t[学徒短杖]|cRXP_BUY_|r
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
    #xprate <1.5 << !Shaman
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    >>|cRXP_WARN_不要跟随刷新的那只狼|r
    .turnin 771 >>交任务 幻象仪祭
    .accept 772 >>接受任务 幻象仪祭
    .target 扎尔曼·双月
step << !Shaman
    #xprate >1.49
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    >>|cRXP_WARN_不要跟随刷新的那只狼|r
    .turnin 771 >>交任务 幻象仪祭
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
step << !Shaman
    #xprate >1.49
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
step << !Shaman
    #xprate >1.49
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
    .mob 草原狼前锋
    .mob +草原捕食者
    .mob 草原狼前锋
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob 平原狮
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob 成年平原陆行鸟
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step << !Shaman
    #xprate >1.49
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
    .xp 9+3485 >> Grind to 3485+/6500xp
step
    #xprate <1.5 << !Shaman
    #softcore
	#completewith Thunderhorn
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #xprate <1.5 << !Shaman
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >>前往血蹄村
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #xprate <1.5
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r |cRXP_BUY_对话，并向他购买|r |T135145:0|t[学徒短杖]|cRXP_BUY_|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 洛拉特|cRXP_FRIENDLY_ 对话|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target 姆拉特·远行
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈兰特|r 对话
    .vendor >>出售垃圾物品并修理装备
    .target 哈兰特·铁枝
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step << Tauren
    #xprate <1.5 << !Shaman
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
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step << Shaman
    #xprate >1.49
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .accept 2984 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
    .target 纳姆·逐星
    .xp <10,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
    #completewith Burial
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
	#completewith Burial
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #xprate <1.5 << !Shaman
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_在水井处使用 |r|T135139:0|t[雷角净化图腾]|cRXP_WARN_|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,31.27,49.87
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r和|cRXP_ENEMY_巴尔丹鉴定官|r. 拾取以获得 |T134707:0|t[|cRXP_LOOT_探矿者的镐|r]
    .use 4702 >>|cRXP_WARN_在|r |cRXP_LOOT_熔炉|r |cRXP_WARN_处敲碎|r |T134707:0|t[|cRXP_PICK_勘察员的锄头|r]
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .collect 4702,5,746,7,3
    .complete 746,1 --Broken Tools (5)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
step
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入风怒鹰身人北边的洞穴
step
    #xprate <1.5 << !Shaman
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知奥萨迪|r 对话
    .turnin 772 >>交任务 幻象仪祭
    .accept 773 >>接受任务 智慧仪祭
    .target 先知奥萨迪·智慧行者
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_将|r |T134712:0|t[先知之水] |cRXP_WARN_从背包中删除，因为之后已不再需要|r
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>留意 |cRXP_ENEMY_鬼嚎|r。拾取他掉落的 |T134358:0|t[|cRXP_LOOT_恶魔之伤|r]，并使用它以开始任务
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 鬼嚎|r ，由于其为 12 级，战斗难度较高|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step
    #xprate <1.5 << !Shaman
	#completewith next
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #xprate <1.5 << !Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .accept 833 >>接受任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    #xprate <1.5 << !Shaman
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .accept 775 >>接受任务 雷霆崖之旅
    .target 先祖之魂
step
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .turnin 833 >>交任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
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
    .mob +Prairie Wolf Alpha
    .mob +草原捕食者
    .mob +Prairie Wolf Alpha
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
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
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
    #xprate <1.5 << !Shaman
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
    #sofcore
    #completewith Bloodhoofturnins1
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step << Druid
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>前往血蹄村
    .subzoneskip 222
step << Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .timer 8,净化雷角之井 剧情演出
    .accept 759 >>接受任务 蛮鬃图腾 << Shaman
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #xprate <1.5
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, and |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .timer 8,净化雷角之井 剧情演出
    .accept 759 >>接受任务 蛮鬃图腾 << Shaman
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
step << Tauren Shaman
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren Shaman
    #xprate >1.49
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, and |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
step << Tauren !Shaman
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 756 >>交任务 雷角图腾
    .target 穆尔·雷角
step << !Tauren
    #xprate <1.5
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
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r 和 |cRXP_FRIENDLY_卢尔|r对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
step << !Shaman
    #xprate >1.49
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step
    #optional
    #label Bloodhoofturnins1
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_从你的背包中删除|r |T134707:0|t[勘察员的锄头] |cRXP_WARN_，因为已经不再需要|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 肯纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132384:0|t[重弹丸]|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target 肯纳·鹰眼
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .accept 2984 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
    .target 纳姆·逐星
step << !Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .trainer >>训练你的职业技能
    --.accept 1505 >>Accept Veteran Uzzek
    .target 克朗·石蹄
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
    #xprate <1.5
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    .vendor >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    .vendor >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .target 旅店老板格罗斯克
    .money <0.05
    .target 加纳·麦风
    .isQuestAvailable 765
step << Shaman
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .accept 861 >>接受任务 猎人之道
    .target 斯考恩·白云
step << Shaman
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
    .turnin 751 >>交任务 被破坏的货车
    .accept 764 >>接受任务 风险投资公司
    .accept 765 >>接受任务 菲兹普罗克主管
	.unitscan 摩林·云行者
step << !Shaman
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
    .turnin 751 >>交任务 被破坏的货车
	.unitscan 摩林·云行者
step << Shaman
    #xprate >1.49
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>前往风险投资公司矿井
step << Shaman
    #xprate >1.49
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step << Shaman
    #xprate >1.49
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>跑进矿洞并贴着右侧（东侧）前进。击杀 |cRXP_ENEMY_工头菲兹斯普罗基特|r。拾取他的 |cRXP_LOOT_记事板|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step << Shaman
    #xprate >1.49
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>跑进矿洞并贴着右侧（东侧）前进。击杀 |cRXP_ENEMY_工头菲兹斯普罗基特|r。拾取他的 |cRXP_LOOT_记事板|r
    >>|cRXP_WARN_务必小心！这个矿洞里很容易引到过多敌人，而且脱身非常困难|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step << Shaman
    #xprate >1.49
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
step << Shaman
    #xprate >1.49
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
    .turnin 764 >>交任务 风险投资公司
    .turnin 765 >>交任务 菲兹普罗克主管
	.unitscan 摩林·云行者
step << Shaman
    #xprate <1.5
    #completewith AlphaTeeth
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
step << Hunter
    #xprate <1.5
    #completewith next
    .cast 1515 >>驯服1只|cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_这将允许你学会|r |T132278:0|t[撕咬等级 2]
    .mob 草原狼前锋
step << Shaman
    #xprate <1.5
    #label AlphaTeeth
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    >>击杀 |cRXP_ENEMY_草原狼前锋|r 并拾取它们的 |cRXP_LOOT_牙齿|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob 草原狼前锋
step << Hunter
    #xprate >1.49
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .cast 1515 >>驯服1只|cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_这将允许你学会|r |T132278:0|t[撕咬等级 2]
    .mob 草原狼前锋
step << Shaman
    #xprate <1.5
    #softcore
	#completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step << Shaman
    #xprate <1.5
    #hardcore
	#completewith next
    .goto Mulgore,46.5,55.5,150 >>前往血蹄村
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 759 >>交任务 蛮鬃图腾
    .accept 760 >>接受任务 净化蛮鬃之井
    .target 穆尔·雷角
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 765 >>放弃任务 菲兹普罗克主管
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 764 >>放弃任务 风险投资公司
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>前往贫瘠之地
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
	.target 欧姆萨·雷角
    .isQuestAvailable 854
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .zoneskip Thunder Bluff
    .isQuestAvailable 5932
step
    #optional
    #label CampTFP
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 5932
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔·符文图腾|r 对话
    .accept 886 >>接受任务 贫瘠之地的绿洲
    .target 大德鲁伊哈缪尔·符文图腾
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务 响应召唤
    .accept 5922 >>接受任务 月光林地
    .target 图拉克·符文图腾
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .accept 5922 >>接受任务 月光林地
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
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 5932 >>交任务 返回雷霆崖
    .accept 6002 >>接受任务 身心之力
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地，贫瘠之地
    .target 塔尔
    .subzoneskip 378
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
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 886 >>交任务 贫瘠之地的绿洲 << Druid
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 854 >>交任务 十字路口之旅
    .target 索克
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 848 >>接受任务 菌类孢子
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fp The Crossroads >>获得十字路口的飞行点
    .target 迪弗拉克
    .isQuestAvailable 848,870
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .accept 6361 >>接受任务 一捆兽皮
    .target 加翰·鹰翼
step
    #completewith next
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_在采集蘑菇时尽量与|cRXP_ENEMY_ 科卡尔|r |cRXP_WARN_保持最大距离。他们的等级为 12-14 级|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_在该区域内尽量与|cRXP_ENEMY_ 科卡尔|r |cRXP_WARN_保持最大距离。他们的等级为 12-14 级|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
	#completewith ZamahPickup
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>返回十字路口
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务 遗忘之池
    .accept 877 >>接受任务 死水绿洲 << Shaman
    .target 图加·符文图腾
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
step
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    >>|cRXP_WARN_这将开启一个 45 分钟的限时任务|r
    .turnin 848 >>交任务 菌类孢子
    .timer 7,菌类孢子 剧情
    .accept 853 >>接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_你正在进行一个限时任务，不要离开键盘。该任务会在接取后约 5–10 分钟内交付完成|r
    .isOnQuest 853
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6361 >>交任务 一捆兽皮
    .accept 6362 >>接受任务 飞往雷霆崖
    .target 迪弗拉克
step
    #completewith CauldronStirrer
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 迪弗拉克
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 6362 >>交任务 飞往雷霆崖
    .accept 6363 >>接受任务 双足飞龙驭手塔尔
    .target 安哈努
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .accept 744 >>接受任务 准备典礼
    .target 伊恩·鹰爪
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>训练 双手锤
    .target 安塞瓦
    .money <0.100
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
    .money <0.100
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务 药剂师扎玛
    .target 药剂师扎玛
step
    #completewith EndGuide
    +|cRXP_WARN_装备|r |T135145:0|t[锅炉搅拌器]
    .use 5340
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 6002 >>交任务 身心之力
    .target 图拉克·符文图腾
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
step << !Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .target 凯恩·血蹄
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .accept 776 >>接受任务 大地母亲的仪式
    .target 凯恩·血蹄
step << Shaman
    #xprate >1.49
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .target 凯恩·血蹄
step << !Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
step << !Shaman
    #completewith HidesTurnIn
    .hs >>炉石返回十字路口，北贫瘠之地
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口，贫瘠之地
    .target 塔尔
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step << !Shaman
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target 加翰·鹰翼
step << !Shaman
    #completewith ZeptoUC1
    +|cRXP_WARN_放弃你当前剩余的所有任务|r
step << !Shaman
    #completewith next
    .subzone 392 >>前往棘齿城
step << !Shaman
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fp Ratchet >>获取棘齿城飞行路径
    .target 布拉高克
step << !Shaman
    #completewith next
    .zone Durotar >>前往杜隆塔尔
step << !Shaman
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
step << Warrior
    #optional
    .abandon 1505 >>放弃任务 老兵犹塞克
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>放弃任务 防御之道
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .trainer >>训练你的职业技能
    .accept 1818 >>接受任务《物归己用》 迪林格尔
    .target 奥斯蒂尔·德·蒙
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    .home >>将炉石设置在布瑞尔
    .target 旅店老板瑞尼
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>交任务《 前往熔光镇》 迪林格尔
    .accept 1819 >>接受任务《物归己用》 切割者奥拉格
    .target 亡灵卫兵迪林格尔
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地面上的骷髅头。这将召唤出|r |cRXP_ENEMY_尤拉格。|r |cRXP_WARN_击杀他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob 切割者奥拉格
    .isOnQuest 1819
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>交任务《 前往熔光镇》 切割者奥拉格
    .accept 1820 >>接受任务《物归己用》 库勒曼
    .target 亡灵卫兵迪林格尔
    .isQuestComplete 1819
step << Warrior
    #label WarriorClassQ
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒曼|r 对话
    .turnin 1820 >>交任务《 前往熔光镇》 库勒曼
    .target 库勒曼·法席恩
    .isOnQuest 1820
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>从这里上楼梯
step << !Shaman
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .trainer >>训练你的职业技能
	.target 伊瑟里斯
	.target 欧塞兰
step
    #optional
    #label EndGuide
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 10-13 莫高雷
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Tauren Shaman
#next 13-18 贫瘠之地

step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .accept 776 >>接受任务 大地母亲的仪式
    .isQuestTurnedIn 775
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .accept 744 >>接受任务 准备典礼
    .target 伊恩·鹰爪
step
    #xprate <1.5
    #sticky
    #completewith ThunderBluff
    >>留意 |cRXP_ENEMY_鬼嚎|r。拾取他掉落的 |T134358:0|t[|cRXP_LOOT_恶魔之伤|r]，并使用它以开始任务
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step
    #xprate <1.5
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>击杀 |cRXP_ENEMY_风怒女巫|r。拾取他们的 |cRXP_LOOT_碧蓝色的羽毛|r
    >>击杀 |cRXP_ENEMY_风怒女族长|r。拾取他们的 |cRXP_LOOT_古铜色的羽毛|r
    .complete 744,1 --Azure Feather (6)
    .mob 风怒女巫
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女族长
step
    #xprate <1.5
    #completewith Arrachea
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
    .isOnQuest 861
step << Tauren Shaman
    #xprate <1.5
    .goto Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_在水井旁使用|r |T135139:0|t[净化图腾]|cRXP_WARN_|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #xprate <1.5
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>击杀 |cRXP_ENEMY_阿兰其亚|r（大型黑色科多兽）。击杀并拾取他的 |cRXP_LOOT_角|r
    >>|cRXP_WARN_他会沿顺时针方向在莫高雷北部巡逻|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan 阿兰其亚
step
    #xprate <1.5
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
    .isOnQuest 861
step
    #xprate <1.5
    #completewith next
    .zone Thunder Bluff >>返回雷霆崖
step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 776 >>交任务 大地母亲的仪式
    .target 凯恩·血蹄
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .turnin 744 >>交任务 准备典礼
    .target 伊恩·鹰爪
step
    #xprate <1.5
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .turnin 861 >>交任务 猎人之道
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestComplete 861
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestTurnedIn 861
step
    #xprate <1.5
    #completewith WildManeTurnIn
    .subzone 222 >>前往血蹄村
step
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 760 >>交任务 净化蛮鬃之井
    .target 穆尔·雷角
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 547 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <12,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8936 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <12,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 7384 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 14281 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 肯纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132384:0|t[重弹丸]|r << Hunter
    .collect 2519,1000,764,1 << Hunter --Heavy Shot (1000)
    .target 肯纳·鹰眼
    .itemcount 764,<800
step
    #xprate <1.5
    #optional
    #label WildManeTurnIn
step
    #xprate <1.5
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
    .accept 764 >>接受任务 风险投资公司
    .accept 765 >>接受任务 菲兹普罗克主管
	.unitscan 摩林·云行者
step
    #xprate <1.5
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>前往风险投资公司矿井
step
    #xprate <1.5
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step
    #xprate <1.5
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>跑进矿洞并贴着右侧（东侧）前进。击杀 |cRXP_ENEMY_工头菲兹斯普罗基特|r。拾取他的 |cRXP_LOOT_记事板|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step
    #xprate <1.5
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>跑进矿洞并贴着右侧（东侧）前进。击杀 |cRXP_ENEMY_工头菲兹斯普罗基特|r。拾取他的 |cRXP_LOOT_记事板|r
    >>|cRXP_WARN_务必小心！这个矿洞里很容易引到过多敌人，而且脱身非常困难|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step
    #xprate <1.5
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
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >>刷怪达到7150+/8700经验
step
    #xprate <1.5
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
    .turnin 764 >>交任务 风险投资公司
    .turnin 765 >>交任务 菲兹普罗克主管
	.unitscan 摩林·云行者
step
    #xprate <1.5
    #completewith next
    .subzone 378 >>前往陶拉祖营地
step
    #xprate <1.5
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Crossroads >>飞往十字路口，北贫瘠之地
    .target 欧姆萨·雷角
    .cooldown item,6948,<0,1
    .subzoneskip 380
step
    #xprate >1.49
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith HidesTurnIn
    .hs >>炉石返回十字路口，北贫瘠之地
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target 加翰·鹰翼
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接受任务 鹰身强盗
    .target 达索克·快刀
step
    #xprate <1.5
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 860 >>交任务 瑟格拉·黑棘
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .isOnQuest 860
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
step << Shaman
    #completewith next
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果现在没有刷新，之后再来获取即可|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 2984 >>交任务 火焰的召唤
    .accept 1524 >>接受任务 火焰的召唤
    .target 卡纳尔·菲斯
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
    .turnin 1524 >>交任务 火焰的召唤
    .accept 1525 >>接受任务 火焰的召唤
    .target 泰尔夫·祖拉姆
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

]])
